#!/bin/bash

TOOLS=(hashdeep  sha1deep    tigerdeep
md5deep   sha256deep  whirlpooldeep)

cat << EOF > template
#!/bin/bash

VERSION=4.4
PACKAGE=hashdeep
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

mkdir temp
for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        cp $TOOL temp/
done

rm -f template
rm -rfv temp
