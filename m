Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA17E00CD3; Thu, 10 Mar 2016 17:37:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE4EBE00CC9
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 17:37:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2016 17:37:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,318,1455004800"; d="scan'208";a="921422393"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2016 17:37:25 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Mar 2016 17:37:22 -0800
Message-Id: <1457660242-364-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] bin/release-scripts/relnotes.py
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
X-List-Received-Date: Fri, 11 Mar 2016 01:37:33 -0000

Fixed a hardcoded statement that had "14.0.1" instead of the correct POKY_VER
variable.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/relnotes.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/release_scripts/relnotes.py b/bin/release_scripts/relnotes.py
index 3c32e28..46b79dd0 100755
--- a/bin/release_scripts/relnotes.py
+++ b/bin/release_scripts/relnotes.py
@@ -132,7 +132,7 @@ if __name__ == '__main__':
     os.chdir(RELEASE_DIR)
     files = glob.glob('*.bz2')
     allfiles = filter(lambda f: os.path.isfile(f), files)
-    found = filter(lambda x: '14.0.1' not in x, allfiles)
+    found = filter(lambda x: POKY_VER not in x, allfiles)
     filelist = filter(lambda z: 'fsl' not in z, found)
     filelist.sort()
     for item in filelist:
-- 
2.7.0


