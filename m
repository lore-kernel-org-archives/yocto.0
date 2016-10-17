Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43773E00CF2; Mon, 17 Oct 2016 06:17:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D51AE00CE1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:16:58 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP; 17 Oct 2016 06:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,357,1473145200"; d="scan'208";a="20361220"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2016 06:16:56 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 252626A4080
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:16:23 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Oct 2016 16:17:31 +0300
Message-Id: <1476710253-9179-2-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
References: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
Subject: [PATCH 2/4] maintainers.inc: remove core-image-directfb reference
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
X-List-Received-Date: Mon, 17 Oct 2016 13:17:00 -0000

core-image-directfb was removed from oe-core with this commit:

remove core-image-directfb.bb as part of moving directfb
from oe-core
(From OE-Core rev: 8871fe1189776d78e5848b08edb9c990b9aebf2d)

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index db95111..260b3d8 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -108,7 +108,6 @@ RECIPE_MAINTAINER_pn-console-tools = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-consolekit = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-core-image-base = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-core-image-clutter = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-core-image-directfb = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-core-image-full-cmdline = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-core-image-kernel-dev = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-core-image-lsb = "Ross Burton <ross.burton@intel.com>"
-- 
2.4.0


