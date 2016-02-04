Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 647A5E00C8E; Thu,  4 Feb 2016 02:16:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 153D0E009C5
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 02:16:25 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 04 Feb 2016 02:16:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,395,1449561600"; d="scan'208";a="42269958"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga004.fm.intel.com with ESMTP; 04 Feb 2016 02:16:14 -0800
Received: from mbabyjoh-mobl.fi.intel.com (mbabyjoh-mobl.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id DA0996A4002
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 03:04:06 -0800 (PST)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Feb 2016 12:19:11 +0200
Message-Id: <1454581151-21463-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [PATCH] formfactor: add machconfig for Beaglebone
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
X-List-Received-Date: Thu, 04 Feb 2016 10:16:28 -0000

We need machconfig file to automatically choose between
physical and virtual keyboards.

[YOCTO #9027]

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig

diff --git a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
-- 
2.4.0


