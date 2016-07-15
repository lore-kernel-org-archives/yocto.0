Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A89EE00E48; Fri, 15 Jul 2016 00:21:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A8D3E00D8B
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:21:33 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jul 2016 00:21:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,367,1464678000"; d="scan'208";a="139623758"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2016 00:21:24 -0700
Received: from avalluri-GigaByte.fi.intel.com (avalluri-gigabyte.fi.intel.com
	[10.237.72.170]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 819256A4080
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:21:15 -0700 (PDT)
From: Amarnath Valluri <amarnath.valluri@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Jul 2016 10:21:17 +0300
Message-Id: <1468567278-7137-1-git-send-email-amarnath.valluri@intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-swupd][PATCH 1/2] swupd-client, swupd-server: Patch swupd to treate /home/* as non-state
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
X-List-Received-Date: Fri, 15 Jul 2016 07:21:36 -0000

This allows bundles to deploy content specific to user

Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
---
 .../0001-Do-not-consider-home-as-user-state.patch  | 29 ++++++++++++++++++++++
 .../0001-Do-not-consider-home-as-user-state.patch  | 29 ++++++++++++++++++++++
 recipes-core/swupd-client/swupd-client_2.87.bb     |  1 +
 recipes-core/swupd-client/swupd-client_git.bb      |  1 +
 .../0001-Don-t-treate-home-as-user-state.patch     | 29 ++++++++++++++++++++++
 .../0001-Don-t-treate-home-as-user-state.patch     | 29 ++++++++++++++++++++++
 recipes-core/swupd-server/swupd-server_2.53.bb     |  1 +
 recipes-core/swupd-server/swupd-server_git.bb      |  1 +
 8 files changed, 120 insertions(+)
 create mode 100644 recipes-core/swupd-client/swupd-client-2.87/0001-Do-not-consider-home-as-user-state.patch
 create mode 100644 recipes-core/swupd-client/swupd-client/0001-Do-not-consider-home-as-user-state.patch
 create mode 100644 recipes-core/swupd-server/swupd-server-2.53/0001-Don-t-treate-home-as-user-state.patch
 create mode 100644 recipes-core/swupd-server/swupd-server/0001-Don-t-treate-home-as-user-state.patch

diff --git a/recipes-core/swupd-client/swupd-client-2.87/0001-Do-not-consider-home-as-user-state.patch b/recipes-core/swupd-client/swupd-client-2.87/0001-Do-not-consider-home-as-user-state.patch
new file mode 100644
index 0000000..be847af
--- /dev/null
+++ b/recipes-core/swupd-client/swupd-client-2.87/0001-Do-not-consider-home-as-user-state.patch
@@ -0,0 +1,29 @@
+From 849d54da5d9184eaaf706df9aafea28e6f45fd64 Mon Sep 17 00:00:00 2001
+From: Amarnath Valluri <amarnath.valluri@intel.com>
+Date: Wed, 13 Jul 2016 14:37:26 +0300
+Subject: [PATCH] Do not consider /home/* as user state
+
+This allows to deploy user home folder as part of a bundle.
+
+Upstream-Status: Pending
+
+Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
+---
+ src/heuristics.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/src/heuristics.c b/src/heuristics.c
+index e7c0632..28b2bb2 100644
+--- a/src/heuristics.c
++++ b/src/heuristics.c
+@@ -64,7 +64,6 @@ bool is_state(char *filename)
+ 
+ 	if ((strncmp(filename, "/data", 5) == 0) ||
+ 	    (strncmp(filename, "/dev/", 5) == 0) ||
+-	    (strncmp(filename, "/home/", 6) == 0) ||
+ 	    (strncmp(filename, "/lost+found", 11) == 0) ||
+ 	    (strncmp(filename, "/proc/", 6) == 0) ||
+ 	    (strncmp(filename, "/root/", 6) == 0) ||
+-- 
+2.5.0
+
diff --git a/recipes-core/swupd-client/swupd-client/0001-Do-not-consider-home-as-user-state.patch b/recipes-core/swupd-client/swupd-client/0001-Do-not-consider-home-as-user-state.patch
new file mode 100644
index 0000000..be847af
--- /dev/null
+++ b/recipes-core/swupd-client/swupd-client/0001-Do-not-consider-home-as-user-state.patch
@@ -0,0 +1,29 @@
+From 849d54da5d9184eaaf706df9aafea28e6f45fd64 Mon Sep 17 00:00:00 2001
+From: Amarnath Valluri <amarnath.valluri@intel.com>
+Date: Wed, 13 Jul 2016 14:37:26 +0300
+Subject: [PATCH] Do not consider /home/* as user state
+
+This allows to deploy user home folder as part of a bundle.
+
+Upstream-Status: Pending
+
+Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
+---
+ src/heuristics.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/src/heuristics.c b/src/heuristics.c
+index e7c0632..28b2bb2 100644
+--- a/src/heuristics.c
++++ b/src/heuristics.c
+@@ -64,7 +64,6 @@ bool is_state(char *filename)
+ 
+ 	if ((strncmp(filename, "/data", 5) == 0) ||
+ 	    (strncmp(filename, "/dev/", 5) == 0) ||
+-	    (strncmp(filename, "/home/", 6) == 0) ||
+ 	    (strncmp(filename, "/lost+found", 11) == 0) ||
+ 	    (strncmp(filename, "/proc/", 6) == 0) ||
+ 	    (strncmp(filename, "/root/", 6) == 0) ||
+-- 
+2.5.0
+
diff --git a/recipes-core/swupd-client/swupd-client_2.87.bb b/recipes-core/swupd-client/swupd-client_2.87.bb
index 96e7a10..8a005ff 100644
--- a/recipes-core/swupd-client/swupd-client_2.87.bb
+++ b/recipes-core/swupd-client/swupd-client_2.87.bb
@@ -18,6 +18,7 @@ SRC_URI = "\
     file://0001-manifest.c-Always-initialize-preserver-pointer-of-fi.patch \
     file://0001-Add-configure-option-to-re-enable-updating-of-config.patch \
     file://0001-staging.c-Protect-tar-command-against-special-charac.patch \
+    file://0001-Do-not-consider-home-as-user-state.patch \
 "
 
 SRC_URI[md5sum] = "5d272c62edb8a9c576005ac5e1182ea3"
diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-core/swupd-client/swupd-client_git.bb
index 7e2bdd9..6ab289a 100644
--- a/recipes-core/swupd-client/swupd-client_git.bb
+++ b/recipes-core/swupd-client/swupd-client_git.bb
@@ -10,6 +10,7 @@ SRC_URI = "\
     git://github.com/clearlinux/swupd-client.git;protocol=https \
     file://Change-systemctl-path-to-OE-systemctl-path.patch \
     file://0001-Add-configure-option-to-re-enable-updating-of-config.patch \
+    file://0001-Do-not-consider-home-as-user-state.patch \
 "
 SRCREV = "f4000c5b22be47ec1af2f8748fd71a36148b5dc4"
 
diff --git a/recipes-core/swupd-server/swupd-server-2.53/0001-Don-t-treate-home-as-user-state.patch b/recipes-core/swupd-server/swupd-server-2.53/0001-Don-t-treate-home-as-user-state.patch
new file mode 100644
index 0000000..99f926d
--- /dev/null
+++ b/recipes-core/swupd-server/swupd-server-2.53/0001-Don-t-treate-home-as-user-state.patch
@@ -0,0 +1,29 @@
+From 47e0f11ec452b3d8134e3c4047e31d8c5fff3801 Mon Sep 17 00:00:00 2001
+From: Amarnath Valluri <amarnath.valluri@intel.com>
+Date: Thu, 14 Jul 2016 12:33:42 +0300
+Subject: [PATCH] Don't treate /home/* as user state
+
+This allows to deploy user home folder as part of a bundle
+
+Ustream-Status: Pending
+
+Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
+---
+ src/heuristics.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/src/heuristics.c b/src/heuristics.c
+index 94eee53..f133a82 100644
+--- a/src/heuristics.c
++++ b/src/heuristics.c
+@@ -59,7 +59,6 @@ static void runtime_state_heuristics(struct file *file)
+ 	/* the contents of these directory are state, ideally this never
+ 	 * triggers if our package builds are clean */
+ 	if ((strncmp(file->filename, "/dev/", 5) == 0) ||
+-	    (strncmp(file->filename, "/home/", 6) == 0) ||
+ 	    (strncmp(file->filename, "/proc/", 6) == 0) ||
+ 	    (strncmp(file->filename, "/root/", 6) == 0) ||
+ 	    (strncmp(file->filename, "/run/", 5) == 0) ||
+-- 
+2.5.0
+
diff --git a/recipes-core/swupd-server/swupd-server/0001-Don-t-treate-home-as-user-state.patch b/recipes-core/swupd-server/swupd-server/0001-Don-t-treate-home-as-user-state.patch
new file mode 100644
index 0000000..99f926d
--- /dev/null
+++ b/recipes-core/swupd-server/swupd-server/0001-Don-t-treate-home-as-user-state.patch
@@ -0,0 +1,29 @@
+From 47e0f11ec452b3d8134e3c4047e31d8c5fff3801 Mon Sep 17 00:00:00 2001
+From: Amarnath Valluri <amarnath.valluri@intel.com>
+Date: Thu, 14 Jul 2016 12:33:42 +0300
+Subject: [PATCH] Don't treate /home/* as user state
+
+This allows to deploy user home folder as part of a bundle
+
+Ustream-Status: Pending
+
+Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
+---
+ src/heuristics.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/src/heuristics.c b/src/heuristics.c
+index 94eee53..f133a82 100644
+--- a/src/heuristics.c
++++ b/src/heuristics.c
+@@ -59,7 +59,6 @@ static void runtime_state_heuristics(struct file *file)
+ 	/* the contents of these directory are state, ideally this never
+ 	 * triggers if our package builds are clean */
+ 	if ((strncmp(file->filename, "/dev/", 5) == 0) ||
+-	    (strncmp(file->filename, "/home/", 6) == 0) ||
+ 	    (strncmp(file->filename, "/proc/", 6) == 0) ||
+ 	    (strncmp(file->filename, "/root/", 6) == 0) ||
+ 	    (strncmp(file->filename, "/run/", 5) == 0) ||
+-- 
+2.5.0
+
diff --git a/recipes-core/swupd-server/swupd-server_2.53.bb b/recipes-core/swupd-server/swupd-server_2.53.bb
index edb4407..fe99af3 100644
--- a/recipes-core/swupd-server/swupd-server_2.53.bb
+++ b/recipes-core/swupd-server/swupd-server_2.53.bb
@@ -17,6 +17,7 @@ SRC_URI = "\
     file://0008-Clean-up-tar-commands-always-put-files-after-options.patch \
     file://0009-Add-compatibility-with-libarchive-s-bsdtar-command.patch \
     file://fullfiles.c-work-around-pseudo-bug.patch \
+    file://0001-Don-t-treate-home-as-user-state.patch \
 "
 
 SRC_URI[md5sum] = "14f25677b5a4f0b33785910b03860939"
diff --git a/recipes-core/swupd-server/swupd-server_git.bb b/recipes-core/swupd-server/swupd-server_git.bb
index fccc0fe..593dd62 100644
--- a/recipes-core/swupd-server/swupd-server_git.bb
+++ b/recipes-core/swupd-server/swupd-server_git.bb
@@ -10,6 +10,7 @@ PV = "3.2.3+git${SRCPV}"
 SRC_URI = "\
     git://github.com/clearlinux/swupd-server.git;protocol=https \
     file://fullfiles.c-work-around-pseudo-bug.patch \
+    file://0001-Don-t-treate-home-as-user-state.patch \
 "
 SRCREV = "9d4df7e0350d3d8d1aa8af9f92d752046dbc72d0"
 
-- 
2.5.0

---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki 
Business Identity Code: 0357606 - 4 
Domiciled in Helsinki 

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


