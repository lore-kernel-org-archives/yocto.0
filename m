Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f49.google.com (mail-bk0-f49.google.com
	[209.85.214.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id BC86EE01518
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 08:12:11 -0800 (PST)
Received: by mail-bk0-f49.google.com with SMTP id w11so375965bku.36
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 08:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=VeS3TS/HeguoE9PwYnsYQiRzX8XHQebvidJ1oC0FFx8=;
	b=ihuVqOvNFso+j1AU7pDGW60XxYvm2GA3eYgn4mvRiPJrEEsxBIRW6HKz3VwpuwtQ1g
	+tK3y1qwMb9d1ywT+f5ZRWAiyVsx69ZQLMwwrzoJAt12of0254Nt5GuR33jdVY6jLVOF
	7hga7TcmJnNRvnau0CB/asss8qSQH5lpw1YgB0CMqTSlXuBQk6ANCCXROiblMxC4Oc15
	n4yWQNYnHM8KWHAZO6SHyh7c6kyhe8+BL1alApwuQyPD3K5uw9uCfsl9bFv1bJvmxev0
	3SVBx8v4FR6IxhJI71nfsl/DEOIDDI+Uq8UA6lztFj/1Ay7yq5sOxni7imU2wP3eyDYL
	LI+w==
X-Received: by 10.205.133.1 with SMTP id hw1mr11532316bkc.58.1362586330082;
	Wed, 06 Mar 2013 08:12:10 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id n1sm8513456bkv.14.2013.03.06.08.12.08
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 08:12:09 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Mar 2013 17:11:52 +0100
Message-Id: <1362586316-9655-2-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 1/5] Moved YoctoSDK natures to their own package
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
X-List-Received-Date: Wed, 06 Mar 2013 16:12:12 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

If further natures are added, they will fit into
this package and not overpopulate the org.yocto.sdk.ide package.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |    2 +
 .../yocto/sdk/ide/YoctoSDKEmptyProjectNature.java  |   38 ---
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  267 -------------------
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |    1 +
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   40 +++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  275 ++++++++++++++++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    |    2 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    4 +-
 9 files changed, 323 insertions(+), 310 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKEmptyProjectNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 6548ae2..ea1a8ab 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -24,7 +24,7 @@
       </requires-nature>
       <runtime>
          <run
-               class="org.yocto.sdk.ide.YoctoSDKProjectNature">
+               class="org.yocto.sdk.ide.natures.YoctoSDKProjectNature">
          </run>
       </runtime>
       <builder
@@ -36,7 +36,7 @@
          point="org.eclipse.core.resources.natures">
       <runtime>
          <run
-               class="org.yocto.sdk.ide.YoctoSDKEmptyProjectNature">
+               class="org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature">
          </run>
       </runtime>
    </extension>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 5f790ee..3047641 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -19,6 +19,8 @@ import java.io.FileReader;
 import java.io.FilenameFilter;
 import java.io.IOException;
 
+import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
+
 public class YoctoSDKChecker {
 	private static final String[] saInvalidVer = {"1.0", "0.9", "0.9+"};
 	private static final String SYSROOTS_DIR = "sysroots";
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKEmptyProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKEmptyProjectNature.java
deleted file mode 100644
index 8df9e86..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKEmptyProjectNature.java
+++ /dev/null
@@ -1,38 +0,0 @@
-package org.yocto.sdk.ide;
-
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectNature;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
-
-public class YoctoSDKEmptyProjectNature implements IProjectNature {
-
-	public static final  String YoctoSDK_EMPTY_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKEmptyNature";
-
-	private IProject proj;
-
-	public void configure() throws CoreException {
-		// TODO Auto-generated method stub
-
-	}
-
-	public void deconfigure() throws CoreException {
-		// TODO Auto-generated method stub
-
-	}
-
-	public IProject getProject() {
-		// TODO Auto-generated method stub
-		return proj;
-	}
-
-	public void setProject(IProject project) {
-		// TODO Auto-generated method stub
-		this.proj = project;
-	}
-
-	public static void addYoctoSDKEmptyNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKUtils.addNature(project, YoctoSDK_EMPTY_NATURE_ID, monitor);
-	}
-
-}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
deleted file mode 100644
index 69b1e2a..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
+++ /dev/null
@@ -1,267 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - initial API and implementation
- *******************************************************************************/
-package org.yocto.sdk.ide;
-
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
-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
-import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
-import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectNature;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.debug.core.DebugPlugin;
-import org.eclipse.debug.core.ILaunchConfiguration;
-import org.eclipse.debug.core.ILaunchConfigurationType;
-import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
-import org.eclipse.debug.core.ILaunchManager;
-import org.eclipse.jface.preference.IPreferenceStore;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
-
-
-@SuppressWarnings("restriction")
-public class YoctoSDKProjectNature implements IProjectNature {
-	public static final  String YoctoSDK_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
-
-	private static final String DEFAULT_USR_BIN = "/usr/bin/";
-	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
-	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
-	public static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
-	public static final String SDK_VERSION = "OECORE_SDK_VERSION";
-
-	private static final String DEFAULT_HOST_STR = "host";
-	private static final String DEFAULT_TARGET_STR = "target";
-	private static final String DEFAULT_BUILD_STR = "build";
-	private static final String DEFAULT_AUTOGEN_OPT_STR = "autogenOpts";
-
-
-	private static final String DEFAULT_CONFIGURE_STR = "configure";
-	private static final String DEFAULT_AUTOGEN_STR = "autogen";
-	private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = " --with-libtool-sysroot=";
-
-	private IProject proj;
-
-	public void configure() throws CoreException {
-	}
-
-	public void deconfigure() throws CoreException {
-	}
-
-	public IProject getProject() {
-		return proj;
-	}
-
-	public void setProject(IProject project) {
-		this.proj = project;
-	}
-
-	public static void addYoctoSDKNature(IProject project, IProgressMonitor monitor) throws CoreException {
-		YoctoSDKUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
-	}
-
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
-	public static void configureAutotoolsOptions(IProject project) {
-		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
-		IConfiguration icfg = info.getDefaultConfiguration();
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromProjectEnv(project);
-		String sysroot_str = elem.getStrSysrootLoc();
-		String id = icfg.getId();
-		String CFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CFLAGS");
-		String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CXXFLAGS");
-		String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CPPFLAGS");
-		String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project, "LDFLAGS");
-		
-		String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str + "\" CXXFLAGS=\" -g -O0 "
-		+ CXXFLAGS_str + "\" LDFLAGS=\"" + LDFLAGS_str + "\" CPPFLAGS=\"" + CPPFLAGS_str + "\"";
-		String autogen_setting = command_prefix+" autogen.sh" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
-		String configure_setting = command_prefix + " configure" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
-		IAConfiguration cfg = AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);
-		String strConfigure = YoctoSDKUtils.getEnvValue(project, "CONFIGURE_FLAGS");
-
-		cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
-		cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(strConfigure, "--build="));
-		cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(strConfigure, "--host="));
-		cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString(strConfigure, "--target="));
-		cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
-		cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
-
-		AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
-		AutotoolsConfigurationManager.getInstance().saveConfigs(project);
-	}
-
-	public static void configureAutotools(IProject project) throws YoctoGeneralException {
-		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
-		YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
-		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
-		if (result != SDKCheckResults.SDK_PASS){
-			String strErrorMsg =  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
-			throw new YoctoGeneralException(strErrorMsg);
-		}
-		else
-		{
-			setEnvironmentVariables(project, elem);
-			configureAutotoolsOptions(project);
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
-}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index e38deca..ae95bcf 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -39,6 +39,7 @@ import org.eclipse.core.runtime.preferences.IEclipsePreferences;
 import org.eclipse.core.runtime.preferences.IScopeContext;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.osgi.service.prefs.BackingStoreException;
+import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoSDKUtils {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
new file mode 100644
index 0000000..9207e7e
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
@@ -0,0 +1,40 @@
+package org.yocto.sdk.ide.natures;
+
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IProjectNature;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoSDKUtils;
+
+public class YoctoSDKEmptyProjectNature implements IProjectNature {
+
+	public static final  String YoctoSDK_EMPTY_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKEmptyNature";
+
+	private IProject proj;
+
+	public void configure() throws CoreException {
+		// TODO Auto-generated method stub
+
+	}
+
+	public void deconfigure() throws CoreException {
+		// TODO Auto-generated method stub
+
+	}
+
+	public IProject getProject() {
+		// TODO Auto-generated method stub
+		return proj;
+	}
+
+	public void setProject(IProject project) {
+		// TODO Auto-generated method stub
+		this.proj = project;
+	}
+
+	public static void addYoctoSDKEmptyNature(IProject project, IProgressMonitor monitor) throws CoreException {
+		YoctoSDKUtils.addNature(project, YoctoSDK_EMPTY_NATURE_ID, monitor);
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
new file mode 100644
index 0000000..72237f4
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
@@ -0,0 +1,275 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide.natures;
+
+import java.io.File;
+import java.io.FileWriter;
+import java.io.IOException;
+import java.util.ArrayList;
+import java.util.HashMap;
+import java.util.HashSet;
+import java.util.Set;
+import java.util.StringTokenizer;
+
+import org.eclipse.cdt.core.model.CoreModel;
+import org.eclipse.cdt.core.settings.model.ICProjectDescription;
+import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
+import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
+import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
+import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
+import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IProjectNature;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.debug.core.DebugPlugin;
+import org.eclipse.debug.core.ILaunchConfiguration;
+import org.eclipse.debug.core.ILaunchConfigurationType;
+import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
+import org.eclipse.debug.core.ILaunchManager;
+import org.eclipse.jface.preference.IPreferenceStore;
+import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoSDKChecker;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoSDKUtils;
+import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoUIElement.DeviceMode;
+import org.yocto.sdk.ide.YoctoUIElement.PokyMode;
+
+
+@SuppressWarnings("restriction")
+public class YoctoSDKProjectNature implements IProjectNature {
+	public static final  String YoctoSDK_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
+
+	private static final String DEFAULT_USR_BIN = "/usr/bin/";
+	public static final String DEFAULT_ENV_FILE_PREFIX = "environment-setup-";
+	public static final String DEFAULT_TMP_PREFIX = "/tmp/";
+	public static final String NATIVE_SYSROOT = "OECORE_NATIVE_SYSROOT";
+	public static final String SDK_VERSION = "OECORE_SDK_VERSION";
+
+	private static final String DEFAULT_HOST_STR = "host";
+	private static final String DEFAULT_TARGET_STR = "target";
+	private static final String DEFAULT_BUILD_STR = "build";
+	private static final String DEFAULT_AUTOGEN_OPT_STR = "autogenOpts";
+
+
+	private static final String DEFAULT_CONFIGURE_STR = "configure";
+	private static final String DEFAULT_AUTOGEN_STR = "autogen";
+	private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = " --with-libtool-sysroot=";
+
+	private IProject proj;
+
+	public void configure() throws CoreException {
+	}
+
+	public void deconfigure() throws CoreException {
+	}
+
+	public IProject getProject() {
+		return proj;
+	}
+
+	public void setProject(IProject project) {
+		this.proj = project;
+	}
+
+	public static void addYoctoSDKNature(IProject project, IProgressMonitor monitor) throws CoreException {
+		YoctoSDKUtils.addNature(project, YoctoSDK_NATURE_ID, monitor);
+	}
+
+
+	public static void setEnvironmentVariables(IProject project, YoctoUIElement elem) throws YoctoGeneralException{
+		String sFileName;
+		ICProjectDescription cpdesc = CoreModel.getDefault().getProjectDescription(project, true);
+		
+
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE) {
+			sFileName = elem.getStrToolChainRoot()+"/" + DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
+		}
+		else {
+			//POKY TREE Mode
+			sFileName = elem.getStrToolChainRoot() + DEFAULT_TMP_PREFIX + DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+		}
+
+		HashMap<String, String> envMap = YoctoSDKUtils.parseEnvScript(sFileName);
+		YoctoSDKUtils.setEnvVars(cpdesc, elem, envMap);
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
+	public static void configureAutotoolsOptions(IProject project) {
+		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
+		IConfiguration icfg = info.getDefaultConfiguration();
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromProjectEnv(project);
+		String sysroot_str = elem.getStrSysrootLoc();
+		String id = icfg.getId();
+		String CFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CFLAGS");
+		String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CXXFLAGS");
+		String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project, "CPPFLAGS");
+		String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project, "LDFLAGS");
+		
+		String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str + "\" CXXFLAGS=\" -g -O0 "
+		+ CXXFLAGS_str + "\" LDFLAGS=\"" + LDFLAGS_str + "\" CPPFLAGS=\"" + CPPFLAGS_str + "\"";
+		String autogen_setting = command_prefix+" autogen.sh" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
+		String configure_setting = command_prefix + " configure" + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
+		IAConfiguration cfg = AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);
+		String strConfigure = YoctoSDKUtils.getEnvValue(project, "CONFIGURE_FLAGS");
+
+		cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
+		cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(strConfigure, "--build="));
+		cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(strConfigure, "--host="));
+		cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString(strConfigure, "--target="));
+		cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
+		cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
+
+		AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
+		AutotoolsConfigurationManager.getInstance().saveConfigs(project);
+	}
+
+	public static void configureAutotools(IProject project) throws YoctoGeneralException {
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
+		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
+		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
+		if (result != SDKCheckResults.SDK_PASS){
+			String strErrorMsg =  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
+			throw new YoctoGeneralException(strErrorMsg);
+		}
+		else
+		{
+			setEnvironmentVariables(project, elem);
+			configureAutotoolsOptions(project);
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
+		
+
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
+
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index f013cf8..e94d35d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -33,9 +33,9 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index f332a9a..39f7d75 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -46,9 +46,9 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
-import org.yocto.sdk.ide.YoctoSDKEmptyProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
+import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 
-- 
1.7.9.5


