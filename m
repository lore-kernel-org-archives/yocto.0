Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D476E00C89; Mon, 18 Sep 2017 22:15:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DAFAE00A38
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 22:15:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8J5FpCd018839
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 22:15:51 -0700
Received: from localhost (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 18 Sep 2017 22:15:50 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 19 Sep 2017 13:14:49 +0800
Message-ID: <1505798089-20319-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.198]
Subject: [meta-gplv2][PATCH] gnupg: specify tar path explicitly
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
X-List-Received-Date: Tue, 19 Sep 2017 05:15:53 -0000
Content-Type: text/plain

From: Wenlin Kang <wenlin.kang@windriver.com>

The gpg-zip script contains wrong tar binary path:
"TAR=/buildarea/poky/build/tmp/hosttools/tar"

Specify the correct tar path when configure.
Also remove the code for ustar format detection in configure because it
is not applicable for cross-compile environment.

Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../gnupg/gnupg-1.4.7/fix-ustar-check-issue.patch  | 38 ++++++++++++++++++++++
 recipes-support/gnupg/gnupg_1.4.7.bb               | 10 +++---
 2 files changed, 44 insertions(+), 4 deletions(-)
 create mode 100644 recipes-support/gnupg/gnupg-1.4.7/fix-ustar-check-issue.patch

diff --git a/recipes-support/gnupg/gnupg-1.4.7/fix-ustar-check-issue.patch b/recipes-support/gnupg/gnupg-1.4.7/fix-ustar-check-issue.patch
new file mode 100644
index 0000000..eb4cc9f
--- /dev/null
+++ b/recipes-support/gnupg/gnupg-1.4.7/fix-ustar-check-issue.patch
@@ -0,0 +1,38 @@
+Remove the code for ustar format detection because it is not applicable
+for cross-complie platform.
+
+Upstream Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ m4/tar-ustar.m4 | 13 +++++++++----
+ 1 file changed, 9 insertions(+), 4 deletions(-)
+
+diff --git a/m4/tar-ustar.m4 b/m4/tar-ustar.m4
+index 4ae9e63..f6e57c2 100644
+--- a/m4/tar-ustar.m4
++++ b/m4/tar-ustar.m4
+@@ -26,10 +26,15 @@ AC_DEFUN([GNUPG_CHECK_USTAR],
+ 
+      if test x$_mytar != x ; then
+         AC_MSG_CHECKING([whether $_mytar speaks USTAR])
+-        echo hithere > conftest.txt
+-        $_mytar -cf - conftest.txt | (dd skip=257 bs=1 count=5 2>/dev/null || cat) | grep ustar > /dev/null
+-        _tar_bad=$?
+-        rm conftest.txt
++
++        # Here, we ignore the check code, because it isn't indeed applicable for
++        # cross-compile platform.
++        # Now our tar support ustar, so we say directly yes, but once the tar is changed,
++        # you should check whether it suppport ustar, and please reference the follow command:
++        # echo hithere > conftest.txt
++        # tar -cf - conftest.txt | (dd skip=257 bs=1 count=5 2>/dev/null || cat) | grep ustar > /dev/null
++
++        _tar_bad=0
+ 
+ 	if test x$_tar_bad = x0 ; then
+ 	   AC_MSG_RESULT([yes])
+-- 
+1.9.1
+
diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index 6ccffd5..85636ab 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -18,6 +18,7 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
            file://CVE-2013-4351.patch \
            file://CVE-2013-4576.patch \
            file://CVE-2013-4242.patch \
+           file://fix-ustar-check-issue.patch \
 	  "
 
 SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
@@ -74,12 +75,13 @@ inherit autotools gettext texinfo
 #   --disable-regex         do not handle regular expressions in trust sigs
 
 EXTRA_OECONF = "--disable-ldap \
-		--with-zlib=${STAGING_LIBDIR}/.. \
-		--with-bzip2=${STAGING_LIBDIR}/.. \
-		--disable-selinux-support \
+                --with-zlib=${STAGING_LIBDIR}/.. \
+                --with-bzip2=${STAGING_LIBDIR}/.. \
+                --disable-selinux-support \
                 --with-readline=${STAGING_LIBDIR}/.. \
                 ac_cv_sys_symbol_underscore=no \
-		"
+                ac_cv_path_TAR=${base_bindir}/tar \
+               "
 
 # Force gcc's traditional handling of inline to avoid issues with gcc 5
 CFLAGS += "-fgnu89-inline"
-- 
2.7.4


