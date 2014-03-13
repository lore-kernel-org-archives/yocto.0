Return-Path: <Jackie.Huang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 329B3E00A57
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 23:25:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2D6PeDF003172
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 23:25:40 -0700 (PDT)
Received: from pek-kkang-d2.wrs.com (128.224.163.135) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 12 Mar 2014 23:25:40 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Mar 2014 14:26:19 +0800
Message-ID: <1394691979-12021-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] policycoreutils: drop the patch for old refpolicy
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
X-List-Received-Date: Thu, 13 Mar 2014 06:25:49 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The patch policycoreutils-revert-run_init-open_init_pty.patch
is only for refpolicy version older than 2.20120725, now the
refpolicy is updated to 2.20130424 so drop the patch or it
will make run_init fail to start some init scripts.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 ...cycoreutils-revert-run_init-open_init_pty.patch |   40 --------------------
 recipes-security/selinux/policycoreutils_2.2.5.bb  |    1 -
 recipes-security/selinux/policycoreutils_git.bb    |    1 -
 3 files changed, 42 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-revert-run_init-open_init_pty.patch

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-revert-run_init-open_init_pty.patch b/recipes-security/selinux/policycoreutils/policycoreutils-revert-run_init-open_init_pty.patch
deleted file mode 100644
index aedae21..0000000
--- a/recipes-security/selinux/policycoreutils/policycoreutils-revert-run_init-open_init_pty.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From 0b2d9e47c759bf2d0842f20d6af5c4e678e9c34c Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Tue, 4 Jun 2013 17:04:44 +0800
-Subject: [PATCH] policycoreutils: Revert "run_init: If open_init_pty ..."
-
-This reverts commit d46e88abb6e1f7b0228c30c98ba4fb739e63cda3.
-
-In d46e88ab, run_init will not use open_init_pty as Redhat did. Our
-old refpolicy still does no work well with this, and make init scripts
-fail to start so revert it.
-
-This patch should be dropped while refpolicy is upreved to 2.20120725+.
-
-Upstream-Status: Inappropriate [for old refpolicy]
-
----
- run_init/run_init.c | 7 -------
- 1 file changed, 7 deletions(-)
-
-diff --git a/run_init/run_init.c b/run_init/run_init.c
-index 92034be..9db766c 100644
---- a/run_init/run_init.c
-+++ b/run_init/run_init.c
-@@ -406,13 +406,6 @@ int main(int argc, char *argv[])
- 			new_context);
- 		exit(-1);
- 	}
--	if (! access("/usr/sbin/open_init_pty", X_OK)) {
--		if (execvp(argv[1], argv + 1)) {
--			perror("execvp");
--			exit(-1);
--		}
--		return 0;
--	}
- 	/*
- 	 * Do not execvp the command directly from run_init; since it would run
- 	 * under with a pty under sysadm_devpts_t. Instead, we call open_init_tty,
--- 
-1.8.1.2
-
diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-security/selinux/policycoreutils_2.2.5.bb
index d851f74..64cb495 100644
--- a/recipes-security/selinux/policycoreutils_2.2.5.bb
+++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
@@ -9,7 +9,6 @@ SRC_URI[md5sum] = "a2963d7024c5c4ce89f2459d48f91ec8"
 SRC_URI[sha256sum] = "bbf850a8c3c2f371f439d6525663eecdd3a737acd594d2f27f8d8f3a07830cc4"
 
 SRC_URI += "\
-	file://policycoreutils-revert-run_init-open_init_pty.patch \
 	file://policycoreutils-fix-sepolicy-install-path.patch \
 	file://policycoreutils-make-O_CLOEXEC-optional.patch \
 	file://policycoreutils-loadpolicy-symlink.patch \
diff --git a/recipes-security/selinux/policycoreutils_git.bb b/recipes-security/selinux/policycoreutils_git.bb
index 9a6425b..92f6c26 100644
--- a/recipes-security/selinux/policycoreutils_git.bb
+++ b/recipes-security/selinux/policycoreutils_git.bb
@@ -7,7 +7,6 @@ include ${BPN}.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 SRC_URI += "\
-	file://policycoreutils-revert-run_init-open_init_pty.patch \
 	file://policycoreutils-fix-sepolicy-install-path.patch \
 	file://policycoreutils-make-O_CLOEXEC-optional.patch \
 	"
-- 
1.7.9.5


