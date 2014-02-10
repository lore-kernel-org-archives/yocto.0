Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9778E0077A
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 18:27:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1A2RXXj016429
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 9 Feb 2014 18:27:33 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 9 Feb 2014 18:27:33 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2014 10:28:20 +0800
Message-ID: <f99df81589976f940ac16703c08cb3a2075d1743.1391995046.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1391995046.git.rongqing.li@windriver.com>
References: <cover.1391995046.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] refpolicy: allow dhclient to bind unreserved_port_t socket.
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
X-List-Received-Date: Mon, 10 Feb 2014 02:27:36 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

once dhclient enables dns support, it binds anyone port which is not reserved.

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 .../poky-policy-allows-dhclient-to-bind.patch      |   43 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 44 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allows-dhclient-to-bind.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allows-dhclient-to-bind.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allows-dhclient-to-bind.patch
new file mode 100644
index 0000000..7118e8e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allows-dhclient-to-bind.patch
@@ -0,0 +1,43 @@
+From a9502eba0fef095ef6a2ff42bac020b25f7e384a Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Mon, 10 Feb 2014 08:40:04 +0800
+Subject: [PATCH] allows dhclient to bind unreserved_port_t socket
+
+Upstream-Status: Pending
+
+Once dhclient enables dns supports, the functions dns_client_createx will
+be called, it will find anyone port which is unreserved and unused.
+
+Call backtrace:
+    bind ()
+    isc__socket_bind ()
+    open_socket ()
+    get_udpsocket ()
+    dispatch_createudp ()
+    dns_dispatch_getudp ()
+    getudpdispatch ()
+    dns_client_createx ()
+    dhcp_context_create ()
+    main ()
+
+Signed-off-by: Roy Li <rongqing.li@windriver.com>
+---
+ policy/modules/system/sysnetwork.te |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/sysnetwork.te
+index 900b770..b554820 100644
+--- a/policy/modules/system/sysnetwork.te
++++ b/policy/modules/system/sysnetwork.te
+@@ -73,6 +73,8 @@ files_pid_filetrans(dhcpc_t, dhcpc_var_run_t, { file dir })
+ sysnet_manage_config(dhcpc_t)
+ files_etc_filetrans(dhcpc_t, net_conf_t, file)
+ 
++corenet_udp_bind_all_unreserved_ports(dhcpc_t)
++
+ # create temp files
+ manage_dirs_pattern(dhcpc_t, dhcpc_tmp_t, dhcpc_tmp_t)
+ manage_files_pattern(dhcpc_t, dhcpc_tmp_t, dhcpc_tmp_t)
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 4b618b2..f93361a 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -50,6 +50,7 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
             file://poky-policy-fix-seutils-manage-config-files.patch \
             file://poky-policy-fix-setfiles-statvfs-get-file-count.patch \
             file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
+            file://poky-policy-allows-dhclient-to-bind.patch \
            "
 
 # Backport from upstream
-- 
1.7.10.4


