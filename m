Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C30E00CD5; Mon, 16 Sep 2019 19:34:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 929A9E0098A
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 19:34:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8H2YHAR013457
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Sep 2019 19:34:17 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Mon, 16 Sep 2019 19:34:16 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2019 10:34:13 +0800
Message-ID: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 1/2] README.build: update steps for communtiy
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
X-List-Received-Date: Tue, 17 Sep 2019 02:34:21 -0000
Content-Type: text/plain

Since the layer is now published via the Yocto Project and
git.yoctoproject.org, we should update steps in README.build

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.build | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/README.build b/README.build
index df3f4e4..9735028 100644
--- a/README.build
+++ b/README.build
@@ -36,6 +36,14 @@ In order to build a precompiled version of the binary, you must first
 construct a target system that includes a target development environment
 and meta-openssl102-fips layer without feature/openssl-fips
 
+The easiest way to do this with Yocto is include this layer [1]
+and meta-openssl102 [2], and install packagegroup-core-buildessential
+to image [3]
+
+[1] git://git.yoctoproject.org/meta-openssl102
+[2] git://git.yoctoproject.org/meta-openssl102-fips
+[3] echo "IMAGE_INSTALL += 'packagegroup-core-buildessential'" >> conf/local.conf
+
 The easiest way to do this with Wind River Linux is include:
 
     --templates features/target-toolchain --layers meta-openssl102-fips
@@ -112,13 +120,16 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
     Move the tar archive back to your host project into a directory accessable
     by the build system.
 
-5.  Configure the build system to include the template feature/openssl-fips
-    and locate your custom prebuilt tar archive:
-    In your build directory, edit conf/local.conf, add:
+5.  Configure the build system to enable openssl-fips and locate your custom
+    prebuilt tar archive.
 
-    WRTEMPLATE += "feature/openssl-fips"
+    For Yocto, in your build directory, edit conf/local.conf, add:
+      OPENSSL_FIPS_ENABLED = "1"
+      OPENSSL_FIPS_PREBUILT = "<path>"
 
-    OPENSSL_FIPS_PREBUILT = "<path>"
+    For Wind River Linux, in your build directory, edit conf/local.conf, add:
+      WRTEMPLATE += "feature/openssl-fips"
+      OPENSSL_FIPS_PREBUILT = "<path>"
 
     Where path is the location on the host with the prebuilt openssl-fips.
 
-- 
2.7.4


