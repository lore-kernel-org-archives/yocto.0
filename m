Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AEEAE014E4
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id D8E0F40276;
	Thu, 24 Jan 2013 15:33:24 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:31 +0100
Message-Id: <9869d2f21c4130954187409afc51fad59f63a875.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
	<40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
	<23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 07/17] plugins/sdk.ide: Modified preferences storage to support profiles.
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

Yocto preferences are now stored using a user-defined name that
identifies a target profile. To store these preferences eclipse'
scoped preferences provider is used. The filename in the eclipse
configuration area is derived from the unique target profile name.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      | 15 ++++++
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   | 10 ++--
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 60 +++++++++++++++++-----
 .../sdk/ide/preferences/PreferenceConstants.java   |  4 ++
 .../sdk/ide/preferences/PreferenceInitializer.java | 22 ++++----
 .../ide/preferences/YoctoSDKPreferencePage.java    | 36 ++++---------
 .../preferences/YoctoSDKProjectPropertyPage.java   |  4 +-
 7 files changed, 99 insertions(+), 52 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java
index b0b5447..8956fea 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java
@@ -16,9 +16,12 @@ import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
+import org.eclipse.core.runtime.preferences.InstanceScope;
+import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.ui.IWorkbenchWindow;
 import org.eclipse.ui.plugin.AbstractUIPlugin;
+import org.eclipse.ui.preferences.ScopedPreferenceStore;
 import org.osgi.framework.BundleContext;
 
 /**
@@ -65,6 +68,18 @@ public class YoctoSDKPlugin extends AbstractUIPlugin {
 		return plugin;
 	}
 
+	public static IPreferenceStore getProfilePreferenceStore(String profileName) {
+		int profileIdentifier = profileName.hashCode();
+
+		return new ScopedPreferenceStore(InstanceScope.INSTANCE,getUniqueIdentifier() + "." + profileIdentifier);
+	}
+
+	public static IPreferenceStore getProfilePreferenceStore(String profileName) {
+		int profileIdentifier = profileName.hashCode();
+
+		return new ScopedPreferenceStore(InstanceScope.INSTANCE,getUniqueIdentifier() + "." + profileIdentifier);
+	}
+
 	public static void log(IStatus status) {
 		ResourcesPlugin.getPlugin().getLog().log(status);
 	}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
index ec49dcc..6f16732 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
@@ -18,10 +18,13 @@ import java.util.HashMap;
 import java.util.HashSet;
 import java.util.Set;
 import java.util.StringTokenizer;
+
 import org.eclipse.cdt.core.model.CoreModel;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
 import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
+import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
+import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
 import org.eclipse.cdt.managedbuilder.core.IConfiguration;
 import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
 import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
@@ -34,8 +37,7 @@ import org.eclipse.debug.core.ILaunchConfiguration;
 import org.eclipse.debug.core.ILaunchConfigurationType;
 import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
 import org.eclipse.debug.core.ILaunchManager;
-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
-import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
+import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
 
 
@@ -151,7 +153,9 @@ public class YoctoSDKProjectNature implements IProjectNature {
 	}
 
 	public static void configureAutotools(IProject project) throws YoctoGeneralException {
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore();
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
 		YoctoSDKUtils.SDKCheckResults result = YoctoSDKUtils.checkYoctoSDK(elem);
 		if (result != YoctoSDKUtils.SDKCheckResults.SDK_PASS){		
 			String strErrorMsg =  YoctoSDKUtils.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index ab969ea..12af7e3 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -7,6 +7,7 @@
  *
  * Contributors:
  * Intel - initial API and implementation
+ * BMW Car IT - add methods to use different preference stores
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
@@ -16,7 +17,6 @@ import java.io.FileReader;
 import java.io.FilenameFilter;
 import java.io.IOException;
 import java.io.InputStream;
-import java.io.OutputStream;
 import java.io.InputStreamReader;
 import java.util.HashMap;
 import java.util.Iterator;
@@ -38,6 +38,7 @@ import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoSDKUtils {
+
 	public static enum SDKCheckResults {
 		SDK_PASS,
 		POKY_DEVICE_EMPTY,
@@ -396,7 +397,7 @@ public class YoctoSDKUtils {
 
 	}
 
-	/* Load project wide POKY Preference settings into YoctoUIElement */
+	/* Get POKY Preference settings from project's environment */
 	public static YoctoUIElement getElemFromProjectEnv(IProject project)
 	{
 		YoctoUIElement elem = new YoctoUIElement();
@@ -422,7 +423,7 @@ public class YoctoSDKUtils {
 		return elem;
 	}
 	
-	/* Save YoctoUIElement to project settings */
+	/* Save POKY Preference settings to project's environment */
 	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project)
 	{
 		ConsoleOutputStream consoleOutStream = null;
@@ -461,11 +462,15 @@ public class YoctoSDKUtils {
 		}
 	}
 
-	/* Load IDE wide POKY Preference settings into Preference Store */
-	public static void saveElemToStore(YoctoUIElement elem)
+	/* Save IDE wide POKY Preference settings to the default preference store */
+	public static void saveElemToDefaultStore(YoctoUIElement elem)
 	{
-		IPreferenceStore store= YoctoSDKPlugin.getDefault().getPreferenceStore();
+		saveElemToStore(elem, YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
 
+	/* Save IDE wide POKY Preference settings to a specific preference store */
+	public static void saveElemToStore(YoctoUIElement elem, IPreferenceStore store)
+	{
 		store.setValue(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
 		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
 			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
@@ -482,10 +487,14 @@ public class YoctoSDKUtils {
 		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());		
 	}
 
-	/* Load IDE wide POKY Preference settings into YoctoUIElement */
-	public static YoctoUIElement getElemFromStore()
+	/* Get IDE wide POKY Preference settings from the default preference store */
+	public static YoctoUIElement getElemFromDefaultStore()
 	{
-		IPreferenceStore store = YoctoSDKPlugin.getDefault().getPreferenceStore();
+		return getElemFromStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
+
+	/* Get IDE wide POKY Preference settings from a specific preference store */
+	public static YoctoUIElement getElemFromStore(IPreferenceStore store) {
 		YoctoUIElement elem = new YoctoUIElement();
 		if (store.getString(PreferenceConstants.SDK_MODE).equals(IPreferenceStore.TRUE))
 			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
@@ -507,8 +516,8 @@ public class YoctoSDKUtils {
 		return elem;
 	}
 
-	/* Load default IDE wide POKY Preference settings into YoctoUIElement */
-	public static YoctoUIElement getDefaultElemFromStore()
+	/* Get default POKY Preference settings from the default preference store */
+	public static YoctoUIElement getDefaultElemFromDefaultStore()
 	{
 		IPreferenceStore store = YoctoSDKPlugin.getDefault().getPreferenceStore();
 		YoctoUIElement elem = new YoctoUIElement();
@@ -674,4 +683,31 @@ public class YoctoSDKUtils {
         }
 		return arch;
 	}
-}
\ No newline at end of file
+
+	/* Save profiles and selected profile to the default preference store */
+	public static void saveProfilesToDefaultStore(YoctoProfileElement profileElement) {
+		saveProfilesToStore(profileElement, YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
+
+	/* Save profiles and selected profile to a specific preference store */
+	public static void saveProfilesToStore(YoctoProfileElement profileElement, IPreferenceStore store)
+	{
+		store.setValue(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
+		store.setValue(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
+	}
+
+	/* Get profiles and selected profile from the default preference store */
+	public static YoctoProfileElement getProfilesFromDefaultStore()
+	{
+		return getProfilesFromStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
+
+	/* Get profiles and selected profile from a specific preference store */
+	public static YoctoProfileElement getProfilesFromStore(IPreferenceStore store)
+	{
+		String profiles = store.getString(PreferenceConstants.PROFILES);
+		String selectedProfile = store.getString(PreferenceConstants.SELECTED_PROFILE);
+
+		return new YoctoProfileElement(profiles, selectedProfile);
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
index d6ca41f..814397a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceConstants.java
@@ -34,4 +34,8 @@ public class PreferenceConstants {
 	public static final String IP_ADDR = "IPAddr";
 
 	public static final String STANDARD_PROFILE_NAME = "Standard Profile";
+
+	public static final String PROFILES = "profiles";
+
+	public static final String SELECTED_PROFILE = "selectedProfile";
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceInitializer.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceInitializer.java
index 33c7117..40f37d0 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceInitializer.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/PreferenceInitializer.java
@@ -15,6 +15,8 @@ import org.eclipse.jface.preference.IPreferenceStore;
 
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 
+import static org.yocto.sdk.ide.preferences.PreferenceConstants.*;
+
 /**
  * Class used to initialize default preference values.
  */
@@ -26,15 +28,17 @@ public class PreferenceInitializer extends AbstractPreferenceInitializer {
 	 */
 	public void initializeDefaultPreferences() {
 		IPreferenceStore store = YoctoSDKPlugin.getDefault().getPreferenceStore();
-		store.setDefault(PreferenceConstants.TOOLCHAIN_ROOT, "");
-		store.setDefault(PreferenceConstants.SDK_MODE, true);
-		store.setDefault(PreferenceConstants.TARGET_MODE, false);
-		store.setDefault(PreferenceConstants.TARGET_ARCH_INDEX, -1);
-		store.setDefault(PreferenceConstants.IP_ADDR, "");
-		store.setDefault(PreferenceConstants.QEMU_KERNEL, "");
-		store.setDefault(PreferenceConstants.QEMU_OPTION, "");
-		store.setDefault(PreferenceConstants.SYSROOT, "");
-		store.setDefault(PreferenceConstants.TOOLCHAIN_TRIPLET, "");
+		store.setDefault(TOOLCHAIN_ROOT, "");
+		store.setDefault(SDK_MODE, true);
+		store.setDefault(TARGET_MODE, false);
+		store.setDefault(TARGET_ARCH_INDEX, -1);
+		store.setDefault(IP_ADDR, "");
+		store.setDefault(QEMU_KERNEL, "");
+		store.setDefault(QEMU_OPTION, "");
+		store.setDefault(SYSROOT, "");
+		store.setDefault(TOOLCHAIN_TRIPLET, "");
+		store.setDefault(PROFILES, "\"" + STANDARD_PROFILE_NAME + "\"");
+		store.setDefault(SELECTED_PROFILE, STANDARD_PROFILE_NAME);
 	}
 
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index d1c1a72..64c9968 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -10,32 +10,20 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.preferences;
 
-import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchPreferencePage;
-
 import org.eclipse.jface.dialogs.Dialog;
-import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.preference.PreferencePage;
-
+import org.eclipse.swt.SWT;
+import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Control;
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPreferencePage;
 import org.yocto.sdk.ide.YoctoGeneralException;
-import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
-
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
-import java.util.ArrayList;
-
-import org.eclipse.swt.SWT;
-import org.eclipse.swt.widgets.Button;
-import org.eclipse.swt.widgets.Combo;
-import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.Control;
-import org.eclipse.swt.widgets.Text;
-
-
-
 public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbenchPreferencePage {
     
 	private YoctoUISetting yoctoUISetting;
@@ -44,7 +32,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		//super(GRID);
         setPreferenceStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
         //setDescription(YoctoSDKMessages.getString(PREFERENCES_Yocto_CONFIG));
-        YoctoUIElement elem = YoctoSDKUtils.getElemFromStore();
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromDefaultStore();
         this.yoctoUISetting = new YoctoUISetting(elem);
 	}
 	
@@ -74,30 +62,26 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	 * @see IPreferencePage#performOk()
 	 */
 	public boolean performOk() {
-		
-		
 		try {
 			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
 
 			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
-			YoctoSDKUtils.saveElemToStore(elem);
+			YoctoSDKUtils.saveElemToDefaultStore(elem);
 
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
 			// TODO Auto-generated catch block
 			System.out.println(e.getMessage());
 			return false;
-		}		
+		}
 	}
 
 	/*
 	 * @see PreferencePage#performDefaults()
 	 */
 	protected void performDefaults() {
-		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromStore();
+		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromDefaultStore();
 		yoctoUISetting.setCurrentInput(defaultElement);
 		super.performDefaults();
 	}
-
-
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index f2247ca..56cc4cb 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -74,7 +74,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 				|| uiElement.getStrTarget().isEmpty()) {
 			// No project environment has been set yet, use the Preference
 			// values
-			uiElement = YoctoSDKUtils.getElemFromStore();
+			uiElement = YoctoSDKUtils.getElemFromDefaultStore();
 		}
 
 		return uiElement;
@@ -85,7 +85,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 	 */
 	@Override
 	protected void performDefaults() {
-		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromStore();
+		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromDefaultStore();
 		yoctoUISetting.setCurrentInput(defaultElement);
 		super.performDefaults();
 	}
-- 
1.7.11.7


