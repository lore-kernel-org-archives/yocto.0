Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB2BE01474
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 04:03:32 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.86])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B492140050;
	Tue, 22 Jan 2013 12:24:20 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 22 Jan 2013 13:03:17 +0100
Message-Id: <4615918a18be03fdfc0971c560c039eb9bfba7b6.1357292047.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1357292047.git.timo.mueller@bmw-carit.de>
References: <cover.1357292047.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH] scripts/build.sh: Fixed local build to use the correct repository path
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
X-List-Received-Date: Tue, 22 Jan 2013 12:03:32 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 54081d5..8d8b4c3 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -115,7 +115,7 @@ mkdir ${BUILD_DIR} || fail $? "Create temporary build directory ${BUILD_DIR}"
 GIT_URL=git://git.pokylinux.org/eclipse-poky.git
 if [ $USE_LOCAL_GIT_REPO -eq 1 ]; then
 	SCRIPT_DIR=`dirname $0`
-	GIT_DIR=`readlink -f ${SCRIPTDIR}\..`
+	GIT_DIR=`readlink -f ${SCRIPT_DIR}\..`
 	GIT_URL="file://${GIT_DIR}"
 fi
 
-- 
1.7.11.7


