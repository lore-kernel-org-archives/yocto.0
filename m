Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25335E00BA1; Wed, 25 Nov 2015 16:00:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB6D1E00AC5
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189076"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:15 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:44 -0600
Message-Id: <1448496046-13186-16-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 15/17] upgradehelper: Add workdir setting.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The workdir setting is useful for store the AUH generated patches
into another directory than $BULDDIR/upgrade-helper/work this will
be used to publish AUH work.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README           | 3 +++
 upgradehelper.py | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 6432f97..d0cc4ae 100644
--- a/README
+++ b/README
@@ -47,6 +47,9 @@ from=upgrade.helper@my-server.com
 # who should get the status mail with statistics, at the end
 status_recipients=john.doe@doe.com
 
+# specify the directory where work (patches) will be saved (optional)
+#workdir=
+
 # clean sstate directory before upgrading
 clean_sstate=yes
 
diff --git a/upgradehelper.py b/upgradehelper.py
index 6cf8dd0..f9d915a 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -163,7 +163,10 @@ class Updater(object):
         self.uh_dir = os.path.join(build_dir, "upgrade-helper")
         if not os.path.exists(self.uh_dir):
             os.mkdir(self.uh_dir)
-        self.uh_work_dir = os.path.join(self.uh_dir, "work-%s" % \
+        uh_base_work_dir = settings.get('workdir', '')
+        if not uh_base_work_dir:
+            uh_base_work_dir = self.uh_dir
+        self.uh_work_dir = os.path.join(uh_base_work_dir, "%s" % \
                 datetime.now().strftime("%Y%m%d%H%M%S"))
         os.mkdir(self.uh_work_dir)
         self.uh_recipes_all_dir = os.path.join(self.uh_work_dir, "all")
-- 
2.1.4


