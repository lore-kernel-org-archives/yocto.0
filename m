Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD19FE0055C; Thu,  5 Jan 2017 00:23:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D3BE00443
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v058NVMI006600
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:31 -0800
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:31 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:23 -0800
Message-ID: <52b51c5e7d7d90281a6d6ffbec5b171aed0d004b.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1483601828.git.wenzong.fan@windriver.com>
References: <cover.1483601828.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 6/9] policycoreutils: uprev to 2.6 (20161014)
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* rebase patch:
  - policycoreutils-process-ValueError-for-sepolicy-seobject.patch

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...-process-ValueError-for-sepolicy-seobject.patch | 34 ++++++++++++----------
 ...licycoreutils_2.5.bb => policycoreutils_2.6.bb} |  7 ++---
 2 files changed, 21 insertions(+), 20 deletions(-)
 rename recipes-security/selinux/{policycoreutils_2.5.bb => policycoreutils_2.6.bb} (68%)

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch b/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
index e52e1d3..1929aa5 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
@@ -11,32 +11,31 @@ Uptream-Status: pending
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- semanage/semanage |    9 +++++++--
- 1 file changed, 7 insertions(+), 2 deletions(-)
+ semanage/semanage | 11 +++++++----
+ 1 file changed, 7 insertions(+), 4 deletions(-)
 
-Index: policycoreutils-2.5/semanage/semanage
-===================================================================
---- policycoreutils-2.5.orig/semanage/semanage	2016-02-25 13:38:39.947975015 -0500
-+++ policycoreutils-2.5/semanage/semanage	2016-02-25 13:40:50.627974607 -0500
-@@ -24,9 +24,15 @@
- #
+diff --git a/semanage/semanage b/semanage/semanage
+index 19a6c51..c0083c6 100644
+--- a/semanage/semanage
++++ b/semanage/semanage
+@@ -25,8 +25,14 @@
  
+ import traceback
  import argparse
 -import seobject
  import sys
- import gettext
 +try:
-+        import seobject
-+        import sepolicy
++    import seobject
++    import sepolicy
 +except ValueError, e:
-+        print "Error: %s\n" % e
-+        sys.exit(1)
++    print "Error: %s\n" % e
++    sys.exit(1)
 +
  PROGNAME = "policycoreutils"
  try:
-     kwargs = {}
-@@ -66,9 +72,6 @@
- usage_boolean = "semanage boolean [-h] [-n] [-N] [-s STORE] ["
+     import gettext
+@@ -67,9 +73,6 @@ usage_interface_dict = {' --add': ('-t TYPE', '-r RANGE', 'interface'), ' --modi
+ usage_boolean = "semanage boolean [-h] [-n] [-N] [-S STORE] ["
  usage_boolean_dict = {' --modify': ('(', '--on', '|', '--off', ')', 'boolean'), ' --list': ('-C',), '  --extract': ('',), ' --deleteall': ('',)}
  
 -import sepolicy
@@ -45,3 +44,6 @@ Index: policycoreutils-2.5/semanage/semanage
  class CheckRole(argparse.Action):
  
      def __call__(self, parser, namespace, value, option_string=None):
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/policycoreutils_2.5.bb b/recipes-security/selinux/policycoreutils_2.6.bb
similarity index 68%
rename from recipes-security/selinux/policycoreutils_2.5.bb
rename to recipes-security/selinux/policycoreutils_2.6.bb
index 37d3870..6a625b3 100644
--- a/recipes-security/selinux/policycoreutils_2.5.bb
+++ b/recipes-security/selinux/policycoreutils_2.6.bb
@@ -1,10 +1,10 @@
-include selinux_20160223.inc
+include selinux_20161014.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
-SRC_URI[md5sum] = "9ad9331b2133262fb3f774359a7f4761"
-SRC_URI[sha256sum] = "329382cfe9fa977678abf541dcd8fe3847cf0c83b24654c8f7322343907078a1"
+SRC_URI[md5sum] = "0358f0136e2dd9a8c9e99f181aaab1b2"
+SRC_URI[sha256sum] = "68891b376f5048edc53c6ccb2fca44da3dc7f4563f4b6894e201d70c04a05a29"
 
 SRC_URI += "\
 	file://policycoreutils-fix-sepolicy-install-path.patch \
@@ -14,5 +14,4 @@ SRC_URI += "\
 	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
 	file://0001-mcstrans-fix-the-init-script.patch \
 	file://enable-mcstrans.patch \
-	file://policycoreutils-fts_flags-FTS_NOCHDIR.patch \
 	"
-- 
2.7.4


