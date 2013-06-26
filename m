Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C902BE01561
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 23:59:23 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 780CD40074;
	Wed, 26 Jun 2013 08:02:38 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 26 Jun 2013 08:59:20 +0200
Message-Id: <1372229960-3656-1-git-send-email-mail@timomueller.eu>
X-Mailer: git-send-email 1.8.1.4
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse-poky][PATCH] plugin/sdk.ide: Pre-populate project specific profile form
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
X-List-Received-Date: Wed, 26 Jun 2013 06:59:24 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

On initial setup the profile form is populated with the values from
the previously selected target profile. This allows the user to
quickly make project specific adaptions of an existing profile.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../sdk/ide/preferences/YoctoSDKProjectPropertyPage.java   | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 9f99caf..408ce76 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -31,14 +31,15 @@ import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
+import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 
 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IWorkbenchPropertyPage {
@@ -288,6 +289,15 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 	public void switchToProjectSpecificProfile()
 	{
 		YoctoUIElement profileElement = getElemFromProjectPreferences(getProject());
+		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(profileElement);
+
+		if ((result != SDKCheckResults.SDK_PASS)) {
+			/* Project specific profile has not yet been defined,
+			 * leave settings from previously selected profile
+			 */
+			return;
+		}
+
 		yoctoUISetting.setCurrentInput(profileElement);
 	}
 
-- 
1.8.1.4


