Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F7FBE00C27; Wed, 18 Apr 2018 03:57:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD38CE00C6F
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 03:57:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w3IAv9Xr023038
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 03:57:09 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 03:57:08 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 18 Apr 2018 19:04:31 +0800
Message-ID: <c528ef98c56aa3e7fb9cf4b17d2c24d98f565cb9.1524049072.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/4] update.py: add an option --timeout for lockfile
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
X-List-Received-Date: Wed, 18 Apr 2018 10:57:11 -0000
Content-Type: text/plain

We have an update.py running perodically in background, but we also need run it
manually, for example, run it to update actual_branch, the manually run usually
failed because can't get lockfile, we have to run it again and again. A timeout
option helps a lot in such a case. Now the following command can make sure we
can run the command successfully:
$ update.py -b master -a actual_branch -t 2000

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py |  5 ++++-
 layerindex/utils.py  | 14 +++++++++++---
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 07240ab..e4ca7b6 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -156,6 +156,9 @@ def main():
     parser.add_option("-l", "--layer",
             help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
             action="store", dest="layers")
+    parser.add_option("-t", "--timeout",
+            help = "Specify timeout in seconds to get layerindex.lock. Default is 30 seconds.",
+            type="int", action="store", dest="timeout", default=30)
     parser.add_option("-r", "--reload",
             help = "Reload recipe data instead of updating since last update",
             action="store_true", dest="reload")
@@ -265,7 +268,7 @@ def main():
         update.save()
     try:
         lockfn = os.path.join(fetchdir, "layerindex.lock")
-        lockfile = utils.lock_file(lockfn)
+        lockfile = utils.lock_file(lockfn, options.timeout, logger)
         if not lockfile:
             logger.error("Layer index lock timeout expired")
             sys.exit(1)
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 08a4001..ebcfcaf 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -309,8 +309,10 @@ class ListHandler(logging.Handler):
         return log
 
 
-def lock_file(fn):
-    starttime = time.time()
+def lock_file(fn, timeout=30, logger=None):
+    start = time.time()
+    last = start
+    counter = 1
     while True:
         lock = open(fn, 'w')
         try:
@@ -318,8 +320,14 @@ def lock_file(fn):
             return lock
         except IOError:
             lock.close()
-            if time.time() - starttime > 30:
+            current = time.time()
+            if current - start > timeout:
                 return None
+            # Print a message in every 5 seconds
+            if logger and (current - last > 5):
+                last = current
+                logger.info('Trying to get lock on %s (tried %s seconds) ...' % (fn, (5 * counter)))
+                counter += 1
 
 def unlock_file(lock):
     fcntl.flock(lock, fcntl.LOCK_UN)
-- 
2.7.4


