Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2528AE00DA3; Thu, 14 Dec 2017 08:35:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E350EE00D48
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:40 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726639"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:39 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:54 +0200
Message-Id: <3cd356737a724a4c87fb6a8b0fe4273bc1bebb84.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 14/20] testimage.py: add extra logging for the testimage logs retrieval
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:41 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

This helped with diagnozing issues described in
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12396

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/testimage.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/modules/testimage.py b/modules/testimage.py
index c3352e5..6c4ed2b 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -98,8 +98,10 @@ class TestImage():
             if name in files:
                 result.append(os.path.join(root, name))
 
+        D("Found logs named %s for machine %s: %s" %(name, machine, result))
         for ptest_log in result:
             if machine in ptest_log:
+                D("Picked log: %s" %(ptest_log))
                 return ptest_log
 
     def _get_failed_recipe(self, log):
-- 
2.15.0


