import sys
from subprocess import run, PIPE, CalledProcessError
from pathlib import Path


def export_data(nro, sro, version='A1', folder='/home/', host='localhost', user='postgres', password='postgres', dbname='altitude'):
    run('set PGCLIENTENCODING=latin1', shell=True)
    export_folder = Path(folder) / f'31_{str(nro).zfill(3)}_{str(sro).zfill(3)}_{version}'
    export_folder.mkdir(exist_ok=True)

    sql = {
        'ADDUCTION': f'SELECT id as "ID" , type_struc as "TYPE_STRUC" , isole as "ISOLE" , st_length(geom) as "LG" , comment as "COMMENT" , geom FROM metis.adduction WHERE nro = {nro} AND sro = {sro};',
        'BOITE_OPTIQUE': f'SELECT nom as "NOM" , code as "CODE" , type_fonc as "TYPE_FONC" , etat as "ETAT" , reference as "REFERENCE" , proprietai as "PROPRIETAI" , gestionnai as "GESTIONNAI" , type_struc as "TYPE_STRUC" , emprise as "EMPRISE" , fabricant as "FABRICANT" , dimension as "DIMENSION" , type_equip as "TYPE_EQUIP" , interco as "INTERCO" , amont as "AMONT" , volume as "VOLUME" , comment as "COMMENT" , hauteur as "HAUTEUR" , nbepissure as "NBEPISSURE" , nbabonnes as "NBABONNES" , fa_fs as "FA_FS" , nbfutile as "NBFUTILE" , support as "SUPPORT" , fonction as "FONCTION" , isole as "ISOLE" , id_parent as "ID_PARENT" , geom FROM metis.boite WHERE nro = {nro} AND sro = {sro};',
        'CABLE_OPTIQUE': f'SELECT nom as "NOM" , code as "CODE" , type_fonc as "TYPE_FONC" , type_struc as "TYPE_STRUC" , emprise as "EMPRISE" , proprietai as "PROPRIETAI" , gestionnai as "GESTIONNAI" , etat as "ETAT" , fabricant as "FABRICANT" , reference as "REFERENCE" , lgr_reelle as "LGR_REELLE" , lgr_carto as "LGR_CARTO" , diametre as "DIAMETRE" , typefibre as "TYPEFIBRE" , comment as "COMMENT" , rattach as "RATTACH" , capacite as "CAPACITE" , origine as "ORIGINE" , extremite as "EXTREMITE" , section as "SECTION" , isole as "ISOLE" , geom FROM metis.cable WHERE nro = {nro} AND sro = {sro};',
        'POINT_TECHNIQUE': f'SELECT nom as "NOM" , code as "CODE" , gestionnai as "GESTIONNAI" , type_fonc as "TYPE_FONC" , type_struc as "TYPE_STRUC" , etat as "ETAT" , emprise as "EMPRISE" , longueur as "LONGUEUR" , largeur as "LARGEUR" , prof_haut as "PROF_HAUT" , secteur as "SECTEUR" , rattach as "RATTACH" , modele as "MODELE" , comment as "COMMENT" , isole as "ISOLE" , proprietai as "PROPRIETAI" , idparent as "IDPARENT" , rempla_app as "REMPLA_APP" , geom FROM metis.ptech WHERE nro = {nro} AND sro = {sro};',
        'SITE': f'SELECT code as "CODE" , nom as "NOM" , proprietai as "PROPRIETAI" , gestionnai as "GESTIONNAI" , type_fonct as "TYPE_FONCT" , etat as "ETAT" , type_struc as "TYPE_STRUC" , emprise as "EMPRISE" , typeracc as "TYPERACC" , hexacle as "HEXACLE" , nbprises as "NBPRISES" , comment as "COMMENT" , rattach as "RATTACH" , insee as "INSEE" , st_code as "ST_CODE" , date_pose as "DATE_POSE", geom FROM metis.site WHERE nro = {nro} AND sro = {sro};',
        'SUPPORT': f'SELECT nom as "NOM" , code as "CODE" , proprietai as "PROPRIETAI" , gestionnai as "GESTIONNAI" , type_struc as "TYPE_STRUC" , lg_reelle as "LG_REELLE" , largeur as "LARGEUR" , hauteur as "HAUTEUR" , amont as "AMONT" , aval as "AVAL" , insee as "INSEE" , comment as "COMMENT" , structure as "STRUCTURE" , isole as "ISOLE" , compo as "COMPO" , disponible as "DISPONIBLE" , utilisatio as "UTILISATIO" , casse_bloc as "CASSE_BLOC" , ref_fiche as "REF_FICHE" , mode_pose as "MODE_POSE" , geom FROM metis.support WHERE nro = {nro} AND sro = {sro};',
        'ZACABLE': f'SELECT nom as "NOM" , nb_prises as "NB_PRISES" , commentair as "COMMENTAIR" , geom FROM metis.zacable WHERE nro = {nro} AND sro = {sro};',
        'ZAPBO': f'SELECT nom as "NOM" , nb_prises as "NB_PRISES" , commentair as "COMMENTAIR" , isole as "ISOLE" , geom FROM metis.zapbo WHERE nro = {nro} AND sro = {sro};',
        'ZASRO': f'SELECT ref_sro as "REF_SRO" , ref_nro as "REF_NRO" , nb_prise as "NB_PRISE" , epci as "EPCI" , planning as "PLANNING" , sst as "SST" , geom FROM metis.zasro WHERE nro = {nro} AND sro = {sro};',
        'ZANRO': f'SELECT id AS "SID", ref_nro AS "REF_NRO", ref_nra AS "REF_NRA", degroup AS "DEGROUP", bt_sfr AS "BT_SFR", nb_prise AS "NB_PRISE", planning AS "PLANNING", sst AS "SST", zone AS "ZONE", zn_code AS "ZN_CODE", sst_rang2 AS "SST_RANG2", geom AS "GEOM" FROM circet.zanro WHERE substring(ref_nro, 4, 3)::int = {nro};'
    }

    for table, req in sql.items():
        file = None
        if table == 'ZANRO':
            file = f'31_{str(nro).zfill(3)}_ENS_ZANRO_{version}'
        else:
            file = f'31_{str(nro).zfill(3)}_{str(sro).zfill(3)}_{table}_{version}'

        command = f'ogr2ogr --config SHAPE_ENCODING "LATIN1" -f "ESRI Shapefile" '
        command += f'{export_folder}/{file}.shp '
        command += f'PG:"host={host} user={user} password={password} dbname={dbname}" '
        command += f'-sql \'{req}\' '
        command += '-lco ENCODING=latin1'

        try:
            result = run(command, shell=True, check=True,
                         stdout=PIPE, stderr=PIPE, universal_newlines=True, )
            print(f"OK: {folder}{file}")
            print(result.returncode, result.stdout, result.stderr)

        except CalledProcessError as e:
            print(command)
            print(e.returncode, e.stdout, e.stderr)


if __name__ == "__main__":
    nro = int(sys.argv[1])
    sro = int(sys.argv[2])
    version = sys.argv[3]
    folder = sys.argv[4]
    host = sys.argv[5]
    user = sys.argv[6]
    password = sys.argv[7]
    
    export_data(nro=nro, sro=sro, version=version, folder=folder, host=host, user=user, password=password)
