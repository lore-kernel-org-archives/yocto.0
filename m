Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CD7EE00B18; Sun, 16 Sep 2018 08:57:58 -0700 (PDT)
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
	*      [209.85.215.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FFE3E00BDF
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:52 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id l63-v6so6503574pga.7
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=IkSVXyCTYKOOXxxqbS5/+j98paZ4+9MUcQ40Lpd2sXY=;
	b=bwBrW3JGKcJdOFMhSSP1gaNUqbjiAS4FLYJDWk9luGRH2IF4IhdQB2vlOuCbqi1C3l
	pbhoyanvy+dHAulpfTduHiuKElYNzT/5LIGMPwQFBG+isLX2Mui3qemfYPar6a/lz/Xl
	b+rkQ0XHRma1OctGzQeSLwFK22HzD31oKbqpaL0QyvpP5kuWPCf74AI+7ZruDsT9mXW9
	bEYgcY+lE9eBDpTGxByfiMiyYXIQkmmrXSTzjvBbnmGWZ9SY6scBr0IqOrMIgQYEczh4
	XXfVQ0AGOFNlGhiRBeTrWgs8OeJmPeaL+HvNwihM1ZbXO61tVj7ytDWZyrIB1B+32bAM
	IKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=IkSVXyCTYKOOXxxqbS5/+j98paZ4+9MUcQ40Lpd2sXY=;
	b=EAfFsWtjmcl4YKBCSKhQVRRv5M874d+0dFCZ0hg3+YRMs5+pSLmWDgVw79Imhd3qDl
	0vC+QjBUgaEa2Z44j2uG1DukYCJD8Ny+WIAXv63K2X7jmZQ+EFFlMx5BKcStu3yu8hIx
	e8SXPCIQ5RANHWjWZ3BOFb5h2CxQj/sqiH21vC0cwfn3iIHDvo/tG1N4yKf+BHtZfE1x
	yA+ejNYAOxyyURDSNo4j6c3UnSp/zFJK9xOgi25upXNIM7cIyUzf02IJnYDFg+zDzin7
	UvDas0VCKt9L4n7XJHdgUfPkhGTJ+90uo9HJL5LDTWCu9lDRkfXI4vEDUYLz468+LIlC
	iCpQ==
X-Gm-Message-State: APzg51BAnepzC3s0deuC6iooQQIjHK9IOX7Kgf3S4B3Rp3u63syuZDfL
	SYmpnTEmYu2C3IriJer9+gnU62qp
X-Google-Smtp-Source: ANB0VdYc946xkXiLIaXB9JTrKUuCaLYk+u/CJpGo1aEquAPQMKJ3mqank0iradU7H8UY8G6U4VyK4w==
X-Received: by 2002:a62:c008:: with SMTP id
	x8-v6mr22089783pff.149.1537113471533; 
	Sun, 16 Sep 2018 08:57:51 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.50
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:19 -0700
Message-Id: <20180916155719.9911-25-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 25/25] forensics: drop all un supported pacakges
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:58 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-forensic/afflib/afflib_3.6.6.bb       | 30 ------------------
 .../afflib/files/configure_rm_ms_flags.patch  | 18 -----------
 recipes-forensic/libewf/files/gcc5_fix.patch  | 22 -------------
 recipes-forensic/libewf/libewf_20140608.bb    | 24 --------------
 .../sleuth/files/fix_host_poison.patch        | 23 --------------
 recipes-forensic/sleuth/sleuthkit_4.1.3.bb    | 31 -------------------
 6 files changed, 148 deletions(-)
 delete mode 100644 recipes-forensic/afflib/afflib_3.6.6.bb
 delete mode 100644 recipes-forensic/afflib/files/configure_rm_ms_flags.patch
 delete mode 100644 recipes-forensic/libewf/files/gcc5_fix.patch
 delete mode 100644 recipes-forensic/libewf/libewf_20140608.bb
 delete mode 100644 recipes-forensic/sleuth/files/fix_host_poison.patch
 delete mode 100644 recipes-forensic/sleuth/sleuthkit_4.1.3.bb

diff --git a/recipes-forensic/afflib/afflib_3.6.6.bb b/recipes-forensic/afflib/afflib_3.6.6.bb
deleted file mode 100644
index a826d1d..0000000
--- a/recipes-forensic/afflib/afflib_3.6.6.bb
+++ /dev/null
@@ -1,30 +0,0 @@
-SUMMARY = "The Advanced Forensic Format (AFF) is on-disk format for storing computer forensic information."
-HOMEPAGE = "http://www.afflib.org/"
-LICENSE = " BSD-4-Clause  & CPL-1.0"
-LIC_FILES_CHKSUM = "file://COPYING;md5=d1b2c6d0d6908f45d143ef6380727828"
-
-DEPENDS = " zlib ncurses readline openssl libgcrypt"
-
-SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
-        http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}-1.1.diff.gz;name=dpatch \
-        file://configure_rm_ms_flags.patch \
-        "
-
-SRC_URI[orig.md5sum] = "b7ff4d2945882018eb1536cad182ad01"
-SRC_URI[orig.sha256sum] = "19cacfd558dc00e11975e820e3c4383b52aabbd5ca081d27bb7994a035d2f4ad"
-SRC_URI[dpatch.md5sum] = "171e871024545b487589e6c85290576f"
-SRC_URI[dpatch.sha256sum] = "db632e254ee51a1e4328cd4449d414eff4795053d4e36bfa8e0020fcb4085cdd"
-
-inherit autotools-brokensep pkgconfig
-
-CPPFLAGS = "-I${STAGING_INCDIR}"
-LDFLAGS = "-L${STAGING_LIBDIR}"
-
-PACKAGECONFIG ??= ""
-PACKAGECONFIG[curl] = "--with-curl=${STAGING_LIBDIR}, --without-curl, curl"
-PACKAGECONFIG[expat] = "--with-expat=${STAGING_LIBDIR}, --without-expat, expat"
-PACKAGECONFIG[fuse] = "--enable-fuse=yes, --enable-fuse=no, fuse"
-PACKAGECONFIG[python] = "--enable-python=yes, --enable-python=no, python"
-
-EXTRA_OECONF += "--enable-s3=no CPPFLAGS=-I${STAGING_INCDIR} LDFLAGS=-L${STAGING_LIBDIR}"
-EXTRA_OEMAKE += "CPPFLAGS='${CPPFLAGS}' LDFLAGS='-L${STAGING_LIBDIR} -I${STAGING_INCDIR}'"
diff --git a/recipes-forensic/afflib/files/configure_rm_ms_flags.patch b/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
deleted file mode 100644
index ac33500..0000000
--- a/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-Upstream-Status: Inappropriate [configuration]
-
-remove ms lib options when cross compiling
-
-Signed-Off-By: Armin Kuster <akuster808@gmail.com>
-
-Index: configure.ac
-===================================================================
---- a.orig/configure.ac
-+++ a/configure.ac
-@@ -47,7 +47,6 @@ if test x"${cross_compiling}" = "xno" ;
-   AC_MSG_NOTICE([ LDFLAGS = ${LDFLAGS} ])
- else
-   AC_MSG_NOTICE([Cross Compiling --- will not update CPPFALGS or LDFLAGS with /usr/local, /opt/local or /sw])
--  LIBS="$LIBS -lws2_32 -lgdi32"
- fi
- 
- if test -r /bin/uname.exe ; then
diff --git a/recipes-forensic/libewf/files/gcc5_fix.patch b/recipes-forensic/libewf/files/gcc5_fix.patch
deleted file mode 100644
index 0881f25..0000000
--- a/recipes-forensic/libewf/files/gcc5_fix.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-Upstream Status: pending
-
-Don't use inline with gcc 5.0
-
-fixes:
-undefined reference to `libuna_unicode_character_size_to_utf8'
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: libuna/libuna_inline.h
-===================================================================
---- a/libuna/libuna_inline.h
-+++ b/libuna/libuna_inline.h
-@@ -27,7 +27,7 @@
- #if defined( _MSC_VER )
- #define LIBUNA_INLINE _inline
- 
--#elif defined( __BORLANDC__ ) || defined( __clang__ )
-+#elif defined( __BORLANDC__ ) || defined( __clang__ ) || ( __GNUC__ > 4 )
- #define LIBUNA_INLINE /* inline */
- 
- #else
diff --git a/recipes-forensic/libewf/libewf_20140608.bb b/recipes-forensic/libewf/libewf_20140608.bb
deleted file mode 100644
index f7dce12..0000000
--- a/recipes-forensic/libewf/libewf_20140608.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-SUMMARY = "library with support for Expert Witness Compression Format"
-LICENSE = "LGPLv3+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=58c39b26c0549f8e1bb4122173f474cd"
-
-DEPENDS = "virtual/gettext libtool"
-
-SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/libe/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
-        file://gcc5_fix.patch \
-        "
-SRC_URI[orig.md5sum] = "fdf615f23937fad8e02b60b9e3e5fb35"
-SRC_URI[orig.sha256sum] = "d14030ce6122727935fbd676d0876808da1e112721f3cb108564a4d9bf73da71"
-
-inherit autotools-brokensep pkgconfig gettext
-
-PACKAGECONFIG ??= "zlib ssl bz2"
-PACKAGECONFIG[zlib] = "--with-zlib, --without-zlib, zlib, zlib"
-PACKAGECONFIG[bz2] = "--with-bzip2, --without-bzip2, bzip2, bzip2"
-PACKAGECONFIG[ssl] = "--with-openssl, --without-openssl, openssl, openssl"
-PACKAGECONFIG[fuse] = "--with-libfuse, --without-libfuse, fuse"
-PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
-
-EXTRA_OECONF += "--with-gnu-ld --disable-rpath"
-
-RDEPENDS_${PN} += " util-linux-libuuid"
diff --git a/recipes-forensic/sleuth/files/fix_host_poison.patch b/recipes-forensic/sleuth/files/fix_host_poison.patch
deleted file mode 100644
index 03b1fb9..0000000
--- a/recipes-forensic/sleuth/files/fix_host_poison.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-Upstream-Status: Inappropriate [configuration]
-
-Don't use host include or lib paths in *FLAGS
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: configure.ac
-===================================================================
---- a/configure.ac
-+++ b/configure.ac
-@@ -84,12 +84,6 @@ AX_PTHREAD([
-     LDFLAGS="$LDFLAGS $PTHREAD_CFLAGS"
-     CC="$PTHREAD_CC"],[])
- 
--dnl Not all compilers include /usr/local in the include and link path
--if test -d /usr/local/include; then
--    CPPFLAGS="$CPPFLAGS -I/usr/local/include"
--    LDFLAGS="$LDFLAGS -L/usr/local/lib"
--fi
--
- dnl Add enable/disable option
- AC_ARG_ENABLE([java],
-     [AS_HELP_STRING([--disable-java], [Do not build the java bindings or jar file])])
diff --git a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
deleted file mode 100644
index ba335f3..0000000
--- a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
+++ /dev/null
@@ -1,31 +0,0 @@
-SUMMARY = "The Sleuth Kit (TSK) is a library and collection of command line tools that allow you to investigate disk images."
-HOMEPAGE = "http://www.sleuthkit.org/sleuthkit/"
-LICENSE = "IPL-1.0 & GPLv2 & CPL-1.0"
-LIC_FILES_CHKSUM = "file://licenses/GNU-COPYING;startline=4;endline=5;md5=475b4784903850b579dc6e6310bd5f08\
-    file://licenses/IBM-LICENSE;startline=1;endline=2;md5=1fc3300388b0d6e6216825dd89c2e3a2\
-    file://licenses/cpl1.0.txt;startline=1;endline=2;md5=9e58c878202c73a4e3ed4be72598fb92"
-
-DEPENDS = "libtool"
-
-SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/s/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
-            file://fix_host_poison.patch \
-        "
-SRC_URI[orig.md5sum] = "139a12f06952d8a40bbe07884994cf5d"
-SRC_URI[orig.sha256sum] = "67f9d2a31a8884d58698d6122fc1a1bfa9bf238582bde2b49228ec9b899f0327"
-
-inherit autotools-brokensep pkgconfig gettext
-
-PACKAGECONFIG ??= "aff zlib ewf"
-PACKAGECONFIG[aff] = "--with-afflib=${STAGING_DIR_HOST}/usr, --without-afflib, afflib"
-PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib"
-PACKAGECONFIG[ewf] = "--with-libewf=${STAGING_DIR_HOST}/usr, --without-libewf, libewf"
-
-#--with-gnu-ld
-EXTRA_OECONF += "--enable-static=no --disable-java LIBS='-L${STAGING_LIBDIR}' LDFLAGS='-L${STAGING_LIBDIR}' CPPFLAGS='-I${STAGING_INCDIR}'"
-
-# Avoid QA Issue: No GNU_HASH in the elf binary
-INSANE_SKIP_${PN} = "ldflags" 
-
-FILES_${PN} += " ${datadir}/tsk"
-
-RDEPENDS_${PN} += " perl"
-- 
2.17.1


