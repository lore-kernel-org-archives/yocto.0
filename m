Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 439E4E0123F
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2011 16:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84104113"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2011 16:31:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:33 -0800
Message-Id: <f635e47fe4022aab5e9d61660e418a66ef030c48.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
Subject: [PATCH 5/7] fri2: Add pcbios and efi to MACHINE_FEATURES
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
X-List-Received-Date: Thu, 08 Dec 2011 00:31:32 -0000

Enable both legacy pcbios and efi booting for live images using the
new bootimg and grub-efi code.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    2 +-
 meta-fri2/conf/machine/fri2.conf        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 7e99486..a8b889f 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -7,7 +7,7 @@
 include conf/machine/include/tune-atom.inc
 include conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES += "wifi 3g"
+MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 72d7a48..da4e981 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -7,7 +7,7 @@
 include conf/machine/include/tune-atom.inc
 include conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES += "wifi 3g"
+MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
-- 
1.7.6.4


