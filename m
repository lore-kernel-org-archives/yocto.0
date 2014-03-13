Return-Path: <joe.slater@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4DAE00AE9
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 14:08:24 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2DL8KLO016424
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 14:08:20 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Thu, 13 Mar 2014 14:08:20 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>, <rongqing.li@windriver.com>
Date: Thu, 13 Mar 2014 14:08:19 -0700
Message-ID: <1394744899-23794-2-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1394744899-23794-1-git-send-email-jslater@windriver.com>
References: <1394744899-23794-1-git-send-email-jslater@windriver.com>
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux PATCH 1/1] policycoreutils: semanage
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
X-List-Received-Date: Thu, 13 Mar 2014 21:08:25 -0000
Content-Type: text/plain

When modifying an selinux login record, seobject.py,
may try to log a value, self.sename,  which has been preset to "None"
and this will fail.  So, we set it to something useful.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 .../policycoreutils-semanage-edit-user.patch       |   21 ++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.2.5.bb  |    3 +-
 2 files changed, 23 insertions(+), 1 deletions(-)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch b/recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch
new file mode 100644
index 0000000..f5aaa74
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch
@@ -0,0 +1,21 @@
+policycoreutils: semanage
+
+When modifying selinux login records, self.sename might not be
+needed, but it IS passed to a log function, so it must be set
+to something or the log attempt will fail.
+
+Upstream-Status: Pending
+
+Signed-off-by: Joe Slater <jslater@windriver.com>
+
+
+--- a/semanage/seobject.py
++++ b/semanage/seobject.py
+@@ -576,6 +576,7 @@ class loginRecords(semanageRecords):
+ 
+ 		if sename != "":
+ 			semanage_seuser_set_sename(self.sh, u, sename)
++			self.sename = sename
+ 		else:
+ 			self.sename = self.oldsename
+ 			
diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-security/selinux/policycoreutils_2.2.5.bb
index d851f74..bd3a5dd 100644
--- a/recipes-security/selinux/policycoreutils_2.2.5.bb
+++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 
 include selinux_20131030.inc
 include ${BPN}.inc
@@ -13,4 +13,5 @@ SRC_URI += "\
 	file://policycoreutils-fix-sepolicy-install-path.patch \
 	file://policycoreutils-make-O_CLOEXEC-optional.patch \
 	file://policycoreutils-loadpolicy-symlink.patch \
+	file://policycoreutils-semanage-edit-user.patch \
 	"
-- 
1.7.3.4


