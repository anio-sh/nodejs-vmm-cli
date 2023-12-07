#!/bin/bash -euf

printf "Deploying with version '%s'\n" "$RELEASE_VERSION"

rm -f ./dist/vmm.mjs

./node_modules/.bin/anio_bundler .

curl \
	--request POST \
	--data-binary "@./dist/vmm.mjs" \
	-H "Content-Type:application/octet-stream" \
	-H "x-anio-auth-key: $ANIO_SH_DEPLOY_KEY" \
	-H "x-anio-file-name: vmm" \
	-H "x-anio-release-version: $RELEASE_VERSION" \
	"$ANIO_SH_DEPLOY_URL"
