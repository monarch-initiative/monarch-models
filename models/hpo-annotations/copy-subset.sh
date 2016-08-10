#!/usr/bin/env bash
# Copies a subset of human-readable OWL models into the 'active' top-level
# directory for use by Minerva.
#
# This is a hack and a temporary solution until we regenerate these HPO
# models with a consistent naming scheme and/or fix Minerva to deal with these names.
#


# ID generation derived from:
#  https://github.com/geneontology/minerva/blob/master/minerva-core/src/main/java/org/geneontology/minerva/CoreMolecularModelManager.java#L96
#
#   static String uniqueTop = Long.toHexString(Math.abs((System.currentTimeMillis()/1000)));
#   String unique = uniqueTop + String.format("%08d", counterValue);
#

declare UNIQUE_TOP=$(date +%s)
declare UNIQUE_TOP_HEX=$( printf "%x" ${UNIQUE_TOP} )
declare COUNTER=0

declare -a COMMON_DISEASES=(
    "common-diseases/DO-DOID_0014250.tab.omn"
    "common-diseases/DO-DOID_0000182.tab.omn"
    "common-diseases/DO-DOID_0011335.tab.omn"
    "common-diseases/MESH-D062685.tab.omn"
    "common-diseases/MESH-D062689.tab.omn"
    "common-diseases/MESH-D063371.tab.omn")


declare -a RARE_DISEASES=(
    "rare-diseases/OMIM-194050.tab.omn"
    # this file is unparseable by Minerva due to a space character  "rare-diseases/OMIM-194190.tab.omn"
    # this file is unparseable by Minerva due to a space character"rare-diseases/OMIM-180849.tab.omn"
    "rare-diseases/OMIM-610187.tab.omn"
    "rare-diseases/OMIM-250650.tab.omn"
    "rare-diseases/OMIM-183600.tab.omn")

declare -a RARE_DISEASES_WITH_NEGATION=(
    "rare-diseases/OMIM-616507.tab.omn"
    "rare-diseases/OMIM-616507.tab.omn"
    "rare-diseases/OMIM-616583.tab.omn"
    "rare-diseases/OMIM-616617.tab.omn")

declare -a ALL_DISEASES=("${COMMON_DISEASES[@]}" "${RARE_DISEASES[@]}" "${RARE_DISEASES_WITH_NEGATION[@]}")

echo "" > ./gennedmapping.sh
for i in "${ALL_DISEASES[@]}"
do
    COUNTER=$((COUNTER + 1))
    declare COUNTER_DEC=$( printf "%08d" ${COUNTER} )
    declare ID="${UNIQUE_TOP_HEX}${COUNTER_DEC}"

    echo >> ./gennedmapping.sh "cp ./$i ../${ID}"
done

cat ./gennedmapping.sh

exit
