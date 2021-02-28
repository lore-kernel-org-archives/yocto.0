Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web08.4805.1614552974617894618
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V4ZM77iV;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id u18so2548025plc.12
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IguPS3Y+RHsxckgOnNU0HXG2CYd4WdFDutB/QdICmtA=;
        b=V4ZM77iVfigNR+/QAFpGL1DF5N1lgqjg+vICu1d1y/ZmbfnmKzf07DsggNg3fik1IK
         lir0GdmSQbELk9OYA3WtxYGEiz8QStdEMKumtgwEsD4/yqKKQCmSg9rY3CjFSKw+nge0
         YKcYAmD6Iq9K2zhjWHjcVd0zxxOfWgHNQOkmndmiK7LWPvAGncWjSAj+tBu7fSOEFgZs
         nsirPcqDqSGJkpeL0ZZTF/ELp9lZGgONiyGJuRkHNfEgMsHu9Yj1N/uU4VR4g75tl7dg
         IQXv8WIarEtIDKTKeQWOTvP4P55cdh4mgrkuk67o/szLSozMICHXt6Loq2AdErFiOfUV
         Gy4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IguPS3Y+RHsxckgOnNU0HXG2CYd4WdFDutB/QdICmtA=;
        b=YCBO+PvJuDVf0vLOmut0bAxqjIFRzux8fVo+M4owQPwBaM850EffLiHtH+Nl0bx4y+
         zW/KDEd0EbgOoirwWq4+ZfEJgBLGI/YksCEHl7e6A0B1G09FogqV+2/HRjv0Smrecg9O
         TsxMpg0CKI47AWC5Lk9kHEOFzFcY47tb96XzTmOQxeMXjsJa8tSgzT7AFNLo9FELUNvp
         nF1ddMy4Rzct4qDdJeaqzRb1vr8aWkwZN/8y361tkZ5gRWTuWNq5stVK1qJxPN3arw/h
         jH3xH+h+lRNAROUB6x/Q369c5MpzaO5MyrfjtBFO1FMCoFzzWmPS5iVq7+R3VShafg2C
         cMdw==
X-Gm-Message-State: AOAM5306K3MUkopi41nd39sjrjDRDQ5vpg4Fw40stnOE5bf11/gzxgZv
	+aDLGDMEkerYKPISF4r/e7EeKIK1ax8=
X-Google-Smtp-Source: ABdhPJxxWzDVgqPKxqeKIHkTak481TOMcvEMzu4JKc2o7KdYClRMsYm6Arojcz5DKsmz82aUQ0LNPQ==
X-Received: by 2002:a17:903:1cc:b029:de:98bb:d46d with SMTP id e12-20020a17090301ccb02900de98bbd46dmr12735116plh.54.1614552973921;
        Sun, 28 Feb 2021 14:56:13 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:13 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 10/12] opendnssec: update to 2.1.8
Date: Sun, 28 Feb 2021 22:56:03 +0000
Message-Id: <20210228225605.3442507-10-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

refresh libdns_conf_fix.patch
Drop fix_fprint.patch includd in update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../opendnssec/files/fix_fprint.patch         | 25 -----------
 .../opendnssec/files/libdns_conf_fix.patch    | 45 +++++++++----------
 .../opendnssec/opendnssec_2.1.8.bb            |  1 -
 3 files changed, 22 insertions(+), 49 deletions(-)
 delete mode 100644 recipes-security/opendnssec/files/fix_fprint.patch

diff --git a/recipes-security/opendnssec/files/fix_fprint.patch b/recipes-security/opendnssec/files/fix_fprint.patch
deleted file mode 100644
index da0bcfe..0000000
--- a/recipes-security/opendnssec/files/fix_fprint.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-format not a string literal and no format arguments
-
-missing module_str in call
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-../../../git/enforcer/src/keystate/keystate_ds.c:192:7: error: format not a string literal and no format arguments [-Werror=format-security]
-|   192 |       ods_log_error_and_printf(sockfd, "Failed to run %s", cp_ds);
-|       |       ^~~~~~~~~~~~~~~~~~~~~~~~
-
-
-Index: git/enforcer/src/keystate/keystate_ds.c
-===================================================================
---- git.orig/enforcer/src/keystate/keystate_ds.c
-+++ git/enforcer/src/keystate/keystate_ds.c
-@@ -189,7 +189,7 @@ exec_dnskey_by_id(int sockfd, struct dbw
- 						status = 0;
- 					}
- 					else {
--						ods_log_error_and_printf(sockfd, "Failed to run %s", cp_ds);
-+						ods_log_error_and_printf(sockfd, module_str, "Failed to run %s", cp_ds);
-                                                 status = 7;
- 					}
- 				}
diff --git a/recipes-security/opendnssec/files/libdns_conf_fix.patch b/recipes-security/opendnssec/files/libdns_conf_fix.patch
index 126e197..31d7252 100644
--- a/recipes-security/opendnssec/files/libdns_conf_fix.patch
+++ b/recipes-security/opendnssec/files/libdns_conf_fix.patch
@@ -4,14 +4,29 @@ Upstream-Status: OE specific
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-Index: opendnssec-2.1.6/m4/acx_ldns.m4
+Index: opendnssec-2.1.8/configure.ac
 ===================================================================
---- opendnssec-2.1.6.orig/m4/acx_ldns.m4
-+++ opendnssec-2.1.6/m4/acx_ldns.m4
-@@ -1,128 +1,65 @@
+--- opendnssec-2.1.8.orig/configure.ac
++++ opendnssec-2.1.8/configure.ac
+@@ -133,9 +133,7 @@ AC_CHECK_MEMBER([struct sockaddr_un.sun_
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
+Index: opendnssec-2.1.8/m4/acx_ldns.m4
+===================================================================
+--- opendnssec-2.1.8.orig/m4/acx_ldns.m4
++++ opendnssec-2.1.8/m4/acx_ldns.m4
+@@ -1,128 +1,63 @@
 -AC_DEFUN([ACX_LDNS],[
 -	AC_ARG_WITH(ldns, 
--		[AC_HELP_STRING([--with-ldns=PATH],[specify prefix of path of ldns library to use])],
+-		[AS_HELP_STRING([--with-ldns=PATH],[specify prefix of path of ldns library to use])],
 -        	[
 -			LDNS_PATH="$withval"
 -			AC_PATH_PROGS(LDNS_CONFIG, ldns-config, ldns-config, $LDNS_PATH/bin)
@@ -70,8 +85,7 @@ Index: opendnssec-2.1.6/m4/acx_ldns.m4
 -		AC_MSG_ERROR([ldns library too old ($1.$2.$3 or later required)])
 -	],[])
 -	AC_LANG_POP([C])
-+#serial 11
- 
+-
 -	CPPFLAGS=$tmp_CPPFLAGS
 -
 -	AC_SUBST(LDNS_INCLUDES)
@@ -81,7 +95,7 @@ Index: opendnssec-2.1.6/m4/acx_ldns.m4
 -
 -AC_DEFUN([ACX_LDNS_NOT],[
 -	AC_ARG_WITH(ldns, 
--		[AC_HELP_STRING([--with-ldns=PATH],[specify prefix of path of ldns library to use])],
+-		[AS_HELP_STRING([--with-ldns=PATH],[specify prefix of path of ldns library to use])],
 -        	[
 -			LDNS_PATH="$withval"
 -			AC_PATH_PROGS(LDNS_CONFIG, ldns-config, ldns-config, $LDNS_PATH/bin)
@@ -200,18 +214,3 @@ Index: opendnssec-2.1.6/m4/acx_ldns.m4
 +    AC_SUBST([LDNS_LIBS])
 +    AC_SUBST([LDNS_LDFLAGS])
  ])
-Index: opendnssec-2.1.6/configure.ac
-===================================================================
---- opendnssec-2.1.6.orig/configure.ac
-+++ opendnssec-2.1.6/configure.ac
-@@ -138,9 +138,7 @@ AC_CHECK_MEMBER([struct sockaddr_un.sun_
- 
- # common dependencies
- ACX_LIBXML2
--ACX_LDNS(1,6,17)
--ACX_LDNS_NOT(1,6,14, [binary incompatibility, see http://open.nlnetlabs.nl/pipermail/ldns-users/2012-October/000564.html])
--ACX_LDNS_NOT(1,6,15, [fail to create NSEC3 bitmap for empty non-terminals, see http://www.nlnetlabs.nl/pipermail/ldns-users/2012-November/000565.html])
-+ACX_LDNS(1.6.17)
- ACX_PKCS11_MODULES
- ACX_RT
- ACX_LIBC
diff --git a/recipes-security/opendnssec/opendnssec_2.1.8.bb b/recipes-security/opendnssec/opendnssec_2.1.8.bb
index 9137743..cf6bdbd 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.8.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.8.bb
@@ -8,7 +8,6 @@ DEPENDS = "libxml2 openssl ldns libmicrohttpd jansson libyaml "
 SRC_URI = "https://dist.opendnssec.org/source/opendnssec-${PV}.tar.gz \
            file://libxml2_conf.patch \
            file://libdns_conf_fix.patch \
-           file://fix_fprint.patch \
            "
 
 SRC_URI[sha256sum] = "900a213103ff19a405e446327fbfcea9ec13e405283d87b6ffc24a10d9a268f5"
-- 
2.25.1

