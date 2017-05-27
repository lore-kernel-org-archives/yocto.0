Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B3AFE00A94; Sat, 27 May 2017 03:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75609E009BA
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 03:15:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4RAFwd0001750
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sat, 27 May 2017 03:15:58 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 27 May 2017 03:15:58 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 27 May 2017 03:15:49 -0700
Message-ID: <20170527101553.15014-5-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20170527101553.15014-1-liezhi.yang@windriver.com>
References: <20170527101553.15014-1-liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [layerindex-web][4/8] update.py: add -p to git fetch
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
X-List-Received-Date: Sat, 27 May 2017 10:16:00 -0000
Content-Type: text/plain

-p, --prune
    Before fetching, remove any remote-tracking references that no longer exist on the remote.

Fixed:
$ git push origin :test_branch
$ ./update.py

The test_branch was still in layerindex which was incorrect, it should
be gone since the branch had been removed from the repo.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index d5c56cd..9c131cb 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -202,7 +202,7 @@ def main():
                             if not os.path.exists(repodir):
                                 out = utils.runcmd("git clone %s %s" % (layer.vcs_url, urldir), fetchdir, logger=logger, printerr=False)
                             else:
-                                out = utils.runcmd("git fetch", repodir, logger=logger, printerr=False)
+                                out = utils.runcmd("git fetch -p", repodir, logger=logger, printerr=False)
                         except subprocess.CalledProcessError as e:
                             logger.error("Fetch of layer %s failed: %s" % (layer.name, e.output))
                             failedrepos[layer.vcs_url] = e.output
@@ -217,7 +217,7 @@ def main():
                 if not os.path.exists(bitbakepath):
                     out = utils.runcmd("git clone %s %s" % (settings.BITBAKE_REPO_URL, 'bitbake'), fetchdir, logger=logger)
                 else:
-                    out = utils.runcmd("git fetch", bitbakepath, logger=logger)
+                    out = utils.runcmd("git fetch -p", bitbakepath, logger=logger)
 
             # Process and extract data from each layer
             # We now do this by calling out to a separate script; doing otherwise turned out to be
-- 
2.10.2


