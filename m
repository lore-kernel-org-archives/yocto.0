Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03E3FE00B87; Tue, 16 May 2017 11:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B42B9E00B7A
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 11:45:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 16 May 2017 11:44:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,350,1491289200"; d="scan'208";a="1169988200"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by fmsmga002.fm.intel.com with ESMTP; 16 May 2017 11:44:59 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 16 May 2017 13:46:28 -0500
Message-Id: <20170516184628.31604-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [qa-tools][PATCH] Full-test-cycle-wrapper: Add support for point releases
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
X-List-Received-Date: Tue, 16 May 2017 18:45:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add support to scenarios were a execution is needed for branch different
from master, delete lsb-joule environment as is not supported and add
logic to do the “Testopia connection” modular and reusable by other
scripts.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 16 +++++++++++---
 testopia_update.py                 | 44 ++++++++++++++++++++++++--------------
 2 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
index 2b3a130..7dcd62e 100755
--- a/scripts/full-test-cycle-wrapper.sh
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -51,6 +51,13 @@ create_test_run(){
       OPT="-o $2"
    fi
 
+#If point release is used then milestone is not asigned
+   if [[ $MILESTONE == M* ]]; then
+      BUILD_MILESTONE="$VERSION $MILESTONE"
+   else
+      BUILD_MILESTONE="$VERSION$MILESTONE"
+   fi
+
    #echo "############ CREATING TEST RUNS FOR - $1 - #############"
    for ENV in "${ENVIRONMENTS[@]}"
    do
@@ -61,7 +68,7 @@ create_test_run(){
      do
         #call the script that creates Test Runs
         ./testopia_update.py --config $CONFIG_FILE -a $ACTION -p "${1}" -c $EXTP -b $BRANCH \
-        -e "$ENV"  --project-version $VERSION --project-milestone "$VERSION $MILESTONE" \
+        -e "$ENV"  --project-version $VERSION --project-milestone "$BUILD_MILESTONE" \
         --project-date $PJDATE --project-revision $RELEASE-$REVISION $OPT $TEST_PLAN --verbose
      done
    done
@@ -119,7 +126,7 @@ create_meta-intel(){
    create_test_run "${1}" "core-image-sato-sdk_ANYBSP"
 
    #BSP Autos LSB
-   ENVIRONMENTS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_Joule" "corei7-64_lsb_CherryHill")
+   ENVIRONMENTS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_CherryHill")
 
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-lsb-sdk_ANYBSP"
@@ -226,7 +233,9 @@ usage(){
   echo " -p PROJECT VERSION  {2.2 2.3 2.4}
                           Version of the project."
   echo " -m PROJECT MILESTONE {M1 M2 M3 M4}
-                          Milestone of the project."
+                          Milestone of the project.
+			  if is point release set milestone with .#
+		          .1 .2 .3"
   echo " -r RELEASE COMMIT {XXXXXX}
                           SCM Revision of the project, commit of branch tested."
   echo " -c RELEAE CANDIDATE {rc1 rc2 rcX}
@@ -236,6 +245,7 @@ usage(){
   exit
 }
 
+
 if [[ ( $# == "--help") ||  $# == "-h" || $# -eq 0 ]] ; then
     usage
     exit 0
diff --git a/testopia_update.py b/testopia_update.py
index 50c3325..0a3f7f5 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -14,7 +14,7 @@ DEFAULT_CONFIG_FILE = "testopia_update.config"
 DEFAULT_STORE_LOCATION = "/tmp/testopia_update"
 
 ACTIONS = ('create', 'update')
-BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
+BRANCHES = ('master', 'jethro', 'dizzy', 'daisy', 'noexists', "pyro")
 CATEGORIES = ('AUTO', 'MANUAL')
 
 
@@ -54,6 +54,31 @@ def load_opts(args, opts_list, opts):
                             'and --results-log if test run was already created')
             sys.exit(1)
 
+
+def connect_to_testopia():
+    config = None
+    opts = Options()
+
+    testopia_config = ['url', 'username', 'password', 'store_location']
+
+    if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
+        args.config = DEFAULT_CONFIG_FILE
+
+    if args.config:
+        config = ConfigParser.SafeConfigParser()
+        config.read(args.config)
+
+        for to in testopia_config:
+            setattr(opts, to, config.get("Testopia", to))
+
+    load_opts(args, testopia_config, opts)
+
+    if not os.path.exists(opts.store_location):
+        os.makedirs(opts.store_location)
+
+    return opts, config
+
+
 class Options(object):
     pass
 
@@ -132,25 +157,12 @@ if __name__ == '__main__':
         'project_version', 'project_milestone', 'project_revision',
         'project_date']
 
-    config = None
-    if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
-        args.config = DEFAULT_CONFIG_FILE
-
-    if args.config:
-        config = ConfigParser.SafeConfigParser()
-        config.read(args.config)
-
-        for to in testopia_config:
-            setattr(opts, to, config.get("Testopia", to))
-    load_opts(args, testopia_config, opts)
-
-    if not os.path.exists(opts.store_location):
-        os.makedirs(opts.store_location)
-
     kwargs = {}
     if args.plan_name:
         kwargs['plan_name'] = args.plan_name
 
+    opts, config = connect_to_testopia()
+
     testopia = Testopia(opts.username, opts.password, opts.url, sslverify=False)
     products = get_products(testopia, opts, logger, config, **kwargs)
 
-- 
2.11.0


