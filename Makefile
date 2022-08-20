# Makefile for releasing podinfo
#
# The release version is controlled from pkg/version

test:
	go test ./... -coverprofile cover.out

build-charts:
	helm lint charts/*
	helm package charts/*