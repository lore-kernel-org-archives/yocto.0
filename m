Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5D89E00B5E; Thu, 18 Oct 2018 00:49:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D972E00A0C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 00:49:54 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w9I7npKJ027970
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Oct 2018 00:49:51 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Thu, 18 Oct 2018 00:49:45 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 18 Oct 2018 15:49:43 +0800
Message-ID: <1539848983-135358-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH][meta-mingw] mingw32-common: only export WINDRES/RC for SDK build
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
X-List-Received-Date: Thu, 18 Oct 2018 07:49:55 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Fix below problem:
MACHINE=intel-x86-64
SDKMACHINE = "i686-mingw32"
bitbake freetype

do_compile failed with below error:
x86_64-wrs-linux-libtool: compile:  x86_64-wrs-linux-windres
--include-dir=work/corei7-64-wrs-linux/freetype/2.9.1-r0/recipe-sysroot/usr/include
/work/corei7-64-wrs-linux/freetype/2.9.1-r0/freetype-2.9.1/src/base/ftver.rc
-o work/corei7-64-wrs-linux/freetype/2.9.1-r0/build/.libs/ftver.o
work/corei7-64-wrs-linux/freetype/2.9.1-r0/build//x86_64-wrs-linux-libtool:
line 1752: x86_64-wrs-linux-windres: command not found

we don't want to use windres for target build, only export WINDRES/RC when build
SDK. SDK_OS = "mingw32", so use this override to fix it.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 07b103a..92bd184 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -28,8 +28,11 @@ SDKPKGSUFFIX = "nativesdk-mingw32"
 
 MACHINEOVERRIDES .= ":sdkmingw32"
 
-export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
-export RC = "${WINDRES}"
+WINDRES_mingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
+RC_mingw32 = "${WINDRES}"
+
+export WINDRES
+export RC
 
 BB_HASHBASE_WHITELIST_append = " WINDRES RC"
 
-- 
2.7.4


