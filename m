Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8808CE006D5
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 02:32:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 61713401D4;
	Fri, 30 Nov 2012 10:57:45 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 11:32:53 +0100
Message-Id: <8df739d248f46a98aee50ef6167a70d1b78ecdb8.1354197844.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <90e541cc03aea0bb0a1700bb1375eac6c4be5e16.1354197844.git.timo.mueller@bmw-carit.de>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
	<90e541cc03aea0bb0a1700bb1375eac6c4be5e16.1354197844.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354197844.git.timo.mueller@bmw-carit.de>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 2/3] scripts/build.sh: Added help option to the cmdline
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Nov 2012 10:32:58 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Calling the build script with the -h option will now show the usage.
The cmdline parsing can be extended to add new options in the future.
---
 scripts/build.sh |   18 ++++++++++++++----
 1 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 4ade936..2d4452e 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -3,12 +3,13 @@
 help ()
 {
   echo "Build the Yocto Eclipse plugins"
-  echo "Usage: $0 <branch name> <release name>";
+  echo "Usage: $0 [OPTIONS] BRANCH_NAME RELEASE_NAME [TAG_NAME]";
   echo ""
   echo "Options:"
-  echo "<branch name> - git branch name to build upon"
-  echo "<release name> - release name in the final output name"
-  echo "[tag name] - git tag name to build upon. defaults to master if not set"
+  echo "-h - display this help and exit"
+  echo "BRANCH_NAME - git branch name to build upon"
+  echo "RELEAES_NAME - release name in the final output name"
+  echo "TAG_NAME - git tag name to build upon. defaults to HEAD if not set"
   echo ""
   echo "Example: $0 master r0 M1.1_rc1";
   exit 1;
@@ -66,6 +67,15 @@ check_env ()
 }
 
 USE_LOCAL_GIT_REPO=0
+while getopts ":h" opt; do
+	case $opt in
+		h)
+			help
+			;;
+	esac
+done
+shift $(($OPTIND - 1))
+
 
 if [ $# -ne 2 ] && [ $# -ne 3 ]; then 
    help
-- 
1.7.7.6


