Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54B82E00A92; Fri,  9 Sep 2016 16:43:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB07FE00A68
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 16:43:01 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 09 Sep 2016 16:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,307,1470726000"; d="scan'208";a="758982897"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Sep 2016 16:42:59 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Sep 2016 16:42:29 -0700
Message-Id: <1473464549-23082-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] /bin/checkvnc: un-bashify it
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
X-List-Received-Date: Fri, 09 Sep 2016 23:43:04 -0000

Script was using /bin/sh and double brackets were causing an error in nightly-oe-selftest build:
/home/pokybuild/yocto-autobuilder/bin/checkvnc: 6: /home/pokybuild/yocto-autobuilder/bin/checkvnc: [[: not found

Changed double to single brackets to make sh happy.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/checkvnc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/checkvnc b/bin/checkvnc
index 574ba48..728031f 100755
--- a/bin/checkvnc
+++ b/bin/checkvnc
@@ -3,7 +3,7 @@
 # check if vnc server is running, and if not, cleanup and restart
 #
 pid=$(pidof Xvnc)
-if [[ $? != 0 ]]; then
+if [ $? != 0 ]; then
     echo "Xvnc not running, attempting restart"
     vncserver -kill :1
     vncserver
-- 
2.7.0


