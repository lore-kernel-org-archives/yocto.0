Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2A171E0070F
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:37:19 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 4990A4009C;
	Wed, 27 Feb 2013 14:55:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:37:12 +0100
Message-Id: <1d77db41ae01d101639ebe358965aa2a43682052.1361954280.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 1/5] plugins/sdk.ide: Move SDK check functionality to separate class
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
X-List-Received-Date: Wed, 27 Feb 2013 14:37:19 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The class YoctoSDKChecker provided some unused code for checking a
Yocto SDK configuration. Checking of the SDK was done in
YoctoSDKUtils. An enum for results was provided in both classes (under
the same name) but contained different possible values.

To avoid confusion, reduce duplicate code and to separate the checking
functionality from the rest of the utility functions, the checking
code has been moved completely to the YoctoSDKChecker.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     | 361 ++++++++++++---------
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |   9 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 255 ---------------
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   8 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |   2 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |   2 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  18 +-
 7 files changed, 229 insertions(+), 426 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 87547a2..fd50f18 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -10,197 +10,252 @@
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
+import java.io.BufferedReader;
 import java.io.File;
+import java.io.FileReader;
+import java.io.FilenameFilter;
+import java.io.IOException;
 
 public class YoctoSDKChecker {
+
 	public static enum SDKCheckResults {
 		SDK_PASS,
+		POKY_DEVICE_EMPTY,
 		TOOLCHAIN_LOCATION_EMPTY,
-		TOOLCHAIN_LOCATION_NON_EXIST,
-		TARGET_EMPTY,
+		TOOLCHAIN_LOCATION_NONEXIST,
+		SDK_TARGET_EMPTY,
 		QEMU_KERNEL_EMPTY,
-		//QEMU_ROOTFS_EMPTY,
-		SDK_BIN_NON_EXIST,
-		SDK_SYSROOT_NON_EXIST,
-		SDK_PKGCONFIG_NON_EXIST,
-		QEMU_KERNEL_NON_EXIST,
-		SYSROOT_NON_EXIST,
 		SYSROOT_EMPTY,
-		ENV_SETUP_SCRIPT_NON_EXIST
+		QEMU_KERNEL_NONEXIST,
+		SYSROOT_NONEXIST,
+		WRONG_ADT_VERSION,
+		ENV_SETUP_SCRIPT_NONEXIST,
+		TOOLCHAIN_NO_SYSROOT,
+		TOOLCHAIN_HOST_MISMATCH
 	};
 
 	public static enum SDKCheckRequestFrom {
 		Wizard,
 		Menu,
-		Preferences
+		Preferences,
+		Other
 	};
 
-	private static final String WIZARD_SDK_LOCATION_EMPTY     		= "Wizard.SDK.Location.Empty";
-	private static final String WIZARD_TOOLCHAIN_LOCATION_NONEXIST	= "Wizard.Toolcahin.Location.Nonexist";
-	private static final String WIZARD_SDK_TARGET_EMPTY      		= "Wizard.SDK.Target.Empty";
-	private static final String WIZARD_SDK_BIN_NONEXIST				= "Wizard.SDK.Bin.Nonexist";
-	private static final String WIZARD_SDK_SYSROOT_NONEXIST			= "Wizard.SDK.Sysroot.Nonexist";
-	private static final String WIZARD_SDK_PKGCONFIG_NONEXIST		= "Wizard.SDK.Pkgconfig.Nonexist";
-	private static final String WIZARD_QEMU_KERNEL_EMPTY			= "Wizard.Qemu.Kernel.Empty";
-	private static final String WIZARD_SYSROOT_EMPTY				= "Wizard.Sysroot.Empty";
-	private static final String WIZARD_QEMU_KERNEL_NONEXIST			= "Wizard.Qemu.Kernel.Nonexist";
-	private static final String WIZARD_SYSROOT_NONEXIST				= "Wizard.Sysroot.Nonexist";
-
-	private static final String MENU_SDK_LOCATION_EMPTY     		= "Menu.SDK.Location.Empty";
-	private static final String MENU_TOOLCHAIN_LOCATION_NONEXIST	= "Menu.Toolchain.Location.Nonexist";
-	private static final String MENU_SDK_TARGET_EMPTY      			= "Menu.SDK.Target.Empty";
-	private static final String MENU_SDK_BIN_NONEXIST       		= "Menu.SDK.Bin.Nonexist";
-	private static final String MENU_SDK_SYSROOT_NONEXIST   		= "Menu.SDK.Sysroot.Nonexist";
-	private static final String MENU_SDK_PKGCONFIG_NONEXIST 		= "Menu.SDK.Pkgconfig.Nonexist";
-	private static final String MENU_QEMU_KERNEL_EMPTY 				= "Menu.Qemu.Kernel.Empty";
-	private static final String MENU_SYSROOT_EMPTY 					= "Menu.Sysroot.Empty";
-	private static final String MENU_QEMU_KERNEL_NONEXIST 			= "Menu.Qemu.Kernel.Nonexist";
-	private static final String MENU_SYSROOT_NONEXIST 				= "Menu.Sysroot.Nonexist";
-
-	private static final String PREFERENCES_SDK_BIN_NONEXIST       = "Preferences.SDK.Bin.Nonexist";
-	private static final String PREFERENCES_SDK_SYSROOT_NONEXIST   = "Preferences.SDK.Sysroot.Nonexist";
-	private static final String PREFERENCES_SDK_PKGCONFIG_NONEXIST = "Preferences.SDK.Pkgconfig.Nonexist";
-	
-	private static final String ENV_SCRIPT_NONEXIST = "Env.Script.Nonexist";
+	private static final String POKY_DEVICE_EMPTY = "Poky.SDK.Device.Empty";
+	private static final String TOOLCHAIN_LOCATION_EMPTY     = "Poky.SDK.Location.Empty";
+	private static final String SDK_TARGET_EMPTY      = "Poky.SDK.Target.Empty";
+	private static final String TOOLCHAIN_LOCATION_NONEXIST = "Poky.SDK.Location.Nonexist";
+	private static final String QEMU_KERNEL_EMPTY 	  = "Poky.Qemu.Kernel.Empty";
+	private static final String SYSROOT_EMPTY = "Poky.Sysroot.Empty";
+	private static final String QEMU_KERNEL_NONEXIST = "Poky.Qemu.Kernel.Nonexist";
+	private static final String SYSROOT_NONEXIST = "Poky.Sysroot.Nonexist";
+	private static final String WRONG_ADT_VERSION = "Poky.ADT.Sysroot.Wrongversion";
+	private static final String ENV_SETUP_SCRIPT_NONEXIST = "Poky.Env.Script.Nonexist";
+	private static final String TOOLCHAIN_NO_SYSROOT = "Poky.Toolchain.No.Sysroot";
+	private static final String TOOLCHAIN_HOST_MISMATCH = "Poky.Toolchain.Host.Mismatch";
+	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
 	
-	private static final String PREFERENCES_TOOLCHAIN_LOCATION_NONEXIST = "Preferences.Toolchain.Location.Nonexist";
-	private static final String PREFERENCES_QEMU_KERNEL_EMPTY 			= "Preferences.Qemu.Kernel.Empty";
-	private static final String PREFERENCES_SYSROOT_EMPTY 				= "Preferences.Sysroot.Empty";
-	private static final String PREFERENCES_QEMU_KERNEL_NONEXIST   		= "Preferences.Qemu.Kernel.Nonexist";
-	private static final String PREFERENCES_SYSROOT_NONEXIST   			= "Preferences.Sysroot.Nonexist";
-
-	public static SDKCheckResults checkYoctoSDK(String sdkroot, String toolchain_location, String target, String target_qemu,
-			String qemu_kernel, String sysroot, String ip_addr) {
-	
-		if (toolchain_location.isEmpty()) {
-			return SDKCheckResults.TOOLCHAIN_LOCATION_EMPTY;			
-		} else {
-			File toolchain = new File(toolchain_location);
-			if (!toolchain.exists())
-				return SDKCheckResults.TOOLCHAIN_LOCATION_NON_EXIST;
+	private static final String SYSROOTS_DIR = "sysroots";
+
+	public static SDKCheckResults checkYoctoSDK(YoctoUIElement elem) {
+		if (elem.getStrToolChainRoot().isEmpty())
+			return SDKCheckResults.TOOLCHAIN_LOCATION_EMPTY;
+		else {
+			File fToolChain = new File(elem.getStrToolChainRoot());
+			if (!fToolChain.exists())
+				return SDKCheckResults.TOOLCHAIN_LOCATION_NONEXIST;
 		}
-		
-		if (sysroot.isEmpty()) 
+
+		if (elem.getStrSysrootLoc().isEmpty()) {
 			return SDKCheckResults.SYSROOT_EMPTY;
-		else {
-			File sysroot_dir = new File(sysroot);
+		} else {
+			File fSysroot = new File(elem.getStrSysrootLoc());
+			if (!fSysroot.exists())
+				return SDKCheckResults.SYSROOT_NONEXIST;
+		}
+
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
+			//Check for SDK compatible with the host arch
+			String platform = YoctoSDKUtils.getPlatformArch();
+			String sysroot_dir_str = elem.getStrToolChainRoot() + "/" + SYSROOTS_DIR;
+			File sysroot_dir = new File(sysroot_dir_str);
 			if (!sysroot_dir.exists())
-				return SDKCheckResults.SYSROOT_NON_EXIST;
+				return SDKCheckResults.TOOLCHAIN_NO_SYSROOT;
+
+			String toolchain_host_arch = null;
+
+			try {
+				toolchain_host_arch = findHostArch(sysroot_dir);
+			} catch(NullPointerException e) {
+				return SDKCheckResults.TOOLCHAIN_NO_SYSROOT;
+			}
+
+			if (!toolchain_host_arch.equalsIgnoreCase(platform)) {
+				if (!platform.matches("i\\d86") || !toolchain_host_arch.matches("i\\d86"))
+					return SDKCheckResults.TOOLCHAIN_HOST_MISMATCH;
+			}
 		}
-	
-		if (target.isEmpty() || target==null) {
-			return SDKCheckResults.TARGET_EMPTY;
+
+		if (elem.getIntTargetIndex() < 0 || elem.getStrTarget().isEmpty()) {
+			//if this is poky tree mode, prompt user whether bitbake meta-ide-support is executed?
+			if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_TREE_MODE)
+				return SDKCheckResults.ENV_SETUP_SCRIPT_NONEXIST;
+			else
+				return SDKCheckResults.SDK_TARGET_EMPTY;
+		} else {
+			String sFileName;
+
+			if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
+				sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
+			} else {
+				//POKY TREE Mode
+				sFileName = elem.getStrToolChainRoot() + YoctoSDKProjectNature.DEFAULT_TMP_PREFIX + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+			}
+
+			try {
+				File file = new File(sFileName);
+				boolean bVersion = false;
+
+				if (file.exists()) {
+					BufferedReader input = new BufferedReader(new FileReader(file));
+
+					try {
+						String line = null;
+
+						while ((line = input.readLine()) != null) {
+							if (line.startsWith("export "+ YoctoSDKProjectNature.SDK_VERSION)) {
+								int beginIndex = 2;
+								String sVersion = "";
+								for (;;) {
+									char cValue = line.charAt(line.indexOf('=') + beginIndex++);
+
+									if ((cValue != '.') && (!Character.isDigit(cValue)) && (cValue != '+'))
+										break;
+									else
+										sVersion += String.valueOf(cValue);
+								}
+
+								for (int i = 0; i < saInvalidVer.length; i++) {
+									if (!sVersion.equals(saInvalidVer[i])) {
+										bVersion = true;
+										break;
+									}
+								}
+
+								break;
+							}
+						}
+					} finally {
+						input.close();
+					}
+
+					if (!bVersion)
+						return SDKCheckResults.WRONG_ADT_VERSION;
+				}
+			} catch (IOException e) {
+				e.printStackTrace();
+			}
 		}
-		
-		if (target_qemu.equals("true")) {
-			if (qemu_kernel.isEmpty())
+
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
+			if (elem.getStrQemuKernelLoc().isEmpty()) {
 				return SDKCheckResults.QEMU_KERNEL_EMPTY;
-			else {
-				File kernel_file = new File(qemu_kernel);
-				if (!kernel_file.exists())
-					return SDKCheckResults.QEMU_KERNEL_NON_EXIST;
+			} else {
+				File fQemuKernel = new File(elem.getStrQemuKernelLoc());
+				if (!fQemuKernel.exists())
+					return SDKCheckResults.QEMU_KERNEL_NONEXIST;
 			}
-		
 		}
-		
+
 		return SDKCheckResults.SDK_PASS;
 	}
 
-	private static String getWizardErrorMessage(SDKCheckResults result) {
-		switch (result) {
-		case TOOLCHAIN_LOCATION_EMPTY:
-			return  YoctoSDKMessages.getString(WIZARD_SDK_LOCATION_EMPTY);
-		case TOOLCHAIN_LOCATION_NON_EXIST:
-			return YoctoSDKMessages.getString(WIZARD_TOOLCHAIN_LOCATION_NONEXIST);
-		case TARGET_EMPTY:
-			return  YoctoSDKMessages.getString(WIZARD_SDK_TARGET_EMPTY);
-		case QEMU_KERNEL_EMPTY:
-			return YoctoSDKMessages.getString(WIZARD_QEMU_KERNEL_EMPTY);
-		case SYSROOT_EMPTY:
-			return YoctoSDKMessages.getString(WIZARD_SYSROOT_EMPTY);
-		case QEMU_KERNEL_NON_EXIST:
-			return YoctoSDKMessages.getString(WIZARD_QEMU_KERNEL_NONEXIST);
-		case SYSROOT_NON_EXIST:
-			return YoctoSDKMessages.getString(WIZARD_SYSROOT_NONEXIST);
-		case SDK_BIN_NON_EXIST:
-			return  YoctoSDKMessages.getString(WIZARD_SDK_BIN_NONEXIST);
-		case SDK_SYSROOT_NON_EXIST:
-			return  YoctoSDKMessages.getString(WIZARD_SDK_SYSROOT_NONEXIST);
-		case SDK_PKGCONFIG_NON_EXIST:
-			return  YoctoSDKMessages.getString(WIZARD_SDK_PKGCONFIG_NONEXIST);
-		default:
-			return null;
-		}
-	}
+	public static String getErrorMessage(SDKCheckResults result, SDKCheckRequestFrom from) {
+		String strErrorMsg;
 
-	private static String getMenuErrorMessage(SDKCheckResults result) {
-		switch (result) {
-		case TOOLCHAIN_LOCATION_EMPTY:
-			return  YoctoSDKMessages.getString(MENU_SDK_LOCATION_EMPTY);
-		case TOOLCHAIN_LOCATION_NON_EXIST:
-			return YoctoSDKMessages.getString(MENU_TOOLCHAIN_LOCATION_NONEXIST);
-		case TARGET_EMPTY:
-			return  YoctoSDKMessages.getString(MENU_SDK_TARGET_EMPTY);
-		case QEMU_KERNEL_EMPTY:
-			return YoctoSDKMessages.getString(MENU_QEMU_KERNEL_EMPTY);
-		//case QEMU_ROOTFS_EMPTY:
-		//	return YoctoSDKMessages.getString(MENU_QEMU_ROOTFS_EMPTY);
-		case QEMU_KERNEL_NON_EXIST:
-			return YoctoSDKMessages.getString(MENU_QEMU_KERNEL_NONEXIST);
-		case SYSROOT_NON_EXIST:
-			return YoctoSDKMessages.getString(MENU_SYSROOT_NONEXIST);
-		case SYSROOT_EMPTY:
-			return YoctoSDKMessages.getString(MENU_SYSROOT_EMPTY);
-		case SDK_BIN_NON_EXIST:
-			return  YoctoSDKMessages.getString(MENU_SDK_BIN_NONEXIST);
-		case SDK_SYSROOT_NON_EXIST:
-			return  YoctoSDKMessages.getString(MENU_SDK_SYSROOT_NONEXIST);
-		case SDK_PKGCONFIG_NON_EXIST:
-			return  YoctoSDKMessages.getString(MENU_SDK_PKGCONFIG_NONEXIST);
+		switch (from) {
+		case Wizard:
+			strErrorMsg = "Yocto Wizard Configuration Error:";
+			break;
+		case Menu:
+			strErrorMsg = "Yocto Menu Configuration Error!";
+			break;
+		case Preferences:
+			strErrorMsg = "Yocto Preferences Configuration Error!";
+			break;
 		default:
-			return null;
+			strErrorMsg = "Yocto Configuration Error!";
+			break;
 		}
-	}
 
-	private static String getPreferencesErrorMessage(SDKCheckResults result) {
 		switch (result) {
+		case POKY_DEVICE_EMPTY:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(POKY_DEVICE_EMPTY);
+			break;
 		case TOOLCHAIN_LOCATION_EMPTY:
-			return  YoctoSDKMessages.getString(MENU_SDK_LOCATION_EMPTY);
-		case TOOLCHAIN_LOCATION_NON_EXIST:
-			return YoctoSDKMessages.getString(PREFERENCES_TOOLCHAIN_LOCATION_NONEXIST);
-		case TARGET_EMPTY:
-			return  YoctoSDKMessages.getString(MENU_SDK_TARGET_EMPTY);
-		case SDK_BIN_NON_EXIST:
-			return  YoctoSDKMessages.getString(PREFERENCES_SDK_BIN_NONEXIST); 
-		case SDK_SYSROOT_NON_EXIST:
-			return  YoctoSDKMessages.getString(PREFERENCES_SDK_SYSROOT_NONEXIST);
-		case SDK_PKGCONFIG_NON_EXIST:
-			return  YoctoSDKMessages.getString(PREFERENCES_SDK_PKGCONFIG_NONEXIST);	
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_LOCATION_EMPTY);
+			break;
+		case SDK_TARGET_EMPTY:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SDK_TARGET_EMPTY);
+			break;
+		case TOOLCHAIN_LOCATION_NONEXIST:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_LOCATION_NONEXIST);
+			break;
 		case QEMU_KERNEL_EMPTY:
-			return YoctoSDKMessages.getString(PREFERENCES_QEMU_KERNEL_EMPTY);
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(QEMU_KERNEL_EMPTY);
+			break;
 		case SYSROOT_EMPTY:
-			return YoctoSDKMessages.getString(PREFERENCES_SYSROOT_EMPTY);
-		case QEMU_KERNEL_NON_EXIST:
-			return YoctoSDKMessages.getString(PREFERENCES_QEMU_KERNEL_NONEXIST);
-		case SYSROOT_NON_EXIST:
-			return YoctoSDKMessages.getString(PREFERENCES_SYSROOT_NONEXIST);
-		case ENV_SETUP_SCRIPT_NON_EXIST:
-			return YoctoSDKMessages.getString(ENV_SCRIPT_NONEXIST);
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SYSROOT_EMPTY);
+			break;
+		case QEMU_KERNEL_NONEXIST:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(QEMU_KERNEL_NONEXIST);
+			break;
+		case SYSROOT_NONEXIST:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SYSROOT_NONEXIST);
+			break;
+		case WRONG_ADT_VERSION:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(WRONG_ADT_VERSION);
+			break;
+		case ENV_SETUP_SCRIPT_NONEXIST:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(ENV_SETUP_SCRIPT_NONEXIST);
+			break;
+		case TOOLCHAIN_NO_SYSROOT:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_NO_SYSROOT);
+			break;
+		case TOOLCHAIN_HOST_MISMATCH:
+			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_HOST_MISMATCH);
+			break;
 		default:
-			return null;
+			break;
 		}
+
+		return strErrorMsg;
 	}
 
-	public static String getErrorMessage(SDKCheckResults result, SDKCheckRequestFrom from) {
-		switch (from) {
-			case Wizard:
-				return getWizardErrorMessage(result);
-			case Menu:
-				return getMenuErrorMessage(result);
-			case Preferences:
-				return getPreferencesErrorMessage(result);
-			default:
-				return null;
+	private static String findHostArch(File sysroot_dir) {
+		FilenameFilter nativeFilter = new FilenameFilter() {
+			public boolean accept(File dir, String name) {
+				if (name.endsWith("sdk-linux")) {
+					return true;
+				} else {
+					return false;
+				}
+			}
+		};
+
+		File[] files = sysroot_dir.listFiles(nativeFilter);
+		String arch = null;
+
+		for (File file : files) {
+			if (file.isDirectory()) {
+				String path = file.getName();
+				String[] subPath = path.split("-");
+				arch = subPath[0];
+			} else {
+				continue;
+			}
 		}
-	}	
+
+		return arch;
+	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
index b0e7121..69b1e2a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
@@ -38,7 +38,8 @@ import org.eclipse.debug.core.ILaunchConfigurationType;
 import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
 import org.eclipse.debug.core.ILaunchManager;
 import org.eclipse.jface.preference.IPreferenceStore;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 
 
 @SuppressWarnings("restriction")
@@ -157,9 +158,9 @@ public class YoctoSDKProjectNature implements IProjectNature {
 		YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
 		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
 		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-		YoctoSDKUtils.SDKCheckResults result = YoctoSDKUtils.checkYoctoSDK(elem);
-		if (result != YoctoSDKUtils.SDKCheckResults.SDK_PASS){		
-			String strErrorMsg =  YoctoSDKUtils.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
+		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
+		if (result != SDKCheckResults.SDK_PASS){
+			String strErrorMsg =  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
 			throw new YoctoGeneralException(strErrorMsg);
 		}
 		else
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 11d68e0..4a10d8d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -14,7 +14,6 @@ package org.yocto.sdk.ide;
 import java.io.BufferedReader;
 import java.io.File;
 import java.io.FileReader;
-import java.io.FilenameFilter;
 import java.io.IOException;
 import java.io.InputStream;
 import java.io.InputStreamReader;
@@ -43,240 +42,11 @@ import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoSDKUtils {
 
-	public static enum SDKCheckResults {
-		SDK_PASS,
-		POKY_DEVICE_EMPTY,
-		TOOLCHAIN_LOCATION_EMPTY,
-		TOOLCHAIN_LOCATION_NONEXIST,
-		SDK_TARGET_EMPTY,
-		QEMU_KERNEL_EMPTY,
-		SYSROOT_EMPTY,
-		QEMU_KERNEL_NONEXIST,
-		SYSROOT_NONEXIST,
-		WRONG_ADT_VERSION,
-		ENV_SETUP_SCRIPT_NONEXIST,
-		TOOLCHAIN_NO_SYSROOT,
-		TOOLCHAIN_HOST_MISMATCH
-	};
-
-	public static enum SDKCheckRequestFrom {
-		Wizard,
-		Menu,
-		Preferences,
-		Other
-	};
-
 	private static final String PROJECT_SCOPE = "org.yocto.sdk.ide";
-	private static final String POKY_DEVICE_EMPTY = "Poky.SDK.Device.Empty";
-	private static final String TOOLCHAIN_LOCATION_EMPTY     = "Poky.SDK.Location.Empty";
-	private static final String SDK_TARGET_EMPTY      = "Poky.SDK.Target.Empty";
-	private static final String TOOLCHAIN_LOCATION_NONEXIST = "Poky.SDK.Location.Nonexist";
-	private static final String QEMU_KERNEL_EMPTY 	  = "Poky.Qemu.Kernel.Empty";
-	private static final String SYSROOT_EMPTY = "Poky.Sysroot.Empty";
-	private static final String QEMU_KERNEL_NONEXIST = "Poky.Qemu.Kernel.Nonexist";
-	private static final String SYSROOT_NONEXIST = "Poky.Sysroot.Nonexist";
-	private static final String WRONG_ADT_VERSION = "Poky.ADT.Sysroot.Wrongversion";
-	private static final String ENV_SETUP_SCRIPT_NONEXIST = "Poky.Env.Script.Nonexist";
-	private static final String TOOLCHAIN_NO_SYSROOT = "Poky.Toolchain.No.Sysroot";
-	private static final String TOOLCHAIN_HOST_MISMATCH = "Poky.Toolchain.Host.Mismatch";
-	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
 	private static final String DEFAULT_SYSROOT_PREFIX = "--sysroot=";
 	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
-	private static final String SYSROOTS_DIR = "sysroots";
 	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
-	public static SDKCheckResults checkYoctoSDK(YoctoUIElement elem) {		
-		
-		if (elem.getStrToolChainRoot().isEmpty())
-			return SDKCheckResults.TOOLCHAIN_LOCATION_EMPTY;
-		else {
-			File fToolChain = new File(elem.getStrToolChainRoot());
-			if (!fToolChain.exists())
-				return SDKCheckResults.TOOLCHAIN_LOCATION_NONEXIST;
-		}
-
-		if (elem.getStrSysrootLoc().isEmpty())
-			return SDKCheckResults.SYSROOT_EMPTY;
-		else {
-			File fSysroot = new File(elem.getStrSysrootLoc());
-			if (!fSysroot.exists())
-				return SDKCheckResults.SYSROOT_NONEXIST;
-		}
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-			//Check for SDK compatible with the host arch
-			String platform = getPlatformArch();
-			String sysroot_dir_str = elem.getStrToolChainRoot() + "/" + SYSROOTS_DIR;
-			File sysroot_dir = new File(sysroot_dir_str);
-			if (!sysroot_dir.exists())
-				return SDKCheckResults.TOOLCHAIN_NO_SYSROOT;
-			
-			String toolchain_host_arch = null;
-			
-			try 
-			{
-				toolchain_host_arch = findHostArch(sysroot_dir);
-			}
-			catch(NullPointerException e) 
-			{
-				return SDKCheckResults.TOOLCHAIN_NO_SYSROOT;
-			}
-			
-			if (!toolchain_host_arch.equalsIgnoreCase(platform)) {
-				if (!platform.matches("i\\d86") || !toolchain_host_arch.matches("i\\d86"))
-					return SDKCheckResults.TOOLCHAIN_HOST_MISMATCH;
-			}
-		}
-		if (elem.getIntTargetIndex() < 0 || elem.getStrTarget().isEmpty())
-		{
-			//if this is poky tree mode, prompt user whether bitbake meta-ide-support is executed?
-			if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_TREE_MODE)
-				return SDKCheckResults.ENV_SETUP_SCRIPT_NONEXIST;
-			else
-				return SDKCheckResults.SDK_TARGET_EMPTY;
-		}
-		else
-		{
-			String sFileName;
-			if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-				sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
-			}
-			else {
-				//POKY TREE Mode
-				sFileName = elem.getStrToolChainRoot() + YoctoSDKProjectNature.DEFAULT_TMP_PREFIX + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
-			}
-			try
-			{
-
-				File file = new File(sFileName);
-				boolean bVersion = false;
-
-				if (file.exists()) {
-					BufferedReader input = new BufferedReader(new FileReader(file));
-
-					try
-					{
-						String line = null;
-
-						while ((line = input.readLine()) != null)
-						{							
-							if (line.startsWith("export "+ YoctoSDKProjectNature.SDK_VERSION))
-							{
-								int beginIndex = 2;
-								String sVersion = "";
-								for (;;) 
-								{
-									char cValue = line.charAt(line.indexOf('=') + beginIndex++);
-									if ((cValue != '.') && (!Character.isDigit(cValue)) && (cValue != '+'))
-										break;
-									else
-										sVersion += String.valueOf(cValue);
-								}
-								for (int i = 0; i < saInvalidVer.length; i++)
-								{
-									if (!sVersion.equals(saInvalidVer[i]))
-									{
-										bVersion = true;
-										break;
-									}
-										
-								}
-								break;
-							}
-						}
-
-					}
-					finally {
-						input.close();
-					}
-					if (!bVersion)
-						return SDKCheckResults.WRONG_ADT_VERSION;
-
-				}
-			}
-			catch (IOException e)
-			{
-				e.printStackTrace();
-
-			}
-		}
-
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
-		{
-			if (elem.getStrQemuKernelLoc().isEmpty())
-				return SDKCheckResults.QEMU_KERNEL_EMPTY;
-			else {
-				File fQemuKernel = new File(elem.getStrQemuKernelLoc());
-				if (!fQemuKernel.exists())
-					return SDKCheckResults.QEMU_KERNEL_NONEXIST;
-			}
-		}
-
-		return SDKCheckResults.SDK_PASS;
-	}
-
-
-
-	public static String getErrorMessage(SDKCheckResults result, SDKCheckRequestFrom from) {
-		String strErrorMsg;
-		switch (from) {
-		case Wizard:
-			strErrorMsg = "Yocto Wizard Configuration Error:";
-			break;
-		case Menu:
-			strErrorMsg = "Yocto Menu Configuration Error!";
-			break;
-		case Preferences:
-			strErrorMsg = "Yocto Preferences Configuration Error!";
-			break;
-		default:
-			strErrorMsg = "Yocto Configuration Error!";
-			break;
-		}
-
-		switch (result) {
-		case POKY_DEVICE_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(POKY_DEVICE_EMPTY);
-			break;
-		case TOOLCHAIN_LOCATION_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_LOCATION_EMPTY);
-			break;
-		case SDK_TARGET_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SDK_TARGET_EMPTY);
-			break;
-		case TOOLCHAIN_LOCATION_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_LOCATION_NONEXIST);
-			break;
-		case QEMU_KERNEL_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(QEMU_KERNEL_EMPTY);
-			break;
-		case SYSROOT_EMPTY:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SYSROOT_EMPTY);
-			break;
-		case QEMU_KERNEL_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(QEMU_KERNEL_NONEXIST);
-			break;
-		case SYSROOT_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(SYSROOT_NONEXIST);
-			break;
-		case WRONG_ADT_VERSION:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(WRONG_ADT_VERSION);
-			break;
-		case ENV_SETUP_SCRIPT_NONEXIST:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(ENV_SETUP_SCRIPT_NONEXIST);
-			break;
-		case TOOLCHAIN_NO_SYSROOT:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_NO_SYSROOT);
-			break;
-		case TOOLCHAIN_HOST_MISMATCH:
-			strErrorMsg = strErrorMsg + "\n" + YoctoSDKMessages.getString(TOOLCHAIN_HOST_MISMATCH);
-			break;
-		default:
-			break;
-		}
-		return strErrorMsg;
-	}
-
-
 	public static String getEnvValue(IProject project, String strKey)
 	{
 		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
@@ -731,31 +501,6 @@ public class YoctoSDKUtils {
           }
 		return value;
 	}
-	
-	static private String findHostArch(File sysroot_dir) {
-		FilenameFilter nativeFilter = new FilenameFilter() {
-			public boolean accept(File dir, String name) {
-				if (name.endsWith("sdk-linux")) {
-					return true;
-				} else {
-					return false;
-				}
-			}
-		};
-
-		File copyFile = null;
-		File[] files = sysroot_dir.listFiles(nativeFilter);
-		String arch = null;
-		for (File file : files) {
-			if (file.isDirectory()) {
-				String path = file.getName();
-				String[] subPath = path.split("-");
-				arch = subPath[0];
-			} else 
-				continue;
-        }
-		return arch;
-	}
 
 	/* Save profiles and selected profile to the default preference store */
 	public static void saveProfilesToDefaultStore(YoctoProfileElement profileElement) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index f7e7a3a..74cfd69 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -36,8 +36,8 @@ import org.eclipse.swt.widgets.MessageBox;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.swt.widgets.Widget;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoUISetting {
@@ -349,11 +349,11 @@ public class YoctoUISetting {
 		boolean pass = true;
 		String strErrorMessage;
 
-		SDKCheckResults result = YoctoSDKUtils.checkYoctoSDK(elem);
+		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
 
 		//Show Error Message on the Label to help users.
 		if (result != SDKCheckResults.SDK_PASS) {
-			strErrorMessage = YoctoSDKUtils.getErrorMessage(result, from);
+			strErrorMessage = YoctoSDKChecker.getErrorMessage(result, from);
 			pass = false;
 			if (bPrompt)
 			{
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 3e0fa54..ef681a4 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -33,7 +33,7 @@ import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 7f0d25e..551d3bd 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -24,9 +24,9 @@ import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 7c02f87..f332a9a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -10,15 +10,17 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.wizard;
 
-import java.util.List;
 import java.util.LinkedHashMap;
+import java.util.List;
 
+import org.eclipse.cdt.autotools.core.AutotoolsNewProjectNature;
 import org.eclipse.cdt.core.CCorePlugin;
 import org.eclipse.cdt.core.templateengine.TemplateCore;
 import org.eclipse.cdt.core.templateengine.process.ProcessArgument;
 import org.eclipse.cdt.core.templateengine.process.ProcessFailureException;
 import org.eclipse.cdt.core.templateengine.process.ProcessRunner;
 import org.eclipse.cdt.core.templateengine.process.processes.Messages;
+import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
 import org.eclipse.cdt.make.core.MakeCorePlugin;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IDiscoveredPathInfo;
@@ -36,19 +38,19 @@ import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.OperationCanceledException;
-import org.eclipse.cdt.autotools.core.AutotoolsNewProjectNature;
-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
+import org.eclipse.core.runtime.Path;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoSDKChecker;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
 
 
 @SuppressWarnings("restriction")
@@ -120,9 +122,9 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 				YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
 				IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
 				YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-				YoctoSDKUtils.SDKCheckResults result = YoctoSDKUtils.checkYoctoSDK(elem);
-				if (result != YoctoSDKUtils.SDKCheckResults.SDK_PASS){		
-					String strErrorMsg =  YoctoSDKUtils.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
+				SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
+				if (result != SDKCheckResults.SDK_PASS){
+					String strErrorMsg =  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
 					throw new YoctoGeneralException(strErrorMsg);
 				}
 				AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
-- 
1.7.11.7


