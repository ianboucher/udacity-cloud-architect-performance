Social Media Site
50k Users (Assuming daily users)
Frequent, short sessions
4x sessions per user, per day (morning, lunchtime, dinner, evening)
200k sessions per day = 1million minutes
6 million sessions per month
~1k min in 16hrs = 1k concurrent users steady state avg
Estimate peak concurrent users = 5k
5min average session
1 post & image upload per session (text & image only)
 - 10kb post (60 Gb per month for 6M sessions)
 - 5Mb image (30000 Gb per month data transfer)
 - 600 Gb stored (at 100kb compressed) per month
20 posts (with images) read per session in 4 queries
 - 10kb post
 - 100kb image
 - 20 * 6M reads
 - 13200 Gb reads per month
Total queries per session = 5; Total queries per month 30m

Data transfer
- DB replication Across AZs = 60Gb