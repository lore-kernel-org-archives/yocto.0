Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0240BE00E55; Wed, 30 Sep 2015 06:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2857E00E46
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 06:54:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 30 Sep 2015 06:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,612,1437462000"; d="scan'208";a="780934670"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.16.69])
	by orsmga001.jf.intel.com with ESMTP; 30 Sep 2015 06:54:24 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed, 30 Sep 2015 08:54:22 -0500
Message-Id: <1443621262-322-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [error-report-web][PATCH] parser: Add Unicode support to the error log
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
X-List-Received-Date: Wed, 30 Sep 2015 13:54:26 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

If the server receives a error log with Unicode
character in it, it will throw and internal server
error, this is caused because the server doesn't
try to convert everything to ASCII

This patch changes the log encoding to UTF-8 so
it will allow Unicode characters.

[YOCTO #8225]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 Post/parser.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Post/parser.py b/Post/parser.py
index d33a968..599afde 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -85,7 +85,7 @@ class Parser:
                 recipe = package
                 recipe_version = "unknown"
 
-            f = BuildFailure(TASK = str(fail['task']), RECIPE = recipe, RECIPE_VERSION = recipe_version, ERROR_DETAILS = str(fail['log']), BUILD = b)
+            f = BuildFailure(TASK = str(fail['task']), RECIPE = recipe, RECIPE_VERSION = recipe_version, ERROR_DETAILS = fail['log'].encode('utf-8'), BUILD = b)
 
             f.save()
 
-- 
1.9.1


