Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 310D8E00524; Fri,  6 Jan 2017 12:10:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DD61E0043B
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 12:10:17 -0800 (PST)
Received: by mail-it0-f65.google.com with SMTP id c20so3137531itb.0
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2017 12:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id;
	bh=Iu6bTBPFUDbQkjOfNkhZsJW7dlYUxyp98v9OSTFQneo=;
	b=pv4toud1jwSWIKquUDYrZa2hXlYSoAYU/gA7cCM+zDvxIBGg9Yfyld1AEkuYCunEW0
	dLGYSwRAQpLInnOv6142pKjx5Q2NqCTdWTMmsHlO2s9cwO7j3xrz29/GxwDGGAE6fNt0
	7sYyKfD4hugtf7vAqVcGdeUzLYafmKQ3aXb99rgW1HHB0esdkKdAD58BIE+Z9yOszTN6
	jHegWIhe1gVi7fG/aY5m89ajuLTCOeXMA3dK4DNeCNKTdq3ruyNSA+JKyjjY3Em8LutF
	K2nLqsZvzn886BuSgXOEI+3+fEWphyxVSYWnNDU0Qn45J2bZFrvre4VSuYlMzLY/jiYG
	LjiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=Iu6bTBPFUDbQkjOfNkhZsJW7dlYUxyp98v9OSTFQneo=;
	b=jdWCijFfR3e2T0poSTgUGJD8LqYq0gcwl79d8orcmi7bBEHig3vlNMG/nGKzqB84XK
	QNW0VGZZjMw+M6xxLuHAggfVXEI12MtXzZ/AMvZ9vfPlBRzCswiGasJJDJGYPt28SrDy
	zYEUVCOweSl/Hm3uslqFt4xETG9Ikk83oKyoZIkxBNSIMh57Uehyv2GuWcKIR8CeQ4sI
	+CWz9Pjre4zJHZ/1H4tSR6RbvZvDr2dS3mxjIwJO11q/ciahRjeWsAJDeFSY7THHiV2u
	nCFle1XWL1C7CGY05ULg15sEmF79dyQQ7EHDm5LMrhB63GN83BQ32fEfbLiqJq8Y8O3X
	mlsg==
X-Gm-Message-State: AIkVDXJo+k3LjqI80gKmHa6Kpqohzlrn6vysD4nj9EO+SdYLZuuuzDkRua6DqdGzi5uSIw==
X-Received: by 10.36.77.207 with SMTP id l198mr375126itb.18.1483733414120;
	Fri, 06 Jan 2017 12:10:14 -0800 (PST)
Received: from mir.deserted.net (23-233-31-74.cpe.pppoe.ca. [23.233.31.74])
	by smtp.gmail.com with ESMTPSA id c21sm732215iod.38.2017.01.06.12.10.12
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 06 Jan 2017 12:10:13 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Fri,  6 Jan 2017 15:10:43 -0500
Message-Id: <1483733443-24881-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] refpolicy-git: Update patches
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
X-List-Received-Date: Fri, 06 Jan 2017 20:10:23 -0000

A number of upstream changes caused patch conflicts or duplication in the
final policy.  Update the list of git patches appropriately.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |  11 +-
 .../refpolicy/refpolicy-git/poky-fc-clock.patch    |  11 +-
 .../refpolicy-git/poky-fc-corecommands.patch       |  24 ----
 .../refpolicy/refpolicy-git/poky-fc-dmesg.patch    |  11 +-
 .../refpolicy/refpolicy-git/poky-fc-fix-bind.patch |   9 +-
 .../poky-fc-fix-real-path_login.patch              |  20 ++--
 .../poky-fc-fix-real-path_resolv.conf.patch        |  13 +--
 .../poky-fc-fix-real-path_shadow.patch             |  11 +-
 .../refpolicy-git/poky-fc-fix-real-path_su.patch   |   9 +-
 .../refpolicy/refpolicy-git/poky-fc-fstools.patch  |  33 +++---
 .../refpolicy-git/poky-fc-ftpwho-dir.patch         |  13 +--
 .../refpolicy/refpolicy-git/poky-fc-iptables.patch |  24 ----
 .../refpolicy/refpolicy-git/poky-fc-mta.patch      |  11 +-
 .../refpolicy/refpolicy-git/poky-fc-netutils.patch |  13 +--
 .../refpolicy/refpolicy-git/poky-fc-nscd.patch     |   9 +-
 .../refpolicy/refpolicy-git/poky-fc-rpm.patch      |   9 +-
 .../refpolicy/refpolicy-git/poky-fc-screen.patch   |  12 +-
 .../refpolicy/refpolicy-git/poky-fc-ssh.patch      |  15 ++-
 .../refpolicy/refpolicy-git/poky-fc-su.patch       |  23 ----
 .../refpolicy-git/poky-fc-subs_dist.patch          |  15 ++-
 .../refpolicy-git/poky-fc-sysnetwork.patch         |  23 ++--
 .../refpolicy/refpolicy-git/poky-fc-udevd.patch    |  21 ++--
 .../poky-fc-update-alternatives_hostname.patch     |   9 +-
 .../poky-fc-update-alternatives_sysklogd.patch     |  20 ++--
 .../poky-fc-update-alternatives_sysvinit.patch     |  27 +++--
 ...poky-policy-add-rules-for-bsdpty_device_t.patch |  53 ++++++---
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  13 +--
 .../poky-policy-add-rules-for-tmp-symlink.patch    |  63 ++++++++---
 ...ky-policy-add-rules-for-var-cache-symlink.patch |  11 +-
 ...licy-add-rules-for-var-log-symlink-apache.patch |  11 +-
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  13 +--
 ...poky-policy-add-rules-for-var-log-symlink.patch |  81 ++++++++++----
 ...ky-policy-add-syslogd_t-to-trusted-object.patch |  11 +-
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  21 ++--
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  11 +-
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |  11 +-
 .../poky-policy-don-t-audit-tty_device_t.patch     |  11 +-
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  17 ++-
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 124 ++++++++++++++++-----
 ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |  26 ++++-
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  11 +-
 ...ky-policy-fix-seutils-manage-config-files.patch |  19 ++--
 .../refpolicy-update-for_systemd.patch             |   9 +-
 recipes-security/refpolicy/refpolicy_common.inc    |   4 +
 recipes-security/refpolicy/refpolicy_git.inc       |   3 -
 45 files changed, 501 insertions(+), 418 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch

diff --git a/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch b/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch
index 49da4b6..4830566 100644
--- a/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch
+++ b/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch
@@ -21,11 +21,11 @@ Signed-off-by: Roy Li <rongqing.li@windriver.com>
  policy/modules/contrib/ftp.te |    2 ++
  1 file changed, 2 insertions(+)
 
-diff --git a/policy/modules/contrib/ftp.te b/policy/modules/contrib/ftp.te
-index 544c512..12a31dd 100644
 --- a/policy/modules/contrib/ftp.te
 +++ b/policy/modules/contrib/ftp.te
-@@ -144,6 +144,8 @@ role ftpdctl_roles types ftpdctl_t;
+@@ -148,10 +148,12 @@ init_system_domain(ftpdctl_t, ftpdctl_ex
+ role ftpdctl_roles types ftpdctl_t;
+ 
  type ftpdctl_tmp_t;
  files_tmp_file(ftpdctl_tmp_t)
  
@@ -34,6 +34,5 @@ index 544c512..12a31dd 100644
  type sftpd_t;
  domain_type(sftpd_t)
  role system_r types sftpd_t;
--- 
-1.7.10.4
-
+ 
+ type xferlog_t;
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
index 3ff8f55..b36c209 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
@@ -4,19 +4,16 @@ Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/system/clock.fc | 1 +
+ policy/modules/system/clock.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/system/clock.fc b/policy/modules/system/clock.fc
-index c5e05ca..a74c40c 100644
 --- a/policy/modules/system/clock.fc
 +++ b/policy/modules/system/clock.fc
-@@ -2,4 +2,5 @@
+@@ -1,6 +1,7 @@
+ 
  /etc/adjtime		--	gen_context(system_u:object_r:adjtime_t,s0)
  
  /sbin/hwclock		--	gen_context(system_u:object_r:hwclock_exec_t,s0)
 +/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
  
--- 
-1.7.11.7
-
+ /usr/sbin/hwclock	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch
deleted file mode 100644
index 24b67c3..0000000
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for corecommands
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- policy/modules/kernel/corecommands.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index f051c4a..ab624f3 100644
---- a/policy/modules/kernel/corecommands.fc
-+++ b/policy/modules/kernel/corecommands.fc
-@@ -153,6 +153,7 @@ ifdef(`distro_gentoo',`
- /sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
- /sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
- /sbin/nologin			--	gen_context(system_u:object_r:shell_exec_t,s0)
-+/usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
- 
- #
- # /opt
--- 
-1.7.11.7
-
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
index db4c4d4..6995bb5 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
@@ -4,17 +4,14 @@ Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/admin/dmesg.fc | 1 +
+ policy/modules/admin/dmesg.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/admin/dmesg.fc b/policy/modules/admin/dmesg.fc
-index d6cc2d9..7f3e5b0 100644
 --- a/policy/modules/admin/dmesg.fc
 +++ b/policy/modules/admin/dmesg.fc
-@@ -1,2 +1,3 @@
+@@ -1,4 +1,5 @@
  
  /bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
 +/bin/dmesg\.util-linux	--		gen_context(system_u:object_r:dmesg_exec_t,s0)
--- 
-1.7.11.7
-
+ 
+ /usr/bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch
index 59ba5bc..a96b4a7 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch
@@ -10,11 +10,9 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/contrib/bind.fc |    2 ++
  1 file changed, 2 insertions(+)
 
-diff --git a/policy/modules/contrib/bind.fc b/policy/modules/contrib/bind.fc
-index 2b9a3a1..fd45d53 100644
 --- a/policy/modules/contrib/bind.fc
 +++ b/policy/modules/contrib/bind.fc
-@@ -1,8 +1,10 @@
+@@ -1,10 +1,12 @@
  /etc/rc\.d/init\.d/named	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
 +/etc/rc\.d/init\.d/bind	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
  /etc/rc\.d/init\.d/unbound	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
@@ -25,6 +23,5 @@ index 2b9a3a1..fd45d53 100644
  /etc/bind/rndc\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
  /etc/dnssec-trigger/dnssec_trigger_server\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
  /etc/named\.rfc1912\.zones	--	gen_context(system_u:object_r:named_conf_t,s0)
--- 
-1.7.9.5
-
+ /etc/named\.root\.hints	--	gen_context(system_u:object_r:named_conf_t,s0)
+ /etc/named\.conf	--	gen_context(system_u:object_r:named_conf_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch
index 427181e..d97d58e 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch
@@ -4,14 +4,12 @@ Upstream-Status: Inappropriate [only for Poky]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/system/authlogin.fc |    7 ++++---
- 1 files changed, 4 insertions(+), 3 deletions(-)
+ policy/modules/system/authlogin.fc |    5 ++---
+ 1 file changed, 2 insertions(+), 3 deletions(-)
 
-diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
-index 28ad538..c8dd17f 100644
 --- a/policy/modules/system/authlogin.fc
 +++ b/policy/modules/system/authlogin.fc
-@@ -1,5 +1,7 @@
+@@ -1,19 +1,18 @@
  
  /bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
 +/bin/login\.shadow	--	gen_context(system_u:object_r:login_exec_t,s0)
@@ -19,19 +17,17 @@ index 28ad538..c8dd17f 100644
  
  /etc/\.pwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
  /etc/group\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
-@@ -9,9 +11,9 @@
+ /etc/gshadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
+ /etc/passwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
+ /etc/shadow.*		--	gen_context(system_u:object_r:shadow_t,s0)
  
  /sbin/pam_console_apply	 --	gen_context(system_u:object_r:pam_console_exec_t,s0)
  /sbin/pam_timestamp_check --	gen_context(system_u:object_r:pam_exec_t,s0)
 -/sbin/unix_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
 -/sbin/unix_update	--	gen_context(system_u:object_r:updpwd_exec_t,s0)
 -/sbin/unix_verify	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
-+/usr/sbin/unix_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
-+/usr/sbin/unix_update	--	gen_context(system_u:object_r:updpwd_exec_t,s0)
-+/usr/sbin/unix_verify	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
  ifdef(`distro_suse', `
  /sbin/unix2_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
  ')
--- 
-1.7.5.4
-
+ 
+ /usr/bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch
index 80cca67..c1cd74d 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch
@@ -5,13 +5,13 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
  policy/modules/system/sysnetwork.fc |    1 +
- 1 files changed, 1 insertions(+), 0 deletions(-)
+ 1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index 346a7cc..dec8632 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -24,6 +24,7 @@ ifdef(`distro_debian',`
+@@ -23,10 +23,11 @@ ifdef(`distro_debian',`
+ /etc/ethers		--	gen_context(system_u:object_r:net_conf_t,s0)
+ /etc/hosts		--	gen_context(system_u:object_r:net_conf_t,s0)
  /etc/hosts\.deny.*	--	gen_context(system_u:object_r:net_conf_t,s0)
  /etc/denyhosts.*	--	gen_context(system_u:object_r:net_conf_t,s0)
  /etc/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
@@ -19,6 +19,5 @@ index 346a7cc..dec8632 100644
  /etc/yp\.conf.*		--	gen_context(system_u:object_r:net_conf_t,s0)
  
  /etc/dhcp3(/.*)?		gen_context(system_u:object_r:dhcp_etc_t,s0)
--- 
-1.7.5.4
-
+ /etc/dhcp3?/dhclient.*		gen_context(system_u:object_r:dhcp_etc_t,s0)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
index 29ac2c3..d74f524 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
@@ -7,11 +7,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/admin/usermanage.fc |    6 ++++++
  1 file changed, 6 insertions(+)
 
-diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
-index f82f0ce..841ba9b 100644
 --- a/policy/modules/admin/usermanage.fc
 +++ b/policy/modules/admin/usermanage.fc
-@@ -4,11 +4,17 @@ ifdef(`distro_gentoo',`
+@@ -6,15 +6,21 @@ ifdef(`distro_debian',`
+ /etc/cron\.daily/cracklib-runtime -- gen_context(system_u:object_r:crack_exec_t,s0)
+ ')
  
  /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
  /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
@@ -29,6 +29,5 @@ index f82f0ce..841ba9b 100644
  
  /usr/lib/cracklib_dict.* --	gen_context(system_u:object_r:crack_db_t,s0)
  
--- 
-1.7.9.5
-
+ /usr/sbin/crack_[a-z]*	--	gen_context(system_u:object_r:crack_exec_t,s0)
+ /usr/sbin/cracklib-[a-z]* --	gen_context(system_u:object_r:crack_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch
index b0392ce..23484de 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch
@@ -10,16 +10,13 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  policy/modules/admin/su.fc |    2 ++
  1 file changed, 2 insertions(+)
 
-diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
-index a563687..0f43827 100644
 --- a/policy/modules/admin/su.fc
 +++ b/policy/modules/admin/su.fc
-@@ -4,3 +4,5 @@
+@@ -3,5 +3,7 @@
+ /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
  
  /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
  /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
+ /usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
 +
 +/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
--- 
-1.7.9.5
-
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
index 9c45694..5d3aa76 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
@@ -9,14 +9,12 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
 ---
- policy/modules/system/fstools.fc |    9 +++++++++
- 1 file changed, 9 insertions(+)
+ policy/modules/system/fstools.fc |    7 +++++++
+ 1 file changed, 7 insertions(+)
 
-diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index d10368d..f22761a 100644
 --- a/policy/modules/system/fstools.fc
 +++ b/policy/modules/system/fstools.fc
-@@ -1,6 +1,8 @@
+@@ -1,19 +1,23 @@
  /sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/blkid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/sbin/blkid/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -25,20 +23,24 @@ index d10368d..f22761a 100644
  /sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/dosfsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/dump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -9,9 +11,12 @@
+ /sbin/dumpe2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/e2fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/e4fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/e2label		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/fdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/sbin/fdisk/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/sbin/hdparm/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/install-mbr	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -24,6 +29,7 @@
+ /sbin/lsraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/make_reiser4	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -22,20 +26,22 @@
+ /sbin/mke4fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/mkfs.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkreiserfs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -46,18 +48,22 @@ index d10368d..f22761a 100644
  /sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -32,8 +38,10 @@
+ /sbin/raidautorun	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/raidstart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/reiserfs(ck|tune)	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/resize.*fs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-+/usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/sbin/swapoff/.util-linux		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/zdb		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -45,6 +53,7 @@
+ /sbin/zhack		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/zinject		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -43,10 +49,11 @@
+ /sbin/zstreamdump	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/ztest		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  
  /usr/bin/partition_uuid	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/bin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -65,6 +71,5 @@ index d10368d..f22761a 100644
  /usr/bin/scsi_unique_id	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /usr/bin/syslinux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  
--- 
-1.7.9.5
-
+ /usr/sbin/addpart		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
index a7d434f..b4ba2e2 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
@@ -9,19 +9,18 @@ Signed-off-by: Roy Li <rongqing.li@windriver.com>
  policy/modules/contrib/ftp.fc |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
-diff --git a/policy/modules/contrib/ftp.fc b/policy/modules/contrib/ftp.fc
-index ddb75c1..26fec47 100644
 --- a/policy/modules/contrib/ftp.fc
 +++ b/policy/modules/contrib/ftp.fc
-@@ -9,7 +9,7 @@
- 
+@@ -10,11 +10,11 @@
  /usr/kerberos/sbin/ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
  
+ /usr/lib/systemd/system/proftpd.*\.service -- gen_context(system_u:object_r:ftpd_unit_t,s0)
+ /usr/lib/systemd/system/vsftpd.*\.service -- gen_context(system_u:object_r:ftpd_unit_t,s0)
+ 
 -/usr/sbin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
 +/usr/bin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
  /usr/sbin/in\.ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
  /usr/sbin/muddleftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
  /usr/sbin/proftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
--- 
-1.7.10.4
-
+ /usr/sbin/vsftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch
deleted file mode 100644
index 89b1547..0000000
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for iptables
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- policy/modules/system/iptables.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/system/iptables.fc b/policy/modules/system/iptables.fc
-index 14cffd2..84ac92b 100644
---- a/policy/modules/system/iptables.fc
-+++ b/policy/modules/system/iptables.fc
-@@ -13,6 +13,7 @@
- /sbin/ipvsadm-restore		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /sbin/ipvsadm-save		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /sbin/xtables-multi		--	gen_context(system_u:object_r:iptables_exec_t,s0)
-+/usr/sbin/xtables-multi		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- 
- /usr/sbin/ipchains.*		--	gen_context(system_u:object_r:iptables_exec_t,s0)
- /usr/sbin/iptables		--	gen_context(system_u:object_r:iptables_exec_t,s0)
--- 
-1.7.11.7
-
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
index bbd83ec..1a8fbe3 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
@@ -10,11 +10,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/contrib/mta.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/contrib/mta.fc b/policy/modules/contrib/mta.fc
-index f42896c..0d4bcef 100644
 --- a/policy/modules/contrib/mta.fc
 +++ b/policy/modules/contrib/mta.fc
-@@ -22,6 +22,7 @@ HOME_DIR/\.maildir(/.*)?	gen_context(system_u:object_r:mail_home_rw_t,s0)
+@@ -20,10 +20,11 @@ HOME_DIR/\.maildir(/.*)?	gen_context(sys
+ /usr/lib/courier/bin/sendmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
+ 
  /usr/sbin/rmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
  /usr/sbin/sendmail\.postfix	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
  /usr/sbin/sendmail(\.sendmail)?	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
@@ -22,6 +22,5 @@ index f42896c..0d4bcef 100644
  /usr/sbin/ssmtp	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
  
  /var/mail(/.*)?	gen_context(system_u:object_r:mail_spool_t,s0)
--- 
-1.7.9.5
-
+ 
+ /var/qmail/bin/sendmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch
index b45d03e..fea90ad 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch
@@ -4,21 +4,20 @@ Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/admin/netutils.fc | 1 +
+ policy/modules/admin/netutils.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/admin/netutils.fc b/policy/modules/admin/netutils.fc
-index 407078f..f2ed3dc 100644
 --- a/policy/modules/admin/netutils.fc
 +++ b/policy/modules/admin/netutils.fc
-@@ -3,6 +3,7 @@
+@@ -1,10 +1,11 @@
+ /bin/ping.* 		--	gen_context(system_u:object_r:ping_exec_t,s0)
+ /bin/tracepath.*		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
  /bin/traceroute.*	--	gen_context(system_u:object_r:traceroute_exec_t,s0)
  
  /sbin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
 +/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
  
+ /usr/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
  /usr/bin/lft		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
  /usr/bin/nmap		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
--- 
-1.7.11.7
-
+ /usr/bin/ping.* 	--	gen_context(system_u:object_r:ping_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
index 1db328c..5fe5062 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
@@ -10,11 +10,9 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/contrib/nscd.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/contrib/nscd.fc b/policy/modules/contrib/nscd.fc
-index ba64485..61a6f24 100644
 --- a/policy/modules/contrib/nscd.fc
 +++ b/policy/modules/contrib/nscd.fc
-@@ -1,6 +1,7 @@
+@@ -1,8 +1,9 @@
  /etc/rc\.d/init\.d/nscd	--	gen_context(system_u:object_r:nscd_initrc_exec_t,s0)
  
  /usr/sbin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
@@ -22,6 +20,5 @@ index ba64485..61a6f24 100644
  
  /var/cache/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
  
--- 
-1.7.9.5
-
+ /var/db/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
index 7ba3380..8680f19 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
@@ -10,16 +10,13 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  policy/modules/contrib/rpm.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/contrib/rpm.fc b/policy/modules/contrib/rpm.fc
-index ebe91fc..539063c 100644
 --- a/policy/modules/contrib/rpm.fc
 +++ b/policy/modules/contrib/rpm.fc
-@@ -58,4 +58,5 @@ ifdef(`distro_redhat',`
+@@ -61,6 +61,7 @@ ifdef(`distro_redhat',`
+ /run/yum.*	--	gen_context(system_u:object_r:rpm_var_run_t,s0)
+ /run/PackageKit(/.*)?	gen_context(system_u:object_r:rpm_var_run_t,s0)
  
  ifdef(`enable_mls',`
  /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
 +/bin/cpio.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
  ')
--- 
-1.7.9.5
-
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
index 3218194..a7301e9 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
@@ -10,18 +10,16 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/contrib/screen.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/contrib/screen.fc b/policy/modules/contrib/screen.fc
-index e7c2cf7..49ddca2 100644
 --- a/policy/modules/contrib/screen.fc
 +++ b/policy/modules/contrib/screen.fc
-@@ -3,6 +3,7 @@ HOME_DIR/\.screenrc	--	gen_context(system_u:object_r:screen_home_t,s0)
+@@ -1,9 +1,10 @@
+ HOME_DIR/\.screen(/.*)?	gen_context(system_u:object_r:screen_home_t,s0)
+ HOME_DIR/\.screenrc	--	gen_context(system_u:object_r:screen_home_t,s0)
  HOME_DIR/\.tmux\.conf	--	gen_context(system_u:object_r:screen_home_t,s0)
  
  /usr/bin/screen	--	gen_context(system_u:object_r:screen_exec_t,s0)
 +/usr/bin/screen-.*	--	gen_context(system_u:object_r:screen_exec_t,s0)
  /usr/bin/tmux	--	gen_context(system_u:object_r:screen_exec_t,s0)
  
- /var/run/screen(/.*)?	gen_context(system_u:object_r:screen_var_run_t,s0)
--- 
-1.7.9.5
-
+ /run/screen(/.*)?	gen_context(system_u:object_r:screen_var_run_t,s0)
+ /run/tmux(/.*)?	gen_context(system_u:object_r:screen_var_run_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch
index 9aeb3a2..35bbc9e 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch
@@ -4,21 +4,20 @@ Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/services/ssh.fc | 1 +
+ policy/modules/services/ssh.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
-index 078bcd7..9717428 100644
 --- a/policy/modules/services/ssh.fc
 +++ b/policy/modules/services/ssh.fc
-@@ -6,6 +6,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
- /etc/ssh/ssh_host_rsa_key	--	gen_context(system_u:object_r:sshd_key_t,s0)
+@@ -2,10 +2,11 @@ HOME_DIR/\.ssh(/.*)?			gen_context(syste
+ 
+ /etc/ssh/primes			--	gen_context(system_u:object_r:sshd_key_t,s0)
+ /etc/ssh/ssh_host.*_key		--	gen_context(system_u:object_r:sshd_key_t,s0)
  
  /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
 +/usr/bin/ssh\.openssh		--	gen_context(system_u:object_r:ssh_exec_t,s0)
  /usr/bin/ssh-agent		--	gen_context(system_u:object_r:ssh_agent_exec_t,s0)
  /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
  
--- 
-1.7.11.7
-
+ /usr/lib/openssh/ssh-keysign	--	gen_context(system_u:object_r:ssh_keysign_exec_t,s0)
+ /usr/lib/ssh/ssh-keysign	--	gen_context(system_u:object_r:ssh_keysign_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch
deleted file mode 100644
index 358e4ef..0000000
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-Subject: [PATCH] refpolicy: fix real path for su
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- policy/modules/admin/su.fc | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
-index 688abc2..a563687 100644
---- a/policy/modules/admin/su.fc
-+++ b/policy/modules/admin/su.fc
-@@ -1,5 +1,6 @@
- 
- /bin/su			--	gen_context(system_u:object_r:su_exec_t,s0)
-+/usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
- 
- /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
- /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
--- 
-1.7.11.7
-
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
index cfec7d9..f82f359 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
@@ -8,15 +8,18 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- config/file_contexts.subs_dist |   10 ++++++++++
- 1 file changed, 10 insertions(+)
+ config/file_contexts.subs_dist |   11 +++++++++++
+ 1 file changed, 11 insertions(+)
 
 --- a/config/file_contexts.subs_dist
 +++ b/config/file_contexts.subs_dist
-@@ -19,3 +19,13 @@
- /usr/local/lib64 /usr/lib
- /usr/local/lib /usr/lib
- /var/run/lock /var/lock
+@@ -21,5 +21,16 @@
+ 
+ # backward compatibility
+ # not for refpolicy intern, but for /var/run using applications,
+ # like systemd tmpfiles or systemd socket configurations
+ /var/run /run
++
 +/var/volatile/log /var/log
 +/var/volatile/run /var/run
 +/var/volatile/cache /var/cache
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
index 64f497d..7f8f368 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
@@ -8,14 +8,14 @@ Upstream-Status: Inappropriate [configuration]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
 ---
- policy/modules/system/sysnetwork.fc |    4 ++++
- 1 file changed, 4 insertions(+)
+ policy/modules/system/sysnetwork.fc |    3 +++
+ 1 file changed, 3 insertions(+)
 
-diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
-index fbb935c..a194622 100644
 --- a/policy/modules/system/sysnetwork.fc
 +++ b/policy/modules/system/sysnetwork.fc
-@@ -4,6 +4,7 @@
+@@ -2,10 +2,11 @@
+ #
+ # /bin
  #
  /bin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /bin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
@@ -23,17 +23,19 @@ index fbb935c..a194622 100644
  
  #
  # /dev
-@@ -43,7 +44,9 @@ ifdef(`distro_redhat',`
+ #
+ ifdef(`distro_debian',`
+@@ -43,17 +44,19 @@ ifdef(`distro_redhat',`
+ /sbin/dhclient.*	--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/dhcdbd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-+/usr/sbin/ethtool  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
 +/sbin/ifconfig\.net-tools  --  gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ip		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ipx_configure	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/ipx_interface	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
-@@ -51,6 +54,7 @@ ifdef(`distro_redhat',`
+ /sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/iw		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  /sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
@@ -41,6 +43,5 @@ index fbb935c..a194622 100644
  /sbin/pump		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
  /sbin/tc		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
  
--- 
-1.7.9.5
-
+ #
+ # /usr
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
index c6c19be..8e2cb1b 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
@@ -10,26 +10,29 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  policy/modules/system/udev.fc |    2 ++
  1 file changed, 2 insertions(+)
 
-diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index 40928d8..491bb23 100644
 --- a/policy/modules/system/udev.fc
 +++ b/policy/modules/system/udev.fc
-@@ -10,6 +10,7 @@
+@@ -8,10 +8,11 @@
+ 
+ /etc/udev/rules.d(/.*)? gen_context(system_u:object_r:udev_rules_t,s0)
  /etc/udev/scripts/.+ --	gen_context(system_u:object_r:udev_helper_exec_t,s0)
  
  /lib/udev/udev-acl --	gen_context(system_u:object_r:udev_exec_t,s0)
 +/lib/udev/udevd    --	gen_context(system_u:object_r:udev_exec_t,s0)
  
  ifdef(`distro_debian',`
+ /bin/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
  /lib/udev/create_static_nodes -- gen_context(system_u:object_r:udev_exec_t,s0)
-@@ -27,6 +28,7 @@ ifdef(`distro_redhat',`
+ ')
+@@ -26,10 +27,11 @@ ifdef(`distro_debian',`
+ ifdef(`distro_redhat',`
+ /sbin/start_udev --	gen_context(system_u:object_r:udev_exec_t,s0)
  ')
  
  /usr/bin/udevinfo --	gen_context(system_u:object_r:udev_exec_t,s0)
 +/usr/bin/udevadm  --	gen_context(system_u:object_r:udev_exec_t,s0)
  
- /usr/lib/systemd/systemd-udevd -- gen_context(system_u:object_r:udev_exec_t,s0)
- 
--- 
-1.7.9.5
-
+ /usr/sbin/udev		--	gen_context(system_u:object_r:udev_exec_t,s0)
+ /usr/sbin/udevadm	--	gen_context(system_u:object_r:udev_exec_t,s0)
+ /usr/sbin/udevd		--	gen_context(system_u:object_r:udev_exec_t,s0)
+ /usr/sbin/udevsend	--	gen_context(system_u:object_r:udev_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
index cedb5b5..80c40d0 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
@@ -10,14 +10,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/system/hostname.fc |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/system/hostname.fc b/policy/modules/system/hostname.fc
-index 9dfecf7..4003b6d 100644
 --- a/policy/modules/system/hostname.fc
 +++ b/policy/modules/system/hostname.fc
-@@ -1,2 +1,3 @@
+@@ -1,4 +1,5 @@
  
  /bin/hostname		--	gen_context(system_u:object_r:hostname_exec_t,s0)
 +/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
--- 
-1.7.9.5
-
+ 
+ /usr/bin/hostname	--	gen_context(system_u:object_r:hostname_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch
index 868ee6b..03284cd 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch
@@ -14,11 +14,10 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/system/logging.te |    1 +
  2 files changed, 5 insertions(+)
 
-diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index b50c5fe..c005f33 100644
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
-@@ -2,19 +2,23 @@
+@@ -1,22 +1,26 @@
+ /dev/log		-s	gen_context(system_u:object_r:devlog_t,mls_systemhigh)
  
  /etc/rsyslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
  /etc/syslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
@@ -41,12 +40,14 @@ index b50c5fe..c005f33 100644
 +/sbin/syslogd\.sysklogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
  /sbin/syslog-ng		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
  
- /usr/sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 87e3db2..2914b0b 100644
+ /usr/lib/systemd/system/auditd.* -- gen_context(system_u:object_r:auditd_unit_t,s0)
+ /usr/lib/systemd/system/[^/]*systemd-journal.* -- gen_context(system_u:object_r:syslogd_unit_t,s0)
+ /usr/lib/systemd/systemd-journald -- gen_context(system_u:object_r:syslogd_exec_t,s0)
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -371,6 +371,7 @@ allow syslogd_t self:udp_socket create_socket_perms;
+@@ -386,10 +386,11 @@ allow syslogd_t self:unix_dgram_socket s
+ allow syslogd_t self:fifo_file rw_fifo_file_perms;
+ allow syslogd_t self:udp_socket create_socket_perms;
  allow syslogd_t self:tcp_socket create_stream_socket_perms;
  
  allow syslogd_t syslog_conf_t:file read_file_perms;
@@ -54,6 +55,5 @@ index 87e3db2..2914b0b 100644
  
  # Create and bind to /dev/log or /var/run/log.
  allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
--- 
-1.7.9.5
-
+ files_pid_filetrans(syslogd_t, devlog_t, sock_file)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch
index 3a617d8..0c09825 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch
@@ -12,11 +12,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/system/init.fc         |    1 +
  3 files changed, 3 insertions(+)
 
-diff --git a/policy/modules/contrib/shutdown.fc b/policy/modules/contrib/shutdown.fc
-index a91f33b..90e51e0 100644
 --- a/policy/modules/contrib/shutdown.fc
 +++ b/policy/modules/contrib/shutdown.fc
-@@ -3,6 +3,7 @@
+@@ -1,10 +1,11 @@
+ /etc/nologin	--	gen_context(system_u:object_r:shutdown_etc_t,s0)
+ 
  /lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
  
  /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
@@ -24,11 +24,13 @@ index a91f33b..90e51e0 100644
  
  /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
  
-diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
-index bcfdba7..87502a3 100644
+ /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
 --- a/policy/modules/kernel/corecommands.fc
 +++ b/policy/modules/kernel/corecommands.fc
-@@ -10,6 +10,7 @@
+@@ -8,10 +8,11 @@
+ /bin/bash2			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /bin/fish			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /bin/ksh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /bin/mountpoint			--	gen_context(system_u:object_r:bin_t,s0)
@@ -36,11 +38,13 @@ index bcfdba7..87502a3 100644
  /bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /bin/tcsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
  /bin/yash			--	gen_context(system_u:object_r:shell_exec_t,s0)
-diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
-index bc0ffc8..020b9fe 100644
+ /bin/zsh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ 
 --- a/policy/modules/system/init.fc
 +++ b/policy/modules/system/init.fc
-@@ -30,6 +30,7 @@ ifdef(`distro_gentoo', `
+@@ -30,10 +30,11 @@ ifdef(`distro_gentoo', `
+ 
+ #
  # /sbin
  #
  /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
@@ -48,6 +52,5 @@ index bc0ffc8..020b9fe 100644
  # because nowadays, /sbin/init is often a symlink to /sbin/upstart
  /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
  
--- 
-1.7.9.5
-
+ ifdef(`distro_gentoo', `
+ /sbin/rc		--	gen_context(system_u:object_r:rc_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch
index 9a3322f..fee4068 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch
@@ -10,11 +10,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/kernel/terminal.if |   16 ++++++++++++++++
  1 file changed, 16 insertions(+)
 
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index 771bce1..7519d0e 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
-@@ -531,9 +531,11 @@ interface(`term_dontaudit_manage_pty_dirs',`
+@@ -585,13 +585,15 @@ interface(`term_getattr_generic_ptys',`
+ ## </param>
+ #
  interface(`term_dontaudit_getattr_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -26,7 +26,11 @@ index 771bce1..7519d0e 100644
  ')
  ########################################
  ## <summary>
-@@ -549,11 +551,13 @@ interface(`term_dontaudit_getattr_generic_ptys',`
+ ##	ioctl of generic pty devices.
+ ## </summary>
+@@ -603,15 +605,17 @@ interface(`term_dontaudit_getattr_generi
+ #
+ # cjp: added for ppp
  interface(`term_ioctl_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -40,7 +44,11 @@ index 771bce1..7519d0e 100644
  ')
  
  ########################################
-@@ -571,9 +575,11 @@ interface(`term_ioctl_generic_ptys',`
+ ## <summary>
+ ##	Allow setting the attributes of
+@@ -625,13 +629,15 @@ interface(`term_ioctl_generic_ptys',`
+ #
+ # dwalsh: added for rhgb
  interface(`term_setattr_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -52,7 +60,11 @@ index 771bce1..7519d0e 100644
  ')
  
  ########################################
-@@ -591,9 +597,11 @@ interface(`term_setattr_generic_ptys',`
+ ## <summary>
+ ##	Dontaudit setting the attributes of
+@@ -645,13 +651,15 @@ interface(`term_setattr_generic_ptys',`
+ #
+ # dwalsh: added for rhgb
  interface(`term_dontaudit_setattr_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -64,7 +76,11 @@ index 771bce1..7519d0e 100644
  ')
  
  ########################################
-@@ -611,11 +619,13 @@ interface(`term_dontaudit_setattr_generic_ptys',`
+ ## <summary>
+ ##	Read and write the generic pty
+@@ -665,15 +673,17 @@ interface(`term_dontaudit_setattr_generi
+ ## </param>
+ #
  interface(`term_use_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -78,7 +94,11 @@ index 771bce1..7519d0e 100644
  ')
  
  ########################################
-@@ -633,9 +643,11 @@ interface(`term_use_generic_ptys',`
+ ## <summary>
+ ##	Dot not audit attempts to read and
+@@ -687,13 +697,15 @@ interface(`term_use_generic_ptys',`
+ ## </param>
+ #
  interface(`term_dontaudit_use_generic_ptys',`
  	gen_require(`
  		type devpts_t;
@@ -90,7 +110,11 @@ index 771bce1..7519d0e 100644
  ')
  
  #######################################
-@@ -651,10 +663,12 @@ interface(`term_dontaudit_use_generic_ptys',`
+ ## <summary>
+ ##	Set the attributes of the tty device
+@@ -705,14 +717,16 @@ interface(`term_dontaudit_use_generic_pt
+ ## </param>
+ #
  interface(`term_setattr_controlling_term',`
  	gen_require(`
  		type devtty_t;
@@ -103,7 +127,11 @@ index 771bce1..7519d0e 100644
  ')
  
  ########################################
-@@ -671,10 +685,12 @@ interface(`term_setattr_controlling_term',`
+ ## <summary>
+ ##	Read and write the controlling
+@@ -725,14 +739,16 @@ interface(`term_setattr_controlling_term
+ ## </param>
+ #
  interface(`term_use_controlling_term',`
  	gen_require(`
  		type devtty_t;
@@ -116,6 +144,5 @@ index 771bce1..7519d0e 100644
  ')
  
  #######################################
--- 
-1.7.9.5
-
+ ## <summary>
+ ##	Get the attributes of the pty multiplexor (/dev/ptmx).
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
index aa9734a..d3aa705 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
@@ -9,14 +9,14 @@ Upstream-Status: Inappropriate [only for Poky]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/system/logging.te | 2 ++
+ policy/modules/system/logging.te |    2 ++
  1 file changed, 2 insertions(+)
 
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 2ad9ea5..70427d8 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -384,6 +384,8 @@ rw_fifo_files_pattern(syslogd_t, var_log_t, var_log_t)
+@@ -402,10 +402,12 @@ rw_fifo_files_pattern(syslogd_t, var_log
+ files_search_spool(syslogd_t)
+ 
  # Allow access for syslog-ng
  allow syslogd_t var_log_t:dir { create setattr };
  
@@ -25,6 +25,5 @@ index 2ad9ea5..70427d8 100644
  # manage temporary files
  manage_dirs_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
  manage_files_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
--- 
-1.7.11.7
-
+ files_tmp_filetrans(syslogd_t, syslogd_tmp_t, { dir file })
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch
index 210c297..7a30460 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch
@@ -12,13 +12,13 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
  policy/modules/kernel/files.fc |    1 +
  policy/modules/kernel/files.if |    8 ++++++++
- 2 files changed, 9 insertions(+), 0 deletions(-)
+ 2 files changed, 9 insertions(+)
 
-diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
-index 8796ca3..a0db748 100644
 --- a/policy/modules/kernel/files.fc
 +++ b/policy/modules/kernel/files.fc
-@@ -185,6 +185,7 @@ ifdef(`distro_debian',`
+@@ -191,10 +191,11 @@ ifdef(`distro_debian',`
+ 
+ #
  # /tmp
  #
  /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
@@ -26,11 +26,13 @@ index 8796ca3..a0db748 100644
  /tmp/.*				<<none>>
  /tmp/\.journal			<<none>>
  
-diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
-index e1e814d..a7384b0 100644
+ /tmp/lost\+found	-d	gen_context(system_u:object_r:lost_found_t,mls_systemhigh)
+ /tmp/lost\+found/.*		<<none>>
 --- a/policy/modules/kernel/files.if
 +++ b/policy/modules/kernel/files.if
-@@ -4199,6 +4199,7 @@ interface(`files_search_tmp',`
+@@ -4471,10 +4471,11 @@ interface(`files_search_tmp',`
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	allow $1 tmp_t:dir search_dir_perms;
@@ -38,7 +40,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4235,6 +4236,7 @@ interface(`files_list_tmp',`
+ ## <summary>
+ ##	Do not audit attempts to search the tmp directory (/tmp).
+@@ -4507,10 +4508,11 @@ interface(`files_list_tmp',`
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	allow $1 tmp_t:dir list_dir_perms;
@@ -46,7 +52,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4271,6 +4273,7 @@ interface(`files_delete_tmp_dir_entry',`
+ ## <summary>
+ ##	Do not audit listing of the tmp directory (/tmp).
+@@ -4543,10 +4545,11 @@ interface(`files_delete_tmp_dir_entry',`
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	allow $1 tmp_t:dir del_entry_dir_perms;
@@ -54,7 +64,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4289,6 +4292,7 @@ interface(`files_read_generic_tmp_files',`
+ ## <summary>
+ ##	Read files in the tmp directory (/tmp).
+@@ -4561,10 +4564,11 @@ interface(`files_read_generic_tmp_files'
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	read_files_pattern($1, tmp_t, tmp_t)
@@ -62,7 +76,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4307,6 +4311,7 @@ interface(`files_manage_generic_tmp_dirs',`
+ ## <summary>
+ ##	Manage temporary directories in /tmp.
+@@ -4579,10 +4583,11 @@ interface(`files_manage_generic_tmp_dirs
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	manage_dirs_pattern($1, tmp_t, tmp_t)
@@ -70,7 +88,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4325,6 +4330,7 @@ interface(`files_manage_generic_tmp_files',`
+ ## <summary>
+ ##	Manage temporary files and directories in /tmp.
+@@ -4597,10 +4602,11 @@ interface(`files_manage_generic_tmp_file
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	manage_files_pattern($1, tmp_t, tmp_t)
@@ -78,7 +100,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4361,6 +4367,7 @@ interface(`files_rw_generic_tmp_sockets',`
+ ## <summary>
+ ##	Read symbolic links in the tmp directory (/tmp).
+@@ -4633,10 +4639,11 @@ interface(`files_rw_generic_tmp_sockets'
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	rw_sock_files_pattern($1, tmp_t, tmp_t)
@@ -86,7 +112,11 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
-@@ -4550,6 +4557,7 @@ interface(`files_tmp_filetrans',`
+ ## <summary>
+ ##	Mount filesystems in the tmp directory (/tmp)
+@@ -4840,10 +4847,11 @@ interface(`files_tmp_filetrans',`
+ 	gen_require(`
+ 		type tmp_t;
  	')
  
  	filetrans_pattern($1, tmp_t, $2, $3, $4)
@@ -94,6 +124,5 @@ index e1e814d..a7384b0 100644
  ')
  
  ########################################
--- 
-1.7.5.4
-
+ ## <summary>
+ ##	Delete the contents of /tmp.
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch
index 18a92dd..fc6dea0 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch
@@ -15,11 +15,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/kernel/domain.te |    3 +++
  1 file changed, 3 insertions(+)
 
-diff --git a/policy/modules/kernel/domain.te b/policy/modules/kernel/domain.te
-index cf04cb5..9ffe6b0 100644
 --- a/policy/modules/kernel/domain.te
 +++ b/policy/modules/kernel/domain.te
-@@ -104,6 +104,9 @@ term_use_controlling_term(domain)
+@@ -108,10 +108,13 @@ dev_rw_zero(domain)
+ term_use_controlling_term(domain)
+ 
  # list the root directory
  files_list_root(domain)
  
@@ -29,6 +29,5 @@ index cf04cb5..9ffe6b0 100644
  ifdef(`hide_broken_symptoms',`
  	# This check is in the general socket
  	# listen code, before protocol-specific
--- 
-1.7.9.5
-
+ 	# listen function is called, so bad calls
+ 	# to listen on UDP sockets should be silenced
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
index 8bc40c4..d907095 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
@@ -14,11 +14,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/contrib/apache.te |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/contrib/apache.te b/policy/modules/contrib/apache.te
-index ec8bd13..06f2e95 100644
 --- a/policy/modules/contrib/apache.te
 +++ b/policy/modules/contrib/apache.te
-@@ -400,6 +400,7 @@ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+@@ -409,10 +409,11 @@ allow httpd_t httpd_log_t:dir setattr_di
+ create_dirs_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  append_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
  read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
@@ -26,6 +26,5 @@ index ec8bd13..06f2e95 100644
  logging_log_filetrans(httpd_t, httpd_log_t, file)
  
  allow httpd_t httpd_modules_t:dir list_dir_perms;
--- 
-1.7.9.5
-
+ mmap_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
+ read_files_pattern(httpd_t, httpd_modules_t, httpd_modules_t)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
index cbf0f7d..90c8f36 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
@@ -9,14 +9,14 @@ Upstream-Status: Inappropriate [only for Poky]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
- policy/modules/system/logging.te | 1 +
+ policy/modules/system/logging.te |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 8426a49..2ad9ea5 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -262,6 +262,7 @@ allow audisp_remote_t self:capability { setuid setpcap };
+@@ -276,10 +276,11 @@ optional_policy(`
+ 
+ allow audisp_remote_t self:capability { setuid setpcap };
  allow audisp_remote_t self:process { getcap setcap };
  allow audisp_remote_t self:tcp_socket create_socket_perms;
  allow audisp_remote_t var_log_t:dir search_dir_perms;
@@ -24,6 +24,5 @@ index 8426a49..2ad9ea5 100644
  
  manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
  manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
--- 
-1.7.11.7
-
+ files_spool_filetrans(audisp_remote_t, audit_spool_t, { dir file })
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
index b06f3ef..a9ae381 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
@@ -15,11 +15,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/system/logging.te |    1 +
  3 files changed, 15 insertions(+), 1 deletion(-)
 
-diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
-index c005f33..9529e40 100644
 --- a/policy/modules/system/logging.fc
 +++ b/policy/modules/system/logging.fc
-@@ -41,6 +41,7 @@ ifdef(`distro_suse', `
+@@ -49,10 +49,11 @@ ifdef(`distro_suse', `
+ 
+ /var/axfrdns/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
  /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
  
  /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
@@ -27,11 +27,13 @@ index c005f33..9529e40 100644
  /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
  /var/log/boot\.log	--	gen_context(system_u:object_r:var_log_t,mls_systemhigh)
  /var/log/messages[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
-diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
-index 4e94884..9a6f599 100644
+ /var/log/secure[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
+ /var/log/maillog[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
 --- a/policy/modules/system/logging.if
 +++ b/policy/modules/system/logging.if
-@@ -136,12 +136,13 @@ interface(`logging_set_audit_parameters',`
+@@ -134,16 +134,17 @@ interface(`logging_set_audit_parameters'
+ ## </param>
+ ## <rolecap/>
  #
  interface(`logging_read_audit_log',`
  	gen_require(`
@@ -46,7 +48,11 @@ index 4e94884..9a6f599 100644
  ')
  
  ########################################
-@@ -626,6 +627,7 @@ interface(`logging_search_logs',`
+ ## <summary>
+ ##	Execute auditctl in the auditctl domain.
+@@ -665,10 +666,11 @@ interface(`logging_search_logs',`
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	allow $1 var_log_t:dir search_dir_perms;
@@ -54,7 +60,11 @@ index 4e94884..9a6f599 100644
  ')
  
  #######################################
-@@ -663,6 +665,7 @@ interface(`logging_list_logs',`
+ ## <summary>
+ ##	Do not audit attempts to search the var log directory.
+@@ -702,10 +704,11 @@ interface(`logging_list_logs',`
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -62,7 +72,11 @@ index 4e94884..9a6f599 100644
  ')
  
  #######################################
-@@ -682,6 +685,7 @@ interface(`logging_rw_generic_log_dirs',`
+ ## <summary>
+ ##	Read and write the generic log directory (/var/log).
+@@ -721,10 +724,11 @@ interface(`logging_rw_generic_log_dirs',
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	allow $1 var_log_t:dir rw_dir_perms;
@@ -70,7 +84,11 @@ index 4e94884..9a6f599 100644
  ')
  
  #######################################
-@@ -793,10 +797,12 @@ interface(`logging_append_all_logs',`
+ ## <summary>
+ ##	Search through all log dirs.
+@@ -832,14 +836,16 @@ interface(`logging_append_all_logs',`
+ ## <rolecap/>
+ #
  interface(`logging_read_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -83,7 +101,11 @@ index 4e94884..9a6f599 100644
  	read_files_pattern($1, logfile, logfile)
  ')
  
-@@ -815,10 +821,12 @@ interface(`logging_read_all_logs',`
+ ########################################
+ ## <summary>
+@@ -854,14 +860,16 @@ interface(`logging_read_all_logs',`
+ # cjp: not sure why this is needed.  This was added
+ # because of logrotate.
  interface(`logging_exec_all_logs',`
  	gen_require(`
  		attribute logfile;
@@ -96,7 +118,11 @@ index 4e94884..9a6f599 100644
  	can_exec($1, logfile)
  ')
  
-@@ -880,6 +888,7 @@ interface(`logging_read_generic_logs',`
+ ########################################
+ ## <summary>
+@@ -919,10 +927,11 @@ interface(`logging_read_generic_logs',`
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -104,7 +130,11 @@ index 4e94884..9a6f599 100644
  	read_files_pattern($1, var_log_t, var_log_t)
  ')
  
-@@ -900,6 +909,7 @@ interface(`logging_write_generic_logs',`
+ ########################################
+ ## <summary>
+@@ -939,10 +948,11 @@ interface(`logging_write_generic_logs',`
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -112,7 +142,11 @@ index 4e94884..9a6f599 100644
  	write_files_pattern($1, var_log_t, var_log_t)
  ')
  
-@@ -938,6 +948,7 @@ interface(`logging_rw_generic_logs',`
+ ########################################
+ ## <summary>
+@@ -977,10 +987,11 @@ interface(`logging_rw_generic_logs',`
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	allow $1 var_log_t:dir list_dir_perms;
@@ -120,7 +154,11 @@ index 4e94884..9a6f599 100644
  	rw_files_pattern($1, var_log_t, var_log_t)
  ')
  
-@@ -960,6 +971,7 @@ interface(`logging_manage_generic_logs',`
+ ########################################
+ ## <summary>
+@@ -999,10 +1010,11 @@ interface(`logging_manage_generic_logs',
+ 		type var_log_t;
+ 	')
  
  	files_search_var($1)
  	manage_files_pattern($1, var_log_t, var_log_t)
@@ -128,11 +166,13 @@ index 4e94884..9a6f599 100644
  ')
  
  ########################################
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 2ab0a49..2795d89 100644
+ ## <summary>
+ ##	All of the rules required to administrate
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -139,6 +139,7 @@ allow auditd_t auditd_etc_t:file read_file_perms;
+@@ -149,10 +149,11 @@ allow auditd_t auditd_etc_t:dir list_dir
+ allow auditd_t auditd_etc_t:file read_file_perms;
+ 
  manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
  manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
  allow auditd_t var_log_t:dir search_dir_perms;
@@ -140,6 +180,5 @@ index 2ab0a49..2795d89 100644
  
  manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
  manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
--- 
-1.7.9.5
-
+ files_pid_filetrans(auditd_t, auditd_var_run_t, { file sock_file })
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch
index 92b1592..c2cba9a 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch
@@ -14,11 +14,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/system/logging.te |    1 +
  1 file changed, 1 insertion(+)
 
-diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
-index 2914b0b..2ab0a49 100644
 --- a/policy/modules/system/logging.te
 +++ b/policy/modules/system/logging.te
-@@ -450,6 +450,7 @@ fs_getattr_all_fs(syslogd_t)
+@@ -475,10 +475,11 @@ files_var_lib_filetrans(syslogd_t, syslo
+ 
+ fs_getattr_all_fs(syslogd_t)
  fs_search_auto_mountpoints(syslogd_t)
  
  mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
@@ -26,6 +26,5 @@ index 2914b0b..2ab0a49 100644
  
  term_write_console(syslogd_t)
  # Allow syslog to a terminal
--- 
-1.7.9.5
-
+ term_write_unallocated_ttys(syslogd_t)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
index e77a730..189dc6e 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
@@ -9,13 +9,13 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 ---
  policy/modules/contrib/rpc.te   |    2 +-
  policy/modules/kernel/kernel.if |   18 ++++++++++++++++++
- 2 files changed, 19 insertions(+), 1 deletions(-)
+ 2 files changed, 19 insertions(+), 1 deletion(-)
 
-diff --git a/policy/modules/contrib/rpc.te b/policy/modules/contrib/rpc.te
-index 9566932..5605205 100644
 --- a/policy/modules/contrib/rpc.te
 +++ b/policy/modules/contrib/rpc.te
-@@ -203,7 +203,7 @@ kernel_read_network_state(nfsd_t)
+@@ -222,11 +222,11 @@ allow nfsd_t { nfsd_rw_t nfsd_ro_t }:dir
+ 
+ kernel_read_network_state(nfsd_t)
  kernel_dontaudit_getattr_core_if(nfsd_t)
  kernel_setsched(nfsd_t)
  kernel_request_load_module(nfsd_t)
@@ -24,11 +24,13 @@ index 9566932..5605205 100644
  
  corenet_sendrecv_nfs_server_packets(nfsd_t)
  corenet_tcp_bind_nfs_port(nfsd_t)
-diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
-index 649e458..8a669c5 100644
+ corenet_udp_bind_nfs_port(nfsd_t)
+ 
 --- a/policy/modules/kernel/kernel.if
 +++ b/policy/modules/kernel/kernel.if
-@@ -804,6 +804,24 @@ interface(`kernel_unmount_proc',`
+@@ -844,10 +844,28 @@ interface(`kernel_unmount_proc',`
+ 	allow $1 proc_t:filesystem unmount;
+ ')
  
  ########################################
  ## <summary>
@@ -53,6 +55,5 @@ index 649e458..8a669c5 100644
  ##	Get the attributes of the proc filesystem.
  ## </summary>
  ## <param name="domain">
--- 
-1.7.5.4
-
+ ##	<summary>
+ ##	Domain allowed access.
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
index 9ef61b4..766b3df 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
@@ -11,11 +11,11 @@ Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
  policy/modules/system/selinuxutil.te |    3 +++
  1 file changed, 3 insertions(+)
 
-diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index 9058dd8..f998491 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -552,6 +552,9 @@ files_relabel_all_files(setfiles_t)
+@@ -553,10 +553,13 @@ files_read_etc_files(setfiles_t)
+ files_list_all(setfiles_t)
+ files_relabel_all_files(setfiles_t)
  files_read_usr_symlinks(setfiles_t)
  files_dontaudit_read_all_symlinks(setfiles_t)
  
@@ -25,6 +25,5 @@ index 9058dd8..f998491 100644
  fs_getattr_all_xattr_fs(setfiles_t)
  fs_list_all(setfiles_t)
  fs_search_auto_mountpoints(setfiles_t)
--- 
-1.7.9.5
-
+ fs_relabelfrom_noxattr_fs(setfiles_t)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch
index ec3dbf4..8ce2f62 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch
@@ -13,11 +13,11 @@ Signed-off-by: Roy Li <rongqing.li@windriver.com>
  policy/modules/roles/sysadm.te |    4 ++++
  1 file changed, 4 insertions(+)
 
-diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
-index 1767217..5502c6a 100644
 --- a/policy/modules/roles/sysadm.te
 +++ b/policy/modules/roles/sysadm.te
-@@ -413,6 +413,10 @@ optional_policy(`
+@@ -1169,10 +1169,14 @@ optional_policy(`
+ 	virt_admin(sysadm_t, sysadm_r)
+ 	virt_stream_connect(sysadm_t)
  ')
  
  optional_policy(`
@@ -28,6 +28,5 @@ index 1767217..5502c6a 100644
  	vmware_role(sysadm_r, sysadm_t)
  ')
  
--- 
-1.7.10.4
-
+ optional_policy(`
+ 	vnstatd_admin(sysadm_t, sysadm_r)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch
index 82370d8..998bfa0 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch
@@ -13,11 +13,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/kernel/terminal.if |    3 +++
  1 file changed, 3 insertions(+)
 
-diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
-index 7519d0e..45de1ac 100644
 --- a/policy/modules/kernel/terminal.if
 +++ b/policy/modules/kernel/terminal.if
-@@ -299,9 +299,12 @@ interface(`term_use_console',`
+@@ -297,13 +297,16 @@ interface(`term_use_console',`
+ ## </param>
+ #
  interface(`term_dontaudit_use_console',`
  	gen_require(`
  		type console_device_t;
@@ -30,6 +30,5 @@ index 7519d0e..45de1ac 100644
  ')
  
  ########################################
--- 
-1.7.9.5
-
+ ## <summary>
+ ##	Set the attributes of the console
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
index d6c8dbf..131a9bb 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
@@ -9,21 +9,21 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/admin/dmesg.te |    2 ++
  2 files changed, 3 insertions(+)
 
-diff --git a/policy/modules/admin/dmesg.if b/policy/modules/admin/dmesg.if
-index e1973c7..739a4bc 100644
 --- a/policy/modules/admin/dmesg.if
 +++ b/policy/modules/admin/dmesg.if
-@@ -37,4 +37,5 @@ interface(`dmesg_exec',`
+@@ -35,6 +35,7 @@ interface(`dmesg_exec',`
+ 		type dmesg_exec_t;
+ 	')
  
  	corecmd_search_bin($1)
  	can_exec($1, dmesg_exec_t)
 +	dev_read_kmsg($1)
  ')
-diff --git a/policy/modules/admin/dmesg.te b/policy/modules/admin/dmesg.te
-index 72bc6d8..c591aea 100644
 --- a/policy/modules/admin/dmesg.te
 +++ b/policy/modules/admin/dmesg.te
-@@ -28,6 +28,8 @@ kernel_read_proc_symlinks(dmesg_t)
+@@ -28,10 +28,12 @@ kernel_read_proc_symlinks(dmesg_t)
+ # for when /usr is not mounted:
+ kernel_dontaudit_search_unlabeled(dmesg_t)
  
  dev_read_sysfs(dmesg_t)
  
@@ -32,6 +32,5 @@ index 72bc6d8..c591aea 100644
  fs_search_auto_mountpoints(dmesg_t)
  
  term_dontaudit_use_console(dmesg_t)
--- 
-1.7.9.5
-
+ 
+ domain_use_interactive_fds(dmesg_t)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
index 005e28f..f3adc70 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
@@ -11,14 +11,14 @@ Upstream-Status: Inappropriate [only for Poky]
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 ---
- policy/modules/kernel/selinux.if |   34 ++++++++++++++++++++++++++++++++--
- 1 file changed, 32 insertions(+), 2 deletions(-)
+ policy/modules/kernel/selinux.if |   26 ++++++++++++++++++++++++++
+ 1 file changed, 26 insertions(+)
 
-Index: refpolicy/policy/modules/kernel/selinux.if
-===================================================================
---- refpolicy.orig/policy/modules/kernel/selinux.if
-+++ refpolicy/policy/modules/kernel/selinux.if
-@@ -58,6 +58,10 @@ interface(`selinux_get_fs_mount',`
+--- a/policy/modules/kernel/selinux.if
++++ b/policy/modules/kernel/selinux.if
+@@ -56,10 +56,14 @@ interface(`selinux_labeled_boolean',`
+ interface(`selinux_get_fs_mount',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -29,7 +29,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	# starting in libselinux 2.0.5, init_selinuxmnt() will
  	# attempt to short circuit by checking if SELINUXMNT
  	# (/selinux) is already a selinuxfs
-@@ -88,6 +92,7 @@ interface(`selinux_dontaudit_get_fs_moun
+ 	allow $1 security_t:filesystem getattr;
+ 
+@@ -86,10 +90,11 @@ interface(`selinux_get_fs_mount',`
+ interface(`selinux_dontaudit_get_fs_mount',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -37,7 +41,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	# starting in libselinux 2.0.5, init_selinuxmnt() will
  	# attempt to short circuit by checking if SELINUXMNT
  	# (/selinux) is already a selinuxfs
-@@ -117,6 +122,8 @@ interface(`selinux_mount_fs',`
+ 	dontaudit $1 security_t:filesystem getattr;
+ 
+@@ -115,10 +120,12 @@ interface(`selinux_dontaudit_get_fs_moun
+ interface(`selinux_mount_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -46,7 +54,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	allow $1 security_t:filesystem mount;
  ')
  
-@@ -136,6 +143,8 @@ interface(`selinux_remount_fs',`
+ ########################################
+ ## <summary>
+@@ -134,10 +141,12 @@ interface(`selinux_mount_fs',`
+ interface(`selinux_remount_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -55,7 +67,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	allow $1 security_t:filesystem remount;
  ')
  
-@@ -154,6 +163,8 @@ interface(`selinux_unmount_fs',`
+ ########################################
+ ## <summary>
+@@ -152,10 +161,12 @@ interface(`selinux_remount_fs',`
+ interface(`selinux_unmount_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -64,7 +80,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	allow $1 security_t:filesystem unmount;
  ')
  
-@@ -172,6 +183,8 @@ interface(`selinux_getattr_fs',`
+ ########################################
+ ## <summary>
+@@ -170,10 +181,12 @@ interface(`selinux_unmount_fs',`
+ interface(`selinux_getattr_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -73,7 +93,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	allow $1 security_t:filesystem getattr;
  
  	dev_getattr_sysfs($1)
-@@ -194,6 +207,7 @@ interface(`selinux_dontaudit_getattr_fs'
+ 	dev_search_sysfs($1)
+ ')
+@@ -192,10 +205,11 @@ interface(`selinux_getattr_fs',`
+ interface(`selinux_dontaudit_getattr_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -81,7 +105,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dontaudit $1 security_t:filesystem getattr;
  
  	dev_dontaudit_getattr_sysfs($1)
-@@ -216,6 +230,7 @@ interface(`selinux_dontaudit_getattr_dir
+ 	dev_dontaudit_search_sysfs($1)
+ ')
+@@ -214,10 +228,11 @@ interface(`selinux_dontaudit_getattr_fs'
+ interface(`selinux_dontaudit_getattr_dir',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -89,7 +117,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dontaudit $1 security_t:dir getattr;
  ')
  
-@@ -234,6 +249,7 @@ interface(`selinux_search_fs',`
+ ########################################
+ ## <summary>
+@@ -232,10 +247,11 @@ interface(`selinux_dontaudit_getattr_dir
+ interface(`selinux_search_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -97,7 +129,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  	allow $1 security_t:dir search_dir_perms;
  ')
-@@ -253,6 +269,7 @@ interface(`selinux_dontaudit_search_fs',
+ 
+ ########################################
+@@ -251,10 +267,11 @@ interface(`selinux_search_fs',`
+ interface(`selinux_dontaudit_search_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -105,7 +141,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dontaudit $1 security_t:dir search_dir_perms;
  ')
  
-@@ -272,6 +289,7 @@ interface(`selinux_dontaudit_read_fs',`
+ ########################################
+ ## <summary>
+@@ -270,10 +287,11 @@ interface(`selinux_dontaudit_search_fs',
+ interface(`selinux_dontaudit_read_fs',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -113,7 +153,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dontaudit $1 security_t:dir search_dir_perms;
  	dontaudit $1 security_t:file read_file_perms;
  ')
-@@ -293,6 +311,7 @@ interface(`selinux_get_enforce_mode',`
+ 
+ ########################################
+@@ -291,10 +309,11 @@ interface(`selinux_dontaudit_read_fs',`
+ interface(`selinux_get_enforce_mode',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -121,7 +165,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file read_file_perms;
-@@ -361,6 +380,7 @@ interface(`selinux_read_policy',`
+ ')
+ 
+@@ -359,10 +378,11 @@ interface(`selinux_load_policy',`
+ interface(`selinux_read_policy',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -129,7 +177,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file read_file_perms;
-@@ -426,6 +446,7 @@ interface(`selinux_set_generic_booleans'
+ 	allow $1 security_t:security read_policy;
+ ')
+@@ -424,10 +444,11 @@ interface(`selinux_set_boolean',`
+ interface(`selinux_set_generic_booleans',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -137,7 +189,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  
  	allow $1 security_t:dir list_dir_perms;
-@@ -463,6 +484,7 @@ interface(`selinux_set_all_booleans',`
+ 	allow $1 security_t:file rw_file_perms;
+ 
+@@ -461,10 +482,11 @@ interface(`selinux_set_all_booleans',`
+ 		type security_t, secure_mode_policyload_t;
+ 		attribute boolean_type;
  		bool secure_mode_policyload;
  	')
  
@@ -145,7 +201,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  
  	allow $1 security_t:dir list_dir_perms;
-@@ -522,6 +544,7 @@ interface(`selinux_validate_context',`
+ 	allow $1 { boolean_type -secure_mode_policyload_t }:file rw_file_perms;
+ 	allow $1 secure_mode_policyload_t:file read_file_perms;
+@@ -520,10 +542,11 @@ interface(`selinux_set_parameters',`
+ interface(`selinux_validate_context',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -153,7 +213,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
-@@ -544,6 +567,7 @@ interface(`selinux_dontaudit_validate_co
+ 	allow $1 security_t:security check_context;
+ ')
+@@ -542,10 +565,11 @@ interface(`selinux_validate_context',`
+ interface(`selinux_dontaudit_validate_context',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -161,7 +225,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dontaudit $1 security_t:dir list_dir_perms;
  	dontaudit $1 security_t:file rw_file_perms;
  	dontaudit $1 security_t:security check_context;
-@@ -565,6 +589,7 @@ interface(`selinux_compute_access_vector
+ ')
+ 
+@@ -563,10 +587,11 @@ interface(`selinux_dontaudit_validate_co
+ interface(`selinux_compute_access_vector',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -169,7 +237,11 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
-@@ -660,6 +685,7 @@ interface(`selinux_compute_user_contexts
+ 	allow $1 security_t:security compute_av;
+ ')
+@@ -658,10 +683,11 @@ interface(`selinux_compute_relabel_conte
+ interface(`selinux_compute_user_contexts',`
+ 	gen_require(`
  		type security_t;
  	')
  
@@ -177,3 +249,5 @@ Index: refpolicy/policy/modules/kernel/selinux.if
  	dev_search_sysfs($1)
  	allow $1 security_t:dir list_dir_perms;
  	allow $1 security_t:file rw_file_perms;
+ 	allow $1 security_t:security compute_user;
+ ')
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
index f04ebec..016685c 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
@@ -16,7 +16,9 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 
 --- a/policy/modules/contrib/rpc.te
 +++ b/policy/modules/contrib/rpc.te
-@@ -263,6 +263,11 @@ tunable_policy(`nfs_export_all_ro',`
+@@ -275,10 +275,15 @@ tunable_policy(`nfs_export_all_ro',`
+ 	files_read_non_auth_files(nfsd_t)
+ ')
  
  optional_policy(`
  	mount_exec(nfsd_t)
@@ -28,9 +30,13 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
  
  ########################################
+ #
+ # GSSD local policy
 --- a/policy/modules/contrib/rpcbind.te
 +++ b/policy/modules/contrib/rpcbind.te
-@@ -70,6 +70,11 @@ logging_send_syslog_msg(rpcbind_t)
+@@ -71,8 +71,13 @@ auth_use_nsswitch(rpcbind_t)
+ 
+ logging_send_syslog_msg(rpcbind_t)
  
  miscfiles_read_localization(rpcbind_t)
  
@@ -44,18 +50,24 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  ')
 --- a/policy/modules/kernel/filesystem.te
 +++ b/policy/modules/kernel/filesystem.te
-@@ -119,6 +119,7 @@ genfscon mvfs / gen_context(system_u:obj
+@@ -127,10 +127,11 @@ fs_noxattr_type(mvfs_t)
+ allow mvfs_t self:filesystem associate;
+ genfscon mvfs / gen_context(system_u:object_r:mvfs_t,s0)
  
  type nfsd_fs_t;
  fs_type(nfsd_fs_t)
 +files_mountpoint(nfsd_fs_t)
  genfscon nfsd / gen_context(system_u:object_r:nfsd_fs_t,s0)
  
- type oprofilefs_t;
+ type nsfs_t;
+ fs_type(nsfs_t)
+ genfscon nsfs / gen_context(system_u:object_r:nsfs_t,s0)
 --- a/policy/modules/kernel/kernel.te
 +++ b/policy/modules/kernel/kernel.te
-@@ -293,6 +293,8 @@ mls_process_read_up(kernel_t)
- mls_process_write_down(kernel_t)
+@@ -324,10 +324,12 @@ mcs_process_set_categories(kernel_t)
+ 
+ mls_process_read_all_levels(kernel_t)
+ mls_process_write_all_levels(kernel_t)
  mls_file_write_all_levels(kernel_t)
  mls_file_read_all_levels(kernel_t)
 +mls_socket_write_all_levels(kernel_t)
@@ -63,3 +75,5 @@ Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
  
  ifdef(`distro_redhat',`
  	# Bugzilla 222337
+ 	fs_rw_tmpfs_chr_files(kernel_t)
+ ')
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
index 0b8cc5d..950f525 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
@@ -14,11 +14,11 @@ Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
  policy/modules/system/selinuxutil.te |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
-diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
-index f998491..1a4e565 100644
 --- a/policy/modules/system/selinuxutil.te
 +++ b/policy/modules/system/selinuxutil.te
-@@ -555,7 +555,7 @@ files_dontaudit_read_all_symlinks(setfiles_t)
+@@ -556,11 +556,11 @@ files_read_usr_symlinks(setfiles_t)
+ files_dontaudit_read_all_symlinks(setfiles_t)
+ 
  # needs to be able to read symlinks to make restorecon on symlink working
  files_read_all_symlinks(setfiles_t)
  
@@ -27,6 +27,5 @@ index f998491..1a4e565 100644
  fs_list_all(setfiles_t)
  fs_search_auto_mountpoints(setfiles_t)
  fs_relabelfrom_noxattr_fs(setfiles_t)
--- 
-1.7.9.5
-
+ 
+ mls_file_read_all_levels(setfiles_t)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch
index be33bf1..c9a877b 100644
--- a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch
@@ -11,11 +11,11 @@ Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
  policy/modules/system/userdomain.if  |    4 ++++
  2 files changed, 5 insertions(+)
 
-diff --git a/policy/modules/system/selinuxutil.if b/policy/modules/system/selinuxutil.if
-index 3822072..db03ca1 100644
 --- a/policy/modules/system/selinuxutil.if
 +++ b/policy/modules/system/selinuxutil.if
-@@ -680,6 +680,7 @@ interface(`seutil_manage_config',`
+@@ -753,10 +753,11 @@ interface(`seutil_manage_config',`
+ 	gen_require(`
+ 		type selinux_config_t;
  	')
  
  	files_search_etc($1)
@@ -23,11 +23,13 @@ index 3822072..db03ca1 100644
  	manage_files_pattern($1, selinux_config_t, selinux_config_t)
  	read_lnk_files_pattern($1, selinux_config_t, selinux_config_t)
  ')
-diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
-index b4a691d..20c8bf8 100644
+ 
+ #######################################
 --- a/policy/modules/system/userdomain.if
 +++ b/policy/modules/system/userdomain.if
-@@ -1277,6 +1277,10 @@ template(`userdom_security_admin_template',`
+@@ -1327,10 +1327,14 @@ template(`userdom_security_admin_templat
+ 	logging_read_audit_log($1)
+ 	logging_read_generic_logs($1)
  	logging_read_audit_config($1)
  
  	seutil_manage_bin_policy($1)
@@ -38,6 +40,5 @@ index b4a691d..20c8bf8 100644
  	seutil_run_checkpolicy($1, $2)
  	seutil_run_loadpolicy($1, $2)
  	seutil_run_semanage($1, $2)
--- 
-1.7.9.5
-
+ 	seutil_run_setfiles($1, $2)
+ 
diff --git a/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
index 9693345..86ff0d2 100644
--- a/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
+++ b/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
@@ -12,11 +12,11 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
  policy/modules/system/init.te |    5 +++++
  1 file changed, 5 insertions(+)
 
-diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
-index c8f007d..a9675f6 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -929,3 +929,8 @@ optional_policy(`
+@@ -1105,5 +1105,10 @@ optional_policy(`
+ ')
+ 
  optional_policy(`
  	zebra_read_config(initrc_t)
  ')
@@ -26,6 +26,3 @@ index c8f007d..a9675f6 100644
 +allow devpts_t device_t:filesystem associate;
 +allow init_t self:capability2 block_suspend;
 \ No newline at end of file
--- 
-1.7.9.5
-
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index ea98139..58152a8 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -29,6 +29,10 @@ FILES_${PN}-dev =+ " \
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
 
+RDEPENDS-${PN}-dev =+ " \
+        python \
+"
+
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
 inherit pythonnative
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index d031f81..e6e63c9 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -17,16 +17,13 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-fix-real-path_shadow.patch \
             file://poky-fc-fix-bind.patch \
             file://poky-fc-clock.patch \
-            file://poky-fc-corecommands.patch \
             file://poky-fc-dmesg.patch \
             file://poky-fc-fstools.patch \
-            file://poky-fc-iptables.patch \
             file://poky-fc-mta.patch \
             file://poky-fc-netutils.patch \
             file://poky-fc-nscd.patch \
             file://poky-fc-screen.patch \
             file://poky-fc-ssh.patch \
-            file://poky-fc-su.patch \
             file://poky-fc-sysnetwork.patch \
             file://poky-fc-udevd.patch \
             file://poky-fc-rpm.patch \
-- 
1.9.1


