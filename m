Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB3B6E00DB5; Thu, 14 Dec 2017 08:35:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A55E00DA8
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726655"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:44 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:58 +0200
Message-Id: <d097906bbd3ad2d4f8fe75f79d907916beed927d.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 18/20] upgradehelper.py: when attempting to commit changes do not discard previous errors
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:45 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index d1f441c..3c41012 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -397,7 +397,6 @@ class Updater(object):
             f.write("\n%s\n" % msg_body)
 
     def commit_changes(self, pkg_ctx):
-        fail = False
         try:
             pkg_ctx['patch_file'] = None
 
@@ -411,8 +410,7 @@ class Updater(object):
             if not pkg_ctx['patch_file']:
                 msg = "Patch file not generated."
                 E(" %s: %s\n %s" % (pkg_ctx['PN'], msg, stdout))
-                pkg_ctx['error'] = Error(msg, stdout)
-                fail = True
+                raise Error(msg, stdout)
             else:
                 I(" %s: Save patch in directory: %s." %
                     (pkg_ctx['PN'], pkg_ctx['workdir']))
@@ -425,12 +423,7 @@ class Updater(object):
                     I(" %s: %s" % (pkg_ctx['PN'], msg))
 
             I(" %s: %s" % (pkg_ctx['PN'], e.stdout))
-
-            pkg_ctx['error'] = Error(msg, e.stdout)
-            fail = True
-
-        if fail:
-            raise pkg_ctx['error']
+            raise e
 
     def send_status_mail(self, statistics_summary):
         if "status_recipients" not in settings:
-- 
2.15.0


