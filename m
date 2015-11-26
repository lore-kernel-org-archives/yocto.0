Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC16AE00BA4; Wed, 25 Nov 2015 16:00:25 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B74D3E00B76
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:17 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189092"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:16 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:45 -0600
Message-Id: <1448496046-13186-17-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 16/17] statistics: Improve email format and get_summary method.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/statistics.py | 24 ++++++++++++++----------
 upgradehelper.py      | 11 +++++------
 2 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/modules/statistics.py b/modules/statistics.py
index 32a6748..905a4cc 100644
--- a/modules/statistics.py
+++ b/modules/statistics.py
@@ -62,16 +62,15 @@ class Statistics(object):
 
         self.total_attempted += 1
 
-    def pkg_stats(self):
-        stat_msg = "\nUpgrade statistics:\n"
-        stat_msg += "====================================================\n"
+    def _pkg_stats(self):
+        stat_msg = "Recipe upgrade statistics:\n\n"
         for status in self.upgrade_stats:
             list_len = len(self.upgrade_stats[status])
             if list_len > 0:
-                stat_msg += "* " + status + ": " + str(list_len) + "\n"
+                stat_msg += "    * " + status + ": " + str(list_len) + "\n"
 
                 for pkg, new_ver, maintainer in self.upgrade_stats[status]:
-                    stat_msg += "    " + pkg + ", " + new_ver + ", " + \
+                    stat_msg += "        " + pkg + ", " + new_ver + ", " + \
                                 maintainer + "\n"
 
         if self.total_attempted == 0:
@@ -80,8 +79,7 @@ class Statistics(object):
         else:
             percent_succeded = self.succeeded["total"] * 100.0 / self.total_attempted
             percent_failed = self.failed["total"] * 100.0 / self.total_attempted
-        stat_msg += "++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
-        stat_msg += "TOTAL: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
+        stat_msg += "\n    TOTAL: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
                     (self.total_attempted, self.succeeded["total"],
                     percent_succeded,
                     self.failed["total"],
@@ -89,14 +87,20 @@ class Statistics(object):
 
         return stat_msg
 
-    def maintainer_stats(self):
-        stat_msg = "* Statistics per maintainer:\n"
+    def _maintainer_stats(self):
+        stat_msg = "Recipe upgrade statistics per Maintainer:\n\n"
         for m in self.maintainers:
             attempted = self.succeeded[m] + self.failed[m]
-            stat_msg += "    %s: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
+            stat_msg += "    %s: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n" % \
                         (m.split("@")[0], attempted, self.succeeded[m],
                         self.succeeded[m] * 100.0 / attempted,
                         self.failed[m],
                         self.failed[m] * 100.0 / attempted)
 
         return stat_msg
+
+    def get_summary(self):
+        msg = self._pkg_stats()
+        msg += self._maintainer_stats()
+
+        return msg
diff --git a/upgradehelper.py b/upgradehelper.py
index f9d915a..d0e1439 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -395,14 +395,14 @@ class Updater(object):
 
     def send_status_mail(self):
         if "status_recipients" not in settings:
-            E("Could not send status email, no recipients set!")
+            E(" Could not send status email, no recipients set!")
             return -1
 
         to_list = settings["status_recipients"].split()
 
         subject = "[AUH] Upgrade status: " + date.isoformat(date.today())
 
-        msg = self.statistics.pkg_stats() + self.statistics.maintainer_stats()
+        msg = self.statistics.get_summary()
 
         if self.statistics.total_attempted:
             self.email_handler.send_email(to_list, subject, msg)
@@ -610,16 +610,15 @@ class Updater(object):
             pkg_ctx = pkgs_ctx[pn]
             self.pkg_upgrade_handler(pkg_ctx)
 
-        if attempted_pkgs > 1:
-            statistics_summary = self.statistics.pkg_stats() + \
-                    self.statistics.maintainer_stats()
+        if attempted_pkgs > 0:
+            statistics_summary = self.statistics.get_summary()
 
             statistics_file = os.path.join(self.uh_work_dir,
                     "statistics_summary")
             with open(statistics_file, "w+") as f:
                 f.write(statistics_summary)
 
-            I("%s" % statistics_summary)
+            I(" %s" % statistics_summary)
 
             if self.opts['send_email']:
                 self.send_status_mail()
-- 
2.1.4


