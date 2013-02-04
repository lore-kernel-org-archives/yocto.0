Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F41E1E006CC
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2013 23:35:57 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CF37F40295;
	Mon,  4 Feb 2013 07:55:48 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Mon,  4 Feb 2013 08:35:40 +0100
Message-Id: <f7cfefba2277cefdc676af13088b56b2ae56569f.1359962724.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <f0bbdb07271d4c096067ac640627f26a735c7699.1359962724.git.timo.mueller@bmw-carit.de>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359962724.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359962724.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359962724.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359962724.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359962724.git.timo.mueller@bmw-carit.de>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v3 05/18] plugins/sdk.ide: Changed method signature to be more consistent
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
X-List-Received-Date: Mon, 04 Feb 2013 07:35:58 -0000

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


