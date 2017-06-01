Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E8FE00B47; Wed, 31 May 2017 20:34:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8772DE00B5C
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 20:34:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v513YbFA008589
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 May 2017 20:34:37 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 31 May 2017 20:34:36 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 31 May 2017 20:34:27 -0700
Message-ID: <8a8bcc0f16d0e3207842717181a4a448e345a8ef.1496287756.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1496287756.git.liezhi.yang@windriver.com>
References: <cover.1496287756.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V2 4/8] update.py: add -p to git fetch
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
X-List-Received-Date: Thu, 01 Jun 2017 03:34:38 -0000
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


