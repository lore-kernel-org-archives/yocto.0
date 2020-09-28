Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web12.4146.1601323923045738194
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 13:12:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mAXP76cC;
 spf=pass (domain: gmail.com, ip: 209.85.210.51, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id o8so2248074otl.4
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 13:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=aoYvQhVSpGtJChMha1oCVK3g7Y1FU/6tq41zJtJ3IsY=;
        b=mAXP76cCSToGFYccRUW7ijvm/U1LybdxTTbZN2+kXG+7/H8yn9gnCJvv18uICZcmD2
         yXErRXjlcGD7l3ZyUXCCdaEQSNFaWXaeovUKP5e/1PxnKeZb+ORZGHeBye1mOSbA+roI
         +8jQbKJfmL4feESEQg6mFo6mgHQtfTb/8PMjckrY5/IecllO8+Qmr95wO40TeJ39+rPo
         m9ITqG2vHXoRnS/iSCNzMVahcTZXtGKnDug9b4v5gv2qIU5mBVlOML7PYsnNaCXLo1hW
         6lKVFHcmuxxC/OTJSYYniJuYlklHDvq8VHWJrr6GFTfjAEJug64RdjIsvsHHMgcDhSnY
         Oi4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=aoYvQhVSpGtJChMha1oCVK3g7Y1FU/6tq41zJtJ3IsY=;
        b=tmQ+7AlbFYtWmrUJsO5kMRCMHNcFjXVOGOTSPhZ4zZ8BJkbvVAgqvDZWwrGm5P+PXJ
         LE/Xd8bPMlg5rwDC5g5rCdRIhPhhZECTSZngdOwN3MZtQotzmOvxlWxrGLQ8THCjHGY+
         ebERC67XP3K/u1SJx1Ymh/bI2xwz5e1QqtRppjLGf/tqXnnGO+UyksOYSqkDOiCsx3K7
         kdfMcf3ipwbEdK6gTwfX8wk8ZDvFpmz9RlaqV741mH43MOL8C0W78lPBXDcQ79sF9qzi
         w319pdnSxoDm5tffWPaPhYqGaitSdKbtF6RrO9Ka7Ka4CMF0/Xhm7LyyQB6yVPzb43F4
         p5kw==
X-Gm-Message-State: AOAM532g9EVyruNAFQEc38a9wLEhyrqAQFO/2AoTlneJ/Uh3sVxv/hMp
	lHsEXSZ401E2YJKyLb091RLXWbzWHJ4=
X-Google-Smtp-Source: ABdhPJyUKgsq7mogv6VsZ66wfEZ1NFyTQnm3PKVaqhOEnVK09Ii/u/r8plh6tMuZfwCOdXHp5sczGw==
X-Received: by 2002:a9d:2c26:: with SMTP id f35mr514736otb.0.1601323921739;
        Mon, 28 Sep 2020 13:12:01 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:9d97:e0e:5802:c8f4])
        by smtp.gmail.com with ESMTPSA id s20sm2339491oot.15.2020.09.28.13.12.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 13:12:01 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] opendnssec: add recipe
Date: Mon, 28 Sep 2020 13:11:59 -0700
Message-Id: <20200928201159.27889-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../opendnssec/files/fix_fprint.patch         |  25 ++
 .../opendnssec/files/libdns_conf_fix.patch    | 217 ++++++++++++++++++
 .../opendnssec/files/libxml2_conf.patch       | 112 +++++++++
 .../opendnssec/opendnssec_2.1.6.bb            |  37 +++
 4 files changed, 391 insertions(+)
 create mode 100644 recipes-security/opendnssec/files/fix_fprint.patch
 create mode 100644 recipes-security/opendnssec/files/libdns_conf_fix.patch
 create mode 100644 recipes-security/opendnssec/files/libxml2_conf.patch
 create mode 100644 recipes-security/opendnssec/opendnssec_2.1.6.bb

diff --git a/recipes-security/opendnssec/files/fix_fprint.patch b/recipes-security/opendnssec/files/fix_fprint.patch
new file mode 100644
index 0000000..da0bcfe
--- /dev/null
+++ b/recipes-security/opendnssec/files/fix_fprint.patch
@@ -0,0 +1,25 @@
+format not a string literal and no format arguments
+
+missing module_str in call
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+../../../git/enforcer/src/keystate/keystate_ds.c:192:7: error: format not a string literal and no format arguments [-Werror=format-security]
+|   192 |       ods_log_error_and_printf(sockfd, "Failed to run %s", cp_ds);
+|       |       ^~~~~~~~~~~~~~~~~~~~~~~~
+
+
+Index: git/enforcer/src/keystate/keystate_ds.c
+===================================================================
+--- git.orig/enforcer/src/keystate/keystate_ds.c
++++ git/enforcer/src/keystate/keystate_ds.c
+@@ -189,7 +189,7 @@ exec_dnskey_by_id(int sockfd, struct dbw
+ 						status = 0;
+ 					}
+ 					else {
+-						ods_log_error_and_printf(sockfd, "Failed to run %s", cp_ds);
++						ods_log_error_and_printf(sockfd, module_str, "Failed to run %s", cp_ds);
+                                                 status = 7;
+ 					}
+ 				}
diff --git a/recipes-security/opendnssec/files/libdns_conf_fix.patch b/recipes-security/opendnssec/files/libdns_conf_fix.patch
new file mode 100644
index 0000000..126e197
--- /dev/null
+++ b/recipes-security/opendnssec/files/libdns_conf_fix.patch
@@ -0,0 +1,217 @@
+Configure does not work with OE pkg-config for the ldns option
+
+Upstream-Status: OE specific
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: opendnssec-2.1.6/m4/acx_ldns.m4
+===================================================================
+--- opendnssec-2.1.6.orig/m4/acx_ldns.m4
++++ opendnssec-2.1.6/m4/acx_ldns.m4
+@@ -1,128 +1,65 @@
+-AC_DEFUN([ACX_LDNS],[
+-	AC_ARG_WITH(ldns, 
+-		[AC_HELP_STRING([--with-ldns=PATH],[specify prefix of path of ldns library to use])],
+-        	[
+-			LDNS_PATH="$withval"
+-			AC_PATH_PROGS(LDNS_CONFIG, ldns-config, ldns-config, $LDNS_PATH/bin)
+-		],[
+-			LDNS_PATH="/usr/local"
+-			AC_PATH_PROGS(LDNS_CONFIG, ldns-config, ldns-config, $PATH)
+-		])
+-
+-	if test -x "$LDNS_CONFIG"
+-	then
+-		AC_MSG_CHECKING(what are the ldns includes)
+-		LDNS_INCLUDES="`$LDNS_CONFIG --cflags`"
+-		AC_MSG_RESULT($LDNS_INCLUDES)
+-
+-		AC_MSG_CHECKING(what are the ldns libs)
+-		LDNS_LIBS="`$LDNS_CONFIG --libs`"
+-		AC_MSG_RESULT($LDNS_LIBS)
+-	else
+-		AC_MSG_CHECKING(what are the ldns includes)
+-		LDNS_INCLUDES="-I$LDNS_PATH/include"
+-		AC_MSG_RESULT($LDNS_INCLUDES)
+-
+-		AC_MSG_CHECKING(what are the ldns libs)
+-		LDNS_LIBS="-L$LDNS_PATH/lib -lldns"
+-		AC_MSG_RESULT($LDNS_LIBS)
+-	fi
+-
+-	tmp_CPPFLAGS=$CPPFLAGS
+-	tmp_LIBS=$LIBS
+-
+-	CPPFLAGS="$CPPFLAGS $LDNS_INCLUDES"
+-	LIBS="$LIBS $LDNS_LIBS"
+-
+-	AC_CHECK_LIB(ldns, ldns_rr_new,,[AC_MSG_ERROR([Can't find ldns library])])
+-	LIBS=$tmp_LIBS
+-
+-	AC_MSG_CHECKING([for ldns version])
+-	CHECK_LDNS_VERSION=m4_format(0x%02x%02x%02x, $1, $2, $3)
+-	AC_LANG_PUSH([C])
+-	AC_RUN_IFELSE([
+-		AC_LANG_SOURCE([[
+-			#include <ldns/ldns.h>
+-			int main()
+-			{
+-			#ifdef LDNS_REVISION
+-				if (LDNS_REVISION >= $CHECK_LDNS_VERSION)
+-					return 0;
+-			#endif
+-				return 1;
+-			}
+-		]])
+-	],[
+-		AC_MSG_RESULT([>= $1.$2.$3])
+-	],[
+-		AC_MSG_RESULT([< $1.$2.$3])
+-		AC_MSG_ERROR([ldns library too old ($1.$2.$3 or later required)])
+-	],[])
+-	AC_LANG_POP([C])
++#serial 11
+ 
+-	CPPFLAGS=$tmp_CPPFLAGS
+-
+-	AC_SUBST(LDNS_INCLUDES)
+-	AC_SUBST(LDNS_LIBS)
+-])
+-
+-
+-AC_DEFUN([ACX_LDNS_NOT],[
+-	AC_ARG_WITH(ldns, 
+-		[AC_HELP_STRING([--with-ldns=PATH],[specify prefix of path of ldns library to use])],
+-        	[
+-			LDNS_PATH="$withval"
+-			AC_PATH_PROGS(LDNS_CONFIG, ldns-config, ldns-config, $LDNS_PATH/bin)
+-		],[
+-			LDNS_PATH="/usr/local"
+-			AC_PATH_PROGS(LDNS_CONFIG, ldns-config, ldns-config, $PATH)
+-		])
+-
+-	if test -x "$LDNS_CONFIG"
+-	then
+-		AC_MSG_CHECKING(what are the ldns includes)
+-		LDNS_INCLUDES="`$LDNS_CONFIG --cflags`"
+-		AC_MSG_RESULT($LDNS_INCLUDES)
+-
+-		AC_MSG_CHECKING(what are the ldns libs)
+-		LDNS_LIBS="`$LDNS_CONFIG --libs`"
+-		AC_MSG_RESULT($LDNS_LIBS)
+-	else
+-		AC_MSG_CHECKING(what are the ldns includes)
+-		LDNS_INCLUDES="-I$LDNS_PATH/include"
+-		AC_MSG_RESULT($LDNS_INCLUDES)
+-
+-		AC_MSG_CHECKING(what are the ldns libs)
+-		LDNS_LIBS="-L$LDNS_PATH/lib -lldns"
+-		AC_MSG_RESULT($LDNS_LIBS)
+-	fi
+-
+-	tmp_CPPFLAGS=$CPPFLAGS
+-
+-	CPPFLAGS="$CPPFLAGS $LDNS_INCLUDES"
+-
+-	AC_MSG_CHECKING([for ldns version not $1.$2.$3])
+-	CHECK_LDNS_VERSION=m4_format(0x%02x%02x%02x, $1, $2, $3)
+-	AC_LANG_PUSH([C])
+-	AC_RUN_IFELSE([
+-	AC_LANG_SOURCE([[
+-		#include <ldns/ldns.h>
+-		int main()
+-		{
+-		#ifdef LDNS_REVISION
+-			if (LDNS_REVISION != $CHECK_LDNS_VERSION)
+-				return 0;
+-		#endif
+-			return 1;
+-		}
+-		]])
+-	],[
+-		AC_MSG_RESULT([ok])
+-	],[
+-		AC_MSG_RESULT([no])
+-		AC_MSG_ERROR([ldns version $1.$2.$3 is not compatible due to $4])
+-	],[])
+-	AC_LANG_POP([C])
+-
+-	CPPFLAGS=$tmp_CPPFLAGS
++AU_ALIAS([CHECK_LDNS], [ACX_LDNS])
++AC_DEFUN([ACX_LDNS], [
++    found=false
++    AC_ARG_WITH([ldns],
++        [AS_HELP_STRING([--with-ldns=DIR],
++            [root of the lnds directory])],
++        [
++            case "$withval" in
++            "" | y | ye | yes | n | no)
++            AC_MSG_ERROR([Invalid --with-lnds value])
++              ;;
++            *) ldnsdirs="$withval"
++              ;;
++            esac
++        ], [
++            # if pkg-config is installed and lnds has installed a .pc file,
++            # then use that information and don't search ldnsdirs
++            AC_CHECK_TOOL([PKG_CONFIG], [pkg-config])
++            if test x"$PKG_CONFIG" != x""; then
++                OPENSSL_LDFLAGS=`$PKG_CONFIG ldns --libs-only-L 2>/dev/null`
++                if test $? = 0; then
++                    LDNS_LIBS=`$PKG_CONFIG ldns --libs-only-l 2>/dev/null`
++                    LDNS_INCLUDES=`$PKG_CONFIG ldns --cflags-only-I 2>/dev/null`
++                    found=true
++                fi
++            fi
++
++            # no such luck; use some default ldnsdirs
++            if ! $found; then
++                ldnsdirs="/usr/local/ldns /usr/lib/ldns /usr/ldns  /usr/local /usr"
++            fi
++        ]
++        )
++
++
++    if ! $found; then
++        LDNS_INCLUDES=
++        for ldnsdir in $ldnsdirs; do
++            AC_MSG_CHECKING([for LDNS in $ldnsdir])
++            if test -f "$ldnsdir/include/ldns/dnssec.h"; then
++                LDNS_INCLUDES="-I$ldnsdir/include"
++                LDNS_LDFLAGS="-L$ldnsdir/lib"
++                LDNS_LIBS="-lldns"
++                found=true
++                AC_MSG_RESULT([yes])
++                break
++            else
++                AC_MSG_RESULT([no])
++            fi
++        done
++
++        # if the file wasn't found, well, go ahead and try the link anyway -- maybe
++        # it will just work!
++    fi
++
++    LDFLAGS="$LDFLAGS $OPENSSL_LDFLAGS"
++    LIBS="$LDNS_LIBS $LIBS"
++    CPPFLAGS="$LDNS_INCLUDES $CPPFLAGS"
++
++    AC_SUBST([LDNS_INCLUDES])
++    AC_SUBST([LDNS_LIBS])
++    AC_SUBST([LDNS_LDFLAGS])
+ ])
+Index: opendnssec-2.1.6/configure.ac
+===================================================================
+--- opendnssec-2.1.6.orig/configure.ac
++++ opendnssec-2.1.6/configure.ac
+@@ -138,9 +138,7 @@ AC_CHECK_MEMBER([struct sockaddr_un.sun_
+ 
+ # common dependencies
+ ACX_LIBXML2
+-ACX_LDNS(1,6,17)
+-ACX_LDNS_NOT(1,6,14, [binary incompatibility, see http://open.nlnetlabs.nl/pipermail/ldns-users/2012-October/000564.html])
+-ACX_LDNS_NOT(1,6,15, [fail to create NSEC3 bitmap for empty non-terminals, see http://www.nlnetlabs.nl/pipermail/ldns-users/2012-November/000565.html])
++ACX_LDNS(1.6.17)
+ ACX_PKCS11_MODULES
+ ACX_RT
+ ACX_LIBC
diff --git a/recipes-security/opendnssec/files/libxml2_conf.patch b/recipes-security/opendnssec/files/libxml2_conf.patch
new file mode 100644
index 0000000..b4ed430
--- /dev/null
+++ b/recipes-security/opendnssec/files/libxml2_conf.patch
@@ -0,0 +1,112 @@
+configure does not work with OE pkg-config for the libxml2 option
+
+Upstream-Status: OE specific
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: opendnssec-2.1.6/m4/acx_libxml2.m4
+===================================================================
+--- opendnssec-2.1.6.orig/m4/acx_libxml2.m4
++++ opendnssec-2.1.6/m4/acx_libxml2.m4
+@@ -1,37 +1,67 @@
++#serial 11
++AU_ALIAS([CHECK_XML2], [ACX_LIBXML2])
+ AC_DEFUN([ACX_LIBXML2],[
+-	AC_ARG_WITH(libxml2,
+-		[AS_HELP_STRING([--with-libxml2=DIR],[look for libxml2 in this dir])],
+-        	[
+-			XML2_PATH="$withval"
+-			AC_PATH_PROGS(XML2_CONFIG, xml2-config, xml2-config, $XML2_PATH/bin)
+-		],[
+-			XML2_PATH="/usr/local"
+-			AC_PATH_PROGS(XML2_CONFIG, xml2-config, xml2-config, $PATH)
+-		])
+-	if test -x "$XML2_CONFIG"
+-	then
+-		AC_MSG_CHECKING(what are the xml2 includes)
+-		XML2_INCLUDES="`$XML2_CONFIG --cflags`"
+-		AC_MSG_RESULT($XML2_INCLUDES)
+-
+-		AC_MSG_CHECKING(what are the xml2 libs)
+-		XML2_LIBS="`$XML2_CONFIG --libs`"
+-		AC_MSG_RESULT($XML2_LIBS)
+-
+-		tmp_CPPFLAGS=$CPPFLAGS
+-		tmp_LIBS=$LIBS
+-
+-		CPPFLAGS="$CPPFLAGS $XML2_INCLUDES"
+-		LIBS="$LIBS $XML2_LIBS"
+-
+-		AC_CHECK_LIB(xml2, xmlDocGetRootElement,,[AC_MSG_ERROR([Can't find libxml2 library])])
+-		
+-		CPPFLAGS=$tmp_CPPFLAGS
+-		LIBS=$tmp_LIBS
+-	else
+-		AC_MSG_ERROR([libxml2 required, but not found.])
+-	fi
++    found=false
++    AC_ARG_WITH([libxml2],
++        [AS_HELP_STRING([--with-libxml2=DIR],
++            [root of the libxml directory])],
++        [
++            case "$withval" in
++            "" | y | ye | yes | n | no)
++            AC_MSG_ERROR([Invalid --with-libxml2 value])
++              ;;
++            *) xml2dirs="$withval"
++              ;;
++            esac
++        ], [
++            # if pkg-config is installed and openssl has installed a .pc file,
++            # then use that information and don't search ssldirs
++            AC_CHECK_TOOL([PKG_CONFIG], [pkg-config])
++            if test x"$PKG_CONFIG" != x""; then
++                XML2_LDFLAGS=`$PKG_CONFIG libxml-2.0 --libs-only-L 2>/dev/null`
++                if test $? = 0; then
++                    XML2_LIBS=`$PKG_CONFIG libxml-2.0 --libs-only-l 2>/dev/null`
++                    XML2_INCLUDES=`$PKG_CONFIG libxml-2.0 --cflags-only-I 2>/dev/null`
++                    found=true
++                fi
++            fi
+ 
+-	AC_SUBST(XML2_INCLUDES)
+-	AC_SUBST(XML2_LIBS)
++            # no such luck; use some default ssldirs
++            if ! $found; then
++                xml2dirs="/usr/local/libxml /usr/lib/libxml /usr/libxml /usr/pkg /usr/local /usr"
++            fi
++        ]
++        )
++
++
++    # note that we #include <libxml/tree.h>, so the libxml2 headers have to be in
++    # an 'libxml' subdirectory
++
++    if ! $found; then
++        XML2_INCLUDES=
++        for xml2dir in $xml2dirs; do
++            AC_MSG_CHECKING([for XML2 in $xml2dir])
++            if test -f "$xml2dir/include/libxml2/libxml/tree.h"; then
++                XML2_INCLUDES="-I$xml2dir/include/libxml2"
++                XML2_LDFLAGS="-L$xml2dir/lib"
++                XML2_LIBS="-lxml2"
++                found=true
++                AC_MSG_RESULT([yes])
++                break
++            else
++                AC_MSG_RESULT([no])
++            fi
++        done
++
++        # if the file wasn't found, well, go ahead and try the link anyway -- maybe
++        # it will just work!
++    fi
++
++    LDFLAGS="$LDFLAGS $XML2_LDFLAGS"
++    LIBS="$XML2_LIBS $LIBS"
++    CPPFLAGS="$XML2_INCLUDES $CPPFLAGS"
++
++    AC_SUBST(XML2_INCLUDES)
++    AC_SUBST(XML2_LIBS)
++    AC_SUBST(XML2_LDFLAGS)
+ ])
diff --git a/recipes-security/opendnssec/opendnssec_2.1.6.bb b/recipes-security/opendnssec/opendnssec_2.1.6.bb
new file mode 100644
index 0000000..5e42ca8
--- /dev/null
+++ b/recipes-security/opendnssec/opendnssec_2.1.6.bb
@@ -0,0 +1,37 @@
+SUMMARY = "OpenDNSSEC is a policy-based zone signer that automates the process of keeping track of DNSSEC keys and the signing of zones"
+
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=b041dbe2da80d4efd951393fbba90937"
+
+DEPENDS = "libxml2 openssl ldns libmicrohttpd jansson libyaml "
+
+SRC_URI = "git://github.com/opendnssec/opendnssec;branch=develop \
+           file://libxml2_conf.patch \
+           file://libdns_conf_fix.patch \
+           file://fix_fprint.patch \
+           "
+
+SRCREV = "5876bccb38428790e2e9afc806ca68b029879874"
+
+inherit autotools pkgconfig perlnative
+
+S = "${WORKDIR}/git"
+
+EXTRA_OECONF = " --with-libxml2=${STAGING_DIR_HOST}/usr --with-ldns=${STAGING_DIR_HOST}/usr \
+                 --with-ssl=${STAGING_DIR_HOST}/usr  "
+
+CFLAGS += "-fcommon"
+
+PACKAGECONFIG ?= "sqlite3"
+
+PACKAGECONFIG[cunit] = "--with-cunit=${STAGING_DIR_HOST}/usr, --without-cunit,"
+PACKAGECONFIG[sqlite3] = "--with-sqlite3=${STAGING_DIR_HOST}/usr, ,sqlite3, sqlite3"
+PACKAGECONFIG[mysql] = "--with-mysql=yes, , mariadb, mariadb"
+PACKAGECONFIG[readline]  = "--with-readline, --without-readline, readline"
+PACKAGECONFIG[unwind] = "--with-libunwind, --without-libunwind"
+
+do_install_append () {
+    rm -rf ${D}${localstatedir}/run
+}
+
+RDEPENDS_${PN} = "softhsm"
-- 
2.17.1

