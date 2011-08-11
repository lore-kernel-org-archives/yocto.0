Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C489E006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:21:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 01:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="37428511"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2011 01:22:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:22:01 -0700
Message-Id: <7c42fcf48b060cae1f8e4c54e4936bd3c6294110.1313049765.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313049765.git.dvhart@linux.intel.com>
References: <cover.1313049765.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313049765.git.dvhart@linux.intel.com>
References: <cover.1313049765.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] routerstationpro: remove superfluous endif in gpio Kconfig
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
X-List-Received-Date: Thu, 11 Aug 2011 08:21:56 -0000

The following patch introduced a superfluous endif at the end
of drivers/gpio/Kconfig, resulting in configuration failures.

commit d3bce96fa662b68f4de2146894c026a9da561df7
Author: Zumeng Chen <zumeng.chen@windriver.com>
Date:   Wed Sep 29 09:58:56 2010 +0800

    Add gpio support for nxp_74hc153

Remove the extra endif.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Zumeng Chen <zumeng.chen@windriver.com>
---
 drivers/gpio/Kconfig |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 29591e2..df5c97c 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -463,5 +463,3 @@ config GPIO_NXP_74HC153
 	help
 	  Platform driver for NXP 74HC153 Dual 4-input Multiplexer. This
 	  provides a GPIO interface supporting inputs.
-
-endif
-- 
1.7.6


