Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BABFDE00970; Tue,  8 Aug 2017 06:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ED48E00349
	for <yocto@yoctoproject.org>; Tue,  8 Aug 2017 06:59:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Aug 2017 06:59:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,343,1498546800"; d="scan'208";a="1160523654"
Received: from unknown (HELO jalamego-mobl3.zpn.intel.com) ([10.219.128.130])
	by orsmga001.jf.intel.com with ESMTP; 08 Aug 2017 06:59:37 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  8 Aug 2017 08:59:34 -0500
Message-Id: <1502200774-4906-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][RFC][PATCH] tools/test-series: automate test builds for series
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
X-List-Received-Date: Tue, 08 Aug 2017 13:59:40 -0000

Testing patch series' for appropriate integration and further
build against a branch requires several manual steps, providing
a poor code maintainer experience and increasing overall patch
integration workflow.

This change adds a script to automate downloading one or more series
from patchwork, applying them to a test branch, uploading the test
branch to a repository and starting a build at a Yocto Autobuilder.
The build results can later be queried at the autobuilder api using
the "reason" field, where the script includes the tested series' ID
and the date when it was started as unique identifier.

[YOCTO #8714]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 tools/test-series | 530 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 530 insertions(+)
 create mode 100755 tools/test-series

diff --git a/tools/test-series b/tools/test-series
new file mode 100755
index 0000000..acecf36
--- /dev/null
+++ b/tools/test-series
@@ -0,0 +1,530 @@
+#!/usr/bin/env python3
+
+# Open Embedded Patch series test build script
+#
+# Copyright (C) 2015-2017 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+#
+# Requirements:
+#   - Using pip:
+#
+#     $ pip install beautifulsoup4 lxml
+#
+# Setup:
+#
+# - Path to a local git repository directory that can
+#   push to a remote repository must be provided.
+# - if no local "git patchwork.default.url" is set,
+#   http://patchwork.openembedded.org will be used
+
+import argparse
+import signal
+import git
+import os
+import sys
+import subprocess
+from datetime import datetime
+import getpass
+import requests
+
+PIPE = subprocess.PIPE
+sourceDir = os.path.dirname(os.path.realpath(__file__))
+pwDir = "/home/jose/repos/patchwork/patchwork"
+defaultAbDir = "/home/jose/repos/yocto-autobuilder"
+defaultBuilder = "nightly-oecore"
+defaultAbUrl = "http://yoctogdc.amr.corp.intel.com:8010"
+defaultRepoName = "origin"
+defaultBaseBranch = "master"
+defaultTestBranch = "test-series" + datetime.now().strftime('-%Y%b%d-%H%M%S')
+logFile = "%s/test-series.log" % sourceDir
+defaultAbUser = getpass.getuser()
+defaultAbPassword = "passpass"
+# keepBranch value determines if created branches are keep when exiting script
+keepBranch = True
+# list of branches created by this script
+testBranches = []
+# list of series to be applied
+multiSeries = []
+# push branch to repoUrl
+push = True
+
+
+class TestSeriesAPI(object):
+
+    def __init__(self, cmd):
+        self.cmd = cmd
+
+    def _checkout_to_branch(self, branch):
+        process = subprocess.Popen(['git', 'checkout', branch],
+                                   stdout=PIPE, stderr=PIPE)
+        stdoutput, stderroutput = process.communicate()
+        if stderroutput:
+            emsg = stderroutput.decode('utf-8').strip()
+            if 'Already' in emsg or 'Switched' in emsg:
+                print("I: %s" % emsg)
+                return 0
+            elif 'error' in emsg or 'fatal:'in emsg:
+                print("E: %s" % emsg)
+                return 1
+        if stdoutput:
+            print("I: %s" % stdoutput.decode('utf-8').strip())
+            return 0
+
+    def _get_current_branch(self):
+        process = subprocess.Popen(['git', 'symbolic-ref', 'HEAD'],
+                                   stdout=PIPE, stderr=PIPE)
+        stdoutput, stderroutput = process.communicate()
+        stdoutput = stdoutput.decode('utf-8').strip()
+        if 'refs/heads/' in stdoutput:
+            return stdoutput[11:]
+        else:
+            print("E: Failed to get current branch name.")
+            return None
+
+    def _name_test_branch(self, series):
+        if not series:
+            name = defaultTestBranch
+            print("I: No series (-s) and no test-branch name (-tb) found. \
+Using automatically generated name \"%s\"." % name)
+        else:
+            name = "test_" + "-".join([str(serie) for serie in series]) + \
+                datetime.now().strftime('-%Y%b%d-%H%M%S')
+            print("I: no test-branch name provided (-tb). Using the \
+automatically generated \"%s\"." % name)
+        return name
+
+    def update_branch(self, branch):
+        if not branch:
+            print("I: target branch (--base-branch) not found. Atempting to \
+update current branch.")
+            branch = self._get_current_branch()
+        if not branch:
+            return 1
+        prereq = self._checkout_to_branch(branch)
+        if prereq != 0:
+            print("E: Failed to checkout to branch \"%s\" to be updated. \
+Aborting" % branch)
+            return 1
+        emsg = ''
+        while 'error:' not in emsg and 'fatal:' not in emsg:
+            process = subprocess.Popen(['git', 'fetch'],
+                                       stdout=PIPE, stderr=PIPE)
+            stdoutput, stderroutput = process.communicate()
+            emsg = stderroutput.decode('utf-8').strip()
+            if stdoutput:
+                print("I: %s" % stdoutput.decode('utf-8').strip())
+            print("E: %s" % emsg) if stderroutput else None
+            process = subprocess.Popen(['git', 'pull'],
+                                       stdout=PIPE, stderr=PIPE)
+            stdoutput, stderroutput = process.communicate()
+            emsg = stderroutput.decode('utf-8').strip()
+            if stdoutput:
+                print("I: %s" % stdoutput.decode('utf-8').strip())
+            print("E: %s" % emsg) if stderroutput else None
+            break
+        else:
+            print("E: Failed to update branch \"%s\": %s."
+                  % (branch, emsg))
+            return 1
+        print("I: Successfully updated branch \"%s\"." % branch)
+        return 0
+
+    def create_branch(self, baseBranch, testBranch, updateBaseBranch):
+        if not baseBranch:
+            print("I: base-branch not provided. Attempting to use \"%s\" as \
+base-branch for new test-branch." % defaultBaseBranch)
+        if updateBaseBranch:
+            prereq = self.update_branch(baseBranch)
+            if prereq == 1:
+                print("E: Failed to update branch \"%s\" before applying a \
+series." % baseBranch)
+                return 1
+        prereq = self._checkout_to_branch(baseBranch)
+        if prereq != 0:
+            print("E: Failed to checkout to \"%s\" before creating \
+test-branch \"%s\". Aborting." % (baseBranch, testBranch))
+            return 1
+        if not testBranch:
+            testBranch = "series-test" + datetime.now().strftime(
+                '-%Y%b%d-%H%M%S')
+            print("I: test-branch name not found. Attempting to use generic \
+name \"%s\"." % testBranch)
+        print("I: Attempting to create branch \"%s\" from \"%s\"."
+              % (testBranch, baseBranch))
+        process = subprocess.Popen(
+            ['git', 'checkout', '-b', "%s" % testBranch],
+            stdout=PIPE, stderr=PIPE)
+        stdoutput, stderroutput = process.communicate()
+        if stderroutput:
+            emsg = stderroutput.decode('utf-8').strip()
+            if 'Switched' in emsg:
+                print("I: %s" % emsg)
+                return testBranch
+            else:
+                print("E: %s. Failed to create test-branch. Aborting." %
+                      stderroutput.decode('utf-8').strip())
+                return 1
+
+    def apply_series(self, testBranch, series, testSuccessOnly, pwUrl,
+                     baseBranch, updateBaseBranch):
+        if not series:
+            print("E: At least one series ID must be provided, for example: \
+\"-s 1234 -s 1235\". Aborting.")
+            return 1
+        if not testBranch:
+            testBranch = self._name_test_branch(series)
+            print("I: target branch (--test-branch) not found. Creating \
+test-branch \"%s\"." % testBranch)
+            self.create_branch(baseBranch, testBranch, updateBaseBranch)
+        prereq = self._checkout_to_branch(testBranch)
+        if prereq != 0:
+            print("E: Failed to checkout to branch \"%s\" before applying a \
+series: %s. Aborting." % (testBranch, series))
+            return 1
+        if testSuccessOnly:
+            if not pwUrl:
+                process = subprocess.Popen(
+                    ['git', 'config', 'patchwork.default.url'],
+                    stdout=PIPE, stderr=PIPE)
+                stdoutput, stderroutput = process.communicate()
+                if stderroutput:
+                    print("E: %s" % stderroutput.decode('utf-8').strip())
+                    return 1
+                pwUrl = stdoutput.decode('utf-8').strip()
+        for serie in series:
+            if testSuccessOnly:
+                # skip series if test_state in patchwork is not "success"
+                if requests.get(
+                     '%s/api/1.0/series/%d/' % (pwUrl, serie)
+                     ).json().get("test_state") != "success":
+                    print("I: Skipping series \"%d\" due to non \"success\" \
+test-state in patchwork." % serie)
+                    continue
+            process = subprocess.Popen(
+                ['%s/../git-pw/git-pw' % pwDir, 'apply', '%s' % serie],
+                stdout=PIPE, stderr=PIPE)
+            stdoutput, stderroutput = process.communicate()
+            if stderroutput:
+                print("E: %s" % stderroutput.decode('utf-8').strip())
+                return 1
+            print("I: %s." % stdoutput.decode('utf-8').strip())
+        return 0
+
+    def push_branch(self, branch, repo, no_push):
+        if no_push:
+            print("I: push-branch for \"%s\" skipped due to not-push (-np) \
+option present." % branch)
+            return 0
+        else:
+            if not branch:
+                print("I: Test-branch (-tb) not provided. Attempting to push \
+current branch.")
+            branch = self._get_current_branch()
+            if not branch:
+                print("E: Failed to get current branch name to be pushed. \
+Aborting.")
+                return 1
+            else:
+                prereq = self._checkout_to_branch(branch)
+                if prereq != 0:
+                    print("E: Failed to checkout to branch \"%s\" to push. \
+Aborting." % branch)
+                    return 1
+        if not repo:
+            print("I: repo-name (-r) not provided. Attempting to push to \
+default repo \"%s\"." % defaultRepoName)
+            repo = defaultRepoName
+        process = subprocess.Popen(['git', 'push', '--set-upstream', repo,
+                                    branch], stdout=PIPE, stderr=PIPE)
+        stdoutput, stderroutput = process.communicate()
+        emsg = stderroutput.decode('utf-8').strip()
+        if emsg:
+            if 'error:' in emsg or 'fatal:' in emsg:
+                print("E: %s" % stderroutput.decode('utf-8').strip())
+                return 1
+            else:
+                print("I: %s" % emsg)
+        if stdoutput:
+            print("I: %s." % stdoutput.decode('utf-8').strip())
+            return 0
+        return 0
+
+    def force_build(self, abDir, abUrl, abUser, abPassword, builder,
+                    testBranch, repoUrl, repo, no_build):
+        if no_build:
+            print("I: force build skipped due to no-build (-nb) option \
+present.")
+            return 0
+        if not abDir:
+            print("I: local autobuilder directory (-ad) not provided. \
+Attempting to use default dir \"%s\"." % defaultAbDir)
+            abDir = defaultAbDir
+        if not abUrl:
+            print("I: remote autobuilder url (-au) not provided. \
+Attempting to use default url \"%s\"." % defaultAbUrl)
+            abUrl = defaultAbUrl
+        if not abUser:
+            print("I: remote autobuilder username (-u) not provided. \
+Attempting to use default username \"%s\"." % defaultAbUser)
+            abUser = defaultAbUser
+        if not abPassword:
+            print("I: remote autobuilder password (-p) not provided. \
+Attempting to use default password." % defaultAbPassword)
+        if not builder:
+            print("I: remote autobuilder builder name (-b) not provided. \
+Attempting to use default builder \"%s\"." % defaultBuilder)
+        if not repoUrl:
+            if not repo:
+                repo = defaultRepoName
+            process = subprocess.Popen(['git', 'config', '--get',
+                                        'remote.%s.url' % defaultRepoName],
+                                       stdout=PIPE, stderr=PIPE)
+            stdoutput, stderroutput = process.communicate()
+            emsg = stderroutput.decode('utf-8').strip()
+            if emsg:
+                if 'error:' in emsg or 'fatal:' in emsg:
+                    print('E: %s' % emsg)
+                    return 1
+            if stdoutput:
+                repoUrl = stdoutput.decode('utf-8').strip()
+            print("I: remote repository url (-ru) not provided. Attempting \
+to use url from git remote config \"%s\"" % repoUrl)
+        if not testBranch:
+            testBranch = self._get_current_branch()
+            print("I: test branch to build from not provided. Attempting to \
+start a build using current branch \"%s\"" % testBranch)
+            if not testBranch:
+                return 1
+        process = subprocess.Popen(
+                ['%s/bin/forcebuild.py' % abDir, '-s', '%s' % abUrl, '-u',
+                 '%s' % abUser, '-p', '%s' % abPassword, '--force-build',
+                 '%s' % builder, '-o',
+                 '\"{\'branch_oecore\':\'%s\', \'repo_oecore\':\'%s\',\
+                  \'reason\':\'%s\'}\"' %
+                 (testBranch, repoUrl, testBranch)], stdout=PIPE, stderr=PIPE)
+        stdoutput, stderroutput = process.communicate()
+        if stderroutput:
+                print("E: %s" % stderroutput.decode('utf-8').strip())
+                return 1
+        if stdoutput:
+            print("I: %s." % stdoutput.decode('utf-8').strip())
+        print("I: force-build command completed for branch \"%s\" at \
+the autobuilder in %s. You may later find resutls by including the branch \
+name in your query." (testBranch, abUrl))
+        return 0
+
+    def full_test(self, baseBranch, testBranch, updateBaseBranch, series,
+                  testSuccessOnly, pwUrl, repo, no_push, abDir, abUrl, abUser,
+                  abPassword, builder, repoUrl, no_build):
+
+        if not testBranch:
+            testBranch = self._name_test_branch(series)
+        step = self.create_branch(baseBranch, testBranch, updateBaseBranch)
+        if step != 1:
+            testBranch = step
+        else:
+            return step
+        step = self.apply_series(testBranch, series, testSuccessOnly,
+                                 pwUrl, baseBranch, updateBaseBranch)
+        if step == 1:
+            return step
+        step = self.push_branch(testBranch, repo, no_push)
+        if step == 1:
+            return step
+        step = self.force_build(abDir, abUrl, abUser, abPassword, builder,
+                                testBranch, repoUrl, repo, no_build)
+        if step == 1:
+            return step
+        else:
+            return 0
+
+
+def main():
+    parser = argparse.ArgumentParser(
+        description="Open Embedded Series test build script.\n\nAvailable \
+commands are:\n  update-branch  update provided base-branch (-bb)\n\
+  create-branch  create test-branch (-tb) from base-branch (-bb)\n\
+  apply-series   apply provided series (-s) on top of test-branch (-tb)\n\
+  push-branch    push provided branch (-tb) to provided autobuilder (-ab)\n",
+        add_help=False, formatter_class=argparse.RawDescriptionHelpFormatter)
+    parser.add_argument('command', help='Action to be executed.')
+    parser.add_argument('-bb', '--base-branch', action='store', help='Name of \
+the branch from where a new branch will be based on. Default: \"master\".')
+    parser.add_argument('-tb', '--test-branch', action='store', help='Provide \
+a custom name for the test branch. Default: \"s-test-\" + date-time.')
+    parser.add_argument('-s', '--series', action='append', help='Series to be \
+merged in top of base-branch (-bb).', type=int)
+    parser.add_argument('-ub', '--update-basebranch', action='store_true',
+                        help='Update the base-branch (-bb) before any other \
+operation. Default: True')
+    parser.add_argument('-pu', '--patchwork-url', action='store', help='Provide\
+ the patchwork instance\'s url. Default: get it from git config')
+    parser.add_argument('-ts', '--test-success-only', action='store_true',
+                        help='Test only those series that have \"success\" as \
+test_state in patchwork. Default: True.')
+    parser.add_argument('-ru', '--repo-url', action='store',
+                        help="Url to remote repository to get branches to \
+build. Default: remote.origin.url from git config")
+    parser.add_argument('-r', '--repo-name', action='store',
+                        help="Name of remote repository to push branches. \
+Default: origin.")
+    parser.add_argument('-np', '--no-push', action='store_true',
+                        help="Do not push the test branch to remote repo.")
+    parser.add_argument('-nb', '--no-build', action='store_true',
+                        help="Do not start a build from the test branch.")
+    parser.add_argument('-ad', '--autobuilder-dir', action='store',
+                        help="Provide the local autobuilder directory. \
+Default: %s" % defaultAbDir)
+    parser.add_argument('-au', '--autobuilder-url', action='store',
+                        help="Provide the remote autobuilder url. Default: \
+%s" % defaultAbUrl)
+    parser.add_argument('-u', '--autobuilder-username', action='store',
+                        help="Provide the remote autobuilder username. Default: \
+%s" % defaultAbUser)
+    parser.add_argument('-p', '--autobuilder-password', action='store',
+                        help="Provide the remote autobuilder password. Default: \
+%s" % defaultAbPassword)
+    parser.add_argument('-b', '--builder', action='store',
+                        help="Provide the remote autobuilder builder name. \
+Default: %s" % defaultBuilder)
+    parser.add_argument(
+        '-h', '--help', action='help', default=argparse.SUPPRESS,
+        help='show this help message and exit')
+
+    args = parser.parse_args()
+    api = TestSeriesAPI(args)
+
+    # set variables to default values if not provided
+    if args.base_branch:
+        baseBranch = args.base_branch
+    else:
+        # global defaultBaseBranch
+        baseBranch = defaultBaseBranch
+
+    if args.test_branch:
+        testBranch = args.test_branch
+    else:
+        testBranch = None
+
+    if args.patchwork_url:
+        pwUrl = args.patchwork_url
+    else:
+        pwUrl = None
+
+    if args.update_basebranch:
+        updateBaseBranch = args.update_basebranch
+    else:
+        updateBaseBranch = False
+
+    if args.test_success_only:
+        testSuccessOnly = args.test_success_only
+    else:
+        testSuccessOnly = True
+
+    if args.autobuilder_dir:
+        abDir = args.autobuilder_dir
+    else:
+        abDir = None
+
+    if args.autobuilder_url:
+            abUrl = args.autobuilder_url
+    else:
+        abUrl = None
+
+    if args.autobuilder_username:
+        abUser = args.autobuilder_username
+    else:
+        abUser = None
+
+    if args.autobuilder_password:
+        abPassword = args.autobuilder_password
+    else:
+        abPassword = None
+
+    if args.builder:
+        builder = args.builder
+    else:
+        builder = None
+
+    if args.series:
+        series = args.series
+    else:
+        series = None
+
+    if args.repo_name:
+        repo = args.repo_name
+    else:
+        repo = None
+
+    if args.no_push:
+        no_push = args.no_push
+    else:
+        no_push = False
+
+    if args.no_build:
+        no_build = args.no_build
+    else:
+        no_build = False
+
+    if args.repo_url:
+        repoUrl = args.repo_url
+    else:
+        repoUrl = None
+
+    if args.command == 'update-branch':
+        return api.update_branch(baseBranch)
+
+    elif args.command == 'create-branch':
+        created = api.create_branch(baseBranch, testBranch,
+                                    updateBaseBranch)
+        if created != 1:
+            return 0
+        else:
+            return created
+
+    elif args.command == 'apply-series':
+        return api.apply_series(testBranch, series,
+                                testSuccessOnly, pwUrl, baseBranch,
+                                updateBaseBranch)
+
+    elif args.command == 'push-branch':
+        return api.push_branch(testBranch, repo, no_push)
+
+    elif args.command == 'force-build':
+        return api.force_build(abDir, abUrl, abUser, abPassword, builder,
+                               testBranch, repoUrl, repo, no_build)
+
+    elif args.command == 'full-test':
+        return api.full_test(baseBranch, testBranch, updateBaseBranch, series,
+                             testSuccessOnly, pwUrl, repo, no_push, abDir,
+                             abUrl, abUser, abPassword, builder, repoUrl,
+                             no_build)
+
+    else:
+        print("Command \"%s\" not recognized" % args.command)
+        return 1
+
+if __name__ == '__main__':
+    start_directory = os.getcwd()
+    localrepo = start_directory
+    try:
+        ret = main()
+    except Exception:
+        os.chdir(start_directory)
+        ret = 1
+        import traceback
+        traceback.print_exc()
+    sys.exit(ret)
-- 
2.7.4


