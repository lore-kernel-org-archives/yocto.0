Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B63EE01528
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 14:42:19 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Mar 2013 14:40:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,798,1355126400"; d="scan'208";a="295188446"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 06 Mar 2013 14:42:18 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.222]) with mapi id
	14.01.0355.002; Wed, 6 Mar 2013 14:42:18 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv2 2/5] Moved functionality that does not belong
	to	YoctoSDKProjectNature
Thread-Index: AQHOGqpv7ROfYhzWFEe6FGxyftxQ+JiZQdSg
Date: Wed, 6 Mar 2013 22:42:17 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F405955@ORSMSX101.amr.corp.intel.com>
References: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
	<1362586316-9655-3-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1362586316-9655-3-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCHv2 2/5] Moved functionality that does not belong to	YoctoSDKProjectNature
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
X-List-Received-Date: Wed, 06 Mar 2013 22:42:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

When I tried to apply this patch, I'm getting following errors, can you ver=
ify your patch?

Thanks,
Jessica

Applying: Moved functionality that does not belong to YoctoSDKProjectNature
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:105: trailing whitespace.
                                "-I " + env.getVariable(NATIVE_SYSROOT, ccd=
esc).getValue() + "/usr/share/aclocal",
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:112: trailing whitespace.

/home/jzhang/eclipse-poky/.git/rebase-apply/patch:116: trailing whitespace.

/home/jzhang/eclipse-poky/.git/rebase-apply/patch:132: trailing whitespace.
                        ILaunchConfigurationType configType =3D
/home/jzhang/eclipse-poky/.git/rebase-apply/patch:134: trailing whitespace.
                        ILaunchConfigurationType debug_configType =3D
error: patch failed: plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoS=
DKUtils.java:14
error: plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java: =
patch does not apply
Patch failed at 0001 Moved functionality that does not belong to YoctoSDKPr=
ojectNature
When you have resolved this problem run "git am --resolved".
If you would prefer to skip this patch, instead run "git am --skip".
To restore the original branch and stop patching run "git am --abort".

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Wednesday, March 06, 2013 8:12 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCHv2 2/5] Moved functionality that does not belong to =
YoctoSDKProjectNature

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This functionality is not directly connected to the YoctoSDKProjectNature i=
tself. Moreover, it might also be used by other natures.Made a lot of const=
ants private as they are used only locally. Globally used constants are mov=
ed in an own class.
---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |    8 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  153 ++++++++++++++++=
+-
 .../org/yocto/sdk/ide/YoctoSDKUtilsConstants.java  |   18 +++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  166 +---------------=
----
 4 files changed, 175 insertions(+), 170 deletions(-)  create mode 100644 p=
lugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConstants.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecke=
r.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.ja=
va
index 3047641..bab6ade 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.ja
+++ va
@@ -24,6 +24,7 @@ import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 public class YoctoSDKChecker {
        private static final String[] saInvalidVer =3D {"1.0", "0.9", "0.9+=
"};
        private static final String SYSROOTS_DIR =3D "sysroots";
+       private static final String SDK_VERSION =3D "OECORE_SDK_VERSION";

        public static enum SDKCheckResults {
                SDK_PASS("", false),
@@ -148,10 +149,11 @@ public class YoctoSDKChecker {
                        String sFileName;

                        if (elem.getEnumPokyMode() =3D=3D YoctoUIElement.Po=
kyMode.POKY_SDK_MODE) {
-                               sFileName =3D elem.getStrToolChainRoot()+"/=
" + YoctoSDKProjectNature.DEFAULT_ENV_FILE_PREFIX+elem.getStrTarget();
+                               sFileName =3D elem.getStrToolChainRoot()+"/=
" +
+YoctoSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
                        } else {
                                //POKY TREE Mode
-                               sFileName =3D elem.getStrToolChainRoot() + =
YoctoSDKProjectNature.DEFAULT_TMP_PREFIX + YoctoSDKProjectNature.DEFAULT_EN=
V_FILE_PREFIX + elem.getStrTarget();
+                               sFileName =3D elem.getStrToolChainRoot() + =
YoctoSDKUtilsConstants.DEFAULT_TMP_PREFIX +
+                                               YoctoSDKUtilsConstants.DEFA=
ULT_ENV_FILE_PREFIX +
+elem.getStrTarget();
                        }

                        try {
@@ -165,7 +167,7 @@ public class YoctoSDKChecker {
                                                String line =3D null;

                                                while ((line =3D input.read=
Line()) !=3D null) {
-                                                       if (line.startsWith=
("export "+ YoctoSDKProjectNature.SDK_VERSION)) {
+                                                       if (line.startsWith=
("export "+ SDK_VERSION)) {
                                                                int beginIn=
dex =3D 2;
                                                                String sVer=
sion =3D "";
                                                                for (;;) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.=
java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index ae95bcf..5b957d2 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -14,12 +14,17 @@ package org.yocto.sdk.ide;  import java.io.BufferedRead=
er;  import java.io.File;  import java.io.FileReader;
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

 import org.eclipse.cdt.core.CCorePlugin;  import org.eclipse.cdt.core.Cons=
oleOutputStream;
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
        private static final String LIBTOOL_SYSROOT_PREFIX =3D "--with-libt=
ool-sysroot=3D";
        private static final String CONSOLE_MESSAGE  =3D "Menu.SDK.Console.=
Configure.Message";

+       private static final String DEFAULT_USR_BIN =3D "/usr/bin/";
+       private static final String NATIVE_SYSROOT =3D "OECORE_NATIVE_SYSRO=
OT";
+
        public static String getEnvValue(IProject project, String strKey)
        {
                ICProjectDescription cpdesc =3D CoreModel.getDefault().getP=
rojectDescription(project, true); @@ -181,13 +197,146 @@ public class Yocto=
SDKUtils {
                }
                //add ACLOCAL OPTS for libtool 2.4 support
                env.addVariable("OECORE_ACLOCAL_OPTS",
-                               "-I " + env.getVariable(YoctoSDKProjectNatu=
re.NATIVE_SYSROOT, ccdesc).getValue() + "/usr/share/aclocal",
+                               "-I " + env.getVariable(NATIVE_SYSROOT, ccd=
esc).getValue() +
+"/usr/share/aclocal",
                                IEnvironmentVariable.ENVVAR_REPLACE,
                                delimiter,
                                ccdesc);
                return;

        }
+
+       public static void setEnvironmentVariables(IProject project, YoctoU=
IElement elem) throws YoctoGeneralException{
+               String sFileName;
+               ICProjectDescription cpdesc =3D
+CoreModel.getDefault().getProjectDescription(project, true);
+
+
+               if (elem.getEnumPokyMode() =3D=3D YoctoUIElement.PokyMode.P=
OKY_SDK_MODE) {
+                       sFileName =3D elem.getStrToolChainRoot()+"/" + Yoct=
oSDKUtilsConstants.DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
+               }
+               else {
+                       //POKY TREE Mode
+                       sFileName =3D elem.getStrToolChainRoot() + YoctoSDK=
UtilsConstants.DEFAULT_TMP_PREFIX +
+                                       YoctoSDKUtilsConstants.DEFAULT_ENV_=
FILE_PREFIX + elem.getStrTarget();
+               }
+
+               HashMap<String, String> envMap =3D parseEnvScript(sFileName=
);
+               setEnvVars(cpdesc, elem, envMap);
+
+               try {
+                       ILaunchManager lManager =3D DebugPlugin.getDefault(=
).getLaunchManager();
+                       ILaunchConfigurationType configType =3D
+                               lManager.getLaunchConfigurationType("org.ec=
lipse.ui.externaltools.ProgramLaunchConfigurationType");
+                       ILaunchConfigurationType debug_configType =3D
+
+lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteAppli
+cationLaunchType");
+
+                       String sPath =3D envMap.get("PATH");
+                       String sDebugName =3D envMap.get("GDB");
+                       String sysroot_str =3D elem.getStrSysrootLoc();
+                       if (configType =3D=3D null || debug_configType =3D=
=3D null)
+                               throw new YoctoGeneralException("Failed to =
get program or remote debug launcher!");
+                       createRemoteDebugLauncher(project, lManager, debug_=
configType,
+elem.getStrTarget(), sPath, sDebugName, sysroot_str);
+
+                       ArrayList<String> listValue =3D new ArrayList<Strin=
g>();
+                       listValue.add(new String("org.eclipse.ui.externalto=
ols.launchGroup"));
+                       if (elem.getEnumDeviceMode() =3D=3D YoctoUIElement.=
DeviceMode.QEMU_MODE) {
+                               createQemuLauncher(project, configType, lis=
tValue, sFileName, elem);
+                       }
+                       CoreModel.getDefault().setProjectDescription(projec=
t,cpdesc);
+               } catch (CoreException e) {
+                       e.printStackTrace();
+               }
+       }
+
+       protected static void createRemoteDebugLauncher(IProject project,
+                       ILaunchManager lManager, ILaunchConfigurationType c=
onfigType,
+                       String sTargetTriplet,  String strPath, String sDeb=
ugName, String sSysroot) {
+               try {
+
+                       String sDebugSubDir =3D DEFAULT_USR_BIN + sTargetTr=
iplet;
+                       StringTokenizer token =3D new StringTokenizer(strPa=
th, ":");
+                       String strDebugger =3D "";
+                       while (token.hasMoreTokens())
+                       {
+                               String sTemp =3D token.nextToken();
+                               if (sTemp.endsWith(sDebugSubDir)) {
+                                       strDebugger =3D sTemp + "/" + sDebu=
gName;
+                                       break;
+                               }
+                       }
+                       if (strDebugger.isEmpty())
+                               return;
+                       //If get default Debugger successfully, go ahead!
+
+                       //create the gdbinit file
+                       String sDebugInitFile =3D project.getLocation().toS=
tring() + "/.gdbinit";
+                       FileWriter out =3D new FileWriter(new File(sDebugIn=
itFile));
+                       out.write("set sysroot " + sSysroot);
+                       out.flush();
+                       out.close();
+
+                       //set the launch configuration
+                       String projectName =3D project.getName();
+                       String configName =3D projectName+"_gdb_"+sTargetTr=
iplet;
+                       int i;
+                       ILaunchConfiguration[] configs=3DlManager.getLaunch=
Configurations(configType);
+                       for(i=3D0; i<configs.length; i++)
+                       {       //delete the old configuration
+                               ILaunchConfiguration config=3Dconfigs[i];
+                               if(config.getName().equals(configName)) {
+                                       config.delete();
+                                       break;
+                               }
+                       }
+                       ILaunchConfigurationWorkingCopy w_copy =3D configTy=
pe.newInstance(project, configName);
+                       Set<String> modes=3Dnew HashSet<String>();
+                       modes.add("debug");
+                       w_copy.setPreferredLaunchDelegate(modes, "org.eclip=
se.rse.remotecdt.launch");
+                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_GDB_INIT, sDebugInitFile);
+                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_DEBUGGER_AUTO_SOLIB, false);
+                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_DEBUG_NAME, strDebugger);
+                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_DEBUGGER_PROTOCOL, "mi");
+                       //TWEAK avoid loading default values in org.eclipse=
.cdt.launch.remote.tabs.RemoteCDebuggerTab
+                       w_copy.setAttribute("org.eclipse.cdt.launch.remote.=
RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
+                       w_copy.setAttribute(ICDTLaunchConfigurationConstant=
s.ATTR_PROJECT_NAME, projectName);
+                       if(!project.hasNature(YoctoSDKEmptyProjectNature.Yo=
ctoSDK_EMPTY_NATURE_ID))
+                       {
+                               String project_src =3D "src/"+projectName;
+                               w_copy.setAttribute(ICDTLaunchConfiguration=
Constants.ATTR_PROGRAM_NAME, project_src);
+                       }
+
+                       w_copy.doSave();
+               }
+               catch (CoreException e)
+               {
+                       System.out.println(e.getMessage());
+               }
+               catch (IOException e)
+               {
+                       System.out.println("Failed to generate debug init f=
ile!");
+                       System.out.println(e.getMessage());
+               }
+       }
+
+       protected static void createQemuLauncher(IProject project,
+                       ILaunchConfigurationType configType,
+                       ArrayList<String> listValue, String sScriptFile,
+                       YoctoUIElement elem) {
+               try {
+
+                       ILaunchConfigurationWorkingCopy w_copy =3D
+configType.newInstance(null, "qemu_"+elem.getStrTarget());
+
+                       w_copy.setAttribute("org.eclipse.debug.ui.favoriteG=
roups", listValue);
+                       w_copy.setAttribute("org.eclipse.ui.externaltools.A=
TTR_LOCATION",
+"/usr/bin/xterm");
+
+                       String argument =3D "-e \"source " + sScriptFile + =
";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
+                       elem.getStrQemuKernelLoc() + " " + elem.getStrSysro=
otLoc() + " " +
+elem.getStrQemuOption() + ";bash\"";
+
+                       w_copy.setAttribute("org.eclipse.ui.externaltools.A=
TTR_TOOL_ARGUMENTS", argument);
+                       w_copy.doSave();
+               } catch (CoreException e) {
+               }
+
+       }

        /* Get POKY Preference settings from project's preference store */
        public static YoctoUIElement getElemFromProjectPreferences(IProject=
 project) @@ -289,7 +438,7 @@ public class YoctoSDKUtils {
                ConsoleOutputStream consoleOutStream =3D null;

                try {
-                       YoctoSDKProjectNature.setEnvironmentVariables(proje=
ct, elem);
+                       setEnvironmentVariables(project, elem);
                        YoctoSDKProjectNature.configureAutotoolsOptions(pro=
ject);
                        IConsole console =3D CCorePlugin.getDefault().getCo=
nsole("org.yocto.sdk.ide.YoctoConsole");
                        console.start(project);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsC=
onstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUti=
lsConstants.java
new file mode 100644
index 0000000..2ead684
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtilsConst
+++ ants.java
@@ -0,0 +1,18 @@
+/**********************************************************************
+*********
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License
+v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial API and implementation
+***********************************************************************
+********/
+package org.yocto.sdk.ide;
+
+public class YoctoSDKUtilsConstants {
+
+       public static final String DEFAULT_ENV_FILE_PREFIX =3D "environment=
-setup-";
+       public static final String DEFAULT_TMP_PREFIX =3D "/tmp/";
+
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natu=
res/YoctoSDKProjectNature.java
index 72237f4..3c842bf 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProje=
ctNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr
+++ ojectNature.java
@@ -10,19 +10,6 @@
  *************************************************************************=
******/
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
 import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigur=
ationManager;
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
@@ -46,26 +28,17 @@ import org.yocto.sdk.ide.YoctoSDKUtils;  import org.yoc=
to.sdk.ide.YoctoUIElement;  import org.yocto.sdk.ide.YoctoSDKChecker.SDKChe=
ckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
-import org.yocto.sdk.ide.YoctoUIElement.DeviceMode;
-import org.yocto.sdk.ide.YoctoUIElement.PokyMode;


 @SuppressWarnings("restriction")
 public class YoctoSDKProjectNature implements IProjectNature {
        public static final  String YoctoSDK_NATURE_ID =3D YoctoSDKPlugin.g=
etUniqueIdentifier() + ".YoctoSDKNature";

-       private static final String DEFAULT_USR_BIN =3D "/usr/bin/";
-       public static final String DEFAULT_ENV_FILE_PREFIX =3D "environment=
-setup-";
-       public static final String DEFAULT_TMP_PREFIX =3D "/tmp/";
-       public static final String NATIVE_SYSROOT =3D "OECORE_NATIVE_SYSROO=
T";
-       public static final String SDK_VERSION =3D "OECORE_SDK_VERSION";
-
        private static final String DEFAULT_HOST_STR =3D "host";
        private static final String DEFAULT_TARGET_STR =3D "target";
        private static final String DEFAULT_BUILD_STR =3D "build";
        private static final String DEFAULT_AUTOGEN_OPT_STR =3D "autogenOpt=
s";

-
        private static final String DEFAULT_CONFIGURE_STR =3D "configure";
        private static final String DEFAULT_AUTOGEN_STR =3D "autogen";
        private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =3D " --=
with-libtool-sysroot=3D"; @@ -90,48 +63,6 @@ public class YoctoSDKProjectNa=
ture implements IProjectNature {
                YoctoSDKUtils.addNature(project, YoctoSDK_NATURE_ID, monito=
r);
        }

-
-       public static void setEnvironmentVariables(IProject project, YoctoU=
IElement elem) throws YoctoGeneralException{
-               String sFileName;
-               ICProjectDescription cpdesc =3D CoreModel.getDefault().getP=
rojectDescription(project, true);
-
-
-               if (elem.getEnumPokyMode() =3D=3D YoctoUIElement.PokyMode.P=
OKY_SDK_MODE) {
-                       sFileName =3D elem.getStrToolChainRoot()+"/" + DEFA=
ULT_ENV_FILE_PREFIX+elem.getStrTarget();
-               }
-               else {
-                       //POKY TREE Mode
-                       sFileName =3D elem.getStrToolChainRoot() + DEFAULT_=
TMP_PREFIX + DEFAULT_ENV_FILE_PREFIX + elem.getStrTarget();
-               }
-
-               HashMap<String, String> envMap =3D YoctoSDKUtils.parseEnvSc=
ript(sFileName);
-               YoctoSDKUtils.setEnvVars(cpdesc, elem, envMap);
-
-               try {
-                       ILaunchManager lManager =3D DebugPlugin.getDefault(=
).getLaunchManager();
-                       ILaunchConfigurationType configType =3D
-                               lManager.getLaunchConfigurationType("org.ec=
lipse.ui.externaltools.ProgramLaunchConfigurationType");
-                       ILaunchConfigurationType debug_configType =3D
-                               lManager.getLaunchConfigurationType("org.ec=
lipse.cdt.launch.remoteApplicationLaunchType");
-
-                       String sPath =3D envMap.get("PATH");
-                       String sDebugName =3D envMap.get("GDB");
-                       String sysroot_str =3D elem.getStrSysrootLoc();
-                       if (configType =3D=3D null || debug_configType =3D=
=3D null)
-                               throw new YoctoGeneralException("Failed to =
get program or remote debug launcher!");
-                       createRemoteDebugLauncher(project, lManager, debug_=
configType, elem.getStrTarget(), sPath, sDebugName, sysroot_str);
-
-                       ArrayList<String> listValue =3D new ArrayList<Strin=
g>();
-                       listValue.add(new String("org.eclipse.ui.externalto=
ols.launchGroup"));
-                       if (elem.getEnumDeviceMode() =3D=3D YoctoUIElement.=
DeviceMode.QEMU_MODE) {
-                               createQemuLauncher(project, configType, lis=
tValue, sFileName, elem);
-                       }
-                       CoreModel.getDefault().setProjectDescription(projec=
t,cpdesc);
-               } catch (CoreException e) {
-                       e.printStackTrace();
-               }
-       }
-
        public static void configureAutotoolsOptions(IProject project) {
                IManagedBuildInfo info =3D ManagedBuildManager.getBuildInfo=
(project);
                IConfiguration icfg =3D info.getDefaultConfiguration(); @@ =
-173,103 +104,8 @@ public class YoctoSDKProjectNature implements IProjectNa=
ture {
                }
                else
                {
-                       setEnvironmentVariables(project, elem);
+                       YoctoSDKUtils.setEnvironmentVariables(project, elem=
);
                        configureAutotoolsOptions(project);
                }
        }
-
-       protected static void createRemoteDebugLauncher(IProject project,
-                       ILaunchManager lManager, ILaunchConfigurationType c=
onfigType,
-                       String sTargetTriplet,  String strPath, String sDeb=
ugName, String sSysroot) {
-               try {
-
-                       String sDebugSubDir =3D DEFAULT_USR_BIN + sTargetTr=
iplet;
-                       StringTokenizer token =3D new StringTokenizer(strPa=
th, ":");
-                       String strDebugger =3D "";
-                       while (token.hasMoreTokens())
-                       {
-                               String sTemp =3D token.nextToken();
-                               if (sTemp.endsWith(sDebugSubDir)) {
-                                       strDebugger =3D sTemp + "/" + sDebu=
gName;
-                                       break;
-                               }
-                       }
-                       if (strDebugger.isEmpty())
-                               return;
-                       //If get default Debugger successfully, go ahead!
-
-                       //create the gdbinit file
-                       String sDebugInitFile =3D project.getLocation().toS=
tring() + "/.gdbinit";
-                       FileWriter out =3D new FileWriter(new File(sDebugIn=
itFile));
-                       out.write("set sysroot " + sSysroot);
-                       out.flush();
-                       out.close();
-
-                       //set the launch configuration
-                       String projectName =3D project.getName();
-                       String configName =3D projectName+"_gdb_"+sTargetTr=
iplet;
-                       int i;
-                       ILaunchConfiguration[] configs=3DlManager.getLaunch=
Configurations(configType);
-                       for(i=3D0; i<configs.length; i++)
-                       {       //delete the old configuration
-                               ILaunchConfiguration config=3Dconfigs[i];
-                               if(config.getName().equals(configName)) {
-                                       config.delete();
-                                       break;
-                               }
-                       }
-                       ILaunchConfigurationWorkingCopy w_copy =3D configTy=
pe.newInstance(project, configName);
-                       Set<String> modes=3Dnew HashSet<String>();
-                       modes.add("debug");
-                       w_copy.setPreferredLaunchDelegate(modes, "org.eclip=
se.rse.remotecdt.launch");
-                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_GDB_INIT, sDebugInitFile);
-                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_DEBUGGER_AUTO_SOLIB, false);
-                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_DEBUG_NAME, strDebugger);
-                       w_copy.setAttribute(IMILaunchConfigurationConstants=
.ATTR_DEBUGGER_PROTOCOL, "mi");
-                       //TWEAK avoid loading default values in org.eclipse=
.cdt.launch.remote.tabs.RemoteCDebuggerTab
-                       w_copy.setAttribute("org.eclipse.cdt.launch.remote.=
RemoteCDSFDebuggerTab.DEFAULTS_SET",true);
-                       w_copy.setAttribute(ICDTLaunchConfigurationConstant=
s.ATTR_PROJECT_NAME, projectName);
-                       if(!project.hasNature(YoctoSDKEmptyProjectNature.Yo=
ctoSDK_EMPTY_NATURE_ID))
-                       {
-                               String project_src =3D "src/"+projectName;
-                               w_copy.setAttribute(ICDTLaunchConfiguration=
Constants.ATTR_PROGRAM_NAME, project_src);
-                       }
-
-                       w_copy.doSave();
-               }
-               catch (CoreException e)
-               {
-                       System.out.println(e.getMessage());
-               }
-               catch (IOException e)
-               {
-                       System.out.println("Failed to generate debug init f=
ile!");
-                       System.out.println(e.getMessage());
-               }
-
-
-       }
-
-       protected static void createQemuLauncher(IProject project,
-                       ILaunchConfigurationType configType,
-                       ArrayList<String> listValue, String sScriptFile,
-                       YoctoUIElement elem) {
-               try {
-
-                       ILaunchConfigurationWorkingCopy w_copy =3D configTy=
pe.newInstance(null, "qemu_"+elem.getStrTarget());
-
-                       w_copy.setAttribute("org.eclipse.debug.ui.favoriteG=
roups", listValue);
-                       w_copy.setAttribute("org.eclipse.ui.externaltools.A=
TTR_LOCATION", "/usr/bin/xterm");
-
-                       String argument =3D "-e \"source " + sScriptFile + =
";runqemu " + YoctoSDKUtils.qemuTargetTranslate(elem.getStrTarget()) + " "+
-                       elem.getStrQemuKernelLoc() + " " + elem.getStrSysro=
otLoc() + " " +  elem.getStrQemuOption() + ";bash\"";
-
-                       w_copy.setAttribute("org.eclipse.ui.externaltools.A=
TTR_TOOL_ARGUMENTS", argument);
-                       w_copy.doSave();
-               } catch (CoreException e) {
-               }
-
-       }
-
-
 }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

