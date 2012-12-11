Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D96B1E011AB
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 00:13:05 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 10BF040208;
	Tue, 11 Dec 2012 08:37:05 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue, 11 Dec 2012 09:13:03 +0100
Message-Id: <6d5b5b330f39a73a831f2d65887f5d055d523585.1355213278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <b440f373a0598aec02171958e7db35b85478aadf.1355213278.git.timo.mueller@bmw-carit.de>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
	<b3a6a0ce99676e3a40b6b83744bdff16a50215b6.1355213278.git.timo.mueller@bmw-carit.de>
	<b440f373a0598aec02171958e7db35b85478aadf.1355213278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1355213278.git.timo.mueller@bmw-carit.de>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 3/3] script/build.sh: Added option to enable building from local repository.
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

If the script is called with the -l option the local git repository is
used instead of the upstream repository.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 693dcf7..54081d5 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -7,6 +7,7 @@ help ()
   echo ""
   echo "Options:"
   echo "-h - display this help and exit"
+  echo "-l - use local git repository"
   echo "BRANCH_NAME - git branch name to build upon"
   echo "RELEAES_NAME - release name in the final output name"
   echo "TAG_NAME - git tag name to build upon. defaults to HEAD if not set"
@@ -67,11 +68,14 @@ check_env ()
 }
 
 USE_LOCAL_GIT_REPO=0
-while getopts ":h" opt; do
+while getopts ":lh" opt; do
 	case $opt in
 		h)
 			help
 			;;
+		l)
+			USE_LOCAL_GIT_REPO=1
+			;;
 	esac
 done
 shift $(($OPTIND - 1))
-- 
1.7.7.6


