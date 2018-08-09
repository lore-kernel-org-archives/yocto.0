Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B229E00B58; Thu,  9 Aug 2018 16:04:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D734E00B58
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 16:04:21 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id w14-v6so3174999plp.6
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 16:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=VjEmndfY/WnGOLvStvUDJYLX7Yeuq9Y8a2FCC8G3aV4=;
	b=nrSRTwzITMmpJ44luvtfocNdKRS02wzlzTsaYXZgS6lwKax9y1yJ+d7whoDX9eWFCU
	2ytK/7ahIxENJT85VJX0HC1+Zfwwg7kDJ/zrrR3RpYZHSVBCG9UrhD8vUeAYlUW3YVyS
	QNcjEBnlxDWkumjlLjQbezn3pJsSJJmcxB2styft/EaLeRweMVOUDKrU/fy5fvtdCjxz
	kDKA+nQ7IFhEqaNBlBPNSABz2+qRYxkNGO42aMUNf2KJVxucAGwt6OFwAdW+uh7Smyzu
	UpIXcQm7VHOQb8P70tr6zKcgCPF/aIeXEsx888zuBw43AFI9TTs3wFJqkuyEf4xyGQ6m
	IBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=VjEmndfY/WnGOLvStvUDJYLX7Yeuq9Y8a2FCC8G3aV4=;
	b=sHpPIMwErLuGW6c7uHhlo14AUFE9N3Cu863LZbZVduTS85uNR4pdbaBvpdcad/1Sz9
	NSh0GJhv71qRMoy9SalSb/Br6RJXkyjcsGNYOA7EQGGqwJewpu85/41JqFQhQNkBjDnD
	0Gs5b+mQ9Xhp2pf7VO/FumS7EUp0cYKNzCnRYbFzYnFS+wmbnje0JlTiM1O2+BquzC3F
	qKtwFr9UTWyHLyJLN2Bisncil7jqGQOVfpJO/MWpUSeQ3qEFhgpfwLoZmiWwR9auhXL3
	k6cn3/rMu/MfRZ/yGvNsOy5dLaqbvXqLodlVWqcP0zh8q6CVCNbPUlZE8ydLLc15KUsk
	Qqgw==
X-Gm-Message-State: AOUpUlGtDNqi2oQaUfPv+SVsuepSatIDqa+K1KQom5Spdy+13gpP2Xx5
	hYIa/0PbbIhbW2qbRap7NAQ=
X-Google-Smtp-Source: AA+uWPwOygX670TXXu+VLwL2+VQnJY1oHkOGDpnfj7Llrp7kMIsfZ7l2apnTZOxmM0C3BzjSg9M91A==
X-Received: by 2002:a17:902:3225:: with SMTP id
	y34-v6mr3714855plb.206.1533855861099; 
	Thu, 09 Aug 2018 16:04:21 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	16-v6sm13150200pfo.164.2018.08.09.16.04.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Aug 2018 16:04:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  9 Aug 2018 16:04:17 -0700
Message-Id: <20180809230417.15925-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180809230417.15925-1-akuster808@gmail.com>
References: <20180809230417.15925-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] sleuthkit: update to 4.1.3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Aug 2018 23:04:24 -0000

cleanup QA issues with perl
refresh patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{afflib_3.6.6.bb => afflib_3.7.16.bb}     | 20 +++++------
 .../afflib/files/configure_rm_ms_flags.patch  |  8 ++---
 .../sleuth/files/fix_host_poison.patch        | 33 ++++++++-----------
 ...{sleuthkit_4.1.3.bb => sleuthkit_4.6.0.bb} | 16 ++++++---
 4 files changed, 37 insertions(+), 40 deletions(-)
 rename recipes-forensic/afflib/{afflib_3.6.6.bb => afflib_3.7.16.bb} (54%)
 rename recipes-forensic/sleuth/{sleuthkit_4.1.3.bb => sleuthkit_4.6.0.bb} (73%)

diff --git a/recipes-forensic/afflib/afflib_3.6.6.bb b/recipes-forensic/afflib/afflib_3.7.16.bb
similarity index 54%
rename from recipes-forensic/afflib/afflib_3.6.6.bb
rename to recipes-forensic/afflib/afflib_3.7.16.bb
index a826d1d..013f524 100644
--- a/recipes-forensic/afflib/afflib_3.6.6.bb
+++ b/recipes-forensic/afflib/afflib_3.7.16.bb
@@ -1,21 +1,17 @@
 SUMMARY = "The Advanced Forensic Format (AFF) is on-disk format for storing computer forensic information."
 HOMEPAGE = "http://www.afflib.org/"
 LICENSE = " BSD-4-Clause  & CPL-1.0"
-LIC_FILES_CHKSUM = "file://COPYING;md5=d1b2c6d0d6908f45d143ef6380727828"
+LIC_FILES_CHKSUM = "file://COPYING;md5=dddf949f1763ecf9b73a96b87b8e6fce"
 
-DEPENDS = " zlib ncurses readline openssl libgcrypt"
+DEPENDS = "zlib ncurses readline openssl libgcrypt"
 
-SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
-        http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}-1.1.diff.gz;name=dpatch \
-        file://configure_rm_ms_flags.patch \
-        "
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
+           file://configure_rm_ms_flags.patch "
 
-SRC_URI[orig.md5sum] = "b7ff4d2945882018eb1536cad182ad01"
-SRC_URI[orig.sha256sum] = "19cacfd558dc00e11975e820e3c4383b52aabbd5ca081d27bb7994a035d2f4ad"
-SRC_URI[dpatch.md5sum] = "171e871024545b487589e6c85290576f"
-SRC_URI[dpatch.sha256sum] = "db632e254ee51a1e4328cd4449d414eff4795053d4e36bfa8e0020fcb4085cdd"
+SRC_URI[md5sum] = "776f09e1c98a63e1e7a16a52f56146fe"
+SRC_URI[sha256sum] = "9c0522941a24a3aafa027e510c6add5ca9f4defd2d859da3e0b536ad11b6bf72"
 
-inherit autotools-brokensep pkgconfig
+inherit autotools pkgconfig
 
 CPPFLAGS = "-I${STAGING_INCDIR}"
 LDFLAGS = "-L${STAGING_LIBDIR}"
@@ -28,3 +24,5 @@ PACKAGECONFIG[python] = "--enable-python=yes, --enable-python=no, python"
 
 EXTRA_OECONF += "--enable-s3=no CPPFLAGS=-I${STAGING_INCDIR} LDFLAGS=-L${STAGING_LIBDIR}"
 EXTRA_OEMAKE += "CPPFLAGS='${CPPFLAGS}' LDFLAGS='-L${STAGING_LIBDIR} -I${STAGING_INCDIR}'"
+
+S = "${WORKDIR}/AFFLIBv3-${PV}"
diff --git a/recipes-forensic/afflib/files/configure_rm_ms_flags.patch b/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
index ac33500..e6b3e1e 100644
--- a/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
+++ b/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
@@ -4,11 +4,11 @@ remove ms lib options when cross compiling
 
 Signed-Off-By: Armin Kuster <akuster808@gmail.com>
 
-Index: configure.ac
+Index: AFFLIBv3-3.7.16/configure.ac
 ===================================================================
---- a.orig/configure.ac
-+++ a/configure.ac
-@@ -47,7 +47,6 @@ if test x"${cross_compiling}" = "xno" ;
+--- AFFLIBv3-3.7.16.orig/configure.ac
++++ AFFLIBv3-3.7.16/configure.ac
+@@ -46,7 +46,6 @@ if test x"${cross_compiling}" = "xno" ;
    AC_MSG_NOTICE([ LDFLAGS = ${LDFLAGS} ])
  else
    AC_MSG_NOTICE([Cross Compiling --- will not update CPPFALGS or LDFLAGS with /usr/local, /opt/local or /sw])
diff --git a/recipes-forensic/sleuth/files/fix_host_poison.patch b/recipes-forensic/sleuth/files/fix_host_poison.patch
index 03b1fb9..1972f3e 100644
--- a/recipes-forensic/sleuth/files/fix_host_poison.patch
+++ b/recipes-forensic/sleuth/files/fix_host_poison.patch
@@ -1,23 +1,16 @@
-Upstream-Status: Inappropriate [configuration]
-
-Don't use host include or lib paths in *FLAGS
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: configure.ac
+Index: sleuthkit-sleuthkit-4.6.0/configure.ac
 ===================================================================
---- a/configure.ac
-+++ b/configure.ac
-@@ -84,12 +84,6 @@ AX_PTHREAD([
-     LDFLAGS="$LDFLAGS $PTHREAD_CFLAGS"
-     CC="$PTHREAD_CC"],[])
- 
--dnl Not all compilers include /usr/local in the include and link path
--if test -d /usr/local/include; then
+--- sleuthkit-sleuthkit-4.6.0.orig/configure.ac
++++ sleuthkit-sleuthkit-4.6.0/configure.ac
+@@ -95,11 +95,6 @@ case "$host" in
+   dnl Adding the native /usr/local is wrong for cross-compiling
+   ;;
+ *)
+-  dnl Not all compilers include /usr/local in the include and link path
+-  if test -d /usr/local/include; then
 -    CPPFLAGS="$CPPFLAGS -I/usr/local/include"
 -    LDFLAGS="$LDFLAGS -L/usr/local/lib"
--fi
--
- dnl Add enable/disable option
- AC_ARG_ENABLE([java],
-     [AS_HELP_STRING([--disable-java], [Do not build the java bindings or jar file])])
+-  fi
+   ;;
+ esac
+ 
diff --git a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb b/recipes-forensic/sleuth/sleuthkit_4.6.0.bb
similarity index 73%
rename from recipes-forensic/sleuth/sleuthkit_4.1.3.bb
rename to recipes-forensic/sleuth/sleuthkit_4.6.0.bb
index ba335f3..4f51f3a 100644
--- a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
+++ b/recipes-forensic/sleuth/sleuthkit_4.6.0.bb
@@ -7,14 +7,15 @@ LIC_FILES_CHKSUM = "file://licenses/GNU-COPYING;startline=4;endline=5;md5=475b47
 
 DEPENDS = "libtool"
 
-SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/s/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
-            file://fix_host_poison.patch \
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/s/${BPN}/${BPN}_${PV}.orig.tar.gz \
         "
-SRC_URI[orig.md5sum] = "139a12f06952d8a40bbe07884994cf5d"
-SRC_URI[orig.sha256sum] = "67f9d2a31a8884d58698d6122fc1a1bfa9bf238582bde2b49228ec9b899f0327"
+SRC_URI[md5sum] = "b94388c5f9de8a9f017619f4855f4401"
+SRC_URI[sha256sum] = "ad3e26958234c9e866dfbfb751bcd6ed300ff76446dc6767a6f9083df4bf4974"
 
 inherit autotools-brokensep pkgconfig gettext
 
+S = "${WORKDIR}/${BPN}-${BPN}-${PV}"
+
 PACKAGECONFIG ??= "aff zlib ewf"
 PACKAGECONFIG[aff] = "--with-afflib=${STAGING_DIR_HOST}/usr, --without-afflib, afflib"
 PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib"
@@ -23,9 +24,14 @@ PACKAGECONFIG[ewf] = "--with-libewf=${STAGING_DIR_HOST}/usr, --without-libewf, l
 #--with-gnu-ld
 EXTRA_OECONF += "--enable-static=no --disable-java LIBS='-L${STAGING_LIBDIR}' LDFLAGS='-L${STAGING_LIBDIR}' CPPFLAGS='-I${STAGING_INCDIR}'"
 
+do_install_append () {
+	sed -e "s|${HOSTTOOLS_DIR}/perl -w|${bindir}/env perl|g" -i ${D}${bindir}/sorter
+	sed -e "s|${HOSTTOOLS_DIR}/perl -w|${bindir}/env perl|g" -i ${D}${bindir}/mactime
+
+}
 # Avoid QA Issue: No GNU_HASH in the elf binary
 INSANE_SKIP_${PN} = "ldflags" 
 
 FILES_${PN} += " ${datadir}/tsk"
 
-RDEPENDS_${PN} += " perl"
+RDEPENDS_sleuthkit = "perl"
-- 
2.17.1


