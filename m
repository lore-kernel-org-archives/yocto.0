Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE0F7E011AF
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 06:03:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Aug 2011 06:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,316,1309762800"; d="scan'208";a="37820736"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.66])
	by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2011 06:03:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Aug 2011 14:03:13 +0100
Message-Id: <0d335bc6a79307a8df4f16a60eb2a395b4379428.1312462806.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1312462806.git.paul.eggleton@linux.intel.com>
References: <cover.1312462806.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1312462806.git.paul.eggleton@linux.intel.com>
References: <cover.1312462806.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] meta-jasperforest: update machine configuration for recent tune file changes
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
X-List-Received-Date: Thu, 04 Aug 2011 13:03:16 -0000

Require the tune file for x86_64, then TARGET_ARCH is set via the tune
file and TRANSLATED_TARGET_ARCH is set automatically in bitbake.conf.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 1d875b5..b21a417 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -4,8 +4,9 @@
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
-TARGET_ARCH = "x86_64"
-PACKAGE_EXTRA_ARCHS = "x86 xeon"
+require conf/machine/include/tune-x86_64.inc
+
+PACKAGE_EXTRA_ARCHS = "x86_64 xeon"
 
 BASE_PACKAGE_ARCH="xeon"
 
-- 
1.7.4.4


