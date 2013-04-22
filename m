Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F49E014F7
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:16 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id q11so146862bkw.41
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=/y5t3rS1rZX+1y/DK7R+3jIscVwrrLWzCnP8i0q+LaQ=;
	b=A7CJmFEuJ3mIktMofmEaq1eU/wLFq/kDQEtb07z1dP7Xu4KU8n94C/TcjPi6bnVdv+
	W4i5o3ezpyMROdic6SubWLc0mp7LBk7DCbvRCWGO0IPyIVA/API0CEKKFmM2svr6XLQ3
	0S4vVz89KMkEywHHTUTeSbrkD0weMbhft8Uysd38tN4njEPtB9rgX3OlRrKJlNw+NTbh
	uDxLV1U8YZN5m5jBw3AN+d4JJ2Cppe/ncHzloLAvopyqr01vb2xFeDVTJtVgUW/zWFQj
	oJvMbaSEHuK15elmNX9vD6v8MniO69affoDYNne7cIcJEgmuG0l5yLtcaNy6qiNIvXpo
	V1bA==
X-Received: by 10.204.166.133 with SMTP id m5mr10855109bky.78.1366632376082;
	Mon, 22 Apr 2013 05:06:16 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id cv9sm6751434bkb.5.2013.04.22.05.06.15
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 22 Apr 2013 05:06:15 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Apr 2013 14:06:01 +0200
Message-Id: <1366632363-6064-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFC 4/6] plugins/sdk.ide: Update CMake projects on Yocto settings change
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
X-List-Received-Date: Mon, 22 Apr 2013 12:06:17 -0000

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


