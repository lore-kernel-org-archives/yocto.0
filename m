Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 244D9E0151C
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:48 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id jf3so1218440bkc.21
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=/y5t3rS1rZX+1y/DK7R+3jIscVwrrLWzCnP8i0q+LaQ=;
	b=1DcJ8j10LXBYRZ46z9yHUkWnr2ByYAkSR78jTM/APb1nTKMAjfUKOSsBDbGPbEgbyC
	DaAnwJVIf8tNKx6ay5oXpfHn4A/jxU8XnXiSOucepHWW2WXrk4bxFQ/5QuGVEt+U089y
	Nr3rbz4uFEVq2oFv/ZgLCNwP+goTW+G7fmwngjOpHqtLQ/szy95UdQhf5Wdd/ekFc46/
	OHVpS3W0GuG+soFGjPgefdTyjJ8M61BOPwKLYLAuwbqdR7h9D2tj7P9EAINFKxaZN/xd
	qGrnGLy2Nt/4og+fmCP0OHb2f6WuDRqv4M83isT9UeOQvrcpipHfJgEjSrlLpaRhErdu
	ABIA==
X-Received: by 10.205.99.130 with SMTP id cs2mr15422303bkc.118.1366893168300; 
	Thu, 25 Apr 2013 05:32:48 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.47
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:47 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:30 +0200
Message-Id: <1366893153-9880-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFCv2 4/7] plugins/sdk.ide: Update CMake projects on Yocto settings change
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:49 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

CMake projects will use additional variables in
the environment. They have to be set if the Yocto
settings are changed.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 1e2e424..f27fad7 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -55,6 +55,7 @@ import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKCMakeProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
@@ -427,9 +428,13 @@ public class YoctoSDKUtils {
 
 		try {
 			setEnvironmentVariables(project, elem);
-			if(project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
+
+			if (project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
 				YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
+			} else if (project.hasNature(YoctoSDKCMakeProjectNature.YoctoSDK_CMAKE_NATURE_ID)) {
+				YoctoSDKCMakeProjectNature.extendProjectEnvironmentForCMake(project);
 			}
+
 			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
 			console.start(project);
 			consoleOutStream = console.getOutputStream();
-- 
1.7.9.5


