Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52846E014DF
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 06E9A40059;
	Thu, 24 Jan 2013 15:33:26 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:40 +0100
Message-Id: <ad91291c6658bba7fa7d233c6fbce28bfcf71afe.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <f13030b325bb0aa49cae4e760b0baf5cd0907158.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
	<40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
	<23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
	<9869d2f21c4130954187409afc51fad59f63a875.1358931353.git.timo.mueller@bmw-carit.de>
	<1c7c3a16057f2f7a2aef5fe4a57de42a0120e9d6.1358931353.git.timo.mueller@bmw-carit.de>
	<a5eee2a7452cca8bd663b5e325ff1248d6ea3262.1358931353.git.timo.mueller@bmw-carit.de>
	<d04dc1a2af924306a72639c3f7333caffd0020c5.1358931353.git.timo.mueller@bmw-carit.de>
	<b4ad7e61561eeb245f481b64d3d5d7545af41805.1358931353.git.timo.mueller@bmw-carit.de>
	<b2642813c55f55b1c93477516eb66cffb9782a94.1358931353.git.timo.mueller@bmw-carit.de>
	<df2928081fc2f0bd17539f6d184b162bcde49b60.1358931353.git.timo.mueller@bmw-carit.de>
	<73bc9788ec61bbc519d7580f5aeee0fe08ba08a2.1358931353.git.timo.mueller@bmw-carit.de>
	<f13030b325bb0aa49cae4e760b0baf5cd0907158.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 16/17] plugins/sdk.ide: Use profiles for the preference page
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:46 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The preference page is now aware of profiles. By default the standard
profile is used and the values are stored to its preference store. If
a different profile is selected it's preferences store is used
instead.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../ide/preferences/YoctoSDKPreferencePage.java    | 34 +++++++++++++++++-----
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 8f6111b..eb7a393 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -11,6 +11,7 @@
 package org.yocto.sdk.ide.preferences;
 
 import org.eclipse.jface.dialogs.Dialog;
+import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.widgets.Composite;
@@ -18,6 +19,8 @@ import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPreferencePage;
 import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
@@ -25,17 +28,30 @@ import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
 public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbenchPreferencePage {
-    
+
+	private YoctoProfileSetting yoctoProfileSetting;
 	private YoctoUISetting yoctoUISetting;
 
 	public YoctoSDKPreferencePage() {
 		//super(GRID);
-        setPreferenceStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
-        //setDescription(YoctoSDKMessages.getString(PREFERENCES_Yocto_CONFIG));
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromDefaultStore();
-        this.yoctoUISetting = new YoctoUISetting(elem);
+		IPreferenceStore defaultStore = YoctoSDKPlugin.getDefault().getPreferenceStore();
+		String profiles = defaultStore.getString(PreferenceConstants.PROFILES);
+		String selectedProfile = defaultStore.getString(PreferenceConstants.SELECTED_PROFILE);
+
+		if (profiles.isEmpty()) {
+			profiles = defaultStore.getDefaultString(PreferenceConstants.PROFILES);
+			selectedProfile = defaultStore.getDefaultString(PreferenceConstants.SELECTED_PROFILE);
+		}
+
+		setPreferenceStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile));
+		//setDescription(YoctoSDKMessages.getString(PREFERENCES_Yocto_CONFIG));
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
+		this.yoctoUISetting = new YoctoUISetting(elem);
+
+		YoctoProfileElement profileElement = new YoctoProfileElement(profiles, selectedProfile);
+		this.yoctoProfileSetting = new YoctoProfileSetting(profileElement, this);
 	}
-	
+
 	/*
 	 * @see IWorkbenchPreferencePage#init(IWorkbench)
 	 */
@@ -66,7 +82,10 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
 
 			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
-			YoctoSDKUtils.saveElemToDefaultStore(elem);
+			YoctoSDKUtils.saveElemToStore(elem, getPreferenceStore());
+
+			YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
+			YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
 
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
@@ -76,6 +95,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		}
 	}
 
+
 	/*
 	 * @see PreferencePage#performDefaults()
 	 */
-- 
1.7.11.7


