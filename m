Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81CC4E009E7; Fri, 29 Jul 2016 02:10:08 -0700 (PDT)
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
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8ADCE009E7
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:09:52 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id g86so9267889ioj.1
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=6os2/r/A/TJkKyb+aSdl+J+zzfO1/N7Vg+ZuvFd2wro=;
	b=jgGgWMkL3lA5ZpFLGspEtE9mSKtiELBGnD6H6juAUmLbOZ8DKgsQ5zthAoandjnhWS
	gvGpH4fOg1h0Xq3NagVdXk89O7/UNqRbHs1T1cObTfJqDkZfNiflw2GlOEB9x7gFN2sd
	oJnkYCHbxB9XjNz8AK8bvcUDAokYZr+nXf/RuM1oQWHFw6S6TJv5UfEEBdLRZeU/HZFt
	tVY4b/VOiqq6mT+Yb4kAu6mssDpZHMsGKZzE8Up3yg3OEzwmfIf2bg/YcOT9v9kascoU
	XgAmNq11z1/KegDLYU6+8rTqSuzpOs2I5sVQpZJFlRH2rQj8N0CQA3QGeslHaKmIw09X
	KTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6os2/r/A/TJkKyb+aSdl+J+zzfO1/N7Vg+ZuvFd2wro=;
	b=ljpDgw0sGjVbj0n5+Qti3WHLOsmNZnXtnPrGxpprv17DYmT95i6+vVeRuCD4EPCNv8
	c8GqFCGM1TVXqOsFV5aMqsz6j+HH5q/bRt1P4mX91pGzyDeprqWXuEjCeGxZwJZYuTtX
	UAp0DRonfopk9/uBoYQ9Mfqzp4zIeWiKOYH37jD7fUN89En+XNipXn6ndWfZq5usFV55
	h/ev+kzEkucvx56oVJ3DdGl3n49koA0L2O5br5QeCwOxbIgX9lOuv9XM3PLRbXnZEnW3
	8JikKfS/nPxVxzY7JXmVmdQuTzaIQ3ddLrSYnQ8AckwCPr7/mjxuPG5omXCPsPISnSFI
	hSqw==
X-Gm-Message-State: AEkoouvdnYKaAEO4hxT67PzSkD6kVlTW8R8kUf9YifcOpF2ZRJZehh0t0Dn6Xuh9hXU2mw==
X-Received: by 10.107.15.42 with SMTP id x42mr43090099ioi.57.1469783391695;
	Fri, 29 Jul 2016 02:09:51 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id j63sm958491itj.19.2016.07.29.02.09.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:09:51 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:39:47 +0530
Message-Id: <1469783387-6979-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 2/8] audit: logging: getty: audit related allow rules
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
X-List-Received-Date: Fri, 29 Jul 2016 09:10:08 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rules for audit.log file & resolve dependent avc denials.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...t-logging-getty-audit-related-allow-rules.patch | 66 ++++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |  1 +
 2 files changed, 67 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0002-audit-logging-getty-audit-related-allow-rules.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0002-audit-logging-getty-audit-related-allow-rules.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0002-audit-logging-getty-audit-related-allow-rules.patch
new file mode 100644
index 0000000..e0c0132
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0002-audit-logging-getty-audit-related-allow-rules.patch
@@ -0,0 +1,66 @@
+From 674a1c03a08bae583e1a50acd48489dd2d4f3f33 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Mon, 25 Jul 2016 17:44:13 +0530
+Subject: [PATCH 2/6] audit: logging: getty: audit related allow rules
+
+add allow rules for audit.log file & resolve dependent avc denials.
+
+without this change we are getting audit avc denials mixed into bootlog &
+audit other avc denials.
+
+audit: type=1400 audit(): avc:  denied  { getattr } for  pid=217 comm="mount"
+name="/" dev="proc" ino=1 scontext=system_u:system_r:mount_t:s0 tcontext=system_0
+audit: type=1400 audit(): avc:  denied  { sendto } for  pid=310 comm="klogd"
+path="/run/systemd/journal/dev-log" scontext=sy0
+audit: type=1400 audit(): avc:  denied  { sendto } for  pid=310 comm="klogd"
+path="/run/systemd/journal/dev-log" scontext=system_u:system_r:klogd_t:s0
+audit(): avc:  denied  { open } for  pid=540 comm="agetty" path="/var/
+volatile/log/wtmp" dev="tmpfs" ino=9536 scontext=system_u:system_r:getty_t
+:s0 tcontext=system_u:object_r:tmpfs_t:s0 tclass=file permissive=0
+
+upstream-status: pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/getty.te   | 3 +++
+ policy/modules/system/logging.te | 8 ++++++++
+ 2 files changed, 11 insertions(+)
+
+diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
+index f6743ea..84eaf77 100644
+--- a/policy/modules/system/getty.te
++++ b/policy/modules/system/getty.te
+@@ -139,3 +139,6 @@ optional_policy(`
+ optional_policy(`
+ 	udev_read_db(getty_t)
+ ')
++
++allow getty_t tmpfs_t:dir search;
++allow getty_t tmpfs_t:file { open write lock };
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 9b18aad..fdf86ef 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -238,6 +238,7 @@ allow audisp_t self:unix_stream_socket create_stream_socket_perms;
+ allow audisp_t self:unix_dgram_socket create_socket_perms;
+ 
+ allow audisp_t auditd_t:unix_stream_socket rw_socket_perms;
++allow audisp_t initrc_t:unix_dgram_socket sendto;
+ 
+ manage_sock_files_pattern(audisp_t, audisp_var_run_t, audisp_var_run_t)
+ files_pid_filetrans(audisp_t, audisp_var_run_t, sock_file)
+@@ -569,3 +570,10 @@ optional_policy(`
+ 	# log to the xconsole
+ 	xserver_rw_console(syslogd_t)
+ ')
++
++
++allow auditd_t tmpfs_t:file { getattr setattr create open read append };
++allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
++allow auditd_t initrc_t:unix_dgram_socket sendto;
++
++allow klogd_t initrc_t:unix_dgram_socket sendto;
+\ No newline at end of file
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index 861bfdc..4d07e62 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -63,6 +63,7 @@ SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPO
 
 SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch \
+	file://0002-audit-logging-getty-audit-related-allow-rules.patch \
 "
 
 
-- 
1.9.1


