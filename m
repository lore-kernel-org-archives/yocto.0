Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C1EE00D0F; Fri, 28 Dec 2018 21:46:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D2C8E00CE7
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 21:45:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wBT5jDr2008719
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 21:45:49 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Fri, 28 Dec 2018 21:45:38 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 29 Dec 2018 13:45:36 +0800
Message-ID: <1546062336-388891-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [patchtest][PATCH] patchtest: several enhancement
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
X-List-Received-Date: Sat, 29 Dec 2018 05:46:15 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

* since we need use git-pw in patchwork, and that need GitPython/
  requests, so add them into requirements.txt

* fetch-mboxes: add option for supprt select which project to fetch
                , not always use default oe-core for pull-events

* test-mboxes: crontab's stdin is not atty, curret way will make
               patchtest get patch from stdin, but not the patch
               downloaded to folder mboxes. Use pipe stdin way to
               suppprt run test-mboxes in crontab

* pw-host-test/create-host-test-folder/create-host-crontab:
               These scripts are for run test in docker, detail see
               usage.adoc

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 requirements.txt                |   2 +
 scripts/create-host-crontab     |  88 ++++++++++++++++++++
 scripts/create-host-test-folder | 151 +++++++++++++++++++++++++++++++++
 scripts/fetch-mboxes            |   9 +-
 scripts/pw-host-test            | 179 ++++++++++++++++++++++++++++++++++++++++
 scripts/test-mboxes             |   2 +-
 usage.adoc                      |   8 ++
 7 files changed, 436 insertions(+), 3 deletions(-)
 create mode 100755 scripts/create-host-crontab
 create mode 100755 scripts/create-host-test-folder
 create mode 100755 scripts/pw-host-test

diff --git a/requirements.txt b/requirements.txt
index 7f7afbf..62a4b5d 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1 +1,3 @@
 jinja2
+GitPython
+requests
diff --git a/scripts/create-host-crontab b/scripts/create-host-crontab
new file mode 100755
index 0000000..583955f
--- /dev/null
+++ b/scripts/create-host-crontab
@@ -0,0 +1,88 @@
+#!/usr/bin/env bash
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# create-host-crontab: creates a crontab file used to run patchtest 
+#
+# Copyright (C) 2016 Intel Corporation
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
+
+CRONDIR=$PWD
+FREQ='*/30 * * * *'
+
+function usage() {
+    cat << EOF
+\$ $(basename $0) OPTIONS [SERIES]
+
+where OPTIONS are
+    -c <cron dir>       : Cron directory to place the crontab. Default: '$CRONDIR'
+    -f <cron frequency> : Cron frequency: Default '$FREQ'
+
+EOF
+>&2
+
+    exit 1
+}
+
+while getopts ":c:f:h" opt; do
+    case $opt in
+	c)
+	    CRONDIR=$OPTARG
+	    ;;
+	f)
+	    FREQ="$OPTARG"
+	    ;;
+	\?)
+	    echo "Invalid option: -$OPTARG" >&2
+	    usage
+	    ;;
+	:)
+	    echo "Option -$OPTARG requires an argument." >&2
+	    usage
+	    ;;
+    esac
+done
+shift $((OPTIND-1))
+
+# create crondir if necessary
+[ ! -d "$CRONDIR" ] && { mkdir -p $CRONDIR; }
+
+CRONDIR="$(readlink -e $CRONDIR)"
+
+# create crontab
+cat > $CRONDIR/cronenv << EOF
+#!/bin/sh
+#
+# Place any environment variables needed
+# before running 'guest' script
+#
+# include patch* repos into PATH
+PATH="/opt/patchwork/git-pw:/opt/patchtest:/opt/patchtest/scripts:\$PATH"
+
+# Possible settings if cron is run under a proxy
+#unset  SSH_AUTH_SOCK
+#export GIT_PROXY_COMMAND=""
+#export ftp_proxy=""
+#export http_proxy=""
+#export https_proxy=""
+#export no_proxy=""
+EOF
+
+chmod +x $CRONDIR/cronenv
+
+cat > "$CRONDIR/crontab" <<EOF
+$FREQ . $CRONDIR/cronenv; sudo env PATH=\$PATH pw-host-test -p -t /opt/pw-test/ >> $CRONDIR/cronlog 2>&1
+EOF
diff --git a/scripts/create-host-test-folder b/scripts/create-host-test-folder
new file mode 100755
index 0000000..464ba8a
--- /dev/null
+++ b/scripts/create-host-test-folder
@@ -0,0 +1,151 @@
+#!/usr/bin/env bash
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# create-host-test-folder: Create a test folder on host
+#
+# Copyright (C) 2016 Intel Corporation
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
+
+
+# defaults values
+TESTDIR=''
+PWURL='https://patchwork.openembedded.org'
+PWPRO='oe-core'
+PWUSER='user'
+PWPASS='passwd'
+
+function usage() {
+    cat << EOF
+\$ $(basename $0) OPTIONS [SERIES]
+
+where OPTIONS are
+
+    -t <test dir>   : Test directory
+    -u <pw url>      : Patchwork URL. Default '$PWURL'
+    -p <pw project>  : Patchwork project name. Default '$PWPRO'
+    -U <pw user>     : Patchwork username. Default '$PWUSER'
+    -P <pw password> : Patchwork username password. Default '$PWPASS'
+
+EOF
+>&2
+
+    exit 1
+}
+
+while getopts ":t:u:p:U:P:h" opt; do
+    case $opt in
+	t)
+	    TESTDIR=$OPTARG
+	    ;;
+	u)
+	    PWURL=$OPTARG
+	    ;;
+	p)
+	    PWPRO=$OPTARG
+	    ;;
+	U)
+	    PWUSER=$OPTARG
+	    ;;
+	P)
+	    PWPASS=$OPTARG
+	    ;;
+	\?)
+	    echo "Invalid option: -$OPTARG" >&2
+	    usage
+	    ;;
+	:)
+	    echo "Option -$OPTARG requires an argument." >&2
+	    usage
+	    ;;
+    esac
+done
+shift $((OPTIND-1))
+
+function set_patchwork_configs() {
+    local URL=$1
+    local PRO=$2
+    local USER=$3
+    local PASS=$4
+
+    # Set git-pw configuration
+    test -n "$URL" &&  git config patchwork.default.url $URL
+    test -n "$PRO" &&  git config patchwork.default.project $PRO
+    test -n "$USER" && git config patchwork.default.user $USER
+    test -n "$PASS" && git config patchwork.default.password $PASS
+}
+
+# update (repository) can mean any of this:
+#   1. clone if repository does not exist
+#   2. clone if repository is not valid
+#   3. clean not-tracked files and pull latest changes from remote
+function update_repository() {
+    # check input params are present
+    [ -z "$1" -o -z "$2" ] && { return; }
+
+    local REPOREMOTE=$1
+    local REPODIR=$2
+
+    if [ ! -d $REPODIR ]; then
+	git clone $REPOREMOTE $REPODIR
+    else
+	# if not a valid git repo, remove it and clone it again
+	(
+	    CDIR="$PWD"
+	    cd $REPODIR
+	    if ! git status > /dev/null 2>&1 ; then
+		# if repo has patchwork configuration, extract it before removing the folder
+		R_PWURL="$(grep  -A4 '\[patchwork' .git/config | grep url      | cut -f2 -d'=')"
+		R_PWPRO="$(grep  -A4 '\[patchwork' .git/config | grep project  | cut -f2 -d'=')"
+		R_PWUSER="$(grep -A4 '\[patchwork' .git/config | grep user     | cut -f2 -d'=')"
+		R_PWPASS="$(grep -A4 '\[patchwork' .git/config | grep password | cut -f2 -d'=')"
+
+		cd $CDIR;rm -rf $REPODIR
+		git clone $REPOREMOTE $REPODIR
+
+		cd $REPODIR;set_patchwork_configs $R_PWURL $R_PWPRO $R_PWUSER $R_PWPASS
+	    fi
+	)
+
+	# do some basic cleaning
+	(
+	    cd $REPODIR
+	    git am --abort --quiet
+	    git reset --hard --quiet
+	    git clean -f -e ".git-pw*" --quiet
+	)
+	
+	# pull latest changes
+	( cd $REPODIR; git pull )
+    fi
+}
+
+# main
+if [ -z "$TESTDIR" ]; then
+    echo "Provide the patchtest test dir"
+    usage
+else
+    [ ! -d $TESTDIR ]  && { mkdir $TESTDIR; }
+fi
+
+TESTDIR=$(readlink -e $TESTDIR)
+
+# update repos
+update_repository git://git.openembedded.org/openembedded-core $TESTDIR/openembedded-core
+update_repository git://git.openembedded.org/bitbake $TESTDIR/openembedded-core/bitbake
+
+# finally overwrite previous git's pw settings with the ones pass by the user
+cd $TESTDIR/openembedded-core; set_patchwork_configs $PWURL $PWPRO $PWUSER $PWPASS
+
diff --git a/scripts/fetch-mboxes b/scripts/fetch-mboxes
index 0f95e3e..f2f5115 100755
--- a/scripts/fetch-mboxes
+++ b/scripts/fetch-mboxes
@@ -23,6 +23,7 @@
 repodir=''
 mboxdir='.'
 since=''
+project=''
 
 function usage() {
     cat << EOF
@@ -33,6 +34,7 @@ where OPTIONS are
     -r <repodir>   : Repository
     -m <mboxdir>   : Directory where mboxes are stored. Defaults to $mboxdir
     -s <timestamp> : Poll events since the defined timestamp
+    -p <project>   : Point which project to fectch
 
 and optional SERIES separated with spaces, i.e. '100 87'. Revision can be included and these appears after the series,
 joined with a dot, i.e. '100.2 87'. If series are not given, it will poll patchwork events using <timestamp> if given,
@@ -46,7 +48,7 @@ EOF
     exit 1
 }
 
-while getopts ":r:m:s:h" opt; do
+while getopts ":r:m:s:p:h" opt; do
     case $opt in
 	r)
 	    repodir=$OPTARG
@@ -57,6 +59,9 @@ while getopts ":r:m:s:h" opt; do
 	s)
 	    since=$OPTARG
 	    ;;
+    p)
+        project=$OPTARG
+        ;;
 	h)
 	    usage
 	    ;;
@@ -80,7 +85,7 @@ series="$@"
 
 # events come in pairs separated by a dot
 if [ -z "$series" ]; then
-    series="$(poll-events $repodir $since)"
+    series="$(poll-events --project $project $repodir $since)"
 fi
 
 if [ -n "$series" ]; then
diff --git a/scripts/pw-host-test b/scripts/pw-host-test
new file mode 100755
index 0000000..d42247b
--- /dev/null
+++ b/scripts/pw-host-test
@@ -0,0 +1,179 @@
+#!/bin/bash
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# pw-host-test: 
+#        fetch mboxes from patchwork at host and test them one by one;
+#        after all tests completed, post summary to the patchwork instance
+#
+# NOTE: This is script assumes that the user has already run the
+#       create-host-test-folder scripts
+#
+# Copyright (C) 2016 Intel Corporation
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
+
+# Default values
+TESTDIR=''
+POST=''
+NOFETCH=''
+NOUPDATE=''
+PROJECT=''
+
+function usage() {
+    cat << EOF
+\$ $(basename $0) [OPTION]
+
+where OPTIONS are
+
+    -t <test dir>  : Patchtest test dir
+    -p             : Post results to the patchwork instance
+    -n             : Do not fetch, just update repos and launch guest machine
+    -N             : Do not update share repos
+    -P <project>   : Point which project to fetch
+EOF
+>&2
+
+    exit 1
+}
+
+while getopts ":t:pnNhP:" opt; do
+    case $opt in
+	t)
+	    TESTDIR=$OPTARG
+	    ;;
+	p)
+	    POST='x'
+	    ;;
+	n)
+	    NOFETCH='x'
+	    ;;
+	N)
+	    NOUPDATE='x'
+	    ;;
+    P)
+        PROJECT=$OPTARG
+        ;;
+	h)
+	    usage
+	    ;;
+	\?)
+	    echo "Invalid option: -$OPTARG" >&2
+	    usage
+	    ;;
+	:)
+	    echo "Option -$OPTARG requires an argument." >&2
+	    usage
+	    ;;
+    esac
+done
+
+function test_network() {
+    cd $OECORE
+    git pw list -s `date --iso-8601` 2>&1
+}
+
+test -z "$TESTDIR" && { echo "Provide the patchtest test directory folder created with create-host-test-folder script"; usage; }
+
+# make sure the test folder exists
+test ! -d "$TESTDIR" && { echo "Provide the share directory folder created with create-host-test-folder script"; usage; }
+
+TESTDIR=$(readlink -e $TESTDIR)
+
+# Define repo location and names
+PW=/opt/patchwork
+PT=/opt/patchtest
+PTOE=/opt/patchtest-oe
+OECORE=$TESTDIR/openembedded-core
+
+# update share folder
+if [ -z "$NOUPDATE" ]; then
+    create-host-test-folder -t $TESTDIR 
+fi
+
+test_network || { echo "$(date): No network connection, quitting"; exit 1; }
+
+if [ -z "$NOFETCH" ]; then
+    # Get latest mboxes from the PW instance
+    if [ -z "$PROJECT"]; then
+        fetch-mboxes -r $OECORE -m $TESTDIR/tmp/mboxes
+    else
+        fetch-mboxes -r $OECORE -m $TESTDIR/tmp/mboxes -p $PROJECT
+    fi
+
+    # if now new mboxes, just quit
+    test ! -d $TESTDIR/tmp/mboxes && { echo "Exiting"; exit 0; }
+
+    # Check if old mboxes are present and backup these and its results
+    # TODO: we must thing on something smarter to store past results
+    # The first approach was the use of a git repository and git notes
+    # but in this case a branch needs to be created in every run
+    # and then use the post-summary script to get data from it.
+    # A simpler approach is just storing plain texts and it is
+    # the scripting does at the moment.
+    if [ -d $TESTDIR/mboxes ]; then
+
+        # Unique folder to store previous mboxes/results
+        now="$(date --iso-8601=minutes)"
+
+        # Define and create unique backup dir
+        backup="$TESTDIR/backup/$now"
+        test ! -d $backup && mkdir -p $backup
+
+        # backup mboxes
+        mv $TESTDIR/mboxes $backup/mboxes
+
+        # backup results (if exists)
+        test -d $TESTDIR/results && mv $TESTDIR/results $backup/results
+    fi
+
+    # Move latest mboxes
+    mv $TESTDIR/tmp/mboxes $TESTDIR/mboxes
+fi
+
+MBOXES="$TESTDIR/mboxes"
+RESULTS="$TESTDIR/results"
+SUITESTART="$PTOE/tests"
+
+function pt() {
+    local REPO=$1
+    local MBOX=$2
+    local SUITESTART=$3
+    local RESULTS=$4
+    TMPBUILD="$(mktemp -d)"
+    BRANCH="$(get-target-branch $REPO $MBOX | awk '{print $NF}')"
+    cd $REPO
+    source ./oe-init-build-env $TMPBUILD
+    touch conf/sanity.conf
+    test-mboxes -r $REPO -s $SUITESTART -m $MBOX -o $RESULTS -- --base-branch $BRANCH
+    rm -rf $TMPBUILD
+}
+
+#do test here
+if [ -d $OECORE ]; then
+    #clean local repo
+    ( cd $OECORE; git reset --hard; git clean -fd; )
+
+    ( # lets test each mbox individually (and in its own build directory) in order to avoid contamination issues
+      for MBOX in $MBOXES/*.mbox; do
+          pt $OECORE $MBOX $SUITESTART $RESULTS
+          cd $OECORE
+      done
+    )
+fi
+
+# Post patchtest results ($TESTDIR/results) into patchwork
+if [ -n "$POST" ]; then
+    post-summary -r $OECORE -R $TESTDIR/results
+fi
diff --git a/scripts/test-mboxes b/scripts/test-mboxes
index 9137ba4..7df9c9a 100755
--- a/scripts/test-mboxes
+++ b/scripts/test-mboxes
@@ -85,7 +85,7 @@ function testpatch() {
     patchfn=$(basename $patch)
 
     # run patchtest
-    PTRESULTS="$(patchtest $patch $repodir $startdir $extraptargs --json 2>$tmp)"
+    PTRESULTS="$(cat $patch | patchtest - $repodir $startdir $extraptargs --json 2>$tmp)"
 
     # store stdout/stderr and return if there was an error on pt execution
     if [ $? -ne 0 ]; then
diff --git a/usage.adoc b/usage.adoc
index 4357529..f7f4111 100644
--- a/usage.adoc
+++ b/usage.adoc
@@ -4,6 +4,7 @@
 
 . <<intro, Introduction>>
 . <<host, Host execution>>
+  .. <<Test in docker>>
 . <<guest, Guest execution>>
 . <<pw, Patchwork Git configuration>>
 . <<scenarios, Secundary scripts and common scenarios>>
@@ -83,6 +84,11 @@ cd <path to OE-core repository>
 git format-patch -1 --stdout | patchtest - <path to patchtest> <path to /pachtest-oe/tests>
 ----
 
+=== Test in Docker
+
+create-host-crontab/create-host-test-folder/pw-host-test is added for docker test. Detail usage
+can refer doc in patchwork, README.pw
+
 [[guest]]
 === Guest execution
 
@@ -293,3 +299,5 @@ the test results, just include the parameter `-A` (inside the new branch, you wi
 test failures). As in the `-o` case, the branch can be visited and commits review with standard
 `git-log/show` where results are stored as `git-notes`.
 
+
+
-- 
2.7.4


