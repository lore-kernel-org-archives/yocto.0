Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14C6BE0136C
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:32:43 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Jan 2012 11:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52574415"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Jan 2012 11:32:42 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2012 13:32:40 -0600
Message-Id: <7b687189825007acb211a97f33e49fad3b1b754d.1325525852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7317bc9b1927ece936575c5faf1a97f79800872f.1325525852.git.tom.zanussi@intel.com>
References: <7317bc9b1927ece936575c5faf1a97f79800872f.1325525852.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1325525852.git.tom.zanussi@intel.com>
References: <cover.1325525852.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-crownbay: pin to emgd-driver-bin_1.10
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
X-List-Received-Date: Mon, 02 Jan 2012 19:32:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make sure crownbay uses emgd-driver-bin 1.10.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 1bf3bdd..94815b0 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -14,7 +14,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
 
 APPEND += "video=vesafb vga=0x318"
 
-- 
1.7.0.4


