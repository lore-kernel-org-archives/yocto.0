Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11FE8E004F1; Fri, 29 Jul 2016 02:09:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9E5E0045D
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:09:00 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id f6so6591811ith.2
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=RklcrxzRuIwu6DkklihBTgRbVkBYRuCaAWc4jYr6/H4=;
	b=rGxoLIerohtu62PJ3u9TfggIwXWFoyOGols+MaU16xUXoJIXe8tRh+MhDQ1oq3Tfbo
	ywj9HySIaWCKV6M6VvQVYEb9eu/2eXMc9Bl/0d19IjVOy7glgOZPnNpAVmct5750hPFI
	uANwpn/+0H7L/VDndCa8CKBmKGr83ElWM2fvGRQXrvuE9XQBGhuR+XCVqJ8b2FSOIYQC
	BP4gD+nd2lBtVe7na0Ks4oPJ90KPd6A5jI1oPpPqZwawaT/VpkfXdEsg51Ibk+7Nk29x
	m2hMyQEsTZL5X3+4oZCtp7MQQ+Y20RHqLJtxdb1YnSP4sgLtD5jOCCrhUZljbsO6JNRJ
	j28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RklcrxzRuIwu6DkklihBTgRbVkBYRuCaAWc4jYr6/H4=;
	b=BTvEp0WKOsVZXP9/QGrsgzSL2QxUlU+7WeKw9gFLEt5J2ZiM0fNqvHHTrNGCBiQKlh
	lVhZ1+7xm6IQ11EMffV4gWHWrRNrks0ZJwtG36p3uJyVSvf+lMybZ61gylSO3w2UsB7O
	oToCKpxMKNB4bHOTtzDaXBYjNshy5xiwhRFgvlnwRXM9tLiLRmx3gfEx42SckgDwQIAq
	n6kCaWX9Y3qpOiMvq0uzEzoK+Xq7mi8YBxU3ZXCrJ3ARM1u6J0oSgyRb6EBopwZQvocZ
	FgURV6xfD2JVGhtEBSXUYHatY1rEnisy5D77jdEoNFa3dQ2O8RfNHkLTqAumWxdQ+RoK
	L0og==
X-Gm-Message-State: AEkoouszsDy8W1W5dpYVt5+8wIvk0zkxaV7PaLxAk38HkxBTaltIV4+AKsUZPCVDJkTaCA==
X-Received: by 10.36.21.65 with SMTP id 62mr45505487itq.20.1469783339859;
	Fri, 29 Jul 2016 02:08:59 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id u7sm955449ita.21.2016.07.29.02.08.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:08:59 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:38:49 +0530
Message-Id: <1469783329-6890-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 1/8] systemd:unconfined:lib: add systemd services allow rules
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
X-List-Received-Date: Fri, 29 Jul 2016 09:09:02 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

systemd allow rules for systemd service file operations: start, stop, restart
& allow rule for unconfined systemd service.

without this change we are geting avc denials and access denied to perform
operations service file.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...onfined-lib-add-systemd-services-allow-ru.patch | 123 +++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |   9 ++
 2 files changed, 132 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch
new file mode 100644
index 0000000..2b09e1c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch
@@ -0,0 +1,123 @@
+From 0bd77bedc3edab3703738f018cf76c70c8026a16 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Mon, 25 Jul 2016 16:58:59 +0530
+Subject: [PATCH 1/6] systemd:unconfined:lib: add systemd services allow rules
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
+upstream-status: pending
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
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index ce90b13..861bfdc 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -57,4 +57,13 @@ SRC_URI += " \
             file://ftp-add-ftpd_t-to-mlsfilewrite.patch \
            "
 
+
+# systemd policy fixes
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPOLICY_PATCHES}', '', d)}"
+
+SYSTEMD_REFPOLICY_PATCHES = "\
+	file://0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch \
+"
+
+
 include refpolicy_common.inc
-- 
1.9.1


