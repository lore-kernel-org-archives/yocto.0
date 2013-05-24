Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 205ABE014A7
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:36 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id c41so2556008eek.23
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=/y5t3rS1rZX+1y/DK7R+3jIscVwrrLWzCnP8i0q+LaQ=;
	b=xe7LkBgYu35rz67S3MBoKRduJJaO9Q3AhtEQQmREdwAlh6msSP3Tz2NgzlPr8pnagK
	sKYu+mV2ppmhZhSjK0H2VC4HEkblHbLFtT2Ahj4o87fmjiJ28hidkmTK/vEFMgQefcZK
	PN88ZH6B0H6A2kkSdAQDaGKrkWm/IbNW5eHJtNj5H1KI0NnBvR8SpiBPH80Z21CSrwOu
	xlmTee2Wz+y+fC2f1Qx5C3grrsnAGJsvsQi1Ljsm96s8iKYolIyvu3UAsEFmWy+hXy2h
	mpacVHRtkMz/Jc1abDusLw6r4aBMso7Xk53aNIVEAs7GeZpMsErw0V/bTCmxSUVcM6r9
	3V9w==
X-Received: by 10.15.24.72 with SMTP id i48mr42674525eeu.37.1369397015934;
	Fri, 24 May 2013 05:03:35 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id y10sm23198135eev.3.2013.05.24.05.03.35
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 May 2013 05:03:35 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 14:03:22 +0200
Message-Id: <1369397005-3262-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 4/7] plugins/sdk.ide: Update CMake projects on Yocto settings change
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
X-List-Received-Date: Fri, 24 May 2013 12:03:37 -0000

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


