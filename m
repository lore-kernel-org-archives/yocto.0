Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF23E015ED
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 06:18:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Oct 2013 06:18:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1071,1371106800"; d="scan'208";a="408847017"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2013 06:18:07 -0700
Received: from thunderbird.rb.intel.com (thunderbird.rb.intel.com
	[10.237.105.57])
	by linux.intel.com (Postfix) with ESMTP id 21A296A4007;
	Thu, 10 Oct 2013 06:18:03 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Oct 2013 16:18:02 +0300
Message-Id: <1381411082-14579-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [yocto-autobuilder][PATCH] buildsteps/CheckOutLayers: use a commit object for git rev-parse
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
X-List-Received-Date: Thu, 10 Oct 2013 13:18:10 -0000

When the object passed to git rev-parse is a tag, we need to dereference
the tag until a commit id is found or the object cannot be dereferenced
anymore hence add ^0. (<rev>^0 is a short-hand for <rev>^{commit})

This avoids confusing tarballs like
http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.0/poky-319e24a8b1e100e950b07bbcad5fc81c42396845.tar.bz2
which have the SHA-1 hash of the tag instead of the commit.
It was first mentioned here
https://lists.yoctoproject.org/pipermail/yocto/2013-October/018607.html

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
index f7b7d6e..46f9b25 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
@@ -128,7 +128,7 @@ class CheckOutLayers(Git):
 
     @defer.inlineCallbacks
     def parseGotRevision(self, _=None):
-        stdout = yield self._dovccmd(['rev-parse', self.commit], collectStdout=True)
+        stdout = yield self._dovccmd(['rev-parse', self.commit + "^0"], collectStdout=True)
         revision = stdout.strip()
         if len(revision) != 40:
             raise buildstep.BuildStepFailed()
-- 
1.8.3.1


