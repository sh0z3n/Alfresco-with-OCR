# save arguments to variables
SOURCE=$1
TARGET=$2
TMPDIR=/tmp/tesseract
FILENAME=`basename $SOURCE`
OCRFILE=$FILENAME.tif
LD_LIBRARY_PATH=/usr/lib

# Create temp directory if it doesn't exist
mkdir -p $TMPDIR

# to see what happens
 echo "from $SOURCE to $TARGET" >>/tmp/ocrtransform.log

cp -f $SOURCE $TMPDIR/$OCRFILE

# call tesseract and redirect output to $TARGET
/usr/bin/tesseract $TMPDIR/$OCRFILE ${TARGET%\.*} -l eng
rm -f $TMPDIR/$OCRFILE‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍
