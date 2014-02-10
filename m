Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A69E00764
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 23:11:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1A7BMg9018019
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 9 Feb 2014 23:11:22 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 9 Feb 2014 23:11:21 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2014 15:12:08 +0800
Message-ID: <e8092ae5cbe4e19cc086fed51216d45dafae900e.1392002008.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1392002007.git.rongqing.li@windriver.com>
References: <cover.1392002007.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] refpolicy: backport two patches to fix dhclient, hostname and ifconfig
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
X-List-Received-Date: Mon, 10 Feb 2014 07:11:23 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 ...-not-audit-attempts-by-hostname-to-read-a.patch |   59 ++++++++++++++++++++
 ...dhcpc-binds-socket-to-random-high-udp-por.patch |   41 ++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    2 +
 3 files changed, 102 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/hostname-do-not-audit-attempts-by-hostname-to-read-a.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/hostname-do-not-audit-attempts-by-hostname-to-read-a.patch b/recipes-security/refpolicy/refpolicy-2.20130424/hostname-do-not-audit-attempts-by-hostname-to-read-a.patch
new file mode 100644
index 0000000..edba56d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/hostname-do-not-audit-attempts-by-hostname-to-read-a.patch
@@ -0,0 +1,59 @@
+From 0857061b58e5ec0bf00e78839254f21519ed55d4 Mon Sep 17 00:00:00 2001
+From: Dominick Grift <dominick.grift@gmail.com>
+Date: Fri, 27 Sep 2013 10:36:14 +0200
+Subject: [PATCH] hostname: do not audit attempts by hostname to read and
+ write dhcpc udp sockets (looks like a leaked fd)
+
+Upstream-Status: backport
+
+Signed-off-by: Dominick Grift <dominick.grift@gmail.com>
+---
+ policy/modules/system/hostname.te   |    1 +
+ policy/modules/system/sysnetwork.if |   19 +++++++++++++++++++
+ 2 files changed, 20 insertions(+)
+
+diff --git a/policy/modules/system/hostname.te b/policy/modules/system/hostname.te
+index f6cbda9..380197b 100644
+--- a/policy/modules/system/hostname.te
++++ b/policy/modules/system/hostname.te
+@@ -51,6 +51,7 @@ logging_send_syslog_msg(hostname_t)
+ 
+ miscfiles_read_localization(hostname_t)
+ 
++sysnet_dontaudit_rw_dhcpc_udp_sockets(hostname_t)
+ sysnet_dontaudit_rw_dhcpc_unix_stream_sockets(hostname_t)
+ sysnet_read_config(hostname_t)
+ sysnet_dns_name_resolve(hostname_t)
+diff --git a/policy/modules/system/sysnetwork.if b/policy/modules/system/sysnetwork.if
+index 52b548c..2cea692 100644
+--- a/policy/modules/system/sysnetwork.if
++++ b/policy/modules/system/sysnetwork.if
+@@ -47,6 +47,25 @@ interface(`sysnet_run_dhcpc',`
+ 
+ ########################################
+ ## <summary>
++##	Do not audit attempts to read and
++##	write dhcpc udp socket descriptors.
++## </summary>
++## <param name="domain">
++##	<summary>
++##	Domain to not audit.
++##	</summary>
++## </param>
++#
++interface(`sysnet_dontaudit_rw_dhcpc_udp_sockets',`
++	gen_require(`
++		type dhcpc_t;
++	')
++
++	dontaudit $1 dhcpc_t:udp_socket { read write };
++')
++
++########################################
++## <summary>
+ ##	Do not audit attempts to use
+ ##	the dhcp file descriptors.
+ ## </summary>
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch b/recipes-security/refpolicy/refpolicy-2.20130424/sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch
new file mode 100644
index 0000000..e95d675
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch
@@ -0,0 +1,41 @@
+From b1599e01fe3f3e7a1c2048d1c466e3e842952924 Mon Sep 17 00:00:00 2001
+From: Dominick Grift <dominick.grift@gmail.com>
+Date: Fri, 27 Sep 2013 11:35:41 +0200
+Subject: [PATCH] sysnetwork: dhcpc binds socket to random high udp ports
+ sysnetwork: do not audit attempts by ifconfig to read, and
+ write dhcpc udp sockets (looks like a leaked fd)
+
+Upstream-Status: backport
+
+Signed-off-by: Dominick Grift <dominick.grift@gmail.com>
+---
+ policy/modules/system/sysnetwork.te |    6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/sysnetwork.te b/policy/modules/system/sysnetwork.te
+index f9dce11..67709b5 100644
+--- a/policy/modules/system/sysnetwork.te
++++ b/policy/modules/system/sysnetwork.te
+@@ -111,7 +111,9 @@ corenet_tcp_bind_dhcpc_port(dhcpc_t)
+ corenet_udp_bind_dhcpc_port(dhcpc_t)
+ corenet_tcp_connect_all_ports(dhcpc_t)
+ corenet_sendrecv_dhcpd_client_packets(dhcpc_t)
+-corenet_sendrecv_dhcpc_server_packets(dhcpc_t)
++
++corenet_sendrecv_all_server_packets(dhcpc_t)
++corenet_udp_bind_all_unreserved_ports(dhcpc_t)
+ 
+ dev_read_sysfs(dhcpc_t)
+ # for SSP:
+@@ -313,6 +315,8 @@ modutils_domtrans_insmod(ifconfig_t)
+ 
+ seutil_use_runinit_fds(ifconfig_t)
+ 
++sysnet_dontaudit_rw_dhcpc_udp_sockets(ifconfig_t)
++
+ userdom_use_user_terminals(ifconfig_t)
+ userdom_use_all_users_fds(ifconfig_t)
+ 
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 4b618b2..a052a2c 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -50,6 +50,8 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
             file://poky-policy-fix-seutils-manage-config-files.patch \
             file://poky-policy-fix-setfiles-statvfs-get-file-count.patch \
             file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
+            file://hostname-do-not-audit-attempts-by-hostname-to-read-a.patch \
+            file://sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch \
            "
 
 # Backport from upstream
-- 
1.7.10.4


