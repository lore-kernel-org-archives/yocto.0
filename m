Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B99F3E011B3
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 07:04:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Aug 2011 07:04:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,316,1309762800"; d="scan'208";a="35368407"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.66])
	by orsmga001.jf.intel.com with ESMTP; 04 Aug 2011 07:04:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Aug 2011 15:04:22 +0100
Message-Id: <ac194b677a156ed3486efaba4160dbc98dd76edd.1312465742.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1312465742.git.paul.eggleton@linux.intel.com>
References: <cover.1312465742.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1312465742.git.paul.eggleton@linux.intel.com>
References: <cover.1312465742.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] meta-sugarbay: update machine configuration for recent tune file changes
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
X-List-Received-Date: Thu, 04 Aug 2011 14:04:18 -0000

Require the tune file for x86_64, then TARGET_ARCH and TARGET_CC_ARCH
are set already. Also remove superfluous "snb" package architecture that
doesn't do anything.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    7 +------
 1 files changed, 1 insertions(+), 6 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 9450d97..2a47dee 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -4,10 +4,7 @@
 #@DESCRIPTION: Machine configuration for Sugar Bay systems
 # i.e. Sandy Bridge + Cougar Point
 
-TARGET_ARCH = "x86_64"
-PACKAGE_EXTRA_ARCHS = "x86 snb"
-
-BASE_PACKAGE_ARCH="snb"
+require conf/machine/include/tune-x86_64.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
@@ -42,6 +39,4 @@ GLIBC_EXTRA_OECONF = "--with-tls"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
 
-TARGET_CC_ARCH = "-m64"
-
 PREFERRED_VERSION_grub ?= "1.98"
-- 
1.7.4.1


