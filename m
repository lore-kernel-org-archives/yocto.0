Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58A64E00D0A; Mon, 17 Oct 2016 06:17:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC67E00CFF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:17:15 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP; 17 Oct 2016 06:16:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,357,1473145200"; d="scan'208";a="20809520"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga004.jf.intel.com with ESMTP; 17 Oct 2016 06:16:54 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 537D16A4080
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:16:22 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Oct 2016 16:17:30 +0300
Message-Id: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [PATCH 1/4] poky-tiny.conf: remove core-image-directfb reference
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
X-List-Received-Date: Mon, 17 Oct 2016 13:17:20 -0000

core-image-directfb was removed from oe-core with this commit:

remove core-image-directfb.bb as part of moving directfb
from oe-core
(From OE-Core rev: 8871fe1189776d78e5848b08edb9c990b9aebf2d)

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 08bd497..6aee35c 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -115,7 +115,6 @@ RDEPENDS_${PN}-mtrace_pn-eglibc = ""
 PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-directfb] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-full-cmdline] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
-- 
2.4.0


