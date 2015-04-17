---
title       : Operation Report
subtitle    : Presented By:- BAM&R Team
author      :
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight  # {highlight.js, prettify, highlight}
hitheme     : none      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
biglogo     : logo_delhivery.jpg
---






## Station Metrics - Processing

---

# Processing Metrics - DEL

Processing :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-02-28 </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 69.09 </td> <td align="right"> 67.44 </td> <td align="right"> 50.83 </td> <td align="right"> 34.43 </td> <td align="right"> 28.11 </td> <td align="right"> 19.20 </td> <td align="right"> 22.42 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 84.51 </td> <td align="right"> 84.42 </td> <td align="right"> 76.56 </td> <td align="right"> 61.15 </td> <td align="right"> 48.65 </td> <td align="right"> 35.93 </td> <td align="right"> 44.85 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 92.45 </td> <td align="right"> 93.48 </td> <td align="right"> 88.75 </td> <td align="right"> 82.32 </td> <td align="right"> 71.72 </td> <td align="right"> 58.37 </td> <td align="right"> 69.95 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 7.55 </td> <td align="right"> 6.52 </td> <td align="right"> 11.25 </td> <td align="right"> 17.68 </td> <td align="right"> 28.28 </td> <td align="right"> 41.63 </td> <td align="right"> 30.05 </td> </tr>
   </table>

Bagging :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-02-28 </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 78.66 </td> <td align="right"> 75.56 </td> <td align="right"> 62.90 </td> <td align="right"> 63.76 </td> <td align="right"> 52.53 </td> <td align="right"> 49.26 </td> <td align="right"> 51.04 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 92.73 </td> <td align="right"> 90.74 </td> <td align="right"> 83.52 </td> <td align="right"> 83.27 </td> <td align="right"> 70.03 </td> <td align="right"> 69.41 </td> <td align="right"> 69.87 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 97.85 </td> <td align="right"> 96.87 </td> <td align="right"> 93.34 </td> <td align="right"> 94.69 </td> <td align="right"> 85.30 </td> <td align="right"> 86.65 </td> <td align="right"> 86.97 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 2.15 </td> <td align="right"> 3.13 </td> <td align="right"> 6.66 </td> <td align="right"> 5.31 </td> <td align="right"> 14.70 </td> <td align="right"> 13.35 </td> <td align="right"> 13.03 </td> </tr>
   </table>

---
#cost
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X </th> <th> WE.21.02 </th> <th> WE.28.02 </th> <th> WE.07.03 </th> <th> WE.14.03 </th> <th> WE.21.03 </th> <th> WE.28.03 </th> <th> Min </th> <th> Max </th>  </tr>
  <tr> <td> Man-days </td> <td align="right"> 3748 </td> <td align="right"> 3583 </td> <td align="right"> 2745 </td> <td align="right"> 3021 </td> <td align="right"> 2924 </td> <td align="right"> 2645 </td> <td align="right"> 2745 </td> <td align="right"> 3823 </td> </tr>
  <tr> <td> # of bikers </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> </tr>
  <tr> <td> # of vans </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  </td> <td align="right">  </td> </tr>
  <tr> <td> Processing cost/shipment </td> <td align="right">  12 </td> <td align="right">  14 </td> <td align="right">  12 </td> <td align="right">   9 </td> <td align="right">   7 </td> <td align="right">   7 </td> <td align="right">   9 </td> <td align="right">  14 </td> </tr>
   </table>

---

# Processing Metrics - BOM
Processing :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-02-28 </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 58.94 </td> <td align="right"> 66.81 </td> <td align="right"> 56.85 </td> <td align="right"> 43.95 </td> <td align="right"> 38.90 </td> <td align="right"> 36.60 </td> <td align="right"> 48.02 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 82.55 </td> <td align="right"> 84.24 </td> <td align="right"> 78.14 </td> <td align="right"> 61.35 </td> <td align="right"> 65.26 </td> <td align="right"> 66.61 </td> <td align="right"> 70.62 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 89.59 </td> <td align="right"> 89.93 </td> <td align="right"> 89.50 </td> <td align="right"> 75.03 </td> <td align="right"> 79.00 </td> <td align="right"> 78.51 </td> <td align="right"> 81.29 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 10.41 </td> <td align="right"> 10.07 </td> <td align="right"> 10.50 </td> <td align="right"> 24.97 </td> <td align="right"> 21.00 </td> <td align="right"> 21.49 </td> <td align="right"> 18.71 </td> </tr>
   </table>

Bagging :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-02-28 </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 59.44 </td> <td align="right"> 65.57 </td> <td align="right"> 56.85 </td> <td align="right"> 61.51 </td> <td align="right"> 59.01 </td> <td align="right"> 62.21 </td> <td align="right"> 72.87 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 85.38 </td> <td align="right"> 90.27 </td> <td align="right"> 81.72 </td> <td align="right"> 85.00 </td> <td align="right"> 82.16 </td> <td align="right"> 81.64 </td> <td align="right"> 86.59 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 97.71 </td> <td align="right"> 97.94 </td> <td align="right"> 93.67 </td> <td align="right"> 94.25 </td> <td align="right"> 93.98 </td> <td align="right"> 93.71 </td> <td align="right"> 95.89 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 2.29 </td> <td align="right"> 2.06 </td> <td align="right"> 6.33 </td> <td align="right"> 5.75 </td> <td align="right"> 6.02 </td> <td align="right"> 6.29 </td> <td align="right"> 4.11 </td> </tr>
   </table>

---
#cost
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X </th> <th> WE.21.02 </th> <th> WE.28.02 </th> <th> WE.07.03 </th> <th> WE.14.03 </th> <th> WE.21.03 </th> <th> WE.28.03 </th> <th> Min </th> <th> Max </th>  </tr>
  <tr> <td> Man-days </td> <td align="right"> 3748 </td> <td align="right"> 3583 </td> <td align="right"> 2745 </td> <td align="right"> 3021 </td> <td align="right"> 2924 </td> <td align="right"> 2645 </td> <td align="right"> 2745 </td> <td align="right"> 3823 </td> </tr>
  <tr> <td> # of bikers </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> </tr>
  <tr> <td> # of vans </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  </td> <td align="right">  </td> </tr>
  <tr> <td> Processing cost/shipment </td> <td align="right">  12 </td> <td align="right">  14 </td> <td align="right">  12 </td> <td align="right">   9 </td> <td align="right">   7 </td> <td align="right">   7 </td> <td align="right">   9 </td> <td align="right">  14 </td> </tr>
   </table>

---

# Processing Metrics - BLR
Processing :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-02-28 </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 63.34 </td> <td align="right"> 51.30 </td> <td align="right"> 32.60 </td> <td align="right"> 20.30 </td> <td align="right"> 16.58 </td> <td align="right"> 11.56 </td> <td align="right"> 14.28 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 87.83 </td> <td align="right"> 83.18 </td> <td align="right"> 75.67 </td> <td align="right"> 47.33 </td> <td align="right"> 31.82 </td> <td align="right"> 26.85 </td> <td align="right"> 24.52 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 97.65 </td> <td align="right"> 94.93 </td> <td align="right"> 94.08 </td> <td align="right"> 86.73 </td> <td align="right"> 59.04 </td> <td align="right"> 58.63 </td> <td align="right"> 46.94 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 2.35 </td> <td align="right"> 5.07 </td> <td align="right"> 5.92 </td> <td align="right"> 13.27 </td> <td align="right"> 40.96 </td> <td align="right"> 41.37 </td> <td align="right"> 53.06 </td> </tr>
   </table>

Bagging :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-02-28 </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 65.83 </td> <td align="right"> 56.98 </td> <td align="right"> 63.56 </td> <td align="right"> 51.46 </td> <td align="right"> 46.07 </td> <td align="right"> 42.56 </td> <td align="right"> 40.29 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 89.47 </td> <td align="right"> 86.62 </td> <td align="right"> 87.85 </td> <td align="right"> 79.50 </td> <td align="right"> 66.82 </td> <td align="right"> 63.33 </td> <td align="right"> 56.54 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 98.31 </td> <td align="right"> 98.18 </td> <td align="right"> 96.95 </td> <td align="right"> 95.30 </td> <td align="right"> 84.94 </td> <td align="right"> 85.14 </td> <td align="right"> 73.81 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 1.69 </td> <td align="right"> 1.82 </td> <td align="right"> 3.05 </td> <td align="right"> 4.70 </td> <td align="right"> 15.06 </td> <td align="right"> 14.86 </td> <td align="right"> 26.19 </td> </tr>
   </table>

---
#cost
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Fri Apr 17 15:50:10 2015 -->
<table border=1>
<tr> <th> X </th> <th> WE.21.02 </th> <th> WE.28.02 </th> <th> WE.07.03 </th> <th> WE.14.03 </th> <th> WE.21.03 </th> <th> WE.28.03 </th> <th> Min </th> <th> Max </th>  </tr>
  <tr> <td> Man-days </td> <td align="right"> 3748 </td> <td align="right"> 3583 </td> <td align="right"> 2745 </td> <td align="right"> 3021 </td> <td align="right"> 2924 </td> <td align="right"> 2645 </td> <td align="right"> 2745 </td> <td align="right"> 3823 </td> </tr>
  <tr> <td> # of bikers </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> <td align="right">  48 </td> </tr>
  <tr> <td> # of vans </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  93 </td> <td align="right">  </td> <td align="right">  </td> </tr>
  <tr> <td> Processing cost/shipment </td> <td align="right">  12 </td> <td align="right">  14 </td> <td align="right">  12 </td> <td align="right">   9 </td> <td align="right">   7 </td> <td align="right">   7 </td> <td align="right">   9 </td> <td align="right">  14 </td> </tr>
   </table>
