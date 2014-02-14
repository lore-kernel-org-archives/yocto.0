Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC0ACE00571
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 22:10:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1E6A2SR017814
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 22:10:02 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 13 Feb 2014 22:10:02 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Feb 2014 14:10:52 +0800
Message-ID: <b032f0898f3e61f34c9f7fde9445ad3ee0d976c8.1392358150.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1392358150.git.rongqing.li@windriver.com>
References: <cover.1392358150.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] refpolicy: make proftpd be able to work
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
X-List-Received-Date: Fri, 14 Feb 2014 06:10:04 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |   39 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 40 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/ftp-add-ftpd_t-to-mlsfilewrite.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/ftp-add-ftpd_t-to-mlsfilewrite.patch b/recipes-security/refpolicy/refpolicy-2.20130424/ftp-add-ftpd_t-to-mlsfilewrite.patch
new file mode 100644
index 0000000..49da4b6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/ftp-add-ftpd_t-to-mlsfilewrite.patch
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
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 9e5e426..24c0608 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -54,6 +54,7 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
             file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
             file://hostname-do-not-audit-attempts-by-hostname-to-read-a.patch \
             file://sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch \
+            file://ftp-add-ftpd_t-to-mlsfilewrite.patch \
            "
 
 # Backport from upstream
-- 
1.7.10.4


