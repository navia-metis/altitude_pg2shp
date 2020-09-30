#!/bin/bash
# @param1: Département (int)
# @param2: Code NRO (int)
# @param3: Code SRO (int)
# @param4: Version (str)
# @param5: Chemin d'export (str)
# @param6: Host Postgres (str)
# @param7: Utilisateur Postgres (str)
# @param8: Mot de passe Postgres (str)

# docker build --network=host --tag omarcel/altitude_pg2shp .
docker run -d=false --name altitude_export_run omarcel/altitude_pg2shp:latest $1 $2 $3 $4 $5 $6 $7 $8
docker cp altitude_export_run:/app/out/. out/
docker stop altitude_export_run
docker rm altitude_export_run