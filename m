Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5979E00D00; Tue, 26 Feb 2019 11:44:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E545CE0090C
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 11:44:51 -0800 (PST)
Received: by mail-pl1-f174.google.com with SMTP id p19so6732683plo.2
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 11:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Ia1CVPPo8WaoTF92Q8+LVPBDK+68NKeNIFlPKeV/jhE=;
	b=Uol2FYQCB/XhYxAujTSCMnKW1Nq9tYxbg7co1ukGOSFJKt4Ez+IOX1KyHs8lAn/4Nw
	GLGE4D6UFYgaTmcyyOC2ueuTBmURR+0yPEnSHIlLMBt5pNuzsLesn87WsoUNFIJN/QW3
	T6eNaX/NP4f/rvRS+S4gfX3yE6Rqr8hAO+MAi4vzLou/Sc1vHqSTZ84FuzM9Du7AU5nc
	bj6LY8Z9jEEjamtG2jyC/4Y7jtj6O8P3r8+lVrg3k30PbIYv8FgTkOSfDl3f+UNDalxR
	Jo80lpTDzK0bB9byGEDGilB6XWdvo6LnW9xg6fVXdwcuCn05XPcx89HHk5xD17MnUsK+
	9tyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Ia1CVPPo8WaoTF92Q8+LVPBDK+68NKeNIFlPKeV/jhE=;
	b=dRR3qzpZh+5IqF3i/x1/vLP8/yImfzxQJB6unXBX6GnRg6u3xcqiIMiWf5d5uKKkd2
	DsWKpn+QQ/TsT/i68leuLblFbbl1W/i1TpCVc/79DeyC13CPCg1t20zwdMXyuFCC1ava
	rORaVe2cFo7mRDv5uul4EJVUvhBwu4mFWPrzRRLl3RFuCFwQ6QlfOmM/X0L6Ea8WC9PD
	QbZMVHgtGbsQ8rVjNzCeJqvBR44aJYMYTX7oA04fqAEDmvyXRRyYILJ83QvPaAO55dah
	NQTq2OE9VRbdRVmqoo0hPN6S5VfAQD7kr3UUHEgWls+AA+OSfrcyrDhSNB6P/CXP1TuT
	UC/w==
X-Gm-Message-State: AHQUAuZEdvVqCXzRfN7AEgxjopTB/em9iDDqVeYHo812HpnLBxZv8e4t
	p+pNPASp/H1mEIjpK5B6UcjbwjKO
X-Google-Smtp-Source: AHgI3IauPQ/CM8sv/0oZxz5ONiYy245Wv1Ewg5o2VDPmVH488bAIah3A4pa786RJFEKeZ2bQcI+tWw==
X-Received: by 2002:a17:902:59c1:: with SMTP id
	d1mr27299156plj.324.1551210290971; 
	Tue, 26 Feb 2019 11:44:50 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:8500:6bc6::5fa3])
	by smtp.gmail.com with ESMTPSA id
	195sm18139324pfc.50.2019.02.26.11.44.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Feb 2019 11:44:50 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Feb 2019 11:44:43 -0800
Message-Id: <20190226194443.6874-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-selinux][thud][PATCH] refpolicy: Forward patch to apply cleanly on thud
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
X-List-Received-Date: Tue, 26 Feb 2019 19:44:53 -0000
Content-Transfer-Encoding: 8bit

Also fix devtool generated warnings by refreshing patches

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...poky-fc-update-alternatives_sysklogd.patch | 17 +++--------------
 ...add-rules-for-var-log-symlink-apache.patch | 10 +++-------
 ...m-systemd-fix-for-systemd-tmp-files-.patch | 19 +++++--------------
 3 files changed, 11 insertions(+), 35 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
index e9a0464..aa928c6 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
@@ -17,8 +17,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
-@@ -1,9 +1,10 @@
- /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
+@@ -2,6 +2,7 @@
  
  /etc/rsyslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
  /etc/syslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
@@ -26,11 +25,7 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  /etc/audit(/.*)?		gen_context(system_u:object_r:auditd_etc_t,mls_systemhigh)
  /etc/rc\.d/init\.d/auditd --	gen_context(system_u:object_r:auditd_initrc_exec_t,s0)
  /etc/rc\.d/init\.d/rsyslog --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
- 
- /usr/bin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
-@@ -27,14 +28,16 @@
- /usr/sbin/audispd	--	gen_context(system_u:object_r:audisp_exec_t,s0)
- /usr/sbin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
+@@ -27,10 +28,12 @@
  /usr/sbin/auditctl	--	gen_context(system_u:object_r:auditctl_exec_t,s0)
  /usr/sbin/auditd	--	gen_context(system_u:object_r:auditd_exec_t,s0)
  /usr/sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
@@ -43,13 +38,9 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  /usr/sbin/syslog-ng	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
  /usr/sbin/syslogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
  
- /var/lib/misc/syslog-ng.persist-? -- gen_context(system_u:object_r:syslogd_var_lib_t,s0)
- /var/lib/syslog-ng(/.*)? 	gen_context(system_u:object_r:syslogd_var_lib_t,s0)
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -390,10 +390,12 @@ allow syslogd_t self:unix_dgram_socket s
- allow syslogd_t self:fifo_file rw_fifo_file_perms;
- allow syslogd_t self:udp_socket create_socket_perms;
+@@ -390,6 +390,8 @@ allow syslogd_t self:udp_socket create_s
  allow syslogd_t self:tcp_socket create_stream_socket_perms;
  
  allow syslogd_t syslog_conf_t:file read_file_perms;
@@ -58,5 +49,3 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  # Create and bind to /dev/log or /var/run/log.
  allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
- files_pid_filetrans(syslogd_t, devlog_t, sock_file)
- init_pid_filetrans(syslogd_t, devlog_t, sock_file, "dev-log")
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
index fb912b5..6c96e33 100644
--- a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
@@ -17,15 +17,11 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 
 --- a/policy/modules/contrib/apache.te
 +++ b/policy/modules/contrib/apache.te
-@@ -407,10 +407,11 @@ allow httpd_t httpd_lock_t:file manage_f
- files_lock_filetrans(httpd_t, httpd_lock_t, { file dir })
- 
- manage_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
- manage_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+@@ -411,6 +411,7 @@ create_files_pattern(httpd_t, httpd_log_
+ append_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
 +read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
  logging_log_filetrans(httpd_t, httpd_log_t, file)
  
  allow httpd_t httpd_modules_t:dir list_dir_perms;
- mmap_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
- read_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
diff --git a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
index a7338e1..f5a767d 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
@@ -37,11 +37,9 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
  policy/modules/system/systemd.te |  3 +++
  3 files changed, 45 insertions(+)
 
-diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index 1cedea2..4ea7d55 100644
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -6729,3 +6729,22 @@ interface(`files_unconfined',`
+@@ -6906,3 +6906,22 @@ interface(`files_unconfined',`
  
  	typeattribute $1 files_unconfined_type;
  ')
@@ -64,13 +62,11 @@ index 1cedea2..4ea7d55 100644
 +
 +	allow $1 tmp_t:lnk_file getattr;
 +')
-diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
-index f1130d1..4604441 100644
 --- a/policy/modules/kernel/kernel.if
 +++ b/policy/modules/kernel/kernel.if
-@@ -3323,3 +3323,26 @@ interface(`kernel_unconfined',`
- 	typeattribute $1 kern_unconfined;
- 	kernel_load_module($1)
+@@ -3418,3 +3418,26 @@ interface(`kernel_rw_vm_overcommit_sysct
+ 	kernel_search_vm_sysctl($1)
+ 	allow $1 sysctl_vm_overcommit_t:file rw_file_perms;
  ')
 +
 +########################################
@@ -95,17 +91,12 @@ index f1130d1..4604441 100644
 +
 +')
 +
-diff --git a/policy/modules/system/systemd.te b/policy/modules/system/systemd.te
-index 22021eb..8813664 100644
 --- a/policy/modules/system/systemd.te
 +++ b/policy/modules/system/systemd.te
-@@ -269,3 +269,6 @@ allow systemd_tmpfiles_t initrc_t:unix_dgram_socket sendto;
+@@ -374,3 +374,6 @@ allow systemd_tmpfiles_t initrc_t:unix_d
  allow systemd_tmpfiles_t self:capability net_admin;
  
  allow systemd_tmpfiles_t init_t:file { open getattr read };
 +
 +systemd_service_allow_kernel_domain_access_to_sysctl_kernel_t(systemd_tmpfiles_t)
 +systemd_service_allow_kernel_files_domain_to_tmp_t(systemd_tmpfiles_t)
--- 
-1.9.1
-
-- 
2.21.0


