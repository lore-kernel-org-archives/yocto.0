Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 595B4E00C9B; Wed, 21 Mar 2018 09:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DFF8E00D57
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 09:25:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 09:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,340,1517904000"; d="scan'208";a="26380086"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 21 Mar 2018 09:25:58 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Mar 2018 18:19:17 +0200
Message-Id: <20180321161917.13028-2-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.16.1
In-Reply-To: <20180321161917.13028-1-alexander.kanavin@linux.intel.com>
References: <20180321161917.13028-1-alexander.kanavin@linux.intel.com>
Subject: [PATCH 2/2] When 'devtool upgrade' fails to rebase patches, stop and report a failure
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
X-List-Received-Date: Wed, 21 Mar 2018 16:26:03 -0000

Previously it would continue, which eventually resulted in an unhelpful, generic
error message printed by 'devtool finish'.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 modules/steps.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/modules/steps.py b/modules/steps.py
index 5bbe38e..2eb4499 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -82,6 +82,10 @@ def devtool_upgrade(devtool, bb, git, opts, pkg_ctx):
 
     try:
         devtool_output = devtool.upgrade(pkg_ctx['PN'], pkg_ctx['NPV'], pkg_ctx['NSRCREV'])
+        D(" 'devtool upgrade' printed:\n%s" %(devtool_output))
+        # If devtool failed to rebase patches, it does not fail, but we should
+        if 'conflict' in devtool_output:
+            raise DevtoolError("Running 'devtool upgrade' for recipe %s failed." %(pkg_ctx['PN']), devtool_output)
     except DevtoolError as e1:
         try:
             devtool_output = devtool.reset(pkg_ctx['PN'])
@@ -96,7 +100,6 @@ def devtool_upgrade(devtool, bb, git, opts, pkg_ctx):
         with open(os.path.join(pkg_ctx['workdir'], pkg_ctx['license_diff_fn']), 'wb') as f:
             f.write(b"".join(license_diff_info))
 
-    D(" 'devtool upgrade' printed:\n%s" %(devtool_output))
 
 def _compile(bb, pkg, machine, workdir):
         try:
-- 
2.16.1


