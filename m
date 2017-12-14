Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C314FE00DA5; Thu, 14 Dec 2017 08:35:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19AF9E00D9C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:42 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726645"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:40 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:55 +0200
Message-Id: <d7b20a31f1f43b1c4f1a5b789c58db011278ca38.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 15/20] upgradehelper.py: fixups to the email message template
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:42 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgradehelper.py | 43 +++++++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index d62c9b2..d3cc2c4 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -294,19 +294,20 @@ class Updater(object):
             "to upgrade the recipe to *%s* has %s.\n\n"
 
         license_change_info = \
-            "*LICENSE CHANGED* please review the %s file and update the LICENSE\n" \
-            "variable in the recipe if is needed.\n\n"
+            "*LICENSE CHANGED* please review the %s file, update the LICENSE\n" \
+            "variable in the recipe and summarize the changes in the commit message.\n\n"
 
         next_steps_info = \
-            "The recipe has been successfully compiled for machines %s.\n\n" \
             "Next steps:\n" \
             "    - apply the patch: git am %s\n" \
-            "    - check that required upstream patches have not been commented from the recipe,\n" \
-            "      if upstream patches were commented the reason is specified in the commit message.\n" \
+            "    - check the changes to upstream patches and summarize them in the commit message,\n" \
             "    - compile an image that contains the package\n" \
             "    - perform some basic sanity tests\n" \
             "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
-            "    - send it to the list\n\n" \
+            "    - send it to the appropriate mailing list\n\n" \
+            "Alternatively, if you believe the recipe should not be upgraded at this time,\n" \
+            "you can fill RECIPE_NO_UPDATE_REASON in respective recipe file so that\n" \
+            "automatic upgrades would no longer be attempted.\n\n"
 
         testimage_integration_error = \
             "The recipe *FAILED* in testimage integration. Attached is the log file.\n\n"
@@ -320,7 +321,7 @@ class Updater(object):
             "the next machines %s. Attached is the log file.\n\n" \
 
         mail_footer = \
-            "Attached are the patch, license diff (if change) and bitbake log.\n" \
+            "Please review the attached files for further information and build/update failures.\n" \
             "Any problem please file a bug at https://bugzilla.yoctoproject.org/enter_bug.cgi?product=Automated%20Update%20Handler\n\n" \
             "Regards,\nThe Upgrade Helper"
 
@@ -333,20 +334,30 @@ class Updater(object):
         if "status_recipients" in settings:
             cc_addr = settings["status_recipients"].split()
 
-        subject = "[AUH] " + pkg_ctx['PN'] + ": upgrading to " + pkg_ctx['NPV']
+        newversion = pkg_ctx['NPV'] if not pkg_ctx['NPV'].endswith("new-commits-available") else pkg_ctx['NSRCREV']
+        subject = "[AUH] " + pkg_ctx['PN'] + ": upgrading to " + newversion
         if not pkg_ctx['error']:
             subject += " SUCCEEDED"
         else:
             subject += " FAILED"
-        msg_body = mail_header % (pkg_ctx['PN'], pkg_ctx['NPV'],
+        msg_body = mail_header % (pkg_ctx['PN'], newversion,
                 self._get_status_msg(pkg_ctx['error']))
-        if 'recipe' in pkg_ctx:
-            license_diff_fn = pkg_ctx['recipe'].get_license_diff_file_name()
-            if license_diff_fn:
-                msg_body += license_change_info % license_diff_fn
-        if not pkg_ctx['error']:
-            msg_body += next_steps_info % (', '.join(self.opts['machines']),
-                    os.path.basename(pkg_ctx['patch_file']))
+
+        if pkg_ctx['error'] is not None:
+            msg_body += """Detailed error information:
+
+%s
+%s
+%s
+
+""" %(pkg_ctx['error'].message if pkg_ctx['error'].message else "", pkg_ctx['error'].stdout if pkg_ctx['error'].stdout else "" , pkg_ctx['error'].stderr if pkg_ctx['error'].stderr else "")
+
+        if 'license_diff_fn' in pkg_ctx:
+            license_diff_fn = pkg_ctx['license_diff_fn']
+            msg_body += license_change_info % license_diff_fn
+
+        if 'patch_file' in pkg_ctx and pkg_ctx['patch_file'] != None:
+            msg_body += next_steps_info % (os.path.basename(pkg_ctx['patch_file']))
 
         if self.opts['testimage']:
             if 'integration_error' in pkg_ctx:
-- 
2.15.0


