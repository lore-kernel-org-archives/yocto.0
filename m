Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DBD4E0027E
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 16:32:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Oct 2012 16:32:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="233777278"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 11 Oct 2012 16:32:13 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Thu, 11 Oct 2012 16:30:59 -0700
Message-Id: <69f8c3e5718cb9ec949f40f8ebe3a08b0bd7266f.1349998086.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <0ee691e2e0857cd3f26fe535d67c214817062392.1349998086.git.nitin.a.kamble@intel.com>
References: <0ee691e2e0857cd3f26fe535d67c214817062392.1349998086.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1349998086.git.nitin.a.kamble@intel.com>
References: <cover.1349998086.git.nitin.a.kamble@intel.com>
Subject: [PATCHv4 2/8] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Thu, 11 Oct 2012 23:32:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Avoid following warnings while building crownbay BSPs:

 NOTE: preferred version 7.11 of mesa-dri not available (for item virtual/libgl)
 NOTE: versions of mesa-dri available: 2:8.0.4 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7

This commit addresses one of the issue reported on the bug:
[YOCTO #3238]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index c18fa1d..72431de 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -18,7 +18,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            "
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_mesa-dri ?= "8.0.4"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
-- 
1.7.3.4


