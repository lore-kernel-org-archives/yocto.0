Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3B80E006D8; Thu, 19 Jan 2017 07:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation
	marks
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86692E003E4
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:46:26 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 19 Jan 2017 07:46:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="924402866"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by orsmga003.jf.intel.com with ESMTP; 19 Jan 2017 07:46:25 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 09:49:10 -0600
Message-Id: <1484840950-6292-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1484840950-6292-1-git-send-email-anibal.limon@linux.intel.com>
References: <1484840950-6292-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, joshua.g.lock@intel.com
Subject: [[PATCHv2][yocto-autobuilder] 2/2] buildset-config.yocto-qa: Add nightly-oe-build-perf-test buildset
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
X-List-Received-Date: Thu, 19 Jan 2017 15:46:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Monserrat Sedeno <monserratx.sedeno.bustos.intel.com>

The new nightly-oe-build-perf-test buildset executes the
build-perf-test-wrapper.sh into a worker and publish the results to
specified folder by AB config.

When the performance script finish it sends an notifcation email to
yocto alias users, the worker machine needs to configure the email
addresses for yocto alias.

[YOCTO #9377]

Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos.intel.com>
Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../nightly-oe-build-perf-test.conf                | 28 ++++++++
 config/autobuilder.conf.example                    |  8 +++
 .../autobuilder/buildsteps/RunOeBuildPerfTest.py   | 78 ++++++++++++++++++++++
 .../autobuilder/buildsteps/SendOePerfEmail.py      | 64 ++++++++++++++++++
 .../buildsteps/TarballOeBuildPerfTest.py           | 33 +++++++++
 lib/python2.7/site-packages/autobuilder/config.py  |  2 +-
 6 files changed, 212 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.yocto-qa/nightly-oe-build-perf-test.conf
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/RunOeBuildPerfTest.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/SendOePerfEmail.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/TarballOeBuildPerfTest.py

diff --git a/buildset-config.yocto-qa/nightly-oe-build-perf-test.conf b/buildset-config.yocto-qa/nightly-oe-build-perf-test.conf
new file mode 100644
index 0000000..999036d
--- /dev/null
+++ b/buildset-config.yocto-qa/nightly-oe-build-perf-test.conf
@@ -0,0 +1,28 @@
+[nightly-oe-build-perf-test]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}}]
+props: [{'machine':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['qemux86', 'qemuarm', 'qemumips', 'qemuppc', 'qemux86-64', 'qemuarm64', 'qemumips64'],
+                       'name': 'machine',
+                       'label':'<hr>Selects machine for performance measurement.'}},
+        {'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'buildhistory' : True,
+                            'atextappend' : 'CONNECTIVITY_CHECK_URIS = ""'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
+        {'RunOeBuildPerfTest': {}},
+        {'TarballOeBuildPerfTest': {}},
+        {'SendOePerfEmail': {}},
+        ]
diff --git a/config/autobuilder.conf.example b/config/autobuilder.conf.example
index 2e42013..2ee11e6 100644
--- a/config/autobuilder.conf.example
+++ b/config/autobuilder.conf.example
@@ -87,3 +87,11 @@ QA_MAIL_SIG = "Multiline\nSig\nLine"
 
 [Buildlogger]
 BUILDLOG_TO_WIKI = False
+
+[Performance]
+PERFORMANCE_PUBLISH_DIR = "/tmp/yocto-autobuilder/performance"
+PERFORMANCE_SEND_EMAIL = "False"
+PERFORMANCE_MAIL_TO = "root@localhost otherperson@localhost"
+PERFORMANCE_MAIL_CC = "buildcc@localhost"
+PERFORMANCE_MAIL_BCC = "buildbcc@localhost"
+PERFORMANCE_MAIL_SIG = "Multiline\nSig\nLine"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeBuildPerfTest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeBuildPerfTest.py
new file mode 100644
index 0000000..dcc17dd
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeBuildPerfTest.py
@@ -0,0 +1,78 @@
+import os, datetime, subprocess
+from buildbot.steps.shell import ShellCommand
+from buildbot.process.buildstep import LogLineObserver
+
+from autobuilder.config import PERFORMANCE_PUBLISH_DIR
+
+class OeBuildPerfTestLogLineObserver(LogLineObserver):
+    """
+        Scans lines in order to save the oe-buil-perf-test command
+        output.
+    """
+
+    def _handleLine(self, line):
+        if not hasattr(self.step, 'oe_build_perf_test_output'):
+            self.step.oe_build_perf_test_output = ""
+            self.step.oe_build_perf_test_match = False
+
+        # Search for ### Shell environment set up for builds. ### to start
+        # capturing.
+        if not self.step.oe_build_perf_test_match and line.startswith('###'):
+            self.step.oe_build_perf_test_match = True
+
+        if self.step.oe_build_perf_test_match:
+            self.step.oe_build_perf_test_output += line + '\n'
+
+    def outLineReceived(self, line):
+        self._handleLine(line)
+
+    def errLineReceived(self, line):
+        self._handleLine(line)
+
+class RunOeBuildPerfTest(ShellCommand):
+    flunkOnFailure = True
+    name = "Running oe-build-perf-test"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.tests = None
+        self.factory = factory
+        for k, v in argdict.iteritems():
+                setattr(self, k, v)
+        self.description = "Running oe-build-perf-test"
+        self.timeout = 100000
+        kwargs['timeout']=self.timeout
+        ShellCommand.__init__(self, **kwargs)
+
+        self.stdio_observer = OeBuildPerfTestLogLineObserver()
+        self.addLogObserver('stdio', self.stdio_observer)
+
+    def start(self):
+        branch = self.getProperty("branch")
+        revision = self.getProperty("got_revision")[0:10] # small rev
+        machine = self.getProperty("MACHINE")
+
+        # for oe-build-perf-test
+        timestamp = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
+        results_basename =  'results-%s-%s-%s' % (branch, revision, timestamp)
+        results_dir = os.path.join(PERFORMANCE_PUBLISH_DIR, results_basename)
+        lock_file = 'oe-build-perf.lock'
+        globalres_log = os.path.join(PERFORMANCE_PUBLISH_DIR, 'globalres.log')
+        git_dir = os.path.join(PERFORMANCE_PUBLISH_DIR, 'git')
+        
+        self.setProperty("oe_perf_globalres_log", globalres_log, "RunOeBuildPerfTest")
+        self.setProperty("oe_perf_results_dir", results_dir, "RunOeBuildPerfTest")
+
+        self.command = "mkdir -p %s; " % (results_dir)
+
+        self.command += ". ./oe-init-build-env; " 
+        self.command += """ oe-build-perf-test --out-dir "%s" \
+--globalres-file "%s" --lock-file "%s" --commit-results "%s" --commit-results-branch "{tester_host}/{git_branch}/%s" \
+--commit-results-tag "{tester_host}/{git_branch}/%s/{git_commit_count}-g{git_commit}/{tag_num}"
+""" % (results_dir, globalres_log, lock_file, git_dir, machine, machine)
+
+
+        ShellCommand.start(self)
+
+    def commandComplete(self, cmd):
+        self.setProperty("oe_build_perf_test_output",
+                self.oe_build_perf_test_output, "RunOeBuildPerfTest")
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SendOePerfEmail.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SendOePerfEmail.py
new file mode 100644
index 0000000..6054397
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SendOePerfEmail.py
@@ -0,0 +1,64 @@
+from buildbot.steps.shell import ShellCommand
+from buildbot.process.buildstep import SKIPPED
+import os, subprocess
+
+class SendOePerfEmail(ShellCommand):
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "SendOePerfEmail"
+    description = ["Sending Performance Email"]
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        description = ["Sending alert emails"]
+        for k, v in argdict.iteritems():
+            setattr(self, k, v)
+        # Timeout needs to be passed to LoggingBuildStep as a kwarg
+        self.timeout = 100000
+        kwargs['timeout']=self.timeout
+        ShellCommand.__init__(self, **kwargs)
+
+    def start(self):
+        if not os.environ.get("PERFORMANCE_SEND_EMAIL") == "True":
+            return SKIPPED
+
+        branch = self.getProperty("branch")
+        oe_build_perf_test_output = self.getProperty("oe_build_perf_test_output")
+        mailto = ""
+        mailcc = ""
+        mailbcc = ""
+        mailsig = ""
+        if os.environ.get('PERFORMANCE_MAIL_TO'):
+            mailto = os.environ.get('PERFORMANCE_MAIL_TO')
+        if os.environ.get('PERFORMANCE_MAIL_CC'):
+            mailcc = os.environ.get('PERFORMANCE_MAIL_CC')
+        if os.environ.get('PERFORMANCE_MAIL_BCC'):
+            mailbcc = os.environ.get('PERFORMANCE_MAIL_BCC')
+        if os.environ.get('PERFORMANCE_MAIL_SIG'):
+            mailsig = os.environ.get('PERFORMANCE_MAIL_SIG')
+
+        archive_dir = self.getProperty("oe_perf_archive_dir")
+        globalres_log = self.getProperty("oe_perf_globalres_log")
+        email_base = '''
+Running on %s \n
+
+%s
+
+-----------------\n\n Global results file \n\n""$read_file"" \n 
+-----------------\n\n Archive results in %s \n''' % (oe_build_perf_test_output,
+        os.uname()[1], archive_dir)
+
+        mailsubject = "Build Performance Report - %s branch" % (branch)
+        email_header = ""
+        if mailto is not None and mailto is not "":
+            email_header += "To: " + mailto + "\n"
+        if mailcc is not None and mailcc is not "":
+            email_header += "Cc: " + mailcc + "\n"
+        if mailbcc is not None and mailbcc is not "":
+            email_header += "Bcc: " + mailbcc + "\n"
+        
+        email_header += "Subject: " + mailsubject + "\n"
+        mailcmd = 'read_file=`cat %s`;' %(globalres_log)
+        mailcmd += ' echo "' + email_header + '\n' + email_base + '\n' + mailsig + '"  | sendmail -t;'
+        self.command = mailcmd
+
+        ShellCommand.start(self)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/TarballOeBuildPerfTest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/TarballOeBuildPerfTest.py
new file mode 100644
index 0000000..ca60c93
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/TarballOeBuildPerfTest.py
@@ -0,0 +1,33 @@
+import os, datetime, subprocess
+from buildbot.steps.shell import ShellCommand
+from autobuilder.config import PERFORMANCE_PUBLISH_DIR
+
+class TarballOeBuildPerfTest(ShellCommand):
+    flunkOnFailure = True
+    name = "Tarball oe-build-perf-test results"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.tests = None
+        self.factory = factory
+        for k, v in argdict.iteritems():
+                setattr(self, k, v)
+        self.description = "Running tarball oe-build-perf-test results"
+        self.timeout = 100000
+        kwargs['timeout']=self.timeout
+        ShellCommand.__init__(self, **kwargs)
+  
+    def start(self):
+        results_dir = self.getProperty("oe_perf_results_dir")
+
+        results_basename = os.path.basename(results_dir)
+        archive_dir = os.path.join(PERFORMANCE_PUBLISH_DIR, 'archives')
+        archive_file = os.path.join(archive_dir, results_basename + '.tar.gz')
+
+        self.setProperty("oe_perf_archive_dir", archive_dir, "TarballOeBuildPerfTest")
+        self.setProperty("oe_perf_archive_file", archive_dir, "TarballOeBuildPerfTest")
+
+        self.command = "mkdir -p %s; " % archive_dir
+        self.command += "tar -czf \"%s\" \"%s\"" % (archive_file, results_dir)
+                
+        ShellCommand.start(self)
+
diff --git a/lib/python2.7/site-packages/autobuilder/config.py b/lib/python2.7/site-packages/autobuilder/config.py
index eced0c7..9d945b1 100644
--- a/lib/python2.7/site-packages/autobuilder/config.py
+++ b/lib/python2.7/site-packages/autobuilder/config.py
@@ -22,4 +22,4 @@ X8664TC_PUBLISH_DIR = os.environ.get("X8664TC_PUBLISH_DIR")
 RPM_PUBLISH_DIR = os.environ.get("RPM_PUBLISH_DIR")
 IPK_PUBLISH_DIR = os.environ.get("IPK_PUBLISH_DIR")
 DEB_PUBLISH_DIR = os.environ.get("DEB_PUBLISH_DIR")
-
+PERFORMANCE_PUBLISH_DIR = os.environ.get("PERFORMANCE_PUBLISH_DIR")
-- 
2.1.4


