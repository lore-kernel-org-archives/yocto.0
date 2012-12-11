Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6C85E00770
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 00:13:05 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E82B0400E8;
	Tue, 11 Dec 2012 08:37:04 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue, 11 Dec 2012 09:13:02 +0100
Message-Id: <b440f373a0598aec02171958e7db35b85478aadf.1355213278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <b3a6a0ce99676e3a40b6b83744bdff16a50215b6.1355213278.git.timo.mueller@bmw-carit.de>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
	<b3a6a0ce99676e3a40b6b83744bdff16a50215b6.1355213278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1355213278.git.timo.mueller@bmw-carit.de>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 2/3] scripts/build.sh: Added help option to the cmdline
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
X-List-Received-Date: Tue, 11 Dec 2012 08:13:06 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Calling the build script with the -h option will now show the usage.
The cmdline parsing can be extended to add new options in the future.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh |   18 ++++++++++++++----
 1 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index cbb7375..693dcf7 100755
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


