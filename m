Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 858B4E002AB
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 02:32:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 440B840098;
	Fri, 30 Nov 2012 10:57:45 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 11:32:52 +0100
Message-Id: <90e541cc03aea0bb0a1700bb1375eac6c4be5e16.1354197844.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1354197844.git.timo.mueller@bmw-carit.de>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354197844.git.timo.mueller@bmw-carit.de>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 1/3] scripts/build.sh: Added function to use the local repository for building
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

If USE_LOCAL_GIT_REPO is set to 1 the build scripts uses the local
repository of the eclipse poky project for building instead of the
upstream project. The local repository is derived from the location
for the build script.
---
 scripts/build.sh |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index f705546..4ade936 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -65,6 +65,8 @@ check_env ()
   fi 
 }
 
+USE_LOCAL_GIT_REPO=0
+
 if [ $# -ne 2 ] && [ $# -ne 3 ]; then 
    help
 fi
@@ -97,6 +99,12 @@ mkdir ${BUILD_DIR} || fail $? "Create temporary build directory ${BUILD_DIR}"
 
 #git clone
 GIT_URL=git://git.pokylinux.org/eclipse-poky.git
+if [ $USE_LOCAL_GIT_REPO -eq 1 ]; then
+	SCRIPT_DIR=`dirname $0`
+	GIT_DIR=`readlink -f ${SCRIPTDIR}\..`
+	GIT_URL="file://${GIT_DIR}"
+fi
+
 GIT_DIR=${BUILD_SRC}
 #mkdir ${GIT_DIR}
 #cp -r features/ ${GIT_DIR}
-- 
1.7.7.6


