Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F7A5E00CDF; Thu, 17 Jan 2019 01:49:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3304E00C71
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 01:49:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x0H9n8dG018264
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 01:49:08 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Thu, 17 Jan 2019 01:49:08 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 17 Jan 2019 17:49:05 +0800
Message-ID: <1547718545-238633-2-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1547718545-238633-1-git-send-email-changqing.li@windriver.com>
References: <CAJTo0LYJUjRiOV7hLTicNhwYqnqzHHAF52nXvAWj0x1hHSPdGg@mail.gmail.com>
	<1547718545-238633-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH V2] testsdk: enhance extract sdk part
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
X-List-Received-Date: Thu, 17 Jan 2019 09:49:13 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Current sdk type is tar.xz, but for mingw sdk, since we
have symlink under the sdk folder, 7zip which used to
extract tar.xz cannot handle it, refer 7zip upstream bug:
https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
so oe-core have add support of change SDK type to .zip, so correct
the extract function.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 lib/oeqa/sdkmingw/testsdk.py | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/lib/oeqa/sdkmingw/testsdk.py b/lib/oeqa/sdkmingw/testsdk.py
index 85fe3c6..173cfd9 100644
--- a/lib/oeqa/sdkmingw/testsdk.py
+++ b/lib/oeqa/sdkmingw/testsdk.py
@@ -12,7 +12,7 @@ class TestSDKMinGW(TestSDK):
         """
         Get the name of the SDK file
         """
-        return d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.xz")
+        return d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.${SDK_ARCHIVE_TYPE}")
 
     def extract_sdk(self, tcname, sdk_dir, d):
         """
@@ -23,7 +23,14 @@ class TestSDKMinGW(TestSDK):
         try:
             # TODO: It would be nice to try and extract the SDK in Wine to make
             # sure it is well formed
-            subprocess.check_output(['tar', '-xf', tcname, '-C', sdk_dir])
+            
+            # TODO: Extract SDK according to SDK_ARCHIVE_TYPE, need to change if
+            # oe-core support other types.
+            if d.getVar("SDK_ARCHIVE_TYPE") == "zip":
+                subprocess.check_output(['unzip', '-d', sdk_dir, tcname])
+            else:
+                subprocess.check_output(['tar', '-xf', tcname, '-C', sdk_dir])
+
         except subprocess.CalledProcessError as e:
             bb.fatal("Couldn't install the SDK:\n%s" % e.output.decode("utf-8"))
 
-- 
2.7.4


