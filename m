Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C7CBE00DA3; Thu, 14 Dec 2017 08:35:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A36A1E00DB1
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:38 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726635"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:37 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:52 +0200
Message-Id: <dde6fe65239b7aa0a9721e2eae3ccffafd067322.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 12/20] utils/git.py: print current dir when git fails
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:40 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/utils/git.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/modules/utils/git.py b/modules/utils/git.py
index d1fe41b..a6f5422 100644
--- a/modules/utils/git.py
+++ b/modules/utils/git.py
@@ -40,7 +40,7 @@ class Git(object):
         try:
             stdout, stderr = bb.process.run(cmd)
         except bb.process.ExecutionError as e:
-            D("%s returned:\n%s" % (cmd, e.__str__()))
+            D("%s executed from %s returned:\n%s" % (cmd, self.repo_dir, e.__str__()))
             raise Error("The following git command failed: " + operation,
                         e.stdout, e.stderr)
 
-- 
2.15.0


