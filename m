Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5AAAAE014DE
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 08:52:03 -0800 (PST)
Received: by mail-wg0-f52.google.com with SMTP id 12so6076105wgh.19
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 08:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=SrwaeuuLLXeIsvlEgl9hxW4ZkUGps8vV3NuHGXMxIeY=;
	b=UD8O1ZC3Q+O5feJRDW5jynJ1lEhWLhey5cQ5hiW0A6MIN4cV29Roil/HCdQinUfcvG
	7rQYctfKkfGumh1l+aDcOhEZIo85xODQJqXnmnw9IlXfFliaQ2bGDp0sFKOg/1bmbnUZ
	2wZGyHXNdgUSIgmlwTtWDDW2bGkbOp1DGdE8mx7Tc1Wqp7egg1qIe1RMOtMrmcgSLkyn
	Mi9MZAgR8f4gohMFicfzJ9/U0KRFaz3/cu+wm0oqXqNxhS05zeSxRMiaFp+Ymx0ShHPn
	V3uIUPVOPX5MMikm5dXCIygHelWcp7DUBZbwD7BVWm+rOSt9v+2eeMgZ58mQAsyb9al1
	/8Yw==
X-Received: by 10.204.11.68 with SMTP id s4mr9612194bks.74.1362502321627;
	Tue, 05 Mar 2013 08:52:01 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id k4sm7357801bkv.18.2013.03.05.08.52.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Mar 2013 08:52:00 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 17:51:46 +0100
Message-Id: <1362502308-7622-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362502308-7622-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362502308-7622-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 2/4] Moved functionality that does not belong to YoctoSDKProjectNature
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
X-List-Received-Date: Tue, 05 Mar 2013 16:52:04 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |    8 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  153 +++++++++++++++++-
 .../org/yocto/sdk/ide/YoctoSDKUtilsConstants.java  |    8 +
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  166 +-------------------
 4 files changed, 165 insertions(+), 170 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index b961cbc..31fc962 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -24,6 +24,7 @@ import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 public class YoctoSDKChecker {
 	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
 	private static final String SYSROOTS_DIR = "sysroots";
+	private static final String SDK_VERSION = "OECORE_SDK_VERSION";
 
 	public static enum SDKCheckResults {
 		SDK_PASS("", false),
@@ -142,10 +143,11 @@ public class YoctoSDKChecker {
 			String sFileName;
 
 			if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-				sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
+				sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
 			} else {
 				//POKY TREE Mode
-				sFileName = elem.getStrToolChainRoot() + YoctoSDKProjectNature.DEFAULT_TMP_PREFIX + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+				sFileName = elem.getStrToolChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
+						YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
 			}
 
 			try {
@@ -159,7 +161,7 @@ public class YoctoSDKChecker {
 						String line = null;
 
 						while ((line = input.readLine()) != null) {
-							if (line.startsWith("export "+ YoctoSDKProjectNature.SDK_VERSION)) {
+							if (line.startsWith("export "+ SDK_VERSION)) {
 								int beginIndex = 2;
 								String sVersion = "";
 								for (;;) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index ae95bcf..5b957d2 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -14,12 +14,17 @@ package org.yocto.sdk.ide;
 import java.io.BufferedReader;
 import java.io.File;
 import java.io.FileReader;
+import java.io.FileWriter;
 import java.io.IOException;
 import java.io.InputStream;
 import java.io.InputStreamReader;
+import java.util.ArrayList;
 import java.util.HashMap;
+import java.util.HashSet;
 import java.util.Iterator;
 import java.util.Map;
+import java.util.Set;
+import java.util.StringTokenizer;
 
 import org.eclipse.cdt.core.CCorePlugin;
 import org.eclipse.cdt.core.ConsoleOutputStream;
@@ -30,6 +35,8 @@ import org.eclipse.cdt.core.model.CoreModel;
 import org.eclipse.cdt.core.resources.IConsole;
 import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
+import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
+import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectDescription;
 import org.eclipse.core.resources.ProjectScope;
@@ -37,8 +44,14 @@ import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.preferences.IEclipsePreferences;
 import org.eclipse.core.runtime.preferences.IScopeContext;
+import org.eclipse.debug.core.DebugPlugin;
+import org.eclipse.debug.core.ILaunchConfiguration;
+import org.eclipse.debug.core.ILaunchConfigurationType;
+import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
+import org.eclipse.debug.core.ILaunchManager;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.osgi.service.prefs.BackingStoreException;
+import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
@@ -49,6 +62,9 @@ public class YoctoSDKUtils {
 	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
 	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
+	private static final String DEFAULT_USR_BIN = "/usr/bin/";
+	private static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
+
 	public static String getEnvValue(IProject project, String strKey)
 	{
 		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
@@ -181,13 +197,146 @@ public class YoctoSDKUtils {
 		}
 		//add ACLOCAL OPTS for libtool 2.4 support
 		env.addVariable("OECORE_ACLOCAL_OPTS",
-				"-I " + env.getVariable(YoctoSDKProjectNature.NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal", 
+				"-I " + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal", 
 				IEnvironmentVariable.ENVVAR_REPLACE,
 				delimiter,
 				ccdesc);
 		return;
 
 	}
+	
+	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException{
+		String sFileName;
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
+		
+
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
+			sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+		}
+		else {
+			//POKY TREE Mode
+			sFileName = elem.getStrToolChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
+					YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+		}
+
+		HashMap<String, String> envMap = parseEnvScript(sFileName);
+		setEnvVars(cpdesc, elem, envMap);
+
+		try {
+			ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
+			ILaunchConfigurationType configType = 
+				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
+			ILaunchConfigurationType debug_configType = 
+				lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteApplicationLaunchType");
+			
+			String sPath = envMap.get("PATH");
+			String sDebugName = envMap.get("GDB");
+			String sysroot_str = elem.getStrSysrootLoc();
+			if (configType == null || debug_configType == null)
+				throw new YoctoGeneralException("Failed to get program or remote debug launcher!");
+			createRemoteDebugLauncher(project, lManager, debug_configType, elem.getStrTarget(), sPath, sDebugName, sysroot_str);
+
+			ArrayList<String> listValue = new ArrayList<String>();
+			listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
+			if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
+				createQemuLauncher(project, configType, listValue, sFileName, elem);
+			} 
+			CoreModel.getDefault().setProjectDescription(project,cpdesc);
+		} catch (CoreException e) {
+			e.printStackTrace();
+		}	
+	}
+	
+	protected static void createRemoteDebugLauncher(IProject project, 
+			ILaunchManager lManager, ILaunchConfigurationType configType,  
+			String sTargetTriplet,	String strPath, String sDebugName, String sSysroot) {
+		try {
+
+			String sDebugSubDir = DEFAULT_USR_BIN + sTargetTriplet;
+			StringTokenizer token = new StringTokenizer(strPath, ":");
+			String strDebugger = "";
+			while (token.hasMoreTokens())
+			{
+				String sTemp = token.nextToken();
+				if (sTemp.endsWith(sDebugSubDir)) {
+					strDebugger = sTemp + "/" + sDebugName;
+					break;
+				}
+			}
+			if (strDebugger.isEmpty())
+				return;
+			//If get default Debugger successfully, go ahead!
+
+			//create the gdbinit file
+			String sDebugInitFile = project.getLocation().toString() + "/.gdbinit";
+			FileWriter out = new FileWriter(new File(sDebugInitFile));
+			out.write("set sysroot " + sSysroot);
+			out.flush();
+			out.close();
+			
+			//set the launch configuration
+			String projectName = project.getName();
+			String configName = projectName+"_gdb_"+sTargetTriplet;
+			int i;
+			ILaunchConfiguration[] configs=lManager.getLaunchConfigurations(configType);
+			for(i=0; i<configs.length; i++)
+			{	//delete the old configuration
+				ILaunchConfiguration config=configs[i];
+				if(config.getName().equals(configName)) {
+					config.delete();
+					break;
+				}
+			}
+			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(project, configName);
+			Set<String> modes=new HashSet<String>();
+			modes.add("debug");
+			w_copy.setPreferredLaunchDelegate(modes, "org.eclipse.rse.remotecdt.launch");
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile);
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false);	
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME, strDebugger);
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTOCOL, "mi");
+			//TWEAK avoid loading default values in org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab
+			w_copy.setAttribute("org.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
+			w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME, projectName);
+			if(!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))
+			{
+				String project_src = "src/"+projectName;
+				w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME, project_src);
+			}
+
+			w_copy.doSave();
+		}
+		catch (CoreException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		catch (IOException e)
+		{
+			System.out.println("Failed to generate debug init file!");
+			System.out.println(e.getMessage());
+		}
+	}
+
+	protected static void createQemuLauncher(IProject project, 
+			ILaunchConfigurationType configType, 
+			ArrayList<String> listValue, String sScriptFile,
+			YoctoUIElement elem) {
+		try {
+
+			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(null, "qemu_"+elem.getStrTarget());
+
+			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);		
+			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
+
+			String argument = "-e \"source " + sScriptFile + ";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
+			elem.getStrQemuKernelLoc() + " " + elem.getStrSysrootLoc() + " " +  elem.getStrQemuOption() + ";bash\"";
+
+			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS", argument);
+			w_copy.doSave();
+		} catch (CoreException e) {
+		}
+
+	}
 
 	/* Get POKY Preference settings from project's preference store */
 	public static YoctoUIElement getElemFromProjectPreferences(IProject project)
@@ -289,7 +438,7 @@ public class YoctoSDKUtils {
 		ConsoleOutputStream consoleOutStream = null;
 		
 		try {
-			YoctoSDKProjectNature.setEnvironmentVariables(project, elem);
+			setEnvironmentVariables(project, elem);
 			YoctoSDKProjectNature.configureAutotoolsOptions(project);
 			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
 			console.start(project);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
new file mode 100644
index 0000000..f92c87f
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
@@ -0,0 +1,8 @@
+package org.yocto.sdk.ide;
+
+public class YoctoSDKUtilsConstants {
+
+	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
+	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
+
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
index 72237f4..3c842bf 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -10,19 +10,6 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.natures;
 
-import java.io.File;
-import java.io.FileWriter;
-import java.io.IOException;
-import java.util.ArrayList;
-import java.util.HashMap;
-import java.util.HashSet;
-import java.util.Set;
-import java.util.StringTokenizer;
-
-import org.eclipse.cdt.core.model.CoreModel;
-import org.eclipse.cdt.core.settings.model.ICProjectDescription;
-import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
-import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
 import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
 import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
 import org.eclipse.cdt.managedbuilder.core.IConfiguration;
@@ -32,11 +19,6 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.debug.core.DebugPlugin;
-import org.eclipse.debug.core.ILaunchConfiguration;
-import org.eclipse.debug.core.ILaunchConfigurationType;
-import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
-import org.eclipse.debug.core.ILaunchManager;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
@@ -46,26 +28,17 @@ import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
-import org.yocto.sdk.ide.YoctoUIElement.DeviceMode;
-import org.yocto.sdk.ide.YoctoUIElement.PokyMode;
 
 
 @SuppressWarnings("restriction")
 public class YoctoSDKProjectNature implements IProjectNature {
 	public static final  String YoctoSDK_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
 
-	private static final String DEFAULT_USR_BIN = "/usr/bin/";
-	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
-	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
-	public static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
-	public static final String SDK_VERSION = "OECORE_SDK_VERSION";
-
 	private static final String DEFAULT_HOST_STR = "host";
 	private static final String DEFAULT_TARGET_STR = "target";
 	private static final String DEFAULT_BUILD_STR = "build";
 	private static final String DEFAULT_AUTOGEN_OPT_STR = "autogenOpts";
 
-
 	private static final String DEFAULT_CONFIGURE_STR = "configure";
 	private static final String DEFAULT_AUTOGEN_STR = "autogen";
 	private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = " --with-libtool-sysroot=";
@@ -90,48 +63,6 @@ public class YoctoSDKProjectNature implements IProjectNature {
 		YoctoSDKUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
 	}
 
-
-	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException{
-		String sFileName;
-		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
-		
-
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-			sFileName = elem.getStrToolChainRoot()+"/" + DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
-		}
-		else {
-			//POKY TREE Mode
-			sFileName = elem.getStrToolChainRoot() + DEFAULT_TMP_PREFIX + DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
-		}
-
-		HashMap<String, String> envMap = YoctoSDKUtils.parseEnvScript(sFileName);
-		YoctoSDKUtils.setEnvVars(cpdesc, elem, envMap);
-
-		try {
-			ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
-			ILaunchConfigurationType configType = 
-				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
-			ILaunchConfigurationType debug_configType = 
-				lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteApplicationLaunchType");
-			
-			String sPath = envMap.get("PATH");
-			String sDebugName = envMap.get("GDB");
-			String sysroot_str = elem.getStrSysrootLoc();
-			if (configType == null || debug_configType == null)
-				throw new YoctoGeneralException("Failed to get program or remote debug launcher!");
-			createRemoteDebugLauncher(project, lManager, debug_configType, elem.getStrTarget(), sPath, sDebugName, sysroot_str);
-
-			ArrayList<String> listValue = new ArrayList<String>();
-			listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
-			if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
-				createQemuLauncher(project, configType, listValue, sFileName, elem);
-			} 
-			CoreModel.getDefault().setProjectDescription(project,cpdesc);
-		} catch (CoreException e) {
-			e.printStackTrace();
-		}	
-	}
-
 	public static void configureAutotoolsOptions(IProject project) {
 		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
 		IConfiguration icfg = info.getDefaultConfiguration();
@@ -173,103 +104,8 @@ public class YoctoSDKProjectNature implements IProjectNature {
 		}
 		else
 		{
-			setEnvironmentVariables(project, elem);
+			YoctoSDKUtils.setEnvironmentVariables(project, elem);
 			configureAutotoolsOptions(project);
 		}
 	}
-
-	protected static void createRemoteDebugLauncher(IProject project, 
-			ILaunchManager lManager, ILaunchConfigurationType configType,  
-			String sTargetTriplet,	String strPath, String sDebugName, String sSysroot) {
-		try {
-
-			String sDebugSubDir = DEFAULT_USR_BIN + sTargetTriplet;
-			StringTokenizer token = new StringTokenizer(strPath, ":");
-			String strDebugger = "";
-			while (token.hasMoreTokens())
-			{
-				String sTemp = token.nextToken();
-				if (sTemp.endsWith(sDebugSubDir)) {
-					strDebugger = sTemp + "/" + sDebugName;
-					break;
-				}
-			}
-			if (strDebugger.isEmpty())
-				return;
-			//If get default Debugger successfully, go ahead!
-
-			//create the gdbinit file
-			String sDebugInitFile = project.getLocation().toString() + "/.gdbinit";
-			FileWriter out = new FileWriter(new File(sDebugInitFile));
-			out.write("set sysroot " + sSysroot);
-			out.flush();
-			out.close();
-			
-			//set the launch configuration
-			String projectName = project.getName();
-			String configName = projectName+"_gdb_"+sTargetTriplet;
-			int i;
-			ILaunchConfiguration[] configs=lManager.getLaunchConfigurations(configType);
-			for(i=0; i<configs.length; i++)
-			{	//delete the old configuration
-				ILaunchConfiguration config=configs[i];
-				if(config.getName().equals(configName)) {
-					config.delete();
-					break;
-				}
-			}
-			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(project, configName);
-			Set<String> modes=new HashSet<String>();
-			modes.add("debug");
-			w_copy.setPreferredLaunchDelegate(modes, "org.eclipse.rse.remotecdt.launch");
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile);
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false);	
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME, strDebugger);
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTOCOL, "mi");
-			//TWEAK avoid loading default values in org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab
-			w_copy.setAttribute("org.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
-			w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME, projectName);
-			if(!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))
-			{
-				String project_src = "src/"+projectName;
-				w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME, project_src);
-			}
-
-			w_copy.doSave();
-		}
-		catch (CoreException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		catch (IOException e)
-		{
-			System.out.println("Failed to generate debug init file!");
-			System.out.println(e.getMessage());
-		}
-		
-
-	}
-
-	protected static void createQemuLauncher(IProject project, 
-			ILaunchConfigurationType configType, 
-			ArrayList<String> listValue, String sScriptFile,
-			YoctoUIElement elem) {
-		try {
-
-			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(null, "qemu_"+elem.getStrTarget());
-
-			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);		
-			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
-
-			String argument = "-e \"source " + sScriptFile + ";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
-			elem.getStrQemuKernelLoc() + " " + elem.getStrSysrootLoc() + " " +  elem.getStrQemuOption() + ";bash\"";
-
-			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS", argument);
-			w_copy.doSave();
-		} catch (CoreException e) {
-		}
-
-	}
-
-
 }
-- 
1.7.9.5


