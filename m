Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7AB9E00D90; Wed,  6 Dec 2017 23:37:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FABE00D90
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vB77bqGg014553
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 6 Dec 2017 23:37:52 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:51 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:12 +0800
Message-ID: <c44f2717d1b7df1f49456f3fd348b6943169bb5c.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 07/12] upgradehelper.py: always do upgrade when recipes are specified
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
X-List-Received-Date: Thu, 07 Dec 2017 07:37:55 -0000
Content-Type: text/plain

For example, first run:
$ upgradehelper.py less -d 5
It did the upgrade

Second run:
$ upgradehelper.py less -d 5
DEBUG: Skipping upgrade of less: is in history and not 30 days passed

Let it always do the upgrade makes it easier to use when do upgrade locally.
It will still do the check when the recipe is all.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 70b9e8d..e38a281 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -879,7 +879,7 @@ class UniverseUpdater(Updater):
                 if not os.path.exists(last_checkpkg_file):
                     last_checkpkg_file = None
 
-        if last_master_commit != cur_master_commit or last_date_checked != current_date or \
+        if self.recipes or last_master_commit != cur_master_commit or last_date_checked != current_date or \
                 last_checkpkg_file is None:
             self._check_upstream_versions()
             last_checkpkg_file = os.path.realpath(get_build_dir() + "/tmp/log/checkpkg.csv")
@@ -889,7 +889,10 @@ class UniverseUpdater(Updater):
 
         pkgs_list = []
         for pkg in self._parse_checkpkg_file(last_checkpkg_file):
-            if self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
+            # Always do the upgrade if recipes are specified
+            if self.recipes and pkg[0] in self.recipes:
+                pkgs_list.append(pkg)
+            elif self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
                 pkgs_list.append(pkg)
 
         # Update last_checkpkg_run only after the version check has been completed
-- 
2.7.4


