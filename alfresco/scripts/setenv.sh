#!/bin/sh
echo $LD_LIBRARY_PATH | egrep "/opt/alfresco/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/opt/alfresco/common/alfresco-pdf-renderer:/opt/alfresco/java/bin:/opt/alfresco/postgresql/bin:/opt/alfresco/common/bin:$PATH"
export PATH
LD_LIBRARY_PATH="/opt/alfresco/postgresql/lib:/opt/alfresco/common/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH
fi

TERMINFO=/opt/alfresco/common/share/terminfo
export TERMINFO
##### ALFRESCO_PDF_RENDERER ENV #####
ALFRESCO_PDF_RENDERER_VAR="/opt/alfresco/common/alfresco-pdf-renderer"
export ALFRESCO_PDF_RENDERER_VAR

##### IMAGEMAGICK ENV #####
MAGICK_HOME="/opt/alfresco/common"
export MAGICK_HOME
MAGICK_CONFIGURE_PATH="/opt/alfresco/common/lib/ImageMagick-7.0.5/config-Q16HDRI"
export MAGICK_CONFIGURE_PATH
MAGICK_CODER_MODULE_PATH="/opt/alfresco/common/lib/ImageMagick-7.0.5/modules-Q16HDRI/coders"
export MAGICK_CODER_MODULE_PATH

##### JAVA ENV #####
JAVA_HOME=/opt/alfresco/java
export JAVA_HOME

##### POSTGRES ENV #####

        ##### SSL ENV #####
SSL_CERT_FILE=/opt/alfresco/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/opt/alfresco/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/opt/alfresco/common/lib/engines
export OPENSSL_ENGINES


. /opt/alfresco/scripts/build-setenv.sh
