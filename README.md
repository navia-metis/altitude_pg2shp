# Purpose
This app uses Python and GDAL's `ogr2ogr` tool to output dynamic PostgreSQL queries into Shapefiles.
Tool designed for the needs of the METIS FTTH team.

# Usage

In order to access the files, run the commands detailed below OR execute the bash/bat with the following arguments:
- $1: Code NRO (integer)
- $2: Code SRO (integer)
- $3: Version postfix (string)
- $4: Export path (string)
- $5: PostgreSQL host (string)
- $6: PostgreSQL user (string)
- $7: PostgreSQL password (string)


**Process an isolated container:**

`docker run -d=false --name altitude_export_run omarcel/altitude_pg2shp:latest $1 $2 $3 $4 $5 $6 $7`

**Copy container output to host:**

`docker cp altitude_export_run:/app/out/. out/`

**Stop container:**

`docker stop altitude_export_run`

**Remove container:**

`docker rm altitude_export_run`
