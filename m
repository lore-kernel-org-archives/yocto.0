Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89D44E01396
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:26:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Feb 2012 14:26:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="105159619"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga002.jf.intel.com with ESMTP; 01 Feb 2012 14:26:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>, Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 14:26:05 -0800
Message-Id: <d40c099c9dced8365653e7cef02108e03ab4bfdf.1328135056.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1328135056.git.dvhart@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
Subject: [pull-sys940x 4/4] netbase: Add interfaces with RANDOM_MAC for sys940x* machines
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Feb 2012 22:26:38 -0000

These machines have no MAC in the hardware and require that it
be set manually. Specify RANDOM_MAC for the eth0 interface which
the genmac init script will replace with RANDOM_MAC on first boot.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/recipes-core/netbase/files/interfaces |   10 ++++++++++
 .../recipes-core/netbase/netbase_4.47.bbappend     |    3 +++
 2 files changed, 13 insertions(+), 0 deletions(-)
 create mode 100644 meta-sys940x/recipes-core/netbase/files/interfaces
 create mode 100644 meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend

diff --git a/meta-sys940x/recipes-core/netbase/files/interfaces b/meta-sys940x/recipes-core/netbase/files/interfaces
new file mode 100644
index 0000000..4218f5d
--- /dev/null
+++ b/meta-sys940x/recipes-core/netbase/files/interfaces
@@ -0,0 +1,10 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wired or wireless interfaces
+auto eth0
+iface eth0 inet dhcp
+    hwaddress ether RANDOM_MAC
diff --git a/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
new file mode 100644
index 0000000..6d3f694
--- /dev/null
+++ b/meta-sys940x/recipes-core/netbase/netbase_4.47.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+RDEPENDS_${PN} += "genmac"
+PRINC := "${@int(PRINC) + 1}"
-- 
1.7.6.5


