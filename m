Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 997DEE00E79; Sun,  8 Jul 2018 21:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B727DE00E9D
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 21:01:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6941W03021353
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jul 2018 21:01:33 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Sun, 8 Jul 2018 21:01:31 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 9 Jul 2018 12:11:28 +0800
Message-ID: <1bcda59f1ee72f8762a634c11808f226975c8c97.1531109397.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1531109397.git.liezhi.yang@windriver.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 2/4] utils.py: fix checkout_repo when no HEAD
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
X-List-Received-Date: Mon, 09 Jul 2018 04:01:41 -0000
Content-Type: text/plain

Fixed:
$ git clone <url>
warning: remote HEAD refers to nonexistent ref, unable to checkout.
$ git rev-parse HEAD
HEAD
fatal: ambiguous argument 'HEAD': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'

Catch the error and avoid that.

And use "git reset --hard" to replace of "git reset --hard HEAD", HEAD is
default for git reset, so they are the same, but the later one reports error
when remote HEAD doesn't exist:
$ git reset --hard HEAD
fatal: ambiguous argument 'HEAD': unknown revision or path not in the working tree.
[snip]

$ git reset --hard
No errors.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index c30038d..3dc54a1 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -217,17 +217,25 @@ def checkout_repo(repodir, commit, logger, force=False):
     if force:
         currentref = ''
     else:
-        currentref = runcmd("git rev-parse HEAD", repodir, logger=logger).strip()
+        try:
+            # The "git rev-parse HEAD" returns "fatal: ambiguous argument 'HEAD'"
+            # when a repo is unable to check out after git clone:
+            # git clone <url>
+            # warning: remote HEAD refers to nonexistent ref, unable to checkout.
+            # So check and avoid that
+            currentref = runcmd("git rev-parse HEAD", repodir, logger=logger).strip()
+        except Exception as esc:
+            logger.warn(esc)
+            currentref = ''
     if currentref != commit:
         # Reset in case there are added but uncommitted changes
-        runcmd("git reset --hard HEAD", repodir, logger=logger)
+        runcmd("git reset --hard", repodir, logger=logger)
         # Drop any untracked files in case these cause problems (either because
         # they will exist in the revision we're checking out, or will otherwise
         # interfere with operation, e.g. stale pyc files)
         runcmd("git clean -qdfx", repodir, logger=logger)
         # Now check out the revision
-        runcmd("git checkout %s" % commit,
-                        repodir, logger=logger)
+        runcmd("git checkout %s" % commit, repodir, logger=logger)
 
 def checkout_layer_branch(layerbranch, repodir, logger=None):
     branchname = layerbranch.branch.name
-- 
2.7.4


