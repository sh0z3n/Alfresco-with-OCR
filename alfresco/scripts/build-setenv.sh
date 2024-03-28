#!/bin/sh
LDFLAGS="-L/opt/alfresco/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/opt/alfresco/common/include $CFLAGS"
export CFLAGS
CXXFLAGS="-I/opt/alfresco/common/include $CXXFLAGS"
export CXXFLAGS
            
PKG_CONFIG_PATH="/opt/alfresco/common/lib/pkgconfig"
export PKG_CONFIG_PATH
