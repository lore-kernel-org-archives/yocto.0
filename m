Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6B38E00E54; Mon, 22 Aug 2016 07:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EDF8E00E4C
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 07:52:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 22 Aug 2016 07:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,560,1464678000"; d="scan'208";a="1039667989"
Received: from wcrandle-mobl1.jf.intel.com (HELO
	wcrandle-mobl1.amr.corp.intel.com) ([10.7.199.154])
	by orsmga002.jf.intel.com with ESMTP; 22 Aug 2016 07:52:09 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 07:52:00 -0700
Message-Id: <1471877520-5615-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH v2] PublishArtifacts.py: fix filecheck to work under dash (or other POSIX shell)
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
X-List-Received-Date: Mon, 22 Aug 2016 14:52:13 -0000

An earlier patch (ed3857990) to check for existing msd5sum files worked
fine when tested under bash, but failed with an error message about [[
not found when run under dash. Updated the test to not rely on bashisms.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---

V2: use POSIX shell expansion for simplified test (thanks Joshua)

 lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index d8b554f..e738521 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -260,7 +260,7 @@ class PublishArtifacts(ShellCommand):
         cmd = ""
         if os.environ.get('GEN_IMG_MD5') == "True":
             cmd += "for x in `find " + deploy_dir + " -maxdepth 5 -type f`;"
-            cmd += "do if [[ $x != *.md5sum ]]; then md5sum $x >> " + "$x.md5sum; fi; done;"
+            cmd += "do if [ ${x##*.} != md5sum ]; then md5sum $x >> " + "$x.md5sum; fi; done;"
         return cmd
 
     def getDeployNames(self, artifact, buildername):
-- 
2.5.5


