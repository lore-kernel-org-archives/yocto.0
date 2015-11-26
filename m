Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9B74E00A73; Wed, 25 Nov 2015 16:00:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84222E0088C
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:04 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188857"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:02 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:31 -0600
Message-Id: <1448496046-13186-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 02/17] upgradehelper.py: Merge options into a dictionary
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Use one dictionary to keep together the options this enables
possibility to define an interface for steps, see next commit.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 83 ++++++++++++++++++++++++++++----------------------------
 1 file changed, 42 insertions(+), 41 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 128bc07..1c3dcbc 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -126,15 +126,38 @@ def parse_config_file(config_file):
 
 class Updater(object):
     def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
+        build_dir = get_build_dir()
 
-        self.uh_dir = os.path.join(get_build_dir(), "upgrade-helper")
+        self.bb = Bitbake(build_dir)
+
+        try:
+            self.base_env = self.bb.env()
+        except EmptyEnvError as e:
+            import traceback
+            E( " %s\n%s" % (e.message, traceback.format_exc()))
+            E( " Bitbake output:\n%s" % (e.stdout))
+            exit(1)
+
+        self.email_handler = Email(settings)
+        self.statistics = Statistics()
+        self.git = None
+
+        self.opts = {}
+        self.opts['interactive'] = not auto_mode
+        self.opts['send_email'] = send_email
+        self.opts['author'] = "Upgrade Helper <%s>" % \
+                settings.get('from', 'uh@not.set')
+        self.opts['machines'] = settings.get('machines',
+                'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
+        self.opts['skip_compilation'] = skip_compilation
+        self.opts['buildhistory_enabled'] = self._buildhistory_is_enabled()
+
+        self.uh_dir = os.path.join(build_dir, "upgrade-helper")
         if not os.path.exists(self.uh_dir):
             os.mkdir(self.uh_dir)
-
         self.uh_work_dir = os.path.join(self.uh_dir, "work-%s" % \
                 datetime.now().strftime("%Y%m%d%H%M%S"))
         os.mkdir(self.uh_work_dir)
-
         self.uh_recipes_all_dir = os.path.join(self.uh_work_dir, "all")
         os.mkdir(self.uh_recipes_all_dir)
         self.uh_recipes_succeed_dir = os.path.join(self.uh_work_dir, "succeed")
@@ -142,16 +165,6 @@ class Updater(object):
         self.uh_recipes_failed_dir = os.path.join(self.uh_work_dir, "failed")
         os.mkdir(self.uh_recipes_failed_dir)
 
-        self.bb = Bitbake(get_build_dir())
-        self.git = None
-        self.author_email = settings.get('from', 'uh@not.set')
-        self.author = "Upgrade Helper <%s>" % self.author_email
-        self.skip_compilation = skip_compilation
-        self.interactive = not auto_mode
-        self.send_email = send_email
-
-        self.machines = settings.get('machines', 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
-
         self.upgrade_steps = [
             (self._load_env, "Loading environment ..."),
             (self._create_workdir, None),
@@ -167,18 +180,6 @@ class Updater(object):
             (self._buildhistory_diff, None)
         ]
 
-        try:
-            self.base_env = self.bb.env()
-        except EmptyEnvError as e:
-            import traceback
-            E( " %s\n%s" % (e.message, traceback.format_exc()))
-            E( " Bitbake output:\n%s" % (e.stdout))
-            exit(1)
-        self.buildhistory_enabled = self._buildhistory_is_enabled()
-
-        self.email_handler = Email(settings)
-        self.statistics = Statistics()
-
     def _get_status_msg(self, err):
         if err:
             return str(err)
@@ -199,7 +200,7 @@ class Updater(object):
                         " BUILDHISTORY_COMMIT=1 please set.")
                 exit(1)
 
-            if self.skip_compilation:
+            if self.opts['skip_compilation']:
                 W(" Buildhistory disabled because user" \
                         " skip compilation!")
             else:
@@ -228,7 +229,7 @@ class Updater(object):
 
         stdout = self.git.status()
         if stdout != "":
-            if self.interactive:
+            if self.opts['interactive']:
                 W(" %s: git repository has uncommited work which will be dropped! Proceed? (y/N)" % self.pn)
                 answer = sys.stdin.readline().strip().upper()
                 if answer == '' or answer != 'Y':
@@ -261,16 +262,16 @@ class Updater(object):
         else:
             raise UnsupportedProtocolError
 
-        self.recipe = recipe(self.env, self.new_ver, self.interactive, self.workdir,
+        self.recipe = recipe(self.env, self.new_ver, self.opts['interactive'], self.workdir,
                              self.recipe_dir, self.bb, self.git)
 
     def _buildhistory_init(self):
-        if self.buildhistory_enabled == False:
+        if not self.opts['buildhistory_enabled']:
             return
 
         self.buildhistory = BuildHistory(self.bb, self.pn, self.workdir)
-        I(" %s: Initial buildhistory for %s ..." % (self.pn, self.machines))
-        self.buildhistory.init(self.machines)
+        I(" %s: Initial buildhistory for %s ..." % (self.pn, self.opts['machines']))
+        self.buildhistory.init(self.opts['machines'])
 
     def _unpack_original(self):
         self.recipe.unpack()
@@ -289,18 +290,18 @@ class Updater(object):
         self.recipe.fetch()
 
     def _compile(self):
-        if self.skip_compilation:
+        if self.opts['skip_compilation']:
             W(" %s: Compilation was skipped by user choice!")
             return
 
-        for machine in self.machines:
+        for machine in self.opts['machines']:
             I(" %s: compiling for %s ..." % (self.pn, machine))
             self.recipe.compile(machine)
-            if self.buildhistory_enabled == True:
+            if self.opts['buildhistory_enabled']:
                 self.buildhistory.add()
 
     def _buildhistory_diff(self):
-        if self.buildhistory_enabled == False:
+        if not self.opts['buildhistory_enabled']:
             return
 
         I(" %s: Checking buildhistory ..." % self.pn)
@@ -315,7 +316,7 @@ class Updater(object):
 
     # this function will be called at the end of each recipe upgrade
     def pkg_upgrade_handler(self, err):
-        if err and self.patch_file and self.interactive:
+        if err and self.patch_file and self.opts['interactive']:
             answer = "N"
             I(" %s: Do you want to keep the changes? (y/N)" % self.pn)
             answer = sys.stdin.readline().strip().upper()
@@ -380,7 +381,7 @@ class Updater(object):
         if license_diff_fn:
             msg_body += license_change_info % license_diff_fn
         if not err:
-            msg_body += next_steps_info % (', '.join(self.machines),
+            msg_body += next_steps_info % (', '.join(self.opts['machines']),
                     os.path.basename(self.patch_file))
 
         msg_body += mail_footer
@@ -393,7 +394,7 @@ class Updater(object):
                 attachments.append(attachment_fullpath)
 
         # Only send email to Maintainer when recipe upgrade succeed.
-        if self.send_email and not err:
+        if self.opts['send_email'] and not err:
             self.email_handler.send_email(to_addr, subject, msg_body, attachments, cc_addr=cc_addr)
 
         # Preserve email for review purposes.
@@ -415,7 +416,7 @@ class Updater(object):
             self.patch_file = None
             if self.recipe is not None:
                 I(" %s: Auto commit changes ..." % self.pn)
-                self.git.commit(self.recipe.commit_msg, self.author)
+                self.git.commit(self.recipe.commit_msg, self.opts['author'])
                 I(" %s: Save patch in %s." % (self.pn, self.workdir))
                 stdout = self.git.create_patch(self.workdir)
                 self.patch_file = stdout.strip()
@@ -525,7 +526,7 @@ class Updater(object):
 
     def run(self, package_list=None):
         I(" Building gcc runtimes ...")
-        for machine in self.machines:
+        for machine in self.opts['machines']:
             I("  building gcc runtime for %s" % machine)
             self.bb.complete("gcc-runtime", machine)
 
@@ -595,7 +596,7 @@ class Updater(object):
 
             I("%s" % statistics_summary)
 
-            if self.send_email:
+            if self.opts['send_email']:
                 self.send_status_mail()
 
 class UniverseUpdater(Updater):
-- 
2.1.4


