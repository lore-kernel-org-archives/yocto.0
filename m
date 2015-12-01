Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04493E00B20; Tue,  1 Dec 2015 14:02:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27187E00AF2
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 14:02:55 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2015 14:02:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="610892735"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 14:02:51 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 16:03:37 -0600
Message-Id: <1449007421-26206-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 2/6] upgradehelper.py: Add support for preserve logs in workdir.
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

Add FileHandler log to store the log into workdir, this needs
to move up the work directory creation.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/upgradehelper.py b/upgradehelper.py
index 0d3f8b2..7dbfbeb 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -134,6 +134,10 @@ class Updater(object):
     def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
         build_dir = get_build_dir()
 
+        self._make_dirs(build_dir)
+
+        self._add_file_logger()
+
         self.bb = Bitbake(build_dir)
 
         try:
@@ -160,6 +164,7 @@ class Updater(object):
         self.opts['buildhistory'] = self._buildhistory_is_enabled()
         self.opts['testimage'] = self._testimage_is_enabled()
 
+    def _make_dirs(self, build_dir):
         self.uh_dir = os.path.join(build_dir, "upgrade-helper")
         if not os.path.exists(self.uh_dir):
             os.mkdir(self.uh_dir)
@@ -176,6 +181,11 @@ class Updater(object):
         self.uh_recipes_failed_dir = os.path.join(self.uh_work_dir, "failed")
         os.mkdir(self.uh_recipes_failed_dir)
 
+    def _add_file_logger(self):
+        fh = log.FileHandler(os.path.join(self.uh_work_dir, "upgrade-helper.log"))
+        logger = log.getLogger()
+        logger.addHandler(fh)
+
     def _get_status_msg(self, err):
         if err:
             return str(err)
-- 
2.1.4


