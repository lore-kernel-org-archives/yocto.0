Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC47DE008AE; Tue, 27 Oct 2015 04:00:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DRUGS_MUSCLE,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.2 DRUGS_MUSCLE Refers to a muscle relaxant
Received: from mail5.wrs.com (unknown [64.129.254.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86452E008AE
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 04:00:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id t9RAOu5B014262
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 03:24:56 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 27 Oct 2015 03:24:55 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 27 Oct 2015 06:24:54 -0400
Message-ID: <1445941494-241638-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] refpolicy-targeted: rebase patches
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
X-List-Received-Date: Tue, 27 Oct 2015 11:00:04 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

rebase patches against latest git sources:

  * refpolicy-fix-optional-issue-on-sysadm-module.patch
  * refpolicy-unconfined_u-default-user.patch

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...olicy-fix-optional-issue-on-sysadm-module.patch | 47 ++++++++++----------
 .../refpolicy-unconfined_u-default-user.patch      | 50 ++++++++++++++--------
 2 files changed, 56 insertions(+), 41 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
index 44dff5e..2dd8291 100644
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
@@ -10,41 +10,42 @@ So, we could make the minimum policy without sysadm module.
 Upstream-Status: pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
  policy/modules/system/init.te       | 14 ++++++++------
  policy/modules/system/locallogin.te |  4 +++-
  2 files changed, 11 insertions(+), 7 deletions(-)
 
 diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index 4a88fa1..4548a7e 100644
+index c058f0c..d710fb0 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -188,12 +188,14 @@ ifdef(`distro_redhat',`
- 	fs_tmpfs_filetrans(init_t, initctl_t, fifo_file)
+@@ -292,12 +292,14 @@ ifdef(`init_systemd',`
+ 		modutils_domtrans_insmod(init_t)
+ 	')
+ ',`
+-	tunable_policy(`init_upstart',`
+-		corecmd_shell_domtrans(init_t, initrc_t)
+-	',`
+-		# Run the shell in the sysadm role for single-user mode.
+-		# causes problems with upstart
+-		sysadm_shell_domtrans(init_t)
++	optional_policy(`
++		tunable_policy(`init_upstart',`
++			corecmd_shell_domtrans(init_t, initrc_t)
++		',`
++			# Run the shell in the sysadm role for single-user mode.
++			# causes problems with upstart
++			sysadm_shell_domtrans(init_t)
++		')
+ 	')
  ')
  
--tunable_policy(`init_upstart',`
--	corecmd_shell_domtrans(init_t, initrc_t)
--',`
--	# Run the shell in the sysadm role for single-user mode.
--	# causes problems with upstart
--	sysadm_shell_domtrans(init_t)
-+# Run the shell in the sysadm role for single-user mode.
-+# causes problems with upstart
-+optional_policy(`
-+	tunable_policy(`init_upstart',`
-+		corecmd_shell_domtrans(init_t, initrc_t)
-+	',`
-+		sysadm_shell_domtrans(init_t)
-+	')
- ')
- 
- optional_policy(`
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
-index f5a5de7..d942f05 100644
+index 0781eae..ea2493a 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -239,7 +239,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
+@@ -246,7 +246,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
  
@@ -56,5 +57,5 @@ index f5a5de7..d942f05 100644
  # suse and debian do not use pam with sulogin...
  ifdef(`distro_suse', `define(`sulogin_no_pam')')
 -- 
-1.7.11.7
+1.9.1
 
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
index 51edcd2..ba14851 100644
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
@@ -1,4 +1,4 @@
-refpolicy: make unconfined_u the default selinux user
+Subject: [PATCH] refpolicy: make unconfined_u the default selinux user
 
 For targeted policy type, we define unconfined_u as the default selinux
 user for root and normal users, so users could login in and run most
@@ -7,18 +7,21 @@ commands and services on unconfined domains.
 Also add rules for users to run init scripts directly, instead of via
 run_init.
 
-Upstream-Status: Inappropriate [configuration] 
+Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- config/appconfig-mcs/seusers        |    4 +--
- policy/modules/roles/sysadm.te      |    1 
- policy/modules/system/init.if       |   47 +++++++++++++++++++++++++++++-------
- policy/modules/system/unconfined.te |    7 +++++
- policy/users                        |   16 ++++--------
+ config/appconfig-mcs/seusers        |  4 ++--
+ policy/modules/roles/sysadm.te      |  1 +
+ policy/modules/system/init.if       | 47 ++++++++++++++++++++++++++++++-------
+ policy/modules/system/unconfined.te |  7 ++++++
+ policy/users                        | 16 +++++--------
  5 files changed, 55 insertions(+), 20 deletions(-)
 
+diff --git a/config/appconfig-mcs/seusers b/config/appconfig-mcs/seusers
+index dc5f1e4..4428da8 100644
 --- a/config/appconfig-mcs/seusers
 +++ b/config/appconfig-mcs/seusers
 @@ -1,3 +1,3 @@
@@ -27,6 +30,8 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 -__default__:user_u:s0
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 005afd8..4699d6a 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
 @@ -34,6 +34,7 @@ ubac_file_exempt(sysadm_t)
@@ -34,12 +39,14 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  init_exec(sysadm_t)
 +init_script_role_transition(sysadm_r)
- 
- # Add/remove user home directories
- userdom_manage_user_home_dirs(sysadm_t)
+ init_get_system_status(sysadm_t)
+ init_disable(sysadm_t)
+ init_enable(sysadm_t)
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index b68dfc1..35b4141 100644
 --- a/policy/modules/system/init.if
 +++ b/policy/modules/system/init.if
-@@ -825,11 +825,12 @@ interface(`init_script_file_entry_type',
+@@ -1234,11 +1234,12 @@ interface(`init_script_file_entry_type',`
  #
  interface(`init_spec_domtrans_script',`
  	gen_require(`
@@ -54,7 +61,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  	ifdef(`distro_gentoo',`
  		gen_require(`
-@@ -840,11 +841,11 @@ interface(`init_spec_domtrans_script',`
+@@ -1249,11 +1250,11 @@ interface(`init_spec_domtrans_script',`
  	')
  
  	ifdef(`enable_mcs',`
@@ -68,7 +75,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	')
  ')
  
-@@ -860,18 +861,19 @@ interface(`init_spec_domtrans_script',`
+@@ -1269,18 +1270,19 @@ interface(`init_spec_domtrans_script',`
  #
  interface(`init_domtrans_script',`
  	gen_require(`
@@ -92,9 +99,9 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  	')
  ')
  
-@@ -1837,3 +1839,32 @@ interface(`init_udp_recvfrom_all_daemons
- 	')
- 	corenet_udp_recvfrom_labeled($1, daemon)
+@@ -2504,3 +2506,32 @@ interface(`init_reload_all_units',`
+ 
+ 	allow $1 systemdunit:service reload;
  ')
 +
 +########################################
@@ -125,6 +132,8 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 +	role_transition $1 init_script_file_type system_r;
 +')
 +
+diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
+index ad23fce..99cab31 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
 @@ -20,6 +20,11 @@ type unconfined_execmem_t;
@@ -139,7 +148,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  ########################################
  #
-@@ -50,6 +55,8 @@ userdom_user_home_dir_filetrans_user_hom
+@@ -50,6 +55,8 @@ userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_f
  ifdef(`direct_sysadm_daemon',`
          optional_policy(`
                  init_run_daemon(unconfined_t, unconfined_r)
@@ -148,6 +157,8 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
          ')
  ',`
          ifdef(`distro_gentoo',`
+diff --git a/policy/users b/policy/users
+index ca20375..ac1ca6c 100644
 --- a/policy/users
 +++ b/policy/users
 @@ -15,7 +15,7 @@
@@ -159,7 +170,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  #
  # user_u is a generic user identity for Linux users who have no
-@@ -25,14 +25,14 @@ gen_user(system_u,, system_r, s0, s0 - m
+@@ -25,14 +25,14 @@ gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
  # permit any access to such users, then remove this entry.
  #
  gen_user(user_u, user, user_r, s0, s0)
@@ -188,3 +199,6 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 -	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
 -')
 +gen_user(root, user, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+-- 
+1.9.1
+
-- 
1.9.1


