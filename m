Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5ABDBE014A5
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:20 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 0957640037;
	Fri,  8 Feb 2013 13:45:51 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:26:13 +0100
Message-Id: <d7cdd7e0ce1a0d9acace7304b5e97b28e04f303e.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <322e2e98dc047a05cf61ee6c259db06d4b7e7671.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
	<e70ea91624d01d512b1bec5ad97d9ba47f588771.1360326346.git.timo.mueller@bmw-carit.de>
	<3fec00c8d8c2c4894854c78b4033359aead5409f.1360326346.git.timo.mueller@bmw-carit.de>
	<55bbacc9719bafa4fba381ca4f8f161adb163269.1360326346.git.timo.mueller@bmw-carit.de>
	<71a8d6fe7cb972095795a24d7405682e52ae88a2.1360326346.git.timo.mueller@bmw-carit.de>
	<d3cfcdee95efc3d46c0561823849afb858f3096c.1360326346.git.timo.mueller@bmw-carit.de>
	<b028abd6861fc1db486627617ab17419dbf7cf58.1360326346.git.timo.mueller@bmw-carit.de>
	<ddb9c6bed6d09559850e4c5d141ae72452c0cab7.1360326346.git.timo.mueller@bmw-carit.de>
	<b42a923a5c10d5b8194f93614abc02b359dbf00b.1360326346.git.timo.mueller@bmw-carit.de>
	<2e551dabad2d725a813c40575628e662cfca15ba.1360326346.git.timo.mueller@bmw-carit.de>
	<77cc790e19ef52b0731dc9d68b63814c17fc725d.1360326346.git.timo.mueller@bmw-carit.de>
	<8d4a09888c692cca0947f6d010a116034afa9525.1360326346.git.timo.mueller@bmw-carit.de>
	<2866b7e5be8b3c8ced44bb215a2402ef0881587b.1360326346.git.timo.mueller@bmw-carit.de>
	<8bfea163404050b0be38624f822e9838343fc53d.1360326346.git.timo.mueller@bmw-carit.de>
	<62b81d56c39d69e23e438986bf151c2aa4389371.1360326346.git.timo.mueller@bmw-carit.de>
	<322e2e98dc047a05cf61ee6c259db06d4b7e7671.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 16/17] plugins/sdk.ide: Use profiles for the preference page
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
X-List-Received-Date: Fri, 08 Feb 2013 13:26:20 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The preference page is now aware of profiles. By default the standard
profile is used and the values are stored to its preference store. If
a different profile is selected it's preferences store is used
instead.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../ide/preferences/YoctoSDKPreferencePage.java    | 28 +++++++++++++++++-----
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 276e366..8dc089b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -13,6 +13,7 @@ package org.yocto.sdk.ide.preferences;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.jface.dialogs.InputDialog;
+import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.widgets.Composite;
@@ -39,12 +40,24 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
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
@@ -75,7 +88,10 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
 
 			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
-			YoctoSDKUtils.saveElemToDefaultStore(elem);
+			YoctoSDKUtils.saveElemToStore(elem, getPreferenceStore());
+
+			YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
+			YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
 
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
-- 
1.7.11.7


