Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F0C9E00CE8; Fri, 29 Jul 2016 02:11:49 -0700 (PDT)
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
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35C59E00C28
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:11:25 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id i5so14788649wmg.2
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=oJf4aPFDCHGsDI5ib/Y0ZIRmVVKwu2y3SNUp60hkEdo=;
	b=svFTHxXUCLleMHaVhpi5eIE6ICR5sBeWBEXErKVZV93v6Wc0COEdCVedIsehpVt+kZ
	lbO0GWpkTwgNpOVjLYAaUjbAzVNX4uzKS5X2XkvJ6OiMlQoSBt6G41cbGL33ud/uIywF
	VvJUCihlnuobb7VZH3M84QAErprPcCKVDQ+5CSgVpvfhSidTFNTgP7B3DMoWM7pK9tFD
	xntl0Ev+4Xf6wvWJjU71VPyP50k/43E4pLbzVKkeVEIefpjpkFpnZFQ/s85j1MQR8O9y
	idffOmgE1nHAhQiu64YS2OijhIYDqd/txFI7cxpVMUavHwyazuCqlVjkfZlzFXpsbzi5
	3zBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=oJf4aPFDCHGsDI5ib/Y0ZIRmVVKwu2y3SNUp60hkEdo=;
	b=U4Jd7Klzi3kjflMghwBZ/2jO0uUweJtEolXGsNdExKHN2QoKZQT67dhbguvqAa8qpt
	h2Qr8NYO0Pq7fkyCLERWQbp7YcCsdU6aKXL3OsqSdPGU/V2QgQnUSb+tWH9D25KDyJaE
	GTGMG/g+W0WEXAji94w9zosJuzbzkvZO7GCOWvN+UtytN8sghxR9jbb1RiT42I+HrmqY
	CKeA2+ImdlanZOApWo/Gq+9hnBdnqVbeelDEx0tu5+kYn9nobUik18ibLZnGltktm6Jf
	AxxpFjh76m0YQLDjJ2/Oi7rVdpCVavGohwuY3nsx/XcTEn4kAvCdwvIzDKQei6+P6SpB
	KczA==
X-Gm-Message-State: ALyK8tIg26IQfOEATsOmvAICihejFHL5jVP5h5OLtIm5p5GC6VhoR8UaxmwA8OOej3H/zQ==
X-Received: by 10.28.20.77 with SMTP id 74mr67156491wmu.1.1469783484577;
	Fri, 29 Jul 2016 02:11:24 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	a203sm2510807wma.0.2016.07.29.02.11.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:11:24 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:41:19 +0530
Message-Id: <1469783479-7276-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 8/8] systemd: fix for systemd tmp-files services
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
X-List-Received-Date: Fri, 29 Jul 2016 09:11:49 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

fix for systemd tmp files setup services:
systemd-journal-flush.service & systemd-logind.service.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...ystemd-fix-for-systemd-tmp-files-services.patch | 110 +++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |   1 +
 2 files changed, 111 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0008-systemd-fix-for-systemd-tmp-files-services.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0008-systemd-fix-for-systemd-tmp-files-services.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0008-systemd-fix-for-systemd-tmp-files-services.patch
new file mode 100644
index 0000000..385e6e2
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0008-systemd-fix-for-systemd-tmp-files-services.patch
@@ -0,0 +1,110 @@
+From 2156e7428c5f58f3b13cfa95a1a4789299d2c448 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Wed, 27 Jul 2016 19:42:43 +0530
+Subject: [PATCH 8/8] systemd: fix for systemd tmp-files services
+
+fix for systemd tmp files setup service while using refpolicy-minimum and
+systemd as init manager.
+
+these allow rules require kernel domain & files access, so added interfaces
+at systemd.te to merge these allow rules.
+
+without these changes we are getting avc denails like these and below
+systemd services failure:
+
+audit[]: AVC avc:  denied  { getattr } for  pid=232 comm="systemd-tmpfile"
+path="/var/tmp" dev="mmcblk2p2" ino=4993 scontext=system_u:system_r:systemd
+_tmpfiles_t:s0 tcontext=system_u:object_r:tmp_t:s0 tclass=lnk_file
+
+audit[]: AVC avc:  denied  { search } for  pid=232 comm="systemd-tmpfile"
+name="kernel" dev="proc" ino=9341 scontext=system_u:system_r:
+systemd_tmpfiles_t:s0 tcontext=system_u:object_r:sysctl_kernel_t:s0
+tclass=dir permissive=0
+
+[FAILED] Failed to start Create Static Device Nodes in /dev.
+See 'systemctl status systemd-tmpfiles-setup-dev.service' for details.
+
+[FAILED] Failed to start Create Volatile Files and Directories.
+See 'systemctl status systemd-tmpfiles-setup.service' for details.
+
+upstream-status: pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/kernel/files.if   | 19 +++++++++++++++++++
+ policy/modules/kernel/kernel.if  | 23 +++++++++++++++++++++++
+ policy/modules/system/systemd.te |  3 +++
+ 3 files changed, 45 insertions(+)
+
+diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
+index 1cedea2..4ea7d55 100644
+--- a/policy/modules/kernel/files.if
++++ b/policy/modules/kernel/files.if
+@@ -6729,3 +6729,22 @@ interface(`files_unconfined',`
+ 
+ 	typeattribute $1 files_unconfined_type;
+ ')
++
++########################################
++## <summary>
++##	systemd tmp files access to kernel tmp files domain
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`systemd_service_allow_kernel_files_domain_to_tmp_t',`
++	gen_require(`
++	type tmp_t;
++        class lnk_file getattr;
++	')
++
++	allow $1 tmp_t:lnk_file getattr;
++')
+diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
+index f1130d1..4604441 100644
+--- a/policy/modules/kernel/kernel.if
++++ b/policy/modules/kernel/kernel.if
+@@ -3323,3 +3323,26 @@ interface(`kernel_unconfined',`
+ 	typeattribute $1 kern_unconfined;
+ 	kernel_load_module($1)
+ ')
++
++########################################
++## <summary>
++##	systemd tmp files access to kernel sysctl domain
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t',`
++         gen_require(`
++                type sysctl_kernel_t;
++                class dir search;
++                class file { open read };
++         ')
++
++        allow $1 sysctl_kernel_t:dir search;
++        allow $1 sysctl_kernel_t:file { open read };
++
++')
++
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 22021eb..8813664 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -269,3 +269,6 @@ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
+ allow systemd_tmpfiles_t self:capability net_admin;
+ 
+ allow systemd_tmpfiles_t init_t:file { open getattr read };
++
++systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t(systemd_tmpfiles_t)
++systemd_service_allow_kernel_files_domain_to_tmp_t(systemd_tmpfiles_t)
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index 74f7e19..8a73293 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -69,6 +69,7 @@ SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0005-init-fix-reboot-with-systemd-as-init-manager.patch \
 	file://0006-systemd-mount-enable-requiried-refpolicy-booleans.patch \
 	file://0007-systemd-fix-for-login-journal-service.patch \
+	file://0008-systemd-fix-for-systemd-tmp-files-services.patch \
 "
 
 
-- 
1.9.1


