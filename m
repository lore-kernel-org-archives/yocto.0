Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7E57E00ACE; Tue, 12 Jan 2016 08:37:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE14E00A9C
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 08:37:06 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 12 Jan 2016 08:37:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,558,1444719600"; d="scan'208";a="889010625"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 12 Jan 2016 08:37:05 -0800
Received: from mbabyjoh-mobl.fi.intel.com (mbabyjoh-mobl.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 1444F6A4002
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 09:25:01 -0800 (PST)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jan 2016 18:39:10 +0200
Message-Id: <1452616750-5584-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [PATCH] formfactor: remove unused beagleboard configuration
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
X-List-Received-Date: Tue, 12 Jan 2016 16:37:09 -0000

Clean up formfactor configuration for beagleboard.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 .../recipes-bsp/formfactor/formfactor/beagleboard/machconfig           | 3 ---
 1 file changed, 3 deletions(-)
 delete mode 100755 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beagleboard/machconfig

diff --git a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beagleboard/machconfig b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beagleboard/machconfig
deleted file mode 100755
index a46859f..0000000
--- a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beagleboard/machconfig
+++ /dev/null
@@ -1,3 +0,0 @@
-# Assume a USB mouse and touchscreen are connected
-HAVE_TOUCHSCREEN=0
-HAVE_KEYBOARD=1
-- 
2.4.0


