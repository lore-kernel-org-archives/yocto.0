Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86CB3E00348
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 02:32:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7F74B40208;
	Fri, 30 Nov 2012 10:57:45 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 11:32:54 +0100
Message-Id: <fd3842fc8e5038f71d74ec93b8518c4aff8a5dc2.1354197844.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <8df739d248f46a98aee50ef6167a70d1b78ecdb8.1354197844.git.timo.mueller@bmw-carit.de>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
	<90e541cc03aea0bb0a1700bb1375eac6c4be5e16.1354197844.git.timo.mueller@bmw-carit.de>
	<8df739d248f46a98aee50ef6167a70d1b78ecdb8.1354197844.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354197844.git.timo.mueller@bmw-carit.de>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 3/3] script/build.sh: Added option to enable building from local repository.
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

If the script is called with the -l option the local git repository is
used instead of the upstream repository.
---
 scripts/build.sh |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 2d4452e..5dbdd4a 100755
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


