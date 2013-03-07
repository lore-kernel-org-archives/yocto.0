Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2D818E0147A
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:02:27 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id 8so905493wgl.30
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 06:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=2bfAd5WUWUt/JPJ1OeuCqyMV3zPJFEX5Sp4APyJ42cQ=;
	b=NruItjYFp9rk5Fb3Qj8Ol2ilUFprhdcY9UDRLk2J08YlBCUR9xgQd1us/wmBvZFTF8
	Apcd6OmOrreQsh5+TSmIWWp94mf6wnluWlDBuuvqC7KKT84XVlSBVdbE/If6NeH3P8ZX
	qtUDTeay7UbKsHYWkvTgD4UGh0g6F5x+xUHEHEzEoIrNfoTFMooMjhh2AqXo1qSVSlbb
	kY3QlhjKmsdxjYb46+xb7aDNzLGODzYeGr1lPTCgKtJRSdujTVCVgMqqKplOr5WV/0we
	y0/3ew51ahhZpYkugWaWxqZG+wyW8xkIF3nWw39k8ykZDzoUMYkaNnC0LlZammWRrRzi
	0pQA==
MIME-Version: 1.0
X-Received: by 10.181.11.164 with SMTP id ej4mr33822926wid.29.1362664945152;
	Thu, 07 Mar 2013 06:02:25 -0800 (PST)
Received: by 10.227.13.133 with HTTP; Thu, 7 Mar 2013 06:02:24 -0800 (PST)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6F405955@ORSMSX101.amr.corp.intel.com>
References: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
	<1362586316-9655-3-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6F405955@ORSMSX101.amr.corp.intel.com>
Date: Thu, 7 Mar 2013 15:02:24 +0100
Message-ID: <CAEe+mUa7JV7fai5=7-g+it6yoABtvyUpTXvWsrFWj24qAkFWDQ@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCHv2 2/5] Moved functionality that does not belong to YoctoSDKProjectNature
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
X-List-Received-Date: Thu, 07 Mar 2013 14:02:28 -0000
Content-Type: multipart/alternative; boundary=f46d0438914b00f65104d75628e2

--f46d0438914b00f65104d75628e2
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,
sorry for the mistake, I will resend the patches and they should apply on
the current master "Use bash instead of sh for yocto-bsp build directory"
(bad4d9e9befcf6d8595dcd1886a3523ba0ea031a).

Best regards,
Atanas

On Wed, Mar 6, 2013 at 11:42 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> Hi Atanas,
>
> When I tried to apply this patch, I'm getting following errors, can you
> verify your patch?
>
> Thanks,
> Jessica
>
> Applying: Moved functionality that does not belong to YoctoSDKProjectNature
> /home/jzhang/eclipse-poky/.git/rebase-apply/patch:105: trailing whitespace.
>                                 "-I " + env.getVariable(NATIVE_SYSROOT,
> ccdesc).getValue() + "/usr/share/aclocal",
> /home/jzhang/eclipse-poky/.git/rebase-apply/patch:112: trailing whitespace.
>
> /home/jzhang/eclipse-poky/.git/rebase-apply/patch:116: trailing whitespace.
>
> /home/jzhang/eclipse-poky/.git/rebase-apply/patch:132: trailing whitespace.
>                         ILaunchConfigurationType configType =
> /home/jzhang/eclipse-poky/.git/rebase-apply/patch:134: trailing whitespace.
>                         ILaunchConfigurationType debug_configType =
> error: patch failed:
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java:14
> error: plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java:
> patch does not apply
> Patch failed at 0001 Moved functionality that does not belong to
> YoctoSDKProjectNature
> When you have resolved this problem run "git am --resolved".
> If you would prefer to skip this patch, instead run "git am --skip".
> To restore the original branch and stop patching run "git am --abort".
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Atanas Gegov
> Sent: Wednesday, March 06, 2013 8:12 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [PATCHv2 2/5] Moved functionality that does not belong to
> YoctoSDKProjectNature
>
> From: Atanas Gegov <atanas.gegov@bmw-carit.de>
>
> This functionality is not directly connected to the YoctoSDKProjectNature
> itself. Moreover, it might also be used by other natures.Made a lot of
> constants private as they are used only locally. Globally used constants
> are moved in an own class.
> ---
>  .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |    8 +-
>  .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  153
> +++++++++++++++++-
>  .../org/yocto/sdk/ide/YoctoSDKUtilsConstants.java  |   18 +++
>  .../sdk/ide/natures/YoctoSDKProjectNature.java     |  166
> +-------------------
>  4 files changed, 175 insertions(+), 170 deletions(-)  create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
>
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
> index 3047641..bab6ade 100644
> --- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.ja
> +++ va
> @@ -24,6 +24,7 @@ import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
>  public class YoctoSDKChecker {
>         private static final String[] saInvalidVer = {"1.0", "0.9",
> "0.9+"};
>         private static final String SYSROOTS_DIR = "sysroots";
> +       private static final String SDK_VERSION = "OECORE_SDK_VERSION";
>
>         public static enum SDKCheckResults {
>                 SDK_PASS("", false),
> @@ -148,10 +149,11 @@ public class YoctoSDKChecker {
>                         String sFileName;
>
>                         if (elem.getEnumPokyMode() ==
> YoctoUIElement.PokyMode.POKY_SDK_MODE) {
> -                               sFileName = elem.getStrToolChainRoot()+"/"
> + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
> +                               sFileName = elem.getStrToolChainRoot()+"/"
> +
> +YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
>                         } else {
>                                 //POKY TREE Mode
> -                               sFileName = elem.getStrToolChainRoot() +
> YoctoSDKProjectNature.DEFAULT_TMP_PREFIX +
> YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
> +                               sFileName = elem.getStrToolChainRoot() +
> YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
> +
> YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX +
> +elem.getStrTarget();
>                         }
>
>                         try {
> @@ -165,7 +167,7 @@ public class YoctoSDKChecker {
>                                                 String line = null;
>
>                                                 while ((line =
> input.readLine()) != null) {
> -                                                       if
> (line.startsWith("export "+ YoctoSDKProjectNature.SDK_VERSION)) {
> +                                                       if
> (line.startsWith("export "+ SDK_VERSION)) {
>                                                                 int
> beginIndex = 2;
>                                                                 String
> sVersion = "";
>                                                                 for (;;) {
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
> index ae95bcf..5b957d2 100644
> --- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
> @@ -14,12 +14,17 @@ package org.yocto.sdk.ide;  import
> java.io.BufferedReader;  import java.io.File;  import java.io.FileReader;
> +import java.io.FileWriter;
>  import java.io.IOException;
>  import java.io.InputStream;
>  import java.io.InputStreamReader;
> +import java.util.ArrayList;
>  import java.util.HashMap;
> +import java.util.HashSet;
>  import java.util.Iterator;
>  import java.util.Map;
> +import java.util.Set;
> +import java.util.StringTokenizer;
>
>  import org.eclipse.cdt.core.CCorePlugin;  import
> org.eclipse.cdt.core.ConsoleOutputStream;
> @@ -30,6 +35,8 @@ import org.eclipse.cdt.core.model.CoreModel;
>  import org.eclipse.cdt.core.resources.IConsole;
>  import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
>  import org.eclipse.cdt.core.settings.model.ICProjectDescription;
> +import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
> +import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
>  import org.eclipse.core.resources.IProject;
>  import org.eclipse.core.resources.IProjectDescription;
>  import org.eclipse.core.resources.ProjectScope;
> @@ -37,8 +44,14 @@ import org.eclipse.core.runtime.CoreException;
>  import org.eclipse.core.runtime.IProgressMonitor;
>  import org.eclipse.core.runtime.preferences.IEclipsePreferences;
>  import org.eclipse.core.runtime.preferences.IScopeContext;
> +import org.eclipse.debug.core.DebugPlugin;
> +import org.eclipse.debug.core.ILaunchConfiguration;
> +import org.eclipse.debug.core.ILaunchConfigurationType;
> +import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
> +import org.eclipse.debug.core.ILaunchManager;
>  import org.eclipse.jface.preference.IPreferenceStore;
>  import org.osgi.service.prefs.BackingStoreException;
> +import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
>  import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
>  import org.yocto.sdk.ide.preferences.PreferenceConstants;
>
> @@ -49,6 +62,9 @@ public class YoctoSDKUtils {
>         private static final String LIBTOOL_SYSROOT_PREFIX =
> "--with-libtool-sysroot=";
>         private static final String CONSOLE_MESSAGE  =
> "Menu.SDK.Console.Configure.Message";
>
> +       private static final String DEFAULT_USR_BIN = "/usr/bin/";
> +       private static final String NATIVE_SYSROOT =
> "OECORE_NATIVE_SYSROOT";
> +
>         public static String getEnvValue(IProject project, String strKey)
>         {
>                 ICProjectDescription cpdesc =
> CoreModel.getDefault().getProjectDescription(project, true); @@ -181,13
> +197,146 @@ public class YoctoSDKUtils {
>                 }
>                 //add ACLOCAL OPTS for libtool 2.4 support
>                 env.addVariable("OECORE_ACLOCAL_OPTS",
> -                               "-I " +
> env.getVariable(YoctoSDKProjectNature.NATIVE_SYSROOT, ccdesc).getValue() +
> "/usr/share/aclocal",
> +                               "-I " + env.getVariable(NATIVE_SYSROOT,
> ccdesc).getValue() +
> +"/usr/share/aclocal",
>                                 IEnvironmentVariable.ENVVAR_REPLACE,
>                                 delimiter,
>                                 ccdesc);
>                 return;
>
>         }
> +
> +       public static void setEnvironmentVariables(IProject project,
> YoctoUIElement elem) throws YoctoGeneralException{
> +               String sFileName;
> +               ICProjectDescription cpdesc =
> +CoreModel.getDefault().getProjectDescription(project, true);
> +
> +
> +               if (elem.getEnumPokyMode() ==
> YoctoUIElement.PokyMode.POKY_SDK_MODE) {
> +                       sFileName = elem.getStrToolChainRoot()+"/" +
> YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
> +               }
> +               else {
> +                       //POKY TREE Mode
> +                       sFileName = elem.getStrToolChainRoot() +
> YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
> +
> YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
> +               }
> +
> +               HashMap<String, String> envMap = parseEnvScript(sFileName);
> +               setEnvVars(cpdesc, elem, envMap);
> +
> +               try {
> +                       ILaunchManager lManager =
> DebugPlugin.getDefault().getLaunchManager();
> +                       ILaunchConfigurationType configType =
> +
> lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
> +                       ILaunchConfigurationType debug_configType =
> +
> +lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteAppli
> +cationLaunchType");
> +
> +                       String sPath = envMap.get("PATH");
> +                       String sDebugName = envMap.get("GDB");
> +                       String sysroot_str = elem.getStrSysrootLoc();
> +                       if (configType == null || debug_configType == null)
> +                               throw new YoctoGeneralException("Failed to
> get program or remote debug launcher!");
> +                       createRemoteDebugLauncher(project, lManager,
> debug_configType,
> +elem.getStrTarget(), sPath, sDebugName, sysroot_str);
> +
> +                       ArrayList<String> listValue = new
> ArrayList<String>();
> +                       listValue.add(new
> String("org.eclipse.ui.externaltools.launchGroup"));
> +                       if (elem.getEnumDeviceMode() ==
> YoctoUIElement.DeviceMode.QEMU_MODE) {
> +                               createQemuLauncher(project, configType,
> listValue, sFileName, elem);
> +                       }
> +
> CoreModel.getDefault().setProjectDescription(project,cpdesc);
> +               } catch (CoreException e) {
> +                       e.printStackTrace();
> +               }
> +       }
> +
> +       protected static void createRemoteDebugLauncher(IProject project,
> +                       ILaunchManager lManager, ILaunchConfigurationType
> configType,
> +                       String sTargetTriplet,  String strPath, String
> sDebugName, String sSysroot) {
> +               try {
> +
> +                       String sDebugSubDir = DEFAULT_USR_BIN +
> sTargetTriplet;
> +                       StringTokenizer token = new
> StringTokenizer(strPath, ":");
> +                       String strDebugger = "";
> +                       while (token.hasMoreTokens())
> +                       {
> +                               String sTemp = token.nextToken();
> +                               if (sTemp.endsWith(sDebugSubDir)) {
> +                                       strDebugger = sTemp + "/" +
> sDebugName;
> +                                       break;
> +                               }
> +                       }
> +                       if (strDebugger.isEmpty())
> +                               return;
> +                       //If get default Debugger successfully, go ahead!
> +
> +                       //create the gdbinit file
> +                       String sDebugInitFile =
> project.getLocation().toString() + "/.gdbinit";
> +                       FileWriter out = new FileWriter(new
> File(sDebugInitFile));
> +                       out.write("set sysroot " + sSysroot);
> +                       out.flush();
> +                       out.close();
> +
> +                       //set the launch configuration
> +                       String projectName = project.getName();
> +                       String configName =
> projectName+"_gdb_"+sTargetTriplet;
> +                       int i;
> +                       ILaunchConfiguration[]
> configs=lManager.getLaunchConfigurations(configType);
> +                       for(i=0; i<configs.length; i++)
> +                       {       //delete the old configuration
> +                               ILaunchConfiguration config=configs[i];
> +                               if(config.getName().equals(configName)) {
> +                                       config.delete();
> +                                       break;
> +                               }
> +                       }
> +                       ILaunchConfigurationWorkingCopy w_copy =
> configType.newInstance(project, configName);
> +                       Set<String> modes=new HashSet<String>();
> +                       modes.add("debug");
> +                       w_copy.setPreferredLaunchDelegate(modes,
> "org.eclipse.rse.remotecdt.launch");
> +
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT,
> sDebugInitFile);
> +
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB,
> false);
> +
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME,
> strDebugger);
> +
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTOCOL,
> "mi");
> +                       //TWEAK avoid loading default values in
> org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab
> +
> w_copy.setAttribute("org.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
> +
> w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME,
> projectName);
> +
> if(!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))
> +                       {
> +                               String project_src = "src/"+projectName;
> +
> w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME,
> project_src);
> +                       }
> +
> +                       w_copy.doSave();
> +               }
> +               catch (CoreException e)
> +               {
> +                       System.out.println(e.getMessage());
> +               }
> +               catch (IOException e)
> +               {
> +                       System.out.println("Failed to generate debug init
> file!");
> +                       System.out.println(e.getMessage());
> +               }
> +       }
> +
> +       protected static void createQemuLauncher(IProject project,
> +                       ILaunchConfigurationType configType,
> +                       ArrayList<String> listValue, String sScriptFile,
> +                       YoctoUIElement elem) {
> +               try {
> +
> +                       ILaunchConfigurationWorkingCopy w_copy =
> +configType.newInstance(null, "qemu_"+elem.getStrTarget());
> +
> +
> w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);
> +
> w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION",
> +"/usr/bin/xterm");
> +
> +                       String argument = "-e \"source " + sScriptFile +
> ";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
> +                       elem.getStrQemuKernelLoc() + " " +
> elem.getStrSysrootLoc() + " " +
> +elem.getStrQemuOption() + ";bash\"";
> +
> +
> w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS",
> argument);
> +                       w_copy.doSave();
> +               } catch (CoreException e) {
> +               }
> +
> +       }
>
>         /* Get POKY Preference settings from project's preference store */
>         public static YoctoUIElement
> getElemFromProjectPreferences(IProject project) @@ -289,7 +438,7 @@ public
> class YoctoSDKUtils {
>                 ConsoleOutputStream consoleOutStream = null;
>
>                 try {
> -
> YoctoSDKProjectNature.setEnvironmentVariables(project, elem);
> +                       setEnvironmentVariables(project, elem);
>
> YoctoSDKProjectNature.configureAutotoolsOptions(project);
>                         IConsole console =
> CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
>                         console.start(project);
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java
> new file mode 100644
> index 0000000..2ead684
> --- /dev/null
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConst
> +++ ants.java
> @@ -0,0 +1,18 @@
> +/**********************************************************************
> +*********
> + * Copyright (c) 2013 BMW Car IT GmbH.
> + * All rights reserved. This program and the accompanying materials
> + * are made available under the terms of the Eclipse Public License
> +v1.0
> + * which accompanies this distribution, and is available at
> + * http://www.eclipse.org/legal/epl-v10.html
> + *
> + * Contributors:
> + * BMW Car IT - initial API and implementation
> +***********************************************************************
> +********/
> +package org.yocto.sdk.ide;
> +
> +public class YoctoSDKUtilsConstants {
> +
> +       public static final String DEFAULT_ENV_FILE_PREFIX =
> "environment-setup-";
> +       public static final String DEFAULT_TMP_PREFIX = "/tmp/";
> +
> +}
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
> index 72237f4..3c842bf 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr
> +++ ojectNature.java
> @@ -10,19 +10,6 @@
>
> *******************************************************************************/
>  package org.yocto.sdk.ide.natures;
>
> -import java.io.File;
> -import java.io.FileWriter;
> -import java.io.IOException;
> -import java.util.ArrayList;
> -import java.util.HashMap;
> -import java.util.HashSet;
> -import java.util.Set;
> -import java.util.StringTokenizer;
> -
> -import org.eclipse.cdt.core.model.CoreModel;
> -import org.eclipse.cdt.core.settings.model.ICProjectDescription;
> -import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
> -import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
>  import
> org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
>  import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
>  import org.eclipse.cdt.managedbuilder.core.IConfiguration;
> @@ -32,11 +19,6 @@ import org.eclipse.core.resources.IProject;
>  import org.eclipse.core.resources.IProjectNature;
>  import org.eclipse.core.runtime.CoreException;
>  import org.eclipse.core.runtime.IProgressMonitor;
> -import org.eclipse.debug.core.DebugPlugin;
> -import org.eclipse.debug.core.ILaunchConfiguration;
> -import org.eclipse.debug.core.ILaunchConfigurationType;
> -import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
> -import org.eclipse.debug.core.ILaunchManager;
>  import org.eclipse.jface.preference.IPreferenceStore;
>  import org.yocto.sdk.ide.YoctoGeneralException;
>  import org.yocto.sdk.ide.YoctoProfileElement;
> @@ -46,26 +28,17 @@ import org.yocto.sdk.ide.YoctoSDKUtils;  import
> org.yocto.sdk.ide.YoctoUIElement;  import
> org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
>  import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
> -import org.yocto.sdk.ide.YoctoUIElement.DeviceMode;
> -import org.yocto.sdk.ide.YoctoUIElement.PokyMode;
>
>
>  @SuppressWarnings("restriction")
>  public class YoctoSDKProjectNature implements IProjectNature {
>         public static final  String YoctoSDK_NATURE_ID =
> YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
>
> -       private static final String DEFAULT_USR_BIN = "/usr/bin/";
> -       public static final String DEFAULT_ENV_FILE_PREFIX =
> "environment-setup-";
> -       public static final String DEFAULT_TMP_PREFIX = "/tmp/";
> -       public static final String NATIVE_SYSROOT =
> "OECORE_NATIVE_SYSROOT";
> -       public static final String SDK_VERSION = "OECORE_SDK_VERSION";
> -
>         private static final String DEFAULT_HOST_STR = "host";
>         private static final String DEFAULT_TARGET_STR = "target";
>         private static final String DEFAULT_BUILD_STR = "build";
>         private static final String DEFAULT_AUTOGEN_OPT_STR =
> "autogenOpts";
>
> -
>         private static final String DEFAULT_CONFIGURE_STR = "configure";
>         private static final String DEFAULT_AUTOGEN_STR = "autogen";
>         private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = "
> --with-libtool-sysroot="; @@ -90,48 +63,6 @@ public class
> YoctoSDKProjectNature implements IProjectNature {
>                 YoctoSDKUtils.addNature(project, YoctoSDK_NATURE_ID,
> monitor);
>         }
>
> -
> -       public static void setEnvironmentVariables(IProject project,
> YoctoUIElement elem) throws YoctoGeneralException{
> -               String sFileName;
> -               ICProjectDescription cpdesc =
> CoreModel.getDefault().getProjectDescription(project, true);
> -
> -
> -               if (elem.getEnumPokyMode() ==
> YoctoUIElement.PokyMode.POKY_SDK_MODE) {
> -                       sFileName = elem.getStrToolChainRoot()+"/" +
> DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
> -               }
> -               else {
> -                       //POKY TREE Mode
> -                       sFileName = elem.getStrToolChainRoot() +
> DEFAULT_TMP_PREFIX + DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
> -               }
> -
> -               HashMap<String, String> envMap =
> YoctoSDKUtils.parseEnvScript(sFileName);
> -               YoctoSDKUtils.setEnvVars(cpdesc, elem, envMap);
> -
> -               try {
> -                       ILaunchManager lManager =
> DebugPlugin.getDefault().getLaunchManager();
> -                       ILaunchConfigurationType configType =
> -
> lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
> -                       ILaunchConfigurationType debug_configType =
> -
> lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteApplicationLaunchType");
> -
> -                       String sPath = envMap.get("PATH");
> -                       String sDebugName = envMap.get("GDB");
> -                       String sysroot_str = elem.getStrSysrootLoc();
> -                       if (configType == null || debug_configType == null)
> -                               throw new YoctoGeneralException("Failed to
> get program or remote debug launcher!");
> -                       createRemoteDebugLauncher(project, lManager,
> debug_configType, elem.getStrTarget(), sPath, sDebugName, sysroot_str);
> -
> -                       ArrayList<String> listValue = new
> ArrayList<String>();
> -                       listValue.add(new
> String("org.eclipse.ui.externaltools.launchGroup"));
> -                       if (elem.getEnumDeviceMode() ==
> YoctoUIElement.DeviceMode.QEMU_MODE) {
> -                               createQemuLauncher(project, configType,
> listValue, sFileName, elem);
> -                       }
> -
> CoreModel.getDefault().setProjectDescription(project,cpdesc);
> -               } catch (CoreException e) {
> -                       e.printStackTrace();
> -               }
> -       }
> -
>         public static void configureAutotoolsOptions(IProject project) {
>                 IManagedBuildInfo info =
> ManagedBuildManager.getBuildInfo(project);
>                 IConfiguration icfg = info.getDefaultConfiguration(); @@
> -173,103 +104,8 @@ public class YoctoSDKProjectNature implements
> IProjectNature {
>                 }
>                 else
>                 {
> -                       setEnvironmentVariables(project, elem);
> +                       YoctoSDKUtils.setEnvironmentVariables(project,
> elem);
>                         configureAutotoolsOptions(project);
>                 }
>         }
> -
> -       protected static void createRemoteDebugLauncher(IProject project,
> -                       ILaunchManager lManager, ILaunchConfigurationType
> configType,
> -                       String sTargetTriplet,  String strPath, String
> sDebugName, String sSysroot) {
> -               try {
> -
> -                       String sDebugSubDir = DEFAULT_USR_BIN +
> sTargetTriplet;
> -                       StringTokenizer token = new
> StringTokenizer(strPath, ":");
> -                       String strDebugger = "";
> -                       while (token.hasMoreTokens())
> -                       {
> -                               String sTemp = token.nextToken();
> -                               if (sTemp.endsWith(sDebugSubDir)) {
> -                                       strDebugger = sTemp + "/" +
> sDebugName;
> -                                       break;
> -                               }
> -                       }
> -                       if (strDebugger.isEmpty())
> -                               return;
> -                       //If get default Debugger successfully, go ahead!
> -
> -                       //create the gdbinit file
> -                       String sDebugInitFile =
> project.getLocation().toString() + "/.gdbinit";
> -                       FileWriter out = new FileWriter(new
> File(sDebugInitFile));
> -                       out.write("set sysroot " + sSysroot);
> -                       out.flush();
> -                       out.close();
> -
> -                       //set the launch configuration
> -                       String projectName = project.getName();
> -                       String configName =
> projectName+"_gdb_"+sTargetTriplet;
> -                       int i;
> -                       ILaunchConfiguration[]
> configs=lManager.getLaunchConfigurations(configType);
> -                       for(i=0; i<configs.length; i++)
> -                       {       //delete the old configuration
> -                               ILaunchConfiguration config=configs[i];
> -                               if(config.getName().equals(configName)) {
> -                                       config.delete();
> -                                       break;
> -                               }
> -                       }
> -                       ILaunchConfigurationWorkingCopy w_copy =
> configType.newInstance(project, configName);
> -                       Set<String> modes=new HashSet<String>();
> -                       modes.add("debug");
> -                       w_copy.setPreferredLaunchDelegate(modes,
> "org.eclipse.rse.remotecdt.launch");
> -
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT,
> sDebugInitFile);
> -
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB,
> false);
> -
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME,
> strDebugger);
> -
> w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTOCOL,
> "mi");
> -                       //TWEAK avoid loading default values in
> org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab
> -
> w_copy.setAttribute("org.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
> -
> w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME,
> projectName);
> -
> if(!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))
> -                       {
> -                               String project_src = "src/"+projectName;
> -
> w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME,
> project_src);
> -                       }
> -
> -                       w_copy.doSave();
> -               }
> -               catch (CoreException e)
> -               {
> -                       System.out.println(e.getMessage());
> -               }
> -               catch (IOException e)
> -               {
> -                       System.out.println("Failed to generate debug init
> file!");
> -                       System.out.println(e.getMessage());
> -               }
> -
> -
> -       }
> -
> -       protected static void createQemuLauncher(IProject project,
> -                       ILaunchConfigurationType configType,
> -                       ArrayList<String> listValue, String sScriptFile,
> -                       YoctoUIElement elem) {
> -               try {
> -
> -                       ILaunchConfigurationWorkingCopy w_copy =
> configType.newInstance(null, "qemu_"+elem.getStrTarget());
> -
> -
> w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);
> -
> w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION",
> "/usr/bin/xterm");
> -
> -                       String argument = "-e \"source " + sScriptFile +
> ";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
> -                       elem.getStrQemuKernelLoc() + " " +
> elem.getStrSysrootLoc() + " " +  elem.getStrQemuOption() + ";bash\"";
> -
> -
> w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS",
> argument);
> -                       w_copy.doSave();
> -               } catch (CoreException e) {
> -               }
> -
> -       }
> -
> -
>  }
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d0438914b00f65104d75628e2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi Jessica,<br></div><div>sorry for the mistake, I will resend the pat=
ches and they should apply on the current master &quot;Use bash instead of =
sh for yocto-bsp build directory&quot; (bad4d9e9befcf6d8595dcd1886a3523ba0e=
a031a).</div>
<div><br>Best regards,<br>Atanas<br><br></div><div class=3D"gmail_quote">On=
 Wed, Mar 6, 2013 at 11:42 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.c=
om</a>&gt;</span> wrote:<br>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid" class=
=3D"gmail_quote">Hi Atanas,<br>
<br>
When I tried to apply this patch, I&#39;m getting following errors, can you=
 verify your patch?<br>
<br>
Thanks,<br>
Jessica<br>
<br>
Applying: Moved functionality that does not belong to YoctoSDKProjectNature=
<br>
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:105: trailing whitespace.=
<br>
<div class=3D"im">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 &quot;-I &quot; + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue(=
) + &quot;/usr/share/aclocal&quot;,<br>
</div>/home/jzhang/eclipse-poky/.git/rebase-apply/patch:112: trailing white=
space.<br>
<br>
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:116: trailing whitespace.=
<br>
<br>
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:132: trailing whitespace.=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType co=
nfigType =3D<br>
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:134: trailing whitespace.=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType de=
bug_configType =3D<br>
error: patch failed: plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoS=
DKUtils.java:14<br>
error: plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java: =
patch does not apply<br>
Patch failed at 0001 Moved functionality that does not belong to YoctoSDKPr=
ojectNature<br>
When you have resolved this problem run &quot;git am --resolved&quot;.<br>
If you would prefer to skip this patch, instead run &quot;git am --skip&quo=
t;.<br>
To restore the original branch and stop patching run &quot;git am --abort&q=
uot;.<br>
<div class=3D"im"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Wednesday, March 06, 2013 8:12 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [PATCHv2 2/5] Moved functionality that does not belong to =
YoctoSDKProjectNature<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de">atanas.=
gegov@bmw-carit.de</a>&gt;<br>
<br>
This functionality is not directly connected to the YoctoSDKProjectNature i=
tself. Moreover, it might also be used by other natures.Made a lot of const=
ants private as they are used only locally. Globally used constants are mov=
ed in an own class.<br>

---<br>
=A0.../src/org/yocto/sdk/ide/YoctoSDKChecker.java =A0 =A0 | =A0 =A08 +-<br>
=A0.../src/org/yocto/sdk/ide/YoctoSDKUtils.java =A0 =A0 =A0 | =A0153 ++++++=
+++++++++++-<br>
=A0.../org/yocto/sdk/ide/YoctoSDKUtilsConstants.java =A0| =A0 18 +++<br>
=A0.../sdk/ide/natures/YoctoSDKProjectNature.java =A0 =A0 | =A0166 +-------=
------------<br>
=A04 files changed, 175 insertions(+), 170 deletions(-) =A0create mode 1006=
44 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.j=
ava<br>
<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecke=
r.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.ja=
va<br>
index 3047641..bab6ade 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java<=
br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.ja<br=
>
</div>+++ va<br>
<div class=3D"im">@@ -24,6 +24,7 @@ import org.yocto.sdk.ide.natures.YoctoS=
DKProjectNature;<br>
=A0public class YoctoSDKChecker {<br>
=A0 =A0 =A0 =A0 private static final String[] saInvalidVer =3D {&quot;1.0&q=
uot;, &quot;0.9&quot;, &quot;0.9+&quot;};<br>
=A0 =A0 =A0 =A0 private static final String SYSROOTS_DIR =3D &quot;sysroots=
&quot;;<br>
+ =A0 =A0 =A0 private static final String SDK_VERSION =3D &quot;OECORE_SDK_=
VERSION&quot;;<br>
<br>
=A0 =A0 =A0 =A0 public static enum SDKCheckResults {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 SDK_PASS(&quot;&quot;, false),<br>
@@ -148,10 +149,11 @@ public class YoctoSDKChecker {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sFileName;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (elem.getEnumPokyMode() =
=3D=3D YoctoUIElement.PokyMode.POKY_SDK_MODE) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D=
 elem.getStrToolChainRoot()+&quot;/&quot; + YoctoSDKProjectNature.DEFAULT_E=
NV_FILE_PREFIX+elem.getStrTarget();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D=
 elem.getStrToolChainRoot()+&quot;/&quot; +<br>
</div>+YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget()=
;<br>
<div class=3D"im">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 } else {<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //POKY TREE=
 Mode<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D=
 elem.getStrToolChainRoot() + YoctoSDKProjectNature.DEFAULT_TMP_PREFIX + Yo=
ctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D=
 elem.getStrToolChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +<b=
r>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX +<br>
</div>+elem.getStrTarget();<br>
<div><div class=3D"h5">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br=
>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
@@ -165,7 +167,7 @@ public class YoctoSDKChecker {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 String line =3D null;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 while ((line =3D input.readLine()) !=3D null) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (line.startsWith(&quot;export &quot;=
+ YoctoSDKProjectNature.SDK_VERSION)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (line.startsWith(&quot;export &quot;=
+ SDK_VERSION)) {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 int beginIndex =3D 2;<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sVersion =3D &q=
uot;&quot;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for (;;) {<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.=
java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java<b=
r>
index ae95bcf..5b957d2 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java<br=
>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java<br=
>
@@ -14,12 +14,17 @@ package org.yocto.sdk.ide; =A0import java.io.BufferedRe=
ader; =A0import java.io.File; =A0import java.io.FileReader;<br>
+import java.io.FileWriter;<br>
=A0import java.io.IOException;<br>
=A0import java.io.InputStream;<br>
=A0import java.io.InputStreamReader;<br>
+import java.util.ArrayList;<br>
=A0import java.util.HashMap;<br>
+import java.util.HashSet;<br>
=A0import java.util.Iterator;<br>
=A0import java.util.Map;<br>
+import java.util.Set;<br>
+import java.util.StringTokenizer;<br>
<br>
=A0import org.eclipse.cdt.core.CCorePlugin; =A0import org.eclipse.cdt.core.=
ConsoleOutputStream;<br>
@@ -30,6 +35,8 @@ import org.eclipse.cdt.core.model.CoreModel;<br>
=A0import org.eclipse.cdt.core.resources.IConsole;<br>
=A0import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;<b=
r>
=A0import org.eclipse.cdt.core.settings.model.ICProjectDescription;<br>
+import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;<br>
+import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;<br>
=A0import org.eclipse.core.resources.IProject;<br>
=A0import org.eclipse.core.resources.IProjectDescription;<br>
=A0import org.eclipse.core.resources.ProjectScope;<br>
@@ -37,8 +44,14 @@ import org.eclipse.core.runtime.CoreException;<br>
=A0import org.eclipse.core.runtime.IProgressMonitor;<br>
=A0import org.eclipse.core.runtime.preferences.IEclipsePreferences;<br>
=A0import org.eclipse.core.runtime.preferences.IScopeContext;<br>
+import org.eclipse.debug.core.DebugPlugin;<br>
+import org.eclipse.debug.core.ILaunchConfiguration;<br>
+import org.eclipse.debug.core.ILaunchConfigurationType;<br>
+import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;<br>
+import org.eclipse.debug.core.ILaunchManager;<br>
=A0import org.eclipse.jface.preference.IPreferenceStore;<br>
=A0import org.osgi.service.prefs.BackingStoreException;<br>
+import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;<br>
=A0import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;<br>
=A0import org.yocto.sdk.ide.preferences.PreferenceConstants;<br>
<br>
@@ -49,6 +62,9 @@ public class YoctoSDKUtils {<br>
=A0 =A0 =A0 =A0 private static final String LIBTOOL_SYSROOT_PREFIX =3D &quo=
t;--with-libtool-sysroot=3D&quot;;<br>
=A0 =A0 =A0 =A0 private static final String CONSOLE_MESSAGE =A0=3D &quot;Me=
nu.SDK.Console.Configure.Message&quot;;<br>
<br>
+ =A0 =A0 =A0 private static final String DEFAULT_USR_BIN =3D &quot;/usr/bi=
n/&quot;;<br>
+ =A0 =A0 =A0 private static final String NATIVE_SYSROOT =3D &quot;OECORE_N=
ATIVE_SYSROOT&quot;;<br>
+<br>
=A0 =A0 =A0 =A0 public static String getEnvValue(IProject project, String s=
trKey)<br>
=A0 =A0 =A0 =A0 {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ICProjectDescription cpdesc =3D CoreModel.g=
etDefault().getProjectDescription(project, true); @@ -181,13 +197,146 @@ pu=
blic class YoctoSDKUtils {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //add ACLOCAL OPTS for libtool 2.4 support<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 env.addVariable(&quot;OECORE_ACLOCAL_OPTS&q=
uot;,<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;-I &quo=
t; + env.getVariable(YoctoSDKProjectNature.NATIVE_SYSROOT, ccdesc).getValue=
() + &quot;/usr/share/aclocal&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;-I &quo=
t; + env.getVariable(NATIVE_SYSROOT, ccdesc).getValue() +<br>
+&quot;/usr/share/aclocal&quot;,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IEnvironmen=
tVariable.ENVVAR_REPLACE,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 delimiter,<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ccdesc);<br=
>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;<br>
<br>
=A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 public static void setEnvironmentVariables(IProject project, =
YoctoUIElement elem) throws YoctoGeneralException{<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sFileName;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ICProjectDescription cpdesc =3D<br>
</div></div>+CoreModel.getDefault().getProjectDescription(project, true);<b=
r>
<div class=3D"im">+<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (elem.getEnumPokyMode() =3D=3D YoctoUIElem=
ent.PokyMode.POKY_SDK_MODE) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D elem.getStrTool=
ChainRoot()+&quot;/&quot; + YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX =
+ elem.getStrTarget();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 else {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //POKY TREE Mode<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D elem.getStrTool=
ChainRoot() + YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();<b=
r>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 HashMap&lt;String, String&gt; envMap =3D pars=
eEnvScript(sFileName);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 setEnvVars(cpdesc, elem, envMap);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchManager lManager =3D D=
ebugPlugin.getDefault().getLaunchManager();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType conf=
igType =3D<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 lManager.getL=
aunchConfigurationType(&quot;org.eclipse.ui.externaltools.ProgramLaunchConf=
igurationType&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType debu=
g_configType =3D<br>
+<br>
</div>+lManager.getLaunchConfigurationType(&quot;org.eclipse.cdt.launch.rem=
oteAppli<br>
<div class=3D"im">+cationLaunchType&quot;);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sPath =3D envMap.get(&=
quot;PATH&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sDebugName =3D envMap.=
get(&quot;GDB&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sysroot_str =3D elem.g=
etStrSysrootLoc();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (configType =3D=3D null ||=
 debug_configType =3D=3D null)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 throw new Yoc=
toGeneralException(&quot;Failed to get program or remote debug launcher!&qu=
ot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 createRemoteDebugLauncher(pro=
ject, lManager, debug_configType,<br>
</div>+elem.getStrTarget(), sPath, sDebugName, sysroot_str);<br>
<div><div class=3D"h5">+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ArrayList&lt;String&gt; listV=
alue =3D new ArrayList&lt;String&gt;();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 listValue.add(new String(&quo=
t;org.eclipse.ui.externaltools.launchGroup&quot;));<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (elem.getEnumDeviceMode() =
=3D=3D YoctoUIElement.DeviceMode.QEMU_MODE) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 createQemuLau=
ncher(project, configType, listValue, sFileName, elem);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 CoreModel.getDefault().setPro=
jectDescription(project,cpdesc);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 } catch (CoreException e) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 e.printStackTrace();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 protected static void createRemoteDebugLauncher(IProject proj=
ect,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchManager lManager, ILau=
nchConfigurationType configType,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sTargetTriplet, =A0Str=
ing strPath, String sDebugName, String sSysroot) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sDebugSubDir =3D DEFAU=
LT_USR_BIN + sTargetTriplet;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 StringTokenizer token =3D new=
 StringTokenizer(strPath, &quot;:&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String strDebugger =3D &quot;=
&quot;;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 while (token.hasMoreTokens())=
<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sTemp =
=3D token.nextToken();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (sTemp.end=
sWith(sDebugSubDir)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 strDebugger =3D sTemp + &quot;/&quot; + sDebugName;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (strDebugger.isEmpty())<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //If get default Debugger suc=
cessfully, go ahead!<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //create the gdbinit file<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sDebugInitFile =3D pro=
ject.getLocation().toString() + &quot;/.gdbinit&quot;;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 FileWriter out =3D new FileWr=
iter(new File(sDebugInitFile));<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 out.write(&quot;set sysroot &=
quot; + sSysroot);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 out.flush();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 out.close();<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //set the launch configuratio=
n<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String projectName =3D projec=
t.getName();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String configName =3D project=
Name+&quot;_gdb_&quot;+sTargetTriplet;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 int i;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfiguration[] config=
s=3DlManager.getLaunchConfigurations(configType);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for(i=3D0; i&lt;configs.lengt=
h; i++)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 { =A0 =A0 =A0 //delete the ol=
d configuration<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfig=
uration config=3Dconfigs[i];<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(config.get=
Name().equals(configName)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 config.delete();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationWorkingCo=
py w_copy =3D configType.newInstance(project, configName);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Set&lt;String&gt; modes=3Dnew=
 HashSet&lt;String&gt;();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 modes.add(&quot;debug&quot;);=
<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setPreferredLaunchDele=
gate(modes, &quot;org.eclipse.rse.remotecdt.launch&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_DEBUG_NAME, strDebugger);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_DEBUGGER_PROTOCOL, &quot;mi&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //TWEAK avoid loading default=
 values in org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET&quot;,true);<=
br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(ICDTLaunc=
hConfigurationConstants.ATTR_PROJECT_NAME, projectName);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(!project.hasNature(YoctoSD=
KEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String projec=
t_src =3D &quot;src/&quot;+projectName;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAtt=
ribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME, project_src);<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.doSave();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 catch (CoreException e)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 System.out.println(e.getMessa=
ge());<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 catch (IOException e)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 System.out.println(&quot;Fail=
ed to generate debug init file!&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 System.out.println(e.getMessa=
ge());<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 protected static void createQemuLauncher(IProject project,<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType conf=
igType,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ArrayList&lt;String&gt; listV=
alue, String sScriptFile,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElement elem) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationWorkingCo=
py w_copy =3D<br>
</div></div>+configType.newInstance(null, &quot;qemu_&quot;+elem.getStrTarg=
et());<br>
<div class=3D"im">+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.debug.ui.favoriteGroups&quot;, listValue);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.ui.externaltools.ATTR_LOCATION&quot;,<br>
</div>+&quot;/usr/bin/xterm&quot;);<br>
<div class=3D"im">+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String argument =3D &quot;-e =
\&quot;source &quot; + sScriptFile + &quot;;runqemu &quot; + YoctoSDKUtils.=
qemuTargetTranslate(elem.getStrTarget()) + &quot; &quot;+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 elem.getStrQemuKernelLoc() + =
&quot; &quot; + elem.getStrSysrootLoc() + &quot; &quot; +<br>
</div>+elem.getStrQemuOption() + &quot;;bash\&quot;&quot;;<br>
<div class=3D"im">+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS&quot;, argument);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.doSave();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 } catch (CoreException e) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 }<br>
<br>
=A0 =A0 =A0 =A0 /* Get POKY Preference settings from project&#39;s preferen=
ce store */<br>
=A0 =A0 =A0 =A0 public static YoctoUIElement getElemFromProjectPreferences(=
IProject project) @@ -289,7 +438,7 @@ public class YoctoSDKUtils {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ConsoleOutputStream consoleOutStream =3D nu=
ll;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProjectNature.setEnvi=
ronmentVariables(project, elem);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 setEnvironmentVariables(proje=
ct, elem);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProjectNature.confi=
gureAutotoolsOptions(project);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IConsole console =3D CCoreP=
lugin.getDefault().getConsole(&quot;org.yocto.sdk.ide.YoctoConsole&quot;);<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 console.start(project);<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsC=
onstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUti=
lsConstants.java<br>
new file mode 100644<br>
index 0000000..2ead684<br>
--- /dev/null<br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConst<br=
>
</div>+++ ants.java<br>
@@ -0,0 +1,18 @@<br>
+/**********************************************************************<br=
>
<div class=3D"im">+*********<br>
+ * Copyright (c) 2013 BMW Car IT GmbH.<br>
+ * All rights reserved. This program and the accompanying materials<br>
+ * are made available under the terms of the Eclipse Public License<br>
</div>+v1.0<br>
<div class=3D"im">+ * which accompanies this distribution, and is available=
 at<br>
+ * <a href=3D"http://www.eclipse.org/legal/epl-v10.html" target=3D"_blank"=
>http://www.eclipse.org/legal/epl-v10.html</a><br>
+ *<br>
+ * Contributors:<br>
+ * BMW Car IT - initial API and implementation<br>
+***********************************************************************<br=
>
+********/<br>
+package org.yocto.sdk.ide;<br>
+<br>
+public class YoctoSDKUtilsConstants {<br>
+<br>
+ =A0 =A0 =A0 public static final String DEFAULT_ENV_FILE_PREFIX =3D &quot;=
environment-setup-&quot;;<br>
+ =A0 =A0 =A0 public static final String DEFAULT_TMP_PREFIX =3D &quot;/tmp/=
&quot;;<br>
+<br>
+}<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natu=
res/YoctoSDKProjectNature.java<br>
index 72237f4..3c842bf 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProje=
ctNature.java<br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr<br=
>
</div>+++ ojectNature.java<br>
<div><div class=3D"h5">@@ -10,19 +10,6 @@<br>
=A0 ***********************************************************************=
********/<br>
=A0package org.yocto.sdk.ide.natures;<br>
<br>
-import java.io.File;<br>
-import java.io.FileWriter;<br>
-import java.io.IOException;<br>
-import java.util.ArrayList;<br>
-import java.util.HashMap;<br>
-import java.util.HashSet;<br>
-import java.util.Set;<br>
-import java.util.StringTokenizer;<br>
-<br>
-import org.eclipse.cdt.core.model.CoreModel;<br>
-import org.eclipse.cdt.core.settings.model.ICProjectDescription;<br>
-import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;<br>
-import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;<br>
=A0import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfig=
urationManager;<br>
=A0import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration=
;<br>
=A0import org.eclipse.cdt.managedbuilder.core.IConfiguration;<br>
@@ -32,11 +19,6 @@ import org.eclipse.core.resources.IProject;<br>
=A0import org.eclipse.core.resources.IProjectNature;<br>
=A0import org.eclipse.core.runtime.CoreException;<br>
=A0import org.eclipse.core.runtime.IProgressMonitor;<br>
-import org.eclipse.debug.core.DebugPlugin;<br>
-import org.eclipse.debug.core.ILaunchConfiguration;<br>
-import org.eclipse.debug.core.ILaunchConfigurationType;<br>
-import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;<br>
-import org.eclipse.debug.core.ILaunchManager;<br>
=A0import org.eclipse.jface.preference.IPreferenceStore;<br>
=A0import org.yocto.sdk.ide.YoctoGeneralException;<br>
=A0import org.yocto.sdk.ide.YoctoProfileElement;<br>
@@ -46,26 +28,17 @@ import org.yocto.sdk.ide.YoctoSDKUtils; =A0import org.y=
octo.sdk.ide.YoctoUIElement; =A0import org.yocto.sdk.ide.YoctoSDKChecker.SD=
KCheckRequestFrom;<br>
=A0import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;<br>
-import org.yocto.sdk.ide.YoctoUIElement.DeviceMode;<br>
-import org.yocto.sdk.ide.YoctoUIElement.PokyMode;<br>
<br>
<br>
=A0@SuppressWarnings(&quot;restriction&quot;)<br>
=A0public class YoctoSDKProjectNature implements IProjectNature {<br>
=A0 =A0 =A0 =A0 public static final =A0String YoctoSDK_NATURE_ID =3D YoctoS=
DKPlugin.getUniqueIdentifier() + &quot;.YoctoSDKNature&quot;;<br>
<br>
- =A0 =A0 =A0 private static final String DEFAULT_USR_BIN =3D &quot;/usr/bi=
n/&quot;;<br>
- =A0 =A0 =A0 public static final String DEFAULT_ENV_FILE_PREFIX =3D &quot;=
environment-setup-&quot;;<br>
- =A0 =A0 =A0 public static final String DEFAULT_TMP_PREFIX =3D &quot;/tmp/=
&quot;;<br>
- =A0 =A0 =A0 public static final String NATIVE_SYSROOT =3D &quot;OECORE_NA=
TIVE_SYSROOT&quot;;<br>
- =A0 =A0 =A0 public static final String SDK_VERSION =3D &quot;OECORE_SDK_V=
ERSION&quot;;<br>
-<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_HOST_STR =3D &quot;host=
&quot;;<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_TARGET_STR =3D &quot;ta=
rget&quot;;<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_BUILD_STR =3D &quot;bui=
ld&quot;;<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_AUTOGEN_OPT_STR =3D &qu=
ot;autogenOpts&quot;;<br>
<br>
-<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_CONFIGURE_STR =3D &quot=
;configure&quot;;<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_AUTOGEN_STR =3D &quot;a=
utogen&quot;;<br>
=A0 =A0 =A0 =A0 private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =
=3D &quot; --with-libtool-sysroot=3D&quot;; @@ -90,48 +63,6 @@ public class=
 YoctoSDKProjectNature implements IProjectNature {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.addNature(project, YoctoSDK_N=
ATURE_ID, monitor);<br>
=A0 =A0 =A0 =A0 }<br>
<br>
-<br>
- =A0 =A0 =A0 public static void setEnvironmentVariables(IProject project, =
YoctoUIElement elem) throws YoctoGeneralException{<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sFileName;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 ICProjectDescription cpdesc =3D CoreModel.get=
Default().getProjectDescription(project, true);<br>
-<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (elem.getEnumPokyMode() =3D=3D YoctoUIElem=
ent.PokyMode.POKY_SDK_MODE) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D elem.getStrTool=
ChainRoot()+&quot;/&quot; + DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 else {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //POKY TREE Mode<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sFileName =3D elem.getStrTool=
ChainRoot() + DEFAULT_TMP_PREFIX + DEFAULT_ENV_FILE_PREFIX + elem.getStrTar=
get();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 HashMap&lt;String, String&gt; envMap =3D Yoct=
oSDKUtils.parseEnvScript(sFileName);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.setEnvVars(cpdesc, elem, envMap=
);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchManager lManager =3D D=
ebugPlugin.getDefault().getLaunchManager();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType conf=
igType =3D<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 lManager.getL=
aunchConfigurationType(&quot;org.eclipse.ui.externaltools.ProgramLaunchConf=
igurationType&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType debu=
g_configType =3D<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 lManager.getL=
aunchConfigurationType(&quot;org.eclipse.cdt.launch.remoteApplicationLaunch=
Type&quot;);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sPath =3D envMap.get(&=
quot;PATH&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sDebugName =3D envMap.=
get(&quot;GDB&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sysroot_str =3D elem.g=
etStrSysrootLoc();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (configType =3D=3D null ||=
 debug_configType =3D=3D null)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 throw new Yoc=
toGeneralException(&quot;Failed to get program or remote debug launcher!&qu=
ot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 createRemoteDebugLauncher(pro=
ject, lManager, debug_configType, elem.getStrTarget(), sPath, sDebugName, s=
ysroot_str);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ArrayList&lt;String&gt; listV=
alue =3D new ArrayList&lt;String&gt;();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 listValue.add(new String(&quo=
t;org.eclipse.ui.externaltools.launchGroup&quot;));<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (elem.getEnumDeviceMode() =
=3D=3D YoctoUIElement.DeviceMode.QEMU_MODE) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 createQemuLau=
ncher(project, configType, listValue, sFileName, elem);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 CoreModel.getDefault().setPro=
jectDescription(project,cpdesc);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 } catch (CoreException e) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 e.printStackTrace();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 }<br>
-<br>
=A0 =A0 =A0 =A0 public static void configureAutotoolsOptions(IProject proje=
ct) {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IManagedBuildInfo info =3D ManagedBuildMana=
ger.getBuildInfo(project);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IConfiguration icfg =3D info.getDefaultConf=
iguration(); @@ -173,103 +104,8 @@ public class YoctoSDKProjectNature imple=
ments IProjectNature {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 else<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 setEnvironmentVariables(proje=
ct, elem);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.setEnvironmentV=
ariables(project, elem);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 configureAutotoolsOptions(p=
roject);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
=A0 =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 protected static void createRemoteDebugLauncher(IProject proj=
ect,<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchManager lManager, ILau=
nchConfigurationType configType,<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sTargetTriplet, =A0Str=
ing strPath, String sDebugName, String sSysroot) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sDebugSubDir =3D DEFAU=
LT_USR_BIN + sTargetTriplet;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 StringTokenizer token =3D new=
 StringTokenizer(strPath, &quot;:&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String strDebugger =3D &quot;=
&quot;;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 while (token.hasMoreTokens())=
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sTemp =
=3D token.nextToken();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (sTemp.end=
sWith(sDebugSubDir)) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 strDebugger =3D sTemp + &quot;/&quot; + sDebugName;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 break;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (strDebugger.isEmpty())<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //If get default Debugger suc=
cessfully, go ahead!<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //create the gdbinit file<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sDebugInitFile =3D pro=
ject.getLocation().toString() + &quot;/.gdbinit&quot;;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 FileWriter out =3D new FileWr=
iter(new File(sDebugInitFile));<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 out.write(&quot;set sysroot &=
quot; + sSysroot);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 out.flush();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 out.close();<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //set the launch configuratio=
n<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String projectName =3D projec=
t.getName();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String configName =3D project=
Name+&quot;_gdb_&quot;+sTargetTriplet;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 int i;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfiguration[] config=
s=3DlManager.getLaunchConfigurations(configType);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for(i=3D0; i&lt;configs.lengt=
h; i++)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 { =A0 =A0 =A0 //delete the ol=
d configuration<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfig=
uration config=3Dconfigs[i];<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(config.get=
Name().equals(configName)) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 config.delete();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 break;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationWorkingCo=
py w_copy =3D configType.newInstance(project, configName);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Set&lt;String&gt; modes=3Dnew=
 HashSet&lt;String&gt;();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 modes.add(&quot;debug&quot;);=
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setPreferredLaunchDele=
gate(modes, &quot;org.eclipse.rse.remotecdt.launch&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_DEBUG_NAME, strDebugger);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(IMILaunch=
ConfigurationConstants.ATTR_DEBUGGER_PROTOCOL, &quot;mi&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //TWEAK avoid loading default=
 values in org.eclipse.cdt.launch.remote.tabs.RemoteCDebuggerTab<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTab.DEFAULTS_SET&quot;,true);<=
br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(ICDTLaunc=
hConfigurationConstants.ATTR_PROJECT_NAME, projectName);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(!project.hasNature(YoctoSD=
KEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID))<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String projec=
t_src =3D &quot;src/&quot;+projectName;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAtt=
ribute(ICDTLaunchConfigurationConstants.ATTR_PROGRAM_NAME, project_src);<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.doSave();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 catch (CoreException e)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 System.out.println(e.getMessa=
ge());<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 catch (IOException e)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 System.out.println(&quot;Fail=
ed to generate debug init file!&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 System.out.println(e.getMessa=
ge());<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
-<br>
-<br>
- =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 protected static void createQemuLauncher(IProject project,<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationType conf=
igType,<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ArrayList&lt;String&gt; listV=
alue, String sScriptFile,<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElement elem) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ILaunchConfigurationWorkingCo=
py w_copy =3D configType.newInstance(null, &quot;qemu_&quot;+elem.getStrTar=
get());<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.debug.ui.favoriteGroups&quot;, listValue);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.ui.externaltools.ATTR_LOCATION&quot;, &quot;/usr/bin/xterm&quot;);=
<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String argument =3D &quot;-e =
\&quot;source &quot; + sScriptFile + &quot;;runqemu &quot; + YoctoSDKUtils.=
qemuTargetTranslate(elem.getStrTarget()) + &quot; &quot;+<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 elem.getStrQemuKernelLoc() + =
&quot; &quot; + elem.getStrSysrootLoc() + &quot; &quot; + =A0elem.getStrQem=
uOption() + &quot;;bash\&quot;&quot;;<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.setAttribute(&quot;org=
.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS&quot;, argument);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 w_copy.doSave();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 } catch (CoreException e) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 }<br>
-<br>
-<br>
=A0}<br>
--<br>
1.7.9.5<br>
<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br>

--f46d0438914b00f65104d75628e2--
