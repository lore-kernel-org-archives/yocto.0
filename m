Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A720E00B4A
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475934758"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id D5BD65F82A7A; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:19 -0700
Message-Id: <e813c4f10de244760d43b929b0203d278008a5dd.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 21/22] buildslave-janitor: Add in try/except handling to make calls robust against failure
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
X-List-Received-Date: Wed, 19 Mar 2014 20:58:14 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

There is a suspicion that the command can fail causing the janitor trash
removal process to exit. This adds in some exception handling to deal
with this. It include a timeout to stop it entering nasty loops.

This combined with the previous patch should let us figure out what
error conditions its hitting.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bin/buildslave-janitor | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/bin/buildslave-janitor b/bin/buildslave-janitor
index 153f18d..7495ce9 100755
--- a/bin/buildslave-janitor
+++ b/bin/buildslave-janitor
@@ -66,11 +66,16 @@ def trash_processor(trashdir):
         print("Not prepared to use a trashdir of /")
         return
     while True:
-        files = os.listdir(trashdir)
-        if files:
-            os.system("ionice -c 3 rm %s -rf" % trashdir)
-        else:
-            time.sleep(30*60) # 30 minutes
+        try:
+            files = os.listdir(trashdir)
+            if files:
+                os.system("ionice -c 3 rm %s -rf" % trashdir)
+            else:
+                time.sleep(30*60) # 30 minutes
+        except Exception as e:
+            print("Exception %s in trash cleaner" % str(e))
+            time.sleep(60) # 1 minute timeout to prevent crazy looping
+            pass
     return
 
 def mirror_processor(mirrordir):
-- 
1.8.1.2


