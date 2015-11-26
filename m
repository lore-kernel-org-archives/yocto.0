Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D69DE00B46; Wed, 25 Nov 2015 16:00:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7844BE009C3
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:09 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188996"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:08 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:38 -0600
Message-Id: <1448496046-13186-10-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 09/17] steps.py: Merge load_dirs step into load_env.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/steps.py | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/modules/steps.py b/modules/steps.py
index 4a2eee3..19549cc 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -50,15 +50,13 @@ def load_env(bb, git, opts, pkg_ctx):
         git.clean_untracked()
 
     pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
-    if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
-        raise UpgradeNotNeededError
-
-def load_dirs(bb, git, opts, pkg_ctx):
     pkg_ctx['workdir'] = os.path.join(pkg_ctx['base_dir'], pkg_ctx['PN'])
     os.mkdir(pkg_ctx['workdir'])
-
     pkg_ctx['recipe_dir'] = os.path.dirname(pkg_ctx['env']['FILE'])
 
+    if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
+        raise UpgradeNotNeededError
+
 def clean_repo(bb, git, opts, pkg_ctx):
     try:
         git.checkout_branch("upgrades")
@@ -130,7 +128,6 @@ def buildhistory_diff(bb, git, opts, pkg_ctx):
 
 upgrade_steps = [
     (load_env, "Loading environment ..."),
-    (load_dirs, None),
     (clean_repo, "Cleaning git repository of temporary branch ..."),
     (detect_recipe_type, None),
     (buildhistory_init, None),
-- 
2.1.4


