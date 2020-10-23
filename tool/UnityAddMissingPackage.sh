ROOT=`pwd`

MANIFEST="${ROOT}/Packages/manifest.json"

if [ ! -f $MANIFEST ]; then
    MANIFEST="${ROOT}/manifest.json"
fi

if [ ! -f $MANIFEST ]; then
    echo "manifest.json NOT found."
    exit 1
fi

gsed -i "3i\\    \"com.unity.entities\": \"0.14.0-preview.19\"," $MANIFEST
