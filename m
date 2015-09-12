Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C462E00D32; Fri, 11 Sep 2015 22:18:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96212E00AD2
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:39 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBR-0000yR-6m; Sat, 12 Sep 2015 05:17:06 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:23 -0700
Message-Id: <1442035106-9671-6-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1442035106-9671-1-git-send-email-flihp@twobit.us>
References: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 5/8] libsemanage: Bump version to 2.4.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:45 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 ...emanage-disable-expand-check-on-policy-load.patch | 20 +++++++++-----------
 recipes-security/selinux/libsemanage_2.3.bb          | 17 -----------------
 recipes-security/selinux/libsemanage_2.4.bb          | 18 ++++++++++++++++++
 3 files changed, 27 insertions(+), 28 deletions(-)
 delete mode 100644 recipes-security/selinux/libsemanage_2.3.bb
 create mode 100644 recipes-security/selinux/libsemanage_2.4.bb

diff --git a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
index 653cfbb..d755464 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -16,17 +16,15 @@ Signed-off-by: Joe MacDonald <joe@deserted.net>
  src/semanage.conf |    4 ++++
  1 file changed, 4 insertions(+)
 
-diff --git a/src/semanage.conf b/src/semanage.conf
-index 24e1999..42050a7 100644
---- a/src/semanage.conf
-+++ b/src/semanage.conf
-@@ -36,3 +36,6 @@ module-store = direct
- # version is necessary.
- #policy-version = 19
-
+Index: libsemanage-2.4/src/semanage.conf
+===================================================================
+--- libsemanage-2.4.orig/src/semanage.conf
++++ libsemanage-2.4/src/semanage.conf
+@@ -39,3 +39,7 @@ module-store = direct
+ # By default, semanage will generate policies for the SELinux target.
+ # To build policies for Xen, uncomment the following line.
+ #target-platform = xen
++
 +# Don't check the entire policy hierarchy when inserting / expanding a policy
 +# module.  This results in a significant speed-up in policy loading.
 +expand-check=0
--- 
-1.7.10.4
-
diff --git a/recipes-security/selinux/libsemanage_2.3.bb b/recipes-security/selinux/libsemanage_2.3.bb
deleted file mode 100644
index a238e08..0000000
--- a/recipes-security/selinux/libsemanage_2.3.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-include selinux_20140506.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "e564e2b92d18db35707060da29cddab9"
-SRC_URI[sha256sum] = "03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b"
-
-SRC_URI += "\
-	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-	file://libsemanage-fix-path-len-limit.patch \
-	file://libsemanage-fix-path-nologin.patch \
-	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
-	file://libsemanage-allow-to-disable-audit-support.patch \
-	file://libsemanage-disable-expand-check-on-policy-load.patch \
-	"
diff --git a/recipes-security/selinux/libsemanage_2.4.bb b/recipes-security/selinux/libsemanage_2.4.bb
new file mode 100644
index 0000000..2e0dfd5
--- /dev/null
+++ b/recipes-security/selinux/libsemanage_2.4.bb
@@ -0,0 +1,18 @@
+include selinux_20150202.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "cd551eb1cc5d20652660bda037972f0d"
+SRC_URI[sha256sum] = "1a4cace4ef16786531ec075c0e7b2f961e2fee5dc86c5f983a689058899a6484"
+
+SRC_URI += "\
+	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
+	file://libsemanage-fix-path-len-limit.patch \
+	file://libsemanage-fix-path-nologin.patch \
+	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
+	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
+	file://libsemanage-allow-to-disable-audit-support.patch \
+	file://libsemanage-disable-expand-check-on-policy-load.patch \
+	"
+FILES_${PN} += "/usr/libexec"
-- 
2.1.4


