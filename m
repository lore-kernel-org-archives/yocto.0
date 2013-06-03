Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f52.google.com (mail-bk0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75598E014EC
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:11 -0700 (PDT)
Received: by mail-bk0-f52.google.com with SMTP id e11so626264bkh.39
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=QREx6sF3JGaTjrQxyyfIB+vNhSdxxAE/vmozgZXIhu8=;
	b=ftGJr9HkzTkAQhAj2UtJPX7lSqMG6QyDk3t6YUloUuFI2DZhxn4PIcwHWA4Yi6aVD9
	mLRX4Xbgwv4rDJwRDzLf+oKbyy6KvcNJ/Ng4+kxYfXS9tLmrfWyLU+bKF40lV1G9Z/A4
	OrcrezAAnBtYl9HXN/sGsj9wgC7/lrcKsXqeryD+wS02hyL9qoBsqsR2eDKZ4wx+8hpb
	xjvzusAGR5VVqIVhL0qvhpe5rNku/9dI9gZDjfdKgLGX+CFtLdw6hRzvwFFCAXr6ayFY
	utkwi4I3JBQRkYiZbryVMQcocRsoYPT9Q476cg/HkBbfMVhknkTgPuXbaRuqYQWJhJUq
	XnCA==
X-Received: by 10.205.118.203 with SMTP id fr11mr6234346bkc.103.1370248210554; 
	Mon, 03 Jun 2013 01:30:10 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.09 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:10 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:55 +0200
Message-Id: <1370248197-4243-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 5/7] plugins/sdk.ide: Changed access level modifiers for some methods
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:11 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Declared some methods, that are only privately
used, as private. This simplifies the public API
of the YoctoSDKUtils class.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  132 +++++++++-----------
 1 file changed, 61 insertions(+), 71 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index f257e06..d8d3b4e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -106,7 +106,7 @@ public class YoctoSDKUtils {
 	/* Save project wide settings into ENV VARs including POKY preference settings
 	 * and Environment Script File export VARs
 	 */
-	public static void setEnvVars(ICProjectDescription cpdesc,
+	private static void setEnvVars(ICProjectDescription cpdesc,
 			YoctoUIElement elem, HashMap<String, String> envMap) {
 		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
 		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
@@ -223,6 +223,46 @@ public class YoctoSDKUtils {
 		return envSetupFile;
 	}
 
+	private static HashMap<String, String> parseEnvScript(String sFileName) {
+		try {
+			HashMap<String, String> envMap = new HashMap<String, String>();
+			File file = new File(sFileName);
+
+			if (file.exists()) {
+				BufferedReader input = new BufferedReader(new FileReader(file));
+
+				try {
+					String line = null;
+
+					while ((line = input.readLine()) != null) {
+						if (!line.startsWith("export")) {
+							continue;
+						}
+						String sKey = line.substring("export".length() + 1, line.indexOf('='));
+						String sValue = line.substring(line.indexOf('=') + 1);
+						if (sValue.startsWith("\"") && sValue.endsWith("\""))
+							sValue = sValue.substring(sValue.indexOf('"') + 1, sValue.lastIndexOf('"'));
+						/* If PATH ending with $PATH, we need to join with current system path */
+						if (sKey.equalsIgnoreCase("PATH")) {
+							if (sValue.lastIndexOf("$PATH") >= 0)
+								sValue = sValue.substring(0, sValue.lastIndexOf("$PATH")) + System.getenv("PATH");
+						}
+						envMap.put(sKey, sValue);
+						System.out.printf("get env key %s value %s\n", sKey, sValue);
+					}
+				} finally {
+					input.close();
+				}
+			}
+
+			return envMap;
+
+		} catch (IOException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+
 	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) {
 		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
 
@@ -236,7 +276,7 @@ public class YoctoSDKUtils {
 			e.printStackTrace();
 		}
 	}
-	
+
 	public static void createRemoteDebugAndQemuLaunchers(IProject project, YoctoUIElement elem) throws YoctoGeneralException {
 		ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
 		ILaunchConfigurationType configType =
@@ -348,7 +388,7 @@ public class YoctoSDKUtils {
 			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
 
-			String argument = "-e \"source " + sScriptFile + ";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
+			String argument = "-e \"source " + sScriptFile + ";runqemu " + qemuTargetTranslate(elem.getStrTarget()) + " " +
 			elem.getStrQemuKernelLoc() + " " + elem.getStrSysrootLoc() + " " +  elem.getStrQemuOption() + ";bash\"";
 
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS", argument);
@@ -358,6 +398,22 @@ public class YoctoSDKUtils {
 
 	}
 
+	private static String qemuTargetTranslate(String strTargetArch) {
+		String qemu_target = "";
+		if (strTargetArch.indexOf("i586") != -1) {
+			qemu_target = "qemux86";
+		} else if (strTargetArch.indexOf("x86_64") != -1) {
+			qemu_target = "qemux86-64";
+		} else if (strTargetArch.indexOf("arm") != -1) {
+			qemu_target = "qemuarm";
+		} else if (strTargetArch.indexOf("mips") != -1) {
+			qemu_target = "qemumips";
+		} else if (strTargetArch.indexOf("ppc") != -1) {
+			qemu_target = "qemuppc";
+		}
+		return qemu_target;
+	}
+
 	/* Get POKY Preference settings from project's preference store */
 	public static YoctoUIElement getElemFromProjectPreferences(IProject project)
 	{
@@ -577,70 +633,6 @@ public class YoctoSDKUtils {
 		return elem;
 	}
 
-	public static String qemuTargetTranslate(String strTargetArch)
-	{
-		String qemu_target = "";
-		if (strTargetArch.indexOf("i586") != -1)
-			qemu_target = "qemux86";
-		else if (strTargetArch.indexOf("x86_64") != -1)
-			qemu_target = "qemux86-64";
-		else if (strTargetArch.indexOf("arm") != -1)
-			qemu_target = "qemuarm";
-		else if (strTargetArch.indexOf("mips") != -1)
-			qemu_target = "qemumips";
-		else if (strTargetArch.indexOf("ppc") != -1)
-			qemu_target = "qemuppc";
-		return qemu_target;
-	}
-
-	public static HashMap<String, String> parseEnvScript(String sFileName)
-	{
-		try
-		{
-			HashMap<String, String> envMap = new HashMap<String, String>();
-			File file = new File(sFileName);
-
-			if (file.exists()) {
-				BufferedReader input = new BufferedReader(new FileReader(file));
-
-				try
-				{
-					String line = null;
-
-					while ((line = input.readLine()) != null)
-					{
-						if (!line.startsWith("export"))
-							continue;
-						String sKey = line.substring("export".length() + 1, line.indexOf('='));
-						String sValue = line.substring(line.indexOf('=') + 1);
-						if (sValue.startsWith("\"") && sValue.endsWith("\""))
-							sValue = sValue.substring(sValue.indexOf('"') + 1, sValue.lastIndexOf('"'));
-						/* If PATH ending with $PATH, we need to join with current system path */
-						if (sKey.equalsIgnoreCase("PATH")) {
-							if (sValue.lastIndexOf("$PATH") >= 0)
-								sValue = sValue.substring(0, sValue.lastIndexOf("$PATH")) + System.getenv("PATH");
-						}
-						envMap.put(sKey, sValue);
-						System.out.printf("get env key %s value %s\n", sKey, sValue);
-					}
-
-				}
-				finally {
-					input.close();
-				}
-			}
-
-			return envMap;
-
-		}
-		catch (IOException e)
-		{
-			e.printStackTrace();
-			return null;
-		}
-
-	}
-
 	public static String getPlatformArch()
 	{
 		String value = null;
@@ -692,8 +684,7 @@ public class YoctoSDKUtils {
 	}
 
 	/* Save profiles and selected profile to a specific preference store */
-	public static void saveProfilesToStore(YoctoProfileElement profileElement, IPreferenceStore store)
-	{
+	private static void saveProfilesToStore(YoctoProfileElement profileElement, IPreferenceStore store) {
 		store.setValue(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
 		store.setValue(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
 	}
@@ -705,8 +696,7 @@ public class YoctoSDKUtils {
 	}
 
 	/* Get profiles and selected profile from a specific preference store */
-	public static YoctoProfileElement getProfilesFromStore(IPreferenceStore store)
-	{
+	private static YoctoProfileElement getProfilesFromStore(IPreferenceStore store) {
 		String profiles = store.getString(PreferenceConstants.PROFILES);
 		String selectedProfile = store.getString(PreferenceConstants.SELECTED_PROFILE);
 
-- 
1.7.9.5


