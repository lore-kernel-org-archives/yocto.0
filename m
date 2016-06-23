Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C941E00AD8; Thu, 23 Jun 2016 12:03:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C07A6E00A44
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 12:03:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 23 Jun 2016 12:03:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,518,1459839600"; d="scan'208";a="982073744"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.152])
	by orsmga001.jf.intel.com with ESMTP; 23 Jun 2016 12:03:37 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jun 2016 12:03:35 -0700
Message-Id: <1466708615-1539-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [autobuilder][PATCH] CreateAutoConf.py: check for empty env history variables before using
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
X-List-Received-Date: Thu, 23 Jun 2016 19:03:39 -0000

I saw this error on a new AB setup:

File "/home/pokybuild/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py", line 181, in start
    ta_history_repos=ast.literal_eval(os.environ.get('BUILD_HISTORY_THROWAWAY_WHITELIST').encode('utf-8'))
    exceptions.AttributeError: 'NoneType' object has no attribute 'encode'

Since the code above line 181 checks for either BUILD_HISTORY_THROWAWAY_WHITELIST
or BUILD_HISTORY_WHITELIST being set, it's possible one of them could be empty.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateAutoConf.py        | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 0845ff1..91607e6 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -177,9 +177,13 @@ class CreateAutoConf(ShellCommand):
 
                 if os.environ.get('BUILD_HISTORY_WHITELIST') is not None or \
                    os.environ.get('BUILD_HISTORY_THROWAWAY_WHITELIST') is not None:
+                    ta_history_repos={}
+                    history_repos={}
                     fout = fout + 'ERROR_QA_remove = "version-going-backwards"\n'
-                    ta_history_repos=ast.literal_eval(os.environ.get('BUILD_HISTORY_THROWAWAY_WHITELIST').encode('utf-8'))
-                    history_repos=ast.literal_eval(os.environ.get('BUILD_HISTORY_WHITELIST').encode('utf-8'))
+                    if os.environ.get('BUILD_HISTORY_THROWAWAY_WHITELIST') is not None:
+                        ta_history_repos=ast.literal_eval(os.environ.get('BUILD_HISTORY_THROWAWAY_WHITELIST').encode('utf-8'))
+                    if os.environ.get('BUILD_HISTORY_WHITELIST') is not None:
+                        history_repos=ast.literal_eval(os.environ.get('BUILD_HISTORY_WHITELIST').encode('utf-8'))
                     if repo in history_repos.keys() and \
                        self.getProperty("branch") in history_repos[self.getProperty("repository")]:
                     # We keep this build history
-- 
2.5.5


