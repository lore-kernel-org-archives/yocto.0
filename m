Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A7CAE00786
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 18:37:21 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1F2bK98019162
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 18:37:20 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Fri, 14 Feb 2014 18:37:19 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 15 Feb 2014 10:38:12 +0800
Message-ID: <b9bdc26b7fe3e3fd21674be407f5ece45985dbfa.1392431823.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1392431823.git.rongqing.li@windriver.com>
References: <cover.1392431823.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] refpolicy: allow sysadm to run rpcbind
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
X-List-Received-Date: Sat, 15 Feb 2014 02:37:23 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |   33 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 34 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allow-sysadm-to-run-rpcinfo.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allow-sysadm-to-run-rpcinfo.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allow-sysadm-to-run-rpcinfo.patch
new file mode 100644
index 0000000..ec3dbf4
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allow-sysadm-to-run-rpcinfo.patch
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
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 24c0608..c732bc8 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -45,6 +45,7 @@ SRC_URI += "file://poky-policy-add-syslogd_t-to-trusted-object.patch \
             file://poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch \
             file://poky-policy-allow-setfiles_t-to-read-symlinks.patch \
             file://poky-policy-fix-new-SELINUXMNT-in-sys.patch \
+            file://poky-policy-allow-sysadm-to-run-rpcinfo.patch \
            "
 
 # Other policy fixes 
-- 
1.7.10.4


