Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D027E00B58; Tue, 10 Apr 2018 20:13:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD23E009BC
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 20:13:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w3B3DYP8031720
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 20:13:34 -0700
Received: from localhost (128.224.163.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 10 Apr 2018 20:13:33 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 11 Apr 2018 11:13:31 +0800
Message-ID: <1523416411-6211-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.163.220]
Subject: [meta-security][PATCH] xmlsec1: refresh patches to fix QA warning
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
X-List-Received-Date: Wed, 11 Apr 2018 03:13:38 -0000
Content-Type: text/plain

Refresh patches with devtool command.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../xmlsec1/change-finding-path-of-nss.patch       | 22 +++++++++++++---------
 .../xmlsec1/xmlsec1/fix-ltmain.sh.patch            | 16 ++++++++--------
 .../xmlsec1/xmlsec1/makefile-ptest.patch           | 18 +++++++++++++-----
 ...sec1-examples-allow-build-in-separate-dir.patch | 10 ++++------
 .../xmlsec1-fix-a-typo-in-examples-verify3.c.patch |  6 ++----
 5 files changed, 40 insertions(+), 32 deletions(-)

diff --git a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
index 0f4cef9..fcc63b3 100644
--- a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
+++ b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
@@ -1,3 +1,4 @@
+From 47379747e34f952d31af028c672940ca7859ae3c Mon Sep 17 00:00:00 2001
 From: Yulong Pei <Yulong.pei@windriver.com>
 Date: Wed, 21 Jul 2010 22:33:43 +0800
 Subject: [PATCH] change finding path of nss and nspr
@@ -6,13 +7,16 @@ Upstream-Status: Pending
 
 Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
 Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+
 ---
- configure.ac |   12 ++++++------
- 1 files changed, 6 insertions(+), 6 deletions(-)
+ configure.ac | 12 ++++++------
+ 1 file changed, 6 insertions(+), 6 deletions(-)
 
+diff --git a/configure.ac b/configure.ac
+index 3278200..6edec7d 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -618,7 +618,7 @@
+@@ -644,7 +644,7 @@ if test "z$NSS_FOUND" = "zno" ; then
  
      if test "z$with_nspr" != "z" ; then
  	NSPR_PREFIX="$with_nspr"
@@ -21,7 +25,7 @@ Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
  	if test "z$with_gnu_ld" = "zyes" ; then
  	    NSPR_LIBS="-Wl,-rpath-link -Wl,$with_nspr/lib -L$with_nspr/lib $NSPR_LIBS_LIST"
  	else
-@@ -626,7 +626,7 @@
+@@ -652,7 +652,7 @@ if test "z$NSS_FOUND" = "zno" ; then
  	fi
  	NSPR_INCLUDES_FOUND="yes"
  	NSPR_LIBS_FOUND="yes"
@@ -30,7 +34,7 @@ Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
      else
  	for dir in $ac_nss_inc_dir ; do
      	    if test -f $dir/nspr/prinit.h ; then
-@@ -664,7 +664,7 @@
+@@ -690,7 +690,7 @@ if test "z$NSS_FOUND" = "zno" ; then
  	OLD_CPPFLAGS=$CPPFLAGS
  	CPPFLAGS="$NSPR_CFLAGS"
  	AC_EGREP_CPP(yes,[
@@ -39,7 +43,7 @@ Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
              #if PR_VMAJOR >= 4
                 yes
              #endif
-@@ -689,7 +689,7 @@
+@@ -715,7 +715,7 @@ if test "z$NSS_FOUND" = "zno" ; then
      NSS_NSS_H=""
  
      if test "z$with_nss" != "z" ; then
@@ -48,7 +52,7 @@ Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
  	if test "z$with_gnu_ld" = "zyes" ; then
  	    NSS_LIBS="$NSS_LIBS -Wl,-rpath-link -Wl,$with_nss/lib -L$with_nss/lib $NSS_LIBS_LIST"
          else
-@@ -697,7 +697,7 @@
+@@ -723,7 +723,7 @@ if test "z$NSS_FOUND" = "zno" ; then
          fi
  	NSS_INCLUDES_FOUND="yes"
  	NSS_LIBS_FOUND="yes"
@@ -57,9 +61,9 @@ Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
      else
  	for dir in $ac_nss_inc_dir ; do
  	    if test -f $dir/nss/nss.h ; then
-@@ -735,7 +735,7 @@
+@@ -761,7 +761,7 @@ if test "z$NSS_FOUND" = "zno" ; then
         OLD_CPPFLAGS=$CPPFLAGS
-        CPPFLAGS="$NSS_CFLAGS"
+        CPPFLAGS="$NSPR_CFLAGS $NSS_CFLAGS"
         AC_EGREP_CPP(yes,[
 -          #include <nss.h>
 +	  #include <nss3/nss.h>
diff --git a/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch b/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
index 472f1cc..af598fe 100644
--- a/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
+++ b/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
@@ -1,3 +1,4 @@
+From 847dc52f5a50e34ee4d6e3dc2c708711747a58ca Mon Sep 17 00:00:00 2001
 From: Yulong Pei <Yulong.pei@windriver.com>
 Date: Thu, 21 Jan 2010 14:11:20 +0800
 Subject: [PATCH] force to use our own libtool
@@ -5,22 +6,21 @@ Subject: [PATCH] force to use our own libtool
 Upstream-Status: Inappropriate [ OE specific ]
 
 Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
+
 ---
- ltmain.sh |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
+ ltmain.sh | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/ltmain.sh b/ltmain.sh
+index 147d758..a61f16b 100644
 --- a/ltmain.sh
 +++ b/ltmain.sh
-@@ -1309,7 +1309,7 @@ EOF
- 	dir=`$echo "X$arg" | $Xsed -e 's/^-L//'`
+@@ -6969,7 +6969,7 @@ func_mode_link ()
+ 	dir=$func_resolve_sysroot_result
  	# We need an absolute path.
  	case $dir in
 -	[\\/]* | [A-Za-z]:[\\/]*) ;;
 +	=* | [\\/]* | [A-Za-z]:[\\/]*) ;;
  	*)
  	  absdir=`cd "$dir" && pwd`
- 	  if test -z "$absdir"; then
--- 
-1.6.4
-
+ 	  test -z "$absdir" && \
diff --git a/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch b/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
index 2a199f4..d453569 100644
--- a/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
+++ b/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
@@ -1,18 +1,26 @@
+From 83a1381e1d6bd1b5ec3df6f7c4bc1f4fe4f860b6 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Thu, 15 Jun 2017 14:44:01 +0800
+Subject: [PATCH] xmlsec1: add new recipe
+
 This enables the building of the examples directory
 and it's installed as ptest.
 
 Upstream-Status: Inappropriate [ OE ptest specific ]
 
 Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
 ---
- examples/Makefile |    7 +++++--
- 1 files changed, 7 insertions(+), 0 deletions(-)
+ examples/Makefile | 12 ++++++++++--
+ 1 file changed, 10 insertions(+), 2 deletions(-)
 
+diff --git a/examples/Makefile b/examples/Makefile
+index 89b1d61..c1cbcca 100644
 --- a/examples/Makefile
 +++ b/examples/Makefile
-@@ -9,9 +9,17 @@
- 	xmldsigverify \
- 	xkms-server
+@@ -8,9 +8,17 @@ PROGRAMS = \
+ 	decrypt1 decrypt2 decrypt3 \
+ 	xmldsigverify
  
 +ifndef CC
  CC	= gcc
diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
index b0ced03..8b2533e 100644
--- a/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
+++ b/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
@@ -1,4 +1,4 @@
-From ef8872185dcd05d20c93cd98317ede1913371c94 Mon Sep 17 00:00:00 2001
+From 0c38c6864e7ba8f53a657d87894f24374a6a4932 Mon Sep 17 00:00:00 2001
 From: Jackie Huang <jackie.huang@windriver.com>
 Date: Tue, 30 Dec 2014 11:18:17 +0800
 Subject: [PATCH] examples: allow build in separate dir
@@ -6,15 +6,16 @@ Subject: [PATCH] examples: allow build in separate dir
 Upstream-Status: Inappropriate [ OE specific ]
 
 Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
 ---
  examples/Makefile | 6 ++++--
  1 file changed, 4 insertions(+), 2 deletions(-)
 
 diff --git a/examples/Makefile b/examples/Makefile
-index 0d72ad7..f9bccc6 100644
+index c1cbcca..3f1bd14 100644
 --- a/examples/Makefile
 +++ b/examples/Makefile
-@@ -13,8 +13,10 @@ ifndef CC
+@@ -12,8 +12,10 @@ ifndef CC
  CC	= gcc
  endif
  
@@ -27,6 +28,3 @@ index 0d72ad7..f9bccc6 100644
  
  DESTDIR = /usr/share/xmlsec1
  install-ptest:
--- 
-1.9.1
-
diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
index 0fe3fd7..5f967bb 100644
--- a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
+++ b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
@@ -1,4 +1,4 @@
-From bf1c7b17cc80a2f4dfd43f112f944f68fa5fbcd6 Mon Sep 17 00:00:00 2001
+From 1d8ae4b32bd76c19ec238f30eb9b1ee582cbe990 Mon Sep 17 00:00:00 2001
 From: Jackie Huang <jackie.huang@windriver.com>
 Date: Fri, 2 Mar 2018 01:10:58 -0800
 Subject: [PATCH] xmlsec1: fix a typo in examples/verify3.c
@@ -6,6 +6,7 @@ Subject: [PATCH] xmlsec1: fix a typo in examples/verify3.c
 Upstream-Status: Submitted [https://github.com/lsh123/xmlsec/pull/153]
 
 Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
 ---
  examples/verify3.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
@@ -20,6 +21,3 @@ index 2d26ae7..68f52ab 100644
   * XML Security Library example: Verifying a file signed with X509 certificate
   *
   * Verifies a file signed with X509 certificate. 
--- 
-2.13.0
-
-- 
2.7.4


