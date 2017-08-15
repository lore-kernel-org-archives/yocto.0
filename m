Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26092E00D1C; Mon, 14 Aug 2017 17:50:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4952AE00A39
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 17:50:23 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2017 17:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,375,1498546800"; d="scan'208";a="140228302"
Received: from faleaziz-mobl1.amr.corp.intel.com (HELO
	jalamego-mobl3.amr.corp.intel.com) ([10.254.119.127])
	by fmsmga006.fm.intel.com with ESMTP; 14 Aug 2017 17:50:22 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Aug 2017 19:50:10 -0500
Message-Id: <1502758210-5311-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1502200774-4906-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1502200774-4906-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH V2] tools/test-series: automate test-build process for series
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
X-List-Received-Date: Tue, 15 Aug 2017 00:50:26 -0000

Testing patch series' for appropriate integration and further
build against a branch requires several manual steps, providing
a poor code maintainer experience and increasing overall patch
integration workflow.

This change adds a script to automate the test-build process for
one or more patch series by downloading one or more series from
patchwork, applying it/them to a test branch, uploading the test
branch to a repository and starting a build at a Yocto Autobuilder.
Then a message is posted at the series view in patchwork with a
link to the builder's web page.
The build results can later be queried at the autobuilder api using
the "reason" field, where the script includes the tested series' ID
and the date when it was started as unique identifier.

[YOCTO #8714]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---

Notes:
    Changes in V2:
    
        - Updated script description to be more clear about its purpose.
        - Moved the script to a new directory that now also contains a
          requirements file.
        - Removed hardcoded paths and pointed the default paths into
          current user's home directory.
        - Default autobuilder URL points to https://autobuilder.yocto.io
        - Use subprocess' checkout_output function instead of Popen+PIPE
        - Removed if/else argument validation by setting default values
        - Added publish_build function to use git-pw command to post a
          notification for the started build at the series view in
          patchwork. The posted message at the test-results section can
          later be updated with a direct link to the build results when
          available.

 tools/test-series/requirements.txt |   3 +
 tools/test-series/test-series      | 496 +++++++++++++++++++++++++++++++++++++
 2 files changed, 499 insertions(+)
 create mode 100644 tools/test-series/requirements.txt
 create mode 100755 tools/test-series/test-series

diff --git a/tools/test-series/requirements.txt b/tools/test-series/requirements.txt
new file mode 100644
index 0000000..14d817a
--- /dev/null
+++ b/tools/test-series/requirements.txt
@@ -0,0 +1,3 @@
+beautifulsoup4
+lxml
+python-requests >= 2.4.2
diff --git a/tools/test-series/test-series b/tools/test-series/test-series
new file mode 100755
index 0000000..e037fce
--- /dev/null
+++ b/tools/test-series/test-series
@@ -0,0 +1,496 @@
+#!/usr/bin/env python3
+#
+# Patch series test build automation script
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
+import git
+import os
+import sys
+import subprocess
+from datetime import datetime
+import getpass
+import requests
+import re
+
+# ***** Default values ***** #
+sourceDir = os.path.dirname(os.path.realpath(__file__))
+default_user = getpass.getuser()
+default_patchwork_dir = "/home/%s/patchwork/patchwork" % default_user
+default_patchwork_url = "https://patchwork.openembedded.org"
+default_builder = "nightly-oecore"
+default_autobuilder_dir = "/home/%s/yocto-autobuilder" % default_user
+default_autobuilder_url = "https://autobuilder.yocto.io"
+default_password = "password"
+default_repo_name = "origin"
+default_repo_url = None
+default_base_branch = "master"
+# delete test-branch after starting build
+default_delete_branch = False
+# push branch to repoUrl
+default_no_push = False
+# skip starting the build
+default_no_build = False
+default_update_basebranch = False
+default_test_success_only = False
+test_name = "test-build"
+initial_result = "pending"
+
+
+class TestSeriesAPI(object):
+
+    def __init__(self, cmd):
+        self.cmd = cmd
+
+    def _checkout_to_branch(self, branch):
+        try:
+            msg = subprocess.check_output(['git', 'checkout', branch]
+                                          ).decode('utf-8').strip()
+            if msg != "":
+                print("I: %s" % msg)
+            return 0
+        except subprocess.CalledProcessError:
+            return 1
+
+    def _get_current_branch(self):
+        try:
+            msg = subprocess.check_output(['git', 'symbolic-ref', 'HEAD']
+                                          ).decode('utf-8').strip()
+            if 'refs/heads/' in msg:
+                return msg[11:]
+        except subprocess.CalledProcessError:
+            return None
+
+    def _name_test_branch(self, series):
+        prefix = "test-"
+        postfix = datetime.now().strftime('-%Y%b%d-%H%M%S')
+        if not series:
+            name = prefix + "series" + postfix
+            print("I: No series (-s) and no test-branch name (-tb) found. \
+Using automatically generated name \"%s\"." % name)
+        else:
+            name = prefix + "-".join([str(serie) for serie in series]) + \
+                postfix
+            print("I: no test-branch name provided (-tb). Using the \
+automatically generated \"%s\"." % name)
+        return name
+
+    def _delete_test_branch(self, testBranch, baseBranch):
+        prereq = self._checkout_to_branch(baseBranch)
+        if prereq != 0:
+            return 1
+        else:
+            try:
+                msg = subprocess.check_output(
+                    ['git', 'branch', '-D', testBranch]
+                    ).decode('utf-8').strip()
+                if msg != "":
+                    print("I: %s" % msg)
+                return 0
+            except subprocess.CalledProcessError:
+                return 1
+
+    def _publish_build(self, branch, abUrl, applied, builder, pwDir):
+        # publish build message only when executig full test-builds
+        if not applied:
+            return 1
+        m = re.search('(test-)((\d{4,}\-)+)', branch)
+        if m:
+            series = re.sub('-', ' ', m.group(2)).strip().split()
+        else:
+            return 1
+        for serie in series:
+            if serie not in applied:
+                continue
+            try:
+                tmsg = "A test build was attempted for series \"%s\" in the \
+autobuilder at \"%s\" using builder \"%s\". You may find the test results by \
+querying the series ID in the builder\'s \"reason\" field." % (
+                    serie, abUrl, builder)
+                pmsg = subprocess.check_output(
+                    ['%s/../git-pw/git-pw' % pwDir, 'post-result', '--url',
+                     '%s/builders/%s/' % (abUrl, builder), '--summary', tmsg,
+                     '%s' % serie, test_name, initial_result]
+                    ).decode('utf-8').strip()
+            except subprocess.CalledProcessError:
+                return 1
+        return 0
+
+    def update_branch(self, branch):
+        if not branch:
+            print("I: target branch (--base-branch) not found/provided. \
+Atempting to update current branch.")
+            branch = self._get_current_branch()
+        if not branch:
+            return 1
+        prereq = self._checkout_to_branch(branch)
+        if prereq != 0:
+            print("E: Failed to checkout to branch \"%s\" to be updated. \
+Aborting" % branch)
+            return 1
+        try:
+            msg = subprocess.check_output(['git',
+                                          'fetch']).decode('utf-8').strip()
+            if msg != "":
+                print("I: %s" % msg)
+            msg = subprocess.check_output(['git',
+                                          'pull']).decode('utf-8').strip()
+            if msg != "":
+                print("I: %s" % msg)
+        except subprocess.CalledProcessError:
+            return 1
+        print("I: Successfully updated branch \"%s\"." % branch)
+        return 0
+
+    def create_branch(self, baseBranch, testBranch, updateBaseBranch, series):
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
+            testBranch = self._name_test_branch(series)
+        print("I: Attempting to create branch \"%s\" from \"%s\"."
+              % (testBranch, baseBranch))
+        try:
+            msg = subprocess.check_output(['git', 'checkout', '-b', "%s"
+                                           % testBranch]
+                                          ).decode('utf-8').strip()
+            if msg != "":
+                print("I: %s" % msg)
+        except subprocess.CalledProcessError:
+            return 1
+
+        return testBranch
+
+    def apply_series(self, testBranch, series, testSuccessOnly, pwUrl, pwDir,
+                     baseBranch, updateBaseBranch, newBranch):
+        if not series:
+            print("E: At least one series ID must be provided, for example: \
+\"-s 1234 -s 1235\". Aborting.")
+            return 1
+        if not testBranch:
+            if not newBranch:
+                testBranch = self._get_current_branch()
+                if not testBranch:
+                    return 1
+                print("I: target branch (--test-branch) not received. Attempting \
+to apply series in current branch: \"%s\"." % testBranch)
+            else:
+                testBranch = self.create_branch(
+                    baseBranch, testBranch, updateBaseBranch, series)
+        prereq = self._checkout_to_branch(testBranch)
+        if prereq != 0:
+            print("E: Failed to checkout to branch \"%s\" before applying \
+series: %s. Aborting." % (testBranch, series))
+            return 1
+        if testSuccessOnly:
+            if not pwUrl:
+                msg = subprocess.check_output(
+                    ['git', 'config', 'patchwork.default.url']
+                    ).decode('utf-8').strip()
+            if 'error:'in msg or 'fatal:' in msg:
+                print("E: %s" % msg)
+                return 1
+            elif msg != "":
+                pwUrl = msg
+        applied_series = []
+        for serie in series:
+            if testSuccessOnly:
+                # skip series if test_state in patchwork is not "success"
+                if requests.get(
+                     '%s/api/1.0/series/%d/' % (pwUrl, int(serie))
+                     ).json().get("test_state") != "success":
+                    print("I: Skipping series \"%d\" due to non \"success\" \
+test-state in patchwork." % serie)
+                    continue
+            print("I: Attempting to apply series %d" % int(serie))
+            try:
+                msg = subprocess.check_output(
+                    ['%s/../git-pw/git-pw' % pwDir, 'apply', '%s' % serie]
+                    ).decode('utf-8').strip()
+                if msg != "":
+                    print("I: %s." % msg)
+            except FileNotFoundError:
+                print("E: Invalid local patchwork directory (-pd). Aborting.")
+                return 1
+            except subprocess.CalledProcessError:
+                print("E: Failed to apply series %s" % serie)
+                try:
+                    msg = subprocess.check_output(
+                        ['git', 'am', '--skip']).decode('utf-8').strip()
+                    if msg != "":
+                        print("I: %s." % msg)
+                except subprocess.CalledProcessError:
+                    print("E: Failed to execute \"git am --skip\", you may \
+need to execute it manually or even \"git am --abort\" to clean the current \
+working directory.")
+            applied_series.append(serie)
+        return applied_series
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
+            prereq = self._checkout_to_branch(branch)
+            if prereq != 0:
+                print("E: Failed to checkout to branch \"%s\" to push. \
+Aborting." % branch)
+                return 1
+        try:
+            msg = subprocess.check_output(
+                ['git', 'push', '--set-upstream', repo, branch]
+                ).decode('utf-8').strip()
+            if msg != "":
+                print("I: %s" % msg)
+                print("I: Successfully pushed branch \"%s\" to \"%s\""
+                      % (branch, repo))
+            return 0
+        except subprocess.CalledProcessError:
+            return 1
+
+    def force_build(self, abDir, abUrl, abUser, abPassword, builder,
+                    testBranch, repoUrl, repo, no_build, applied, pwDir):
+        if not abPassword:
+            print("E: remote autobuilder password (-p) is required to start a \
+build. Aborting.")
+            return 1
+        if no_build:
+            print("I: force build skipped due to no-build (-nb) option \
+present.")
+            return 0
+        print("I: Attempting to start a forced build at \"%s\"" % abUrl)
+        if not repoUrl:
+            try:
+                msg = subprocess.check_output(
+                    ['git', 'config', '--get', 'remote.%s.url'
+                     % repo]).decode('utf-8').strip()
+                if msg != "":
+                    repoUrl = msg
+            except subprocess.CalledProcessError:
+                print("E: Failed to get remote repo url from git config. \
+Aborting")
+                return 1
+            print("I: remote repository url (-ru) not provided. Attempting \
+to use url from git remote config \"%s\"" % repoUrl)
+            if not repoUrl:
+                return 1
+        if not testBranch:
+            testBranch = self._get_current_branch()
+            print("I: test branch to build-from not provided. Attempting to \
+start a build using current branch \"%s\"" % testBranch)
+            if not testBranch:
+                return 1
+        try:
+            msg = subprocess.check_output(
+                ['%s/bin/forcebuild.py' % abDir, '-s', '%s' % abUrl,
+                 '-u', '%s' % abUser, '-p', '%s' % abPassword, '--force-build',
+                 '%s' % builder, '-o',
+                 '{\'branch_oecore\':\'%s\', \'repo_oecore\':\'%s\',\
+                 \'reason\':\'%s\'}' % (testBranch, repoUrl, testBranch)],
+                stderr=subprocess.STDOUT).decode('utf-8').strip()
+            if msg != "":
+                print("E: %s" % msg)
+            print("I: force-build command completed for branch \"%s\" at \
+the autobuilder in \"%s\" using builder \"%s\". You may later find results \
+by including the branch name in your query." % (testBranch, abUrl, builder))
+            self._publish_build(testBranch, abUrl, applied, builder, pwDir)
+            return 0
+        except subprocess.CalledProcessError as e:
+            print("E: Failed to start a forced build for branch \"%s\" at \
+\"%s\".\n%s" % (testBranch, abUrl, e.output.decode('utf-8').strip()))
+            return 1
+
+    def full_test(self, baseBranch, testBranch, updateBaseBranch, series,
+                  testSuccessOnly, pwUrl, repo, no_push, abDir, abUrl, abUser,
+                  abPassword, builder, repoUrl, no_build, pwDir, newBranch):
+        applied = self.apply_series(
+            testBranch, series, testSuccessOnly, pwUrl, pwDir, baseBranch,
+            updateBaseBranch, newBranch)
+        if applied == 1:
+            return 1
+        step = self.push_branch(testBranch, repo, no_push)
+        if step == 1:
+            return step
+        step = self.force_build(abDir, abUrl, abUser, abPassword, builder,
+                                testBranch, repoUrl, repo, no_build, applied,
+                                pwDir)
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
+  push-branch    push provided branch (-tb) to provided repository (-r)\n",
+        add_help=False, formatter_class=argparse.RawDescriptionHelpFormatter)
+    parser.add_argument('command', help='Action to be executed.')
+    parser.add_argument('-bb', '--base-branch', action='store',
+                        default=default_base_branch, help='Name of the branch \
+from where a new branch will be based on. Default: %s' % default_base_branch)
+    parser.add_argument('-tb', '--test-branch', action='store',
+                        default=None, help='Provide a custom \
+name for the test branch. Default: \"test-series\" + date-time postfix.')
+    parser.add_argument('-nw', '--new-branch', action='store_true',
+                        default=None, help='Create a new testing branch \
+to execute command there.')
+    parser.add_argument('-s', '--series', action='append', help='Series to be \
+merged in top of base-branch (-bb).')
+    parser.add_argument('-ub', '--update-basebranch', action='store_true',
+                        default=default_update_basebranch, help='Update the \
+base-branch (-bb) before any other operation. Default: %s'
+                        % default_update_basebranch)
+    parser.add_argument('-pd', '--patchwork-dir', action='store',
+                        default=default_patchwork_dir, help='Provide the \
+local patchwork\'s directory. Default: %s' % default_patchwork_dir)
+    parser.add_argument('-pu', '--patchwork-url', action='store',
+                        help='Provide the remote patchwork instance\'s url. \
+Default: get it from git config')
+    parser.add_argument('-ts', '--test-success-only', action='store_true',
+                        default=default_test_success_only, help='Test only \
+those series that have \"success\" as test_state in patchwork. Default: %s'
+                        % default_test_success_only)
+    parser.add_argument('-ru', '--repo-url', action='store',
+                        default=default_repo_url, help="Url to remote \
+repository to get branches to build. Default: get it from git config")
+    parser.add_argument('-r', '--repo-name', action='store',
+                        default=default_repo_name, help="Name of remote \
+repository to push branches. Default: %s" % default_repo_name)
+    parser.add_argument('-np', '--no-push', action='store_true',
+                        default=default_no_push, help="Do not push the test \
+branch to remote repo. Default: %s" % default_no_push)
+    parser.add_argument('-nb', '--no-build', action='store_true',
+                        default=default_no_build, help="Do not start a build \
+from the test branch. Default: %s" % default_no_build)
+    parser.add_argument('-ad', '--autobuilder-dir', action='store',
+                        default=default_autobuilder_dir, help="Provide the \
+local autobuilder directory. Default: %s" % default_autobuilder_dir)
+    parser.add_argument('-au', '--autobuilder-url', action='store',
+                        default=default_autobuilder_url, help="Provide the \
+remote autobuilder\'s url. Default: %s" % default_autobuilder_url)
+    parser.add_argument('-u', '--user', action='store', default=default_user,
+                        help="Provide the remote autobuilder username. \
+Default: %s" % default_user)
+    parser.add_argument('-p', '--password', action='store',
+                        help="Provide the remote autobuilder password.")
+    parser.add_argument('-b', '--builder', action='store',
+                        default=default_builder, help="Provide the remote \
+autobuilder builder name. Default: %s" % default_builder)
+    parser.add_argument('-d', '--delete_branch', action='store_true',
+                        default=default_delete_branch, help="Delete the \
+created local test branch after push or build. Default: %s"
+                        % default_delete_branch)
+    parser.add_argument(
+        '-h', '--help', action='help', default=argparse.SUPPRESS,
+        help='show this help message and exit')
+
+    args = parser.parse_args()
+    api = TestSeriesAPI(args)
+
+    if args.command == 'update-branch':
+        return api.update_branch(args.base_branch)
+
+    elif args.command == 'create-branch':
+        created = api.create_branch(args.base_branch, args.test_branch,
+                                    args.update_basebranch, args.series)
+        if created != 1:
+            return 0
+        else:
+            return created
+
+    elif args.command == 'apply-series':
+        applied = api.apply_series(args.test_branch, args.series,
+                                   args.test_success_only, args.patchwork_url,
+                                   args.patchwork_dir, args.base_branch,
+                                   args.update_basebranch, args.new_branch)
+        if applied == 1:
+            return 1
+        else:
+            return 0
+
+    elif args.command == 'push-branch':
+        return api.push_branch(args.test_branch, args.repo_name, args.no_push)
+
+    elif args.command == 'force-build':
+        return api.force_build(args.autobuilder_dir, args.autobuilder_url,
+                               args.user, args.password, args.builder,
+                               args.test_branch, args.repo_url,
+                               args.repo_name, args.no_build, None)
+
+    elif args.command == 'full-test':
+        return api.full_test(args.base_branch, args.test_branch,
+                             args.update_basebranch, args.series,
+                             args.test_success_only, args.patchwork_url,
+                             args.repo_name, args.no_push,
+                             args.autobuilder_dir, args.autobuilder_url,
+                             args.user, args.password, args.builder,
+                             args.repo_url, args.no_build, args.patchwork_dir,
+                             args.new_branch)
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
+        os.chdir(start_directory)
+    except Exception:
+        os.chdir(start_directory)
+        ret = 1
+        import traceback
+        traceback.print_exc()
+    sys.exit(ret)
-- 
2.7.4


