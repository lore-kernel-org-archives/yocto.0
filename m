Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54C51E00C02; Tue, 24 May 2016 16:06:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37F43E00756
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 16:06:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 24 May 2016 16:06:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,360,1459839600"; d="scan'208";a="973829663"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2016 16:06:36 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 May 2016 16:06:33 -0700
Message-Id: <1464131193-25397-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
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
X-List-Received-Date: Tue, 24 May 2016 23:06:42 -0000

Get rid of the extraneous DL_BASE line. It's not used and should have
been removed when I fixed the eclipse-plugin release path.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 2b4d21c..89f68be 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -351,7 +351,6 @@ if __name__ == '__main__':
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
     DL_DIR = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
-    DL_BASE = os.path.join(DL_DIR, "/releases/yocto")
     ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
-- 
2.7.0


