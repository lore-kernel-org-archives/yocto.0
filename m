Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1FDCE009EF; Wed, 24 Aug 2016 15:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4B3DE00874
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 15:21:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Aug 2016 15:21:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,572,1464678000"; d="scan'208";a="1019865155"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 24 Aug 2016 15:21:34 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Aug 2016 15:22:45 -0700
Message-Id: <1472077365-2634-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][PATCH] scripts/setup.sh: check java version
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
X-List-Received-Date: Wed, 24 Aug 2016 22:21:39 -0000

Make it obvious when run on autobuilder if java version is too low.
While we are at it, check that java is present.

[YOCTO #10156]

Borrowing heavily from:
http://stackoverflow.com/questions/7334754/correct-way-to-check-java-version-from-bash-script

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 75310ab..c2b32a4 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -67,6 +67,29 @@ if [ "x$url" != "x" ]; then
     [ "x$port" != "x" ] && PROXY_PARAM="${PROXY_PARAM} -Dhttp.proxyPort=$port"
 fi
 
+echo "#### Checking that Java is available ####"
+if type -p java; then
+    echo java found in PATH
+    _java=java
+elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]]; then
+    echo java found in JAVA_HOME
+    _java="$JAVA_HOME/bin/java"
+else
+    err_exit 2 "no java"
+fi
+echo "#### Checking that the appropriate Java version is available ####"
+JAVA_VER_STRING=1.8
+JAVA_VER_INT=001008
+if [[ "$_java" ]]; then
+    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
+    echo java version as string = $version 
+    version_int=$(echo "$version" | awk -F. '{printf("%03d%03d",$1,$2);}')
+    echo java version as integer = $version_int
+    if [ $version_int -lt $JAVA_VER_INT ]; then
+        err_exit 1 "Java version must be $JAVA_VER_STRING+"
+    fi
+fi
+
 # prepare the base Eclipse installation in folder "eclipse"
 ep_rel="R-"
 ep_ver="4.6"
-- 
2.7.4


