Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 121A3E007B7; Sat, 20 Aug 2016 15:51:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 20 Aug 2016 15:51:30 PDT
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE69BE004F1
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 15:51:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 20 Aug 2016 15:50:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,551,1464678000"; d="scan'208";a="1017946555"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.255.88.194])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2016 15:50:26 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Aug 2016 15:50:21 -0700
Message-Id: <1471733421-27188-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] PublishArtifacts.py: fix file check to work under dash
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
X-List-Received-Date: Sat, 20 Aug 2016 22:51:34 -0000

An earlier patch (ed3857990) to check for existing msd5sum files worked
fine when tested under bash, but failed with an error message about [[
not found when run under dash. Updated the test to not rely on bashisms.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index d8b554f..58048f0 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -259,8 +259,9 @@ class PublishArtifacts(ShellCommand):
     def generateMD5cmd(self, artifact, deploy_dir):
         cmd = ""
         if os.environ.get('GEN_IMG_MD5') == "True":
+            # crufty test for existing md5sum file required for dash shell
             cmd += "for x in `find " + deploy_dir + " -maxdepth 5 -type f`;"
-            cmd += "do if [[ $x != *.md5sum ]]; then md5sum $x >> " + "$x.md5sum; fi; done;"
+            cmd += "do echo ${x} | grep -q '\.md5sum'; if [ $? -ne 0 ]; then md5sum $x >> " + "$x.md5sum; fi; done;"
         return cmd
 
     def getDeployNames(self, artifact, buildername):
-- 
2.5.5


