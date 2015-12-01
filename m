Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A6B1E00B01; Tue,  1 Dec 2015 14:02:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EADFE00B03
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 14:02:55 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 01 Dec 2015 14:02:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="610892760"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 14:02:53 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 16:03:41 -0600
Message-Id: <1449007421-26206-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 6/6] upgradehelper: Remove deprecated setting drop_previous_commits.
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
X-List-Received-Date: Tue, 01 Dec 2015 22:02:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Since recipe upgrades are done in isolate manner cleaning the repo
for every recipe [1] the drop_previous_commits becomes deprecated.

Also now we have Testimage integration phase that handles/reports
this kind of errors.

[1] http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/commit/?h=boot_images_v2&id=8769030a02753f09ed6b5e7c98ed1c442a51a466

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README           |  3 ---
 upgradehelper.py | 20 --------------------
 2 files changed, 23 deletions(-)

diff --git a/README b/README
index 63c3b39..1b73034 100644
--- a/README
+++ b/README
@@ -59,9 +59,6 @@ clean_sstate=yes
 # clean tmp directory before upgrading
 clean_tmp=yes
 
-# keep previous commits or not
-drop_previous_commits=yes
-
 # machines to test build with
 machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
 
diff --git a/upgradehelper.py b/upgradehelper.py
index 19327c8..d9fa48a 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -276,26 +276,6 @@ class Updater(object):
 
     # this function will be called at the end of each recipe upgrade
     def pkg_upgrade_handler(self, pkg_ctx):
-        if self.opts['interactive'] and pkg_ctx['error'] and pkg_ctx['patch_file']:
-            answer = "N"
-            I(" %s: Do you want to keep the changes? (y/N)" % pkg_ctx['PN'])
-            answer = sys.stdin.readline().strip().upper()
-
-            if answer == '' or answer == 'N':
-                I(" %s: Dropping changes from git ..." % pkg_ctx['PN'])
-                self.git.reset_hard(1)
-                self.git.clean_untracked()
-                return
-
-        # drop last upgrade from git. It's safer this way if the upgrade has
-        # problems and other recipes depend on it. Give the other recipes a
-        # chance...
-        if (settings.get("drop_previous_commits", "no") == "yes" and
-                not pkg_ctx['error']) or (pkg_ctx['error'] and pkg_ctx['patch_file']):
-            I(" %s: Dropping changes from git ..." % pkg_ctx['PN'])
-            self.git.reset_hard(1)
-            self.git.clean_untracked()
-
         mail_header = \
             "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
             "of *%s* recipe and this is to let you know that the automatic attempt\n" \
-- 
2.1.4


