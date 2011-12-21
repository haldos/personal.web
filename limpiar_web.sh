#!/bin/bash

echo
echo "Limpiando archivos auxiliares:::"
echo

FILELIST_ES="index_es.html bio_es.html docencia_es.html investigacion_es.html publicaciones_es.html personal_es.html"
FILELIST_EN="index_en.html bio_en.html docencia_en.html investigacion_en.html publicaciones_en.html personal_en.html"
FILELIST_FR="index_fr.html bio_fr.html docencia_fr.html investigacion_fr.html publicaciones_fr.html personal_fr.html"

# ARCHIVOS EN ESPAÑOL
for file in $FILELIST_ES
do
	rm -f $file
done

# ARCHIVOS EN INGLÉS
for file in $FILELIST_EN
do
	rm -f $file
done

# ARCHIVOS EN FRANCÉS
for file in $FILELIST_FR
do
	rm -f $file
done

# ARCHIVOS AUXILIARES
rm -f *~
rm -f src/*~

echo "Limpieza finalizada"
