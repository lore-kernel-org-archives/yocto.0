Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A093EE00F26; Mon, 29 Aug 2016 06:37:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
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
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4226E00F26
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:36:53 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g202so9393665pfb.1
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=MgW2bq9N6zS4OzykN6PBHmY7R8UgZd7Y431WZD4Tz48=;
	b=Zgq/RlmMEXIoUcTvkBt3N4Js6Q5oLeyXZAMAqMWtPNFbaiCSini3U4EOunupocPKw0
	xEGigh7pLC/MCjK0wUgFpq1ICL31d7AZIn/DTKq5AQGzsjaHsOafiBAuNO1nHCK5JjnD
	etkxb0WlTibxC6av7SJB9hSXBC2jFiVlhwfYrPBx7fsIMedesEvaAW8TS28Lwm1p6ILX
	msiBAcZp6a694iBIDhVimmhBVVyGPG89BjlxHrjZF0AmX4DGPL2+aMN1CHmMoh9x4orn
	9d1gxrSJ/CiFpuADXx0VX18tLTC1J2N11Pi/DPS3FahHVp7Oht7oxl93lCYhTddBy44m
	Dh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MgW2bq9N6zS4OzykN6PBHmY7R8UgZd7Y431WZD4Tz48=;
	b=LHk1IKKnBZy7yIAMNjy5xH/gV/U16INsFU8Un86Y0etv7gln3fdlTtbB3K7XTOFzXT
	5zfqOdsiKWF9sEhOzz+L64eNh8FGEZP9EtsN9Stc3Yftjbl+Efy6X/sJil7Hk8KmOeGA
	XDglfmZUFkvHXdhVt2MOqEUaZBnHMjFrAWiHcPlv+sENllo11umQzCdKbrwzjH4xhS8A
	ZTqh8xL8azoJ5kn1/3fQhP5x/E1Kvghq5pDGSt8vD83MidfOXHhzJtEpM4ZS5ZM5ZKyQ
	wDQvzy6i9onbVPauILbPqeNY977GOp2HIFbUouoanbfHxDabjHBW65aRvFixAJy5Mpw2
	xh8w==
X-Gm-Message-State: AE9vXwPP7jDhHNpdVDYIVOxmT3M3+h/OfE09ihOWei47EX0fHvu3YCFI8gHdyJtNqVOcaA==
X-Received: by 10.98.54.134 with SMTP id d128mr32744099pfa.150.1472477813716; 
	Mon, 29 Aug 2016 06:36:53 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	ps2sm49696726pab.10.2016.08.29.06.36.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:36:53 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:06:47 +0530
Message-Id: <1472477807-25872-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 3/9] refpolicy-minimum: systemd: mount: logging: authlogin: add allow rules
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
X-List-Received-Date: Mon, 29 Aug 2016 13:37:04 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rules for avc denails for systemd, mount, logging & authlogin
modules. without this change we are  getting avc. denials from these
modules.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-systemd-mount-logging-authlogin-ad.patch | 93 ++++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  1 +
 2 files changed, 94 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
new file mode 100644
index 0000000..35a8e1b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
@@ -0,0 +1,93 @@
+From edae03ea521a501a2b3229383609f1aec85575c1 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:53:37 +0530
+Subject: [PATCH 3/9] refpolicy-minimum: systemd: mount: logging: authlogin:
+ add allow rules
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
+Upstream-Status: Pending
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
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 9e1dc9b..f4b80bc 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -74,4 +74,5 @@ SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' ${SYSTEMD_REFPO
 SYSTEMD_REFPOLICY_PATCHES = " \
         file://0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch \
 	file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
+	file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
 	"
-- 
1.9.1


