Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 976D2E00A53; Mon,  3 Aug 2015 12:04:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C685E00A2C
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 12:04:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 12:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,603,1432623600"; d="scan'208";a="775902908"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 12:04:36 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 14:04:34 -0500
Message-Id: <1438628679-8626-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv2 06/11][auh] upgradehelper.py: step _detect_repo clarify why don't load git
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
X-List-Received-Date: Mon, 03 Aug 2015 19:04:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add comment to clarify why don't load git when is already instanced
the reason is the UniverseUpdater use poky git repository root instead
of per recipe directory.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index a3813c3..8d6c6f6 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -209,7 +209,8 @@ class Updater(object):
         if self.env['PV'] == self.new_ver:
             raise UpgradeNotNeededError
 
-        if self.git is not None:
+        # UniverseUpdater use git poky respository 
+        if isinstance(self.git, UniverseUpdater):
             return
 
         self.git = Git(self.recipe_dir)
@@ -525,6 +526,8 @@ class Updater(object):
 class UniverseUpdater(Updater):
     def __init__(self):
         Updater.__init__(self, True, True)
+
+        # XXX: assume that the poky directory is the first entry in the PATH
         self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
 
         # read history file
-- 
1.9.1


