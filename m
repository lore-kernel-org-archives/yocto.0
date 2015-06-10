Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFCF5E009A1; Wed, 10 Jun 2015 09:30:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62744E009A1
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476966"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:13 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:46 +0000
Message-Id: <1433953732-29963-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 05/11][auh] upgrade_helper.py: Make notice of License change into email.
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When license change it need to be specified into email to maintainers
for review it.

Add get_license_diff_file_name method to recipe class for get it
into email handler and write information about it.

[YOCTO 7186]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 recipe.py        |  7 +++++++
 upgradehelper.py | 53 ++++++++++++++++++++++++++++++-----------------------
 2 files changed, 37 insertions(+), 23 deletions(-)

diff --git a/recipe.py b/recipe.py
index 8ecd2a2..55eb5bf 100644
--- a/recipe.py
+++ b/recipe.py
@@ -394,6 +394,13 @@ class Recipe(object):
 
         return False
 
+    def get_license_diff_file_name(self):
+        file_name = None
+        if not self.license_diff_file is None:
+            file_name = os.path.basename(self.license_diff_file)
+
+        return file_name
+
     def _get_failed_recipes(self, output):
         failed_tasks = dict()
         machine = None
diff --git a/upgradehelper.py b/upgradehelper.py
index 74f9c0a..953f86e 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -124,26 +124,6 @@ def parse_config_file(config_file):
     return (settings, maintainer_override)
 
 class Updater(object):
-    mail_header = \
-        "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
-        "of *%s* recipe and this is to let you know that the automatic attempt\n" \
-        "to upgrade the recipe to *%s* has %s.\n\n"
-
-    next_steps_info = \
-        "The recipe has been successfully compiled for all major architectures.\n\n" \
-        "Next steps:\n" \
-        "    - apply the patch: git am %s\n" \
-        "    - check that required patches have not been removed from the recipe\n" \
-        "    - compile an image that contains the package\n" \
-        "    - perform some basic sanity tests\n" \
-        "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
-        "    - send it to the list\n\n" \
-
-    mail_footer = \
-        "Attached are the patch and the logs (+ license file diff) in case of failure.\n\n" \
-        "Regards,\nThe Upgrade Helper"
-
-
     def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
 
         self.uh_dir = get_build_dir() + "/upgrade-helper"
@@ -375,6 +355,29 @@ class Updater(object):
             self.git.clean_untracked()
 
         if self.send_email:
+            mail_header = \
+                "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
+                "of *%s* recipe and this is to let you know that the automatic attempt\n" \
+                "to upgrade the recipe to *%s* has %s.\n\n"
+
+            license_change_info = \
+                "*LICENSE CHANGED* please review the %s file and update the LICENSE\n" \
+                "variable in the recipe if is needed.\n\n"
+
+            next_steps_info = \
+                "The recipe has been successfully compiled for all major architectures.\n\n" \
+                "Next steps:\n" \
+                "    - apply the patch: git am %s\n" \
+                "    - check that required patches have not been removed from the recipe\n" \
+                "    - compile an image that contains the package\n" \
+                "    - perform some basic sanity tests\n" \
+                "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
+                "    - send it to the list\n\n" \
+
+            mail_footer = \
+                "Attached are the patch, license diff (if change) and bitbake log.\n\n" \
+                "Regards,\nThe Upgrade Helper"
+
             # don't bother maintainer with mail if the recipe is already up to date
             if status == "UpgradeNotNeededError":
                 return
@@ -390,13 +393,17 @@ class Updater(object):
             else:
                 subject += " FAILED"
 
-            msg_body = self.mail_header % (self.pn, self.new_ver,
+            msg_body = mail_header % (self.pn, self.new_ver,
                     self._get_status_msg(err))
 
+            license_diff_fn = self.recipe.get_license_diff_file_name()
+            if license_diff_fn:
+                msg_body += license_change_info % license_diff_fn
+
             if err is None:
-                msg_body += self.next_steps_info % os.path.basename(self.patch_file)
+                msg_body += next_steps_info % os.path.basename(self.patch_file)
 
-            msg_body += self.mail_footer
+            msg_body += mail_footer
 
             # Add possible attachments to email
             attachments = []
-- 
1.8.4.5


