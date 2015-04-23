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
<!-- Wed Apr 22 15:33:39 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th> <th> 2015-04-18 </th> <th> 2015-04-25 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 67.44 </td> <td align="right"> 50.83 </td> <td align="right"> 34.43 </td> <td align="right"> 28.11 </td> <td align="right"> 18.26 </td> <td align="right"> 20.38 </td> <td align="right"> 19.35 </td> <td align="right"> 44.91 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 84.42 </td> <td align="right"> 76.56 </td> <td align="right"> 61.15 </td> <td align="right"> 48.65 </td> <td align="right"> 35.16 </td> <td align="right"> 42.83 </td> <td align="right"> 36.42 </td> <td align="right"> 57.80 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 93.48 </td> <td align="right"> 88.75 </td> <td align="right"> 82.32 </td> <td align="right"> 71.71 </td> <td align="right"> 57.82 </td> <td align="right"> 67.95 </td> <td align="right"> 60.26 </td> <td align="right"> 77.64 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 6.52 </td> <td align="right"> 11.25 </td> <td align="right"> 17.68 </td> <td align="right"> 28.29 </td> <td align="right"> 42.18 </td> <td align="right"> 32.05 </td> <td align="right"> 39.74 </td> <td align="right"> 22.36 </td> </tr>
   </table>

Bagging :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Wed Apr 22 15:33:39 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th> <th> 2015-04-18 </th> <th> 2015-04-25 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 75.56 </td> <td align="right"> 62.90 </td> <td align="right"> 63.76 </td> <td align="right"> 52.51 </td> <td align="right"> 48.57 </td> <td align="right"> 48.64 </td> <td align="right"> 38.80 </td> <td align="right"> 63.54 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 90.73 </td> <td align="right"> 83.52 </td> <td align="right"> 83.27 </td> <td align="right"> 70.00 </td> <td align="right"> 68.89 </td> <td align="right"> 67.78 </td> <td align="right"> 62.13 </td> <td align="right"> 78.78 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 96.87 </td> <td align="right"> 93.34 </td> <td align="right"> 94.69 </td> <td align="right"> 85.28 </td> <td align="right"> 86.30 </td> <td align="right"> 85.31 </td> <td align="right"> 81.88 </td> <td align="right"> 94.14 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 3.13 </td> <td align="right"> 6.66 </td> <td align="right"> 5.31 </td> <td align="right"> 14.72 </td> <td align="right"> 13.70 </td> <td align="right"> 14.69 </td> <td align="right"> 18.12 </td> <td align="right"> 5.86 </td> </tr>
   </table>

---
#cost

```
## Error in xtable(key_operating_del): object 'key_operating_del' not found
```

---

# Processing Metrics - BOM
Processing :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Wed Apr 22 15:33:40 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th> <th> 2015-04-18 </th> <th> 2015-04-25 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 66.81 </td> <td align="right"> 56.85 </td> <td align="right"> 43.95 </td> <td align="right"> 38.90 </td> <td align="right"> 36.58 </td> <td align="right"> 47.73 </td> <td align="right"> 44.03 </td> <td align="right"> 49.56 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 84.24 </td> <td align="right"> 78.14 </td> <td align="right"> 61.35 </td> <td align="right"> 65.26 </td> <td align="right"> 66.60 </td> <td align="right"> 70.41 </td> <td align="right"> 68.86 </td> <td align="right"> 61.28 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 89.93 </td> <td align="right"> 89.50 </td> <td align="right"> 75.03 </td> <td align="right"> 79.00 </td> <td align="right"> 78.49 </td> <td align="right"> 81.11 </td> <td align="right"> 81.39 </td> <td align="right"> 77.90 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 10.07 </td> <td align="right"> 10.50 </td> <td align="right"> 24.97 </td> <td align="right"> 21.00 </td> <td align="right"> 21.51 </td> <td align="right"> 18.89 </td> <td align="right"> 18.61 </td> <td align="right"> 22.10 </td> </tr>
   </table>

Bagging :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Wed Apr 22 15:33:40 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th> <th> 2015-04-18 </th> <th> 2015-04-25 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 65.57 </td> <td align="right"> 56.85 </td> <td align="right"> 61.50 </td> <td align="right"> 59.01 </td> <td align="right"> 62.10 </td> <td align="right"> 72.22 </td> <td align="right"> 74.17 </td> <td align="right"> 72.39 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 90.27 </td> <td align="right"> 81.72 </td> <td align="right"> 84.99 </td> <td align="right"> 82.15 </td> <td align="right"> 81.50 </td> <td align="right"> 85.94 </td> <td align="right"> 89.43 </td> <td align="right"> 88.80 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 97.94 </td> <td align="right"> 93.67 </td> <td align="right"> 94.25 </td> <td align="right"> 93.97 </td> <td align="right"> 93.56 </td> <td align="right"> 95.23 </td> <td align="right"> 97.25 </td> <td align="right"> 96.20 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 2.06 </td> <td align="right"> 6.33 </td> <td align="right"> 5.75 </td> <td align="right"> 6.03 </td> <td align="right"> 6.44 </td> <td align="right"> 4.77 </td> <td align="right"> 2.75 </td> <td align="right"> 3.80 </td> </tr>
   </table>

---
#cost

```
## Error in xtable(key_operating_del): object 'key_operating_del' not found
```

---

# Processing Metrics - BLR
Processing :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Wed Apr 22 15:33:40 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th> <th> 2015-04-18 </th> <th> 2015-04-25 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 51.30 </td> <td align="right"> 32.60 </td> <td align="right"> 20.30 </td> <td align="right"> 16.57 </td> <td align="right"> 11.55 </td> <td align="right"> 14.08 </td> <td align="right"> 13.32 </td> <td align="right"> 21.18 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 83.18 </td> <td align="right"> 75.67 </td> <td align="right"> 47.33 </td> <td align="right"> 31.81 </td> <td align="right"> 26.83 </td> <td align="right"> 24.31 </td> <td align="right"> 21.04 </td> <td align="right"> 37.34 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 94.93 </td> <td align="right"> 94.08 </td> <td align="right"> 86.73 </td> <td align="right"> 59.03 </td> <td align="right"> 58.62 </td> <td align="right"> 46.73 </td> <td align="right"> 47.49 </td> <td align="right"> 92.39 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 5.07 </td> <td align="right"> 5.92 </td> <td align="right"> 13.27 </td> <td align="right"> 40.97 </td> <td align="right"> 41.38 </td> <td align="right"> 53.27 </td> <td align="right"> 52.51 </td> <td align="right"> 7.61 </td> </tr>
   </table>

Bagging :
<!-- html table generated in R 3.1.3 by xtable 1.7-4 package -->
<!-- Wed Apr 22 15:33:40 2015 -->
<table border=1>
<tr> <th> X_id.deltaHr </th> <th> 2015-03-07 </th> <th> 2015-03-14 </th> <th> 2015-03-21 </th> <th> 2015-03-28 </th> <th> 2015-04-04 </th> <th> 2015-04-11 </th> <th> 2015-04-18 </th> <th> 2015-04-25 </th>  </tr>
  <tr> <td> &lt;2 </td> <td align="right"> 56.97 </td> <td align="right"> 63.56 </td> <td align="right"> 51.46 </td> <td align="right"> 46.05 </td> <td align="right"> 42.53 </td> <td align="right"> 39.72 </td> <td align="right"> 42.87 </td> <td align="right"> 68.11 </td> </tr>
  <tr> <td> &lt;4 </td> <td align="right"> 86.62 </td> <td align="right"> 87.85 </td> <td align="right"> 79.49 </td> <td align="right"> 66.80 </td> <td align="right"> 63.28 </td> <td align="right"> 55.90 </td> <td align="right"> 59.04 </td> <td align="right"> 86.17 </td> </tr>
  <tr> <td> &lt;8 </td> <td align="right"> 98.17 </td> <td align="right"> 96.95 </td> <td align="right"> 95.30 </td> <td align="right"> 84.93 </td> <td align="right"> 85.09 </td> <td align="right"> 73.14 </td> <td align="right"> 74.56 </td> <td align="right"> 97.25 </td> </tr>
  <tr> <td> &gt;8 </td> <td align="right"> 1.83 </td> <td align="right"> 3.05 </td> <td align="right"> 4.70 </td> <td align="right"> 15.07 </td> <td align="right"> 14.91 </td> <td align="right"> 26.86 </td> <td align="right"> 25.44 </td> <td align="right"> 2.75 </td> </tr>
   </table>

---
#cost

```
## Error in xtable(key_operating_del): object 'key_operating_del' not found
```
