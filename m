Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 593BCE00A81; Wed, 11 Nov 2015 14:34:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8918E00AF2
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:34:07 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:34:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559687"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:34:03 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:28 -0600
Message-Id: <1447281269-18444-13-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 12/13] upgradehelper.py: Fix indent due to previous commit.
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
X-List-Received-Date: Wed, 11 Nov 2015 22:34:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 109 +++++++++++++++++++++++++++----------------------------
 1 file changed, 53 insertions(+), 56 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index c2bf506..f7ce425 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -353,64 +353,61 @@ class Updater(object):
             self.git.reset_hard(1)
             self.git.clean_untracked()
 
-            mail_header = \
-                "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
-                "of *%s* recipe and this is to let you know that the automatic attempt\n" \
-                "to upgrade the recipe to *%s* has %s.\n\n"
-
-            license_change_info = \
-                "*LICENSE CHANGED* please review the %s file and update the LICENSE\n" \
-                "variable in the recipe if is needed.\n\n"
-
-            next_steps_info = \
-                "The recipe has been successfully compiled for machines %s.\n\n" \
-                "Next steps:\n" \
-                "    - apply the patch: git am %s\n" \
-                "    - check that required patches have not been removed from the recipe\n" \
-                "    - compile an image that contains the package\n" \
-                "    - perform some basic sanity tests\n" \
-                "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
-                "    - send it to the list\n\n" \
-
-            mail_footer = \
-                "Attached are the patch, license diff (if change) and bitbake log.\n" \
-                "Any problem please contact Anibal Limon <anibal.limon@intel.com>.\n\n" \
-                "Regards,\nThe Upgrade Helper"
-
-            if self.maintainer in maintainer_override:
-                to_addr = maintainer_override[self.maintainer]
-            else:
-                to_addr = self.maintainer
-
-            cc_addr = None
-            if "status_recipients" in settings:
-                cc_addr = settings["status_recipients"].split()
-
-            subject = "[AUH] " + self.pn + ": upgrading to " + self.new_ver
-            if err is None:
-                subject += " SUCCEEDED"
-            else:
-                subject += " FAILED"
-
-            msg_body = mail_header % (self.pn, self.new_ver,
-                    self._get_status_msg(err))
-
-            license_diff_fn = self.recipe.get_license_diff_file_name()
-            if license_diff_fn:
-                msg_body += license_change_info % license_diff_fn
-
-            if err is None:
-                msg_body += next_steps_info % (', '.join(self.machines),
-                        os.path.basename(self.patch_file))
+        mail_header = \
+            "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
+            "of *%s* recipe and this is to let you know that the automatic attempt\n" \
+            "to upgrade the recipe to *%s* has %s.\n\n"
+
+        license_change_info = \
+            "*LICENSE CHANGED* please review the %s file and update the LICENSE\n" \
+            "variable in the recipe if is needed.\n\n"
+
+        next_steps_info = \
+            "The recipe has been successfully compiled for machines %s.\n\n" \
+            "Next steps:\n" \
+            "    - apply the patch: git am %s\n" \
+            "    - check that required patches have not been removed from the recipe\n" \
+            "    - compile an image that contains the package\n" \
+            "    - perform some basic sanity tests\n" \
+            "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
+            "    - send it to the list\n\n" \
+
+        mail_footer = \
+            "Attached are the patch, license diff (if change) and bitbake log.\n" \
+            "Any problem please contact Anibal Limon <anibal.limon@intel.com>.\n\n" \
+            "Regards,\nThe Upgrade Helper"
+
+        if self.maintainer in maintainer_override:
+            to_addr = maintainer_override[self.maintainer]
+        else:
+            to_addr = self.maintainer
 
-            msg_body += mail_footer
+        cc_addr = None
+        if "status_recipients" in settings:
+            cc_addr = settings["status_recipients"].split()
 
-            # Add possible attachments to email
-            attachments = []
-            for attachment in os.listdir(self.workdir):
-                attachment_fullpath = os.path.join(self.workdir, attachment)
-                if os.path.isfile(attachment_fullpath):
-                    attachments.append(attachment_fullpath)
+        subject = "[AUH] " + self.pn + ": upgrading to " + self.new_ver
+        if not err:
+            subject += " SUCCEEDED"
+        else:
+            subject += " FAILED"
+        msg_body = mail_header % (self.pn, self.new_ver,
+                self._get_status_msg(err))
+        license_diff_fn = self.recipe.get_license_diff_file_name()
+        if license_diff_fn:
+            msg_body += license_change_info % license_diff_fn
+        if not err:
+            msg_body += next_steps_info % (', '.join(self.machines),
+                    os.path.basename(self.patch_file))
+
+        msg_body += mail_footer
+
+        # Add possible attachments to email
+        attachments = []
+        for attachment in os.listdir(self.workdir):
+            attachment_fullpath = os.path.join(self.workdir, attachment)
+            if os.path.isfile(attachment_fullpath):
+                attachments.append(attachment_fullpath)
 
         # Only send email to Maintainer when recipe upgrade succeed.
         if self.send_email and not err:
-- 
2.1.4


