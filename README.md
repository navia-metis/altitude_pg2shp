# Purpose
This app uses Python and GDAL's `ogr2ogr` tool to output dynamic PostgreSQL queries into Shapefiles.
Tool designed for the needs of the METIS FTTH team.

# Usage

In order to access the files, run the following commands:

**Process an isolated container:**

`docker run -d=false --name altitude_export_run omarcel/altitude_pg2shp:latest $1 $2 $3 $4 $5 $6 $7 $8`

- $1: Département (integer)
- $2: Code NRO (integer)
- $3: Code SRO (integer)
- $4: Version postfix (string)
- $5: Export path (string)
- $6: PostgreSQL host (string)
- $7: PostgreSQL user (string)
- $8: PostgreSQL password (string)

**Copy container output to host:**

`docker cp altitude_export_run:/app/out/. out/`

**Stop container:**

`docker stop altitude_export_run`

**Remove container:**

`docker rm altitude_export_run`
