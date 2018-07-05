Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BB3FE010B9; Wed,  4 Jul 2018 22:34:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E0DCE010A7
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 22:34:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jul 2018 22:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,310,1526367600"; d="scan'208";a="70200809"
Received: from aaronchu-mobl1.png.intel.com ([10.221.22.199])
	by orsmga001.jf.intel.com with ESMTP; 04 Jul 2018 22:34:49 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Thu,  5 Jul 2018 13:34:47 +0800
Message-Id: <1530768887-9349-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] clobberdir: Fix Unicode data expansion with utils API
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
X-List-Received-Date: Thu, 05 Jul 2018 05:34:53 -0000

This fix is to move clobberdir from python2 to python3 to resolve unicode data
in python2 and change the data extraction expansion from ourconfig["TRASH_DIR"]
to utils.getconfig("TRASH_DIR", ourconfig) on "Clobber build dir" BuildStep

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 janitor/clobberdir | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/janitor/clobberdir b/janitor/clobberdir
index 5e04ed7..b05a876 100755
--- a/janitor/clobberdir
+++ b/janitor/clobberdir
@@ -1,4 +1,4 @@
-#!/usr/bin/env python2
+#!/usr/bin/env python3
 #
 # Delete a directory using the ionice backgrounded command
 #
-- 
2.7.4


