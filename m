Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DBC3E00B45; Thu,  1 Jun 2017 10:33:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A51E00AE4
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 10:33:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Jun 2017 10:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,280,1493708400"; d="scan'208";a="94460889"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.138])
	by orsmga002.jf.intel.com with ESMTP; 01 Jun 2017 10:32:59 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Jun 2017 12:32:52 -0500
Message-Id: <1496338372-20109-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto-autobuilder][PATCH] forcebuild: allow build with default options
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
X-List-Received-Date: Thu, 01 Jun 2017 17:33:03 -0000

From: Anibal Limon <anibal.limon@linux.intel.com>

A forced build fails if no options are passed through command
line (using "-o OPTIONS").

This change allows build to use default options if none are passed
at the command line.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 bin/forcebuild.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/bin/forcebuild.py b/bin/forcebuild.py
index 5fe61a0..e6770a4 100755
--- a/bin/forcebuild.py
+++ b/bin/forcebuild.py
@@ -108,7 +108,11 @@ class YoctoAutobuilderAPI(object):
                     % (builder, state))
             return 1
 
-        opts = eval(opts) # FIXME: transform string argument into dictionary, security?
+        if opts:
+            # FIXME: transform string argument into dictionary, security?
+            opts = eval(opts)
+        else:
+            opts = {}
         current_opts = self._get_options_by_builder(builder)
         for opt in opts:
             if not opt in current_opts:
-- 
2.7.4


