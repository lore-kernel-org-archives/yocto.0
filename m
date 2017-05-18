Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A33E00B6D; Thu, 18 May 2017 14:21:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C85BE00B58
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 14:21:38 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2017 14:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,360,1491289200"; d="scan'208";a="103906751"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.129])
	by fmsmga005.fm.intel.com with ESMTP; 18 May 2017 14:21:29 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 May 2017 16:21:44 -0500
Message-Id: <1495142506-11581-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1495142506-11581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH][PATCH] 4/6] upgradehelper.py: Add support for sync layer master
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
X-List-Received-Date: Thu, 18 May 2017 21:21:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #8962]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 6732fb2..41f81c1 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -674,6 +674,10 @@ class UniverseUpdater(Updater):
                                                         line.split(',')[4]]
 
     def _update_master(self):
+        if self.opts['layer_mode'] == 'yes':
+            I(" Sync poky master ...")
+            self.poky_git.pull()
+
         I(" Drop all uncommited changes (including untracked) ...")
         self.git.reset_hard()
         self.git.clean_untracked()
@@ -683,7 +687,10 @@ class UniverseUpdater(Updater):
             self.git.delete_branch("upgrades")
         except Error:
             pass
-        I(" Sync master ...")
+        if self.opts['layer_mode'] == 'yes':
+            I(" Sync %s master ..." % self.opts['layer_name'])
+        else:
+            I(" Sync poky master ...")
         self.git.pull()
         self.git.create_branch("upgrades")
 
-- 
2.1.4


