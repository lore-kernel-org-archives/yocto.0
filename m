Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F19F1E00BA1; Wed, 25 Nov 2015 16:00:25 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86F78E00BAB
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:18 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189099"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:17 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:46 -0600
Message-Id: <1448496046-13186-18-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 17/17] statistics: Add support for publish_work_url setting.
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

Publish setting helps to point the url where the AUH patches and
logs are saved, this url is included into AUH upgrade status email.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README                |  3 +++
 modules/statistics.py | 10 ++++++++--
 upgradehelper.py      | 12 ++++++------
 3 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/README b/README
index d0cc4ae..0756fdc 100644
--- a/README
+++ b/README
@@ -50,6 +50,9 @@ status_recipients=john.doe@doe.com
 # specify the directory where work (patches) will be saved (optional)
 #workdir=
 
+# publish url to use in statistics summary (optional)
+#publish_work_url=http://auh.somehost.com/work
+
 # clean sstate directory before upgrading
 clean_sstate=yes
 
diff --git a/modules/statistics.py b/modules/statistics.py
index 905a4cc..db83c5b 100644
--- a/modules/statistics.py
+++ b/modules/statistics.py
@@ -99,8 +99,14 @@ class Statistics(object):
 
         return stat_msg
 
-    def get_summary(self):
-        msg = self._pkg_stats()
+    def get_summary(self, publish_work_url, workdir):
+        msg = ''
+
+        if publish_work_url:
+            msg += "AUH finished upgrade batch the result patches/logs can be found at:\n" \
+                   "%s/%s, next are the statistics:\n\n" % (publish_work_url, workdir)
+
+        msg += self._pkg_stats()
         msg += self._maintainer_stats()
 
         return msg
diff --git a/upgradehelper.py b/upgradehelper.py
index d0e1439..0d3f8b2 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -393,7 +393,7 @@ class Updater(object):
             I(" %s: %s" % (pkg_ctx['PN'], e.stdout))
             raise e
 
-    def send_status_mail(self):
+    def send_status_mail(self, statistics_summary):
         if "status_recipients" not in settings:
             E(" Could not send status email, no recipients set!")
             return -1
@@ -402,10 +402,8 @@ class Updater(object):
 
         subject = "[AUH] Upgrade status: " + date.isoformat(date.today())
 
-        msg = self.statistics.get_summary()
-
         if self.statistics.total_attempted:
-            self.email_handler.send_email(to_list, subject, msg)
+            self.email_handler.send_email(to_list, subject, statistics_summary)
         else:
             W("No recipes attempted, not sending status mail!")
 
@@ -611,7 +609,9 @@ class Updater(object):
             self.pkg_upgrade_handler(pkg_ctx)
 
         if attempted_pkgs > 0:
-            statistics_summary = self.statistics.get_summary()
+            statistics_summary = self.statistics.get_summary(
+                    settings.get('publish_work_url', 'no'),
+                    os.path.basename(self.uh_work_dir))
 
             statistics_file = os.path.join(self.uh_work_dir,
                     "statistics_summary")
@@ -621,7 +621,7 @@ class Updater(object):
             I(" %s" % statistics_summary)
 
             if self.opts['send_email']:
-                self.send_status_mail()
+                self.send_status_mail(statistics_summary)
 
 class UniverseUpdater(Updater):
     def __init__(self):
-- 
2.1.4


