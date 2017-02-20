#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

DOCLANG="en"
AUTHOR="CodeLibs"
RELEASE="11.0"

CONFDIR="${SCRIPT_DIR}/../conf"
BUILDDIR="${SCRIPT_DIR}/_build/pdf/${RELEASE}"

PROJECT="FessInstall"
TITLE="Fess Installation Guide"
TYPE="install"
echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${DOCLANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

#PROJECT="FessUser"
#TITLE="Fess Users Guide"
#TYPE="user"
#echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
#cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
#make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${DOCLANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

PROJECT="FessAdmin"
TITLE="Fess Administration Guide"
TYPE="admin"
echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${DOCLANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

#PROJECT="FessConfig"
#TITLE="Fess Configuration Guide"
#TYPE="config"
#echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
#cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
#make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${DOCLANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

