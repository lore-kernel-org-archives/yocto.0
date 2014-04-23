Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76D0DE00969
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3N7gDex013248
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:13 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Apr 2014 00:42:12 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Apr 2014 03:42:06 -0400
Message-ID: <6f0888e3670cc9386a738d56601cc3c1035af5a3.1398238471.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1398238471.git.wenzong.fan@windriver.com>
References: <cover.1398238471.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 3/4] semanage: process ValueError for sepolicy, seobject
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
X-List-Received-Date: Wed, 23 Apr 2014 07:42:13 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The sepolicy, seobject modules raise many unprocessed ValueError, just
process them in semanage to make the script proivdes error message but
not error trace.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...-process-ValueError-for-sepolicy-seobject.patch |   48 ++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.2.5.bb  |    1 +
 2 files changed, 49 insertions(+)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch b/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
new file mode 100644
index 0000000..933f2b2
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
@@ -0,0 +1,48 @@
+From b8e07bd0643b581ac33c96a1f94ae17c8df80ffd Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Sun, 30 Mar 2014 22:25:59 -0400
+Subject: [PATCH] semanage: process ValueError for sepolicy, seobject
+
+The sepolicy, seobject modules raise many unprocessed ValueError, just
+process them in semanage to make the script proivdes error message but
+not error trace.
+
+Uptream-Status: pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ semanage/semanage |    9 +++++++--
+ 1 file changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/semanage/semanage b/semanage/semanage
+index 36b41cd..a36a3f9 100644
+--- a/semanage/semanage
++++ b/semanage/semanage
+@@ -24,9 +24,15 @@
+ #
+ 
+ import argparse
+-import seobject
+ import sys
+ import gettext
++try:
++        import seobject
++        import sepolicy
++except ValueError, e:
++        print "Error: %s\n" % e
++        sys.exit(1)
++
+ PROGNAME="policycoreutils"
+ try:
+        gettext.install(PROGNAME,
+@@ -59,7 +65,6 @@ usage_interface_dict = {' --add':('-t TYPE','-r RANGE','interface'),' --modify':
+ usage_boolean = "semanage boolean [-h] [-n] [-N] [-s STORE] ["
+ usage_boolean_dict = {' --modify':('(','--on','|','--off',')','boolean'), ' --list':('-C',), '  --extract':('',), ' --deleteall':('',)}
+ 
+-import sepolicy
+ class CheckRole(argparse.Action):
+     def __call__(self, parser, namespace, value, option_string=None):
+         newval = getattr(namespace, self.dest)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-security/selinux/policycoreutils_2.2.5.bb
index c278aff..7c32064 100644
--- a/recipes-security/selinux/policycoreutils_2.2.5.bb
+++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
@@ -13,4 +13,5 @@ SRC_URI += "\
 	file://policycoreutils-make-O_CLOEXEC-optional.patch \
 	file://policycoreutils-loadpolicy-symlink.patch \
 	file://policycoreutils-semanage-edit-user.patch \
+	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
 	"
-- 
1.7.9.5


