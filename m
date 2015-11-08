Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86130E00B45; Sun,  8 Nov 2015 11:06:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 074BFE00B45
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:06:12 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvUgR-00010Y-6Q; Sun, 08 Nov 2015 18:27:24 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Sun,  8 Nov 2015 18:29:55 +0000
Message-Id: <1447007395-14225-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH] refpolicy-git: Refresh poky-policy-fix-new-SELINUXMNT-in-sys.patch.
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
X-List-Received-Date: Sun, 08 Nov 2015 19:06:21 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 100 ++++++---------------
 1 file changed, 25 insertions(+), 75 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
index 302a38f..005e28f 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
@@ -14,8 +14,10 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  policy/modules/kernel/selinux.if |   34 ++++++++++++++++++++++++++++++++--
  1 file changed, 32 insertions(+), 2 deletions(-)
 
---- a/policy/modules/kernel/selinux.if
-+++ b/policy/modules/kernel/selinux.if
+Index: refpolicy/policy/modules/kernel/selinux.if
+===================================================================
+--- refpolicy.orig/policy/modules/kernel/selinux.if
++++ refpolicy/policy/modules/kernel/selinux.if
 @@ -58,6 +58,10 @@ interface(`selinux_get_fs_mount',`
  		type security_t;
  	')
@@ -27,7 +29,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	# starting in libselinux 2.0.5, init_selinuxmnt() will
  	# attempt to short circuit by checking if SELINUXMNT
  	# (/selinux) is already a selinuxfs
-@@ -84,6 +88,7 @@ interface(`selinux_dontaudit_get_fs_moun
+@@ -88,6 +92,7 @@ interface(`selinux_dontaudit_get_fs_moun
  		type security_t;
  	')
  
@@ -35,7 +37,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	# starting in libselinux 2.0.5, init_selinuxmnt() will
  	# attempt to short circuit by checking if SELINUXMNT
  	# (/selinux) is already a selinuxfs
-@@ -109,6 +114,8 @@ interface(`selinux_mount_fs',`
+@@ -117,6 +122,8 @@ interface(`selinux_mount_fs',`
  		type security_t;
  	')
  
@@ -44,7 +46,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem mount;
  ')
  
-@@ -128,6 +135,8 @@ interface(`selinux_remount_fs',`
+@@ -136,6 +143,8 @@ interface(`selinux_remount_fs',`
  		type security_t;
  	')
  
@@ -53,7 +55,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem remount;
  ')
  
-@@ -146,6 +155,8 @@ interface(`selinux_unmount_fs',`
+@@ -154,6 +163,8 @@ interface(`selinux_unmount_fs',`
  		type security_t;
  	')
  
@@ -62,24 +64,24 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	allow $1 security_t:filesystem unmount;
  ')
  
-@@ -164,6 +175,8 @@ interface(`selinux_getattr_fs',`
+@@ -172,6 +183,8 @@ interface(`selinux_getattr_fs',`
  		type security_t;
  	')
  
 +	dev_getattr_sysfs_dirs($1)
 +	dev_search_sysfs($1)
  	allow $1 security_t:filesystem getattr;
- ')
  
-@@ -183,6 +196,7 @@ interface(`selinux_dontaudit_getattr_fs'
+ 	dev_getattr_sysfs($1)
+@@ -194,6 +207,7 @@ interface(`selinux_dontaudit_getattr_fs'
  		type security_t;
  	')
  
 +	dev_dontaudit_search_sysfs($1)
  	dontaudit $1 security_t:filesystem getattr;
- ')
  
-@@ -202,6 +216,7 @@ interface(`selinux_dontaudit_getattr_dir
+ 	dev_dontaudit_getattr_sysfs($1)
+@@ -216,6 +230,7 @@ interface(`selinux_dontaudit_getattr_dir
  		type security_t;
  	')
  
@@ -87,7 +89,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir getattr;
  ')
  
-@@ -220,6 +235,7 @@ interface(`selinux_search_fs',`
+@@ -234,6 +249,7 @@ interface(`selinux_search_fs',`
  		type security_t;
  	')
  
@@ -95,7 +97,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir search_dir_perms;
  ')
-@@ -239,6 +255,7 @@ interface(`selinux_dontaudit_search_fs',
+@@ -253,6 +269,7 @@ interface(`selinux_dontaudit_search_fs',
  		type security_t;
  	')
  
@@ -103,7 +105,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir search_dir_perms;
  ')
  
-@@ -258,6 +275,7 @@ interface(`selinux_dontaudit_read_fs',`
+@@ -272,6 +289,7 @@ interface(`selinux_dontaudit_read_fs',`
  		type security_t;
  	')
  
@@ -111,7 +113,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir search_dir_perms;
  	dontaudit $1 security_t:file read_file_perms;
  ')
-@@ -279,6 +297,7 @@ interface(`selinux_get_enforce_mode',`
+@@ -293,6 +311,7 @@ interface(`selinux_get_enforce_mode',`
  		type security_t;
  	')
  
@@ -119,23 +121,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file read_file_perms;
-@@ -313,6 +332,7 @@ interface(`selinux_set_enforce_mode',`
- 		bool secure_mode_policyload;
- 	')
- 
-+	dev_getattr_sysfs_dirs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
-@@ -345,6 +365,7 @@ interface(`selinux_load_policy',`
- 		bool secure_mode_policyload;
- 	')
- 
-+	dev_getattr_sysfs_dirs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
-@@ -375,6 +396,7 @@ interface(`selinux_read_policy',`
+@@ -361,6 +380,7 @@ interface(`selinux_read_policy',`
  		type security_t;
  	')
  
@@ -143,35 +129,23 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file read_file_perms;
-@@ -440,8 +462,8 @@ interface(`selinux_set_generic_booleans'
+@@ -426,6 +446,7 @@ interface(`selinux_set_generic_booleans'
  		type security_t;
  	')
  
 +	dev_getattr_sysfs_dirs($1)
  	dev_search_sysfs($1)
--
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
  
-@@ -482,8 +504,8 @@ interface(`selinux_set_all_booleans',`
+ 	allow $1 security_t:dir list_dir_perms;
+@@ -463,6 +484,7 @@ interface(`selinux_set_all_booleans',`
  		bool secure_mode_policyload;
  	')
  
 +	dev_getattr_sysfs_dirs($1)
  	dev_search_sysfs($1)
--
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 { boolean_type -secure_mode_policyload_t }:file rw_file_perms;
- 	allow $1 secure_mode_policyload_t:file read_file_perms;
-@@ -528,6 +550,7 @@ interface(`selinux_set_parameters',`
- 		attribute can_setsecparam;
- 	')
  
-+	dev_getattr_sysfs_dirs($1)
- 	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
-@@ -552,6 +575,7 @@ interface(`selinux_validate_context',`
+@@ -522,6 +544,7 @@ interface(`selinux_validate_context',`
  		type security_t;
  	')
  
@@ -179,7 +153,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
-@@ -574,6 +598,7 @@ interface(`selinux_dontaudit_validate_co
+@@ -544,6 +567,7 @@ interface(`selinux_dontaudit_validate_co
  		type security_t;
  	')
  
@@ -187,31 +161,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dontaudit $1 security_t:dir list_dir_perms;
  	dontaudit $1 security_t:file rw_file_perms;
  	dontaudit $1 security_t:security check_context;
-@@ -595,6 +620,7 @@ interface(`selinux_compute_access_vector
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs_dirs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
-@@ -617,6 +643,7 @@ interface(`selinux_compute_create_contex
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs_dirs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
-@@ -639,6 +666,7 @@ interface(`selinux_compute_member',`
- 		type security_t;
- 	')
- 
-+	dev_getattr_sysfs_dirs($1)
- 	dev_search_sysfs($1)
- 	allow $1 security_t:dir list_dir_perms;
- 	allow $1 security_t:file rw_file_perms;
-@@ -669,6 +697,7 @@ interface(`selinux_compute_relabel_conte
+@@ -565,6 +589,7 @@ interface(`selinux_compute_access_vector
  		type security_t;
  	')
  
@@ -219,7 +169,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
-@@ -690,6 +719,7 @@ interface(`selinux_compute_user_contexts
+@@ -660,6 +685,7 @@ interface(`selinux_compute_user_contexts
  		type security_t;
  	')
  
-- 
2.1.4


