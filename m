Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59228E014E3
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 949B24025C;
	Thu, 24 Jan 2013 15:33:24 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:29 +0100
Message-Id: <40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 05/17] plugins/sdk.ide: Changed method signature to be more consistent
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

YoctoUIElement should always be the first element, e.g. as in
saveElemToStore().

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java      | 2 +-
 .../src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 7ea4262..ab969ea 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -423,7 +423,7 @@ public class YoctoSDKUtils {
 	}
 	
 	/* Save YoctoUIElement to project settings */
-	public static void saveElemToProjectEnv(IProject project, YoctoUIElement elem)
+	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project)
 	{
 		ConsoleOutputStream consoleOutStream = null;
 		
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 92d476a..f2247ca 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -99,7 +99,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
 
 			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
-			YoctoSDKUtils.saveElemToProjectEnv(getProject(), elem);
+			YoctoSDKUtils.saveElemToProjectEnv(elem, getProject());
 
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
-- 
1.7.11.7


