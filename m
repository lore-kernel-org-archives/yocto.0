Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62AB6E00B01
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2P17wLt010909
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:59 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 24 Mar 2014 18:07:58 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>, <Joe.MacDonald@windriver.com>
Date: Mon, 24 Mar 2014 21:07:49 -0400
Message-ID: <7258f6fd72df70baa1d9f0ece0bd3da1f643f83a.1395709062.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1395709062.git.wenzong.fan@windriver.com>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 3/4] refpolicy: add targeted policy type
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
X-List-Received-Date: Tue, 25 Mar 2014 01:08:01 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

This SELinux policy would targeted most of service domains for lock
down, and users and admins will login in with unconfined_t domain.

So they would have the same access to the system as if SELinux was not
enabled, when running commands and services which are not targeted.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...olicy-fix-optional-issue-on-sysadm-module.patch |   60 ++++++
 .../refpolicy-unconfined_u-default-user.patch      |  198 ++++++++++++++++++++
 .../refpolicy/refpolicy-targeted_2.20130424.bb     |   18 ++
 3 files changed, 276 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb

diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
new file mode 100644
index 0000000..44dff5e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
@@ -0,0 +1,60 @@
+Subject: [PATCH] refpolicy: fix optional issue on sysadm module
+
+init and locallogin modules have a depend for sysadm module because
+they have called sysadm interfaces(sysadm_shell_domtrans). Since
+sysadm is not a core module, we could make the sysadm_shell_domtrans
+calls optionally by optional_policy.
+
+So, we could make the minimum policy without sysadm module.
+
+Upstream-Status: pending
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/init.te       | 14 ++++++++------
+ policy/modules/system/locallogin.te |  4 +++-
+ 2 files changed, 11 insertions(+), 7 deletions(-)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 4a88fa1..4548a7e 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -188,12 +188,14 @@ ifdef(`distro_redhat',`
+ 	fs_tmpfs_filetrans(init_t, initctl_t, fifo_file)
+ ')
+ 
+-tunable_policy(`init_upstart',`
+-	corecmd_shell_domtrans(init_t, initrc_t)
+-',`
+-	# Run the shell in the sysadm role for single-user mode.
+-	# causes problems with upstart
+-	sysadm_shell_domtrans(init_t)
++# Run the shell in the sysadm role for single-user mode.
++# causes problems with upstart
++optional_policy(`
++	tunable_policy(`init_upstart',`
++		corecmd_shell_domtrans(init_t, initrc_t)
++	',`
++		sysadm_shell_domtrans(init_t)
++	')
+ ')
+ 
+ optional_policy(`
+diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
+index f5a5de7..d942f05 100644
+--- a/policy/modules/system/locallogin.te
++++ b/policy/modules/system/locallogin.te
+@@ -239,7 +239,9 @@ userdom_use_unpriv_users_fds(sulogin_t)
+ userdom_search_user_home_dirs(sulogin_t)
+ userdom_use_user_ptys(sulogin_t)
+ 
+-sysadm_shell_domtrans(sulogin_t)
++optional_policy(`
++	sysadm_shell_domtrans(sulogin_t)
++')
+ 
+ # suse and debian do not use pam with sulogin...
+ ifdef(`distro_suse', `define(`sulogin_no_pam')')
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
new file mode 100644
index 0000000..e39afca
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
@@ -0,0 +1,198 @@
+Subject: [PATCH] refpolicy: make unconfined_u the default selinux user
+
+For targeted policy type, we define unconfined_u as the default selinux
+user for root and normal users, so users could login in and run most
+commands and services on unconfined domains.
+
+Also add rules for users to run init scripts directly, instead of via
+run_init.
+
+Upstream-Status: Inappropriate [configuration] 
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ config/appconfig-mcs/seusers        |    4 +-
+ policy/modules/roles/sysadm.te      |    1 +
+ policy/modules/system/init.if       |   47 +++++++++++++++++++++++++++++------
+ policy/modules/system/unconfined.te |    7 +++++
+ policy/users                        |   14 +++------
+ 5 files changed, 54 insertions(+), 19 deletions(-)
+
+diff --git a/config/appconfig-mcs/seusers b/config/appconfig-mcs/seusers
+index dc5f1e4..4428da8 100644
+--- a/config/appconfig-mcs/seusers
++++ b/config/appconfig-mcs/seusers
+@@ -1,3 +1,3 @@
+ system_u:system_u:s0-mcs_systemhigh
+-root:root:s0-mcs_systemhigh
+-__default__:user_u:s0
++root:unconfined_u:s0-mcs_systemhigh
++__default__:unconfined_u:s0
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 85ff145..77d7bdc 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -37,6 +37,7 @@ ubac_file_exempt(sysadm_t)
+ ubac_fd_exempt(sysadm_t)
+ 
+ init_exec(sysadm_t)
++init_script_role_transition(sysadm_r)
+ 
+ # Add/remove user home directories
+ userdom_manage_user_home_dirs(sysadm_t)
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index d26fe81..fa46786 100644
+--- a/policy/modules/system/init.if
++++ b/policy/modules/system/init.if
+@@ -803,11 +803,12 @@ interface(`init_script_file_entry_type',`
+ #
+ interface(`init_spec_domtrans_script',`
+ 	gen_require(`
+-		type initrc_t, initrc_exec_t;
++		type initrc_t;
++		attribute init_script_file_type;
+ 	')
+ 
+ 	files_list_etc($1)
+-	spec_domtrans_pattern($1, initrc_exec_t, initrc_t)
++	spec_domtrans_pattern($1, init_script_file_type, initrc_t)
+ 
+ 	ifdef(`distro_gentoo',`
+ 		gen_require(`
+@@ -818,11 +819,11 @@ interface(`init_spec_domtrans_script',`
+ 	')
+ 
+ 	ifdef(`enable_mcs',`
+-		range_transition $1 initrc_exec_t:process s0;
++		range_transition $1 init_script_file_type:process s0;
+ 	')
+ 
+ 	ifdef(`enable_mls',`
+-		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
++		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
+ 	')
+ ')
+ 
+@@ -838,18 +839,19 @@ interface(`init_spec_domtrans_script',`
+ #
+ interface(`init_domtrans_script',`
+ 	gen_require(`
+-		type initrc_t, initrc_exec_t;
++		type initrc_t;
++		attribute init_script_file_type;
+ 	')
+ 
+ 	files_list_etc($1)
+-	domtrans_pattern($1, initrc_exec_t, initrc_t)
++	domtrans_pattern($1, init_script_file_type, initrc_t)
+ 
+ 	ifdef(`enable_mcs',`
+-		range_transition $1 initrc_exec_t:process s0;
++		range_transition $1 init_script_file_type:process s0;
+ 	')
+ 
+ 	ifdef(`enable_mls',`
+-		range_transition $1 initrc_exec_t:process s0 - mls_systemhigh;
++		range_transition $1 init_script_file_type:process s0 - mls_systemhigh;
+ 	')
+ ')
+ 
+@@ -1792,3 +1794,32 @@ interface(`init_udp_recvfrom_all_daemons',`
+ 	')
+ 	corenet_udp_recvfrom_labeled($1, daemon)
+ ')
++
++########################################
++## <summary>
++##	Transition to system_r when execute an init script
++## </summary>
++## <desc>
++##	<p>
++##	Execute a init script in a specified role
++##	</p>
++##	<p>
++##	No interprocess communication (signals, pipes,
++##	etc.) is provided by this interface since
++##	the domains are not owned by this module.
++##	</p>
++## </desc>
++## <param name="source_role">
++##	<summary>
++##	Role to transition from.
++##	</summary>
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
+diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
+index 0280b32..00b4dcf 100644
+--- a/policy/modules/system/unconfined.te
++++ b/policy/modules/system/unconfined.te
+@@ -20,6 +20,11 @@ type unconfined_execmem_t;
+ type unconfined_execmem_exec_t;
+ init_system_domain(unconfined_execmem_t, unconfined_execmem_exec_t)
+ role unconfined_r types unconfined_execmem_t;
++role unconfined_r types unconfined_t;
++role system_r types unconfined_t;
++role_transition system_r unconfined_exec_t unconfined_r;
++allow system_r unconfined_r;
++allow unconfined_r system_r;
+ 
+ ########################################
+ #
+@@ -34,6 +39,8 @@ mcs_killall(unconfined_t)
+ mcs_ptrace_all(unconfined_t)
+ 
+ init_run_daemon(unconfined_t, unconfined_r)
++init_domtrans_script(unconfined_t)
++init_script_role_transition(unconfined_r)
+ 
+ libs_run_ldconfig(unconfined_t, unconfined_r)
+ 
+diff --git a/policy/users b/policy/users
+index c4ebc7e..f300f22 100644
+--- a/policy/users
++++ b/policy/users
+@@ -15,7 +15,7 @@
+ # and a user process should never be assigned the system user
+ # identity.
+ #
+-gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
++gen_user(system_u,, system_r unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
+ 
+ #
+ # user_u is a generic user identity for Linux users who have no
+@@ -25,11 +25,11 @@ gen_user(system_u,, system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+ # permit any access to such users, then remove this entry.
+ #
+ gen_user(user_u, user, user_r, s0, s0)
+-gen_user(staff_u, staff, staff_r sysadm_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
+-gen_user(sysadm_u, sysadm, sysadm_r, s0, s0 - mls_systemhigh, mcs_allcats)
++gen_user(staff_u, user, staff_r sysadm_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
++gen_user(sysadm_u, user, sysadm_r, s0, s0 - mls_systemhigh, mcs_allcats)
+ 
+ # Until order dependence is fixed for users:
+-gen_user(unconfined_u, unconfined, unconfined_r, s0, s0 - mls_systemhigh, mcs_allcats)
++gen_user(unconfined_u, user, unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+ 
+ #
+ # The following users correspond to Unix identities.
+@@ -38,8 +38,4 @@ gen_user(unconfined_u, unconfined, unconfined_r, s0, s0 - mls_systemhigh, mcs_al
+ # role should use the staff_r role instead of the user_r role when
+ # not in the sysadm_r.
+ #
+-ifdef(`direct_sysadm_daemon',`
+-	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+-',`
+-	gen_user(root, sysadm, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r'), s0, s0 - mls_systemhigh, mcs_allcats)
+-')
++gen_user(root, user, sysadm_r staff_r ifdef(`enable_mls',`secadm_r auditadm_r') unconfined_r system_r, s0, s0 - mls_systemhigh, mcs_allcats)
+-- 
+1.7.1
+
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
new file mode 100644
index 0000000..0f954ec
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
@@ -0,0 +1,18 @@
+SUMMARY = "SELinux targeted policy"
+DESCRIPTION = "\
+This is the reference policy for SELinux targeted most of service domains \
+for lock down. \
+Users and admins will login in with unconfined_t domain, so they would have \
+the same access to the system as if SELinux was not enabled.\
+"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
+
+POLICY_NAME = "targeted"
+POLICY_TYPE = "mcs"
+POLICY_MLS_SENS = "0"
+
+include refpolicy_${PV}.inc
+
+SRC_URI += "file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
+	file://refpolicy-unconfined_u-default-user.patch"
-- 
1.7.9.5


