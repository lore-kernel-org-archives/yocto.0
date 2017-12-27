Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74D2EE00DA9; Wed, 27 Dec 2017 05:24:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F00BAE00D79
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 05:24:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vBRDO4PM031659
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 27 Dec 2017 05:24:05 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 27 Dec 2017 05:24:03 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Wed, 27 Dec 2017 21:24:00 +0800
Message-ID: <04b2ecbee52bd7a87d84f40731e82ca2acd10202.1514379984.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1514379984.git.liezhi.yang@windriver.com>
References: <cover.1514379984.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Zhangle.Yang@windriver.com
Subject: [RFC PATCH 1/1] update.py: fetch repos parallelly
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
X-List-Received-Date: Wed, 27 Dec 2017 13:24:07 -0000
Content-Type: text/plain

This can save a lot of time, here is my testing data when PARALLEL_JOBS is 10,
this is the fetch time only, I hacked it to stop when the fetch is done to get
the data (124 layers):
$ update.py -b <branch>
Before: 2m30
Now: 16s

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 47 ++++++++++++++++++++++++++++++++++-------------
 settings.py          |  2 ++
 2 files changed, 36 insertions(+), 13 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index d1e67a0..0260e85 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -20,6 +20,7 @@ from distutils.version import LooseVersion
 import utils
 import operator
 import re
+import multiprocessing
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -127,6 +128,18 @@ def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake,
         for s in to_save:
             s.save()
 
+def fetch_repo(vcs_url, repodir, urldir, fetchdir, layer_name):
+    logger.info("Fetching remote repository %s" % vcs_url)
+    try:
+        if not os.path.exists(repodir):
+            utils.runcmd("git clone %s %s" % (vcs_url, urldir), fetchdir, logger=logger, printerr=False)
+        else:
+            utils.runcmd("git fetch -p", repodir, logger=logger, printerr=False)
+        return (vcs_url, None)
+    except subprocess.CalledProcessError as e:
+        logger.error("Fetch of layer %s failed: %s" % (layer_name, e.output))
+        return (vcs_url, e.output)
+
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
@@ -232,6 +245,9 @@ def main():
 
     if not os.path.exists(fetchdir):
         os.makedirs(fetchdir)
+
+    allrepos = {}
+    fetchedresult = []
     fetchedrepos = []
     failedrepos = {}
 
@@ -262,19 +278,24 @@ def main():
                     # Handle multiple layers in a single repo
                     urldir = layer.get_fetch_dir()
                     repodir = os.path.join(fetchdir, urldir)
-                    if not (layer.vcs_url in fetchedrepos or layer.vcs_url in failedrepos):
-                        logger.info("Fetching remote repository %s" % layer.vcs_url)
-                        out = None
-                        try:
-                            if not os.path.exists(repodir):
-                                out = utils.runcmd("git clone %s %s" % (layer.vcs_url, urldir), fetchdir, logger=logger, printerr=False)
-                            else:
-                                out = utils.runcmd("git fetch -p", repodir, logger=logger, printerr=False)
-                        except subprocess.CalledProcessError as e:
-                            logger.error("Fetch of layer %s failed: %s" % (layer.name, e.output))
-                            failedrepos[layer.vcs_url] = e.output
-                            continue
-                        fetchedrepos.append(layer.vcs_url)
+                    if layer.vcs_url not in allrepos:
+                        allrepos[layer.vcs_url] = (repodir, urldir, fetchdir, layer.name)
+                # Add bitbake
+                allrepos[settings.BITBAKE_REPO_URL] = (bitbakepath, "bitbake", fetchdir, "bitbake")
+                # Parallel fetching
+                pool = multiprocessing.Pool(int(settings.PARALLEL_JOBS))
+                for url in allrepos:
+                    fetchedresult.append(pool.apply_async(fetch_repo, \
+                        (url, allrepos[url][0], allrepos[url][1], allrepos[url][2], allrepos[url][3],)))
+                pool.close()
+                pool.join()
+
+                for url in fetchedresult[:]:
+                    # The format is (url, error), the error is None when succeed.
+                    if url.get()[1]:
+                        failedrepos[url.get()[0]] = url.get()[1]
+                    else:
+                        fetchedrepos.append(url.get()[0])
 
                 if not (fetchedrepos or update_bitbake):
                     logger.error("No repositories could be fetched, exiting")
diff --git a/settings.py b/settings.py
index e26f4b2..b638169 100644
--- a/settings.py
+++ b/settings.py
@@ -228,3 +228,5 @@ SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
 # RabbitMQ settings
 RABBIT_BROKER = 'amqp://'
 RABBIT_BACKEND = 'rpc://'
+
+PARALLEL_JOBS = "10"
-- 
2.7.4


