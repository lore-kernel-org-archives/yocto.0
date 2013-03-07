Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B1828E0152F
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:09:29 -0800 (PST)
Received: by mail-bk0-f51.google.com with SMTP id ik5so237185bkc.38
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 06:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=rqFXZCxE7x2d3YQCfOcnua7kmXzShEl8q047dRwhx8A=;
	b=nAtK5GMv4QMlxQ/7AKCfcHCHMsCqfBdHqoZcCv+52nATHm6fd6C8LbQlZ//b5qVad0
	Uq0jjueoZdwiXHSkZfLQOLQxT5vmhhRWXRiPUAu+DQEizH5VV1AQED/Eir0QGgUoGxnS
	vhPC8k4kIt92tiH7iWOkwoVLC21Yo4qxQKfAhNXIm0BoM70u9/kcOgdEDdP42kYe+KWC
	0886kkoJQEKIONOxz5p2AuK/GZ4hYEspSCmT4DE7ZDhf0K801q72tP25TPyio89Re0jY
	D5CEkUAF33OirWcj1cgyJoK66F2pYGegPEhm8abcN47MmRNnbPtGWzKhPxTQGa9nCWr4
	44SA==
X-Received: by 10.204.147.92 with SMTP id k28mr13190050bkv.107.1362665368031; 
	Thu, 07 Mar 2013 06:09:28 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm742337bkw.5.2013.03.07.06.09.26
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 06:09:27 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Mar 2013 15:09:12 +0100
Message-Id: <1362665352-8259-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 6/6] Performed a whitespaces cleanup
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
X-List-Received-Date: Thu, 07 Mar 2013 14:09:30 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

While moving these files into new packages
it turned out that there is a need of whitespaces cleanup.
---
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  102 ++++++++++----------
 2 files changed, 52 insertions(+), 52 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
index a299aa4..fcb296d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -73,7 +73,7 @@ public class YoctoSDKProjectNature implements IProjectNature {
 		String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CXXFLAGS");
 		String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CPPFLAGS");
 		String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project, "LDFLAGS");
-		
+
 		String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str + "\" CXXFLAGS=\" -g -O0 "
 		+ CXXFLAGS_str + "\" LDFLAGS=\"" + LDFLAGS_str + "\" CPPFLAGS=\"" + CPPFLAGS_str + "\"";
 		String autogen_setting = command_prefix+" autogen.sh" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 2d3850f..bd781b3 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -79,7 +79,7 @@ public class YoctoSDKUtils {
 		if (var == null)
 		{
 			System.out.printf("ENV key %s is NULL\n", strKey);
-			return "";			
+			return "";
 		}
 
 		else
@@ -123,7 +123,7 @@ public class YoctoSDKUtils {
 				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
 		env.addVariable(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc(),
 				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		
+
 		if (envMap == null)
 		{
 			System.out.println("ENV var hasmap is NULL, Please check ENV script File!");
@@ -131,15 +131,15 @@ public class YoctoSDKUtils {
 		}
 		Iterator<String> iter = envMap.keySet().iterator();
 		while (iter.hasNext())
-		{					
+		{
 			String sKey = (String)iter.next();
 			String sValue = (String)envMap.get(sKey);
 			String targetFilePath;
 			File targetFile;
 			//replace --sysroot
-			if (sKey.matches("CFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("LDFLAGS") || 
+			if (sKey.matches("CFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("LDFLAGS") ||
 					sKey.matches("CPPFLAGS")) {
-				
+
 				int SYSROOT_idx = sValue.lastIndexOf(DEFAULT_SYSROOT_PREFIX);
 				if (SYSROOT_idx >=0 )
 					sValue = sValue.substring(0, SYSROOT_idx) + DEFAULT_SYSROOT_PREFIX + elem.getStrSysrootLoc();
@@ -149,7 +149,7 @@ public class YoctoSDKUtils {
 				targetFile = new File(targetFilePath);
 				if (targetFile.exists())
 					sValue = sValue + "/" + elem.getStrTarget();
-			} else if (sKey.matches("CONFIGURE_FLAGS")) {			
+			} else if (sKey.matches("CONFIGURE_FLAGS")) {
 				int LIBTOOL_idx = sValue.lastIndexOf(LIBTOOL_SYSROOT_PREFIX);
 				if (LIBTOOL_idx >= 0)
 					sValue = sValue.substring(0, LIBTOOL_idx) + LIBTOOL_SYSROOT_PREFIX + elem.getStrSysrootLoc();
@@ -158,7 +158,7 @@ public class YoctoSDKUtils {
 				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
 				targetFile = new File(targetFilePath);
 				if (targetFile.exists())
-					sValue = sValue + "/" + elem.getStrTarget();		
+					sValue = sValue + "/" + elem.getStrTarget();
 			} else if(sKey.matches("PKG_CONFIG_SYSROOT_DIR") || sKey.matches("OECORE_TARGET_SYSROOT")) {
 				sValue = elem.getStrSysrootLoc();
 				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
@@ -172,7 +172,7 @@ public class YoctoSDKUtils {
 				if (targetFile.exists())
 					sValue = sValue + "/" + elem.getStrTarget();
 				sValue = sValue + "/usr/lib/pkgconfig";
-			} 
+			}
 			//	env.addVariable(sKey, elem.getStrSysrootLoc(), IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
 			/*
 			else if (sKey.matches("PKG_CONFIG_PATH"))
@@ -185,18 +185,18 @@ public class YoctoSDKUtils {
 		}
 		//add ACLOCAL OPTS for libtool 2.4 support
 		env.addVariable("OECORE_ACLOCAL_OPTS",
-				"-I " + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal", 
+				"-I " + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal",
 				IEnvironmentVariable.ENVVAR_REPLACE,
 				delimiter,
 				ccdesc);
 		return;
 
 	}
-	
+
 	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException{
 		String sFileName;
 		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
-		
+
 
 		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
 			sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
@@ -212,11 +212,11 @@ public class YoctoSDKUtils {
 
 		try {
 			ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
-			ILaunchConfigurationType configType = 
+			ILaunchConfigurationType configType =
 				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
-			ILaunchConfigurationType debug_configType = 
+			ILaunchConfigurationType debug_configType =
 				lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteApplicationLaunchType");
-			
+
 			String sPath = envMap.get("PATH");
 			String sDebugName = envMap.get("GDB");
 			String sysroot_str = elem.getStrSysrootLoc();
@@ -228,15 +228,15 @@ public class YoctoSDKUtils {
 			listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
 			if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
 				createQemuLauncher(project, configType, listValue, sFileName, elem);
-			} 
+			}
 			CoreModel.getDefault().setProjectDescription(project,cpdesc);
 		} catch (CoreException e) {
 			e.printStackTrace();
-		}	
+		}
 	}
-	
-	protected static void createRemoteDebugLauncher(IProject project, 
-			ILaunchManager lManager, ILaunchConfigurationType configType,  
+
+	protected static void createRemoteDebugLauncher(IProject project,
+			ILaunchManager lManager, ILaunchConfigurationType configType,
 			String sTargetTriplet,	String strPath, String sDebugName, String sSysroot) {
 		try {
 
@@ -261,7 +261,7 @@ public class YoctoSDKUtils {
 			out.write("set sysroot " + sSysroot);
 			out.flush();
 			out.close();
-			
+
 			//set the launch configuration
 			String projectName = project.getName();
 			String configName = projectName+"_gdb_"+sTargetTriplet;
@@ -280,7 +280,7 @@ public class YoctoSDKUtils {
 			modes.add("debug");
 			w_copy.setPreferredLaunchDelegate(modes, "org.eclipse.rse.remotecdt.launch");
 			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile);
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false);	
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false);
 			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME, strDebugger);
 			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTOCOL, "mi");
 			//TWEAK avoid loading default values in org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab
@@ -305,15 +305,15 @@ public class YoctoSDKUtils {
 		}
 	}
 
-	protected static void createQemuLauncher(IProject project, 
-			ILaunchConfigurationType configType, 
+	protected static void createQemuLauncher(IProject project,
+			ILaunchConfigurationType configType,
 			ArrayList<String> listValue, String sScriptFile,
 			YoctoUIElement elem) {
 		try {
 
 			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(null, "qemu_"+elem.getStrTarget());
 
-			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);		
+			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
 
 			String argument = "-e \"source " + sScriptFile + ";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
@@ -419,12 +419,12 @@ public class YoctoSDKUtils {
 			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
 		return elem;
 	}
-	
+
 	/* Save POKY Preference settings to project's environment */
 	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project)
 	{
 		ConsoleOutputStream consoleOutStream = null;
-		
+
 		try {
 			setEnvironmentVariables(project, elem);
 			YoctoSDKProjectNature.configureAutotoolsOptions(project);
@@ -481,7 +481,7 @@ public class YoctoSDKUtils {
 		else
 			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
 		store.setValue(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
-		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());		
+		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
 	}
 
 	/* Get IDE wide POKY Preference settings from the default preference store */
@@ -538,7 +538,7 @@ public class YoctoSDKUtils {
 		return elem;
 	}
 
-	public static String qemuTargetTranslate(String strTargetArch) 
+	public static String qemuTargetTranslate(String strTargetArch)
 	{
 		String qemu_target = "";
 		if (strTargetArch.indexOf("i586") != -1)
@@ -561,10 +561,10 @@ public class YoctoSDKUtils {
 		int iEndIndex = strValue.indexOf(' ', iBeginIndex + 1);
 
 		if (iEndIndex < 0)
-			return strValue.substring(iBeginIndex + strDelim.length()); 
-		else 
-			return strValue.substring(iBeginIndex + strDelim.length(), iEndIndex); 
-	}	
+			return strValue.substring(iBeginIndex + strDelim.length());
+		else
+			return strValue.substring(iBeginIndex + strDelim.length(), iEndIndex);
+	}
 
 	public static HashMap<String, String> parseEnvScript(String sFileName)
 	{
@@ -605,7 +605,7 @@ public class YoctoSDKUtils {
 
 			return envMap;
 
-		} 
+		}
 		catch (IOException e)
 		{
 			e.printStackTrace();
@@ -614,27 +614,27 @@ public class YoctoSDKUtils {
 
 	}
 
-	public static String getPlatformArch() 
+	public static String getPlatformArch()
 	{
 		String value = null;
 		try
-        {            
-            Runtime rt = Runtime.getRuntime();
-            Process proc = rt.exec("uname -m");
-            InputStream stdin = proc.getInputStream();
-            InputStreamReader isr = new InputStreamReader(stdin);
-            BufferedReader br = new BufferedReader(isr);
-            String line = null;
-            
-            while ( (line = br.readLine()) != null) {
-                value = line;
-            }
-            int exitVal = proc.waitFor();
-            
-        } catch (Throwable t)
-          {
-            t.printStackTrace();
-          }
+		{
+			Runtime rt = Runtime.getRuntime();
+			Process proc = rt.exec("uname -m");
+			InputStream stdin = proc.getInputStream();
+			InputStreamReader isr = new InputStreamReader(stdin);
+			BufferedReader br = new BufferedReader(isr);
+			String line = null;
+
+			while ( (line = br.readLine()) != null) {
+				value = line;
+			}
+			int exitVal = proc.waitFor();
+
+		} catch (Throwable t)
+		  {
+			t.printStackTrace();
+		  }
 		return value;
 	}
 
-- 
1.7.9.5


