Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C23D4E01529
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:09:26 -0800 (PST)
Received: by mail-bk0-f50.google.com with SMTP id jg9so232849bkc.23
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 06:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=o5rpFlITnBcXTHOTRAK12MdjC5+WFhSulFgOLG+PWZU=;
	b=0mYmX5N/VpgHUCMcxndPOH0pDYu0UKGEDyyuB8Gt7/1unRgZpbHdRYYYY+8MDUH8uX
	GJuelJrGnEZmXqeJChUAIrSypjH5PcjqeuWqPf3NUQr5KzbTYWwgmXpooZcUKB7mJpPA
	m+90tTghYYOPJxecwNGCRuxFCq2VOY2E4nZAXZUPRRiCKAZUUoH4c00ZVZIdzPrdkQa5
	m+7HN0OoaohcKBRtFpKfzeKlPClpJnULheAW6pF8oxBPKLSoA4yHKGTKElti2zyVH9dR
	mNJD7eUmrGqoBSoFzxwgONgGMn06mFNYBNBtJ2NNZ/jsK1MT8svBsB9Gey0sdLYippfc
	nm0w==
X-Received: by 10.204.130.85 with SMTP id r21mr13344044bks.46.1362665364894;
	Thu, 07 Mar 2013 06:09:24 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm742337bkw.5.2013.03.07.06.09.23
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 06:09:24 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Mar 2013 15:09:09 +0100
Message-Id: <1362665352-8259-4-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 3/6] Moved utils to their own package
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
X-List-Received-Date: Thu, 07 Mar 2013 14:09:27 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Made the default package (org.yocto.sdk.ide) a little bit more compact.
---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |    2 +
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  758 -------------------
 .../org/yocto/sdk/ide/YoctoSDKUtilsConstants.java  |   18 -
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |    2 +-
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |    2 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |    2 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  763 ++++++++++++++++++++
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |   18 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    2 +-
 10 files changed, 788 insertions(+), 781 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index bab6ade..74d97a0 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -20,6 +20,8 @@ import java.io.FilenameFilter;
 import java.io.IOException;
 
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 
 public class YoctoSDKChecker {
 	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
deleted file mode 100644
index e95be4d..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ /dev/null
@@ -1,758 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - initial API and implementation
- * BMW Car IT - add methods to use different preference stores
- *******************************************************************************/
-package org.yocto.sdk.ide;
-
-import java.io.BufferedReader;
-import java.io.File;
-import java.io.FileReader;
-import java.io.FileWriter;
-import java.io.IOException;
-import java.io.InputStream;
-import java.io.InputStreamReader;
-import java.util.ArrayList;
-import java.util.HashMap;
-import java.util.HashSet;
-import java.util.Iterator;
-import java.util.Map;
-import java.util.Set;
-import java.util.StringTokenizer;
-
-import org.eclipse.cdt.core.CCorePlugin;
-import org.eclipse.cdt.core.ConsoleOutputStream;
-import org.eclipse.cdt.core.envvar.IContributedEnvironment;
-import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
-import org.eclipse.cdt.core.envvar.IEnvironmentVariableManager;
-import org.eclipse.cdt.core.model.CoreModel;
-import org.eclipse.cdt.core.resources.IConsole;
-import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
-import org.eclipse.cdt.core.settings.model.ICProjectDescription;
-import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
-import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectDescription;
-import org.eclipse.core.resources.ProjectScope;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.preferences.IEclipsePreferences;
-import org.eclipse.core.runtime.preferences.IScopeContext;
-import org.eclipse.debug.core.DebugPlugin;
-import org.eclipse.debug.core.ILaunchConfiguration;
-import org.eclipse.debug.core.ILaunchConfigurationType;
-import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
-import org.eclipse.debug.core.ILaunchManager;
-import org.eclipse.jface.preference.IPreferenceStore;
-import org.osgi.service.prefs.BackingStoreException;
-import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
-import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
-import org.yocto.sdk.ide.preferences.PreferenceConstants;
-
-public class YoctoSDKUtils {
-
-	private static final String PROJECT_SCOPE = "org.yocto.sdk.ide";
-	private static final String DEFAULT_SYSROOT_PREFIX = "--sysroot=";
-	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
-	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
-
-	private static final String DEFAULT_USR_BIN = "/usr/bin/";
-	private static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
-
-	public static String getEnvValue(IProject project, String strKey)
-	{
-		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
-		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
-		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
-		IContributedEnvironment env = manager.getContributedEnvironment();
-		IEnvironmentVariable var = env.getVariable(strKey, ccdesc);
-
-		if (var == null)
-		{
-			System.out.printf("ENV key %s is NULL\n", strKey);
-			return "";			
-		}
-
-		else
-			return var.getValue();
-	}
-
-	/* Save project wide settings into ENV VARs including POKY preference settings
-	 * and Environment Script File export VARs
-	 */
-	public static void setEnvVars(ICProjectDescription cpdesc,
-			YoctoUIElement elem, HashMap<String, String> envMap) {
-		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
-		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
-		IContributedEnvironment env = manager.getContributedEnvironment();
-		String delimiter = manager.getDefaultDelimiter();
-
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
-			env.addVariable(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE,
-					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		else
-			env.addVariable(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE,
-					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-
-		env.addVariable(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot(),
-				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		env.addVariable(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget(),
-				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		env.addVariable(PreferenceConstants.TARGET_ARCH_INDEX, String.valueOf(elem.getIntTargetIndex()),
-				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
-			env.addVariable(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE,
-					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		else
-			env.addVariable(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE,
-					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-
-		env.addVariable(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc(),
-				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		env.addVariable(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption(),
-				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		env.addVariable(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc(),
-				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		
-		if (envMap == null)
-		{
-			System.out.println("ENV var hasmap is NULL, Please check ENV script File!");
-			return;
-		}
-		Iterator<String> iter = envMap.keySet().iterator();
-		while (iter.hasNext())
-		{					
-			String sKey = (String)iter.next();
-			String sValue = (String)envMap.get(sKey);
-			String targetFilePath;
-			File targetFile;
-			//replace --sysroot
-			if (sKey.matches("CFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("LDFLAGS") || 
-					sKey.matches("CPPFLAGS")) {
-				
-				int SYSROOT_idx = sValue.lastIndexOf(DEFAULT_SYSROOT_PREFIX);
-				if (SYSROOT_idx >=0 )
-					sValue = sValue.substring(0, SYSROOT_idx) + DEFAULT_SYSROOT_PREFIX + elem.getStrSysrootLoc();
-				else
-					sValue = " " + DEFAULT_SYSROOT_PREFIX + elem.getStrSysrootLoc();
-				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
-				targetFile = new File(targetFilePath);
-				if (targetFile.exists())
-					sValue = sValue + "/" + elem.getStrTarget();
-			} else if (sKey.matches("CONFIGURE_FLAGS")) {			
-				int LIBTOOL_idx = sValue.lastIndexOf(LIBTOOL_SYSROOT_PREFIX);
-				if (LIBTOOL_idx >= 0)
-					sValue = sValue.substring(0, LIBTOOL_idx) + LIBTOOL_SYSROOT_PREFIX + elem.getStrSysrootLoc();
-				else
-					sValue = " " + LIBTOOL_SYSROOT_PREFIX + elem.getStrSysrootLoc();
-				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
-				targetFile = new File(targetFilePath);
-				if (targetFile.exists())
-					sValue = sValue + "/" + elem.getStrTarget();		
-			} else if(sKey.matches("PKG_CONFIG_SYSROOT_DIR") || sKey.matches("OECORE_TARGET_SYSROOT")) {
-				sValue = elem.getStrSysrootLoc();
-				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
-				targetFile = new File(targetFilePath);
-				if (targetFile.exists())
-					sValue = sValue + "/" + elem.getStrTarget();
-			} else if (sKey.matches("PKG_CONFIG_PATH")) {
-				sValue = elem.getStrSysrootLoc();
-				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
-				targetFile = new File(targetFilePath);
-				if (targetFile.exists())
-					sValue = sValue + "/" + elem.getStrTarget();
-				sValue = sValue + "/usr/lib/pkgconfig";
-			} 
-			//	env.addVariable(sKey, elem.getStrSysrootLoc(), IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-			/*
-			else if (sKey.matches("PKG_CONFIG_PATH"))
-				env.addVariable(sKey, elem.getStrSysrootLoc()+"/"+elem.getStrTarget()+"/usr/lib/pkgconfig", IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-				//env.addVariable(sKey, sValue, IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-			else if (sKey.matches("PKG_CONFIG_SYSROOT_DIR"))
-				env.addVariable(sKey, elem.getStrSysrootLoc()+"/"+elem.getStrTarget(), IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-			*/
-			env.addVariable(sKey, sValue, IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
-		}
-		//add ACLOCAL OPTS for libtool 2.4 support
-		env.addVariable("OECORE_ACLOCAL_OPTS",
-				"-I " + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal", 
-				IEnvironmentVariable.ENVVAR_REPLACE,
-				delimiter,
-				ccdesc);
-		return;
-
-	}
-	
-	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException{
-		String sFileName;
-		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
-		
-
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
-			sFileName = elem.getStrToolChainRoot()+"/" + YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
-		}
-		else {
-			//POKY TREE Mode
-			sFileName = elem.getStrToolChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
-					YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
-		}
-
-		HashMap<String, String> envMap = parseEnvScript(sFileName);
-		setEnvVars(cpdesc, elem, envMap);
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
-	/* Get POKY Preference settings from project's preference store */
-	public static YoctoUIElement getElemFromProjectPreferences(IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null)
-		{
-			return getElemFromProjectEnv(project);
-		}
-
-		YoctoUIElement elem = new YoctoUIElement();
-		elem.setStrToolChainRoot(projectNode.get(PreferenceConstants.TOOLCHAIN_ROOT,""));
-		elem.setStrTarget(projectNode.get(PreferenceConstants.TOOLCHAIN_TRIPLET,""));
-		elem.setStrQemuKernelLoc(projectNode.get(PreferenceConstants.QEMU_KERNEL,""));
-		elem.setStrSysrootLoc(projectNode.get(PreferenceConstants.SYSROOT,""));
-		elem.setStrQemuOption(projectNode.get(PreferenceConstants.QEMU_OPTION,""));
-		String sTemp = projectNode.get(PreferenceConstants.TARGET_ARCH_INDEX,"");
-		if (!sTemp.isEmpty())
-			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
-		if (projectNode.get(PreferenceConstants.SDK_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
-		{
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		}
-		else
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-
-		if(projectNode.get(PreferenceConstants.TARGET_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		else
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-		return elem;
-	}
-
-	/* Save POKY Preference settings to project's preference store */
-	public static void saveElemToProjectPreferences(YoctoUIElement elem, IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null)
-		{
-			return;
-		}
-
-		projectNode.putInt(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
-			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
-		else
-			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
-		projectNode.put(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
-		projectNode.put(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
-		projectNode.put(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
-			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
-		else
-			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
-		projectNode.put(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
-		projectNode.put(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
-
-		try
-		{
-			projectNode.flush();
-		} catch (BackingStoreException e)
-		{
-			// TODO Auto-generated catch block
-			e.printStackTrace();
-		}
-	}
-
-	/* Get POKY Preference settings from project's environment */
-	public static YoctoUIElement getElemFromProjectEnv(IProject project)
-	{
-		YoctoUIElement elem = new YoctoUIElement();
-		elem.setStrToolChainRoot(getEnvValue(project, PreferenceConstants.TOOLCHAIN_ROOT));
-		elem.setStrTarget(getEnvValue(project, PreferenceConstants.TOOLCHAIN_TRIPLET));
-		elem.setStrQemuKernelLoc(getEnvValue(project, PreferenceConstants.QEMU_KERNEL));
-		elem.setStrSysrootLoc(getEnvValue(project, PreferenceConstants.SYSROOT));
-		elem.setStrQemuOption(getEnvValue(project, PreferenceConstants.QEMU_OPTION));
-		String sTemp = getEnvValue(project, PreferenceConstants.TARGET_ARCH_INDEX);
-		if (!sTemp.isEmpty())
-			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
-		if (getEnvValue(project, PreferenceConstants.SDK_MODE).equalsIgnoreCase(IPreferenceStore.TRUE))
-		{
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		}
-		else
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-
-		if(getEnvValue(project, PreferenceConstants.TARGET_MODE).equalsIgnoreCase(IPreferenceStore.TRUE))
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		else
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-		return elem;
-	}
-	
-	/* Save POKY Preference settings to project's environment */
-	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project)
-	{
-		ConsoleOutputStream consoleOutStream = null;
-		
-		try {
-			setEnvironmentVariables(project, elem);
-			YoctoSDKProjectNature.configureAutotoolsOptions(project);
-			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
-			console.start(project);
-			consoleOutStream = console.getOutputStream();
-			String messages = YoctoSDKMessages.getString(CONSOLE_MESSAGE);
-			consoleOutStream.write(messages.getBytes());
-		}
-		catch (CoreException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		catch (IOException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		catch (YoctoGeneralException e)
-		{
-			System.out.println(e.getMessage());
-		}
-		finally {
-			if (consoleOutStream != null) {
-				try {
-					consoleOutStream.flush();
-					consoleOutStream.close();
-				}
-				catch (IOException e) {
-					// ignore
-				}
-			}
-		}
-	}
-
-	/* Save IDE wide POKY Preference settings to the default preference store */
-	public static void saveElemToDefaultStore(YoctoUIElement elem)
-	{
-		saveElemToStore(elem, YoctoSDKPlugin.getDefault().getPreferenceStore());
-	}
-
-	/* Save IDE wide POKY Preference settings to a specific preference store */
-	public static void saveElemToStore(YoctoUIElement elem, IPreferenceStore store)
-	{
-		store.setValue(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
-		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
-			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
-		else
-			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
-		store.setValue(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
-		store.setValue(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
-		store.setValue(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
-		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
-			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
-		else
-			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
-		store.setValue(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
-		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());		
-	}
-
-	/* Get IDE wide POKY Preference settings from the default preference store */
-	public static YoctoUIElement getElemFromDefaultStore()
-	{
-		return getElemFromStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
-	}
-
-	/* Get IDE wide POKY Preference settings from a specific preference store */
-	public static YoctoUIElement getElemFromStore(IPreferenceStore store) {
-		YoctoUIElement elem = new YoctoUIElement();
-		if (store.getString(PreferenceConstants.SDK_MODE).equals(IPreferenceStore.TRUE))
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		else
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-
-		elem.setStrToolChainRoot(store.getString(PreferenceConstants.TOOLCHAIN_ROOT));
-		elem.setStrTarget(store.getString(PreferenceConstants.TOOLCHAIN_TRIPLET));
-		elem.setIntTargetIndex(store.getInt(PreferenceConstants.TARGET_ARCH_INDEX));
-		elem.setStrQemuKernelLoc(store.getString(PreferenceConstants.QEMU_KERNEL));
-		elem.setStrQemuOption(store.getString(PreferenceConstants.QEMU_OPTION));
-		elem.setStrSysrootLoc(store.getString(PreferenceConstants.SYSROOT));
-
-		if (store.getString(PreferenceConstants.TARGET_MODE).equals(IPreferenceStore.TRUE))
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		else
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-
-		return elem;
-	}
-
-	/* Get default POKY Preference settings from the default preference store */
-	public static YoctoUIElement getDefaultElemFromDefaultStore()
-	{
-		IPreferenceStore store = YoctoSDKPlugin.getDefault().getPreferenceStore();
-		YoctoUIElement elem = new YoctoUIElement();
-		if (store.getDefaultString(PreferenceConstants.SDK_MODE).equals(IPreferenceStore.TRUE))
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
-		else
-			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
-
-		elem.setStrToolChainRoot(store.getDefaultString(PreferenceConstants.TOOLCHAIN_ROOT));
-		elem.setStrTarget(store.getDefaultString(PreferenceConstants.TOOLCHAIN_TRIPLET));
-		elem.setIntTargetIndex(store.getDefaultInt(PreferenceConstants.TARGET_ARCH_INDEX));
-		elem.setStrQemuKernelLoc(store.getDefaultString(PreferenceConstants.QEMU_KERNEL));
-		elem.setStrQemuOption(store.getDefaultString(PreferenceConstants.QEMU_OPTION));
-		elem.setStrSysrootLoc(store.getDefaultString(PreferenceConstants.SYSROOT));
-
-		if (store.getDefaultString(PreferenceConstants.TARGET_MODE).equals(IPreferenceStore.TRUE))
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
-		else
-			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
-
-		return elem;
-	}
-
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
-	public static String splitString(String strValue, String strDelim)
-	{
-		int iBeginIndex = strValue.indexOf(strDelim);
-		if (iBeginIndex < 0)
-			return "";
-		int iEndIndex = strValue.indexOf(' ', iBeginIndex + 1);
-
-		if (iEndIndex < 0)
-			return strValue.substring(iBeginIndex + strDelim.length()); 
-		else 
-			return strValue.substring(iBeginIndex + strDelim.length(), iEndIndex); 
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
-	public static void addNature(IProject project, String natureId, IProgressMonitor monitor) throws CoreException
-	{
-		IProjectDescription description = project.getDescription();
-		String[] natures = description.getNatureIds();
-
-		for (int i = 0; i < natures.length; ++i) {
-			if (natureId.equals(natures[i]))
-				return;
-		}
-
-		String[] newNatures = new String[natures.length + 1];
-	    System.arraycopy(natures, 0, newNatures, 0, natures.length);
-	    newNatures[natures.length] = natureId;
-	    description.setNatureIds(newNatures);
-	    project.setDescription(description, monitor);
-
-	}
-
-	public static String getPlatformArch() 
-	{
-		String value = null;
-		try
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
-		return value;
-	}
-
-	/* Save profiles and selected profile to the default preference store */
-	public static void saveProfilesToDefaultStore(YoctoProfileElement profileElement) {
-		saveProfilesToStore(profileElement, YoctoSDKPlugin.getDefault().getPreferenceStore());
-	}
-
-	/* Save profiles and selected profile to the project's preference store */
-	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectPreferences = projectScope.getNode(PROJECT_SCOPE);
-		if (projectPreferences == null) {
-			return;
-		}
-
-		projectPreferences.put(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
-		projectPreferences.put(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
-
-		try
-		{
-			projectPreferences.flush();
-		} catch (BackingStoreException e)
-		{
-			// TODO Auto-generated catch block
-			e.printStackTrace();
-		}
-	}
-
-	/* Save profiles and selected profile to a specific preference store */
-	public static void saveProfilesToStore(YoctoProfileElement profileElement, IPreferenceStore store)
-	{
-		store.setValue(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
-		store.setValue(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
-	}
-
-	/* Get profiles and selected profile from the default preference store */
-	public static YoctoProfileElement getProfilesFromDefaultStore()
-	{
-		return getProfilesFromStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
-	}
-
-	/* Get profiles and selected profile from a specific preference store */
-	public static YoctoProfileElement getProfilesFromStore(IPreferenceStore store)
-	{
-		String profiles = store.getString(PreferenceConstants.PROFILES);
-		String selectedProfile = store.getString(PreferenceConstants.SELECTED_PROFILE);
-
-		return new YoctoProfileElement(profiles, selectedProfile);
-	}
-
-	/* Get profiles and selected profile from the project's preference store */
-	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null)
-		{
-			return getProfilesFromDefaultStore();
-		}
-
-		String profiles = projectNode.get(PreferenceConstants.PROFILES, "");
-		String selectedProfile = projectNode.get(PreferenceConstants.SELECTED_PROFILE, "");
-
-		return new YoctoProfileElement(profiles, selectedProfile);
-	}
-
-	public static boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null) {
-			return false;
-		}
-
-		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
-
-		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
-			return false;
-		}
-
-		return true;
-	}
-
-	public static void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting)
-	{
-		IScopeContext projectScope = new ProjectScope(project);
-		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
-		if (projectNode == null) {
-			return;
-		}
-
-		if (useProjectSpecificSetting) {
-			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.TRUE);
-		} else {
-			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
-		}
-
-		try {
-			projectNode.flush();
-		} catch (BackingStoreException e) {
-			// TODO Auto-generated catch block
-			e.printStackTrace();
-		}
-	}
-}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
deleted file mode 100644
index 2ead684..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
+++ /dev/null
@@ -1,18 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2013 BMW Car IT GmbH.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * BMW Car IT - initial API and implementation
- *******************************************************************************/
-package org.yocto.sdk.ide;
-
-public class YoctoSDKUtilsConstants {
-
-	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
-	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
-
-}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
index 9207e7e..9057b8e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
@@ -5,7 +5,7 @@ import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class YoctoSDKEmptyProjectNature implements IProjectNature {
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
index 3c842bf..2c6a782 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -24,10 +24,10 @@ import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 
 @SuppressWarnings("restriction")
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index e94d35d..d6a7c4f 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -34,9 +34,9 @@ import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 34c497b..8251fad 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -29,8 +29,8 @@ import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
new file mode 100644
index 0000000..5ccd6e2
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -0,0 +1,763 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ * BMW Car IT - add methods to use different preference stores
+ *******************************************************************************/
+package org.yocto.sdk.ide.utils;
+
+import java.io.BufferedReader;
+import java.io.File;
+import java.io.FileReader;
+import java.io.FileWriter;
+import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
+import java.util.ArrayList;
+import java.util.HashMap;
+import java.util.HashSet;
+import java.util.Iterator;
+import java.util.Map;
+import java.util.Set;
+import java.util.StringTokenizer;
+
+import org.eclipse.cdt.core.CCorePlugin;
+import org.eclipse.cdt.core.ConsoleOutputStream;
+import org.eclipse.cdt.core.envvar.IContributedEnvironment;
+import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
+import org.eclipse.cdt.core.envvar.IEnvironmentVariableManager;
+import org.eclipse.cdt.core.model.CoreModel;
+import org.eclipse.cdt.core.resources.IConsole;
+import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
+import org.eclipse.cdt.core.settings.model.ICProjectDescription;
+import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
+import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IProjectDescription;
+import org.eclipse.core.resources.ProjectScope;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.preferences.IEclipsePreferences;
+import org.eclipse.core.runtime.preferences.IScopeContext;
+import org.eclipse.debug.core.DebugPlugin;
+import org.eclipse.debug.core.ILaunchConfiguration;
+import org.eclipse.debug.core.ILaunchConfigurationType;
+import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
+import org.eclipse.debug.core.ILaunchManager;
+import org.eclipse.jface.preference.IPreferenceStore;
+import org.osgi.service.prefs.BackingStoreException;
+import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.preferences.PreferenceConstants;
+
+public class YoctoSDKUtils {
+
+	private static final String PROJECT_SCOPE = "org.yocto.sdk.ide";
+	private static final String DEFAULT_SYSROOT_PREFIX = "--sysroot=";
+	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
+	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
+
+	private static final String DEFAULT_USR_BIN = "/usr/bin/";
+	private static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
+
+	public static String getEnvValue(IProject project, String strKey)
+	{
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
+		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
+		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
+		IContributedEnvironment env = manager.getContributedEnvironment();
+		IEnvironmentVariable var = env.getVariable(strKey, ccdesc);
+
+		if (var == null)
+		{
+			System.out.printf("ENV key %s is NULL\n", strKey);
+			return "";			
+		}
+
+		else
+			return var.getValue();
+	}
+
+	/* Save project wide settings into ENV VARs including POKY preference settings
+	 * and Environment Script File export VARs
+	 */
+	public static void setEnvVars(ICProjectDescription cpdesc,
+			YoctoUIElement elem, HashMap<String, String> envMap) {
+		ICConfigurationDescription ccdesc = cpdesc.getActiveConfiguration();
+		IEnvironmentVariableManager manager = CCorePlugin.getDefault().getBuildEnvironmentManager();
+		IContributedEnvironment env = manager.getContributedEnvironment();
+		String delimiter = manager.getDefaultDelimiter();
+
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
+			env.addVariable(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE,
+					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		else
+			env.addVariable(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE,
+					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		env.addVariable(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot(),
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget(),
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable(PreferenceConstants.TARGET_ARCH_INDEX, String.valueOf(elem.getIntTargetIndex()),
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
+			env.addVariable(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE,
+					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		else
+			env.addVariable(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE,
+					IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+
+		env.addVariable(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc(),
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption(),
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		env.addVariable(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc(),
+				IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		
+		if (envMap == null)
+		{
+			System.out.println("ENV var hasmap is NULL, Please check ENV script File!");
+			return;
+		}
+		Iterator<String> iter = envMap.keySet().iterator();
+		while (iter.hasNext())
+		{					
+			String sKey = (String)iter.next();
+			String sValue = (String)envMap.get(sKey);
+			String targetFilePath;
+			File targetFile;
+			//replace --sysroot
+			if (sKey.matches("CFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("CXXFLAGS") || sKey.matches("LDFLAGS") || 
+					sKey.matches("CPPFLAGS")) {
+				
+				int SYSROOT_idx = sValue.lastIndexOf(DEFAULT_SYSROOT_PREFIX);
+				if (SYSROOT_idx >=0 )
+					sValue = sValue.substring(0, SYSROOT_idx) + DEFAULT_SYSROOT_PREFIX + elem.getStrSysrootLoc();
+				else
+					sValue = " " + DEFAULT_SYSROOT_PREFIX + elem.getStrSysrootLoc();
+				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
+				targetFile = new File(targetFilePath);
+				if (targetFile.exists())
+					sValue = sValue + "/" + elem.getStrTarget();
+			} else if (sKey.matches("CONFIGURE_FLAGS")) {			
+				int LIBTOOL_idx = sValue.lastIndexOf(LIBTOOL_SYSROOT_PREFIX);
+				if (LIBTOOL_idx >= 0)
+					sValue = sValue.substring(0, LIBTOOL_idx) + LIBTOOL_SYSROOT_PREFIX + elem.getStrSysrootLoc();
+				else
+					sValue = " " + LIBTOOL_SYSROOT_PREFIX + elem.getStrSysrootLoc();
+				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
+				targetFile = new File(targetFilePath);
+				if (targetFile.exists())
+					sValue = sValue + "/" + elem.getStrTarget();		
+			} else if(sKey.matches("PKG_CONFIG_SYSROOT_DIR") || sKey.matches("OECORE_TARGET_SYSROOT")) {
+				sValue = elem.getStrSysrootLoc();
+				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
+				targetFile = new File(targetFilePath);
+				if (targetFile.exists())
+					sValue = sValue + "/" + elem.getStrTarget();
+			} else if (sKey.matches("PKG_CONFIG_PATH")) {
+				sValue = elem.getStrSysrootLoc();
+				targetFilePath = elem.getStrSysrootLoc() + "/" + elem.getStrTarget();
+				targetFile = new File(targetFilePath);
+				if (targetFile.exists())
+					sValue = sValue + "/" + elem.getStrTarget();
+				sValue = sValue + "/usr/lib/pkgconfig";
+			} 
+			//	env.addVariable(sKey, elem.getStrSysrootLoc(), IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+			/*
+			else if (sKey.matches("PKG_CONFIG_PATH"))
+				env.addVariable(sKey, elem.getStrSysrootLoc()+"/"+elem.getStrTarget()+"/usr/lib/pkgconfig", IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+				//env.addVariable(sKey, sValue, IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+			else if (sKey.matches("PKG_CONFIG_SYSROOT_DIR"))
+				env.addVariable(sKey, elem.getStrSysrootLoc()+"/"+elem.getStrTarget(), IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+			*/
+			env.addVariable(sKey, sValue, IEnvironmentVariable.ENVVAR_REPLACE, delimiter, ccdesc);
+		}
+		//add ACLOCAL OPTS for libtool 2.4 support
+		env.addVariable("OECORE_ACLOCAL_OPTS",
+				"-I " + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal", 
+				IEnvironmentVariable.ENVVAR_REPLACE,
+				delimiter,
+				ccdesc);
+		return;
+
+	}
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
+
+	/* Get POKY Preference settings from project's preference store */
+	public static YoctoUIElement getElemFromProjectPreferences(IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null)
+		{
+			return getElemFromProjectEnv(project);
+		}
+
+		YoctoUIElement elem = new YoctoUIElement();
+		elem.setStrToolChainRoot(projectNode.get(PreferenceConstants.TOOLCHAIN_ROOT,""));
+		elem.setStrTarget(projectNode.get(PreferenceConstants.TOOLCHAIN_TRIPLET,""));
+		elem.setStrQemuKernelLoc(projectNode.get(PreferenceConstants.QEMU_KERNEL,""));
+		elem.setStrSysrootLoc(projectNode.get(PreferenceConstants.SYSROOT,""));
+		elem.setStrQemuOption(projectNode.get(PreferenceConstants.QEMU_OPTION,""));
+		String sTemp = projectNode.get(PreferenceConstants.TARGET_ARCH_INDEX,"");
+		if (!sTemp.isEmpty())
+			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
+		if (projectNode.get(PreferenceConstants.SDK_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
+		{
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		}
+		else
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+
+		if(projectNode.get(PreferenceConstants.TARGET_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		else
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+		return elem;
+	}
+
+	/* Save POKY Preference settings to project's preference store */
+	public static void saveElemToProjectPreferences(YoctoUIElement elem, IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null)
+		{
+			return;
+		}
+
+		projectNode.putInt(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
+			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
+		else
+			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
+		projectNode.put(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
+		projectNode.put(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
+		projectNode.put(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
+			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
+		else
+			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
+		projectNode.put(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
+		projectNode.put(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
+
+		try
+		{
+			projectNode.flush();
+		} catch (BackingStoreException e)
+		{
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+	}
+
+	/* Get POKY Preference settings from project's environment */
+	public static YoctoUIElement getElemFromProjectEnv(IProject project)
+	{
+		YoctoUIElement elem = new YoctoUIElement();
+		elem.setStrToolChainRoot(getEnvValue(project, PreferenceConstants.TOOLCHAIN_ROOT));
+		elem.setStrTarget(getEnvValue(project, PreferenceConstants.TOOLCHAIN_TRIPLET));
+		elem.setStrQemuKernelLoc(getEnvValue(project, PreferenceConstants.QEMU_KERNEL));
+		elem.setStrSysrootLoc(getEnvValue(project, PreferenceConstants.SYSROOT));
+		elem.setStrQemuOption(getEnvValue(project, PreferenceConstants.QEMU_OPTION));
+		String sTemp = getEnvValue(project, PreferenceConstants.TARGET_ARCH_INDEX);
+		if (!sTemp.isEmpty())
+			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
+		if (getEnvValue(project, PreferenceConstants.SDK_MODE).equalsIgnoreCase(IPreferenceStore.TRUE))
+		{
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		}
+		else
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+
+		if(getEnvValue(project, PreferenceConstants.TARGET_MODE).equalsIgnoreCase(IPreferenceStore.TRUE))
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		else
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+		return elem;
+	}
+	
+	/* Save POKY Preference settings to project's environment */
+	public static void saveElemToProjectEnv(YoctoUIElement elem, IProject project)
+	{
+		ConsoleOutputStream consoleOutStream = null;
+		
+		try {
+			setEnvironmentVariables(project, elem);
+			YoctoSDKProjectNature.configureAutotoolsOptions(project);
+			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
+			console.start(project);
+			consoleOutStream = console.getOutputStream();
+			String messages = YoctoSDKMessages.getString(CONSOLE_MESSAGE);
+			consoleOutStream.write(messages.getBytes());
+		}
+		catch (CoreException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		catch (IOException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		catch (YoctoGeneralException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		finally {
+			if (consoleOutStream != null) {
+				try {
+					consoleOutStream.flush();
+					consoleOutStream.close();
+				}
+				catch (IOException e) {
+					// ignore
+				}
+			}
+		}
+	}
+
+	/* Save IDE wide POKY Preference settings to the default preference store */
+	public static void saveElemToDefaultStore(YoctoUIElement elem)
+	{
+		saveElemToStore(elem, YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
+
+	/* Save IDE wide POKY Preference settings to a specific preference store */
+	public static void saveElemToStore(YoctoUIElement elem, IPreferenceStore store)
+	{
+		store.setValue(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
+			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
+		else
+			store.setValue(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
+		store.setValue(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
+		store.setValue(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
+		store.setValue(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
+			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
+		else
+			store.setValue(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
+		store.setValue(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
+		store.setValue(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());		
+	}
+
+	/* Get IDE wide POKY Preference settings from the default preference store */
+	public static YoctoUIElement getElemFromDefaultStore()
+	{
+		return getElemFromStore(YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
+
+	/* Get IDE wide POKY Preference settings from a specific preference store */
+	public static YoctoUIElement getElemFromStore(IPreferenceStore store) {
+		YoctoUIElement elem = new YoctoUIElement();
+		if (store.getString(PreferenceConstants.SDK_MODE).equals(IPreferenceStore.TRUE))
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		else
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+
+		elem.setStrToolChainRoot(store.getString(PreferenceConstants.TOOLCHAIN_ROOT));
+		elem.setStrTarget(store.getString(PreferenceConstants.TOOLCHAIN_TRIPLET));
+		elem.setIntTargetIndex(store.getInt(PreferenceConstants.TARGET_ARCH_INDEX));
+		elem.setStrQemuKernelLoc(store.getString(PreferenceConstants.QEMU_KERNEL));
+		elem.setStrQemuOption(store.getString(PreferenceConstants.QEMU_OPTION));
+		elem.setStrSysrootLoc(store.getString(PreferenceConstants.SYSROOT));
+
+		if (store.getString(PreferenceConstants.TARGET_MODE).equals(IPreferenceStore.TRUE))
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		else
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+
+		return elem;
+	}
+
+	/* Get default POKY Preference settings from the default preference store */
+	public static YoctoUIElement getDefaultElemFromDefaultStore()
+	{
+		IPreferenceStore store = YoctoSDKPlugin.getDefault().getPreferenceStore();
+		YoctoUIElement elem = new YoctoUIElement();
+		if (store.getDefaultString(PreferenceConstants.SDK_MODE).equals(IPreferenceStore.TRUE))
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		else
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+
+		elem.setStrToolChainRoot(store.getDefaultString(PreferenceConstants.TOOLCHAIN_ROOT));
+		elem.setStrTarget(store.getDefaultString(PreferenceConstants.TOOLCHAIN_TRIPLET));
+		elem.setIntTargetIndex(store.getDefaultInt(PreferenceConstants.TARGET_ARCH_INDEX));
+		elem.setStrQemuKernelLoc(store.getDefaultString(PreferenceConstants.QEMU_KERNEL));
+		elem.setStrQemuOption(store.getDefaultString(PreferenceConstants.QEMU_OPTION));
+		elem.setStrSysrootLoc(store.getDefaultString(PreferenceConstants.SYSROOT));
+
+		if (store.getDefaultString(PreferenceConstants.TARGET_MODE).equals(IPreferenceStore.TRUE))
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		else
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+
+		return elem;
+	}
+
+	public static String qemuTargetTranslate(String strTargetArch) 
+	{
+		String qemu_target = "";
+		if (strTargetArch.indexOf("i586") != -1)
+			qemu_target = "qemux86";
+		else if (strTargetArch.indexOf("x86_64") != -1)
+			qemu_target = "qemux86-64";
+		else if (strTargetArch.indexOf("arm") != -1)
+			qemu_target = "qemuarm";
+		else if (strTargetArch.indexOf("mips") != -1)
+			qemu_target = "qemumips";
+		else if (strTargetArch.indexOf("ppc") != -1)
+			qemu_target = "qemuppc";
+		return qemu_target;
+	}
+	public static String splitString(String strValue, String strDelim)
+	{
+		int iBeginIndex = strValue.indexOf(strDelim);
+		if (iBeginIndex < 0)
+			return "";
+		int iEndIndex = strValue.indexOf(' ', iBeginIndex + 1);
+
+		if (iEndIndex < 0)
+			return strValue.substring(iBeginIndex + strDelim.length()); 
+		else 
+			return strValue.substring(iBeginIndex + strDelim.length(), iEndIndex); 
+	}	
+
+	public static HashMap<String, String> parseEnvScript(String sFileName)
+	{
+		try
+		{
+			HashMap<String, String> envMap = new HashMap<String, String>();
+			File file = new File(sFileName);
+
+			if (file.exists()) {
+				BufferedReader input = new BufferedReader(new FileReader(file));
+
+				try
+				{
+					String line = null;
+
+					while ((line = input.readLine()) != null)
+					{
+						if (!line.startsWith("export"))
+							continue;
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
+
+				}
+				finally {
+					input.close();
+				}
+			}
+
+			return envMap;
+
+		} 
+		catch (IOException e)
+		{
+			e.printStackTrace();
+			return null;
+		}
+
+	}
+
+	public static void addNature(IProject project, String natureId, IProgressMonitor monitor) throws CoreException
+	{
+		IProjectDescription description = project.getDescription();
+		String[] natures = description.getNatureIds();
+
+		for (int i = 0; i < natures.length; ++i) {
+			if (natureId.equals(natures[i]))
+				return;
+		}
+
+		String[] newNatures = new String[natures.length + 1];
+	    System.arraycopy(natures, 0, newNatures, 0, natures.length);
+	    newNatures[natures.length] = natureId;
+	    description.setNatureIds(newNatures);
+	    project.setDescription(description, monitor);
+
+	}
+
+	public static String getPlatformArch() 
+	{
+		String value = null;
+		try
+        {            
+            Runtime rt = Runtime.getRuntime();
+            Process proc = rt.exec("uname -m");
+            InputStream stdin = proc.getInputStream();
+            InputStreamReader isr = new InputStreamReader(stdin);
+            BufferedReader br = new BufferedReader(isr);
+            String line = null;
+            
+            while ( (line = br.readLine()) != null) {
+                value = line;
+            }
+            int exitVal = proc.waitFor();
+            
+        } catch (Throwable t)
+          {
+            t.printStackTrace();
+          }
+		return value;
+	}
+
+	/* Save profiles and selected profile to the default preference store */
+	public static void saveProfilesToDefaultStore(YoctoProfileElement profileElement) {
+		saveProfilesToStore(profileElement, YoctoSDKPlugin.getDefault().getPreferenceStore());
+	}
+
+	/* Save profiles and selected profile to the project's preference store */
+	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectPreferences = projectScope.getNode(PROJECT_SCOPE);
+		if (projectPreferences == null) {
+			return;
+		}
+
+		projectPreferences.put(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
+		projectPreferences.put(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
+
+		try
+		{
+			projectPreferences.flush();
+		} catch (BackingStoreException e)
+		{
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
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
+
+	/* Get profiles and selected profile from the project's preference store */
+	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null)
+		{
+			return getProfilesFromDefaultStore();
+		}
+
+		String profiles = projectNode.get(PreferenceConstants.PROFILES, "");
+		String selectedProfile = projectNode.get(PreferenceConstants.SELECTED_PROFILE, "");
+
+		return new YoctoProfileElement(profiles, selectedProfile);
+	}
+
+	public static boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null) {
+			return false;
+		}
+
+		String useProjectSpecificSettingString = projectNode.get(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
+
+		if (useProjectSpecificSettingString.equals(IPreferenceStore.FALSE)) {
+			return false;
+		}
+
+		return true;
+	}
+
+	public static void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null) {
+			return;
+		}
+
+		if (useProjectSpecificSetting) {
+			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.TRUE);
+		} else {
+			projectNode.put(PreferenceConstants.PROJECT_SPECIFIC_PROFILE, IPreferenceStore.FALSE);
+		}
+
+		try {
+			projectNode.flush();
+		} catch (BackingStoreException e) {
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java
new file mode 100644
index 0000000..df9c882
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java
@@ -0,0 +1,18 @@
+/*******************************************************************************
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.utils;
+
+public class YoctoSDKUtilsConstants {
+
+	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
+	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
+
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 39f7d75..5ffd6b7 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -48,8 +48,8 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 
 
-- 
1.7.9.5


