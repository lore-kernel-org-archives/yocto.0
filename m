Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3365E00DE2; Wed,  6 Dec 2017 23:38:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0809BE00DD1
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vB77bv6F014558
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 6 Dec 2017 23:37:57 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:56 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:15 +0800
Message-ID: <332375201106c4f2fed6a89f008f0aac0a396908.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 10/12] upgradehelper.py: add --apply-failed option
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
X-List-Received-Date: Thu, 07 Dec 2017 07:38:04 -0000
Content-Type: text/plain

  -f, --apply-failed    Apply failed patch in the repo after upgrade is done

And add "FAILED:" in subject when failed. So that the user can go on
working based on the commit.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 0678c58..3ad33ae 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -94,6 +94,8 @@ def parse_cmdline():
                         help="do not compile, just change the checksums, remove PR, and commit")
     parser.add_argument("-c", "--config-file", default=None,
                         help="Path to the configuration file. Default is $BUILDDIR/upgrade-helper/upgrade-helper.conf")
+    parser.add_argument("-f", "--apply-failed", action="store_true", default=False,
+                        help="Apply failed patch in the repo after upgrade is done")
     return parser.parse_args()
 
 def parse_config_file(config_file):
@@ -407,7 +409,10 @@ class Updater(object):
 
             if 'recipe' in pkg_ctx:
                 I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
-                commit_msg = pkg_ctx['recipe'].commit_msg
+                if pkg_ctx['error']:
+                    commit_msg = "FAILED: %s" % pkg_ctx['recipe'].commit_msg
+                else:
+                    commit_msg = pkg_ctx['recipe'].commit_msg
                 if self.recipes:
                     self.git.commit(commit_msg)
                 else:
@@ -655,6 +660,11 @@ class Updater(object):
                     pkg_ctx['MAINTAINER'], pkg_ctx['error'])
             self.pkg_upgrade_handler(pkg_ctx)
 
+            if self.args.apply_failed and pkg_ctx in failed_pkgs_ctx:
+                if pkg_ctx['patch_file']:
+                    I(" %s: Applying failed patch" % pn)
+                    self.git.apply_patch(pkg_ctx['patch_file'])
+
         if attempted_pkgs > 0:
             publish_work_url = settings.get('publish_work_url', '')
             work_tarball = os.path.join(self.uh_base_work_dir,
-- 
2.7.4


