Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFC94E0098E
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:14 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3N7gEdZ007654
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:14 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Apr 2014 00:42:13 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Apr 2014 03:42:07 -0400
Message-ID: <66a44572333fa07f07d140b8585d742e4498b4c5.1398238471.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1398238471.git.wenzong.fan@windriver.com>
References: <cover.1398238471.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 4/4] policycoreutils: fix TypeError for seobject.py
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
X-List-Received-Date: Wed, 23 Apr 2014 07:42:15 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Fix python error about:

File "/usr/lib64/python2.7/site-packages/seobject.py", line 109, in log
  message += " sename=" + sename
TypeError: cannot concatenate 'str' and 'NoneType' objects

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...cycoreutils-fix-TypeError-for-seobject.py.patch |   32 ++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.2.5.bb  |    1 +
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
new file mode 100644
index 0000000..dd6ca6d
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
@@ -0,0 +1,32 @@
+From a66c50c0e8cd3799fc2819835b872ab62419f684 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 1 Apr 2014 02:53:36 -0400
+Subject: [PATCH] policycoreutils: fix TypeError for seobject.py
+
+File "/usr/lib64/python2.7/site-packages/seobject.py", line 109, in log
+  message += " sename=" + sename
+TypeError: cannot concatenate 'str' and 'NoneType' objects
+
+Uptream-Status: pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ semanage/seobject.py |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/semanage/seobject.py b/semanage/seobject.py
+index f8d2243..66653e6 100644
+--- a/semanage/seobject.py
++++ b/semanage/seobject.py
+@@ -105,7 +105,7 @@ except:
+ 
+ 		def log(self, msg, name = "", sename = "", serole = "", serange = "", oldsename = "", oldserole = "", oldserange = ""):
+ 			message = " %s name=%s" % (msg, name)
+-			if sename != "":
++			if sename != "" and sename != None:
+ 				message += " sename=" + sename
+ 			if oldsename != "":
+ 				message += " oldsename=" + oldsename
+-- 
+1.7.9.5
+
diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-security/selinux/policycoreutils_2.2.5.bb
index 7c32064..560cee6 100644
--- a/recipes-security/selinux/policycoreutils_2.2.5.bb
+++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
@@ -14,4 +14,5 @@ SRC_URI += "\
 	file://policycoreutils-loadpolicy-symlink.patch \
 	file://policycoreutils-semanage-edit-user.patch \
 	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
+	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
 	"
-- 
1.7.9.5


