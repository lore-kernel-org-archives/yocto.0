Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB13BE00F57; Tue,  2 Aug 2016 03:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, URI_HEX autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.1 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3871E00F50
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 03:32:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u72AWgCx003056
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 2 Aug 2016 03:32:42 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 2 Aug 2016 03:32:42 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Aug 2016 06:32:40 -0400
Message-ID: <1470133960-190757-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] refpolicy-targeted: remove duplicate type rules
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
X-List-Received-Date: Tue, 02 Aug 2016 10:32:47 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Remove duplicate type rules from init_t to init_script_file_type,
they have been included by systemd policies. This also fixes the
errors while installing modules for refpolicy-targeted if systemd
support is enabled:

| Conflicting type rules
| Binary policy creation failed at line 327 of \
  .../tmp/work/qemux86-poky-linux/refpolicy-targeted/git-r0/image\
  /var/lib/selinux/targeted/tmp/modules/100/init/cil
| Failed to generate binary
| semodule:  Failed!

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...efpolicy-remove-duplicate-type_transition.patch | 46 ++++++++++++++++++++++
 .../refpolicy/refpolicy-targeted_2.20151208.bb     |  1 +
 .../refpolicy/refpolicy-targeted_git.bb            |  1 +
 3 files changed, 48 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition.patch

diff --git a/recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition.patch b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition.patch
new file mode 100644
index 0000000..b6c64c6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition.patch
@@ -0,0 +1,46 @@
+From e1693b640f889818091c976a90041ea6a843fafd Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Wed, 17 Feb 2016 08:35:51 -0500
+Subject: [PATCH] remove duplicate type_transition
+
+Remove duplicate type rules from init_t to init_script_file_type,
+they have been included by systemd policies. This also fixes the
+errors while installing modules for refpolicy-targeted if systemd
+support is enabled:
+
+| Conflicting type rules
+| Binary policy creation failed at line 327 of \
+  .../tmp/work/qemux86-poky-linux/refpolicy-targeted/git-r0/image\
+  /var/lib/selinux/targeted/tmp/modules/100/init/cil
+| Failed to generate binary
+| semodule:  Failed!
+
+Upstream-Status: Inappropriate
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/system/init.if | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/policy/modules/system/init.if b/policy/modules/system/init.if
+index f50c6e1..b445886 100644
+--- a/policy/modules/system/init.if
++++ b/policy/modules/system/init.if
+@@ -1307,12 +1307,12 @@ interface(`init_spec_domtrans_script',`
+ #
+ interface(`init_domtrans_script',`
+ 	gen_require(`
+-		type initrc_t;
++		type initrc_t, initrc_exec_t;
+ 		attribute init_script_file_type;
+ 	')
+ 
+ 	files_list_etc($1)
+-	domtrans_pattern($1, init_script_file_type, initrc_t)
++	domtrans_pattern($1, initrc_exec_t, initrc_t)
+ 
+ 	ifdef(`enable_mcs',`
+ 		range_transition $1 init_script_file_type:process s0;
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb
index b169604..f795bf7 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_2.20151208.bb
@@ -17,4 +17,5 @@ include refpolicy_${PV}.inc
 SRC_URI += " \
             file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
             file://refpolicy-unconfined_u-default-user.patch \
+            ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-remove-duplicate-type_transition.patch', '', d)} \
            "
diff --git a/recipes-security/refpolicy/refpolicy-targeted_git.bb b/recipes-security/refpolicy/refpolicy-targeted_git.bb
index b169604..f795bf7 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_git.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_git.bb
@@ -17,4 +17,5 @@ include refpolicy_${PV}.inc
 SRC_URI += " \
             file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
             file://refpolicy-unconfined_u-default-user.patch \
+            ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-remove-duplicate-type_transition.patch', '', d)} \
            "
-- 
2.8.1


