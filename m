Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19E9DE00758; Mon,  3 Aug 2015 06:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2684AE003D4
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:33:36 -0700 (PDT)
Received: by pasy3 with SMTP id y3so14948836pas.2
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=XEHJURIVlUoHRyEjqziR7U+uFZCpfm282WzUob8rtBI=;
	b=0btgBxWRCSfY1LqJRzU5bKe5gbidiulRG3En19YYbkq+iU/A3uT4P0yTq4p+SOgPj6
	pG6OtCUHggaAeo1TGS4m4zwdcySjZUVp4b9FVrK9c5gyBcnuTBU1snrWr74yE/S4pZd4
	o5v91Wif3Ha4HvI9Ji+j/5yqZzG3hRO9ZvFaV3Jh74VRNdB0ighsdJbTyDp9TgzCsg/q
	r4Bp8r//O5o/cy7qUDTkLlCXqcaArZQ+KjkQ74Ajp2RDgzMHElV3WtpqsE1WIbZk7AQ9
	tAoL2BkTm+54Bm0krp2hVDaLYWtWkZfSoblMVqP+43mPC1BM8uBm/vTRFDpgl1Am+RLJ
	uApA==
X-Received: by 10.66.185.225 with SMTP id ff1mr11805145pac.154.1438608816040; 
	Mon, 03 Aug 2015 06:33:36 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	ni14sm17638152pdb.11.2015.08.03.06.33.33
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:33:35 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:04:37 +0530
Message-Id: <1438608877-9786-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 1/8] refpolicy git: update refpolicy to git repository
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
X-List-Received-Date: Mon, 03 Aug 2015 13:33:45 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A straight update from refpolicy 2.20140311 to refpolicy git
repository for the core policy variants and forward-porting
of policy patches as appropriate.

This approach is useful for building refpolicy & refpolicy-contrib
directly from the git repos, rather than release tarballs.
It helps to check the refpolicy based on source commits by just
updating the git repo rev. as appropriate in refpolicy_git.inc

ref: https://github.com/TresysTechnology/refpolicy/wiki

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |   39 ++++
 .../refpolicy/refpolicy-git/poky-fc-clock.patch    |   22 ++
 .../refpolicy-git/poky-fc-corecommands.patch       |   24 ++
 .../refpolicy/refpolicy-git/poky-fc-dmesg.patch    |   20 ++
 .../refpolicy/refpolicy-git/poky-fc-fix-bind.patch |   30 +++
 .../poky-fc-fix-real-path_login.patch              |   37 ++++
 .../poky-fc-fix-real-path_resolv.conf.patch        |   24 ++
 .../poky-fc-fix-real-path_shadow.patch             |   34 +++
 .../refpolicy-git/poky-fc-fix-real-path_su.patch   |   25 +++
 .../refpolicy/refpolicy-git/poky-fc-fstools.patch  |   65 ++++++
 .../refpolicy-git/poky-fc-ftpwho-dir.patch         |   27 +++
 .../refpolicy/refpolicy-git/poky-fc-iptables.patch |   24 ++
 .../refpolicy/refpolicy-git/poky-fc-mta.patch      |   27 +++
 .../refpolicy/refpolicy-git/poky-fc-netutils.patch |   24 ++
 .../refpolicy/refpolicy-git/poky-fc-nscd.patch     |   27 +++
 .../refpolicy/refpolicy-git/poky-fc-rpm.patch      |   25 +++
 .../refpolicy/refpolicy-git/poky-fc-screen.patch   |   27 +++
 .../refpolicy/refpolicy-git/poky-fc-ssh.patch      |   24 ++
 .../refpolicy/refpolicy-git/poky-fc-su.patch       |   23 ++
 .../refpolicy-git/poky-fc-subs_dist.patch          |   29 +++
 .../refpolicy-git/poky-fc-sysnetwork.patch         |   41 ++++
 .../refpolicy/refpolicy-git/poky-fc-udevd.patch    |   35 +++
 .../poky-fc-update-alternatives_hostname.patch     |   23 ++
 .../poky-fc-update-alternatives_sysklogd.patch     |   59 +++++
 .../poky-fc-update-alternatives_sysvinit.patch     |   53 +++++
 ...poky-policy-add-rules-for-bsdpty_device_t.patch |  121 +++++++++++
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 +++
 .../poky-policy-add-rules-for-tmp-symlink.patch    |   99 +++++++++
 ...ky-policy-add-rules-for-var-cache-symlink.patch |   34 +++
 ...licy-add-rules-for-var-log-symlink-apache.patch |   31 +++
 ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++
 ...poky-policy-add-rules-for-var-log-symlink.patch |  145 +++++++++++++
 ...ky-policy-add-syslogd_t-to-trusted-object.patch |   31 +++
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |   58 +++++
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |   29 +++
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |   33 +++
 .../poky-policy-don-t-audit-tty_device_t.patch     |   35 +++
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |   37 ++++
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    |  229 ++++++++++++++++++++
 ...poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch |   65 ++++++
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |   31 +++
 ...ky-policy-fix-seutils-manage-config-files.patch |   43 ++++
 .../refpolicy-update-for_systemd.patch             |   46 ++++
 recipes-security/refpolicy/refpolicy_git.inc       |   62 ++++++
 44 files changed, 1976 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy_git.inc

diff --git a/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch b/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch
new file mode 100644
index 0000000..49da4b6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/ftp-add-ftpd_t-to-mlsfilewrite.patch
@@ -0,0 +1,39 @@
+From e4e95b723d31c7b678a05cd81a96b10185978b4e Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Mon, 10 Feb 2014 18:10:12 +0800
+Subject: [PATCH] ftp: add ftpd_t to mls_file_write_all_levels
+
+Proftpd will create file under /var/run, but its mls is in high, and
+can not write to lowlevel
+
+Upstream-Status: Pending
+
+type=AVC msg=audit(1392347709.621:15): avc:  denied  { write } for  pid=545 comm="proftpd" name="/" dev="tmpfs" ino=5853 scontext=system_u:system_r:ftpd_t:s15:c0.c1023 tcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 tclass=dir
+type=AVC msg=audit(1392347709.621:15): avc:  denied  { add_name } for  pid=545 comm="proftpd" name="proftpd.delay" scontext=system_u:system_r:ftpd_t:s15:c0.c1023 tcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 tclass=dir
+type=SYSCALL msg=audit(1392347709.621:15): arch=c000003e syscall=2 success=yes exit=3 a0=471910 a1=42 a2=1b6 a3=8 items=0 ppid=539 pid=545 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 ses=4294967295 tty=(none) comm="proftpd" exe="/usr/sbin/proftpd" subj=system_u:system_r:ftpd_t:s15:c0.c1023 key=(null)
+
+root@localhost:~# sesearch --allow -s ftpd_t -t var_run_t|grep dir|grep add_name 
+   allow ftpd_t var_run_t : dir { ioctl read write getattr lock add_name remove_name search open } ; 
+root@localhost:~#
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ policy/modules/contrib/ftp.te |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/contrib/ftp.te b/policy/modules/contrib/ftp.te
+index 544c512..12a31dd 100644
+--- a/policy/modules/contrib/ftp.te
++++ b/policy/modules/contrib/ftp.te
+@@ -144,6 +144,8 @@ role ftpdctl_roles types ftpdctl_t;
+ type ftpdctl_tmp_t;
+ files_tmp_file(ftpdctl_tmp_t)
+ 
++mls_file_write_all_levels(ftpd_t)
++
+ type sftpd_t;
+ domain_type(sftpd_t)
+ role system_r types sftpd_t;
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
new file mode 100644
index 0000000..3ff8f55
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
@@ -0,0 +1,22 @@
+Subject: [PATCH] refpolicy: fix real path for clock
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/clock.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/clock.fc b/policy/modules/system/clock.fc
+index c5e05ca..a74c40c 100644
+--- a/policy/modules/system/clock.fc
++++ b/policy/modules/system/clock.fc
+@@ -2,4 +2,5 @@
+ /etc/adjtime		--	gen_context(system_u:object_r:adjtime_t,s0)
+ 
+ /sbin/hwclock		--	gen_context(system_u:object_r:hwclock_exec_t,s0)
++/sbin/hwclock\.util-linux	--	gen_context(system_u:object_r:hwclock_exec_t,s0)
+ 
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch
new file mode 100644
index 0000000..24b67c3
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-corecommands.patch
@@ -0,0 +1,24 @@
+Subject: [PATCH] refpolicy: fix real path for corecommands
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/kernel/corecommands.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
+index f051c4a..ab624f3 100644
+--- a/policy/modules/kernel/corecommands.fc
++++ b/policy/modules/kernel/corecommands.fc
+@@ -153,6 +153,7 @@ ifdef(`distro_gentoo',`
+ /sbin/insmod_ksymoops_clean	--	gen_context(system_u:object_r:bin_t,s0)
+ /sbin/mkfs\.cramfs		--	gen_context(system_u:object_r:bin_t,s0)
+ /sbin/nologin			--	gen_context(system_u:object_r:shell_exec_t,s0)
++/usr/sbin/nologin		--	gen_context(system_u:object_r:shell_exec_t,s0)
+ 
+ #
+ # /opt
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
new file mode 100644
index 0000000..db4c4d4
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
@@ -0,0 +1,20 @@
+Subject: [PATCH] refpolicy: fix real path for dmesg
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/admin/dmesg.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/dmesg.fc b/policy/modules/admin/dmesg.fc
+index d6cc2d9..7f3e5b0 100644
+--- a/policy/modules/admin/dmesg.fc
++++ b/policy/modules/admin/dmesg.fc
+@@ -1,2 +1,3 @@
+ 
+ /bin/dmesg		--		gen_context(system_u:object_r:dmesg_exec_t,s0)
++/bin/dmesg\.util-linux	--		gen_context(system_u:object_r:dmesg_exec_t,s0)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch
new file mode 100644
index 0000000..59ba5bc
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-bind.patch
@@ -0,0 +1,30 @@
+From e438a9466a615db3f63421157d5ee3bd6d055403 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 19:09:11 +0800
+Subject: [PATCH] refpolicy: fix real path for bind.
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/contrib/bind.fc |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/contrib/bind.fc b/policy/modules/contrib/bind.fc
+index 2b9a3a1..fd45d53 100644
+--- a/policy/modules/contrib/bind.fc
++++ b/policy/modules/contrib/bind.fc
+@@ -1,8 +1,10 @@
+ /etc/rc\.d/init\.d/named	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/bind	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/unbound	--	gen_context(system_u:object_r:named_initrc_exec_t,s0)
+ 
+ /etc/bind(/.*)?	gen_context(system_u:object_r:named_zone_t,s0)
+ /etc/bind/named\.conf.*	--	gen_context(system_u:object_r:named_conf_t,s0)
++/etc/bind/rndc\.conf    --      gen_context(system_u:object_r:named_conf_t,s0)
+ /etc/bind/rndc\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
+ /etc/dnssec-trigger/dnssec_trigger_server\.key	--	gen_context(system_u:object_r:dnssec_t,s0)
+ /etc/named\.rfc1912\.zones	--	gen_context(system_u:object_r:named_conf_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch
new file mode 100644
index 0000000..427181e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_login.patch
@@ -0,0 +1,37 @@
+Subject: [PATCH] fix real path for login commands.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/authlogin.fc |    7 ++++---
+ 1 files changed, 4 insertions(+), 3 deletions(-)
+
+diff --git a/policy/modules/system/authlogin.fc b/policy/modules/system/authlogin.fc
+index 28ad538..c8dd17f 100644
+--- a/policy/modules/system/authlogin.fc
++++ b/policy/modules/system/authlogin.fc
+@@ -1,5 +1,7 @@
+ 
+ /bin/login		--	gen_context(system_u:object_r:login_exec_t,s0)
++/bin/login\.shadow	--	gen_context(system_u:object_r:login_exec_t,s0)
++/bin/login\.tinylogin	--	gen_context(system_u:object_r:login_exec_t,s0)
+ 
+ /etc/\.pwd\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
+ /etc/group\.lock	--	gen_context(system_u:object_r:shadow_t,s0)
+@@ -9,9 +11,9 @@
+ 
+ /sbin/pam_console_apply	 --	gen_context(system_u:object_r:pam_console_exec_t,s0)
+ /sbin/pam_timestamp_check --	gen_context(system_u:object_r:pam_exec_t,s0)
+-/sbin/unix_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
+-/sbin/unix_update	--	gen_context(system_u:object_r:updpwd_exec_t,s0)
+-/sbin/unix_verify	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
++/usr/sbin/unix_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
++/usr/sbin/unix_update	--	gen_context(system_u:object_r:updpwd_exec_t,s0)
++/usr/sbin/unix_verify	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
+ ifdef(`distro_suse', `
+ /sbin/unix2_chkpwd	--	gen_context(system_u:object_r:chkpwd_exec_t,s0)
+ ')
+-- 
+1.7.5.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch
new file mode 100644
index 0000000..80cca67
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch
@@ -0,0 +1,24 @@
+Subject: [PATCH] fix real path for resolv.conf
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/sysnetwork.fc |    1 +
+ 1 files changed, 1 insertions(+), 0 deletions(-)
+
+diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
+index 346a7cc..dec8632 100644
+--- a/policy/modules/system/sysnetwork.fc
++++ b/policy/modules/system/sysnetwork.fc
+@@ -24,6 +24,7 @@ ifdef(`distro_debian',`
+ /etc/hosts\.deny.*	--	gen_context(system_u:object_r:net_conf_t,s0)
+ /etc/denyhosts.*	--	gen_context(system_u:object_r:net_conf_t,s0)
+ /etc/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
++/var/run/resolv\.conf.*	--	gen_context(system_u:object_r:net_conf_t,s0)
+ /etc/yp\.conf.*		--	gen_context(system_u:object_r:net_conf_t,s0)
+ 
+ /etc/dhcp3(/.*)?		gen_context(system_u:object_r:dhcp_etc_t,s0)
+-- 
+1.7.5.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
new file mode 100644
index 0000000..29ac2c3
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
@@ -0,0 +1,34 @@
+Subject: [PATCH] fix real path for shadow commands.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/admin/usermanage.fc |    6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/policy/modules/admin/usermanage.fc b/policy/modules/admin/usermanage.fc
+index f82f0ce..841ba9b 100644
+--- a/policy/modules/admin/usermanage.fc
++++ b/policy/modules/admin/usermanage.fc
+@@ -4,11 +4,17 @@ ifdef(`distro_gentoo',`
+ 
+ /usr/bin/chage		--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/bin/chfn		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chfn\.shadow	--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/chsh		--	gen_context(system_u:object_r:chfn_exec_t,s0)
++/usr/bin/chsh\.shadow	--	gen_context(system_u:object_r:chfn_exec_t,s0)
+ /usr/bin/gpasswd	--	gen_context(system_u:object_r:groupadd_exec_t,s0)
+ /usr/bin/passwd		--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/bin/passwd\.shadow	--	gen_context(system_u:object_r:passwd_exec_t,s0)
++/usr/bin/passwd\.tinylogin	--	gen_context(system_u:object_r:passwd_exec_t,s0)
+ /usr/bin/vigr		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
++/sbin/vigr\.shadow	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ /usr/bin/vipw		--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
++/sbin/vipw\.shadow	--	gen_context(system_u:object_r:admin_passwd_exec_t,s0)
+ 
+ /usr/lib/cracklib_dict.* --	gen_context(system_u:object_r:crack_db_t,s0)
+ 
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch
new file mode 100644
index 0000000..b0392ce
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_su.patch
@@ -0,0 +1,25 @@
+From 4affa5e9797f5d51597c9b8e0f2503883c766699 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 13 Feb 2014 00:33:07 -0500
+Subject: [PATCH] fix real path for su.shadow command
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/admin/su.fc |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
+index a563687..0f43827 100644
+--- a/policy/modules/admin/su.fc
++++ b/policy/modules/admin/su.fc
+@@ -4,3 +4,5 @@
+ 
+ /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
+ /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
++
++/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
new file mode 100644
index 0000000..38c96c4
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-fstools.patch
@@ -0,0 +1,65 @@
+From 7fdfd2ef8764ddfaeb43e53a756af83d42d8ac8b Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 27 Jan 2014 03:54:01 -0500
+Subject: [PATCH] refpolicy: fix real path for fstools
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/system/fstools.fc |   11 +++++++++++
+ 1 file changed, 11 insertions(+)
+
+--- a/policy/modules/system/fstools.fc
++++ b/policy/modules/system/fstools.fc
+@@ -1,6 +1,8 @@
+ /sbin/badblocks		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/blkid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/blkid\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/blockdev		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/blockdev\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/cfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/dosfsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/dump		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -9,9 +11,11 @@
+ /sbin/e4fsck		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/e2label		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/fdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/fdisk\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/fsck.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/hdparm		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/hdparm\.hdparm	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/install-mbr	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -24,6 +28,7 @@
+ /sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/mkreiserfs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/mkswap\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/parted		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -34,6 +39,7 @@
+ /sbin/scsi_info		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/swapoff\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /sbin/zdb		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+@@ -50,7 +56,12 @@
+ 
+ /usr/sbin/clubufflush	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/fatsort	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/findfs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/parted	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/partprobe		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/partx		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/raw		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ /usr/sbin/smartctl	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
+ 
+ /var/log/fsck(/.*)?		gen_context(system_u:object_r:fsadm_log_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
new file mode 100644
index 0000000..a7d434f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
@@ -0,0 +1,27 @@
+fix ftpwho install dir
+
+Upstream-Status: Pending
+
+ftpwho is installed into /usr/bin/, not /usr/sbin, so fix it
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ policy/modules/contrib/ftp.fc |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/contrib/ftp.fc b/policy/modules/contrib/ftp.fc
+index ddb75c1..26fec47 100644
+--- a/policy/modules/contrib/ftp.fc
++++ b/policy/modules/contrib/ftp.fc
+@@ -9,7 +9,7 @@
+ 
+ /usr/kerberos/sbin/ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
+ 
+-/usr/sbin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
++/usr/bin/ftpwho	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
+ /usr/sbin/in\.ftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
+ /usr/sbin/muddleftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
+ /usr/sbin/proftpd	--	gen_context(system_u:object_r:ftpd_exec_t,s0)
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch
new file mode 100644
index 0000000..89b1547
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-iptables.patch
@@ -0,0 +1,24 @@
+Subject: [PATCH] refpolicy: fix real path for iptables
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/iptables.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/iptables.fc b/policy/modules/system/iptables.fc
+index 14cffd2..84ac92b 100644
+--- a/policy/modules/system/iptables.fc
++++ b/policy/modules/system/iptables.fc
+@@ -13,6 +13,7 @@
+ /sbin/ipvsadm-restore		--	gen_context(system_u:object_r:iptables_exec_t,s0)
+ /sbin/ipvsadm-save		--	gen_context(system_u:object_r:iptables_exec_t,s0)
+ /sbin/xtables-multi		--	gen_context(system_u:object_r:iptables_exec_t,s0)
++/usr/sbin/xtables-multi		--	gen_context(system_u:object_r:iptables_exec_t,s0)
+ 
+ /usr/sbin/ipchains.*		--	gen_context(system_u:object_r:iptables_exec_t,s0)
+ /usr/sbin/iptables		--	gen_context(system_u:object_r:iptables_exec_t,s0)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
new file mode 100644
index 0000000..bbd83ec
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
@@ -0,0 +1,27 @@
+From c0bb2996db4f55f3987967bacfb99805fc45d027 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 19:21:55 +0800
+Subject: [PATCH] refpolicy: fix real path for mta
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/contrib/mta.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/contrib/mta.fc b/policy/modules/contrib/mta.fc
+index f42896c..0d4bcef 100644
+--- a/policy/modules/contrib/mta.fc
++++ b/policy/modules/contrib/mta.fc
+@@ -22,6 +22,7 @@ HOME_DIR/\.maildir(/.*)?	gen_context(system_u:object_r:mail_home_rw_t,s0)
+ /usr/sbin/rmail	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
+ /usr/sbin/sendmail\.postfix	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
+ /usr/sbin/sendmail(\.sendmail)?	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
++/usr/sbin/msmtp	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
+ /usr/sbin/ssmtp	--	gen_context(system_u:object_r:sendmail_exec_t,s0)
+ 
+ /var/mail(/.*)?	gen_context(system_u:object_r:mail_spool_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch
new file mode 100644
index 0000000..b45d03e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-netutils.patch
@@ -0,0 +1,24 @@
+Subject: [PATCH] refpolicy: fix real path for netutils
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/admin/netutils.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/netutils.fc b/policy/modules/admin/netutils.fc
+index 407078f..f2ed3dc 100644
+--- a/policy/modules/admin/netutils.fc
++++ b/policy/modules/admin/netutils.fc
+@@ -3,6 +3,7 @@
+ /bin/traceroute.*	--	gen_context(system_u:object_r:traceroute_exec_t,s0)
+ 
+ /sbin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
++/bin/arping		--	gen_context(system_u:object_r:netutils_exec_t,s0)
+ 
+ /usr/bin/lft		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
+ /usr/bin/nmap		--	gen_context(system_u:object_r:traceroute_exec_t,s0)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
new file mode 100644
index 0000000..1db328c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
@@ -0,0 +1,27 @@
+From 642fab321a5f1f40495b4ca07f1fca4145024986 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 19:25:36 +0800
+Subject: [PATCH] refpolicy: fix real path for nscd
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/contrib/nscd.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/contrib/nscd.fc b/policy/modules/contrib/nscd.fc
+index ba64485..61a6f24 100644
+--- a/policy/modules/contrib/nscd.fc
++++ b/policy/modules/contrib/nscd.fc
+@@ -1,6 +1,7 @@
+ /etc/rc\.d/init\.d/nscd	--	gen_context(system_u:object_r:nscd_initrc_exec_t,s0)
+ 
+ /usr/sbin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
++/usr/bin/nscd	--	gen_context(system_u:object_r:nscd_exec_t,s0)
+ 
+ /var/cache/nscd(/.*)?	gen_context(system_u:object_r:nscd_var_run_t,s0)
+ 
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
new file mode 100644
index 0000000..7ba3380
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
@@ -0,0 +1,25 @@
+From 3ecbd842d51a8e70b3403e857a24203285d4983b Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 27 Jan 2014 01:13:06 -0500
+Subject: [PATCH] refpolicy: fix real path for cpio
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/contrib/rpm.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/contrib/rpm.fc b/policy/modules/contrib/rpm.fc
+index ebe91fc..539063c 100644
+--- a/policy/modules/contrib/rpm.fc
++++ b/policy/modules/contrib/rpm.fc
+@@ -58,4 +58,5 @@ ifdef(`distro_redhat',`
+ 
+ ifdef(`enable_mls',`
+ /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
++/bin/cpio.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
+ ')
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
new file mode 100644
index 0000000..3218194
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
@@ -0,0 +1,27 @@
+From 3615e2d67f402a37ae7333e62b54f1d9d0a3bfd1 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 19:27:19 +0800
+Subject: [PATCH] refpolicy: fix real path for screen
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/contrib/screen.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/contrib/screen.fc b/policy/modules/contrib/screen.fc
+index e7c2cf7..49ddca2 100644
+--- a/policy/modules/contrib/screen.fc
++++ b/policy/modules/contrib/screen.fc
+@@ -3,6 +3,7 @@ HOME_DIR/\.screenrc	--	gen_context(system_u:object_r:screen_home_t,s0)
+ HOME_DIR/\.tmux\.conf	--	gen_context(system_u:object_r:screen_home_t,s0)
+ 
+ /usr/bin/screen	--	gen_context(system_u:object_r:screen_exec_t,s0)
++/usr/bin/screen-.*	--	gen_context(system_u:object_r:screen_exec_t,s0)
+ /usr/bin/tmux	--	gen_context(system_u:object_r:screen_exec_t,s0)
+ 
+ /var/run/screen(/.*)?	gen_context(system_u:object_r:screen_var_run_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch
new file mode 100644
index 0000000..9aeb3a2
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-ssh.patch
@@ -0,0 +1,24 @@
+Subject: [PATCH] refpolicy: fix real path for ssh
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/services/ssh.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/services/ssh.fc b/policy/modules/services/ssh.fc
+index 078bcd7..9717428 100644
+--- a/policy/modules/services/ssh.fc
++++ b/policy/modules/services/ssh.fc
+@@ -6,6 +6,7 @@ HOME_DIR/\.ssh(/.*)?			gen_context(system_u:object_r:ssh_home_t,s0)
+ /etc/ssh/ssh_host_rsa_key	--	gen_context(system_u:object_r:sshd_key_t,s0)
+ 
+ /usr/bin/ssh			--	gen_context(system_u:object_r:ssh_exec_t,s0)
++/usr/bin/ssh\.openssh		--	gen_context(system_u:object_r:ssh_exec_t,s0)
+ /usr/bin/ssh-agent		--	gen_context(system_u:object_r:ssh_agent_exec_t,s0)
+ /usr/bin/ssh-keygen		--	gen_context(system_u:object_r:ssh_keygen_exec_t,s0)
+ 
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch
new file mode 100644
index 0000000..358e4ef
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-su.patch
@@ -0,0 +1,23 @@
+Subject: [PATCH] refpolicy: fix real path for su
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/admin/su.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
+index 688abc2..a563687 100644
+--- a/policy/modules/admin/su.fc
++++ b/policy/modules/admin/su.fc
+@@ -1,5 +1,6 @@
+ 
+ /bin/su			--	gen_context(system_u:object_r:su_exec_t,s0)
++/usr/bin/su		--	gen_context(system_u:object_r:su_exec_t,s0)
+ 
+ /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
+ /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
new file mode 100644
index 0000000..cfec7d9
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
@@ -0,0 +1,29 @@
+Subject: [PATCH] fix file_contexts.subs_dist for poky
+
+This file is used for Linux distros to define specific pathes 
+mapping to the pathes in file_contexts.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ config/file_contexts.subs_dist |   10 ++++++++++
+ 1 file changed, 10 insertions(+)
+
+--- a/config/file_contexts.subs_dist
++++ b/config/file_contexts.subs_dist
+@@ -19,3 +19,13 @@
+ /usr/local/lib64 /usr/lib
+ /usr/local/lib /usr/lib
+ /var/run/lock /var/lock
++/var/volatile/log /var/log
++/var/volatile/run /var/run
++/var/volatile/cache /var/cache
++/var/volatile/tmp /var/tmp
++/var/volatile/lock /var/lock
++/var/volatile/run/lock /var/lock
++/www /var/www
++/usr/lib/busybox/bin /bin
++/usr/lib/busybox/sbin /sbin
++/usr/lib/busybox/usr /usr
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
new file mode 100644
index 0000000..e0af6a1
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-sysnetwork.patch
@@ -0,0 +1,41 @@
+Subject: [PATCH] refpolicy: fix real path for sysnetwork
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/sysnetwork.fc | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
+index dec8632..2e602e4 100644
+--- a/policy/modules/system/sysnetwork.fc
++++ b/policy/modules/system/sysnetwork.fc
+@@ -3,6 +3,7 @@
+ # /bin
+ #
+ /bin/ip			--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/sbin/ip\.iproute2	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ 
+ #
+ # /dev
+@@ -43,13 +44,16 @@ ifdef(`distro_redhat',`
+ /sbin/dhcdbd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /sbin/dhcpcd		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /sbin/ethtool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/sbin/ethtool	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/ifconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/sbin/ifconfig\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/ip		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/ipx_configure	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/ipx_interface	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/ipx_internal_net	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/iwconfig		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/mii-tool		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/sbin/mii-tool\.net-tools	--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /sbin/pump		--	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /sbin/tc		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ 
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
new file mode 100644
index 0000000..c6c19be
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
@@ -0,0 +1,35 @@
+From 025bd3c77d3eeb0e316413bf7e6353f1ccd7f6b2 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Sat, 25 Jan 2014 23:40:05 -0500
+Subject: [PATCH] refpolicy: fix real path for udevd/udevadm
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/system/udev.fc |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
+index 40928d8..491bb23 100644
+--- a/policy/modules/system/udev.fc
++++ b/policy/modules/system/udev.fc
+@@ -10,6 +10,7 @@
+ /etc/udev/scripts/.+ --	gen_context(system_u:object_r:udev_helper_exec_t,s0)
+ 
+ /lib/udev/udev-acl --	gen_context(system_u:object_r:udev_exec_t,s0)
++/lib/udev/udevd    --	gen_context(system_u:object_r:udev_exec_t,s0)
+ 
+ ifdef(`distro_debian',`
+ /lib/udev/create_static_nodes -- gen_context(system_u:object_r:udev_exec_t,s0)
+@@ -27,6 +28,7 @@ ifdef(`distro_redhat',`
+ ')
+ 
+ /usr/bin/udevinfo --	gen_context(system_u:object_r:udev_exec_t,s0)
++/usr/bin/udevadm  --	gen_context(system_u:object_r:udev_exec_t,s0)
+ 
+ /usr/lib/systemd/systemd-udevd -- gen_context(system_u:object_r:udev_exec_t,s0)
+ 
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
new file mode 100644
index 0000000..cedb5b5
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
@@ -0,0 +1,23 @@
+From 845518a6f196e6e8c49ba38791c85e17276920e1 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 3/4] fix update-alternatives for hostname
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/hostname.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/hostname.fc b/policy/modules/system/hostname.fc
+index 9dfecf7..4003b6d 100644
+--- a/policy/modules/system/hostname.fc
++++ b/policy/modules/system/hostname.fc
+@@ -1,2 +1,3 @@
+ 
+ /bin/hostname		--	gen_context(system_u:object_r:hostname_exec_t,s0)
++/bin/hostname\.net-tools	--	gen_context(system_u:object_r:hostname_exec_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch
new file mode 100644
index 0000000..868ee6b
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysklogd.patch
@@ -0,0 +1,59 @@
+From 4964fa5593349916d8f5c69edb0b16f611586098 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:39:41 +0800
+Subject: [PATCH 2/4] fix update-alternatives for sysklogd
+
+/etc/syslog.conf is a symlink to /etc/syslog.conf.sysklogd, so a allow rule
+for syslogd_t to read syslog_conf_t lnk_file is needed.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.fc |    4 ++++
+ policy/modules/system/logging.te |    1 +
+ 2 files changed, 5 insertions(+)
+
+diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
+index b50c5fe..c005f33 100644
+--- a/policy/modules/system/logging.fc
++++ b/policy/modules/system/logging.fc
+@@ -2,19 +2,23 @@
+ 
+ /etc/rsyslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
+ /etc/syslog.conf		gen_context(system_u:object_r:syslog_conf_t,s0)
++/etc/syslog.conf\.sysklogd	gen_context(system_u:object_r:syslog_conf_t,s0)
+ /etc/audit(/.*)?		gen_context(system_u:object_r:auditd_etc_t,mls_systemhigh)
+ /etc/rc\.d/init\.d/auditd --	gen_context(system_u:object_r:auditd_initrc_exec_t,s0)
+ /etc/rc\.d/init\.d/rsyslog --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
++/etc/rc\.d/init\.d/syslog\.sysklogd --	gen_context(system_u:object_r:syslogd_initrc_exec_t,s0)
+ 
+ /sbin/audispd		--	gen_context(system_u:object_r:audisp_exec_t,s0)
+ /sbin/audisp-remote	--	gen_context(system_u:object_r:audisp_remote_exec_t,s0)
+ /sbin/auditctl		--	gen_context(system_u:object_r:auditctl_exec_t,s0)
+ /sbin/auditd		--	gen_context(system_u:object_r:auditd_exec_t,s0)
+ /sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
++/sbin/klogd\.sysklogd	--	gen_context(system_u:object_r:klogd_exec_t,s0)
+ /sbin/minilogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /sbin/rklogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
+ /sbin/rsyslogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /sbin/syslogd		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
++/sbin/syslogd\.sysklogd	--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ /sbin/syslog-ng		--	gen_context(system_u:object_r:syslogd_exec_t,s0)
+ 
+ /usr/sbin/klogd		--	gen_context(system_u:object_r:klogd_exec_t,s0)
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 87e3db2..2914b0b 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -371,6 +371,7 @@ allow syslogd_t self:udp_socket create_socket_perms;
+ allow syslogd_t self:tcp_socket create_stream_socket_perms;
+ 
+ allow syslogd_t syslog_conf_t:file read_file_perms;
++allow syslogd_t syslog_conf_t:lnk_file read_file_perms;
+ 
+ # Create and bind to /dev/log or /var/run/log.
+ allow syslogd_t devlog_t:sock_file manage_sock_file_perms;
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch
new file mode 100644
index 0000000..3a617d8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_sysvinit.patch
@@ -0,0 +1,53 @@
+From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 1/4] fix update-alternatives for sysvinit
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/contrib/shutdown.fc    |    1 +
+ policy/modules/kernel/corecommands.fc |    1 +
+ policy/modules/system/init.fc         |    1 +
+ 3 files changed, 3 insertions(+)
+
+diff --git a/policy/modules/contrib/shutdown.fc b/policy/modules/contrib/shutdown.fc
+index a91f33b..90e51e0 100644
+--- a/policy/modules/contrib/shutdown.fc
++++ b/policy/modules/contrib/shutdown.fc
+@@ -3,6 +3,7 @@
+ /lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+ /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
++/sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+ /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+diff --git a/policy/modules/kernel/corecommands.fc b/policy/modules/kernel/corecommands.fc
+index bcfdba7..87502a3 100644
+--- a/policy/modules/kernel/corecommands.fc
++++ b/policy/modules/kernel/corecommands.fc
+@@ -10,6 +10,7 @@
+ /bin/ksh.*			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /bin/mksh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /bin/mountpoint			--	gen_context(system_u:object_r:bin_t,s0)
++/bin/mountpoint\.sysvinit	--	gen_context(system_u:object_r:bin_t,s0)
+ /bin/sash			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /bin/tcsh			--	gen_context(system_u:object_r:shell_exec_t,s0)
+ /bin/yash			--	gen_context(system_u:object_r:shell_exec_t,s0)
+diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
+index bc0ffc8..020b9fe 100644
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -30,6 +30,7 @@ ifdef(`distro_gentoo', `
+ # /sbin
+ #
+ /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
++/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
+ # because nowadays, /sbin/init is often a symlink to /sbin/upstart
+ /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch
new file mode 100644
index 0000000..9a3322f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-bsdpty_device_t.patch
@@ -0,0 +1,121 @@
+From c0b65c327b9354ee5c403cbde428e762ce3f327e Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 5/6] add rules for bsdpty_device_t to complete pty devices.
+
+Upstream-Status: Pending
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/kernel/terminal.if |   16 ++++++++++++++++
+ 1 file changed, 16 insertions(+)
+
+diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
+index 771bce1..7519d0e 100644
+--- a/policy/modules/kernel/terminal.if
++++ b/policy/modules/kernel/terminal.if
+@@ -531,9 +531,11 @@ interface(`term_dontaudit_manage_pty_dirs',`
+ interface(`term_dontaudit_getattr_generic_ptys',`
+ 	gen_require(`
+ 		type devpts_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dontaudit $1 devpts_t:chr_file getattr;
++	dontaudit $1 bsdpty_device_t:chr_file getattr;
+ ')
+ ########################################
+ ## <summary>
+@@ -549,11 +551,13 @@ interface(`term_dontaudit_getattr_generic_ptys',`
+ interface(`term_ioctl_generic_ptys',`
+ 	gen_require(`
+ 		type devpts_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dev_list_all_dev_nodes($1)
+ 	allow $1 devpts_t:dir search;
+ 	allow $1 devpts_t:chr_file ioctl;
++	allow $1 bsdpty_device_t:chr_file ioctl;
+ ')
+ 
+ ########################################
+@@ -571,9 +575,11 @@ interface(`term_ioctl_generic_ptys',`
+ interface(`term_setattr_generic_ptys',`
+ 	gen_require(`
+ 		type devpts_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	allow $1 devpts_t:chr_file setattr;
++	allow $1 bsdpty_device_t:chr_file setattr;
+ ')
+ 
+ ########################################
+@@ -591,9 +597,11 @@ interface(`term_setattr_generic_ptys',`
+ interface(`term_dontaudit_setattr_generic_ptys',`
+ 	gen_require(`
+ 		type devpts_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dontaudit $1 devpts_t:chr_file setattr;
++	dontaudit $1 bsdpty_device_t:chr_file setattr;
+ ')
+ 
+ ########################################
+@@ -611,11 +619,13 @@ interface(`term_dontaudit_setattr_generic_ptys',`
+ interface(`term_use_generic_ptys',`
+ 	gen_require(`
+ 		type devpts_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dev_list_all_dev_nodes($1)
+ 	allow $1 devpts_t:dir list_dir_perms;
+ 	allow $1 devpts_t:chr_file { rw_term_perms lock append };
++	allow $1 bsdpty_device_t:chr_file { rw_term_perms lock append };
+ ')
+ 
+ ########################################
+@@ -633,9 +643,11 @@ interface(`term_use_generic_ptys',`
+ interface(`term_dontaudit_use_generic_ptys',`
+ 	gen_require(`
+ 		type devpts_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dontaudit $1 devpts_t:chr_file { getattr read write ioctl };
++	dontaudit $1 bsdpty_device_t:chr_file { getattr read write ioctl };
+ ')
+ 
+ #######################################
+@@ -651,10 +663,12 @@ interface(`term_dontaudit_use_generic_ptys',`
+ interface(`term_setattr_controlling_term',`
+ 	gen_require(`
+ 		type devtty_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dev_list_all_dev_nodes($1)
+ 	allow $1 devtty_t:chr_file setattr;
++	allow $1 bsdpty_device_t:chr_file setattr;
+ ')
+ 
+ ########################################
+@@ -671,10 +685,12 @@ interface(`term_setattr_controlling_term',`
+ interface(`term_use_controlling_term',`
+ 	gen_require(`
+ 		type devtty_t;
++		type bsdpty_device_t;
+ 	')
+ 
+ 	dev_list_all_dev_nodes($1)
+ 	allow $1 devtty_t:chr_file { rw_term_perms lock append };
++	allow $1 bsdpty_device_t:chr_file { rw_term_perms lock append };
+ ')
+ 
+ #######################################
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
new file mode 100644
index 0000000..aa9734a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
@@ -0,0 +1,30 @@
+Subject: [PATCH] add rules for the symlink of /var/log - syslogd_t
+
+We have added rules for the symlink of /var/log in logging.if,
+while syslogd_t uses /var/log but does not use the
+interfaces in logging.if. So still need add a individual rule for
+syslogd_t.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 2ad9ea5..70427d8 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -384,6 +384,8 @@ rw_fifo_files_pattern(syslogd_t, var_log_t, var_log_t)
+ # Allow access for syslog-ng
+ allow syslogd_t var_log_t:dir { create setattr };
+ 
++allow syslogd_t var_log_t:lnk_file read_lnk_file_perms;
++
+ # manage temporary files
+ manage_dirs_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
+ manage_files_pattern(syslogd_t, syslogd_tmp_t, syslogd_tmp_t)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch
new file mode 100644
index 0000000..210c297
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch
@@ -0,0 +1,99 @@
+From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] add rules for the symlink of /tmp
+
+/tmp is a symlink in poky, so we need allow rules for files to read
+lnk_file while doing search/list/delete/rw.. in /tmp/ directory.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/kernel/files.fc |    1 +
+ policy/modules/kernel/files.if |    8 ++++++++
+ 2 files changed, 9 insertions(+), 0 deletions(-)
+
+diff --git a/policy/modules/kernel/files.fc b/policy/modules/kernel/files.fc
+index 8796ca3..a0db748 100644
+--- a/policy/modules/kernel/files.fc
++++ b/policy/modules/kernel/files.fc
+@@ -185,6 +185,7 @@ ifdef(`distro_debian',`
+ # /tmp
+ #
+ /tmp			-d	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
++/tmp			-l	gen_context(system_u:object_r:tmp_t,s0-mls_systemhigh)
+ /tmp/.*				<<none>>
+ /tmp/\.journal			<<none>>
+ 
+diff --git a/policy/modules/kernel/files.if b/policy/modules/kernel/files.if
+index e1e814d..a7384b0 100644
+--- a/policy/modules/kernel/files.if
++++ b/policy/modules/kernel/files.if
+@@ -4199,6 +4199,7 @@ interface(`files_search_tmp',`
+ 	')
+ 
+ 	allow $1 tmp_t:dir search_dir_perms;
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4235,6 +4236,7 @@ interface(`files_list_tmp',`
+ 	')
+ 
+ 	allow $1 tmp_t:dir list_dir_perms;
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4271,6 +4273,7 @@ interface(`files_delete_tmp_dir_entry',`
+ 	')
+ 
+ 	allow $1 tmp_t:dir del_entry_dir_perms;
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4289,6 +4292,7 @@ interface(`files_read_generic_tmp_files',`
+ 	')
+ 
+ 	read_files_pattern($1, tmp_t, tmp_t)
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4307,6 +4311,7 @@ interface(`files_manage_generic_tmp_dirs',`
+ 	')
+ 
+ 	manage_dirs_pattern($1, tmp_t, tmp_t)
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4325,6 +4330,7 @@ interface(`files_manage_generic_tmp_files',`
+ 	')
+ 
+ 	manage_files_pattern($1, tmp_t, tmp_t)
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4361,6 +4367,7 @@ interface(`files_rw_generic_tmp_sockets',`
+ 	')
+ 
+ 	rw_sock_files_pattern($1, tmp_t, tmp_t)
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -4550,6 +4557,7 @@ interface(`files_tmp_filetrans',`
+ 	')
+ 
+ 	filetrans_pattern($1, tmp_t, $2, $3, $4)
++	allow $1 tmp_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+-- 
+1.7.5.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch
new file mode 100644
index 0000000..18a92dd
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-cache-symlink.patch
@@ -0,0 +1,34 @@
+From bad816bc752369a6c1bf40231c505d21d95cab08 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 23 Aug 2013 11:20:00 +0800
+Subject: [PATCH 4/6] add rules for the subdir symlinks in /var/
+
+Except /var/log,/var/run,/var/lock, there still other subdir symlinks in
+/var for poky, so we need allow rules for all domains to read these
+symlinks. Domains still need their practical allow rules to read the
+contents, so this is still a secure relax.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/kernel/domain.te |    3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/kernel/domain.te b/policy/modules/kernel/domain.te
+index cf04cb5..9ffe6b0 100644
+--- a/policy/modules/kernel/domain.te
++++ b/policy/modules/kernel/domain.te
+@@ -104,6 +104,9 @@ term_use_controlling_term(domain)
+ # list the root directory
+ files_list_root(domain)
+ 
++# Yocto/oe-core use some var volatile links
++files_read_var_symlinks(domain)
++
+ ifdef(`hide_broken_symptoms',`
+ 	# This check is in the general socket
+ 	# listen code, before protocol-specific
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
new file mode 100644
index 0000000..8bc40c4
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-apache.patch
@@ -0,0 +1,31 @@
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
+---
+ policy/modules/contrib/apache.te |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/contrib/apache.te b/policy/modules/contrib/apache.te
+index ec8bd13..06f2e95 100644
+--- a/policy/modules/contrib/apache.te
++++ b/policy/modules/contrib/apache.te
+@@ -400,6 +400,7 @@ create_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ append_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ read_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
+ read_lnk_files_pattern(httpd_t, httpd_log_t, httpd_log_t)
++read_lnk_files_pattern(httpd_t, var_log_t, var_log_t)
+ logging_log_filetrans(httpd_t, httpd_log_t, file)
+ 
+ allow httpd_t httpd_modules_t:dir list_dir_perms;
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
new file mode 100644
index 0000000..cbf0f7d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
@@ -0,0 +1,29 @@
+Subject: [PATCH] add rules for the symlink of /var/log - audisp_remote_t
+
+We have added rules for the symlink of /var/log in logging.if,
+while audisp_remote_t uses /var/log but does not use the
+interfaces in logging.if. So still need add a individual rule for
+audisp_remote_t.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 8426a49..2ad9ea5 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -262,6 +262,7 @@ allow audisp_remote_t self:capability { setuid setpcap };
+ allow audisp_remote_t self:process { getcap setcap };
+ allow audisp_remote_t self:tcp_socket create_socket_perms;
+ allow audisp_remote_t var_log_t:dir search_dir_perms;
++allow audisp_remote_t var_log_t:lnk_file read_lnk_file_perms;
+ 
+ manage_dirs_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
+ manage_files_pattern(audisp_remote_t, audit_spool_t, audit_spool_t)
+-- 
+1.7.11.7
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
new file mode 100644
index 0000000..b06f3ef
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
@@ -0,0 +1,145 @@
+From 03cb6534f75812f3a33ac768fe83861e0805b0e0 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 2/6] add rules for the symlink of /var/log
+
+/var/log is a symlink in poky, so we need allow rules for files to read
+lnk_file while doing search/list/delete/rw.. in /var/log/ directory.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.fc |    1 +
+ policy/modules/system/logging.if |   14 +++++++++++++-
+ policy/modules/system/logging.te |    1 +
+ 3 files changed, 15 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/logging.fc b/policy/modules/system/logging.fc
+index c005f33..9529e40 100644
+--- a/policy/modules/system/logging.fc
++++ b/policy/modules/system/logging.fc
+@@ -41,6 +41,7 @@ ifdef(`distro_suse', `
+ /var/dnscache/log/main(/.*)?	gen_context(system_u:object_r:var_log_t,s0)
+ 
+ /var/log		-d	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
++/var/log		-l	gen_context(system_u:object_r:var_log_t,s0-mls_systemhigh)
+ /var/log/.*			gen_context(system_u:object_r:var_log_t,s0)
+ /var/log/boot\.log	--	gen_context(system_u:object_r:var_log_t,mls_systemhigh)
+ /var/log/messages[^/]*		gen_context(system_u:object_r:var_log_t,mls_systemhigh)
+diff --git a/policy/modules/system/logging.if b/policy/modules/system/logging.if
+index 4e94884..9a6f599 100644
+--- a/policy/modules/system/logging.if
++++ b/policy/modules/system/logging.if
+@@ -136,12 +136,13 @@ interface(`logging_set_audit_parameters',`
+ #
+ interface(`logging_read_audit_log',`
+ 	gen_require(`
+-		type auditd_log_t;
++		type auditd_log_t, var_log_t;
+ 	')
+ 
+ 	files_search_var($1)
+ 	read_files_pattern($1, auditd_log_t, auditd_log_t)
+ 	allow $1 auditd_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+@@ -626,6 +627,7 @@ interface(`logging_search_logs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir search_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ #######################################
+@@ -663,6 +665,7 @@ interface(`logging_list_logs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ #######################################
+@@ -682,6 +685,7 @@ interface(`logging_rw_generic_log_dirs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir rw_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ #######################################
+@@ -793,10 +797,12 @@ interface(`logging_append_all_logs',`
+ interface(`logging_read_all_logs',`
+ 	gen_require(`
+ 		attribute logfile;
++		type var_log_t;
+ 	')
+ 
+ 	files_search_var($1)
+ 	allow $1 logfile:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	read_files_pattern($1, logfile, logfile)
+ ')
+ 
+@@ -815,10 +821,12 @@ interface(`logging_read_all_logs',`
+ interface(`logging_exec_all_logs',`
+ 	gen_require(`
+ 		attribute logfile;
++		type var_log_t;
+ 	')
+ 
+ 	files_search_var($1)
+ 	allow $1 logfile:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	can_exec($1, logfile)
+ ')
+ 
+@@ -880,6 +888,7 @@ interface(`logging_read_generic_logs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	read_files_pattern($1, var_log_t, var_log_t)
+ ')
+ 
+@@ -900,6 +909,7 @@ interface(`logging_write_generic_logs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	write_files_pattern($1, var_log_t, var_log_t)
+ ')
+ 
+@@ -938,6 +948,7 @@ interface(`logging_rw_generic_logs',`
+ 
+ 	files_search_var($1)
+ 	allow $1 var_log_t:dir list_dir_perms;
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ 	rw_files_pattern($1, var_log_t, var_log_t)
+ ')
+ 
+@@ -960,6 +971,7 @@ interface(`logging_manage_generic_logs',`
+ 
+ 	files_search_var($1)
+ 	manage_files_pattern($1, var_log_t, var_log_t)
++	allow $1 var_log_t:lnk_file read_lnk_file_perms;
+ ')
+ 
+ ########################################
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 2ab0a49..2795d89 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -139,6 +139,7 @@ allow auditd_t auditd_etc_t:file read_file_perms;
+ manage_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ manage_lnk_files_pattern(auditd_t, auditd_log_t, auditd_log_t)
+ allow auditd_t var_log_t:dir search_dir_perms;
++allow auditd_t var_log_t:lnk_file read_lnk_file_perms;
+ 
+ manage_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
+ manage_sock_files_pattern(auditd_t, auditd_var_run_t, auditd_var_run_t)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch
new file mode 100644
index 0000000..92b1592
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-add-syslogd_t-to-trusted-object.patch
@@ -0,0 +1,31 @@
+From 27e62a5d9ab9993760369ccdad83673e9148cbb2 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 1/6] Add the syslogd_t to trusted object
+
+We add the syslogd_t to trusted object, because other process need
+to have the right to connectto/sendto /dev/log.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Roy.Li <rongqing.li@windriver.com>
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/logging.te |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 2914b0b..2ab0a49 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -450,6 +450,7 @@ fs_getattr_all_fs(syslogd_t)
+ fs_search_auto_mountpoints(syslogd_t)
+ 
+ mls_file_write_all_levels(syslogd_t) # Need to be able to write to /var/run/ and /var/log directories
++mls_trusted_object(syslogd_t) # Other process need to have the right to connectto/sendto /dev/log
+ 
+ term_write_console(syslogd_t)
+ # Allow syslog to a terminal
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
new file mode 100644
index 0000000..e77a730
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
@@ -0,0 +1,58 @@
+From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] allow nfsd to exec shell commands.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/contrib/rpc.te   |    2 +-
+ policy/modules/kernel/kernel.if |   18 ++++++++++++++++++
+ 2 files changed, 19 insertions(+), 1 deletions(-)
+
+diff --git a/policy/modules/contrib/rpc.te b/policy/modules/contrib/rpc.te
+index 9566932..5605205 100644
+--- a/policy/modules/contrib/rpc.te
++++ b/policy/modules/contrib/rpc.te
+@@ -203,7 +203,7 @@ kernel_read_network_state(nfsd_t)
+ kernel_dontaudit_getattr_core_if(nfsd_t)
+ kernel_setsched(nfsd_t)
+ kernel_request_load_module(nfsd_t)
+-# kernel_mounton_proc(nfsd_t)
++kernel_mounton_proc(nfsd_t)
+ 
+ corenet_sendrecv_nfs_server_packets(nfsd_t)
+ corenet_tcp_bind_nfs_port(nfsd_t)
+diff --git a/policy/modules/kernel/kernel.if b/policy/modules/kernel/kernel.if
+index 649e458..8a669c5 100644
+--- a/policy/modules/kernel/kernel.if
++++ b/policy/modules/kernel/kernel.if
+@@ -804,6 +804,24 @@ interface(`kernel_unmount_proc',`
+ 
+ ########################################
+ ## <summary>
++##	Mounton a proc filesystem.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain allowed access.
++##	</summary>
++## </param>
++#
++interface(`kernel_mounton_proc',`
++	gen_require(`
++		type proc_t;
++	')
++
++	allow $1 proc_t:dir mounton;
++')
++
++########################################
++## <summary>
+ ##	Get the attributes of the proc filesystem.
+ ## </summary>
+ ## <param name="domain">
+-- 
+1.7.5.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
new file mode 100644
index 0000000..71497fb
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
@@ -0,0 +1,29 @@
+From 22cd030a8118faae37c0835eb7875e482efe5dc1 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] fix setfiles_t to read symlinks
+
+Upstream-Status: Pending 
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/selinuxutil.te |    3 +++
+ 1 files changed, 3 insertions(+), 0 deletions(-)
+
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
+index ec01d0b..45ed81b 100644
+--- a/policy/modules/system/selinuxutil.te
++++ b/policy/modules/system/selinuxutil.te
+@@ -553,6 +553,9 @@ files_list_all(setfiles_t)
+ files_relabel_all_files(setfiles_t)
+ files_read_usr_symlinks(setfiles_t)
+ 
++# needs to be able to read symlinks to make restorecon on symlink working
++files_read_all_symlinks(setfiles_t)
++
+ fs_getattr_xattr_fs(setfiles_t)
+ fs_list_all(setfiles_t)
+ fs_search_auto_mountpoints(setfiles_t)
+-- 
+1.7.5.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch
new file mode 100644
index 0000000..ec3dbf4
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-allow-sysadm-to-run-rpcinfo.patch
@@ -0,0 +1,33 @@
+From 7005533d61770fed5a3312aa9dfd1c18dae88c16 Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Sat, 15 Feb 2014 09:45:00 +0800
+Subject: [PATCH] allow sysadm to run rpcinfo
+
+Upstream-Status: Pending
+
+type=AVC msg=audit(1392427946.976:264): avc:  denied  { connectto } for  pid=2111 comm="rpcinfo" path="/run/rpcbind.sock" scontext=system_u:system_r:rpcbind_t:s0-s15:c0.c1023 tcontext=system_u:system_r:rpcbind_t:s0-s15:c0.c1023 tclass=unix_stream_socket
+type=SYSCALL msg=audit(1392427946.976:264): arch=c000003e syscall=42 success=no exit=-13 a0=3 a1=7fff3aa20000 a2=17 a3=22 items=0 ppid=2108 pid=2111 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 ses=4294967295 tty=pts0 comm="rpcinfo" exe="/usr/sbin/rpcinfo" subj=system_u:system_r:rpcbind_t:s0-s15:c0.c1023 key=(null)
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ policy/modules/roles/sysadm.te |    4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/policy/modules/roles/sysadm.te b/policy/modules/roles/sysadm.te
+index 1767217..5502c6a 100644
+--- a/policy/modules/roles/sysadm.te
++++ b/policy/modules/roles/sysadm.te
+@@ -413,6 +413,10 @@ optional_policy(`
+ ')
+ 
+ optional_policy(`
++	rpcbind_stream_connect(sysadm_t)
++')
++
++optional_policy(`
+ 	vmware_role(sysadm_r, sysadm_t)
+ ')
+ 
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch
new file mode 100644
index 0000000..82370d8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-don-t-audit-tty_device_t.patch
@@ -0,0 +1,35 @@
+From 29a0d287880f8f83cf4337a3db7c8b94c0c36e1d Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 6/6] don't audit tty_device_t in term_dontaudit_use_console.
+
+We should also not audit terminal to rw tty_device_t and fds in
+term_dontaudit_use_console.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/kernel/terminal.if |    3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/policy/modules/kernel/terminal.if b/policy/modules/kernel/terminal.if
+index 7519d0e..45de1ac 100644
+--- a/policy/modules/kernel/terminal.if
++++ b/policy/modules/kernel/terminal.if
+@@ -299,9 +299,12 @@ interface(`term_use_console',`
+ interface(`term_dontaudit_use_console',`
+ 	gen_require(`
+ 		type console_device_t;
++		type tty_device_t;
+ 	')
+ 
++	init_dontaudit_use_fds($1)
+ 	dontaudit $1 console_device_t:chr_file rw_chr_file_perms;
++	dontaudit $1 tty_device_t:chr_file rw_chr_file_perms;
+ ')
+ 
+ ########################################
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
new file mode 100644
index 0000000..d6c8dbf
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
@@ -0,0 +1,37 @@
+From 2f5981f2244289a1cc79748e9ffdaaea168b1df2 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 23 Aug 2013 16:36:09 +0800
+Subject: [PATCH] fix dmesg to use /dev/kmsg as default input
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/admin/dmesg.if |    1 +
+ policy/modules/admin/dmesg.te |    2 ++
+ 2 files changed, 3 insertions(+)
+
+diff --git a/policy/modules/admin/dmesg.if b/policy/modules/admin/dmesg.if
+index e1973c7..739a4bc 100644
+--- a/policy/modules/admin/dmesg.if
++++ b/policy/modules/admin/dmesg.if
+@@ -37,4 +37,5 @@ interface(`dmesg_exec',`
+ 
+ 	corecmd_search_bin($1)
+ 	can_exec($1, dmesg_exec_t)
++	dev_read_kmsg($1)
+ ')
+diff --git a/policy/modules/admin/dmesg.te b/policy/modules/admin/dmesg.te
+index 72bc6d8..c591aea 100644
+--- a/policy/modules/admin/dmesg.te
++++ b/policy/modules/admin/dmesg.te
+@@ -28,6 +28,8 @@ kernel_read_proc_symlinks(dmesg_t)
+ 
+ dev_read_sysfs(dmesg_t)
+ 
++dev_read_kmsg(dmesg_t)
++
+ fs_search_auto_mountpoints(dmesg_t)
+ 
+ term_dontaudit_use_console(dmesg_t)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
new file mode 100644
index 0000000..302a38f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
@@ -0,0 +1,229 @@
+From 0bd1187768c79ccf7d0563fa8e2bc01494fef167 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH] fix for new SELINUXMNT in /sys
+
+SELINUXMNT is now from /selinux to /sys/fs/selinux, so we should
+add rules to access sysfs.
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/kernel/selinux.if |   34 ++++++++++++++++++++++++++++++++--
+ 1 file changed, 32 insertions(+), 2 deletions(-)
+
+--- a/policy/modules/kernel/selinux.if
++++ b/policy/modules/kernel/selinux.if
+@@ -58,6 +58,10 @@ interface(`selinux_get_fs_mount',`
+ 		type security_t;
+ 	')
+ 
++	# SELINUXMNT is now /sys/fs/selinux, so we should add rules to
++	# access sysfs
++	dev_getattr_sysfs_dirs($1)
++	dev_search_sysfs($1)
+ 	# starting in libselinux 2.0.5, init_selinuxmnt() will
+ 	# attempt to short circuit by checking if SELINUXMNT
+ 	# (/selinux) is already a selinuxfs
+@@ -84,6 +88,7 @@ interface(`selinux_dontaudit_get_fs_moun
+ 		type security_t;
+ 	')
+ 
++	dev_dontaudit_search_sysfs($1)
+ 	# starting in libselinux 2.0.5, init_selinuxmnt() will
+ 	# attempt to short circuit by checking if SELINUXMNT
+ 	# (/selinux) is already a selinuxfs
+@@ -109,6 +114,8 @@ interface(`selinux_mount_fs',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
++	dev_search_sysfs($1)
+ 	allow $1 security_t:filesystem mount;
+ ')
+ 
+@@ -128,6 +135,8 @@ interface(`selinux_remount_fs',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
++	dev_search_sysfs($1)
+ 	allow $1 security_t:filesystem remount;
+ ')
+ 
+@@ -146,6 +155,8 @@ interface(`selinux_unmount_fs',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
++	dev_search_sysfs($1)
+ 	allow $1 security_t:filesystem unmount;
+ ')
+ 
+@@ -164,6 +175,8 @@ interface(`selinux_getattr_fs',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
++	dev_search_sysfs($1)
+ 	allow $1 security_t:filesystem getattr;
+ ')
+ 
+@@ -183,6 +196,7 @@ interface(`selinux_dontaudit_getattr_fs'
+ 		type security_t;
+ 	')
+ 
++	dev_dontaudit_search_sysfs($1)
+ 	dontaudit $1 security_t:filesystem getattr;
+ ')
+ 
+@@ -202,6 +216,7 @@ interface(`selinux_dontaudit_getattr_dir
+ 		type security_t;
+ 	')
+ 
++	dev_dontaudit_search_sysfs($1)
+ 	dontaudit $1 security_t:dir getattr;
+ ')
+ 
+@@ -220,6 +235,7 @@ interface(`selinux_search_fs',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir search_dir_perms;
+ ')
+@@ -239,6 +255,7 @@ interface(`selinux_dontaudit_search_fs',
+ 		type security_t;
+ 	')
+ 
++	dev_dontaudit_search_sysfs($1)
+ 	dontaudit $1 security_t:dir search_dir_perms;
+ ')
+ 
+@@ -258,6 +275,7 @@ interface(`selinux_dontaudit_read_fs',`
+ 		type security_t;
+ 	')
+ 
++	dev_dontaudit_search_sysfs($1)
+ 	dontaudit $1 security_t:dir search_dir_perms;
+ 	dontaudit $1 security_t:file read_file_perms;
+ ')
+@@ -279,6 +297,7 @@ interface(`selinux_get_enforce_mode',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file read_file_perms;
+@@ -313,6 +332,7 @@ interface(`selinux_set_enforce_mode',`
+ 		bool secure_mode_policyload;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -345,6 +365,7 @@ interface(`selinux_load_policy',`
+ 		bool secure_mode_policyload;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -375,6 +396,7 @@ interface(`selinux_read_policy',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file read_file_perms;
+@@ -440,8 +462,8 @@ interface(`selinux_set_generic_booleans'
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+-
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+ 
+@@ -482,8 +504,8 @@ interface(`selinux_set_all_booleans',`
+ 		bool secure_mode_policyload;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+-
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 { boolean_type -secure_mode_policyload_t }:file rw_file_perms;
+ 	allow $1 secure_mode_policyload_t:file read_file_perms;
+@@ -528,6 +550,7 @@ interface(`selinux_set_parameters',`
+ 		attribute can_setsecparam;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -552,6 +575,7 @@ interface(`selinux_validate_context',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -574,6 +598,7 @@ interface(`selinux_dontaudit_validate_co
+ 		type security_t;
+ 	')
+ 
++	dev_dontaudit_search_sysfs($1)
+ 	dontaudit $1 security_t:dir list_dir_perms;
+ 	dontaudit $1 security_t:file rw_file_perms;
+ 	dontaudit $1 security_t:security check_context;
+@@ -595,6 +620,7 @@ interface(`selinux_compute_access_vector
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -617,6 +643,7 @@ interface(`selinux_compute_create_contex
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -639,6 +666,7 @@ interface(`selinux_compute_member',`
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -669,6 +697,7 @@ interface(`selinux_compute_relabel_conte
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
+@@ -690,6 +719,7 @@ interface(`selinux_compute_user_contexts
+ 		type security_t;
+ 	')
+ 
++	dev_getattr_sysfs_dirs($1)
+ 	dev_search_sysfs($1)
+ 	allow $1 security_t:dir list_dir_perms;
+ 	allow $1 security_t:file rw_file_perms;
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
new file mode 100644
index 0000000..f04ebec
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch
@@ -0,0 +1,65 @@
+From 054a2d81a42bc127d29a916c64b43ad5a7c97f21 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 23 Aug 2013 12:01:53 +0800
+Subject: [PATCH] fix policy for nfsserver to mount nfsd_fs_t.
+
+Upstream-Status: Pending
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ policy/modules/contrib/rpc.te       |    5 +++++
+ policy/modules/contrib/rpcbind.te   |    5 +++++
+ policy/modules/kernel/filesystem.te |    1 +
+ policy/modules/kernel/kernel.te     |    2 ++
+ 4 files changed, 13 insertions(+)
+
+--- a/policy/modules/contrib/rpc.te
++++ b/policy/modules/contrib/rpc.te
+@@ -263,6 +263,11 @@ tunable_policy(`nfs_export_all_ro',`
+ 
+ optional_policy(`
+ 	mount_exec(nfsd_t)
++	# Should domtrans to mount_t while mounting nfsd_fs_t.
++	mount_domtrans(nfsd_t)
++	# nfsd_t need to chdir to /var/lib/nfs and read files.
++	files_list_var(nfsd_t)
++	rpc_read_nfs_state_data(nfsd_t)
+ ')
+ 
+ ########################################
+--- a/policy/modules/contrib/rpcbind.te
++++ b/policy/modules/contrib/rpcbind.te
+@@ -70,6 +70,11 @@ logging_send_syslog_msg(rpcbind_t)
+ 
+ miscfiles_read_localization(rpcbind_t)
+ 
++# nfsd_t would not be allowed to send unix_stream_socket to rpcbind_t,
++# because the are running in different level. So add rules to allow this.
++mls_socket_read_all_levels(rpcbind_t)
++mls_socket_write_all_levels(rpcbind_t)
++
+ ifdef(`distro_debian',`
+ 	term_dontaudit_use_unallocated_ttys(rpcbind_t)
+ ')
+--- a/policy/modules/kernel/filesystem.te
++++ b/policy/modules/kernel/filesystem.te
+@@ -119,6 +119,7 @@ genfscon mvfs / gen_context(system_u:obj
+ 
+ type nfsd_fs_t;
+ fs_type(nfsd_fs_t)
++files_mountpoint(nfsd_fs_t)
+ genfscon nfsd / gen_context(system_u:object_r:nfsd_fs_t,s0)
+ 
+ type oprofilefs_t;
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -293,6 +293,8 @@ mls_process_read_up(kernel_t)
+ mls_process_write_down(kernel_t)
+ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
++mls_socket_write_all_levels(kernel_t)
++mls_fd_use_all_levels(kernel_t)
+ 
+ ifdef(`distro_redhat',`
+ 	# Bugzilla 222337
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
new file mode 100644
index 0000000..90efbd8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
@@ -0,0 +1,31 @@
+From 4d2c4c358602b246881210889756f229730505d3 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Fri, 23 Aug 2013 14:38:53 +0800
+Subject: [PATCH] fix setfiles statvfs to get file count
+
+New setfiles will read /proc/mounts and use statvfs in
+file_system_count() to get file count of filesystems.
+
+Upstream-Status: pending
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/selinuxutil.te |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
+index 45ed81b..12c3d2e 100644
+--- a/policy/modules/system/selinuxutil.te
++++ b/policy/modules/system/selinuxutil.te
+@@ -556,7 +556,7 @@ files_read_usr_symlinks(setfiles_t)
+ # needs to be able to read symlinks to make restorecon on symlink working
+ files_read_all_symlinks(setfiles_t)
+ 
+-fs_getattr_xattr_fs(setfiles_t)
++fs_getattr_all_fs(setfiles_t)
+ fs_list_all(setfiles_t)
+ fs_search_auto_mountpoints(setfiles_t)
+ fs_relabelfrom_noxattr_fs(setfiles_t)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch
new file mode 100644
index 0000000..be33bf1
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/poky-policy-fix-seutils-manage-config-files.patch
@@ -0,0 +1,43 @@
+From be8e015aec19553d3753af132861d24da9ed0265 Mon Sep 17 00:00:00 2001
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Thu, 22 Aug 2013 13:37:23 +0800
+Subject: [PATCH 2/2] refpolicy: fix selinux utils to manage config files
+
+Upstream-Status: Pending
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ policy/modules/system/selinuxutil.if |    1 +
+ policy/modules/system/userdomain.if  |    4 ++++
+ 2 files changed, 5 insertions(+)
+
+diff --git a/policy/modules/system/selinuxutil.if b/policy/modules/system/selinuxutil.if
+index 3822072..db03ca1 100644
+--- a/policy/modules/system/selinuxutil.if
++++ b/policy/modules/system/selinuxutil.if
+@@ -680,6 +680,7 @@ interface(`seutil_manage_config',`
+ 	')
+ 
+ 	files_search_etc($1)
++	manage_dirs_pattern($1, selinux_config_t, selinux_config_t)
+ 	manage_files_pattern($1, selinux_config_t, selinux_config_t)
+ 	read_lnk_files_pattern($1, selinux_config_t, selinux_config_t)
+ ')
+diff --git a/policy/modules/system/userdomain.if b/policy/modules/system/userdomain.if
+index b4a691d..20c8bf8 100644
+--- a/policy/modules/system/userdomain.if
++++ b/policy/modules/system/userdomain.if
+@@ -1277,6 +1277,10 @@ template(`userdom_security_admin_template',`
+ 	logging_read_audit_config($1)
+ 
+ 	seutil_manage_bin_policy($1)
++	seutil_manage_default_contexts($1)
++	seutil_manage_file_contexts($1)
++	seutil_manage_module_store($1)
++	seutil_manage_config($1)
+ 	seutil_run_checkpolicy($1, $2)
+ 	seutil_run_loadpolicy($1, $2)
+ 	seutil_run_semanage($1, $2)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
new file mode 100644
index 0000000..80b420c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/refpolicy-update-for_systemd.patch
@@ -0,0 +1,46 @@
+refpolicy: update for systemd
+ 
+It provides the systemd support for refpolicy 
+and related allow rules. 
+The restorecon provides systemd init labeled 
+as init_exec_t.
+
+Upstream-Status: Pending
+
+
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
+
+--- a/policy/modules/contrib/shutdown.fc
++++ b/policy/modules/contrib/shutdown.fc
+@@ -5,6 +5,9 @@
+ /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ /sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
++# systemd support
++/bin/systemctl	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
++
+ /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+ /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -31,6 +31,8 @@
+ #
+ /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
+ /sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
++# systemd support
++/lib/systemd/systemd	--	gen_context(system_u:object_r:init_exec_t,s0)
+ # because nowadays, /sbin/init is often a symlink to /sbin/upstart
+ /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -913,3 +913,8 @@
+ optional_policy(`
+ 	zebra_read_config(initrc_t)
+ ')
++
++# systemd related allow rules
++allow kernel_t init_t:process dyntransition;
++allow devpts_t device_t:filesystem associate;
++allow init_t self:capability2 block_suspend;
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
new file mode 100644
index 0000000..47db820
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -0,0 +1,62 @@
+SRC_URI = "git://github.com/TresysTechnology/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
+SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git;branch=master;name=refpolicy-contrib;destsuffix=refpolicy/policy/modules/contrib"
+
+SRCREV_refpolicy = "${AUTOREV}"
+SRCREV_refpolicy-contrib = "${AUTOREV}"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
+
+# Fix file contexts for Poky
+SRC_URI += "file://poky-fc-subs_dist.patch \
+            file://poky-fc-update-alternatives_sysvinit.patch \
+            file://poky-fc-update-alternatives_sysklogd.patch \
+            file://poky-fc-update-alternatives_hostname.patch \
+            file://poky-fc-fix-real-path_resolv.conf.patch \
+            file://poky-fc-fix-real-path_login.patch \
+            file://poky-fc-fix-real-path_shadow.patch \
+            file://poky-fc-fix-bind.patch \
+            file://poky-fc-clock.patch \
+            file://poky-fc-corecommands.patch \
+            file://poky-fc-dmesg.patch \
+            file://poky-fc-fstools.patch \
+            file://poky-fc-iptables.patch \
+            file://poky-fc-mta.patch \
+            file://poky-fc-netutils.patch \
+            file://poky-fc-nscd.patch \
+            file://poky-fc-screen.patch \
+            file://poky-fc-ssh.patch \
+            file://poky-fc-su.patch \
+            file://poky-fc-sysnetwork.patch \
+            file://poky-fc-udevd.patch \
+            file://poky-fc-rpm.patch \
+            file://poky-fc-ftpwho-dir.patch \
+            file://poky-fc-fix-real-path_su.patch \
+            file://refpolicy-update-for_systemd.patch \
+           "
+
+# Specific policy for Poky
+SRC_URI += "file://poky-policy-add-syslogd_t-to-trusted-object.patch \
+            file://poky-policy-add-rules-for-var-log-symlink.patch \
+            file://poky-policy-add-rules-for-var-log-symlink-apache.patch \
+            file://poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch \
+            file://poky-policy-add-rules-for-syslogd_t-symlink.patch \
+            file://poky-policy-add-rules-for-var-cache-symlink.patch \
+            file://poky-policy-add-rules-for-tmp-symlink.patch \
+            file://poky-policy-add-rules-for-bsdpty_device_t.patch \
+            file://poky-policy-don-t-audit-tty_device_t.patch \
+            file://poky-policy-allow-nfsd-to-exec-shell-commands.patch \
+            file://poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch \
+            file://poky-policy-allow-setfiles_t-to-read-symlinks.patch \
+            file://poky-policy-fix-new-SELINUXMNT-in-sys.patch \
+            file://poky-policy-allow-sysadm-to-run-rpcinfo.patch \
+           "
+
+# Other policy fixes 
+SRC_URI += " \
+            file://poky-policy-fix-seutils-manage-config-files.patch \
+            file://poky-policy-fix-setfiles-statvfs-get-file-count.patch \
+            file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
+            file://ftp-add-ftpd_t-to-mlsfilewrite.patch \
+           "
+
+include refpolicy_common.inc
-- 
1.7.9.5


