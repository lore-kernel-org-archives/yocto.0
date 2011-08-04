Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C97BE011A7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 06:03:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Aug 2011 06:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,316,1309762800"; d="scan'208";a="37820734"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.66])
	by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2011 06:03:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Aug 2011 14:03:12 +0100
Message-Id: <ac54aeb02b6b887ea6274a9f61ec6bf5214b2198.1312462806.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1312462806.git.paul.eggleton@linux.intel.com>
References: <cover.1312462806.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1312462806.git.paul.eggleton@linux.intel.com>
References: <cover.1312462806.git.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Thu, 04 Aug 2011 13:03:16 -0000

Require the tune file for x86_64, then TARGET_ARCH is set via the tune
file and TRANSLATED_TARGET_ARCH is set automatically in bitbake.conf.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 9450d97..9add1ca 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -4,8 +4,9 @@
 #@DESCRIPTION: Machine configuration for Sugar Bay systems
 # i.e. Sandy Bridge + Cougar Point
 
-TARGET_ARCH = "x86_64"
-PACKAGE_EXTRA_ARCHS = "x86 snb"
+require conf/machine/include/tune-x86_64.inc
+
+PACKAGE_EXTRA_ARCHS = "x86_64 snb"
 
 BASE_PACKAGE_ARCH="snb"
 
-- 
1.7.4.4


