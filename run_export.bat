@echo off
echo Nom du programme : %0
echo Ensemble des arguments : %*
Rem @param1: Code NRO (int)
Rem @param2: Code SRO (int)
Rem @param3: Version (str)
Rem @param4: Chemin d'export (str)
Rem @param5: Host Postgres (str)
Rem @param6: Utilisateur Postgres (str)
Rem @param7: Mot de passe Postgres (str)

docker run -d=false --name altitude_export_run omarcel/altitude_pg2shp:latest %1 %2 %3 %4 %5 %6 %7
docker cp altitude_export_run:/app/out/. out/
docker stop altitude_export_run
docker rm altitude_export_run