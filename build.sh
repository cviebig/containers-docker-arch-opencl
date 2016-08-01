#!/bin/sh
set -e
tag=$(date +%F)
cd arch-base
docker build -t cviebig/arch-base:${tag} .
docker tag cviebig/arch-base:${tag} cviebig/arch-base:latest
cd ../arch-build
docker build -t cviebig/arch-build:${tag} .
docker tag cviebig/arch-build:${tag} cviebig/arch-build:latest
cd ../arch-build-ocl
docker build -t cviebig/arch-build-ocl:${tag} .
docker tag cviebig/arch-build-ocl:${tag} cviebig/arch-build-ocl:latest
cd ../arch-build-ocl-amd
docker build -t cviebig/arch-build-ocl-amd:${tag} .
docker tag cviebig/arch-build-ocl-amd:${tag} cviebig/arch-build-ocl-amd:latest
cd ../arch-build-ocl-catalyst
docker build -t cviebig/arch-build-ocl-catalyst:${tag} .
docker tag cviebig/arch-build-ocl-catalyst:${tag} cviebig/arch-build-ocl-catalyst:latest
cd ../arch-build-ocl-intel
docker build -t cviebig/arch-build-ocl-intel:${tag} .
docker tag cviebig/arch-build-ocl-intel:${tag} cviebig/arch-build-ocl-intel:latest
cd ../arch-build-ocl-nvidia
docker build -t cviebig/arch-build-ocl-nvidia:${tag} .
docker tag cviebig/arch-build-ocl-nvidia:${tag} cviebig/arch-build-ocl-nvidia:latest

