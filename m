Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE51EE00CF2; Mon, 17 Oct 2016 06:16:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C92B4E00CEC
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:16:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Oct 2016 06:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,357,1473145200"; d="scan'208";a="1045806984"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga001.jf.intel.com with ESMTP; 17 Oct 2016 06:16:58 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id D4E6B6A4080
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:16:25 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Oct 2016 16:17:32 +0300
Message-Id: <1476710253-9179-3-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
References: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
Subject: [PATCH 3/4] ref-images.xml: remove core-image-directfb reference
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
X-List-Received-Date: Mon, 17 Oct 2016 13:16:59 -0000

core-image-directfb was removed from oe-core with this commit:

remove core-image-directfb.bb as part of moving directfb
from oe-core
(From OE-Core rev: 8871fe1189776d78e5848b08edb9c990b9aebf2d)

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 documentation/ref-manual/ref-images.xml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/documentation/ref-manual/ref-images.xml b/documentation/ref-manual/ref-images.xml
index 69b58f6..f220968 100644
--- a/documentation/ref-manual/ref-images.xml
+++ b/documentation/ref-manual/ref-images.xml
@@ -54,9 +54,6 @@
             <listitem><para><filename>core-image-clutter</filename>:
                 An image with support for the Open GL-based toolkit Clutter, which enables development of
                 rich and animated graphical user interfaces.</para></listitem>
-            <listitem><para><filename>core-image-directfb</filename>:
-                An image that uses <filename>directfb</filename> instead of X11.
-                </para></listitem>
             <listitem><para><filename>core-image-full-cmdline</filename>:
                 A console-only image with more full-featured Linux system
                 functionality installed.</para></listitem>
-- 
2.4.0


