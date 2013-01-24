Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED608E014EB
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9E531401A2;
	Thu, 24 Jan 2013 15:33:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:37 +0100
Message-Id: <df2928081fc2f0bd17539f6d184b162bcde49b60.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <b2642813c55f55b1c93477516eb66cffb9782a94.1358931353.git.timo.mueller@bmw-carit.de>
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
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 13/17] plugins/sdk.ide: Add method to change values of the preference page
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

When switching profile the values of the profile are retrieved from
the preference store. The UI is updated using the retrieved values.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java                  | 5 +++++
 .../src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java   | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 309e1de..a28dce9 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -27,6 +27,7 @@ import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Listener;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 import org.yocto.sdk.ide.preferences.ProfileNameInputValidator;
+import org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
@@ -89,6 +90,10 @@ public class YoctoProfileSetting {
 
 				String selectedItem = sdkCombo.getItem(sdkCombo.getSelectionIndex());
 				profileElement.setSelectedProfile(selectedItem);
+
+				if (preferencePage instanceof YoctoSDKPreferencePage) {
+					((YoctoSDKPreferencePage) preferencePage).switchProfile(selectedItem);
+				}
 			}
 		};
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 64c9968..cb4a993 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -84,4 +84,10 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		yoctoUISetting.setCurrentInput(defaultElement);
 		super.performDefaults();
 	}
+
+	public void switchProfile(String selectedProfile) {
+		setPreferenceStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile));
+		YoctoUIElement profileElement = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
+		yoctoUISetting.setCurrentInput(profileElement);
+	}
 }
-- 
1.7.11.7


