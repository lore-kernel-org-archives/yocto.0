Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB795E014DF
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 22:40:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Apr 2013 22:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,490,1363158000"; 
	d="scan'208,217";a="323464669"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2013 22:40:52 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.22]) with mapi id
	14.01.0355.002; Tue, 16 Apr 2013 22:40:50 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>
Thread-Topic: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to
	YoctoSDKAutotoolsProjectNature
Thread-Index: AQHOOp9y0w77wnWFOUeFsJncmFvnUZjZ2OLw
Date: Wed, 17 Apr 2013 05:40:50 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0@ORSMSX104.amr.corp.intel.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
	<1365679531-4518-5-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDC8E87@ORSMSX104.amr.corp.intel.com>
	<CAEe+mUbqCLv5kBaoD4gvEmZHMCi5JUTGa-0C4hFzEeZ6zsBzFg@mail.gmail.com>
In-Reply-To: <CAEe+mUbqCLv5kBaoD4gvEmZHMCi5JUTGa-0C4hFzEeZ6zsBzFg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Wed, 17 Apr 2013 05:40:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0ORSMSX104amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0ORSMSX104amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,



I ask for building the class hierarch is mainly from the Java side class de=
sign point of view and I see your point of the relationship consideration f=
rom the eclipse plug-in side.  Just purely from the class name and the impl=
ementation, it's obviously YoctoSDKAutotoolsProjectNature has a closer rela=
tionship to YoctoSDKProjectNature whereas the requirements for autotoolsNat=
ureV2 is less obvious.



My comments regarding eliminate addYoctoSDKAutotoolsNature, but instead jus=
t make it the same as addYoctoSDKNature with same signature.  But the imple=
mentation of them will be difference via the NATURE_ID value.  But this mak=
es more sense if we make AutotoolsProjectNature subclass ProjectNature, if =
there's no such relationship between the two classes, with separate method =
name as in your patch is just fine.



Thoughts?



Jessica



From: Atanas Gegov [mailto:atanas.gegov.oss@gmail.com]
Sent: Tuesday, April 16, 2013 5:39 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoSDKAutot=
oolsProjectNature



Hi Jessica,



My idea was that the YoctoSDKAutotoolsProjectNature and the YoctoSDKProject=
Nature are related through the "requires-nature" tag in plugin.xml. The Yoc=
toSDKAutotoolsProjectNature has also an another  "requires-nature" relation=
 to the org.eclipse.cdt.autotools.core.autotoolsNatureV2. If I make the Yoc=
toSDKAutotoolsProjectNature a subclass of the YoctoSDKProjectNature it woul=
d suggest (according to my mind) a stronger connection to the YoctoSDKProje=
ctNature than to the org.eclipse.cdt.autotools.core.autotoolsNatureV2. It w=
ould be like YoctoSDKAutotoolsProjectNature "requires more" YoctoSDKProject=
Nature than org.eclipse.cdt.autotools.core.autotoolsNatureV2...I am not sur=
e if it is a problem or not. So, I can make the YoctoSDKAutotoolsProjectNat=
ure a subclass of the YoctoSDKProjectNature if you think that it is a bette=
r design.


What do you mean by "In this way, you don't need to introduce the special m=
ethod of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProjectNature which=
 makes the interface a little bit cleaner via encapsulation"? In order to a=
dd the two natures to the project I think we need both static methods:
- YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);

- YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, monito=
r);

Or do you mean some other solution?


Looking forward to your feedback!

Best regards,
Atanas

On Mon, Apr 15, 2013 at 9:12 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

Hi Atanas,

Everything looks good for the patch series except can we make YoctoSDKAutot=
oolsProjectNature subclass of YoctoSDKProjectNature by extending it to bett=
er show the classes relationship.  In this way, you don't need to introduce=
 the special method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProje=
ctNature which makes the interface a little bit cleaner via encapsulation.

Thanks,
Jessica


-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Atanas Gegov
Sent: Thursday, April 11, 2013 4:25 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoSDKAutotools=
ProjectNature

From: Atanas Gegov <atanas.gegov@bmw-carit.de<mailto:atanas.gegov@bmw-carit=
.de>>

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
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--_000_C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0ORSMSX104amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Atanas,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I ask for building the cl=
ass hierarch is mainly from the Java side class design point of view and I =
see your point of the relationship consideration from the
 eclipse plug-in side.&nbsp; Just purely from the class name and the implem=
entation, it&#8217;s obviously YoctoSDKAutotoolsProjectNature has a closer =
relationship to YoctoSDKProjectNature whereas the requirements for autotool=
sNatureV2 is less obvious.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">My comments regarding eli=
minate addYoctoSDKAutotoolsNature, but instead just make it the same as add=
YoctoSDKNature with same signature.&nbsp; But the implementation
 of them will be difference via the NATURE_ID value.&nbsp; But this makes m=
ore sense if we make AutotoolsProjectNature subclass ProjectNature, if ther=
e&#8217;s no such relationship between the two classes, with separate metho=
d name as in your patch is just fine.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thoughts?<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Atanas G=
egov [mailto:atanas.gegov.oss@gmail.com]
<br>
<b>Sent:</b> Tuesday, April 16, 2013 5:39 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoS=
DKAutotoolsProjectNature<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">My idea was that the&nbsp;YoctoSDKAutotoolsProjectNa=
ture and the&nbsp;YoctoSDKProjectNature are related through the &quot;requi=
res-nature&quot; tag in plugin.xml. The&nbsp;YoctoSDKAutotoolsProjectNature=
 has also an another &nbsp;&quot;requires-nature&quot; relation to the org.=
eclipse.cdt.autotools.core.autotoolsNatureV2.
 If I make the YoctoSDKAutotoolsProjectNature a subclass of the YoctoSDKPro=
jectNature it would suggest (according to my mind) a stronger connection to=
 the YoctoSDKProjectNature than to the org.eclipse.cdt.autotools.core.autot=
oolsNatureV2. It would be like YoctoSDKAutotoolsProjectNature
 &quot;requires more&quot; YoctoSDKProjectNature than org.eclipse.cdt.autot=
ools.core.autotoolsNatureV2...I am not sure if it is a problem or not. So, =
I can make the&nbsp;YoctoSDKAutotoolsProjectNature a subclass of the&nbsp;Y=
octoSDKProjectNature if you think that it is a better
 design.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
What do you mean by &quot;In this way, you don't need to introduce the spec=
ial method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProjectNature =
which makes the interface a little bit cleaner via encapsulation&quot;? In =
order to add the two natures to the project
 I think we need both static methods:<br>
-&nbsp;YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal">-&nbsp;YoctoSDKAutotoolsProjectNature.addYoctoSDKAut=
otoolsNature(project, monitor);<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Or do you mean some other solution?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
Looking forward to your feedback!<br>
<br>
Best regards,<br>
Atanas<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On Mon, Apr 15, 2013 at 9:12 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">Hi Atanas,<br>
<br>
Everything looks good for the patch series except can we make YoctoSDKAutot=
oolsProjectNature subclass of YoctoSDKProjectNature by extending it to bett=
er show the classes relationship. &nbsp;In this way, you don't need to intr=
oduce the special method of addYoctoSDKAutotoolsNature
 in YoctoSDKAutotoolsProjectNature which makes the interface a little bit c=
leaner via encapsulation.<br>
<br>
Thanks,<br>
Jessica<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Thursday, April 11, 2013 4:25 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoSDKAutotools=
ProjectNature<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de">atanas.=
gegov@bmw-carit.de</a>&gt;<br>
<br>
The YoctoSDKProjectNature remains the basic nature for all Yocto projects i=
n the IDE. The projects using Autotools (all templates) get the YoctoSDKPro=
jectNature and additionally the YoctoSDKAutotoolsProjectNature. The process=
 NewYoctoCProjectTemplate is adapted
 accordingly.<br>
---<br>
&nbsp;plugins/org.yocto.sdk.ide/plugin.xml &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; | &nbsp; &nbsp;2 &#43;-<br>
&nbsp;.../natures/YoctoSDKAutotoolsProjectNature.java &nbsp; &nbsp;| &nbsp;=
 45 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;.../sdk/ide/natures/YoctoSDKProjectNature.java &nbsp; &nbsp; | &nbsp;=
 70 -----------------<br>
&nbsp;.../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | &nbsp; &nbsp;6 &=
#43;-<br>
&nbsp;.../sdk/ide/wizard/NewYoctoCProjectTemplate.java &nbsp; | &nbsp; 79 &=
#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;--------<br>
&nbsp;5 files changed, 96 insertions(&#43;), 106 deletions(-)<br>
<br>
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.i=
de/plugin.xml<br>
index f21434b..35e34b4 100644<br>
--- a/plugins/org.yocto.sdk.ide/plugin.xml<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.ide/plugin.xml<br>
@@ -91,7 &#43;91,7 @@<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; type=3D&quot;org.eclipse.core.resources.IResource&qu=
ot;&gt;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;&lt;test<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;property=3D&quot;org.eclipse.core.resou=
rces.projectNature&quot;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;value=3D&quot;org.yocto.sdk.ide.YoctoSDKNatu=
re&quot;&gt;<br>
&#43;<br>
&#43; value=3D&quot;org.yocto.sdk.ide.YoctoSDKAutotoolsNature&quot;&gt;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;&lt;/test&gt;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &lt;/adapt&gt;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;/i=
terate&gt;<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk=
/ide/natures/YoctoSDKAutotoolsProjectNature.java<br>
index ac73878..767c005 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutot=
oolsProjectNature.java<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/Y=
octoSDKAu<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&#43;&#43;&#43; totoolsProjectNature.java<o:p></o:p>=
</p>
<div>
<p class=3D"MsoNormal">@@ -10,15 &#43;10,31 @@<br>
&nbsp; ********************************************************************=
***********/<br>
&nbsp;package org.yocto.sdk.ide.natures;<br>
<br>
&#43;import<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;org.eclipse.cdt.internal.autotools.core.configu=
re.AutotoolsConfiguratio<br>
&#43;nManager; import<br>
&#43;org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;<o:p=
></o:p></p>
<div>
<p class=3D"MsoNormal">&#43;import org.eclipse.cdt.managedbuilder.core.ICon=
figuration;<br>
&#43;import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
&#43;import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;<br>
&nbsp;import org.eclipse.core.resources.IProject;<br>
&nbsp;import org.eclipse.core.resources.IProjectNature;<br>
&nbsp;import org.eclipse.core.runtime.CoreException;<br>
&nbsp;import org.eclipse.core.runtime.IProgressMonitor;<br>
&nbsp;import org.yocto.sdk.ide.YoctoSDKPlugin;<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;import org.yocto.sdk.ide.YoctoUIElement; import=
<br>
&#43;org.yocto.sdk.ide.utils.YoctoSDKUtils;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><br>
&nbsp;public class YoctoSDKAutotoolsProjectNature implements IProjectNature=
 {<br>
&nbsp; &nbsp; &nbsp; &nbsp; public static final &nbsp;String YoctoSDK_AUTOT=
OOLS_NATURE_ID =3D YoctoSDKPlugin.getUniqueIdentifier() &#43; &quot;.YoctoS=
DKAutotoolsNature&quot;;<br>
<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_HOST_STR =3D=
 &quot;host&quot;;<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_TARGET_STR =
=3D &quot;target&quot;;<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_BUILD_STR =
=3D &quot;build&quot;;<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_AUTOGEN_OPT_=
STR =3D &quot;autogenOpts&quot;;<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_CONFIGURE_ST=
R =3D &quot;configure&quot;;<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_AUTOGEN_STR =
=3D &quot;autogen&quot;;<br>
&#43; &nbsp; &nbsp; &nbsp; private static final String DEFAULT_LIBTOOL_SYSR=
OOT_PREFIX =3D &quot;<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;--with-libtool-sysroot=3D&quot;;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&#43;<br>
&nbsp; &nbsp; &nbsp; &nbsp; private IProject proj;<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; public void configure() throws CoreException { =
@@ -38,4 &#43;54,33 @@ public class YoctoSDKAutotoolsProjectNature implemen=
ts IProjectNature {<br>
&nbsp; &nbsp; &nbsp; &nbsp; public static void addYoctoSDKAutotoolsNature(I=
Project project, IProgressMonitor monitor) throws CoreException {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKNatureUtils=
.addNature(project, YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; public static void configureAutotoolsOptions(IPr=
oject project) {<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IManagedBuildInfo in=
fo =3D ManagedBuildManager.getBuildInfo(project);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IConfiguration icfg =
=3D info.getDefaultConfiguration();<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoUIElement elem =
=3D YoctoSDKUtils.getElemFromProjectEnv(project);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String sysroot_str =
=3D elem.getStrSysrootLoc();<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String id =3D icfg.g=
etId();<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String CFLAGS_str =
=3D YoctoSDKUtils.getEnvValue(project, &quot;CFLAGS&quot;);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String CXXFLAGS_str =
=3D YoctoSDKUtils.getEnvValue(project, &quot;CXXFLAGS&quot;);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String CPPFLAGS_str =
=3D YoctoSDKUtils.getEnvValue(project, &quot;CPPFLAGS&quot;);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String LDFLAGS_str =
=3D YoctoSDKUtils.getEnvValue(project, &quot;LDFLAGS&quot;);<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String command_prefi=
x =3D &quot;CFLAGS=3D\&quot; -g -O0 &quot; &#43; CFLAGS_str &#43; &quot;\&q=
uot; CXXFLAGS=3D\&quot; -g -O0 &quot;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#43; CXXFLAGS_str &#43; &quot;\&quot; =
LDFLAGS=3D\&quot;&quot; &#43; LDFLAGS_str &#43; &quot;\&quot; CPPFLAGS=3D\&=
quot;&quot; &#43; CPPFLAGS_str &#43; &quot;\&quot;&quot;;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String autogen_setti=
ng =3D command_prefix&#43;&quot; autogen.sh&quot; &#43; DEFAULT_LIBTOOL_SYS=
ROOT_PREFIX &#43; sysroot_str;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String configure_set=
ting =3D command_prefix &#43; &quot; configure&quot; &#43; DEFAULT_LIBTOOL_=
SYSROOT_PREFIX &#43; sysroot_str;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IAConfiguration cfg =
=3D AutotoolsConfigurationManager.getInstance().getConfiguration(project, i=
d);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String strConfigure =
=3D YoctoSDKUtils.getEnvValue(project,<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;&quot;CONFIGURE_FLAGS&quot;);<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAUL=
T_CONFIGURE_STR, configure_setting);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAUL=
T_BUILD_STR, YoctoSDKUtils.splitString(strConfigure, &quot;--build=3D&quot;=
));<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAUL=
T_HOST_STR, YoctoSDKUtils.splitString(strConfigure, &quot;--host=3D&quot;))=
;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAUL=
T_TARGET_STR, YoctoSDKUtils.splitString(strConfigure, &quot;--target=3D&quo=
t;));<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAUL=
T_AUTOGEN_STR, autogen_setting);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAUL=
T_AUTOGEN_OPT_STR, strConfigure);<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurati=
onManager.getInstance().addConfiguration(project, cfg);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurati=
onManager.getInstance().saveConfigs(project);<br>
&#43; &nbsp; &nbsp; &nbsp; }<br>
&nbsp;}<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natu=
res/YoctoSDKProjectNature.java<br>
index fcb296d..51926fb 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProje=
ctNature.java<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/Y=
octoSDKPr<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;&#43;&#43; ojectNature.java<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal">@@ -10,39 &#43;10,15 @@<br>
&nbsp; ********************************************************************=
***********/<br>
&nbsp;package org.yocto.sdk.ide.natures;<br>
<br>
-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigur=
ationManager;<br>
-import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;<=
br>
-import org.eclipse.cdt.managedbuilder.core.IConfiguration;<br>
-import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
-import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;<br>
&nbsp;import org.eclipse.core.resources.IProject;<br>
&nbsp;import org.eclipse.core.resources.IProjectNature;<br>
&nbsp;import org.eclipse.core.runtime.CoreException;<br>
&nbsp;import org.eclipse.core.runtime.IProgressMonitor;<br>
-import org.eclipse.jface.preference.IPreferenceStore;<br>
-import org.yocto.sdk.ide.YoctoGeneralException;<br>
-import org.yocto.sdk.ide.YoctoProfileElement;<br>
-import org.yocto.sdk.ide.YoctoSDKChecker;<br>
&nbsp;import org.yocto.sdk.ide.YoctoSDKPlugin; -import org.yocto.sdk.ide.Yo=
ctoUIElement; -import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom=
;<br>
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;<br>
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;<br>
<br>
-<br>
-@SuppressWarnings(&quot;restriction&quot;)<br>
&nbsp;public class YoctoSDKProjectNature implements IProjectNature {<br>
&nbsp; &nbsp; &nbsp; &nbsp; public static final &nbsp;String YoctoSDK_NATUR=
E_ID =3D YoctoSDKPlugin.getUniqueIdentifier() &#43; &quot;.YoctoSDKNature&q=
uot;;<br>
<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_HOST_STR =3D &qu=
ot;host&quot;;<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_TARGET_STR =3D &=
quot;target&quot;;<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_BUILD_STR =3D &q=
uot;build&quot;;<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_AUTOGEN_OPT_STR =
=3D &quot;autogenOpts&quot;;<br>
-<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_CONFIGURE_STR =
=3D &quot;configure&quot;;<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_AUTOGEN_STR =3D =
&quot;autogen&quot;;<br>
- &nbsp; &nbsp; &nbsp; private static final String DEFAULT_LIBTOOL_SYSROOT_=
PREFIX =3D &quot; --with-libtool-sysroot=3D&quot;;<br>
-<br>
&nbsp; &nbsp; &nbsp; &nbsp; private IProject proj;<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; public void configure() throws CoreException { =
@@ -62,50 &#43;38,4 @@ public class YoctoSDKProjectNature implements IProje=
ctNature {<br>
&nbsp; &nbsp; &nbsp; &nbsp; public static void addYoctoSDKNature(IProject p=
roject, IProgressMonitor monitor) throws CoreException {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKNatureUtils=
.addNature(project, YoctoSDK_NATURE_ID, monitor);<br>
&nbsp; &nbsp; &nbsp; &nbsp; }<br>
-<br>
- &nbsp; &nbsp; &nbsp; public static void configureAutotoolsOptions(IProjec=
t project) {<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IManagedBuildInfo info =
=3D ManagedBuildManager.getBuildInfo(project);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IConfiguration icfg =3D =
info.getDefaultConfiguration();<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoUIElement elem =3D =
YoctoSDKUtils.getElemFromProjectEnv(project);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String sysroot_str =3D e=
lem.getStrSysrootLoc();<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String id =3D icfg.getId=
();<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String CFLAGS_str =3D Yo=
ctoSDKUtils.getEnvValue(project, &quot;CFLAGS&quot;);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String CXXFLAGS_str =3D =
YoctoSDKUtils.getEnvValue(project, &quot;CXXFLAGS&quot;);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String CPPFLAGS_str =3D =
YoctoSDKUtils.getEnvValue(project, &quot;CPPFLAGS&quot;);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String LDFLAGS_str =3D Y=
octoSDKUtils.getEnvValue(project, &quot;LDFLAGS&quot;);<br>
-<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String command_prefix =
=3D &quot;CFLAGS=3D\&quot; -g -O0 &quot; &#43; CFLAGS_str &#43; &quot;\&quo=
t; CXXFLAGS=3D\&quot; -g -O0 &quot;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#43; CXXFLAGS_str &#43;=
 &quot;\&quot; LDFLAGS=3D\&quot;&quot; &#43; LDFLAGS_str &#43; &quot;\&quot=
; CPPFLAGS=3D\&quot;&quot; &#43; CPPFLAGS_str &#43; &quot;\&quot;&quot;;<br=
>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String autogen_setting =
=3D command_prefix&#43;&quot; autogen.sh&quot; &#43; DEFAULT_LIBTOOL_SYSROO=
T_PREFIX &#43; sysroot_str;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String configure_setting=
 =3D command_prefix &#43; &quot; configure&quot; &#43; DEFAULT_LIBTOOL_SYSR=
OOT_PREFIX &#43; sysroot_str;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IAConfiguration cfg =3D =
AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);<=
br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String strConfigure =3D =
YoctoSDKUtils.getEnvValue(project, &quot;CONFIGURE_FLAGS&quot;);<br>
-<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAULT_CO=
NFIGURE_STR, configure_setting);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAULT_BU=
ILD_STR, YoctoSDKUtils.splitString(strConfigure, &quot;--build=3D&quot;));<=
br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAULT_HO=
ST_STR, YoctoSDKUtils.splitString(strConfigure, &quot;--host=3D&quot;));<br=
>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAULT_TA=
RGET_STR, YoctoSDKUtils.splitString(strConfigure, &quot;--target=3D&quot;))=
;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAULT_AU=
TOGEN_STR, autogen_setting);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cfg.setOption(DEFAULT_AU=
TOGEN_OPT_STR, strConfigure);<br>
-<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurationMa=
nager.getInstance().addConfiguration(project, cfg);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurationMa=
nager.getInstance().saveConfigs(project);<br>
- &nbsp; &nbsp; &nbsp; }<br>
-<br>
- &nbsp; &nbsp; &nbsp; public static void configureAutotools(IProject proje=
ct) throws YoctoGeneralException {<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoProfileElement prof=
ileElement =3D YoctoSDKUtils.getProfilesFromDefaultStore();<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKUtils.saveProfil=
esToProjectPreferences(profileElement, project);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPreferenceStore selecte=
ProfileStore =3D YoctoSDKPlugin.getProfilePreferenceStore(profileElement.ge=
tSelectedProfile());<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoUIElement elem =3D =
YoctoSDKUtils.getElemFromStore(selecteProfileStore);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SDKCheckResults result =
=3D YoctoSDKChecker.checkYoctoSDK(elem);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (result !=3D SDKCheck=
Results.SDK_PASS){<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; String strErrorMsg =3D &nbsp;YoctoSDKChecker.getErrorMessage(result, SD=
KCheckRequestFrom.Wizard);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; throw new YoctoGeneralException(strErrorMsg);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; YoctoSDKUtils.setEnvironmentVariables(project, elem);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; configureAutotoolsOptions(project);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
- &nbsp; &nbsp; &nbsp; }<br>
&nbsp;}<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java<br>
index bd781b3..1e2e424 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.j=
ava<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/Yoc=
toSDKUtil<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&#43;&#43;&#43; s.java<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">@@ -54,8 &#43;54,8 @@ import org.yocto.sdk.ide.Yocto=
ProfileElement;<br>
&nbsp;import org.yocto.sdk.ide.YoctoSDKMessages;<br>
&nbsp;import org.yocto.sdk.ide.YoctoSDKPlugin; &nbsp;import org.yocto.sdk.i=
de.YoctoUIElement;<br>
&#43;import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;<br>
&nbsp;import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;<br>
-import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;<br>
&nbsp;import org.yocto.sdk.ide.preferences.PreferenceConstants;<br>
<br>
&nbsp;public class YoctoSDKUtils {<br>
@@ -427,7 &#43;427,9 @@ public class YoctoSDKUtils {<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; try {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; setEnvironmentVariables(project, elem);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; YoctoSDKProjectNature.configureAutotoolsOptions(project);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; if(project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTO=
OLS_NATURE_ID)) {<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKAutotoolsProjectNature.configur=
eAutotoolsOptions(project);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; }<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; IConsole console =3D CCorePlugin.getDefault().getConsole(&quot;org=
.yocto.sdk.ide.YoctoConsole&quot;);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; console.start(project);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; consoleOutStream =3D console.getOutputStream(); diff --git a/plugi=
ns/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.=
java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProj=
ectTemplate.java<br>
index 73531e5..239cbf8 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProje=
ctTemplate.java<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/Ne=
wYoctoCPr<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;&#43;&#43; ojectTemplate.java<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">@@ -28,6 &#43;28,7 @@ import org.eclipse.cdt.make.co=
re.MakeCorePlugin;<br>
&nbsp;import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager=
;<br>
&nbsp;import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager=
.IDiscoveredPathInfo;<br>
&nbsp;import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager=
.IPerProjectDiscoveredPathInfo;<br>
&#43;import<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;org.eclipse.cdt.make.internal.core.scannerconfi=
g.util.SymbolEntry;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;import org.eclipse.cdt.managedbuilder.core.Bui=
ldException;<br>
&nbsp;import org.eclipse.cdt.managedbuilder.core.IConfiguration;<br>
&nbsp;import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
@@ -56,6 &#43;57,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResu=
lts;<br>
&nbsp;import org.yocto.sdk.ide.YoctoSDKMessages;<br>
&nbsp;import org.yocto.sdk.ide.YoctoSDKPlugin; &nbsp;import org.yocto.sdk.i=
de.YoctoUIElement;<br>
&#43;import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;<br>
&nbsp;import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;<br>
&nbsp;import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;<br>
&nbsp;import org.yocto.sdk.ide.utils.YoctoSDKUtils;<br>
@@ -88,7 &#43;90,7 @@ public class NewYoctoCProjectTemplate extends Process=
Runner {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String isEmptyProje=
tValue =3D args[4].getSimpleValue();<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String isAutotoolsP=
rojectValue =3D args[5].getSimpleValue();<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; boolean isCProject =
=3D Boolean.valueOf(isCProjectValue).booleanValue();<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; boolean isEmptryProject =
=3D Boolean.valueOf(isEmptyProjetValue).booleanValue();<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; boolean isEmptyProje=
ct =3D<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;Boolean.valueOf(isEmptyProjetValue).booleanValu=
e();<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; boolean isAutotoolsProject =3D Boolean.valueOf(isAutotoolsProjectValue)=
.booleanValue();<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IProject project =
=3D ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);<br>
@@ -126,19 &#43;128,8 @@ public class NewYoctoCProjectTemplate extends Proc=
essRunner {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pca.setArtifactExtension(artifactExten=
sion);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; info =3D pca.createProject(monitor, CC=
orePlugin.DEFAULT_INDEXER, isCProject);<br>
<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsNewProjectNature.addAutotoolsNatur=
e(project, monitor);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; // For each IConfiguration, create a corres=
ponding Autotools Configuration<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; IConfiguration[] cfgs =3D pca.getConfigs();=
<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; for (int i =3D 0; i &lt; cfgs.length; &#43;=
&#43;i) {<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IConfiguration =
cfg =3D cfgs[i];<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfig=
urationManager.getInstance().getConfiguration(project, cfg.getName(), true)=
;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurationManager.getInstance()=
.saveConfigs(project);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; if(isEmptryProject) {<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKEmptyPr=
ojectNature.addYoctoSDKEmptyNature(project, monitor);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKProjectNature.addYoctoSDKNature(pro=
ject, monitor);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKProjectNature.configureAutotools(pr=
oject);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; addNatures(project, false, isEmptyProje=
ct, isAutotoolsProject,<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;monitor);<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal">&#43;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; info.setValid(true);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ManagedBuildManager.saveBuildInfo(proj=
ect, true);<br>
<br>
@@ -147,31 &#43;138,19 @@ public class NewYoctoCProjectTemplate extends Pro=
cessRunner {<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IWorkspace workspace =3D ResourcesPlug=
in.getWorkspace();<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; turnOffAutoBuild(workspace);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoProfileElement profileElement =3D Yoct=
oSDKUtils.getProfilesFromDefaultStore();<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; IPreferenceStore selecteProfileStore =3D Yo=
ctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile())=
;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoUIElement elem =3D YoctoSDKUtils.getEl=
emFromStore(selecteProfileStore);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; SDKCheckResults result =3D YoctoSDKChecker.=
checkYoctoSDK(elem);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; if (result !=3D SDKCheckResults.SDK_PASS){<=
br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; String strError=
Msg =3D &nbsp;YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.W=
izard);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; throw new Yocto=
GeneralException(strErrorMsg);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsNewProjectNature.addAutotoolsNatur=
e(project, monitor);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; if(isEmptryProject) {<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKEmptyPr=
ojectNature.addYoctoSDKEmptyNature(project, monitor);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
-<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKProjectNature.addYoctoSDKNature(pro=
ject, monitor);<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKProjectNature.configureAutotools(pr=
oject);<br>
-<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurationManager.getInstance()=
.saveConfigs(project);<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKChecker.checkIfGloballySelected=
YoctoProfileIsValid();<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; addNatures(project, true, isEmptyProjec=
t, isAutotoolsProject,<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&#43;monitor);<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&#43;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //restoreAutoBuild(workspace);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IDiscoveredPathManager manager =3D Mak=
eCorePlugin.getDefault().getDiscoveryManager();<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IDiscoveredPathInfo pathInfo =3D manag=
er.getDiscoveredInfo(project);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (pathInfo instanceof IPerProjectDis=
coveredPathInfo) {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPerProjectDiscoveredPat=
hInfo projectPathInfo =3D<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (IPerProje=
ctDiscoveredPathInfo) pathInfo;<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; projectPathInfo.setIncludeMap=
(new LinkedHashMap());<br>
- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; projectPathInfo.setSymbolMap(=
new LinkedHashMap());<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; projectPathInfo.setInclud=
eMap(new LinkedHashMap&lt;String, Boolean&gt;());<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; projectPathInfo.setSymbol=
Map(new LinkedHashMap&lt;String,<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;SymbolEntry&gt;());<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; m=
anager.removeDiscoveredInfo(project);<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; }<br>
@@ -200,6 &#43;179,40 @@ public class NewYoctoCProjectTemplate extends Proc=
essRunner {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return matcher.find=
();<br>
&nbsp;}<br>
<br>
&#43; &nbsp; &nbsp; &nbsp; private void addNatures(IProject project, boolea=
n projectExists, boolean isEmptyProject,<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; boolean isAutotoolsProject, IProgressMonitor monitor)<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; throws Core=
Exception, YoctoGeneralException {<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKProjectNatur=
e.addYoctoSDKNature(project, monitor);<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKChecker.chec=
kIfGloballySelectedYoctoProfileIsValid();<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoProfileElement =
profileElement =3D YoctoSDKUtils.getProfilesFromDefaultStore();<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKUtils.savePr=
ofilesToProjectPreferences(profileElement,<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&#43;project);<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPreferenceStore sel=
ecteProfileStore =3D YoctoSDKPlugin.getProfilePreferenceStore(profileElemen=
t.getSelectedProfile());<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoUIElement elem =
=3D YoctoSDKUtils.getElemFromStore(selecteProfileStore);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; YoctoSDKUtils.setEnv=
ironmentVariables(project, elem);<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (isEmptyProject) =
{<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor)=
;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (isAutotoolsProje=
ct) {<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; if(!projectExists) {<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // For each IConfiguration, create a co=
rresponding Autotools Configuration<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for (IConfiguration cfg : pca.getConfig=
s()) {<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsCo=
nfigurationManager.getInstance().getConfiguration(project, cfg.getName(), t=
rue);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AutotoolsConfigurationManager.getInstan=
ce().saveConfigs(project);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; }<br>
&#43;<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, =
monitor);<br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);<=
br>
&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
&#43; &nbsp; &nbsp; &nbsp; }<br>
&#43;<br>
&nbsp; &nbsp; &nbsp; &nbsp; protected final void turnOffAutoBuild(IWorkspac=
e workspace) throws CoreException {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IWorkspaceDescripti=
on workspaceDesc =3D workspace.getDescription();<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; savedAutoBuildingVa=
lue =3D workspaceDesc.isAutoBuilding();<br>
--<br>
1.7.9.5<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0ORSMSX104amrcor_--
