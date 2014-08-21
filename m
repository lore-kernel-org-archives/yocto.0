Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3555E004DD; Thu, 21 Aug 2014 08:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31235E0034B
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 08:01:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2014 08:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,909,1400050800"; d="scan'208";a="561670780"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by orsmga001.jf.intel.com with ESMTP; 21 Aug 2014 08:00:44 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Aug 2014 18:03:43 +0300
Message-Id: <1408633424-29274-1-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [auh][PATCH v2 1/2] Send emails for a list of recipes
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
X-List-Received-Date: Thu, 21 Aug 2014 15:01:48 -0000

If the --emails or -e command line argument is active and a single
or a list of recipes are given to the script, emails with the results
and patches will be sent to their maintainers or to the overriden
addresses from the configuration file.

Also the status email will be sent in the case a selection of
at least two recipes has been given to the script for upgrading.

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 upgradehelper.py |  199 +++++++++++++++++++++++++++---------------------------
 1 file changed, 98 insertions(+), 101 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index cc90958..9ddfcb5 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -71,6 +71,8 @@ def parse_cmdline():
                         help="disable interactive mode")
     parser.add_argument("-d", "--debug-level", type=int, default=4, choices=range(1, 6),
                         help="set the debug level: CRITICAL=1, ERROR=2, WARNING=3, INFO=4, DEBUG=5")
+    parser.add_argument("-e", "--emails", type=bool, default=False,
+                        help="send emails to recipe maintainers")
     parser.add_argument("-s", "--skip-compilation", action="store_true", default=False,
                         help="do not compile, just change the checksums, remove PR, and commit")
     parser.add_argument("-c", "--config-file", default=None,
@@ -116,7 +118,27 @@ def parse_config_file(config_file):
     return (settings, maintainer_override)
 
 class Updater(object):
-    def __init__(self, auto_mode=False, skip_compilation=False):
+    mail_header = \
+        "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
+        "of *%s* recipe and this is to let you know that the automatic attempt\n" \
+        "to upgrade the recipe to *%s* has %s.\n\n"
+
+    next_steps_info = \
+        "The recipe has been successfully compiled for all major architectures.\n\n" \
+        "Next steps:\n" \
+        "    - apply the patch: git am %s\n" \
+        "    - check that required patches have not been removed from the recipe\n" \
+        "    - compile an image that contains the package\n" \
+        "    - perform some basic sanity tests\n" \
+        "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
+        "    - send it to the list\n\n" \
+
+    mail_footer = \
+        "Attached are the patch and the logs (+ license file diff) in case of failure.\n\n" \
+        "Regards,\nThe Upgrade Helper"
+
+
+    def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
 
         self.uh_dir = get_build_dir() + "/upgrade-helper"
         if not os.path.exists(self.uh_dir):
@@ -125,10 +147,10 @@ class Updater(object):
         self.bb = Bitbake(get_build_dir())
         self.buildhistory = BuildHistory(get_build_dir())
         self.git = None
-
-        self.author = None
+        self.author = "Upgrade Helper <uh@not.set>"
         self.skip_compilation = skip_compilation
         self.interactive = not auto_mode
+        self.send_email = send_email
 
         self.machines = ["qemux86", "qemux86-64", "qemuarm", "qemumips", "qemuppc"]
 
@@ -144,6 +166,7 @@ class Updater(object):
             (self._compile, None)
         ]
 
+        self.email_handler = Email(settings)
         self.statistics = Statistics()
 
 
@@ -307,8 +330,9 @@ class Updater(object):
 
     # this function will be called at the end of each recipe upgrade
     def pkg_upgrade_handler(self, err):
-        if err is not None and self.patch_file is not None:
+        if err and self.patch_file:
             answer = "N"
+            status_msg = str(err)
             if self.interactive:
                 I(" %s: Do you want to keep the changes? (y/N)" % self.pn)
                 answer = sys.stdin.readline().strip().upper()
@@ -317,6 +341,53 @@ class Updater(object):
                 I(" %s: Dropping changes from git ..." % self.pn)
                 self.git.reset_hard(1)
                 self.git.clean_untracked()
+                return
+        elif not err:
+            status_msg = "Succeeded"
+
+        status = type(err).__name__
+
+        # drop last upgrade from git. It's safer this way if the upgrade has
+        # problems and other recipes depend on it. Give the other recipes a
+        # chance...
+        if ("drop_previous_commits" in settings and
+                settings["drop_previous_commits"] == "yes" and
+                err) or (err and self.patch_file):
+            I(" %s: Dropping changes from git ..." % self.pn)
+            self.git.reset_hard(1)
+            self.git.clean_untracked()
+
+        if self.send_email:
+            # don't bother maintainer with mail if the recipe is already up to date
+            if status == "UpgradeNotNeededError":
+                return
+
+            if self.maintainer in maintainer_override:
+                to_addr = maintainer_override[self.maintainer]
+            else:
+                to_addr = self.maintainer
+
+            subject = "[AUH] " + self.pn + ": upgrading to " + self.new_ver
+            if err is None:
+                subject += " SUCCEEDED"
+            else:
+                subject += " FAILED"
+
+            msg_body = self.mail_header % (self.pn, self.new_ver, status_msg)
+
+            if err is None:
+                msg_body += self.next_steps_info % os.path.basename(self.patch_file)
+
+            msg_body += self.mail_footer
+
+            # Add possible attachments to email
+            attachments = []
+            for attachment in os.listdir(self.workdir):
+                attachment_fullpath = os.path.join(self.workdir, attachment)
+                if os.path.isfile(attachment_fullpath):
+                    attachments.append(attachment_fullpath)
+
+            self.email_handler.send_email(to_addr, subject, msg_body, attachments)
 
     def _commit_changes(self):
         try:
@@ -355,6 +426,22 @@ class Updater(object):
 
         return ordered_list
 
+    def send_status_mail(self):
+        if "status_recipients" not in settings:
+            E("Could not send status email, no recipients set!")
+            return -1
+
+        to_list = settings["status_recipients"].split()
+
+        subject = "[AUH] Upgrade status: " + date.isoformat(date.today())
+
+        msg = self.statistics.pkg_stats() + self.statistics.maintainer_stats()
+
+        if self.statistics.total_attempted:
+            self.email_handler.send_email(to_list, subject, msg)
+        else:
+            W("No recipes attempted, not sending status mail!")
+
     def run(self, package_list=None):
 #[lp]        pkgs_to_upgrade = self._order_list(self._get_packages_to_upgrade(package_list))
         pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
@@ -399,32 +486,12 @@ class Updater(object):
 
         if (attempted_pkgs > 1):
             print("%s" % self.statistics.pkg_stats())
+            if self.send_email:
+                self.send_status_mail()
 
-
-class UniverseUpdater(Updater, Email):
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
+class UniverseUpdater(Updater):
     def __init__(self):
-        Updater.__init__(self, True)
-        Email.__init__(self, settings)
-        self.author = "Upgrade Helper <uh@not.set>"
+        Updater.__init__(self, True, True)
         self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
 
         # read history file
@@ -570,84 +637,14 @@ class UniverseUpdater(Updater, Email):
 
     # overriding the base method
     def pkg_upgrade_handler(self, err):
-        if err is None:
-            status_msg = "Succeeded"
-        else:
-            status_msg = str(err)
-
-        status = type(err).__name__
-
-        # drop last upgrade from git. It's safer this way if the upgrade has
-        # problems and other recipes depend on it. Give the other recipes a
-        # chance...
-        if ("drop_previous_commits" in settings and
-                settings["drop_previous_commits"] == "yes" and
-                err is None) or (err is not None and self.patch_file is not None):
-            I(" %s: Dropping changes from git ..." % self.pn)
-            self.git.reset_hard(1)
-            self.git.clean_untracked()
-
-        self.update_history(self.pn, self.new_ver, self.maintainer,
-                            status_msg)
-
-        # don't bother maintainer with mails for unknown errors, unsuported
-        # protocol or if the recipe is already up to date
-        if status == "Error" or status == "UnsupportedProtocolError" or \
-                status == "UpgradeNotNeededError":
-            return
-
-        if self.maintainer in maintainer_override:
-            to_addr = maintainer_override[self.maintainer]
-        else:
-            to_addr = self.maintainer
-
-        subject = "[AUH] " + self.pn + ": upgrading to " + self.new_ver
-        if err is None:
-            subject += " SUCCEEDED"
-        else:
-            subject += " FAILED"
-
-        msg_body = self.mail_header % (self.pn, self.new_ver, status_msg)
-
-        if err is None:
-            msg_body += self.next_steps_info % os.path.basename(self.patch_file)
-
-        msg_body += self.mail_footer
-
-        # Add possible attachments to list
-        attachments = []
-        for attachment in os.listdir(self.workdir):
-            attachment_fullpath = os.path.join(self.workdir, attachment)
-            if os.path.isfile(attachment_fullpath):
-                attachments.append(attachment_fullpath)
-
-        self.send_email(to_addr, subject, msg_body, attachments)
-
-    def send_status_mail(self):
-        if "status_recipients" not in settings:
-            E("Could not send status email, no recipients set!")
-            return -1
-
-        to_list = settings["status_recipients"].split()
-
-        subject = "[AUH] Upgrade status: " + date.isoformat(date.today())
-
-        msg = self.statistics.pkg_stats() + self.statistics.maintainer_stats()
-
-        if self.statistics.total_attempted:
-            self.send_email(to_list, subject, msg)
-        else:
-            W("No recipes attempted, not sending status mail!")
+        super(UniverseUpdater, self).pkg_upgrade_handler(self)
+        self.update_history(self.pn, self.new_ver, self.maintainer, status_msg)
 
     def run(self):
         self.update_master()
-
         self.prepare()
-
         super(UniverseUpdater, self).run()
 
-        self.send_status_mail()
-
 
 if __name__ == "__main__":
     global settings
@@ -675,5 +672,5 @@ if __name__ == "__main__":
             for pkg in args.recipe:
                 pkg_list.append((pkg, None, None))
 
-        updater = Updater(args.auto_mode, args.skip_compilation)
+        updater = Updater(args.auto_mode, args.emails, args.skip_compilation)
         updater.run(pkg_list)
-- 
1.7.9.5


