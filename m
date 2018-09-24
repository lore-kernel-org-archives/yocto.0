Return-Path: <jef.driesen@niko.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06CBBE00A4F; Mon, 24 Sep 2018 05:22:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.130.132.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 300 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Sep 2018 05:22:03 PDT
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be
	[195.130.132.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF6CDE003DB
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 05:22:03 -0700 (PDT)
Received: from barracuda.home.lan
	([IPv6:2a02:1810:4f00:f900:208:9bff:fec2:1e15])
	by baptiste.telenet-ops.be with bizsmtp
	id fQH11y00X2H4v4V01QH1Bh; Mon, 24 Sep 2018 14:17:01 +0200
Received: from w7pt-jdi.1.0.0.1 (84-199-78-189.ifiber.telenet-ops.be
	[84.199.78.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by barracuda.home.lan (Postfix) with ESMTPSA id C7B254080D;
	Mon, 24 Sep 2018 14:17:00 +0200 (CEST)
From: Jef Driesen <jef.driesen@niko.eu>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 24 Sep 2018 14:16:41 +0200
Message-Id: <1537791401-12098-1-git-send-email-jef.driesen@niko.eu>
X-Mailer: git-send-email 2.7.4
Cc: yocto@yoctoproject.org
Subject: [PATCH] msbuild: add ca-certificates for curl
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
X-List-Received-Date: Mon, 24 Sep 2018 12:22:06 -0000

The msbuild bootstrap scripts uses curl to download some pre-build files. The
ca-certificates are required in order to support https. The CURL_CA_BUNDLE is
used to override the built-in path, because this is hardcoded to curl's own
sysroot, which may already be removed when building msbuild.

Signed-off-by: Jef Driesen <jef.driesen@niko.eu>
---
 recipes-mono/msbuild/msbuild_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-mono/msbuild/msbuild_git.bb b/recipes-mono/msbuild/msbuild_git.bb
index 8a89543..6a6761a 100644
--- a/recipes-mono/msbuild/msbuild_git.bb
+++ b/recipes-mono/msbuild/msbuild_git.bb
@@ -4,7 +4,7 @@ SECTION = "console/apps"
 LICENSE = "MIT"
 DEPENDS = " \
 			coreutils-native findutils-native curl-native \
-			unzip-native mono-native \
+			unzip-native mono-native ca-certificates-native \
 		"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=768c552053144071f8ef7e5621714b0a"
@@ -23,7 +23,7 @@ SRC_URI = " \
 S = "${WORKDIR}/git"
 
 do_compile () {
-	./cibuild.sh --scope Compile --host Mono --target Mono --config Release --bootstrap-only
+	CURL_CA_BUNDLE=${STAGING_DIR_NATIVE}/etc/ssl/certs/ca-certificates.crt ./cibuild.sh --scope Compile --host Mono --target Mono --config Release --bootstrap-only
 }
 
 do_install () {
-- 
2.7.4


