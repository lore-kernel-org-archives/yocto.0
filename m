Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A029DE00C4D; Wed, 16 Jan 2019 01:36:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F7DE00C28
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 01:36:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0G9abbF009101
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 01:36:37 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Wed, 16 Jan 2019 01:36:36 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 Jan 2019 17:36:35 +0800
Message-ID: <1547631395-435805-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] mingw32-common: change mingw sdk to .zip type
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
X-List-Received-Date: Wed, 16 Jan 2019 09:36:38 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Current sdk type is tar.xz, but for mingw sdk, since we
have symlink under the sdk folder, 7zip which used to
extract tar.xz cannot handle it, refer 7zip upstream bug:
https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
so change to .zip type

Also tried to use option --dereference of tar which use means:
"follow symlinks; archive and dump the files they point to"
with this option, when archive it will deal with symlink to hard link,
but windows not support hard link, so drop this solution,
and use .zip for windows.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 9011ded..dbad50a 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -46,3 +46,8 @@ GCCPIE_mingw32 = ""
 # wine and wineserver are required to test MinGW SDKs
 HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
 
+# mingw sdk use .zip type
+SDK_TAR_TYPE = "zip"
+SDK_TAR_DEPENDS = "zip-native"
+SDK_TAR_CMD ?= "zip -r  ${SDKDEPLOYDIR}/${TOOLCHAIN_OUTPUTNAME}.${SDK_TAR_TYPE} ."
+
-- 
2.7.4


