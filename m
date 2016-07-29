Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEDEEE00C6E; Fri, 29 Jul 2016 02:11:25 -0700 (PDT)
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
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 365B3E00D0C
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:11:12 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x83so14765529wma.3
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=G/HPJz0LlbXIUgxn1OkbN6aOhzGE4lKk0P+9zq0wmQI=;
	b=ipA2p7XxP1tzVSVOjQmYQoWidk6pQDtn/tw3VKBRQjDLr1OsThsQ51M/kOgly9WQib
	fNhof8Y+zr0I0bW38eSa/6EzqM8Tzb3Mzie1T6v47BV3l2qmmuF2vJFyirIFViupikQH
	AajNGP8K8R0TPw7Nuwjo0aHRthh76k1g47aOUxCZGjj2nvpIGrVvAGpRTlEy30uEcdHW
	zCgL3Md4rBCRROmBh/XyJmGTmJyLI+CdbFcnMtBb7hXLx2514IUPyXXanDPysqjZK3+T
	MKubwaA2Rc8h45HZEc1nW3L2e5sf6u4RNxKehkjXH6BZhnJiCi2RXZch7Q6xscV5y+LL
	i6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=G/HPJz0LlbXIUgxn1OkbN6aOhzGE4lKk0P+9zq0wmQI=;
	b=bWTqSSpIIioKPlpnYb9LO2a7crNjNI7gPllXkux357sjvRbyrtO8h60l4FdhbjTQo+
	8KASgxie1h9gkiHEfKiytPBfrXyBLzm0boQIF++XetieUzINjrFe7hZGTJkx7nmZGxXH
	jBp8W7aZyDtNB4jWCvMjGZajltoyyqlftSjmlnExyAVbmdhVhbzvyrwHlRHLUG/xghb3
	fLBKXIH6r5tibvYIpOg9ak/XzZ+oxQvJLJCdjo9nkRI0b3s7MFsACFk8s+Qac9USKRo4
	/5wwO3dc8W4/5FHbj937VHN/PZrJzfJUNVn1VuplfB5wc9nlm4i5PPe8dSFT/Bi9Sy3s
	E13A==
X-Gm-Message-State: AEkoous5SXTz0aE+74IjnHgAuF7Jnw4UteHv4uvvKi8chlLeHtvvhD1R5fHuMjXr5svAxw==
X-Received: by 10.28.19.134 with SMTP id 128mr41765543wmt.40.1469783471704;
	Fri, 29 Jul 2016 02:11:11 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	c139sm2047840wme.4.2016.07.29.02.11.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:11:11 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:41:06 +0530
Message-Id: <1469783466-7237-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 7/8] systemd: fix for login & journal service
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
X-List-Received-Date: Fri, 29 Jul 2016 09:11:25 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

1. fix for systemd services: login & journal wile using refpolicy-minimum and
systemd as init manager.
2. fix login duration after providing root password.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...007-systemd-fix-for-login-journal-service.patch | 104 +++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |   1 +
 2 files changed, 105 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0007-systemd-fix-for-login-journal-service.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0007-systemd-fix-for-login-journal-service.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0007-systemd-fix-for-login-journal-service.patch
new file mode 100644
index 0000000..9af0469
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0007-systemd-fix-for-login-journal-service.patch
@@ -0,0 +1,104 @@
+From b767672932ecafa14480cffa0494a44dc78962fa Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Wed, 27 Jul 2016 18:09:34 +0530
+Subject: [PATCH 7/8] systemd: fix for login & journal service
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
+upstream-status: pending
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
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index b62167f..74f7e19 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -68,6 +68,7 @@ SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0004-locallogin-add-allow-rules-for-type-local_login_t.patch \
 	file://0005-init-fix-reboot-with-systemd-as-init-manager.patch \
 	file://0006-systemd-mount-enable-requiried-refpolicy-booleans.patch \
+	file://0007-systemd-fix-for-login-journal-service.patch \
 "
 
 
-- 
1.9.1


