Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A94AE00D14; Mon,  9 Oct 2017 00:20:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F038BE00D14
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 00:20:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v997KGXZ029929
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 9 Oct 2017 00:20:17 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 9 Oct 2017 00:20:15 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
Date: Mon, 9 Oct 2017 00:20:13 -0700
Message-ID: <20171009072014.31393-2-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20171009072014.31393-1-wenzong.fan@windriver.com>
References: <20171009072014.31393-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/3] refpolicy: fix unknown classes and permissions
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
X-List-Received-Date: Mon, 09 Oct 2017 07:20:19 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Backport upstream patches:
  - 0001-refpolicy-Define-getrlimit-permission-for-class-proc.patch
  - 0002-refpolicy-Define-smc_socket-security-class.patch

This fixes the runtime issues:

  $ load_policy
  SELinux: Permission getrlimit in class process not defined in policy.
  SELinux: Class smc_socket not defined in policy.
  SELinux: the above unknown classes and permissions will be allowed

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...efine-getrlimit-permission-for-class-proc.patch | 33 ++++++++++
 ...efpolicy-Define-smc_socket-security-class.patch | 74 ++++++++++++++++++++++
 .../refpolicy/refpolicy_2.20170204.inc             |  6 ++
 3 files changed, 113 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/0001-refpolicy-Define-getrlimit-permission-for-class-proc.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/0002-refpolicy-Define-smc_socket-security-class.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/0001-refpolicy-Define-getrlimit-permission-for-class-proc.patch b/recipes-security/refpolicy/refpolicy-2.20170204/0001-refpolicy-Define-getrlimit-permission-for-class-proc.patch
new file mode 100644
index 0000000..727e48a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/0001-refpolicy-Define-getrlimit-permission-for-class-proc.patch
@@ -0,0 +1,33 @@
+From c5cdfec50b4d6191173725b32b311399345962ac Mon Sep 17 00:00:00 2001
+From: Stephen Smalley <sds@tycho.nsa.gov>
+Date: Wed, 17 May 2017 11:33:46 -0400
+Subject: [PATCH 1/2] refpolicy: Define getrlimit permission for class process
+
+This permission was added to the kernel in commit 791ec491c372
+("prlimit,security,selinux: add a security hook for prlimit")
+circa Linux 4.12 in order to control the ability to get the resource
+limits of another process.  It is only checked when acting on another
+process, so getrlimit permission is not required for use of getrlimit(2).
+
+Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
+
+Upstream-Status: Backport
+---
+ policy/flask/access_vectors | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/flask/access_vectors b/policy/flask/access_vectors
+index 69f69af..6204e68 100644
+--- a/policy/flask/access_vectors
++++ b/policy/flask/access_vectors
+@@ -383,6 +383,7 @@ class process
+ 	execheap
+ 	setkeycreate
+ 	setsockcreate
++	getrlimit
+ }
+ 
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/0002-refpolicy-Define-smc_socket-security-class.patch b/recipes-security/refpolicy/refpolicy-2.20170204/0002-refpolicy-Define-smc_socket-security-class.patch
new file mode 100644
index 0000000..e8ef659
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/0002-refpolicy-Define-smc_socket-security-class.patch
@@ -0,0 +1,74 @@
+From cfe0a94feb3e965663ea20961ac866ac8712b94a Mon Sep 17 00:00:00 2001
+From: Stephen Smalley <sds@tycho.nsa.gov>
+Date: Wed, 17 May 2017 11:31:48 -0400
+Subject: [PATCH 2/2] refpolicy: Define smc_socket security class
+
+Linux kernel commit da69a5306ab9 ("selinux: support distinctions among all
+network address families") triggers a build error if a new address family
+is added without defining a corresponding SELinux security class.  As a
+result, the smc_socket class was added to the kernel to resolve a build
+failure as part of merge commit 3051bf36c25d that introduced AF_SMC circa
+Linux 4.11.  Define this security class and its access vector, note that it
+is enabled as part of the extended_socket_class policy capability, and add
+it to the socket_class_set macro.
+
+Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
+
+Upstream-Status: Backport
+---
+ policy/flask/access_vectors      | 3 +++
+ policy/flask/security_classes    | 1 +
+ policy/policy_capabilities       | 1 +
+ policy/support/obj_perm_sets.spt | 2 +-
+ 4 files changed, 6 insertions(+), 1 deletion(-)
+
+diff --git a/policy/flask/access_vectors b/policy/flask/access_vectors
+index 6204e68..7652a31 100644
+--- a/policy/flask/access_vectors
++++ b/policy/flask/access_vectors
+@@ -1059,3 +1059,6 @@ inherits socket
+ 
+ class qipcrtr_socket
+ inherits socket
++
++class smc_socket
++inherits socket
+diff --git a/policy/flask/security_classes b/policy/flask/security_classes
+index 18f18fd..18c4f97 100644
+--- a/policy/flask/security_classes
++++ b/policy/flask/security_classes
+@@ -182,5 +182,6 @@ class nfc_socket
+ class vsock_socket
+ class kcm_socket
+ class qipcrtr_socket
++class smc_socket
+ 
+ # FLASK
+diff --git a/policy/policy_capabilities b/policy/policy_capabilities
+index 39e3930..e0ff6e3 100644
+--- a/policy/policy_capabilities
++++ b/policy/policy_capabilities
+@@ -77,6 +77,7 @@ policycap open_perms;
+ # vsock_socket
+ # kcm_socket
+ # qipcrtr_socket
++# smc_socket
+ #
+ # Available in kernel 4.11+.
+ # Requires libsepol 2.7+ to build policy with this enabled.
+diff --git a/policy/support/obj_perm_sets.spt b/policy/support/obj_perm_sets.spt
+index 590ea63..872ca1d 100644
+--- a/policy/support/obj_perm_sets.spt
++++ b/policy/support/obj_perm_sets.spt
+@@ -34,7 +34,7 @@ define(`devfile_class_set', `{ blk_file chr_file }')
+ #
+ # All socket classes.
+ #
+-define(`socket_class_set', `{ tcp_socket udp_socket rawip_socket netlink_socket packet_socket unix_stream_socket unix_dgram_socket appletalk_socket netlink_route_socket netlink_firewall_socket netlink_tcpdiag_socket netlink_nflog_socket netlink_xfrm_socket netlink_selinux_socket netlink_audit_socket netlink_ip6fw_socket netlink_dnrt_socket netlink_kobject_uevent_socket tun_socket netlink_iscsi_socket netlink_fib_lookup_socket netlink_connector_socket netlink_netfilter_socket netlink_generic_socket netlink_scsitransport_socket netlink_rdma_socket netlink_crypto_socket sctp_socket icmp_socket ax25_socket ipx_socket netrom_socket atmpvc_socket x25_socket rose_socket decnet_socket atmsvc_socket rds_socket irda_socket pppox_socket llc_socket can_socket tipc_socket bluetooth_socket iucv_socket rxrpc_socket isdn_socket phonet_socket ieee802154_socket caif_socket alg_socket nfc_socket vsock_socket kcm_socket qipcrtr_socket}')
++define(`socket_class_set', `{ tcp_socket udp_socket rawip_socket netlink_socket packet_socket unix_stream_socket unix_dgram_socket appletalk_socket netlink_route_socket netlink_firewall_socket netlink_tcpdiag_socket netlink_nflog_socket netlink_xfrm_socket netlink_selinux_socket netlink_audit_socket netlink_ip6fw_socket netlink_dnrt_socket netlink_kobject_uevent_socket tun_socket netlink_iscsi_socket netlink_fib_lookup_socket netlink_connector_socket netlink_netfilter_socket netlink_generic_socket netlink_scsitransport_socket netlink_rdma_socket netlink_crypto_socket sctp_socket icmp_socket ax25_socket ipx_socket netrom_socket atmpvc_socket x25_socket rose_socket decnet_socket atmsvc_socket rds_socket irda_socket pppox_socket llc_socket can_socket tipc_socket bluetooth_socket iucv_socket rxrpc_socket isdn_socket phonet_socket ieee802154_socket caif_socket alg_socket nfc_socket vsock_socket kcm_socket qipcrtr_socket smc_socket }')
+ 
+ #
+ # Datagram socket classes.
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20170204.inc b/recipes-security/refpolicy/refpolicy_2.20170204.inc
index 8b72cbd..51c5050 100644
--- a/recipes-security/refpolicy/refpolicy_2.20170204.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20170204.inc
@@ -55,4 +55,10 @@ SRC_URI += " \
             file://ftp-add-ftpd_t-to-mlsfilewrite.patch \
            "
 
+# Backport from upstream
+SRC_URI += " \
+            file://0001-refpolicy-Define-getrlimit-permission-for-class-proc.patch \
+            file://0002-refpolicy-Define-smc_socket-security-class.patch \
+           "
+
 include refpolicy_common.inc
-- 
2.13.0


