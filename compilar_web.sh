#!/bin/bash

echo
echo "Generando la web:::"
echo

FILELIST_ES="index_es.html docencia_es.html investigacion_es.html publicaciones_es.html personal_es.html"
FILELIST_EN="index_en.html docencia_en.html investigacion_en.html publicaciones_en.html personal_en.html"
FILELIST_FR="index_fr.html docencia_fr.html investigacion_fr.html publicaciones_fr.html personal_fr.html"

# ARCHIVOS EN ESPAÑOL
for file in $FILELIST_ES
do
	if [ ! -e "src/$file" ]
	then
		echo "Advertencia: no existe el archivo src/$file"; echo
		continue
	fi

	cat "src/header_es.html" "src/$file" "src/footer.html" > $file
	echo "Generado exitosamente: $file"; echo

done

# ARCHIVOS EN INGLÉS
for file in $FILELIST_EN
do
	if [ ! -e "src/$file" ]
	then
		echo "Advertencia: no existe el archivo src/$file"; echo
		continue
	fi

	cat "src/header_en.html" "src/$file" "src/footer.html" > $file
	echo "Generado exitosamente: $file"; echo

done

# ARCHIVOS EN FRANCÉS
for file in $FILELIST_FR
do
	if [ ! -e "src/$file" ]
	then
		echo "Advertencia: no existe el archivo src/$file"; echo
		continue
	fi

	cat "src/header_fr.html" "src/$file" "src/footer.html" > $file
	echo "Generado exitosamente: $file"; echo

done

rm *~
rm src/*~

echo "Finalizado"
