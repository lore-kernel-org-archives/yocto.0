Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BC6CE00C7E; Mon, 29 Oct 2018 11:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7641CE00C3C
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:10 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id y10-v6so5609835ioa.10
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=66xAAUJXJoGRu4OrgWmO+xOJPjmWKbpIUlfLs8RqyAM=;
	b=Qcs8A9Zaazr7+7Fz4g3dxdiR0tVSaxK/CKyIoLJ/zm2sjZmdQy1P7xfdCO8yA71r+1
	+nZ3oIqsDsyLcNFKzbka8v/DVsPajgL9UTrKiPaNX8yxsiP5U2Id6fDO6kHo+DxkI1im
	1Gnc7hqBaIn2dk+KNeAHdZ7K91nJPXVfS6ICGsK+z+VAYAkhVttN0TNED9mkqH+E90wk
	lCWbs6UIh6VAEheU+Ur6NOtwLG0SQDKLZGbHtXivlh8UPw9qwpzqF7WnLQaM5Qrz2/KJ
	E+FyyXvZUHqSrVvkkqmy6nEEnwc8C2KoBE+xr6T68SjruEHk50Lx1hBAA+ZxTohxuRvt
	QqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=66xAAUJXJoGRu4OrgWmO+xOJPjmWKbpIUlfLs8RqyAM=;
	b=amMEDATBY3jg86YcocUJmfZFxWjWcD4vJQQZZEmDAKraS/IIWYo6tTRtSEsi8x2eY+
	6S9yAtpxItg5FFyoD8lQVn8sK7Mh/NN81lBiAp7KExSrGiLANa2VuaKdKfJL1geA7Y0a
	B7pdVo2+JcNtRGgwNuHiXkftTzOGzQFL+bVJmMtx6VYdHKyn17Rx8VBvgxNXOT19PlVn
	8Uh13ElnRFZWS2SI1KHRmPO7TQexoR2w53ydC2t1G7OJx5UEmhxz3p22F2lHrXyQjGye
	JmroDLy9zdK4BYqHE9fiyjmCrlzR0BucuWfLXzMHVYYTHTU5TM3VAB9bsuo63MmpGzlK
	lDiQ==
X-Gm-Message-State: AGRZ1gLG535kto7xwABTIZ+9IjROg9cT2cdK9MxpsNjwEqgmvLg1U6bV
	jy4FH53MCMIRPl2HAWVrEHR6AMLrgDc=
X-Google-Smtp-Source: AJdET5efW7Bif0OYEDvGSM56TcQR6AIksHP6K89V5Eonz5vU/fjQQVCQOHlVEHzuOHSyBVPzjLq4+A==
X-Received: by 2002:a6b:e801:: with SMTP id f1-v6mr8959437ioh.19.1540837989378;
	Mon, 29 Oct 2018 11:33:09 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.33.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:33:08 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:57 -0400
Message-Id: <20181029183257.20970-7-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181029183257.20970-1-joe@deserted.net>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
Subject: [meta-selinux][sumo][PATCH 7/7] refpolicy: fix up all refpolicy 20170224 builds for sumo
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:12 -0000

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 ...poky-fc-update-alternatives_sysklogd.patch | 44 ++++++++++---------
 ...add-rules-for-var-log-symlink-apache.patch | 10 ++---
 ...add-rules-for-var-log-symlink-apache.patch | 27 ++++++++++--
 recipes-security/refpolicy/refpolicy_git.inc  |  2 -
 4 files changed, 51 insertions(+), 32 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
index 2038110..e9a0464 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
@@ -11,13 +11,13 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/system/logging.fc |    4 ++++
- policy/modules/system/logging.te |    1 +
+ policy/modules/system/logging.fc |    3 +++
+ policy/modules/system/logging.te |    2 ++
  2 files changed, 5 insertions(+)
 
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
-@@ -1,22 +1,26 @@
+@@ -1,9 +1,10 @@
  /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
  
  /etc/rsyslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
@@ -26,35 +26,37 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  /etc/audit(/.*)?		gen_context(system_u:object_r:auditd_etc_t,mls_systemhigh)
  /etc/rc\.d/init\.d/auditd --	gen_context(system_u:object_r:auditd_initrc_exec_t,s0)
  /etc/rc\.d/init\.d/rsyslog --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
-+/etc/rc\.d/init\.d/syslog\.sysklogd --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
  
- /sbin/audispd		--	gen_context(system_u:object_r:audisp_exec_t,s0)
- /sbin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
- /sbin/auditctl		--	gen_context(system_u:object_r:auditctl_exec_t,s0)
- /sbin/auditd		--	gen_context(system_u:object_r:auditd_exec_t,s0)
- /sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
-+/sbin/klogd\.sysklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
- /sbin/minilogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /sbin/rklogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
- /sbin/rsyslogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /sbin/syslogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
-+/sbin/syslogd\.sysklogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
- /sbin/syslog-ng		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/bin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
+@@ -27,14 +28,16 @@
+ /usr/sbin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
+ /usr/sbin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
+ /usr/sbin/auditctl	--	gen_context(system_u:object_r:auditctl_exec_t,s0)
+ /usr/sbin/auditd	--	gen_context(system_u:object_r:auditd_exec_t,s0)
+ /usr/sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
++/usr/sbin/klogd\.sysklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
+ /usr/sbin/metalog	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/sbin/minilogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/sbin/rklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
+ /usr/sbin/rsyslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
++/usr/sbin/syslogd\.sysklogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/sbin/syslog-ng	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /usr/sbin/syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
  
- /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_unit_t,s0)
- /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:object_r:syslogd_unit_t,s0)
- /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /var/lib/misc/syslog-ng.persist-? -- gen_context(system_u:object_r:syslogd_var_lib_t,s0)
+ /var/lib/syslog-ng(/.*)? 	gen_context(system_u:object_r:syslogd_var_lib_t,s0)
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -388,10 +388,11 @@ allow syslogd_t self:unix_dgram_socket s
+@@ -390,10 +390,12 @@ allow syslogd_t self:unix_dgram_socket s
  allow syslogd_t self:fifo_file rw_fifo_file_perms;
  allow syslogd_t self:udp_socket create_socket_perms;
  allow syslogd_t self:tcp_socket create_stream_socket_perms;
  
  allow syslogd_t syslog_conf_t:file read_file_perms;
 +allow syslogd_t syslog_conf_t:lnk_file read_file_perms;
++allow syslogd_t syslog_conf_t:dir list_dir_perms;
  
  # Create and bind to /dev/log or /var/run/log.
  allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
  files_pid_filetrans(syslogd_t, devlog_t, sock_file)
- 
+ init_pid_filetrans(syslogd_t, devlog_t, sock_file, "dev-log")
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
index 8d22c21..fb912b5 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
@@ -17,11 +17,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 
 --- a/policy/modules/contrib/apache.te
 +++ b/policy/modules/contrib/apache.te
-@@ -409,10 +409,11 @@ allow httpd_t httpd_log_t:dir setattr_di
- create_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
- create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
- append_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
- read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+@@ -407,10 +407,11 @@ allow httpd_t httpd_lock_t:file manage_f
+ files_lock_filetrans(httpd_t, httpd_lock_t, { file dir })
+ 
+ manage_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ manage_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
 +read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
  logging_log_filetrans(httpd_t, httpd_log_t, file)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
index 5bd5b2e..8d22c21 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
@@ -1,12 +1,31 @@
-diff --git a/policy/modules/contrib/apache.te b/policy/modules/contrib/apache.te
-index fcf795f..529057c 100644
+From ed2b0a00e2fb78056041b03c7e198e8f5adaf939 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 19:36:44 +0800
+Subject: [PATCH 3/6] add rules for the symlink of /var/log - apache2
+
+We have added rules for the symlink of /var/log in logging.if,
+while apache.te uses /var/log but does not use the interfaces in
+logging.if. So still need add a individual rule for apache.te.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/contrib/apache.te |    1 +
+ 1 file changed, 1 insertion(+)
+
 --- a/policy/modules/contrib/apache.te
 +++ b/policy/modules/contrib/apache.te
-@@ -412,6 +412,7 @@ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+@@ -409,10 +409,11 @@ allow httpd_t httpd_log_t:dir setattr_di
+ create_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ append_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
- setattr_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
 +read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
  logging_log_filetrans(httpd_t, httpd_log_t, file)
  
  allow httpd_t httpd_modules_t:dir list_dir_perms;
+ mmap_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
+ read_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 6c318ab..b2fd638 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -12,7 +12,6 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
 # Fix file contexts for Poky
 SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-update-alternatives_sysvinit.patch \
-            file://poky-fc-update-alternatives_sysklogd.patch \
             file://poky-fc-update-alternatives_hostname.patch \
             file://poky-fc-update-alternatives_bash.patch \
             file://poky-fc-fix-real-path_resolv.conf.patch \
@@ -35,7 +34,6 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
 # Specific policy for Poky
 SRC_URI += "file://poky-policy-add-syslogd_t-to-trusted-object.patch \
             file://poky-policy-add-rules-for-var-log-symlink.patch \
-            file://poky-policy-add-rules-for-var-log-symlink-apache.patch \
             file://poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch \
             file://poky-policy-add-rules-for-syslogd_t-symlink.patch \
             file://poky-policy-add-rules-for-var-cache-symlink.patch \
-- 
2.17.1


