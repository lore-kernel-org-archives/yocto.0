Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6BBBE006C3
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 00:13:05 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CA333400B2;
	Tue, 11 Dec 2012 08:37:04 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue, 11 Dec 2012 09:13:01 +0100
Message-Id: <b3a6a0ce99676e3a40b6b83744bdff16a50215b6.1355213278.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1355213278.git.timo.mueller@bmw-carit.de>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1355213278.git.timo.mueller@bmw-carit.de>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 1/3] scripts/build.sh: Added function to use the local repository for building
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

If USE_LOCAL_GIT_REPO is set to 1 the build scripts uses the local
repository of the eclipse poky project for building instead of the
upstream project. The local repository is derived from the location
for the build script.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index de81ce3..cbb7375 100755
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


