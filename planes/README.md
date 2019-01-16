
# planes

The planes data was created using [planes](https://github.com/david618/planes).  

Fields
- id : Plane ID : integer
- ts : Epoch Time (ms) : long
- speed : Speed (km/s) : double
- dist : Distance to next dest (km) : double
- bearing : Bearing (degrees) measured from North : double
- rtid : Route ID (Multiple Planes can be on same route : integer
- orig : Origin airport name for this segment of the route : text
- dest : Destination airport name for this segment of the route : text
- secsToDep : Number of seconds before the plane with leave orig : integer
- lon : Current WGS84 longitude of plane
- lat : Current WGS84 latitude of plane

Sample CSV Data 
<pre>
0,1506955709148,186.53,4152.59,73.47,1,"Lavrentiya Airport","Wright-Patterson Air Force Base",-1,-132.46616,65.2584
1,1506955709148,199.14,3342.2,69.42,2,"Cascavel Airport","N'Djamena International Airport",-1,-10.78228,-3.51841
2,1506955709148,225.7,100.11,-77.1,3,"Tari Airport","Bougouni Airport",-1,-6.60775,11.57939
3,1506955709148,221.87,9914.93,16.74,4,"Salalah Airport","Mountain Village Airport",-1,56.0495,23.03242
4,1506955709148,264.42,2316.09,66.37,5,"Nancy-Essey Airport","Christchurch International Airport",-1,152.50794,-30.0481
5,1506955709148,319.47,2534.36,86.81,6,"Mountain Village Airport","Yariguíes Airport",-1,-85.60453,26.86844
6,1506955709148,254.39,1609.1,158.26,7,"Chièvres Air Base","Port St Johns Airport",-1,25.36625,-17.63205
7,1506955709148,152.99,5371.1,165.33,8,"Northeast Florida Regional Airport","Santa Rosa Airport",-1,-76.25148,10.38219
8,1506955709148,133.65,1660.18,-4.49,9,"Dane County Regional Truax Field","Kodinsk Airport",-1,104.70218,73.24852
9,1506955709148,236.1,7123.63,80.97,10,"Lake Havasu City Airport","Malamala Airport",-1,-23.43474,10.30753
</pre>


## S3 Bucket 

Prebuilt Data Files are available on AWS S3.
- One Million things (e.g. planes) the id ranges from 1 to 1000000
- Latitudes are limited to -88 to 88
- Each file is about 570MB  

Bucket:  esriplanes

Path:  lat88/million

Files: planes00001 to planes00200 

Each file has 5 million lines of data.  

They are publically accessible via https (e.g. [https://s3.amazonaws.com/esriplanes/lat88/million/planes00001](https://s3.amazonaws.com/esriplanes/lat88/million/planes00001))  

Files can also be accessed using a S3 key for ReadOnlyUser.  Ask David Jennings for key if you need it.

# Generation

The sample data was generated using [planes](https://github.com/david618/planes)
