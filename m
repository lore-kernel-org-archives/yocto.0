Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.285.1596690202936979200
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 22:03:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 07652S7A003442
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Aug 2020 22:02:54 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 5 Aug
 2020 22:02:22 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
Subject: [meta-selinux][PATCH] refpolicy: update file context for ifconfig
Date: Thu, 6 Aug 2020 13:02:06 +0800
Message-ID: <20200806050206.32003-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The ifconfig was moved from sbin to bin with oe-core commit:
c9caff40ff61c08e24a84922f8d7c8e9cdf8883e. Update the file context for
it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ork-update-file-context-for-ifconfig.patch | 31 +++++++++++++++++++
 .../refpolicy/refpolicy_common.inc            |  1 +
 2 files changed, 32 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update-file-context-for-ifconfig.patch

diff --git a/recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update-file-context-for-ifconfig.patch b/recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update-file-context-for-ifconfig.patch
new file mode 100644
index 0000000..eaecf40
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0081-fc-sysnetwork-update-file-context-for-ifconfig.patch
@@ -0,0 +1,31 @@
+From e6b303444988717c725a71db7b21417839321463 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 4 Aug 2020 16:48:12 +0800
+Subject: [PATCH] fc/sysnetwork: update file context for ifconfig
+
+The ifconfig was moved from sbin to bin with oe-core commit:
+c9caff40ff61c08e24a84922f8d7c8e9cdf8883e. Update the file context for
+it.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/sysnetwork.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/sysnetwork.fc b/policy/modules/system/sysnetwork.fc
+index d8902d725..9ec4eefb7 100644
+--- a/policy/modules/system/sysnetwork.fc
++++ b/policy/modules/system/sysnetwork.fc
+@@ -43,6 +43,7 @@ ifdef(`distro_redhat',`
+ /usr/bin/dhcpcd		        --	gen_context(system_u:object_r:dhcpc_exec_t,s0)
+ /usr/bin/ethtool		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ifconfig		    --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
++/usr/bin/ifconfig\.net-tools		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ip			        --	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ipx_configure		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+ /usr/bin/ipx_interface		--	gen_context(system_u:object_r:ifconfig_exec_t,s0)
+-- 
+2.17.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 46cbfa3..6600af5 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -98,6 +98,7 @@ SRC_URI += " \
         file://0078-policy-modules-system-systemd-systemd-gpt-auto-gener.patch \
         file://0079-policy-modules-services-ntp-make-nptd_t-MLS-trusted-.patch \
         file://0080-policy-modules-services-avahi-make-avahi_t-MLS-trust.patch \
+        file://0081-fc-sysnetwork-update-file-context-for-ifconfig.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
-- 
2.17.1

