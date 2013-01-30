Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8DA4E006CC
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:54:35 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 8EAB940072;
	Wed, 30 Jan 2013 14:14:47 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:54:32 +0100
Message-Id: <fab21e2ca9a76cc3a56df08905f672839f5cea34.1359540840.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH] scripts/build.sh: Fixed determination of repository path for local builds
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
X-List-Received-Date: Wed, 30 Jan 2013 13:54:36 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The path to the local repository is assumed to be one level above the
scripts folder.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
After cleaning my repository I came across another mistake in the
local build. I have no idea why it had worked before and am very
sorry about this.

In conclusion I retested every possible combination of building
(in-tree, out-of-tree, absolute and relative paths, etc.) to make sure
that this finally enables the local build for everyone.

Again, sorry about this mistake.

Best regards,
Timo

 scripts/build.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 8d8b4c3..e1ec5fc 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -115,7 +115,7 @@ mkdir ${BUILD_DIR} || fail $? "Create temporary build directory ${BUILD_DIR}"
 GIT_URL=git://git.pokylinux.org/eclipse-poky.git
 if [ $USE_LOCAL_GIT_REPO -eq 1 ]; then
 	SCRIPT_DIR=`dirname $0`
-	GIT_DIR=`readlink -f ${SCRIPT_DIR}\..`
+	GIT_DIR=`readlink -f ${SCRIPT_DIR}/..`
 	GIT_URL="file://${GIT_DIR}"
 fi
 
-- 
1.7.11.7


