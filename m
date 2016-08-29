Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76CC4E00F2C; Mon, 29 Aug 2016 06:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04E0CE00F26
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:38:49 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id cf3so9017949pad.2
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=UJ9EOyiYDU6Lj65OlY46ypuG7xC5jOQJFywSPS0I9bY=;
	b=ooIgW/AiKRGAFQM6Qq08UtINfuMZAj5Yj3cdP65OccHT6I1Tp3ZvVejR2hv+1Ydozf
	S1sYMnzFVgRTEygg0yCSR0zpJ80Vr0lyvBxtlgPxtDlrNEGqcvmDJZwELQKC8dlLTMYR
	aTpp3trJ4QmxCWd4aCp2CwI/W+xwvkH8+3MFTFHwV8ef5V7L+aYNzgE4/9O0NiRoRRyf
	LeM3LFlFDt7rZ9PudSDX6qtDk2MHQyy1OTJ/0QlkEJ4bB3pSdg4xVW3Jo10IIK5HlQaf
	n//JH+KdZV3zntlsR22fdp2yVUl68FJFAePeIq0rOOnoXgH3hIgZZvDa1i/Tr0mxgZdE
	PfAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=UJ9EOyiYDU6Lj65OlY46ypuG7xC5jOQJFywSPS0I9bY=;
	b=P8dqMTkQUt8LBA5ZBwKNj597ovRP3X5h2Cg0cdrZi1Q/M9v51PMcNAhJ6uVSH/FNH0
	quqYwPJVbVryEzXRzo3Fdbl3DvFZEhUDI9PK9IFhnCSyADKqvr3VKbfGo1m2R/cyjEWV
	zXobfRoiv2KNlWPzZJE+lUigeT9B60U7Jyv0doehMF75hnXc1gM5+NXlsilUqyqc3BTf
	SVNXlfFa+zKrv0O3T3V1ND0jMSB2HSVZsjs9BTlL/LrCHY5tl34ULpWpkWRSSgkOeUfD
	QSIb6/uZfhxMwjIeA0ugpLMagX8oBPcvJJV91+0Zz4nJbCqfNXaYZnsAO5EA72Vnq77P
	+OgA==
X-Gm-Message-State: AE9vXwM/oi6UKdmQySg94OhBSV+Mv8TPljvIcb2+QtMLSJvevjpE8cWZzxrMecuPT6Y0eQ==
X-Received: by 10.66.2.135 with SMTP id 7mr32696369pau.136.1472477929139;
	Mon, 29 Aug 2016 06:38:49 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	s1sm49684463paz.47.2016.08.29.06.38.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:38:48 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:08:43 +0530
Message-Id: <1472477923-26063-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 8/9] refpolicy-minimum: systemd: fix for systemd tmp-files services
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
X-List-Received-Date: Mon, 29 Aug 2016 13:39:21 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

fix for systemd tmp files setup services:
systemd-journal-flush.service & systemd-logind.service.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-systemd-fix-for-systemd-tmp-files-.patch | 111 +++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |   1 +
 2 files changed, 112 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
new file mode 100644
index 0000000..a7338e1
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
@@ -0,0 +1,111 @@
+From ec96260a28f9aae44afc8eec0e089bf95a36b557 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:54:17 +0530
+Subject: [PATCH 8/9] refpolicy-minimum: systemd: fix for systemd tmp-files
+ services
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
+Upstream-Status: Pending
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
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 7312ada..9f01492 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -79,4 +79,5 @@ SYSTEMD_REFPOLICY_PATCHES = " \
 	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
 	file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
 	file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
+	file://0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch \
 	"
-- 
1.9.1


