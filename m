Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 393D4E00E06; Wed,  6 Jul 2016 13:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81625E009A0
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 13:16:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 06 Jul 2016 13:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,320,1464678000"; d="scan'208";a="990298234"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.53])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2016 13:16:46 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jul 2016 13:16:39 -0700
Message-Id: <1467836200-30512-2-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
References: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 1/2] PublishArtifacts.py: create md5sum files in same dir as artifacts
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
X-List-Received-Date: Wed, 06 Jul 2016 20:16:48 -0000

Previously all the md5sum files got put into the top level deploy directory.
This patch keeps the md5sum file in the same directory as the file it is
hashing. It also limits the traversal depth to five, to avoid hashing the
wic components that go into making the wic images.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../site-packages/autobuilder/buildsteps/PublishArtifacts.py         | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 111dad7..952a458 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -233,9 +233,8 @@ class PublishArtifacts(ShellCommand):
     def generateMD5cmd(self, artifact, deploy_dir):
         cmd = ""
         if os.environ.get('GEN_IMG_MD5') == "True":
-            cmd += "for x in `find " + deploy_dir + " -type f`;"
-            cmd += "do fname=`basename $x`;"
-            cmd += "md5sum $x >> " + deploy_dir + "/$fname.md5sum; done;"
+            cmd += "for x in `find " + deploy_dir + " -type f -maxdepth 5`;"
+            cmd += "do md5sum $x >> " + "$x.md5sum; done;"
         return cmd
 
     def getDeployNames(self, artifact, buildername):
-- 
2.5.5


