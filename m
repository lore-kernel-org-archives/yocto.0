Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBC38E00DC9; Wed,  6 Dec 2017 23:38:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D86DE00D71
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vB77btiw014763
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Dec 2017 23:37:55 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:55 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:14 +0800
Message-ID: <348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 09/12] upgradehelper.py: use git user in commit when recipes are specified
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
X-List-Received-Date: Thu, 07 Dec 2017 07:38:01 -0000
Content-Type: text/plain

E.g.,:
$ upgradehelper.py less

commit d9b551438037e105eebabbbcb2da6d8b8cae7504
Author: Robert Yang <liezhi.yang@windriver.com>
Date:   Wed Dec 6 16:38:55 2017 +0800

    less: upgrade to 529

    Signed-off-by: Robert Yang <liezhi.yang@windriver.com>

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index ff27b97..0678c58 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -407,7 +407,11 @@ class Updater(object):
 
             if 'recipe' in pkg_ctx:
                 I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
-                self.git.commit(pkg_ctx['recipe'].commit_msg, self.opts['author'])
+                commit_msg = pkg_ctx['recipe'].commit_msg
+                if self.recipes:
+                    self.git.commit(commit_msg)
+                else:
+                    self.git.commit(commit_msg, self.opts['author'])
 
                 stdout = self.git.create_patch(pkg_ctx['workdir'])
                 pkg_ctx['patch_file'] = stdout.strip()
-- 
2.7.4


