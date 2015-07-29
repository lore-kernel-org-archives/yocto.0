Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0D11E00AA9; Wed, 29 Jul 2015 13:51:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB38E00A96
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 13:50:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2015 13:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,572,1432623600"; d="scan'208";a="757672279"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2015 13:50:59 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Jul 2015 15:50:51 -0500
Message-Id: <1438203053-7909-9-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 08/10][auh] upgradehelper.py: Remove unused references to Buildhistory class
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
X-List-Received-Date: Wed, 29 Jul 2015 20:51:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Buildhistory class isn't implemented so removed related code.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 7bc8eed..a31d041 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -43,7 +43,7 @@ from datetime import date
 import shutil
 from errors import *
 from git import Git
-from bitbake import Bitbake, BuildHistory
+from bitbake import Bitbake
 from emailhandler import Email
 from statistics import Statistics
 from recipe import Recipe
@@ -135,7 +135,6 @@ class Updater(object):
             os.mkdir(self.uh_work_dir)
 
         self.bb = Bitbake(get_build_dir())
-        self.buildhistory = BuildHistory(get_build_dir())
         self.git = None
         self.author_email = settings.get('from', 'uh@not.set')
         self.author = "Upgrade Helper <%s>" % self.author_email
@@ -266,14 +265,6 @@ class Updater(object):
             I(" %s: compiling for %s ..." % (self.pn, machine))
             self.recipe.compile(machine)
 
-    def _review(self):
-        # Check build_history
-        if not self.skip_compilation:
-            I(" %s: Checking buildhistory ..." % self.pn)
-            self.buildhistory.set_work_dir(self.workdir)
-            if self.buildhistory.diff(len(self.machines)):
-               I(" %s: Wrote buildhistory-diff output ..." % self.pn)
-
     def _check_upstream_versions(self, packages=[("universe", None, None)]):
         I(" Fetching upstream version(s) ...")
 
-- 
1.9.1


