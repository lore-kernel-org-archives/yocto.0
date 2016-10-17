Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 899BCE00D10; Mon, 17 Oct 2016 06:17:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12655E00CFF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:17:20 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 17 Oct 2016 06:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,357,1473145200"; d="scan'208";a="180607035"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2016 06:16:59 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 861916A4080
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 06:16:27 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Oct 2016 16:17:33 +0300
Message-Id: <1476710253-9179-4-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
References: <1476710253-9179-1-git-send-email-maxin.john@intel.com>
Subject: [PATCH 4/4] README.hardware: minor update to edgerouter section
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
X-List-Received-Date: Mon, 17 Oct 2016 13:17:21 -0000

Trivial fix

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 README.hardware | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.hardware b/README.hardware
index d7e24d2..562f196 100644
--- a/README.hardware
+++ b/README.hardware
@@ -317,7 +317,7 @@ Steps:
 
  2. Flash the image.
 
-    # dd core-image-minimal-edgerouter.wic of=/dev/sdb
+    # dd if=core-image-minimal-edgerouter.wic of=/dev/sdb
 
  3. Insert USB disk into the edgerouter and boot it.
 
-- 
2.4.0


