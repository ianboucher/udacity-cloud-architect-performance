## Basic Estimates & Capacity Planning for Proposed Architecture

Architect traditional 3-tier web app based on likely traffic for Social Media Site with 50k users

### Traffic Estimates
- Assuming 50k _daily_ users
- Assuming all users in USA
- Likely to be frequent, short sessions
- Estimate 4x sessions per user, per day (morning, lunchtime, dinner, evening)
- 200k sessions per day = 1million minutes
- 6 million sessions per month
- ~1k min in 16 daylight hrs = 1k concurrent users steady state avg
- Estimated peak concurrent users = 5k

### Estimated User Session Details

Assuming 5min average session length:

#### Writes:
- 1 post & image upload per session (text & image only)
- 10kb per post save to DB (60 Gb per month for 6M sessions)
- 5Mb image (30000 Gb per month data transfer)
- 600 Gb stored (at 100kb compressed) per month

#### Reads: 
- 20 posts (with images) read per session in 4 queries
- 10kb post data with 100kb image
- 20 * 6M reads
- 13200 Gb reads per month
- Total queries per session = 5 
- Total queries per month 30m

#### Data transfer
- DB replication Across AZs = 60Gb