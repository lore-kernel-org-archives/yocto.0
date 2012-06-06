Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 775C4E01440
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 12:29:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2012 12:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="161833990"
Received: from unknown (HELO localhost) ([10.255.12.119])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2012 12:29:55 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Wed,  6 Jun 2012 14:29:44 -0500
Message-Id: <a97d2219fa67e2326952c9c065eff5947576765d.1339010751.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1339010751.git.tom.zanussi@intel.com>
References: <cover.1339010751.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-fri2: add video acceleration
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
X-List-Received-Date: Wed, 06 Jun 2012 19:29:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds the video acceleration components needed to enable EMGD
video acceleration.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2.conf |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 547fe6a..f90deb3 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -7,8 +7,10 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES += "wifi 3g pcbios efi"
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
+VA_FEATURES ?= "gst-va-intel va-intel"
+
+MACHINE_FEATURES += "wifi 3g pcbios efi gst-va-mixvideo"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto = "3.2%"
-- 
1.7.0.4


