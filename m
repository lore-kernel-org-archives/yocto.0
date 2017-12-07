Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26404E00DE5; Wed,  6 Dec 2017 23:38:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 974C7E00DAB
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vB77briu025474
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Dec 2017 23:37:54 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:53 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:13 +0800
Message-ID: <e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 08/12] upgradehelper.py: clean repo only once when recipes are specified
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
X-List-Received-Date: Thu, 07 Dec 2017 07:38:00 -0000
Content-Type: text/plain

E.g.:
$ upgradehelper.py less strace bash git

The commit is removed when failed, and kept when succeed, but it would be
removed when next recipe runs, so only run clean_repo once can keep the commit,
which is helpful for the user.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/upgradehelper.py b/upgradehelper.py
index e38a281..ff27b97 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -57,6 +57,7 @@ from utils.emailhandler import Email
 from statistics import Statistics
 from steps import upgrade_steps
 from steps import compile
+from steps import clean_repo
 from testimage import TestImage
 
 help_text = """Usage examples:
@@ -419,6 +420,10 @@ class Updater(object):
                 else:
                     I(" %s: Save patch in directory: %s." %
                         (pkg_ctx['PN'], pkg_ctx['workdir']))
+                    if pkg_ctx['error']:
+                        I(" %s: Remove it from repo since failed!" % pkg_ctx['PN'])
+                        self.git.reset_hard(1)
+
         except Error as e:
             msg = ''
 
@@ -569,6 +574,7 @@ class Updater(object):
         succeeded_pkgs_ctx = []
         failed_pkgs_ctx = []
         attempted_pkgs = 0
+        repo_cleaned = False
         for pn, _, _ in pkgs_to_upgrade:
             pkg_ctx = pkgs_ctx[pn]
             pkg_ctx['error'] = None
@@ -581,6 +587,12 @@ class Updater(object):
                     if step == compile and self.args.skip_compilation:
                         W(" %s: Skipping compile by user choice" % pkg_ctx['PN'])
                         continue
+                    if step == clean_repo and self.recipes:
+                        if repo_cleaned:
+                            I(" %s: Skipping clean_repo since it had been run by previous recipe" % pkg_ctx['PN'])
+                            continue
+                        else:
+                            repo_cleaned = True
                     if msg is not None:
                         I(" %s: %s" % (pkg_ctx['PN'], msg))
                     step(self.bb, self.git, self.opts, pkg_ctx)
-- 
2.7.4


