- [2019-05-10](./2019-05-10) 
  - Esrally geonames test on A4IOT datastore 3 masters and 3 data nodes (17k/s)
  - Esrally on one of AKS nodes (off AKS)  50k/s

- [2019-05-13](./2019-05-13)
 
 |Number of ES Nodes|track   |Mean Index Rate|
 |------------------|--------|---------------|
 |One               |geonames|78k docs/s     |
 |Three             |geonames|Test Ended     |
 |One               |noaa    |59k docs/s     |
 |Three             |noaa    |70k docs/s     |
 
 Seconds test of noaa with three ES nodes was 35k docs/s.
 
 Throughtput of three nodes is almost the same as one node. 
 
- [2019-05-14]((./2019-05-14)
  - Used latest Helm chart
  - Elasticsearch 7.0.1
  - 3 node results 31 k/s
  - Best results I've seen on AKS.
