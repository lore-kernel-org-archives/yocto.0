Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D97E4E00973; Mon,  3 Aug 2015 06:34:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F6CEE008EC
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:34:02 -0700 (PDT)
Received: by pdbnt7 with SMTP id nt7so74114066pdb.0
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=1xl+3ypy3eZ9Ybs46T3Kkv/yrEN6y7Yki4tjlqgWLjE=;
	b=BDpuhTCSwVBsYFyMT8ll19LrkIwIDzxNx2iCG5HgjziYwwSXm3Z1lo+gyNMu23kAZH
	m4PZcOojUsiPLtU9B+ksuZKB2N0KKW0l0MjMhzlhaF4QoT3Jl72tTWRy6JXRPm/TJei6
	/l7u724WZcoHDsms1VosLd3PG+xjbCcj2YzVPrgaEouWzpdax79NeeF3+ZEEaey1RhWl
	gpv6ArGCbEOMIlocFLzYVeKIB5eEG8CfTh9dvmegInF6Kuv1KgCeIITKgb5YVtAdX4ng
	qcggcueVRu0hp5u3u0gC+8SS0fc6ueCanPfJ6OQ0e0iIujw4ha/oQz3w/W53ZTWDFFqZ
	sxvA==
X-Received: by 10.70.6.161 with SMTP id c1mr35732264pda.76.1438608842061;
	Mon, 03 Aug 2015 06:34:02 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	si6sm7994024pbc.75.2015.08.03.06.34.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:34:01 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:05:05 +0530
Message-Id: <1438608905-9838-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 2/8] refpolicy git: rebase patches with code base
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
X-List-Received-Date: Mon, 03 Aug 2015 13:34:05 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

During forward-port of these patches from refpolicy 20140311,
requires rebase with the refpolicy git repos head master
code base,in order to resolve the patch conflicts.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-git/poky-fc-fstools.patch  |   49 +++++++++++---------
 .../refpolicy-git/poky-fc-sysnetwork.patch         |   27 ++++++-----
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |   17 +++----
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |    9 ++--
 .../refpolicy-update-for_systemd.patch             |   49 +++++++-------------
 5 files changed, 74 insertions(+), 77 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
index 38c96c4..9c45694 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
@@ -1,4 +1,4 @@
-From 7fdfd2ef8764ddfaeb43e53a756af83d42d8ac8b Mon Sep 17 00:00:00 2001
+From b420621f7bacdb803bfd104686e9b1785d7a6309 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 27 Jan 2014 03:54:01 -0500
 Subject: [PATCH] refpolicy: fix real path for fstools
@@ -7,59 +7,64 @@ Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 ---
- policy/modules/system/fstools.fc |   11 +++++++++++
- 1 file changed, 11 insertions(+)
+ policy/modules/system/fstools.fc |    9 +++++++++
+ 1 file changed, 9 insertions(+)
 
+diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
+index d10368d..f22761a 100644
 --- a/policy/modules/system/fstools.fc
 +++ b/policy/modules/system/fstools.fc
 @@ -1,6 +1,8 @@
  /sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/blkid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/blkid\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/blkid/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/blockdev\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/blockdev/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/dosfsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/dump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -9,9 +11,11 @@
+@@ -9,9 +11,12 @@
  /sbin/e4fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/e2label		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/fdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/fdisk\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/fdisk/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/hdparm\.hdparm	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/hdparm/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/install-mbr	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -24,6 +28,7 @@
+@@ -24,6 +29,7 @@
  /sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkreiserfs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/mkswap\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/mkswap/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -34,6 +39,7 @@
+@@ -32,8 +38,10 @@
+ /sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/resize.*fs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/sbin/swapoff\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/swapoff/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/zdb		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -50,7 +56,12 @@
+@@ -45,6 +53,7 @@
  
- /usr/sbin/clubufflush	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/fatsort	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/parted	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/bin/partition_uuid	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/bin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/usr/sbin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
- /usr/sbin/smartctl	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/bin/scsi_unique_id	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/bin/syslinux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  
- /var/log/fsck(/.*)?		gen_context(system_u:object_r:fsadm_log_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
index e0af6a1..64f497d 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
@@ -1,41 +1,46 @@
+From 56ec3e527f2a03d217d5f07ebb708e6e26fa26ff Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Tue, 9 Jun 2015 21:22:52 +0530
 Subject: [PATCH] refpolicy: fix real path for sysnetwork
 
 Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 ---
- policy/modules/system/sysnetwork.fc | 4 ++++
+ policy/modules/system/sysnetwork.fc |    4 ++++
  1 file changed, 4 insertions(+)
 
 diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index dec8632..2e602e4 100644
+index fbb935c..a194622 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -3,6 +3,7 @@
- # /bin
+@@ -4,6 +4,7 @@
  #
+ /bin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /bin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/sbin/ip\.iproute2	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/sbin/ip\.iproute2 --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
  
  #
  # /dev
-@@ -43,13 +44,16 @@ ifdef(`distro_redhat',`
+@@ -43,7 +44,9 @@ ifdef(`distro_redhat',`
  /sbin/dhcdbd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/ethtool	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/ethtool  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/sbin/ifconfig\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/sbin/ifconfig\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ip		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ipx_configure	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ipx_interface	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
- /sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+@@ -51,6 +54,7 @@ ifdef(`distro_redhat',`
+ /sbin/iw		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/sbin/mii-tool\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/sbin/mii-tool\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/pump		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/tc		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  
 -- 
-1.7.11.7
+1.7.9.5
 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
index 71497fb..9ef61b4 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
@@ -1,29 +1,30 @@
-From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
+From 87b6daf87a07350a58c1724db8fc0a99b849818a Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Thu, 22 Aug 2013 13:37:23 +0800
 Subject: [PATCH] fix setfiles_t to read symlinks
 
-Upstream-Status: Pending 
+Upstream-Status: Pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 ---
  policy/modules/system/selinuxutil.te |    3 +++
- 1 files changed, 3 insertions(+), 0 deletions(-)
+ 1 file changed, 3 insertions(+)
 
 diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index ec01d0b..45ed81b 100644
+index 9058dd8..f998491 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -553,6 +553,9 @@ files_list_all(setfiles_t)
- files_relabel_all_files(setfiles_t)
+@@ -552,6 +552,9 @@ files_relabel_all_files(setfiles_t)
  files_read_usr_symlinks(setfiles_t)
+ files_dontaudit_read_all_symlinks(setfiles_t)
  
 +# needs to be able to read symlinks to make restorecon on symlink working
 +files_read_all_symlinks(setfiles_t)
 +
- fs_getattr_xattr_fs(setfiles_t)
+ fs_getattr_all_xattr_fs(setfiles_t)
  fs_list_all(setfiles_t)
  fs_search_auto_mountpoints(setfiles_t)
 -- 
-1.7.5.4
+1.7.9.5
 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
index 90efbd8..0b8cc5d 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
@@ -1,4 +1,4 @@
-From 4d2c4c358602b246881210889756f229730505d3 Mon Sep 17 00:00:00 2001
+From f4e034d6996c5b1f88a9262828dac2ad6ee09b7b Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Fri, 23 Aug 2013 14:38:53 +0800
 Subject: [PATCH] fix setfiles statvfs to get file count
@@ -9,19 +9,20 @@ file_system_count() to get file count of filesystems.
 Upstream-Status: pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 ---
  policy/modules/system/selinuxutil.te |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index 45ed81b..12c3d2e 100644
+index f998491..1a4e565 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -556,7 +556,7 @@ files_read_usr_symlinks(setfiles_t)
+@@ -555,7 +555,7 @@ files_dontaudit_read_all_symlinks(setfiles_t)
  # needs to be able to read symlinks to make restorecon on symlink working
  files_read_all_symlinks(setfiles_t)
  
--fs_getattr_xattr_fs(setfiles_t)
+-fs_getattr_all_xattr_fs(setfiles_t)
 +fs_getattr_all_fs(setfiles_t)
  fs_list_all(setfiles_t)
  fs_search_auto_mountpoints(setfiles_t)
diff --git a/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
index 80b420c..9693345 100644
--- a/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
+++ b/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
@@ -1,41 +1,22 @@
-refpolicy: update for systemd
- 
-It provides the systemd support for refpolicy 
-and related allow rules. 
-The restorecon provides systemd init labeled 
-as init_exec_t.
+From 07553727dca51631c93bca482442da8d0c50ac94 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 12 Jun 2015 19:37:52 +0530
+Subject: [PATCH] refpolicy: update for systemd related allow rules
 
-Upstream-Status: Pending
+It provide, the systemd support related allow rules
 
+Upstream-Status: Pending
 
-Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/init.te |    5 +++++
+ 1 file changed, 5 insertions(+)
 
---- a/policy/modules/contrib/shutdown.fc
-+++ b/policy/modules/contrib/shutdown.fc
-@@ -5,6 +5,9 @@
- /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- /sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
-+# systemd support
-+/bin/systemctl	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
-+
- /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
- 
- /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
---- a/policy/modules/system/init.fc
-+++ b/policy/modules/system/init.fc
-@@ -31,6 +31,8 @@
- #
- /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
- /sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
-+# systemd support
-+/lib/systemd/systemd	--	gen_context(system_u:object_r:init_exec_t,s0)
- # because nowadays, /sbin/init is often a symlink to /sbin/upstart
- /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
- 
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index c8f007d..a9675f6 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -913,3 +913,8 @@
+@@ -929,3 +929,8 @@ optional_policy(`
  optional_policy(`
  	zebra_read_config(initrc_t)
  ')
@@ -44,3 +25,7 @@ Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 +allow kernel_t init_t:process dyntransition;
 +allow devpts_t device_t:filesystem associate;
 +allow init_t self:capability2 block_suspend;
+\ No newline at end of file
+-- 
+1.7.9.5
+
-- 
1.7.9.5


