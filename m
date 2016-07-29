Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51737E00C9A; Fri, 29 Jul 2016 02:10:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA42E00B1A
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:05 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id d65so6668818ith.0
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=RRuLpSOPwdd14eX4zhZW24vm5fUV3U97I/CUs3RwtPg=;
	b=Z8JSgp4NnOJon3nae5MnpqcGrZbCKCfKC85hkeH5lSPyOf6JVdn+VuwVwFIs4aFkYr
	Bf+smA5Y8XYXS4yNUiTczeFdlFOPu9ehzyeE+yaffk+8SbTUpZCi+xuNeSLTCswAbBri
	NElzWHoce9euOtrYxiEKwmup+bMwKqNOk6nQu3/DSwSOqq7sVraFYtvDQdfdCBO9vw21
	VZtz13+8T8QGSJ8an+3pD6vWOXe9h7sJ3faWwCayADUJWq9bhRvE6Yvf2JO7rGf8jeZ5
	wzP3cGBSOxJEeVhKy8KyUDb6NGK57RZTcdGFdL4bg8BYtGtak+WCh5zFUlJoJo436h5B
	Pc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RRuLpSOPwdd14eX4zhZW24vm5fUV3U97I/CUs3RwtPg=;
	b=BZXlOwcPt1m893UiAZ46HPlYRBw97NUgKnvW1oN4T3cVN2lQbWSQMWM1jI82i5HGjm
	bq8zOO07bTD3+6nrRnizqtq/rj7fMkkL1+808WExI0Pr7jbiQu8cqL0C0FAAl/bgtRva
	/yT3PHEi1/kwVSEku0G5kMoivMiDiYDWRqQZwoUWdYA59EQLXwp4JsBAR2isRO6O6zA3
	35SH13Y8CIAMJRFEp942G+HRv+Uxnzj+znBdhcPnVJdIWusgrPKGb7+XrXs8d/wPqbw4
	cSAye2rF4Z5R1h5P9mmF6oBaIY5vsxFGtpZtHhfgapRbC3twFMtXrqKQMPaZgZi6VpX8
	9Nng==
X-Gm-Message-State: AEkoouvxSRL/wBsg4qEqwkV1g3DSW/kSbhKkjoieF9xKV6hQ0+JxtL8Kwi8kYqDsgRQPjg==
X-Received: by 10.36.208.143 with SMTP id m137mr7443itg.32.1469783404630;
	Fri, 29 Jul 2016 02:10:04 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id 69sm975592itf.6.2016.07.29.02.10.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:10:04 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:39:59 +0530
Message-Id: <1469783399-7026-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 3/8] systemd: mount: logging: authlogin: add allow rules
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
X-List-Received-Date: Fri, 29 Jul 2016 09:10:24 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rules for avc denails for systemd, mount, logging & authlogin
modules. without this change we are  getting avc. denials from these
modules.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...d-mount-logging-authlogin-add-allow-rules.patch | 92 ++++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |  1 +
 2 files changed, 93 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0003-systemd-mount-logging-authlogin-add-allow-rules.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0003-systemd-mount-logging-authlogin-add-allow-rules.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0003-systemd-mount-logging-authlogin-add-allow-rules.patch
new file mode 100644
index 0000000..8e330ce
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0003-systemd-mount-logging-authlogin-add-allow-rules.patch
@@ -0,0 +1,92 @@
+From 9a9490491e6d4c30249033c84c21634dac988b06 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Mon, 25 Jul 2016 18:10:28 +0530
+Subject: [PATCH 3/6] systemd: mount: logging: authlogin: add allow rules
+
+add allow rules for avc denails for systemd, mount, logging & authlogin
+modules.
+
+without this change we are getting avc denial like these:
+
+type=AVC msg=audit(): avc:  denied  { sendto } for pid=893 comm="systemd-
+tmpfile" path="/run/systemd/journal/socket" scontext=system_u:system_r:
+systemd_tmpfiles_t:s0 tcontext=system_u:system_r:initrc_t:s0 tclass=
+unix_dgram_socket permissive=0
+
+type=AVC msg=audit(): avc:  denied  { open } for  pid=703 comm="systemd-
+tmpfile" path="/proc/1/environ" dev="proc" ino=8841 scontext=system_u:
+system_r:systemd_tmpfiles_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=
+file permissive=0
+
+type=AVC msg=audit(): avc:  denied  { read write } for  pid=486 comm="mount"
+path="socket:[9717]" dev="sockfs" ino=9717 scontext=system_u:system_r:
+mount_t:s0 tcontext=system_u:system_r:initrc_t:s0 tclass=udp_socket
+
+type=AVC msg=audit(): avc:  denied  { unix_read unix_write } for  pid=292
+comm="syslogd" key=1095648583  scontext=system_u:system_r:syslogd_t:s0
+tcontext=system_u:system_r:syslogd_t:s0 tclass=shm permissive=1
+
+upstream-status: pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/authlogin.te | 2 ++
+ policy/modules/system/logging.te   | 7 ++++++-
+ policy/modules/system/mount.te     | 3 +++
+ policy/modules/system/systemd.te   | 6 ++++++
+ 4 files changed, 17 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
+index f80dfcb..5fab54a 100644
+--- a/policy/modules/system/authlogin.te
++++ b/policy/modules/system/authlogin.te
+@@ -464,3 +464,5 @@ optional_policy(`
+ 	samba_read_var_files(nsswitch_domain)
+ 	samba_dontaudit_write_var_files(nsswitch_domain)
+ ')
++
++allow chkpwd_t proc_t:filesystem getattr;
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index fdf86ef..107db03 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -576,4 +576,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create open read append };
+ allow auditd_t tmpfs_t:dir { open read search add_name write getattr search };
+ allow auditd_t initrc_t:unix_dgram_socket sendto;
+ 
+-allow klogd_t initrc_t:unix_dgram_socket sendto;
+\ No newline at end of file
++allow klogd_t initrc_t:unix_dgram_socket sendto;
++
++allow syslogd_t self:shm create;
++allow syslogd_t self:sem { create read unix_write write };
++allow syslogd_t self:shm { read unix_read unix_write write };
++allow syslogd_t tmpfs_t:file { read write };
+diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
+index 1c2fc33..b699309 100644
+--- a/policy/modules/system/mount.te
++++ b/policy/modules/system/mount.te
+@@ -229,3 +229,6 @@ optional_policy(`
+ 	files_etc_filetrans_etc_runtime(unconfined_mount_t, file)
+ 	unconfined_domain(unconfined_mount_t)
+ ')
++
++allow mount_t proc_t:filesystem getattr;
++allow mount_t initrc_t:udp_socket { read write };
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index fdb9fef..734d455 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -262,3 +262,9 @@ tunable_policy(`systemd_tmpfiles_manage_all',`
+ 	files_relabel_non_security_dirs(systemd_tmpfiles_t)
+ 	files_relabel_non_security_files(systemd_tmpfiles_t)
+ ')
++
++allow systemd_tmpfiles_t init_t:dir search;
++allow systemd_tmpfiles_t proc_t:filesystem getattr;
++allow systemd_tmpfiles_t init_t:file read;
++allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
++allow systemd_tmpfiles_t self:capability net_admin;
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index 4d07e62..c051aec 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -64,6 +64,7 @@ SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPO
 SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch \
 	file://0002-audit-logging-getty-audit-related-allow-rules.patch \
+	file://0003-systemd-mount-logging-authlogin-add-allow-rules.patch \
 "
 
 
-- 
1.9.1


