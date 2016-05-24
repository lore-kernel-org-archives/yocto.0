Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83CFAE00C02; Tue, 24 May 2016 15:37:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05AB0E00756
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 15:37:21 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 24 May 2016 15:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,360,1459839600"; d="scan'208";a="814065649"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga003.jf.intel.com with ESMTP; 24 May 2016 15:37:20 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 May 2016 15:37:18 -0700
Message-Id: <1464129438-24767-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] bin/release_scripts/relnotes.py
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
X-List-Received-Date: Tue, 24 May 2016 22:37:23 -0000

Works better for all major/point releases if the poky version
isn't hardcoded to 14.0.1. Fixed that.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/relnotes.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/release_scripts/relnotes.py b/bin/release_scripts/relnotes.py
index 6476364..6eccbe4 100755
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


