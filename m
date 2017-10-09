Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C47E3E00D2A; Mon,  9 Oct 2017 00:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1BDE00D14
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 00:20:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v997KFFw001419
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 9 Oct 2017 00:20:15 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 9 Oct 2017 00:20:14 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
Date: Mon, 9 Oct 2017 00:20:12 -0700
Message-ID: <20171009072014.31393-1-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/3] refpolicy-targeted: rebase patches for 2.20170204
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
X-List-Received-Date: Mon, 09 Oct 2017 07:20:17 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Rebase and apply the patches for 2.20170204:
  - refpolicy-fix-optional-issue-on-sysadm-module.patch
  - refpolicy-unconfined_u-default-user.patch

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...olicy-fix-optional-issue-on-sysadm-module.patch |  33 +++--
 .../refpolicy-unconfined_u-default-user.patch      | 140 +++++++++------------
 2 files changed, 77 insertions(+), 96 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
index b33e84b..04fc575 100644
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
@@ -17,12 +17,12 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  policy/modules/system/locallogin.te |  4 +++-
  2 files changed, 11 insertions(+), 7 deletions(-)
 
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 6503fff..be291a9 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -344,17 +344,19 @@ ifdef(`init_systemd',`
- 
- 	optional_policy(`
- 		modutils_domtrans(init_t)
+@@ -302,12 +302,14 @@ ifdef(`init_systemd',`
+ 		modutils_domtrans_insmod(init_t)
  	')
  ',`
 -	tunable_policy(`init_upstart',`
@@ -30,27 +30,23 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 -	',`
 -		# Run the shell in the sysadm role for single-user mode.
 -		# causes problems with upstart
--		ifndef(`distro_debian',`
--			sysadm_shell_domtrans(init_t)
+-		sysadm_shell_domtrans(init_t)
 +	optional_policy(`
 +		tunable_policy(`init_upstart',`
 +			corecmd_shell_domtrans(init_t, initrc_t)
 +		',`
 +			# Run the shell in the sysadm role for single-user mode.
 +			# causes problems with upstart
-+			ifndef(`distro_debian',`
-+				sysadm_shell_domtrans(init_t)
-+			')
- 		')
++			sysadm_shell_domtrans(init_t)
++		')
  	')
  ')
  
- ifdef(`distro_debian',`
+diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
+index 8386084..5242713 100644
 --- a/policy/modules/system/locallogin.te
 +++ b/policy/modules/system/locallogin.te
-@@ -260,11 +260,13 @@ seutil_read_default_contexts(sulogin_t)
- userdom_use_unpriv_users_fds(sulogin_t)
- 
+@@ -246,7 +246,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
  userdom_search_user_home_dirs(sulogin_t)
  userdom_use_user_ptys(sulogin_t)
  
@@ -59,7 +55,8 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 +	sysadm_shell_domtrans(sulogin_t)
 +')
  
- # by default, sulogin does not use pam...
- # sulogin_pam might need to be defined otherwise
- ifdef(`sulogin_pam', `
- 	selinux_get_fs_mount(sulogin_t)
+ # suse and debian do not use pam with sulogin...
+ ifdef(`distro_suse', `define(`sulogin_no_pam')')
+-- 
+2.13.0
+
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
index 29d3e2d..95c50ac 100644
--- a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
@@ -13,13 +13,15 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- config/appconfig-mcs/seusers        |  4 ++--
+ config/appconfig-mcs/seusers        |  5 ++--
  policy/modules/roles/sysadm.te      |  1 +
- policy/modules/system/init.if       | 47 ++++++++++++++++++++++++++++++-------
+ policy/modules/system/init.if       | 46 ++++++++++++++++++++++++++++++-------
  policy/modules/system/unconfined.te |  7 ++++++
  policy/users                        | 16 +++++--------
  5 files changed, 55 insertions(+), 20 deletions(-)
 
+diff --git a/config/appconfig-mcs/seusers b/config/appconfig-mcs/seusers
+index ce614b4..d707475 100644
 --- a/config/appconfig-mcs/seusers
 +++ b/config/appconfig-mcs/seusers
 @@ -1,2 +1,3 @@
@@ -28,25 +30,58 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 +root:unconfined_u:s0-mcs_systemhigh
 +__default__:unconfined_u:s0
 +
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 46fbe81..6a6468f 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -37,10 +37,11 @@ ubac_process_exempt(sysadm_t)
- ubac_file_exempt(sysadm_t)
- ubac_fd_exempt(sysadm_t)
- 
- init_exec(sysadm_t)
- init_admin(sysadm_t)
+@@ -43,6 +43,7 @@ init_shutdown_system(sysadm_t)
+ init_start_generic_units(sysadm_t)
+ init_stop_generic_units(sysadm_t)
+ init_reload_generic_units(sysadm_t)
 +init_script_role_transition(sysadm_r)
  
- selinux_read_policy(sysadm_t)
- 
  # Add/remove user home directories
  userdom_manage_user_home_dirs(sysadm_t)
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index 0cb296f..6e26881 100644
 --- a/policy/modules/system/init.if
 +++ b/policy/modules/system/init.if
-@@ -1394,30 +1394,31 @@ interface(`init_script_file_entry_type',
- ##	</summary>
- ## </param>
+@@ -44,6 +44,34 @@ interface(`init_script_file',`
+ 
+ ########################################
+ ## <summary>
++##     Transition to system_r when execute an init script
++## </summary>
++## <desc>
++##     <p>
++##     Execute a init script in a specified role
++##     </p>
++##     <p>
++##     No interprocess communication (signals, pipes,
++##     etc.) is provided by this interface since
++##     the domains are not owned by this module.
++##     </p>
++## </desc>
++## <param name="source_role">
++##     <summary>
++##     Role to transition from.
++##     </summary>
++## </param>
++#
++interface(`init_script_role_transition',`
++	gen_require(`
++		attribute init_script_file_type;
++	')
++
++	role_transition $1 init_script_file_type system_r;
++')
++
++########################################
++## <summary>
+ ##   Make the specified type usable for
+ ##   systemd unit files.
+ ## </summary>
+@@ -1234,11 +1262,12 @@ interface(`init_script_file_entry_type',`
  #
  interface(`init_spec_domtrans_script',`
  	gen_require(`
@@ -61,10 +96,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  	ifdef(`distro_gentoo',`
  		gen_require(`
- 			type rc_exec_t;
- 		')
- 
- 		domtrans_pattern($1, rc_exec_t, initrc_t)
+@@ -1249,11 +1278,11 @@ interface(`init_spec_domtrans_script',`
  	')
  
  	ifdef(`enable_mcs',`
@@ -78,11 +110,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  	')
  ')
  
- ########################################
- ## <summary>
-@@ -1429,22 +1430,23 @@ interface(`init_spec_domtrans_script',`
- ##	</summary>
- ## </param>
+@@ -1269,18 +1298,19 @@ interface(`init_spec_domtrans_script',`
  #
  interface(`init_domtrans_script',`
  	gen_require(`
@@ -106,48 +134,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  	')
  ')
  
- ########################################
- ## <summary>
-@@ -2972,5 +2974,34 @@ interface(`init_admin',`
- 	init_stop_all_units($1)
- 	init_stop_generic_units($1)
- 	init_stop_system($1)
- 	init_telinit($1)
- ')
-+
-+########################################
-+## <summary>
-+##	Transition to system_r when execute an init script
-+## </summary>
-+## <desc>
-+##	<p>
-+##	Execute a init script in a specified role
-+##	</p>
-+##	<p>
-+##	No interprocess communication (signals, pipes,
-+##	etc.) is provided by this interface since
-+##	the domains are not owned by this module.
-+##	</p>
-+## </desc>
-+## <param name="source_role">
-+##	<summary>
-+##	Role to transition from.
-+##	</summary>
-+## </param>
-+#
-+interface(`init_script_role_transition',`
-+	gen_require(`
-+		attribute init_script_file_type;
-+	')
-+
-+	role_transition $1 init_script_file_type system_r;
-+')
-+
+diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
+index 189869d..5688bbb 100644
 --- a/policy/modules/system/unconfined.te
 +++ b/policy/modules/system/unconfined.te
-@@ -18,10 +18,15 @@ init_system_domain(unconfined_t, unconfi
- 
- type unconfined_execmem_t;
+@@ -20,6 +20,11 @@ type unconfined_execmem_t;
  type unconfined_execmem_exec_t;
  init_system_domain(unconfined_execmem_t, unconfined_execmem_exec_t)
  role unconfined_r types unconfined_execmem_t;
@@ -159,11 +150,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  ########################################
  #
- # Local policy
- #
-@@ -48,10 +53,12 @@ unconfined_domain(unconfined_t)
- userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_file fifo_file sock_file })
- 
+@@ -50,6 +55,8 @@ userdom_user_home_dir_filetrans_user_home_content(unconfined_t, { dir file lnk_f
  ifdef(`direct_sysadm_daemon',`
          optional_policy(`
                  init_run_daemon(unconfined_t, unconfined_r)
@@ -172,13 +159,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
          ')
  ',`
          ifdef(`distro_gentoo',`
-                 seutil_run_runinit(unconfined_t, unconfined_r)
-                 seutil_init_script_run_runinit(unconfined_t, unconfined_r)
+diff --git a/policy/users b/policy/users
+index ca20375..ac1ca6c 100644
 --- a/policy/users
 +++ b/policy/users
-@@ -13,37 +13,33 @@
- # system_u is the user identity for system processes and objects.
- # There should be no corresponding Unix user identity for system,
+@@ -15,7 +15,7 @@
  # and a user process should never be assigned the system user
  # identity.
  #
@@ -187,9 +172,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  
  #
  # user_u is a generic user identity for Linux users who have no
- # SELinux user identity defined.  The modified daemons will use
- # this user identity in the security context if there is no matching
- # SELinux user identity for a Linux user.  If you do not want to
+@@ -25,14 +25,14 @@ gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
  # permit any access to such users, then remove this entry.
  #
  gen_user(user_u, user, user_r, s0, s0)
@@ -208,9 +191,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  ')
  
  #
- # The following users correspond to Unix identities.
- # These identities are typically assigned as the user attribute
- # when login starts the user shell.  Users with access to the sysadm_r
+@@ -42,8 +42,4 @@ ifdef(`direct_sysadm_daemon',`
  # role should use the staff_r role instead of the user_r role when
  # not in the sysadm_r.
  #
@@ -220,3 +201,6 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 -	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
 -')
 +gen_user(root, user, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+-- 
+2.13.0
+
-- 
2.13.0


