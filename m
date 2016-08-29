Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38029E00F5C; Mon, 29 Aug 2016 06:38:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
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
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09202E00F4C
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:38:32 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id hh10so9026593pac.1
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=4BZci4LZAIhHEuFx7u0V/ZKdgx9rkBnMvuhCN36tLLw=;
	b=nj48eY3Y/fnFah2qQF7cihXGkmKz6Ihwmes9S1dtuS/HGP1x21UFcu48j8sZvO9i5b
	9ZXo3p3WpN+Dd7UzN3H6trzX/xDrNwNLbQ4k5qXETvrDY6dhWH9zCSBaeU2p9EMliSjc
	shpFY0GjUwchnDE9CfyYZYWP2NeWAbIdIsjtp/amCK971gIKHynMGutV1mTR08x871ov
	nrzb+EFKFZKGUGs1W/7mU7/ZYZgOeeEVRdPML4U7mrp/hC93uFzpSPkI664RWcibtkcl
	N5Jeh8YEWXTuH37UAX0bOSqCpdED5bscxiUsEi7yF+ToZdutVJj4UplevVrdr6jBftxl
	SWfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=4BZci4LZAIhHEuFx7u0V/ZKdgx9rkBnMvuhCN36tLLw=;
	b=LYYV5LznEk5zxqLnG9piO9IwoQngcCCAiMFBTMv1qRpg2kg6FQy7cdwlyTs3JQuWpK
	BpMcrsP0E4X2C7oPKE5zPmhQiCAM/mw3cSd9bNf9SXVc7dBuTNqcKUyoDfbFl9ZtUI0/
	hHgksYEoRaxxQcvnGKOZMDaBSsNToRPyX1moo/ZIKthwN2DmvIWTfgG7NdcWyCbMVTRf
	wluohac4Y4SLb4Eqc1anzUC1E3lkuOzG4+YOacYgin1lRNplKPUq8BQazvlifz23GD1x
	xKIJhph0qJiWPfzgnsXWCE7FCsMvsWPGvZrJQbF9e+HEGDibMi2qd/fOBhbdfm8K1Dv6
	ymCw==
X-Gm-Message-State: AE9vXwNgd15RQOlW1T2vK0xGthp9UHyZdqy7O/w39ejhz3z2PJW8i0kAtaypGk/AEJ7v5Q==
X-Received: by 10.67.13.196 with SMTP id fa4mr33479981pad.115.1472477912197;
	Mon, 29 Aug 2016 06:38:32 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	z187sm49618267pfz.39.2016.08.29.06.38.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:38:31 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:08:25 +0530
Message-Id: <1472477905-26024-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 7/9] refpolicy-minimum: systemd: fix for login & journal service
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
X-List-Received-Date: Mon, 29 Aug 2016 13:38:47 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

1. fix for systemd services: login & journal wile using refpolicy-minimum
and systemd as init manager.
2. fix login duration after providing root password.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-systemd-fix-for-login-journal-serv.patch | 105 +++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |   1 +
 2 files changed, 106 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
new file mode 100644
index 0000000..50e3c64
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
@@ -0,0 +1,105 @@
+From 5a1cef9e4a9472982f6c68190f3aa20c73c8de1e Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:54:09 +0530
+Subject: [PATCH 7/9] refpolicy-minimum: systemd: fix for login & journal
+ service
+
+1. fix for systemd services: login & journal wile using refpolicy-minimum and
+systemd as init manager.
+2. fix login duration after providing root password.
+
+without these changes we are getting avc denails like these and below
+systemd services failure:
+
+audit[]: AVC avc:  denied  { write } for  pid=422 comm="login" path="/run/
+systemd/sessions/c1.ref" dev="tmpfs" ino=13455 scontext=system_u:system_r:
+local_login_t:s0-s0:c0.c1023 tcontext=system_u:object_r:init_var_run_t:s0
+tclass=fifo_file permissive=0
+
+audit[]: AVC avc:  denied  { open } for  pid=216 comm="systemd-tmpfile" path
+="/proc/1/environ" dev="proc" ino=9221 scontext=system_u:system_r:
+systemd_tmpfiles_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=file
+
+audit[]: USER_AVC pid=1 uid=0 auid=4294967295 ses=4294967295 subj=system_u:
+system_r:init_t:s0 msg='avc:  denied  { stop } for auid=n/a uid=0 gid=0 path
+="/lib/systemd/system/systemd-journald.service" cmdline="/bin/journalctl
+--flush" scontext=system_u:system_r:initrc_t:s0 tcontext=system_u:object_r:
+lib_t:s0 tclass=service
+
+[FAILED] Failed to start Flush Journal to Persistent Storage.
+See 'systemctl status systemd-journal-flush.service' for details.
+
+[FAILED] Failed to start Login Service.
+See 'systemctl status systemd-logind.service' for details.
+
+[FAILED] Failed to start Avahi mDNS/DNS-SD Stack.
+See 'systemctl status avahi-daemon.service' for details.
+
+Upstream-Status: Pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/init.te       | 5 +++++
+ policy/modules/system/locallogin.te | 3 +++
+ policy/modules/system/systemd.if    | 6 ++++--
+ policy/modules/system/systemd.te    | 3 ++-
+ 4 files changed, 14 insertions(+), 3 deletions(-)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index 19a7a20..cefa59d 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -1105,3 +1105,8 @@ allow init_t self:capability2 audit_read;
+ 
+ allow initrc_t init_t:system { start status reboot };
+ allow initrc_t init_var_run_t:service { start status };
++
++allow initrc_t init_var_run_t:service stop;
++allow initrc_t init_t:dbus send_msg;
++
++allow init_t initrc_t:dbus { send_msg acquire_svc };
+diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
+index 09ec33f..be25c82 100644
+--- a/policy/modules/system/locallogin.te
++++ b/policy/modules/system/locallogin.te
+@@ -284,3 +284,6 @@ allow local_login_t var_run_t:file { open read write lock};
+ allow local_login_t var_run_t:sock_file write;
+ allow local_login_t tmpfs_t:dir { add_name write search};
+ allow local_login_t tmpfs_t:file { create open read write lock };
++allow local_login_t init_var_run_t:fifo_file write;
++allow local_login_t initrc_t:dbus send_msg;
++allow initrc_t local_login_t:dbus send_msg;
+diff --git a/policy/modules/system/systemd.if b/policy/modules/system/systemd.if
+index 822c03d..8723527 100644
+--- a/policy/modules/system/systemd.if
++++ b/policy/modules/system/systemd.if
+@@ -205,9 +205,11 @@ interface(`systemd_service_file_operations',`
+ #
+ interface(`systemd_service_lib_function',`
+          gen_require(`
+-               class service start;
++		class service { start status stop };
++		class file { execmod open };
+          ')
+ 
+-	allow initrc_t $1:service start;
++	allow initrc_t $1:service { start status stop };
++	allow initrc_t $1:file execmod;
+ 
+ ')
+diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
+index 70ccb0e..22021eb 100644
+--- a/policy/modules/system/systemd.te
++++ b/policy/modules/system/systemd.te
+@@ -265,6 +265,7 @@ tunable_policy(`systemd_tmpfiles_manage_all',`
+ 
+ allow systemd_tmpfiles_t init_t:dir search;
+ allow systemd_tmpfiles_t proc_t:filesystem getattr;
+-allow systemd_tmpfiles_t init_t:file read;
+ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
+ allow systemd_tmpfiles_t self:capability net_admin;
++
++allow systemd_tmpfiles_t init_t:file { open getattr read };
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 1647c28..7312ada 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -78,4 +78,5 @@ SYSTEMD_REFPOLICY_PATCHES = " \
 	file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
 	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
 	file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
+	file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
 	"
-- 
1.9.1


