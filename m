Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF734E00F24; Mon, 29 Aug 2016 06:36:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB84E00F1A
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:36:03 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y134so9378515pfg.3
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ocU9JdDi0MT/aXlfpG5yP8aRqjuB4vSXgbzYbU5lyhA=;
	b=wx17s4NSRyBNlMHBbrds7hV/loe0xOSdIjwfDF07A1GZCyJAhZmKxgpWRSDPGSy3+X
	RBs6Up9k12z1Zw797jd8K2dsRsUr2HzyXO4DnjUOFTYG7DwGE9J1DZvN7a//LW1rVTUm
	0CWTulvZj6fh3vKPtSMskH99MNS/1XSkcbT1w8gZMXy9fzw5DcVuJ/qMnmMIx8lDjJgF
	R4EAaehyiBggx/cCxUmn6PiRaMI4Illn8UoZdEKU8a+WIswqokvyOl6b2qchrWfNYH+V
	HwwaLnjB5gWko6vJW+hv2+CB1/1oORcQTT0K5i7w7KfThbgs2C0yOC+G6xhDjbnayAIx
	oRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ocU9JdDi0MT/aXlfpG5yP8aRqjuB4vSXgbzYbU5lyhA=;
	b=V+WaVw/WI8ZvWcJjgok3gWqQai3k9OyLxNZAhfAsuzrPmkmZfe1EA211BFK1HXcWb0
	MjsooK6KjzcwBJuW5LX3ddigiGa1tBXO6CfADdjNk5RFEYqKTz5VjN26l7xlumsisExF
	WN0Hw2jo5EpGqK9Wfa9qzcu0q5tAj92rVXSIYsgF/qDWOc/+AvfrhaSEG9D2eNWoWbyI
	BwspUkhSMJLXZmm3e+bt1T64jCAhvQdWgLZbDjhphtmhNgZQpS+Sy+51Y4KOnw3b0MYf
	jQlG6GbAtvDF3RXUlqu4gqymSII5KUzE9LLGxu7Anf/W6Pdbi2vjCTY5yoOpr0gKdAK+
	eDeg==
X-Gm-Message-State: AE9vXwO36VO4j05tA7THYuGl2oDIwOCvEfkYFc2BVwyL8MLGl61aWgLLxQJv9tSODz1/ow==
X-Received: by 10.98.12.200 with SMTP id 69mr32756483pfm.15.1472477762648;
	Mon, 29 Aug 2016 06:36:02 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	u1sm49595382pfu.12.2016.08.29.06.36.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:36:01 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:05:39 +0530
Message-Id: <1472477739-25795-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 1/9] refpolicy-minimum: systemd:unconfined:lib: add systemd services allow rules
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
X-List-Received-Date: Mon, 29 Aug 2016 13:36:10 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

systemd allow rules for systemd service file operations: start, stop, restart
& allow rule for unconfined systemd service.

without this change we are geting avc denials and access denied to perform
operations on service file.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-systemd-unconfined-lib-add-systemd.patch | 124 +++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |   7 ++
 2 files changed, 131 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch b/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
new file mode 100644
index 0000000..7a72f18
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
@@ -0,0 +1,124 @@
+From 17507a42ce91376b00069ff22b43786894910ed6 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:51:32 +0530
+Subject: [PATCH 1/9] refpolicy-minimum: systemd:unconfined:lib: add systemd
+ services allow rules
+
+systemd allow rules for systemd service file operations: start, stop, restart
+& allow rule for unconfined systemd service.
+
+without this change we are getting these errors:
+:~# systemctl status selinux-init.service
+Failed to get properties: Access denied
+
+:~# systemctl stop selinux-init.service
+Failed to stop selinux-init.service: Access denied
+
+:~# systemctl restart  selinux-init.service
+audit: type=1107 audit: pid=1 uid=0 auid=4294967295 ses=4294967295 subj=
+system_u:system_r:init_t:s0 msg='avc:  denied  { start } for auid=n/a uid=0
+gid=0 path="/lib/systemd/system/selinux-init.service" cmdline="systemctl
+restart selinux-init.service" scontext=unconfined_u:unconfined_r:
+unconfined_t:s0-s0:c0.c1023 tcontext=system_u:object_r:lib_t:s0 tclass=service
+
+Upstream-Status: Pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/init.te       |  6 +++++-
+ policy/modules/system/libraries.te  |  3 +++
+ policy/modules/system/systemd.if    | 40 +++++++++++++++++++++++++++++++++++++
+ policy/modules/system/unconfined.te |  6 ++++++
+ 4 files changed, 54 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index d710fb0..f9d7114 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -1100,4 +1100,8 @@ optional_policy(`
+ # systemd related allow rules
+ allow kernel_t init_t:process dyntransition;
+ allow devpts_t device_t:filesystem associate;
+-allow init_t self:capability2 block_suspend;
+\ No newline at end of file
++allow init_t self:capability2 block_suspend;
++allow init_t self:capability2 audit_read;
++
++allow initrc_t init_t:system { start status };
++allow initrc_t init_var_run_t:service { start status };
+diff --git a/policy/modules/system/libraries.te b/policy/modules/system/libraries.te
+index 0f5cd56..df98fe9 100644
+--- a/policy/modules/system/libraries.te
++++ b/policy/modules/system/libraries.te
+@@ -144,3 +144,6 @@ optional_policy(`
+ optional_policy(`
+ 	unconfined_domain(ldconfig_t)
+ ')
++
++# systemd: init domain to start lib domain service
++systemd_service_lib_function(lib_t)
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
+index 3cd6670..822c03d 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -171,3 +171,43 @@ interface(`systemd_start_power_units',`
+ 
+ 	allow $1 power_unit_t:service start;
+ ')
++
++
++########################################
++## <summary>
++## Allow specified domain to start stop reset systemd service
++## </summary>
++## <param name="domain">
++## <summary>
++## Domain to not audit.
++## </summary>
++## </param>
++#
++interface(`systemd_service_file_operations',`
++         gen_require(`
++               class service { start status stop };
++         ')
++
++	allow $1 lib_t:service { start status stop };
++
++')
++
++
++########################################
++## <summary>
++## Allow init domain to start lib domain service
++## </summary>
++## <param name="domain">
++## <summary>
++## Domain to not audit.
++## </summary>
++## </param>
++#
++interface(`systemd_service_lib_function',`
++         gen_require(`
++               class service start;
++         ')
++
++	allow initrc_t $1:service start;
++
++')
+diff --git a/policy/modules/system/unconfined.te b/policy/modules/system/unconfined.te
+index 99cab31..87a1b03 100644
+--- a/policy/modules/system/unconfined.te
++++ b/policy/modules/system/unconfined.te
+@@ -220,3 +220,9 @@ unconfined_domain_noaudit(unconfined_execmem_t)
+ optional_policy(`
+ 	unconfined_dbus_chat(unconfined_execmem_t)
+ ')
++
++
++# systemd: specified domain to start stop reset systemd service
++systemd_service_file_operations(unconfined_t)
++
++allow unconfined_t init_t:system reload;
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 04ceadd..16592e5 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -67,3 +67,10 @@ prepare_policy_store () {
 		cp ${MOD_FILE} ${MOD_DIR}/hll
 	done
 }
+
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPOLICY_PATCHES}', '', d)}"
+
+
+SYSTEMD_REFPOLICY_PATCHES = " \
+        file://0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch \
+	"
-- 
1.9.1


