Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 551D6E013CA
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 12:12:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Apr 2013 12:12:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,477,1363158000"; d="scan'208";a="227433400"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Apr 2013 12:12:03 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.240.5) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 15 Apr 2013 12:12:03 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.26]) with mapi id
	14.01.0355.002; Mon, 15 Apr 2013 12:12:02 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to
	YoctoSDKAutotoolsProjectNature
Thread-Index: AQHONqd2kB3FnnCuuUCmpMwCL6CWCZjXq4Iw
Date: Mon, 15 Apr 2013 19:12:02 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDC8E87@ORSMSX104.amr.corp.intel.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
	<1365679531-4518-5-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1365679531-4518-5-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCHv2 4/9] plugins/sdk.ide: Switch to	YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Mon, 15 Apr 2013 19:12:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

Everything looks good for the patch series except can we make YoctoSDKAutot=
oolsProjectNature subclass of YoctoSDKProjectNature by extending it to bett=
er show the classes relationship.  In this way, you don't need to introduce=
 the special method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProje=
ctNature which makes the interface a little bit cleaner via encapsulation.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Thursday, April 11, 2013 4:25 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoSDKAutotools=
ProjectNature

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The YoctoSDKProjectNature remains the basic nature for all Yocto projects i=
n the IDE. The projects using Autotools (all templates) get the YoctoSDKPro=
jectNature and additionally the YoctoSDKAutotoolsProjectNature. The process=
 NewYoctoCProjectTemplate is adapted accordingly.
---
 plugins/org.yocto.sdk.ide/plugin.xml               |    2 +-
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   45 +++++++++++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |   70 ----------------=
-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    6 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   79 ++++++++++++----=
----
 5 files changed, 96 insertions(+), 106 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.i=
de/plugin.xml
index f21434b..35e34b4 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -91,7 +91,7 @@
                            type=3D"org.eclipse.core.resources.IResource">
                         <test
                               property=3D"org.eclipse.core.resources.proje=
ctNature"
-                              value=3D"org.yocto.sdk.ide.YoctoSDKNature">
+
+ value=3D"org.yocto.sdk.ide.YoctoSDKAutotoolsNature">
                         </test>
                      </adapt>
                   </iterate>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk=
/ide/natures/YoctoSDKAutotoolsProjectNature.java
index ac73878..767c005 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutot=
oolsProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAu
+++ totoolsProjectNature.java
@@ -10,15 +10,31 @@
  *************************************************************************=
******/
 package org.yocto.sdk.ide.natures;

+import
+org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfiguratio
+nManager; import
+org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
+import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoUIElement; import
+org.yocto.sdk.ide.utils.YoctoSDKUtils;

 public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
        public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID =3D YoctoS=
DKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";

+       private static final String DEFAULT_HOST_STR =3D "host";
+       private static final String DEFAULT_TARGET_STR =3D "target";
+       private static final String DEFAULT_BUILD_STR =3D "build";
+       private static final String DEFAULT_AUTOGEN_OPT_STR =3D "autogenOpt=
s";
+
+       private static final String DEFAULT_CONFIGURE_STR =3D "configure";
+       private static final String DEFAULT_AUTOGEN_STR =3D "autogen";
+       private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =3D "
+--with-libtool-sysroot=3D";
+
        private IProject proj;

        public void configure() throws CoreException { @@ -38,4 +54,33 @@ p=
ublic class YoctoSDKAutotoolsProjectNature implements IProjectNature {
        public static void addYoctoSDKAutotoolsNature(IProject project, IPr=
ogressMonitor monitor) throws CoreException {
                YoctoSDKNatureUtils.addNature(project, YoctoSDK_AUTOTOOLS_N=
ATURE_ID, monitor);
        }
+
+       public static void configureAutotoolsOptions(IProject project) {
+               IManagedBuildInfo info =3D ManagedBuildManager.getBuildInfo=
(project);
+               IConfiguration icfg =3D info.getDefaultConfiguration();
+               YoctoUIElement elem =3D YoctoSDKUtils.getElemFromProjectEnv=
(project);
+               String sysroot_str =3D elem.getStrSysrootLoc();
+               String id =3D icfg.getId();
+               String CFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, "C=
FLAGS");
+               String CXXFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, =
"CXXFLAGS");
+               String CPPFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, =
"CPPFLAGS");
+               String LDFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, "=
LDFLAGS");
+
+               String command_prefix =3D "CFLAGS=3D\" -g -O0 " + CFLAGS_st=
r + "\" CXXFLAGS=3D\" -g -O0 "
+                               + CXXFLAGS_str + "\" LDFLAGS=3D\"" + LDFLAG=
S_str + "\" CPPFLAGS=3D\"" + CPPFLAGS_str + "\"";
+               String autogen_setting =3D command_prefix+" autogen.sh" + D=
EFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
+               String configure_setting =3D command_prefix + " configure" =
+ DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
+               IAConfiguration cfg =3D AutotoolsConfigurationManager.getIn=
stance().getConfiguration(project, id);
+               String strConfigure =3D YoctoSDKUtils.getEnvValue(project,
+"CONFIGURE_FLAGS");
+
+               cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
+               cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(=
strConfigure, "--build=3D"));
+               cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(s=
trConfigure, "--host=3D"));
+               cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString=
(strConfigure, "--target=3D"));
+               cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
+               cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
+
+               AutotoolsConfigurationManager.getInstance().addConfiguratio=
n(project, cfg);
+               AutotoolsConfigurationManager.getInstance().saveConfigs(pro=
ject);
+       }
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natu=
res/YoctoSDKProjectNature.java
index fcb296d..51926fb 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProje=
ctNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr
+++ ojectNature.java
@@ -10,39 +10,15 @@
  *************************************************************************=
******/
 package org.yocto.sdk.ide.natures;

-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigur=
ationManager;
-import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
-import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.jface.preference.IPreferenceStore;
-import org.yocto.sdk.ide.YoctoGeneralException;
-import org.yocto.sdk.ide.YoctoProfileElement;
-import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKPlugin; -import org.yocto.sdk.ide.YoctoUI=
Element; -import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;

-
-@SuppressWarnings("restriction")
 public class YoctoSDKProjectNature implements IProjectNature {
        public static final  String YoctoSDK_NATURE_ID =3D YoctoSDKPlugin.g=
etUniqueIdentifier() + ".YoctoSDKNature";

-       private static final String DEFAULT_HOST_STR =3D "host";
-       private static final String DEFAULT_TARGET_STR =3D "target";
-       private static final String DEFAULT_BUILD_STR =3D "build";
-       private static final String DEFAULT_AUTOGEN_OPT_STR =3D "autogenOpt=
s";
-
-       private static final String DEFAULT_CONFIGURE_STR =3D "configure";
-       private static final String DEFAULT_AUTOGEN_STR =3D "autogen";
-       private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =3D " --=
with-libtool-sysroot=3D";
-
        private IProject proj;

        public void configure() throws CoreException { @@ -62,50 +38,4 @@ p=
ublic class YoctoSDKProjectNature implements IProjectNature {
        public static void addYoctoSDKNature(IProject project, IProgressMon=
itor monitor) throws CoreException {
                YoctoSDKNatureUtils.addNature(project, YoctoSDK_NATURE_ID, =
monitor);
        }
-
-       public static void configureAutotoolsOptions(IProject project) {
-               IManagedBuildInfo info =3D ManagedBuildManager.getBuildInfo=
(project);
-               IConfiguration icfg =3D info.getDefaultConfiguration();
-               YoctoUIElement elem =3D YoctoSDKUtils.getElemFromProjectEnv=
(project);
-               String sysroot_str =3D elem.getStrSysrootLoc();
-               String id =3D icfg.getId();
-               String CFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, "C=
FLAGS");
-               String CXXFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, =
"CXXFLAGS");
-               String CPPFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, =
"CPPFLAGS");
-               String LDFLAGS_str =3D YoctoSDKUtils.getEnvValue(project, "=
LDFLAGS");
-
-               String command_prefix =3D "CFLAGS=3D\" -g -O0 " + CFLAGS_st=
r + "\" CXXFLAGS=3D\" -g -O0 "
-               + CXXFLAGS_str + "\" LDFLAGS=3D\"" + LDFLAGS_str + "\" CPPF=
LAGS=3D\"" + CPPFLAGS_str + "\"";
-               String autogen_setting =3D command_prefix+" autogen.sh" + D=
EFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
-               String configure_setting =3D command_prefix + " configure" =
+ DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
-               IAConfiguration cfg =3D AutotoolsConfigurationManager.getIn=
stance().getConfiguration(project, id);
-               String strConfigure =3D YoctoSDKUtils.getEnvValue(project, =
"CONFIGURE_FLAGS");
-
-               cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
-               cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtils.splitString(=
strConfigure, "--build=3D"));
-               cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils.splitString(s=
trConfigure, "--host=3D"));
-               cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUtils.splitString=
(strConfigure, "--target=3D"));
-               cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
-               cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
-
-               AutotoolsConfigurationManager.getInstance().addConfiguratio=
n(project, cfg);
-               AutotoolsConfigurationManager.getInstance().saveConfigs(pro=
ject);
-       }
-
-       public static void configureAutotools(IProject project) throws Yoct=
oGeneralException {
-               YoctoProfileElement profileElement =3D YoctoSDKUtils.getPro=
filesFromDefaultStore();
-               YoctoSDKUtils.saveProfilesToProjectPreferences(profileEleme=
nt, project);
-               IPreferenceStore selecteProfileStore =3D YoctoSDKPlugin.get=
ProfilePreferenceStore(profileElement.getSelectedProfile());
-               YoctoUIElement elem =3D YoctoSDKUtils.getElemFromStore(sele=
cteProfileStore);
-               SDKCheckResults result =3D YoctoSDKChecker.checkYoctoSDK(el=
em);
-               if (result !=3D SDKCheckResults.SDK_PASS){
-                       String strErrorMsg =3D  YoctoSDKChecker.getErrorMes=
sage(result, SDKCheckRequestFrom.Wizard);
-                       throw new YoctoGeneralException(strErrorMsg);
-               }
-               else
-               {
-                       YoctoSDKUtils.setEnvironmentVariables(project, elem=
);
-                       configureAutotoolsOptions(project);
-               }
-       }
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java
index bd781b3..1e2e424 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.j=
ava
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtil
+++ s.java
@@ -54,8 +54,8 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;  import org.yocto.sdk.ide.YoctoUI=
Element;
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
-import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;

 public class YoctoSDKUtils {
@@ -427,7 +427,9 @@ public class YoctoSDKUtils {

                try {
                        setEnvironmentVariables(project, elem);
-                       YoctoSDKProjectNature.configureAutotoolsOptions(pro=
ject);
+                       if(project.hasNature(YoctoSDKAutotoolsProjectNature=
.YoctoSDK_AUTOTOOLS_NATURE_ID)) {
+                               YoctoSDKAutotoolsProjectNature.configureAut=
otoolsOptions(project);
+                       }
                        IConsole console =3D CCorePlugin.getDefault().getCo=
nsole("org.yocto.sdk.ide.YoctoConsole");
                        console.start(project);
                        consoleOutStream =3D console.getOutputStream(); dif=
f --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCP=
rojectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizar=
d/NewYoctoCProjectTemplate.java
index 73531e5..239cbf8 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProje=
ctTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr
+++ ojectTemplate.java
@@ -28,6 +28,7 @@ import org.eclipse.cdt.make.core.MakeCorePlugin;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IDis=
coveredPathInfo;
 import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IPer=
ProjectDiscoveredPathInfo;
+import
+org.eclipse.cdt.make.internal.core.scannerconfig.util.SymbolEntry;
 import org.eclipse.cdt.managedbuilder.core.BuildException;
 import org.eclipse.cdt.managedbuilder.core.IConfiguration;
 import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
@@ -56,6 +57,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;  import org.yocto.sdk.ide.YoctoUI=
Element;
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
@@ -88,7 +90,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunn=
er {
                String isEmptyProjetValue =3D args[4].getSimpleValue();
                String isAutotoolsProjectValue =3D args[5].getSimpleValue()=
;
                boolean isCProject =3D Boolean.valueOf(isCProjectValue).boo=
leanValue();
-               boolean isEmptryProject =3D Boolean.valueOf(isEmptyProjetVa=
lue).booleanValue();
+               boolean isEmptyProject =3D
+Boolean.valueOf(isEmptyProjetValue).booleanValue();
                boolean isAutotoolsProject =3D Boolean.valueOf(isAutotoolsP=
rojectValue).booleanValue();

                IProject project =3D ResourcesPlugin.getWorkspace().getRoot=
().getProject(projectName);
@@ -126,19 +128,8 @@ public class NewYoctoCProjectTemplate extends ProcessR=
unner {
                                pca.setArtifactExtension(artifactExtension)=
;
                                info =3D pca.createProject(monitor, CCorePl=
ugin.DEFAULT_INDEXER, isCProject);

-                               AutotoolsNewProjectNature.addAutotoolsNatur=
e(project, monitor);
-                               // For each IConfiguration, create a corres=
ponding Autotools Configuration
-                               IConfiguration[] cfgs =3D pca.getConfigs();
-                               for (int i =3D 0; i < cfgs.length; ++i) {
-                                       IConfiguration cfg =3D cfgs[i];
-                                       AutotoolsConfigurationManager.getIn=
stance().getConfiguration(project, cfg.getName(), true);
-                               }
-                               AutotoolsConfigurationManager.getInstance()=
.saveConfigs(project);
-                               if(isEmptryProject) {
-                                       YoctoSDKEmptyProjectNature.addYocto=
SDKEmptyNature(project, monitor);
-                               }
-                               YoctoSDKProjectNature.addYoctoSDKNature(pro=
ject, monitor);
-                               YoctoSDKProjectNature.configureAutotools(pr=
oject);
+                               addNatures(project, false, isEmptyProject, =
isAutotoolsProject,
+monitor);
+
                                info.setValid(true);
                                ManagedBuildManager.saveBuildInfo(project, =
true);

@@ -147,31 +138,19 @@ public class NewYoctoCProjectTemplate extends Process=
Runner {

                                IWorkspace workspace =3D ResourcesPlugin.ge=
tWorkspace();
                                turnOffAutoBuild(workspace);
-                               YoctoProfileElement profileElement =3D Yoct=
oSDKUtils.getProfilesFromDefaultStore();
-                               IPreferenceStore selecteProfileStore =3D Yo=
ctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile())=
;
-                               YoctoUIElement elem =3D YoctoSDKUtils.getEl=
emFromStore(selecteProfileStore);
-                               SDKCheckResults result =3D YoctoSDKChecker.=
checkYoctoSDK(elem);
-                               if (result !=3D SDKCheckResults.SDK_PASS){
-                                       String strErrorMsg =3D  YoctoSDKChe=
cker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
-                                       throw new YoctoGeneralException(str=
ErrorMsg);
-                               }
-                               AutotoolsNewProjectNature.addAutotoolsNatur=
e(project, monitor);
-                               if(isEmptryProject) {
-                                       YoctoSDKEmptyProjectNature.addYocto=
SDKEmptyNature(project, monitor);
-                               }
-
-                               YoctoSDKProjectNature.addYoctoSDKNature(pro=
ject, monitor);
-                               YoctoSDKProjectNature.configureAutotools(pr=
oject);
-
-                               AutotoolsConfigurationManager.getInstance()=
.saveConfigs(project);
+
+                               YoctoSDKChecker.checkIfGloballySelectedYoct=
oProfileIsValid();
+
+                               addNatures(project, true, isEmptyProject, i=
sAutotoolsProject,
+monitor);
+
                                //restoreAutoBuild(workspace);
                                IDiscoveredPathManager manager =3D MakeCore=
Plugin.getDefault().getDiscoveryManager();
                                IDiscoveredPathInfo pathInfo =3D manager.ge=
tDiscoveredInfo(project);
                                if (pathInfo instanceof IPerProjectDiscover=
edPathInfo) {
                                    IPerProjectDiscoveredPathInfo projectPa=
thInfo =3D
                                        (IPerProjectDiscoveredPathInfo) pat=
hInfo;
-                                   projectPathInfo.setIncludeMap(new Linke=
dHashMap());
-                                   projectPathInfo.setSymbolMap(new Linked=
HashMap());
+                                   projectPathInfo.setIncludeMap(new Linke=
dHashMap<String, Boolean>());
+                                   projectPathInfo.setSymbolMap(new Linked=
HashMap<String,
+SymbolEntry>());
                                    manager.removeDiscoveredInfo(project);
                                }
                        }
@@ -200,6 +179,40 @@ public class NewYoctoCProjectTemplate extends ProcessR=
unner {
                return matcher.find();
 }

+       private void addNatures(IProject project, boolean projectExists, bo=
olean isEmptyProject,
+                       boolean isAutotoolsProject, IProgressMonitor monito=
r)
+                                       throws CoreException, YoctoGeneralE=
xception {
+               YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
+
+               YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid(=
);
+
+               YoctoProfileElement profileElement =3D YoctoSDKUtils.getPro=
filesFromDefaultStore();
+               YoctoSDKUtils.saveProfilesToProjectPreferences(profileEleme=
nt,
+project);
+
+               IPreferenceStore selecteProfileStore =3D YoctoSDKPlugin.get=
ProfilePreferenceStore(profileElement.getSelectedProfile());
+               YoctoUIElement elem =3D YoctoSDKUtils.getElemFromStore(sele=
cteProfileStore);
+               YoctoSDKUtils.setEnvironmentVariables(project, elem);
+
+               if (isEmptyProject) {
+                       YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(p=
roject, monitor);
+               }
+
+               if (isAutotoolsProject) {
+                       AutotoolsNewProjectNature.addAutotoolsNature(projec=
t, monitor);
+
+                       if(!projectExists) {
+                               // For each IConfiguration, create a corres=
ponding Autotools Configuration
+                               for (IConfiguration cfg : pca.getConfigs())=
 {
+                                       AutotoolsConfigurationManager.getIn=
stance().getConfiguration(project, cfg.getName(), true);
+                               }
+                               AutotoolsConfigurationManager.getInstance()=
.saveConfigs(project);
+                       }
+
+                       YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotools=
Nature(project, monitor);
+                       YoctoSDKAutotoolsProjectNature.configureAutotoolsOp=
tions(project);
+               }
+       }
+
        protected final void turnOffAutoBuild(IWorkspace workspace) throws =
CoreException {
                IWorkspaceDescription workspaceDesc =3D workspace.getDescri=
ption();
                savedAutoBuildingValue =3D workspaceDesc.isAutoBuilding();
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

