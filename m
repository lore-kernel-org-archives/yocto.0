Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FD15E00D3D; Sun,  8 Jul 2018 21:01:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7266E00E9B
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 21:01:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6941b3i021356
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jul 2018 21:01:37 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Sun, 8 Jul 2018 21:01:36 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 9 Jul 2018 12:11:30 +0800
Message-ID: <8be7c6c9057c9b1d461aacfde8459adeddb348d5.1531109397.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1531109397.git.liezhi.yang@windriver.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 4/4] update.py: check whether branch existed when nocheckout
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
Assume there is no master branch in hello layer:
$ update.py -l hello -b master
INFO: Skipping update of layer hello - branch master doesn't exist

This is correct since hello layer doesn't have master branch, but when --nocheckout:
$ update.py -l hello -b master  --nocheckout
[snip]
INFO: Sorting layers for branch mater:
WARNING: Cannot find required collections on branch master:
WARNING: hello: LAYERDEPENDS: <snip>

This is incorrect, this patch fixed the problem, now it skips it since the
branch doesn't exists when --nocheckout.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py       | 4 ++--
 layerindex/update_layer.py | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 5b5fc43..c0a9f88 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -345,10 +345,10 @@ def main():
                     repo = git.Repo(repodir)
                     assert repo.bare == False
                     try:
+                        # Always get origin/branchname, so it raises error when branch doesn't exist when nocheckout
+                        topcommit = repo.commit('origin/%s' % branchname)
                         if options.nocheckout:
                             topcommit = repo.commit('HEAD')
-                        else:
-                            topcommit = repo.commit('origin/%s' % branchname)
                     except:
                         if newbranch:
                             logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 81b730a..d941ae6 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -362,10 +362,9 @@ def main():
     # Collect repo info
     repo = git.Repo(repodir)
     assert repo.bare == False
+    topcommit = repo.commit('origin/%s' % branchname)
     if options.nocheckout:
         topcommit = repo.commit('HEAD')
-    else:
-        topcommit = repo.commit('origin/%s' % branchname)
 
     tinfoil = None
     tempdir = None
-- 
2.7.4


