Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA468E005B4
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 23:54:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0S7samo017900
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 23:54:37 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 23:54:36 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Tue, 28 Jan 2014 02:54:29 -0500
Message-ID: <83860c4821a2a4ce999ee9e0451379349aa55de2.1390895404.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390895404.git.wenzong.fan@windriver.com>
References: <cover.1390895404.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] refpolicy: Allow ping to get/set capabilities
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
X-List-Received-Date: Tue, 28 Jan 2014 07:54:37 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

When ping is installed with capabilities instead of being marked setuid,
then the ping_t domain needs to be allowed to getcap/setcap.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../Allow-ping-to-get-set-capabilities.patch       |   32 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    4 +++
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/Allow-ping-to-get-set-capabilities.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/Allow-ping-to-get-set-capabilities.patch b/recipes-security/refpolicy/refpolicy-2.20130424/Allow-ping-to-get-set-capabilities.patch
new file mode 100644
index 0000000..fced84a
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/Allow-ping-to-get-set-capabilities.patch
@@ -0,0 +1,32 @@
+From 56c43144d7dcf5fec969c9aa9cb97679ccad50cc Mon Sep 17 00:00:00 2001
+From: Sven Vermeulen <sven.vermeulen@siphos.be>
+Date: Wed, 25 Sep 2013 20:27:34 +0200
+Subject: [PATCH] Allow ping to get/set capabilities
+
+When ping is installed with capabilities instead of being marked setuid,
+then the ping_t domain needs to be allowed to getcap/setcap.
+
+Reported-by: Luis Ressel <aranea@aixah.de>
+Signed-off-by: Sven Vermeulen <sven.vermeulen@siphos.be>
+
+Upstream-Status: backport
+---
+ policy/modules/admin/netutils.te |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/admin/netutils.te b/policy/modules/admin/netutils.te
+index 557da97..cfe036a 100644
+--- a/policy/modules/admin/netutils.te
++++ b/policy/modules/admin/netutils.te
+@@ -106,6 +106,8 @@ optional_policy(`
+ #
+ 
+ allow ping_t self:capability { setuid net_raw };
++# When ping is installed with capabilities instead of setuid
++allow ping_t self:process { getcap setcap };
+ dontaudit ping_t self:capability sys_tty_config;
+ allow ping_t self:tcp_socket create_socket_perms;
+ allow ping_t self:rawip_socket { create ioctl read write bind getopt setopt };
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index cb1dec6..4b618b2 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -52,4 +52,8 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
             file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
            "
 
+# Backport from upstream
+SRC_URI += "file://Allow-ping-to-get-set-capabilities.patch \
+           "
+
 include refpolicy_common.inc
-- 
1.7.9.5


