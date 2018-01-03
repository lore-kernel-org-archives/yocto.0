Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13D57E00DBD; Tue,  2 Jan 2018 21:42:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B32E00DD5
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 21:42:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w035gMfV016030
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Jan 2018 21:42:22 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Tue, 2 Jan 2018 21:42:21 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 3 Jan 2018 13:42:23 +0800
Message-ID: <9f64d5abd9c08ba956b48a7c3000731ef8b11c45.1514957938.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1514957938.git.liezhi.yang@windriver.com>
References: <cover.1514957938.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 2/5] update.py: make sure oe-core is fetched
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
X-List-Received-Date: Wed, 03 Jan 2018 05:42:26 -0000
Content-Type: text/plain

Fixed:
$ ./update.py -l foo -b new_branch
INFO: Fetching remote repository foo
DEBUG: run cmd 'git fetch -p' in 'foo'
[snip]
DEBUG: run cmd 'git checkout origin/new_branch' in oe-core
ERROR: error: pathspec 'origin/new_branch' did not match any file(s) known to git.

The "new_branch" is newly created, it doesn't exist in local repo since it
isn't fetched, it only fetches the layer specified by -l, so only the foo layer
is fetched. This patch fixes problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index d1e67a0..6359115 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -257,8 +257,14 @@ def main():
             bitbakepath = os.path.join(fetchdir, 'bitbake')
 
             if not options.nofetch:
+                # Make sure oe-core is fetched since recipe parsing requires it
+                layerquery_core = LayerItem.objects.filter(classic=False).filter(name=settings.CORE_LAYER_NAME)
+                if layerquery_core in layerquery:
+                    layerquery_fetch = list(layerquery)
+                else:
+                    layerquery_fetch = list(layerquery) + list(layerquery_core)
                 # Fetch latest metadata from repositories
-                for layer in layerquery:
+                for layer in layerquery_fetch:
                     # Handle multiple layers in a single repo
                     urldir = layer.get_fetch_dir()
                     repodir = os.path.join(fetchdir, urldir)
-- 
2.7.4


