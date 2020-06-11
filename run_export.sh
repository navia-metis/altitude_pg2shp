#!/bin/bash
# @param1: Code NRO (int)
# @param2: Code SRO (int)
# @param3: Version (str)
# @param4: Chemin d'export (str)
# @param5: Host Postgres (str)
# @param6: Utilisateur Postgres (str)
# @param7: Mot de passe Postgres (str)

# docker build --network=host --tag omarcel/altitude_pg2shp .
docker run -d=false --name altitude_export_run omarcel/altitude_pg2shp:latest $1 $2 $3 $4 $5 $6 $7
docker cp altitude_export_run:/app/out/. out/
docker stop altitude_export_run
docker rm altitude_export_run