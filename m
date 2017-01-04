Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D9EE004E5; Wed,  4 Jan 2017 07:20:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3013E0049F
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 07:20:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 04 Jan 2017 07:20:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,459,1477983600"; d="scan'208";a="26086993"
Received: from jlaako-lnx.fi.intel.com (HELO jlaako-lnx.fi.intel.com.)
	([10.237.72.67])
	by orsmga002.jf.intel.com with ESMTP; 04 Jan 2017 07:20:03 -0800
From: Jussi Laako <jussi.laako@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Jan 2017 17:19:37 +0200
Message-Id: <20170104151937.14632-3-jussi.laako@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170104151937.14632-1-jussi.laako@linux.intel.com>
References: <20170104151937.14632-1-jussi.laako@linux.intel.com>
Subject: [PATCH 2/2] Add support for IEEE-1394 (Firewire)
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
X-List-Received-Date: Wed, 04 Jan 2017 15:20:07 -0000

Adds support for IEEE-1394 aka Firewire bus and some commonly used
devices.

Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
---
 features/firewire/firewire.cfg | 15 +++++++++++++++
 features/firewire/firewire.scc |  4 ++++
 2 files changed, 19 insertions(+)
 create mode 100644 features/firewire/firewire.cfg
 create mode 100644 features/firewire/firewire.scc

diff --git a/features/firewire/firewire.cfg b/features/firewire/firewire.cfg
new file mode 100644
index 00000000..ba2b2de3
--- /dev/null
+++ b/features/firewire/firewire.cfg
@@ -0,0 +1,15 @@
+CONFIG_FIREWIRE=m
+CONFIG_FIREWIRE_OHCI=m
+CONFIG_FIREWIRE_SBP2=m
+CONFIG_FIREWIRE_NET=m
+# CONFIG_DVB_FIREDTV is not set
+CONFIG_SND_FIREWIRE=y
+CONFIG_SND_FIREWIRE_LIB=m
+CONFIG_SND_DICE=m
+# CONFIG_SND_OXFW is not set
+# CONFIG_SND_ISIGHT is not set
+# CONFIG_SND_FIREWORKS is not set
+# CONFIG_SND_BEBOB is not set
+# CONFIG_SND_FIREWIRE_DIGI00X is not set
+CONFIG_SND_FIREWIRE_TASCAM=m
+# CONFIG_FIREWIRE_SERIAL is not set
diff --git a/features/firewire/firewire.scc b/features/firewire/firewire.scc
new file mode 100644
index 00000000..24a12ac4
--- /dev/null
+++ b/features/firewire/firewire.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable IEEE-1394 Firewire support"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware firewire.cfg
-- 
2.11.0


