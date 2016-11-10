SELECT DISTINCT A.PC,
       A.DC,
       A.ACTUAL_LOAD,
       A.A_Zone_LOAD,
       NVL(B.destination_center,A.DC) AS destination_center,
       B.ZONE,
       B.expected_datetime,
       B.PC_count,
       NVL(C.PC_count_DAY1,0) AS PC_count_DAY1,
       NVL(D.A_Zone_LOAD_pc,0) AS A_Zone_LOAD_dc,
       NVL(E.IN_TRASIT_DC,0) AS IN_TRASIT_DC
FROM (SELECT DISTINCT NVL(A.PC,B.destination_center) AS PC ,
             B.destination_center AS DC,
             NVL(B.ACTUAL_LOAD,0) AS ACTUAL_LOAD,
             NVL(A.A_Zone_LOAD_pc,0) AS A_Zone_LOAD
      FROM (SELECT destination_center AS DC,
                   origin_center AS PC,
                   COUNT(DISTINCT waybillnum) AS A_Zone_LOAD_pc
            FROM scan_facts_latest
            WHERE ZONE = 'A'
            AND   scan_location_center = origin_center
            AND   DATE(package_pickup_at_clientwarehouse_datetime) >=  DATE(sysdate + interval '5 hour' + interval '30 minute')-1
            AND   LENGTH(package_pickup_at_clientwarehouse_datetime) > 0
            AND   LENGTH(origin_center) > 0
            AND   LENGTH(package_pickup_types_code) > 0
            AND   LENGTH(destination_center) > 0
            AND   action_code <> '+L'
            GROUP BY origin_center,
                     destination_center,Zone) AS A
       RIGHT OUTER  JOIN (SELECT destination_center,
                                COUNT(DISTINCT waybillnum) AS ACTUAL_LOAD
                         FROM scan_facts_latest
                         WHERE LENGTH(origin_center) > 0
                         AND   destination_center = scan_location_center
                         AND   ((status_type = 'PP' AND (status_code = 'Open' OR status_code = 'Scheduled')) 
                        OR (status_type = 'UD' AND status_code = 'Pending') 
                        OR (status_type = 'UD' AND status_code = 'Dispatched')  
                        OR (status_type = 'UD' and status_code = 'In Transit' ))

                         AND   scanned_datetime BETWEEN DATE(sysdate + interval '5 hour' + interval '30 minute')- 30 AND DATE(sysdate + interval '5 hour' + interval '30 minute')+1
                         GROUP BY destination_center) AS B ON A.DC = B.destination_center) AS A
  LEFT OUTER JOIN (SELECT destination_center,
                          ZONE,
                          DATE (expected_datetime) AS expected_datetime,
                          COUNT(DISTINCT waybillnum) AS PC_count
                   FROM scan_facts_latest
                   WHERE LENGTH(destination_center) > 0
                   AND   LENGTH(ZONE) > 0
                   AND   (Status_type = 'UD' )
                   AND   scanned_datetime BETWEEN DATE(sysdate + interval '5 hour' + interval '30 minute')- 30 AND DATE(sysdate + interval '5 hour' + interval '30 minute')+1
                   AND   expected_datetime BETWEEN DATE(sysdate + interval '5 hour' + interval '30 minute')+1 AND DATE(sysdate + interval '5 hour' + interval '30 minute')+6
                   GROUP BY destination_center,
                            ZONE,
                            DATE (expected_datetime)) AS B ON A.DC = B.destination_center
  LEFT OUTER JOIN (SELECT destination_center,
                          COUNT(DISTINCT waybillnum) AS PC_count_DAY1
                   FROM scan_facts_latest
                   WHERE LENGTH(destination_center) > 0
                   AND   LENGTH(ZONE) > 0
                   AND   (Status_type = 'UD' )
                   AND   scanned_datetime BETWEEN DATE(sysdate + interval '5 hour' + interval '30 minute')-30 AND DATE(sysdate + interval '5 hour' + interval '30 minute')+1
                   AND   expected_datetime BETWEEN DATE(sysdate + interval '5 hour' + interval '30 minute')+1 AND DATE(sysdate + interval '5 hour' + interval '30 minute')+2
                   GROUP BY destination_center,
                            DATE (expected_datetime)) AS C ON A.dc = C.destination_center
LEFT OUTER JOIN                
(SELECT DC, SUM(A_Zone_LOAD_pc) AS A_Zone_LOAD_pc
FROM (
SELECT destination_center AS DC,
                   origin_center AS PC,
                   COUNT(DISTINCT waybillnum) AS A_Zone_LOAD_pc
            FROM scan_facts_latest
            WHERE ZONE = 'A'
            AND   scan_location_center = origin_center
            AND   DATE(package_pickup_at_clientwarehouse_datetime) >= (DATE(sysdate + interval '5 hour' + interval '30 minute') -1)
            AND   LENGTH(package_pickup_at_clientwarehouse_datetime) > 0
            AND   LENGTH(origin_center) > 0
            AND   LENGTH(package_pickup_types_code) > 0
            AND   LENGTH(destination_center) > 0
            AND   action_code <> '+L'
            GROUP BY origin_center,
                     destination_center ) GROUP BY DC ) AS D
                     ON A.dc = D.DC
 LEFT OUTER JOIN 
 (SELECT destination_center,
 COUNT(DISTINCT waybillnum) AS IN_TRASIT_DC
 FROM scan_facts_latest
 WHERE LENGTH(destination_center) > 0
 AND   LENGTH(ZONE) > 0
 AND   (status_type = 'UD' AND status_code = 'In Transit')
 AND   scanned_datetime BETWEEN DATE (sysdate+INTERVAL '5 hour' +INTERVAL '30 minute') - 30 AND DATE (sysdate+INTERVAL '5 hour' +INTERVAL '30 minute') +1
 AND   expected_datetime < DATE (sysdate+INTERVAL '5 hour' +INTERVAL '30 minute') +1
GROUP BY destination_center) AS E
ON A.dc = E.destination_center