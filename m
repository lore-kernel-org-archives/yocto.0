Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A88EBE00BEF; Mon, 12 Jun 2017 19:37:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0B02E00B93
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 19:36:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5D2axCQ010689
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 12 Jun 2017 19:36:59 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 12 Jun 2017 19:36:58 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 12 Jun 2017 19:36:50 -0700
Message-ID: <84fcfccac89d891ba0bb9b0234473775a6c7253d.1497320961.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V4 09/10] update.py: add -p to git fetch
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
X-List-Received-Date: Tue, 13 Jun 2017 02:37:00 -0000
Content-Type: text/plain

-p, --prune
    Before fetching, remove any remote-tracking references that no longer exist on the remote.

Fixed:
$ git push origin :test_branch
$ ./update.py

The test_branch was still in fetched local repo which was incorrect, it should
be gone since it has been removed by upstream.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 0046f38..1512743 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -262,7 +262,7 @@ def main():
                             if not os.path.exists(repodir):
                                 out = utils.runcmd("git clone %s %s" % (layer.vcs_url, urldir), fetchdir, logger=logger, printerr=False)
                             else:
-                                out = utils.runcmd("git fetch", repodir, logger=logger, printerr=False)
+                                out = utils.runcmd("git fetch -p", repodir, logger=logger, printerr=False)
                         except subprocess.CalledProcessError as e:
                             logger.error("Fetch of layer %s failed: %s" % (layer.name, e.output))
                             failedrepos[layer.vcs_url] = e.output
@@ -277,7 +277,7 @@ def main():
                 if not os.path.exists(bitbakepath):
                     out = utils.runcmd("git clone %s %s" % (settings.BITBAKE_REPO_URL, 'bitbake'), fetchdir, logger=logger)
                 else:
-                    out = utils.runcmd("git fetch", bitbakepath, logger=logger)
+                    out = utils.runcmd("git fetch -p", bitbakepath, logger=logger)
 
             if options.actual_branch:
                 update_actual_branch(layerquery, fetchdir, branches[0], options, update_bitbake, bitbakepath)
-- 
2.10.2


