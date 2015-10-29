Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B1BFE007FE; Thu, 29 Oct 2015 11:32:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F181EE00748
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 11:32:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 29 Oct 2015 11:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,215,1444719600"; d="scan'208";a="806774193"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.16.97])
	by orsmga001.jf.intel.com with ESMTP; 29 Oct 2015 11:31:01 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 29 Oct 2015 12:30:59 -0600
Message-Id: <1446143459-28681-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [yocto-autobuilder][PATCH] README: Add information for connection managers and tap interfaces
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
X-List-Received-Date: Thu, 29 Oct 2015 18:32:16 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Lately there are a lot of ping failures in errors.yoctoproject.org,
these seems to be related with the tap interfaces not being managed
correctly.

This just add some information to avoid the connection manager to
manage the tap interfaces created for the yocto autobuilders.

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 README | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 7edb66c..bba3f76 100644
--- a/README
+++ b/README
@@ -13,7 +13,9 @@ you will need to:
 
 1. Install tight-vnc client and server.
 
-2. Set up tap devs by running poky/scripts/runqemu-gen-tapdevs
+2. Set up tap devs by running poky/scripts/runqemu-gen-tapdevs.
+   You MUST disable interface control on these new tap interfaces;
+   some services include NetworkManager, connman, or wicd.
 
 3. Add "xterm*vt100*geometry: 80x50+10+10" to .Xdefaults
 
-- 
1.9.1


