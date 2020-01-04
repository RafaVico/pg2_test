#!/bin/sh

OPK_NAME=pg2test.opk

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=PocketGo2 test
Comment=Test your PocketGo2
Exec=pg2test.gcw
Terminal=false
Type=Application
StartupNotify=true
Icon=pg2test
Categories=applications;
EOF

# create opk
FLIST="media"
FLIST="${FLIST} pg2test.gcw"
FLIST="${FLIST} pg2test.png"
FLIST="${FLIST} default.gcw0.desktop"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop

