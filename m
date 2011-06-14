Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F41A84C800C1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 15:49:08 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5EKn290013373;
	Tue, 14 Jun 2011 13:49:06 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: dvhart@linux.intel.com, tom.zanussi@intel.com, saul.wold@intel.com
Date: Tue, 14 Jun 2011 16:47:21 -0400
Message-Id: <1308084441-6399-3-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
References: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH] meta-yocto/linux-yocto: update to match the renamed linux-yocto recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Jun 2011 20:49:09 -0000

The linux-yocto recipes have been renamed to include explicit
version numbers. The meta-yocto bbappends must be updated to
follow the new naming convention.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-stable_git.bbappend          |   12 ------------
 .../linux/linux-yocto_2.6.34.bbappend              |   12 ++++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   15 +++++++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   15 ---------------
 4 files changed, 27 insertions(+), 27 deletions(-)
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
deleted file mode 100644
index ea0287d..0000000
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ /dev/null
@@ -1,12 +0,0 @@
-KMACHINE_atom-pc  = "atom-pc"
-KMACHINE_routerstationpro = "routerstationpro"
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "beagleboard"
-
-SRCREV_machine_atom-pc = "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_machine_routerstationpro = "49745cd45c92a89e70c6e2334caa80818c134562"
-SRCREV_machine_mpc8315e-rdb = "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
-SRCREV_machine_beagleboard = "ef7f944e773950d4016b7643f9ecf052bbe250cd"
-
-COMPATIBLE_MACHINE += "(atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
-
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
new file mode 100644
index 0000000..ea0287d
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
@@ -0,0 +1,12 @@
+KMACHINE_atom-pc  = "atom-pc"
+KMACHINE_routerstationpro = "routerstationpro"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "beagleboard"
+
+SRCREV_machine_atom-pc = "72ca49ab08b8eb475cec82a10049503602325791"
+SRCREV_machine_routerstationpro = "49745cd45c92a89e70c6e2334caa80818c134562"
+SRCREV_machine_mpc8315e-rdb = "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
+SRCREV_machine_beagleboard = "ef7f944e773950d4016b7643f9ecf052bbe250cd"
+
+COMPATIBLE_MACHINE += "(atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
+
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
new file mode 100644
index 0000000..84e31e9
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -0,0 +1,15 @@
+KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
+KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
+KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "yocto/standard/beagleboard"
+
+SRCREV_machine_emenlow = "7dd88fc03db50b131e4a96e6af8036a836ccc300"
+SRCREV_machine_atom-pc = "1ccece1d42a598fef0f5f9666c9c81315302c129"
+SRCREV_machine_routerstationpro = "8b5f5129292bb218435ac9ffa1fb9943bdc7d456"
+SRCREV_machine_mpc8315e-rdb = "dcf359635969abdbdd15f60b702ab17ed6174892"
+SRCREV_machine_beagleboard = "9cb5c3fb1634e541cacceeb8c8cabe88afa5b080"
+
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
deleted file mode 100644
index 84e31e9..0000000
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
+++ /dev/null
@@ -1,15 +0,0 @@
-KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
-KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
-KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "yocto/standard/beagleboard"
-
-SRCREV_machine_emenlow = "7dd88fc03db50b131e4a96e6af8036a836ccc300"
-SRCREV_machine_atom-pc = "1ccece1d42a598fef0f5f9666c9c81315302c129"
-SRCREV_machine_routerstationpro = "8b5f5129292bb218435ac9ffa1fb9943bdc7d456"
-SRCREV_machine_mpc8315e-rdb = "dcf359635969abdbdd15f60b702ab17ed6174892"
-SRCREV_machine_beagleboard = "9cb5c3fb1634e541cacceeb8c8cabe88afa5b080"
-
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.0.4


