Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A8BE00706
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 18:33:33 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s182XXfg016811
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 7 Feb 2014 18:33:33 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Fri, 7 Feb 2014 18:33:30 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 8 Feb 2014 10:34:15 +0800
Message-ID: <03a4294a66655a6b604f537c2205179ff48d0f31.1391825983.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1391825983.git.rongqing.li@windriver.com>
References: <cover.1391825983.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] refpolicy: fix ftpwho install dir
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
X-List-Received-Date: Sat, 08 Feb 2014 02:33:34 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

ftpwho is installed into /usr/bin, not /usr/sbin.

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 .../refpolicy-2.20130424/poky-fc-ftpwho-dir.patch  |   27 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpwho-dir.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpwho-dir.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpwho-dir.patch
new file mode 100644
index 0000000..a7d434f
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpwho-dir.patch
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
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 4b618b2..7ecfdc1 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -29,6 +29,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-sysnetwork.patch \
             file://poky-fc-udevd.patch \
             file://poky-fc-rpm.patch \
+            file://poky-fc-ftpwho-dir.patch \
            "
 
 # Specific policy for Poky
-- 
1.7.10.4


