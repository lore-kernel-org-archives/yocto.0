Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2DC1E00F51; Mon, 29 Aug 2016 06:36:58 -0700 (PDT)
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
	*      [209.85.220.65 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E82D0E00F25
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:36:41 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id vy10so9007063pac.0
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ManFzzpU/+z/7Hu8rHRKcidvCE/eJH2n76BXTnvCwFc=;
	b=SqYScJm5yJA6ggvDYvGxt9canfroGUmQuPLSOWVBzAR7xhOYfQxyUlyy8NuknFcGOL
	AVvovv3RUDSK60rXluqsBIamggr21RIqfsxa91pNNh29g7ZNRWFCwOkqgJoDV5fW3zBv
	6/T9C94SrnZhM+h2v6EV3VKCTmXEVt2mmv8sMDn21SJZcyGPPMmyzuPB/CzI3Ey4KGNS
	e7tye/Wp+5GWjNPsfW0RnZBtbEfayN8wabgnpdUYS2irIqAxJRdYhRUL9KLzZjMKrVRf
	4r6S6xoq7+X//9nX/iXIr/klLTf7QSOjVEU88R/tsxqeUAfMBgewKOxSG/ZxbU89x0B0
	OxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ManFzzpU/+z/7Hu8rHRKcidvCE/eJH2n76BXTnvCwFc=;
	b=VZx8nMr5u9K9MYzDXALyU9Z+pDSHnOxxRtZ7779eIUEK26G9je81K4doTcwVygOy8N
	hpTc5/k2VycJtl8AK06andptiMOWzGFaXIXYtZlMlbPvsxzg29fAJd0Uyhb6dHzBbfGc
	AQB3txEOb97uLDoe5nCBwE27RKdEoVdYCce8agsB99Ct1OrRWi6gEZBwacypZC0O7R8s
	ojRG7D7pleMhCZuedneGKaBrTA66fRtXGaWUdE1BA3Mxd3NyeG74dbV2xBJItC9Lv1UZ
	rRPvqG0OHC1cyHk5jRrtKZ4iTjxW6KHXx4HhzYuBdlsJGeSCRIPcd0gEFKBilX5ZSaN7
	+Q9Q==
X-Gm-Message-State: AE9vXwMlBQi6T7+/fMUPdf91lGc+xBjrq3KdiU5vhhRG/63HuPYv80Lw9R5rAcgM24Oneg==
X-Received: by 10.67.1.35 with SMTP id bd3mr32764263pad.16.1472477801077;
	Mon, 29 Aug 2016 06:36:41 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	c64sm49581523pfg.35.2016.08.29.06.36.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:36:40 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:06:33 +0530
Message-Id: <1472477793-25834-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 2/9] refpolicy-minimum: audit: logging: getty: audit related allow rules
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
X-List-Received-Date: Mon, 29 Aug 2016 13:36:58 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rules for audit.log file & resolve dependent avc denials.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-audit-logging-getty-audit-related-.patch | 67 ++++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  1 +
 2 files changed, 68 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch
new file mode 100644
index 0000000..23bc397
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch
@@ -0,0 +1,67 @@
+From edbc234baecfbf5b8e2dbadc976750071d5e7f7f Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:51:44 +0530
+Subject: [PATCH 2/9] refpolicy-minimum: audit: logging: getty: audit related
+ allow rules
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
+Upstream-Status: Pending
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
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 16592e5..9e1dc9b 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -73,4 +73,5 @@ SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPO
 
 SYSTEMD_REFPOLICY_PATCHES = " \
         file://0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch \
+	file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
 	"
-- 
1.9.1


