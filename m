Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F067E00C1B; Mon,  1 Apr 2019 17:54:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31E5CE00BC8
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 17:54:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x320sEUD025475
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 1 Apr 2019 17:54:14 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Mon, 1 Apr 2019 17:54:14 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Tue, 2 Apr 2019 08:54:11 +0800
Message-ID: <1554166451-14076-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH] selinux: remove git version
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
X-List-Received-Date: Tue, 02 Apr 2019 00:54:17 -0000
Content-Type: text/plain

The git version of libselinux libsemanage libsepol checkpolicy and
policycoreutils are far behind the master branch and now they can not
build due to the do_patch error. The current stable 2.8 version works
well so we can remove them.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/checkpolicy_git.bb     |  6 ------
 recipes-security/selinux/libselinux_git.bb      | 14 --------------
 recipes-security/selinux/libsemanage_git.bb     | 17 -----------------
 recipes-security/selinux/libsepol_git.bb        |  8 --------
 recipes-security/selinux/policycoreutils_git.bb |  6 ------
 recipes-security/selinux/selinux_git.inc        | 11 -----------
 6 files changed, 62 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_git.bb
 delete mode 100644 recipes-security/selinux/libselinux_git.bb
 delete mode 100644 recipes-security/selinux/libsemanage_git.bb
 delete mode 100644 recipes-security/selinux/libsepol_git.bb
 delete mode 100644 recipes-security/selinux/policycoreutils_git.bb
 delete mode 100644 recipes-security/selinux/selinux_git.inc

diff --git a/recipes-security/selinux/checkpolicy_git.bb b/recipes-security/selinux/checkpolicy_git.bb
deleted file mode 100644
index 6d1d23a..0000000
--- a/recipes-security/selinux/checkpolicy_git.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-PV = "2.7+git${SRCPV}"
-
-include selinux_git.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
diff --git a/recipes-security/selinux/libselinux_git.bb b/recipes-security/selinux/libselinux_git.bb
deleted file mode 100644
index a43b184..0000000
--- a/recipes-security/selinux/libselinux_git.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-PV = "2.7+git${SRCPV}"
-
-include selinux_git.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
-
-SRC_URI += "\
-	file://libselinux-drop-Wno-unused-but-set-variable.patch \
-	file://libselinux-make-O_CLOEXEC-optional.patch \
-	file://libselinux-make-SOCK_CLOEXEC-optional.patch \
-	file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-	"
diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-security/selinux/libsemanage_git.bb
deleted file mode 100644
index 2e1fdc8..0000000
--- a/recipes-security/selinux/libsemanage_git.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-PV = "2.7+git${SRCPV}"
-
-include selinux_git.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI += "\
-	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-	file://libsemanage-fix-path-nologin.patch \
-	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
-	file://libsemanage-allow-to-disable-audit-support.patch \
-	file://libsemanage-disable-expand-check-on-policy-load.patch \
-	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-	"
-FILES_${PN} += "/usr/libexec"
diff --git a/recipes-security/selinux/libsepol_git.bb b/recipes-security/selinux/libsepol_git.bb
deleted file mode 100644
index f9b8010..0000000
--- a/recipes-security/selinux/libsepol_git.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-PV = "2.7+git${SRCPV}"
-
-include selinux_git.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
diff --git a/recipes-security/selinux/policycoreutils_git.bb b/recipes-security/selinux/policycoreutils_git.bb
deleted file mode 100644
index 6d1d23a..0000000
--- a/recipes-security/selinux/policycoreutils_git.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-PV = "2.7+git${SRCPV}"
-
-include selinux_git.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
diff --git a/recipes-security/selinux/selinux_git.inc b/recipes-security/selinux/selinux_git.inc
deleted file mode 100644
index 9887bd1..0000000
--- a/recipes-security/selinux/selinux_git.inc
+++ /dev/null
@@ -1,11 +0,0 @@
-SRCREV = "1bac758bf6cf884c112b80545d5fc5b668fc7d71"
-
-SRC_URI = "git://github.com/SELinuxProject/selinux.git;protocol=http"
-
-include selinux_common.inc
-
-# ${S} is set in selinux_common above, but we need to change it here since the
-# top level directory is named differently
-S = "${WORKDIR}/git/${BPN}"
-
-DEFAULT_PREFERENCE = "-1"
-- 
2.7.4


