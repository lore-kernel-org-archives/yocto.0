Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE46DE00781; Fri, 19 Sep 2014 22:24:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72E30E00576
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 22:24:41 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id ey11so1543842pad.14
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 22:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=/yAHXjFpWX11S3+oBR30l+zb9mIurfbbAm7LxbOR+ys=;
	b=vwO+DWU3dZ9joDh7/AMSm4958hC3jReRufcHX1udS5e8VNrKXHmwjha6tvQCNTLH5M
	wEKOSRO8+vLbxB3G1YUpoYEBvsAznOaVYUrgtCkA9potyrTA4Et1r5WfDFQYnNpIIagO
	2GiQiRaasUFPNRPdlyZ+UvD+iYInjw5+1/X/tFzhTFRGKINnqPzttIdGG40N9sX0RCI9
	uAZ65T4DgemLdtGmITEge04usjIJeZWgsW6ywrU/7BIWg5sEnhVbWnixjFeF5mLmHD+T
	EFl3pg00JRcnLF6KJG9DSp/Gx7GdCwt9GrXBocR3fO8g7mLEkO/05+1ur5UhhjuMGV7G
	eb/w==
X-Received: by 10.68.235.105 with SMTP id ul9mr6050595pbc.3.1411190681266;
	Fri, 19 Sep 2014 22:24:41 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id hz1sm3327402pbb.75.2014.09.19.22.24.39
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 19 Sep 2014 22:24:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Sep 2014 22:24:37 -0700
Message-Id: <1411190677-18786-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] isic: Add new package
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
X-List-Received-Date: Sat, 20 Sep 2014 05:24:48 -0000

This adds the ISIC is a suite of utilities to exercise the stability of an IP and its component stacks (TCP/UDP/ICMP etc.) It generates piles of pseudo random packets with configurable tendancies, then sent to the target to penetrate its firewall rules or find bug

backported two patches from Redhat.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/isic/files/configure_fix.patch    | 170 +++++++++++++++++++++
 recipes-security/isic/files/isic-0.07-make.patch   |  23 +++
 .../isic/files/isic-0.07-netinet.patch             |  68 +++++++++
 recipes-security/isic/isic_0.07.bb                 |  30 ++++
 4 files changed, 291 insertions(+)
 create mode 100644 recipes-security/isic/files/configure_fix.patch
 create mode 100644 recipes-security/isic/files/isic-0.07-make.patch
 create mode 100644 recipes-security/isic/files/isic-0.07-netinet.patch
 create mode 100644 recipes-security/isic/isic_0.07.bb

diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes-security/isic/files/configure_fix.patch
new file mode 100644
index 0000000..fc2a774
--- /dev/null
+++ b/recipes-security/isic/files/configure_fix.patch
@@ -0,0 +1,170 @@
+isic: add with-libnet remove libnet test
+
+Inappropriate - builds fine on non-oe systems. We need to exlude
+cross compile libnet test. Pass in the location for libnet.a. Path
+did not support mulitlib either.
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: isic-0.07/configure
+===================================================================
+--- isic-0.07.orig/configure
++++ isic-0.07/configure
+@@ -45,6 +45,8 @@ includedir='${prefix}/include'
+ oldincludedir='/usr/include'
+ infodir='${prefix}/info'
+ mandir='${prefix}/man'
++with_libnet_libraries
++libnet_libraries
+ 
+ # Initialize some other variables.
+ subdirs=
+@@ -180,6 +182,7 @@ Features and packages:
+   --without-PACKAGE       do not use PACKAGE (same as --with-PACKAGE=no)
+   --x-includes=DIR        X include files are in DIR
+   --x-libraries=DIR       X library files are in DIR
++  --with-libnet-dir=DIR   libnet library is in this DIR
+ EOF
+     if test -n "$ac_help"; then
+       echo "--enable and --with options recognized:$ac_help"
+@@ -828,117 +832,36 @@ test -z "$INSTALL_SCRIPT" && INSTALL_SCR
+ test -z "$INSTALL_DATA" && INSTALL_DATA='${INSTALL} -m 644'
+ 
+ 
+-PREFIX=/usr/local
+-
+-ac_safe=`echo "$PREFIX/lib/libnet.a" | sed 'y%./+-%__p_%'`
+-echo $ac_n "checking for $PREFIX/lib/libnet.a""... $ac_c" 1>&6
+-echo "configure:836: checking for $PREFIX/lib/libnet.a" >&5
+-if eval "test \"`echo '$''{'ac_cv_file_$ac_safe'+set}'`\" = set"; then
+-  echo $ac_n "(cached) $ac_c" 1>&6
+-else
+-  if test "$cross_compiling" = yes; then
+-    { echo "configure: error: Cannot check for file existence when cross compiling" 1>&2; exit 1; }
+-else
+-  if test -r $PREFIX/lib/libnet.a; then
+-    eval "ac_cv_file_$ac_safe=yes"
+-  else
+-    eval "ac_cv_file_$ac_safe=no"
+-  fi
+-fi
+-fi
+-if eval "test \"`echo '$ac_cv_file_'$ac_safe`\" = yes"; then
+-  echo "$ac_t""yes" 1>&6
+-  FOO=$LIBS; CFLAGS="$CFLAGS -I$PREFIX/include" LIBS="-L$PREFIX/lib $LIBS"
+-else
+-  echo "$ac_t""no" 1>&6
+-
+-fi
+-
+-echo $ac_n "checking for -lnet""... $ac_c" 1>&6
+-echo "configure:884: checking for -lnet" >&5
+-if eval "test \"`echo '$''{'ac_cv_lib_net'+set}'`\" = set"; then
+-  echo $ac_n "(cached) $ac_c" 1>&6
+-else
+-  ac_save_LIBS="$LIBS"
+-LIBS="-lnet  $LIBS"
+-cat > conftest.$ac_ext <<EOF
+-#line 891 "configure"
+-#include "confdefs.h"
+-
+-int main() {
+-main()
+-; return 0; }
+-EOF
+-if { (eval echo configure:898: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest${ac_exeext}; then
+-  rm -rf conftest*
+-  ac_cv_lib_net=yes
+-else
+-  echo "configure: failed program was:" >&5
+-  cat conftest.$ac_ext >&5
+-  rm -rf conftest*
+-  ac_cv_lib_net=no
++LIBNET_GLOB='libnet.a'
++libnet_libraries=""
++ac_libnet_libraries=NO
++
++# Check whether --with-libnet-libraries was given.
++if test "${with_libnet_libraries+set}" = set; then :
++  withval=$with_libnet_libraries;   ac_libnet_libraries="$withval"
++fi
++
++if test ! "$ac_libnet_libraries" = "NO"; then
++  libnet_libdir=$ac_libnet_libraries
++else
++  libnet_libdirs="/usr/lib"
++  libnet_libdir=NONE
++  for dir in $libnet_libdirs; do
++    try="ls -1 $dir/${LIBNET_GLOB}"
++    if test -n "`$try 2> /dev/null`"; then libnet_libdir=$dir; break; else echo "tried $dir" >&5; fi
++  done
+ fi
+-rm -f conftest*
+-LIBS="$ac_save_LIBS"
+ 
+-fi
+-echo "$ac_t""$ac_cv_lib_net" 1>&6
+-if test "$ac_cv_lib_net" = yes; then
+-  DEFINES=  
+-else
+-  { echo "configure: error: Cannot find libnet...  please get it from
+-	http://www.packetfactory.net/libnet" 1>&2; exit 1; }
+-fi
++ac_libnet_libdir="$libnet_libdir"
+ 
+-echo $ac_n "checking for libnet_init in -lnet""... $ac_c" 1>&6
+-echo "configure:921: checking for libnet_init in -lnet" >&5
+-ac_lib_var=`echo net'_'libnet_init | sed 'y%./+-%__p_%'`
+-if eval "test \"`echo '$''{'ac_cv_lib_$ac_lib_var'+set}'`\" = set"; then
+-  echo $ac_n "(cached) $ac_c" 1>&6
+-else
+-  ac_save_LIBS="$LIBS"
+-LIBS="-lnet  $LIBS"
+-cat > conftest.$ac_ext <<EOF
+-#line 929 "configure"
+-#include "confdefs.h"
+-/* Override any gcc2 internal prototype to avoid an error.  */
+-/* We use char because int might match the return type of a gcc2
+-    builtin and then its argument prototype would still apply.  */
+-char libnet_init();
+-
+-int main() {
+-libnet_init()
+-; return 0; }
+-EOF
+-if { (eval echo configure:940: \"$ac_link\") 1>&5; (eval $ac_link) 2>&5; } && test -s conftest${ac_exeext}; then
+-  rm -rf conftest*
+-  eval "ac_cv_lib_$ac_lib_var=yes"
+-else
+-  echo "configure: failed program was:" >&5
+-  cat conftest.$ac_ext >&5
+-  rm -rf conftest*
+-  eval "ac_cv_lib_$ac_lib_var=no"
++if test "$libnet_libraries"; then
++  libnet_libraries="$ac_libnet_libdir"
+ fi
+-rm -f conftest*
+-LIBS="$ac_save_LIBS"
+-
+-fi
+-if eval "test \"`echo '$ac_cv_lib_'$ac_lib_var`\" = yes"; then
+-  echo "$ac_t""yes" 1>&6
+-    ac_tr_lib=HAVE_LIB`echo net | sed -e 's/[^a-zA-Z0-9_]/_/g' \
+-    -e 'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/'`
+-  cat >> confdefs.h <<EOF
+-#define $ac_tr_lib 1
+-EOF
+ 
+-  LIBS="-lnet $LIBS"
+-
+-else
+-  echo "$ac_t""no" 1>&6
++if test "$libnet_libraries" != "$x_libraries" && test -n "$libnet_libraries"; then
++  LIBS="$LIBS -lnet"
+ fi
+ 
+-
+-
+ echo $ac_n "checking how to run the C preprocessor""... $ac_c" 1>&6
+ echo "configure:970: checking how to run the C preprocessor" >&5
+ # On Suns, sometimes $CPP names a directory.
diff --git a/recipes-security/isic/files/isic-0.07-make.patch b/recipes-security/isic/files/isic-0.07-make.patch
new file mode 100644
index 0000000..9cffa8a
--- /dev/null
+++ b/recipes-security/isic/files/isic-0.07-make.patch
@@ -0,0 +1,23 @@
+isic: Fixup makefile to support destination
+
+Backport:
+http://pkgs.fedoraproject.org/cgit/isic.git/tree/isic-0.07-make.patch
+
+Signed-off-by: Armin Kuster <akuser808@gmail.com>
+
+Index: isic-0.07/Makefile.in
+===================================================================
+--- isic-0.07.orig/Makefile.in
++++ isic-0.07/Makefile.in
+@@ -63,7 +63,7 @@ package: distclean
+ 	  tar -czvf isic-$(VERSION).tgz ./isic-$(VERSION)/* )
+ 
+ install: $(BINS) $(MAN)
+-	$(INSTALL) -m 0755 -d $(PREFIX)/bin
+-	$(INSTALL) -m 0755 -c $(BINS) $(PREFIX)/bin
+-	$(INSTALL) -m 0755 -d $(PREFIX)/man/man1
+-	${INSTALL} -m 0755 -c $(MAN) $(PREFIX)/man/man1
++	$(INSTALL) -m 0755 -d $(DESTDIR)$(PREFIX)/bin
++	$(INSTALL) -m 0755 -c $(BINS) $(DESTDIR)$(PREFIX)/bin
++	$(INSTALL) -m 0755 -d $(DESTDIR)$(PREFIX)/share/man/man1
++	${INSTALL} -m 0755 -c $(MAN) $(DESTDIR)$(PREFIX)/share/man/man1
diff --git a/recipes-security/isic/files/isic-0.07-netinet.patch b/recipes-security/isic/files/isic-0.07-netinet.patch
new file mode 100644
index 0000000..c4ea74e
--- /dev/null
+++ b/recipes-security/isic/files/isic-0.07-netinet.patch
@@ -0,0 +1,68 @@
+isic: add missing header file
+
+Backport:
+http://pkgs.fedoraproject.org/cgit/isic.git/tree/isic-0.07-netinet.patch
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: isic-0.07/multisic.c
+===================================================================
+--- isic-0.07.orig/multisic.c
++++ isic-0.07/multisic.c
+@@ -1,5 +1,8 @@
+ #include "isic.h"
+ 
++#include <netinet/udp.h>
++/*#include <netinet/tcp.h>*/
++
+ /* This is tuned for ethernet sized frames (1500 bytes)
+  * For user over a modem or frame (or other) you will have to change the
+  * 'rand() & 0x4ff' line below.  The 0x4ff needs to be less than the size of
+Index: isic-0.07/tcpsic.c
+===================================================================
+--- isic-0.07.orig/tcpsic.c
++++ isic-0.07/tcpsic.c
+@@ -1,5 +1,7 @@
+ #include "isic.h"
+ 
++#include <netinet/tcp.h>
++
+ /* This is tuned for ethernet sized frames (1500 bytes)
+  * For user over a modem or frame (or other) you will have to change the
+  * 'rand() & 0x4ff' line below.  The 0x4ff needs to be less than the size of
+Index: isic-0.07/tcpsic6.c
+===================================================================
+--- isic-0.07.orig/tcpsic6.c
++++ isic-0.07/tcpsic6.c
+@@ -1,5 +1,7 @@
+ #include "isic.h"
+ 
++#include <netinet/tcp.h>
++
+ /* This is tuned for ethernet sized frames (1500 bytes)
+  * For user over a modem or frame (or other) you will have to change the
+  * 'rand() & 0x4ff' line below.  The 0x4ff needs to be less than the size of
+Index: isic-0.07/udpsic.c
+===================================================================
+--- isic-0.07.orig/udpsic.c
++++ isic-0.07/udpsic.c
+@@ -1,5 +1,7 @@
+ #include "isic.h"
+ 
++#include <netinet/udp.h>
++
+ /* This is tuned for ethernet sized frames (1500 bytes)
+  * For user over a modem or frame (or other) you will have to change the
+  * 'rand() & 0x4ff' line below.  The 0x4ff needs to be less than the size of
+Index: isic-0.07/udpsic6.c
+===================================================================
+--- isic-0.07.orig/udpsic6.c
++++ isic-0.07/udpsic6.c
+@@ -1,5 +1,7 @@
+ #include "isic.h"
+ 
++#include <netinet/udp.h>
++
+ /* This is tuned for ethernet sized frames (1500 bytes)
+  * For user over a modem or frame (or other) you will have to change the
+  * 'rand() & 0x4ff' line below.  The 0x4ff needs to be less than the size of
diff --git a/recipes-security/isic/isic_0.07.bb b/recipes-security/isic/isic_0.07.bb
new file mode 100644
index 0000000..fb6e904
--- /dev/null
+++ b/recipes-security/isic/isic_0.07.bb
@@ -0,0 +1,30 @@
+SUMMARY = "ISIC -- IP Stack Integrity Checker"
+DESCRIPTION = "ISIC is a suite of utilities to exercise the stability of an IP Stack and its component stacks (TCP, UDP, ICMP et. al.)"
+HOMEPAGE = "http://isic.sourceforge.net/"
+SECTION = "security"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d41d8cd98f00b204e9800998ecf8427e"
+
+DEPENDS = "libnet"
+PARALLEL_MAKE = ""
+
+SRC_URI = "http://prdownloads.sourceforge.net/isic/${BPN}-${PV}.tgz \
+    file://configure_fix.patch \
+    file://isic-0.07-netinet.patch \
+    file://isic-0.07-make.patch \
+    "
+
+SRC_URI[md5sum] = "29f70c9bde9aa9128b8f7e66a315f9a4"
+SRC_URI[sha256sum] = "e033c53e03e26a4c72b723e2a5a1c433ee70eb4d23a1ba0d7d7e14ee1a80429d"
+
+S="${WORKDIR}/${BPN}-${PV}"
+
+inherit autotools-brokensep
+
+EXTRA_OECONF += "--with-libnet-dir=${STAGING_DIR_HOST}${libdir} "
+
+do_configure () {
+    oe_runconf
+}
+
+RDEPNEDS += "libnet"
-- 
1.9.1


