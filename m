Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17E994C80A47
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 18:25:36 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Jul 2011 16:25:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="25130983"
Received: from unknown (HELO localhost) ([10.255.13.208])
	by orsmga002.jf.intel.com with ESMTP; 12 Jul 2011 16:25:35 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 12 Jul 2011 18:25:20 -0500
Message-Id: <d2c6a3d2b150590c146a2409696351f98fabcd35.1310512705.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310512705.git.tom.zanussi@intel.com>
References: <cover.1310512705.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2][KERNEL] meta: add mac80211 and iwlagn features
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
X-List-Received-Date: Tue, 12 Jul 2011 23:25:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add iwlagn feature (Intel Wirelss WiFi Next Gen AGN) and one of its
dependencies, mac80211, as a feature, since there are a bunch of other
config items that have the same dependency and could use it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg   |    4 ++++
 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc   |    3 +++
 .../kernel-cache/features/mac80211/mac80211.cfg    |    5 +++++
 .../kernel-cache/features/mac80211/mac80211.scc    |    1 +
 4 files changed, 13 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg
 create mode 100644 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
 create mode 100644 meta/cfg/kernel-cache/features/mac80211/mac80211.cfg
 create mode 100644 meta/cfg/kernel-cache/features/mac80211/mac80211.scc

diff --git a/meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg b/meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg
new file mode 100644
index 0000000..4119da7
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg
@@ -0,0 +1,4 @@
+# iwgaln depends on NETDEVICES (base.cfg), PCI and MAC80211
+CONFIG_PCI=y
+
+CONFIG_IWLAGN=m
diff --git a/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc b/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
new file mode 100644
index 0000000..afc76bc
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
@@ -0,0 +1,3 @@
+kconf hardware iwlagn.cfg
+
+include features/mac80211/mac80211.scc
diff --git a/meta/cfg/kernel-cache/features/mac80211/mac80211.cfg b/meta/cfg/kernel-cache/features/mac80211/mac80211.cfg
new file mode 100644
index 0000000..d4a9374
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/mac80211/mac80211.cfg
@@ -0,0 +1,5 @@
+# mac80211 depends on NET (base.cfg), WIRELESS <- WLAN and CFG80211
+CONFIG_WLAN=y
+
+CONFIG_MAC80211=m
+CONFIG_CFG80211=m
diff --git a/meta/cfg/kernel-cache/features/mac80211/mac80211.scc b/meta/cfg/kernel-cache/features/mac80211/mac80211.scc
new file mode 100644
index 0000000..c2c02c8
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/mac80211/mac80211.scc
@@ -0,0 +1 @@
+kconf hardware mac80211.cfg
-- 
1.7.0.4


