Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE8AE014DE
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 05:39:00 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id y10so414687wgg.21
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 05:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=Ufx54DQqYAUKxTe6P9FLmJ/7f9LG+7UR3qoerXiVGeY=;
	b=qMKxNRpyk93SIrP3Rq1cjkhjoAmYEqVPEZifXj2lFNyL8uHuy/D/iWekkomYACMsIT
	Wq9f0QCpr0wr3GK8w68MQrrowoMygsVeVcQQ/JtArs2NU/0dWWxKRdpOLbRKt7Ees77u
	/Q9rc3Op9I8I7A8H82Y3wXPCYCzivzJjP4r4JLLSQ289jLSGXGlFCunYePHy3RhQPKgD
	dPUJfqIJFxw4tl2iaNxnBkXTs2ns9A7CvrakMPoJPqPncNARF8RCY0p09GMWimgMIUTv
	Ut4nrBtCLf79tRjhKMCTOEemqoJYRwlTtu1S6qjbaGrUHPOvYvMkoaiBXhl7QlqvHZsL
	9Myg==
MIME-Version: 1.0
X-Received: by 10.194.93.68 with SMTP id cs4mr3670361wjb.17.1366115939438;
	Tue, 16 Apr 2013 05:38:59 -0700 (PDT)
Received: by 10.227.160.201 with HTTP; Tue, 16 Apr 2013 05:38:59 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6FDC8E87@ORSMSX104.amr.corp.intel.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
	<1365679531-4518-5-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDC8E87@ORSMSX104.amr.corp.intel.com>
Date: Tue, 16 Apr 2013 14:38:59 +0200
Message-ID: <CAEe+mUbqCLv5kBaoD4gvEmZHMCi5JUTGa-0C4hFzEeZ6zsBzFg@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
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
X-List-Received-Date: Tue, 16 Apr 2013 12:39:01 -0000
Content-Type: multipart/alternative; boundary=047d7b5d8cff4af8d004da79a70b

--047d7b5d8cff4af8d004da79a70b
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

My idea was that the YoctoSDKAutotoolsProjectNature and
the YoctoSDKProjectNature are related through the "requires-nature" tag in
plugin.xml. The YoctoSDKAutotoolsProjectNature has also an another
 "requires-nature" relation to the
org.eclipse.cdt.autotools.core.autotoolsNatureV2. If I make the
YoctoSDKAutotoolsProjectNature a subclass of the YoctoSDKProjectNature it
would suggest (according to my mind) a stronger connection to the
YoctoSDKProjectNature than to the
org.eclipse.cdt.autotools.core.autotoolsNatureV2. It would be like
YoctoSDKAutotoolsProjectNature "requires more" YoctoSDKProjectNature than
org.eclipse.cdt.autotools.core.autotoolsNatureV2...I am not sure if it is a
problem or not. So, I can make the YoctoSDKAutotoolsProjectNature a
subclass of the YoctoSDKProjectNature if you think that it is a better
design.

What do you mean by "In this way, you don't need to introduce the special
method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProjectNature
which makes the interface a little bit cleaner via encapsulation"? In order
to add the two natures to the project I think we need both static methods:
- YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
- YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project,
monitor);
Or do you mean some other solution?

Looking forward to your feedback!

Best regards,
Atanas

On Mon, Apr 15, 2013 at 9:12 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> Hi Atanas,
>
> Everything looks good for the patch series except can we make
> YoctoSDKAutotoolsProjectNature subclass of YoctoSDKProjectNature by
> extending it to better show the classes relationship.  In this way, you
> don't need to introduce the special method of addYoctoSDKAutotoolsNature in
> YoctoSDKAutotoolsProjectNature which makes the interface a little bit
> cleaner via encapsulation.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Atanas Gegov
> Sent: Thursday, April 11, 2013 4:25 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to
> YoctoSDKAutotoolsProjectNature
>
> From: Atanas Gegov <atanas.gegov@bmw-carit.de>
>
> The YoctoSDKProjectNature remains the basic nature for all Yocto projects
> in the IDE. The projects using Autotools (all templates) get the
> YoctoSDKProjectNature and additionally the YoctoSDKAutotoolsProjectNature.
> The process NewYoctoCProjectTemplate is adapted accordingly.
> ---
>  plugins/org.yocto.sdk.ide/plugin.xml               |    2 +-
>  .../natures/YoctoSDKAutotoolsProjectNature.java    |   45 +++++++++++
>  .../sdk/ide/natures/YoctoSDKProjectNature.java     |   70
> -----------------
>  .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    6 +-
>  .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   79
> ++++++++++++--------
>  5 files changed, 96 insertions(+), 106 deletions(-)
>
> diff --git a/plugins/org.yocto.sdk.ide/plugin.xml
> b/plugins/org.yocto.sdk.ide/plugin.xml
> index f21434b..35e34b4 100644
> --- a/plugins/org.yocto.sdk.ide/plugin.xml
> +++ b/plugins/org.yocto.sdk.ide/plugin.xml
> @@ -91,7 +91,7 @@
>                             type="org.eclipse.core.resources.IResource">
>                          <test
>
>  property="org.eclipse.core.resources.projectNature"
> -                              value="org.yocto.sdk.ide.YoctoSDKNature">
> +
> + value="org.yocto.sdk.ide.YoctoSDKAutotoolsNature">
>                          </test>
>                       </adapt>
>                    </iterate>
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
> index ac73878..767c005 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAu
> +++ totoolsProjectNature.java
> @@ -10,15 +10,31 @@
>
> *******************************************************************************/
>  package org.yocto.sdk.ide.natures;
>
> +import
> +org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfiguratio
> +nManager; import
> +org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
> +import org.eclipse.cdt.managedbuilder.core.IConfiguration;
> +import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
> +import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
>  import org.eclipse.core.resources.IProject;
>  import org.eclipse.core.resources.IProjectNature;
>  import org.eclipse.core.runtime.CoreException;
>  import org.eclipse.core.runtime.IProgressMonitor;
>  import org.yocto.sdk.ide.YoctoSDKPlugin;
> +import org.yocto.sdk.ide.YoctoUIElement; import
> +org.yocto.sdk.ide.utils.YoctoSDKUtils;
>
>  public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
>         public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID =
> YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";
>
> +       private static final String DEFAULT_HOST_STR = "host";
> +       private static final String DEFAULT_TARGET_STR = "target";
> +       private static final String DEFAULT_BUILD_STR = "build";
> +       private static final String DEFAULT_AUTOGEN_OPT_STR =
> "autogenOpts";
> +
> +       private static final String DEFAULT_CONFIGURE_STR = "configure";
> +       private static final String DEFAULT_AUTOGEN_STR = "autogen";
> +       private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = "
> +--with-libtool-sysroot=";
> +
>         private IProject proj;
>
>         public void configure() throws CoreException { @@ -38,4 +54,33 @@
> public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
>         public static void addYoctoSDKAutotoolsNature(IProject project,
> IProgressMonitor monitor) throws CoreException {
>                 YoctoSDKNatureUtils.addNature(project,
> YoctoSDK_AUTOTOOLS_NATURE_ID, monitor);
>         }
> +
> +       public static void configureAutotoolsOptions(IProject project) {
> +               IManagedBuildInfo info =
> ManagedBuildManager.getBuildInfo(project);
> +               IConfiguration icfg = info.getDefaultConfiguration();
> +               YoctoUIElement elem =
> YoctoSDKUtils.getElemFromProjectEnv(project);
> +               String sysroot_str = elem.getStrSysrootLoc();
> +               String id = icfg.getId();
> +               String CFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "CFLAGS");
> +               String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "CXXFLAGS");
> +               String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "CPPFLAGS");
> +               String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "LDFLAGS");
> +
> +               String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str +
> "\" CXXFLAGS=\" -g -O0 "
> +                               + CXXFLAGS_str + "\" LDFLAGS=\"" +
> LDFLAGS_str + "\" CPPFLAGS=\"" + CPPFLAGS_str + "\"";
> +               String autogen_setting = command_prefix+" autogen.sh" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> +               String configure_setting = command_prefix + " configure" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> +               IAConfiguration cfg =
> AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);
> +               String strConfigure = YoctoSDKUtils.getEnvValue(project,
> +"CONFIGURE_FLAGS");
> +
> +               cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
> +               cfg.setOption(DEFAULT_BUILD_STR,
> YoctoSDKUtils.splitString(strConfigure, "--build="));
> +               cfg.setOption(DEFAULT_HOST_STR,
> YoctoSDKUtils.splitString(strConfigure, "--host="));
> +               cfg.setOption(DEFAULT_TARGET_STR,
> YoctoSDKUtils.splitString(strConfigure, "--target="));
> +               cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
> +               cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
> +
> +
> AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
> +
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> +       }
>  }
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
> index fcb296d..51926fb 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr
> +++ ojectNature.java
> @@ -10,39 +10,15 @@
>
> *******************************************************************************/
>  package org.yocto.sdk.ide.natures;
>
> -import
> org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationManager;
> -import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;
> -import org.eclipse.cdt.managedbuilder.core.IConfiguration;
> -import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
> -import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
>  import org.eclipse.core.resources.IProject;
>  import org.eclipse.core.resources.IProjectNature;
>  import org.eclipse.core.runtime.CoreException;
>  import org.eclipse.core.runtime.IProgressMonitor;
> -import org.eclipse.jface.preference.IPreferenceStore;
> -import org.yocto.sdk.ide.YoctoGeneralException;
> -import org.yocto.sdk.ide.YoctoProfileElement;
> -import org.yocto.sdk.ide.YoctoSDKChecker;
>  import org.yocto.sdk.ide.YoctoSDKPlugin; -import
> org.yocto.sdk.ide.YoctoUIElement; -import
> org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
> -import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
> -import org.yocto.sdk.ide.utils.YoctoSDKUtils;
>
> -
> -@SuppressWarnings("restriction")
>  public class YoctoSDKProjectNature implements IProjectNature {
>         public static final  String YoctoSDK_NATURE_ID =
> YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
>
> -       private static final String DEFAULT_HOST_STR = "host";
> -       private static final String DEFAULT_TARGET_STR = "target";
> -       private static final String DEFAULT_BUILD_STR = "build";
> -       private static final String DEFAULT_AUTOGEN_OPT_STR =
> "autogenOpts";
> -
> -       private static final String DEFAULT_CONFIGURE_STR = "configure";
> -       private static final String DEFAULT_AUTOGEN_STR = "autogen";
> -       private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX = "
> --with-libtool-sysroot=";
> -
>         private IProject proj;
>
>         public void configure() throws CoreException { @@ -62,50 +38,4 @@
> public class YoctoSDKProjectNature implements IProjectNature {
>         public static void addYoctoSDKNature(IProject project,
> IProgressMonitor monitor) throws CoreException {
>                 YoctoSDKNatureUtils.addNature(project, YoctoSDK_NATURE_ID,
> monitor);
>         }
> -
> -       public static void configureAutotoolsOptions(IProject project) {
> -               IManagedBuildInfo info =
> ManagedBuildManager.getBuildInfo(project);
> -               IConfiguration icfg = info.getDefaultConfiguration();
> -               YoctoUIElement elem =
> YoctoSDKUtils.getElemFromProjectEnv(project);
> -               String sysroot_str = elem.getStrSysrootLoc();
> -               String id = icfg.getId();
> -               String CFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "CFLAGS");
> -               String CXXFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "CXXFLAGS");
> -               String CPPFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "CPPFLAGS");
> -               String LDFLAGS_str = YoctoSDKUtils.getEnvValue(project,
> "LDFLAGS");
> -
> -               String command_prefix = "CFLAGS=\" -g -O0 " + CFLAGS_str +
> "\" CXXFLAGS=\" -g -O0 "
> -               + CXXFLAGS_str + "\" LDFLAGS=\"" + LDFLAGS_str + "\"
> CPPFLAGS=\"" + CPPFLAGS_str + "\"";
> -               String autogen_setting = command_prefix+" autogen.sh" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> -               String configure_setting = command_prefix + " configure" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> -               IAConfiguration cfg =
> AutotoolsConfigurationManager.getInstance().getConfiguration(project, id);
> -               String strConfigure = YoctoSDKUtils.getEnvValue(project,
> "CONFIGURE_FLAGS");
> -
> -               cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
> -               cfg.setOption(DEFAULT_BUILD_STR,
> YoctoSDKUtils.splitString(strConfigure, "--build="));
> -               cfg.setOption(DEFAULT_HOST_STR,
> YoctoSDKUtils.splitString(strConfigure, "--host="));
> -               cfg.setOption(DEFAULT_TARGET_STR,
> YoctoSDKUtils.splitString(strConfigure, "--target="));
> -               cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
> -               cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
> -
> -
> AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg);
> -
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> -       }
> -
> -       public static void configureAutotools(IProject project) throws
> YoctoGeneralException {
> -               YoctoProfileElement profileElement =
> YoctoSDKUtils.getProfilesFromDefaultStore();
> -
> YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
> -               IPreferenceStore selecteProfileStore =
> YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
> -               YoctoUIElement elem =
> YoctoSDKUtils.getElemFromStore(selecteProfileStore);
> -               SDKCheckResults result =
> YoctoSDKChecker.checkYoctoSDK(elem);
> -               if (result != SDKCheckResults.SDK_PASS){
> -                       String strErrorMsg =
>  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
> -                       throw new YoctoGeneralException(strErrorMsg);
> -               }
> -               else
> -               {
> -                       YoctoSDKUtils.setEnvironmentVariables(project,
> elem);
> -                       configureAutotoolsOptions(project);
> -               }
> -       }
>  }
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
> index bd781b3..1e2e424 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtil
> +++ s.java
> @@ -54,8 +54,8 @@ import org.yocto.sdk.ide.YoctoProfileElement;
>  import org.yocto.sdk.ide.YoctoSDKMessages;
>  import org.yocto.sdk.ide.YoctoSDKPlugin;  import
> org.yocto.sdk.ide.YoctoUIElement;
> +import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
>  import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
> -import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
>  import org.yocto.sdk.ide.preferences.PreferenceConstants;
>
>  public class YoctoSDKUtils {
> @@ -427,7 +427,9 @@ public class YoctoSDKUtils {
>
>                 try {
>                         setEnvironmentVariables(project, elem);
> -
> YoctoSDKProjectNature.configureAutotoolsOptions(project);
> +
> if(project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID))
> {
> +
> YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
> +                       }
>                         IConsole console =
> CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
>                         console.start(project);
>                         consoleOutStream = console.getOutputStream(); diff
> --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
> index 73531e5..239cbf8 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr
> +++ ojectTemplate.java
> @@ -28,6 +28,7 @@ import org.eclipse.cdt.make.core.MakeCorePlugin;
>  import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;
>  import
> org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IDiscoveredPathInfo;
>  import
> org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IPerProjectDiscoveredPathInfo;
> +import
> +org.eclipse.cdt.make.internal.core.scannerconfig.util.SymbolEntry;
>  import org.eclipse.cdt.managedbuilder.core.BuildException;
>  import org.eclipse.cdt.managedbuilder.core.IConfiguration;
>  import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
> @@ -56,6 +57,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
>  import org.yocto.sdk.ide.YoctoSDKMessages;
>  import org.yocto.sdk.ide.YoctoSDKPlugin;  import
> org.yocto.sdk.ide.YoctoUIElement;
> +import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
>  import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
>  import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
>  import org.yocto.sdk.ide.utils.YoctoSDKUtils;
> @@ -88,7 +90,7 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>                 String isEmptyProjetValue = args[4].getSimpleValue();
>                 String isAutotoolsProjectValue = args[5].getSimpleValue();
>                 boolean isCProject =
> Boolean.valueOf(isCProjectValue).booleanValue();
> -               boolean isEmptryProject =
> Boolean.valueOf(isEmptyProjetValue).booleanValue();
> +               boolean isEmptyProject =
> +Boolean.valueOf(isEmptyProjetValue).booleanValue();
>                 boolean isAutotoolsProject =
> Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
>
>                 IProject project =
> ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
> @@ -126,19 +128,8 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>
> pca.setArtifactExtension(artifactExtension);
>                                 info = pca.createProject(monitor,
> CCorePlugin.DEFAULT_INDEXER, isCProject);
>
> -
> AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
> -                               // For each IConfiguration, create a
> corresponding Autotools Configuration
> -                               IConfiguration[] cfgs = pca.getConfigs();
> -                               for (int i = 0; i < cfgs.length; ++i) {
> -                                       IConfiguration cfg = cfgs[i];
> -
> AutotoolsConfigurationManager.getInstance().getConfiguration(project,
> cfg.getName(), true);
> -                               }
> -
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> -                               if(isEmptryProject) {
> -
> YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
> -                               }
> -
> YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
> -
> YoctoSDKProjectNature.configureAutotools(project);
> +                               addNatures(project, false, isEmptyProject,
> isAutotoolsProject,
> +monitor);
> +
>                                 info.setValid(true);
>                                 ManagedBuildManager.saveBuildInfo(project,
> true);
>
> @@ -147,31 +138,19 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>
>                                 IWorkspace workspace =
> ResourcesPlugin.getWorkspace();
>                                 turnOffAutoBuild(workspace);
> -                               YoctoProfileElement profileElement =
> YoctoSDKUtils.getProfilesFromDefaultStore();
> -                               IPreferenceStore selecteProfileStore =
> YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
> -                               YoctoUIElement elem =
> YoctoSDKUtils.getElemFromStore(selecteProfileStore);
> -                               SDKCheckResults result =
> YoctoSDKChecker.checkYoctoSDK(elem);
> -                               if (result != SDKCheckResults.SDK_PASS){
> -                                       String strErrorMsg =
>  YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);
> -                                       throw new
> YoctoGeneralException(strErrorMsg);
> -                               }
> -
> AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
> -                               if(isEmptryProject) {
> -
> YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
> -                               }
> -
> -
> YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
> -
> YoctoSDKProjectNature.configureAutotools(project);
> -
> -
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> +
> +
> YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
> +
> +                               addNatures(project, true, isEmptyProject,
> isAutotoolsProject,
> +monitor);
> +
>                                 //restoreAutoBuild(workspace);
>                                 IDiscoveredPathManager manager =
> MakeCorePlugin.getDefault().getDiscoveryManager();
>                                 IDiscoveredPathInfo pathInfo =
> manager.getDiscoveredInfo(project);
>                                 if (pathInfo instanceof
> IPerProjectDiscoveredPathInfo) {
>                                     IPerProjectDiscoveredPathInfo
> projectPathInfo =
>                                         (IPerProjectDiscoveredPathInfo)
> pathInfo;
> -                                   projectPathInfo.setIncludeMap(new
> LinkedHashMap());
> -                                   projectPathInfo.setSymbolMap(new
> LinkedHashMap());
> +                                   projectPathInfo.setIncludeMap(new
> LinkedHashMap<String, Boolean>());
> +                                   projectPathInfo.setSymbolMap(new
> LinkedHashMap<String,
> +SymbolEntry>());
>                                     manager.removeDiscoveredInfo(project);
>                                 }
>                         }
> @@ -200,6 +179,40 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>                 return matcher.find();
>  }
>
> +       private void addNatures(IProject project, boolean projectExists,
> boolean isEmptyProject,
> +                       boolean isAutotoolsProject, IProgressMonitor
> monitor)
> +                                       throws CoreException,
> YoctoGeneralException {
> +               YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);
> +
> +
> YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
> +
> +               YoctoProfileElement profileElement =
> YoctoSDKUtils.getProfilesFromDefaultStore();
> +
> YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement,
> +project);
> +
> +               IPreferenceStore selecteProfileStore =
> YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
> +               YoctoUIElement elem =
> YoctoSDKUtils.getElemFromStore(selecteProfileStore);
> +               YoctoSDKUtils.setEnvironmentVariables(project, elem);
> +
> +               if (isEmptyProject) {
> +
> YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);
> +               }
> +
> +               if (isAutotoolsProject) {
> +
> AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
> +
> +                       if(!projectExists) {
> +                               // For each IConfiguration, create a
> corresponding Autotools Configuration
> +                               for (IConfiguration cfg :
> pca.getConfigs()) {
> +
> AutotoolsConfigurationManager.getInstance().getConfiguration(project,
> cfg.getName(), true);
> +                               }
> +
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> +                       }
> +
> +
> YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, monitor);
> +
> YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
> +               }
> +       }
> +
>         protected final void turnOffAutoBuild(IWorkspace workspace) throws
> CoreException {
>                 IWorkspaceDescription workspaceDesc =
> workspace.getDescription();
>                 savedAutoBuildingValue = workspaceDesc.isAutoBuilding();
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b5d8cff4af8d004da79a70b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jessica,<div><br></div><div>My idea was that the=A0YoctoSDKAutotoolsProj=
ectNature and the=A0YoctoSDKProjectNature are related through the &quot;req=
uires-nature&quot; tag in plugin.xml. The=A0YoctoSDKAutotoolsProjectNature =
has also an another =A0&quot;requires-nature&quot; relation to the org.ecli=
pse.cdt.autotools.core.autotoolsNatureV2. If I make the YoctoSDKAutotoolsPr=
ojectNature a subclass of the YoctoSDKProjectNature it would suggest (accor=
ding to my mind) a stronger connection to the YoctoSDKProjectNature than to=
 the org.eclipse.cdt.autotools.core.autotoolsNatureV2. It would be like Yoc=
toSDKAutotoolsProjectNature &quot;requires more&quot; YoctoSDKProjectNature=
 than org.eclipse.cdt.autotools.core.autotoolsNatureV2...I am not sure if i=
t is a problem or not. So, I can make the=A0YoctoSDKAutotoolsProjectNature =
a subclass of the=A0YoctoSDKProjectNature if you think that it is a better =
design.</div>
<div><br>What do you mean by &quot;In this way, you don&#39;t need to intro=
duce the special method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsP=
rojectNature which makes the interface a little bit cleaner via encapsulati=
on&quot;? In order to add the two natures to the project I think we need bo=
th static methods:<br>
-=A0YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);</div><div>-=
=A0YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, monit=
or);</div><div>Or do you mean some other solution?</div><div><br>Looking fo=
rward to your feedback!<br>
<br>Best regards,<br>Atanas<br><br><div class=3D"gmail_quote">On Mon, Apr 1=
5, 2013 at 9:12 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:=
jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;<=
/span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Atanas,<br>
<br>
Everything looks good for the patch series except can we make YoctoSDKAutot=
oolsProjectNature subclass of YoctoSDKProjectNature by extending it to bett=
er show the classes relationship. =A0In this way, you don&#39;t need to int=
roduce the special method of addYoctoSDKAutotoolsNature in YoctoSDKAutotool=
sProjectNature which makes the interface a little bit cleaner via encapsula=
tion.<br>

<br>
Thanks,<br>
Jessica<br>
<div><div class=3D"h5"><br>
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
 NewYoctoCProjectTemplate is adapted accordingly.<br>

---<br>
=A0plugins/org.yocto.sdk.ide/plugin.xml =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A02 +-<br>
=A0.../natures/YoctoSDKAutotoolsProjectNature.java =A0 =A0| =A0 45 ++++++++=
+++<br>
=A0.../sdk/ide/natures/YoctoSDKProjectNature.java =A0 =A0 | =A0 70 --------=
---------<br>
=A0.../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | =A0 =A06 +-<br>
=A0.../sdk/ide/wizard/NewYoctoCProjectTemplate.java =A0 | =A0 79 ++++++++++=
++--------<br>
=A05 files changed, 96 insertions(+), 106 deletions(-)<br>
<br>
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.i=
de/plugin.xml<br>
index f21434b..35e34b4 100644<br>
--- a/plugins/org.yocto.sdk.ide/plugin.xml<br>
+++ b/plugins/org.yocto.sdk.ide/plugin.xml<br>
@@ -91,7 +91,7 @@<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 type=3D&quot;org.ec=
lipse.core.resources.IResource&quot;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;test<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0property=3D&=
quot;org.eclipse.core.resources.projectNature&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0value=3D&quot;=
org.yocto.sdk.ide.YoctoSDKNature&quot;&gt;<br>
+<br>
+ value=3D&quot;org.yocto.sdk.ide.YoctoSDKAutotoolsNature&quot;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;/test&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/adapt&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;/iterate&gt;<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk=
/ide/natures/YoctoSDKAutotoolsProjectNature.java<br>
index ac73878..767c005 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutot=
oolsProjectNature.java<br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAu<br=
>
</div></div>+++ totoolsProjectNature.java<br>
<div class=3D"im">@@ -10,15 +10,31 @@<br>
=A0 ***********************************************************************=
********/<br>
=A0package org.yocto.sdk.ide.natures;<br>
<br>
+import<br>
</div>+org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigura=
tio<br>
+nManager; import<br>
+org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;<br>
<div class=3D"im">+import org.eclipse.cdt.managedbuilder.core.IConfiguratio=
n;<br>
+import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
+import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;<br>
=A0import org.eclipse.core.resources.IProject;<br>
=A0import org.eclipse.core.resources.IProjectNature;<br>
=A0import org.eclipse.core.runtime.CoreException;<br>
=A0import org.eclipse.core.runtime.IProgressMonitor;<br>
=A0import org.yocto.sdk.ide.YoctoSDKPlugin;<br>
</div>+import org.yocto.sdk.ide.YoctoUIElement; import<br>
+org.yocto.sdk.ide.utils.YoctoSDKUtils;<br>
<div class=3D"im"><br>
=A0public class YoctoSDKAutotoolsProjectNature implements IProjectNature {<=
br>
=A0 =A0 =A0 =A0 public static final =A0String YoctoSDK_AUTOTOOLS_NATURE_ID =
=3D YoctoSDKPlugin.getUniqueIdentifier() + &quot;.YoctoSDKAutotoolsNature&q=
uot;;<br>
<br>
+ =A0 =A0 =A0 private static final String DEFAULT_HOST_STR =3D &quot;host&q=
uot;;<br>
+ =A0 =A0 =A0 private static final String DEFAULT_TARGET_STR =3D &quot;targ=
et&quot;;<br>
+ =A0 =A0 =A0 private static final String DEFAULT_BUILD_STR =3D &quot;build=
&quot;;<br>
+ =A0 =A0 =A0 private static final String DEFAULT_AUTOGEN_OPT_STR =3D &quot=
;autogenOpts&quot;;<br>
+<br>
+ =A0 =A0 =A0 private static final String DEFAULT_CONFIGURE_STR =3D &quot;c=
onfigure&quot;;<br>
+ =A0 =A0 =A0 private static final String DEFAULT_AUTOGEN_STR =3D &quot;aut=
ogen&quot;;<br>
+ =A0 =A0 =A0 private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =
=3D &quot;<br>
</div>+--with-libtool-sysroot=3D&quot;;<br>
<div class=3D"im">+<br>
=A0 =A0 =A0 =A0 private IProject proj;<br>
<br>
=A0 =A0 =A0 =A0 public void configure() throws CoreException { @@ -38,4 +54=
,33 @@ public class YoctoSDKAutotoolsProjectNature implements IProjectNatur=
e {<br>
=A0 =A0 =A0 =A0 public static void addYoctoSDKAutotoolsNature(IProject proj=
ect, IProgressMonitor monitor) throws CoreException {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKNatureUtils.addNature(project, Yoct=
oSDK_AUTOTOOLS_NATURE_ID, monitor);<br>
=A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 public static void configureAutotoolsOptions(IProject project=
) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 IManagedBuildInfo info =3D ManagedBuildManage=
r.getBuildInfo(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 IConfiguration icfg =3D info.getDefaultConfig=
uration();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElement elem =3D YoctoSDKUtils.getElem=
FromProjectEnv(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sysroot_str =3D elem.getStrSysrootLoc(=
);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String id =3D icfg.getId();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String CFLAGS_str =3D YoctoSDKUtils.getEnvVal=
ue(project, &quot;CFLAGS&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String CXXFLAGS_str =3D YoctoSDKUtils.getEnvV=
alue(project, &quot;CXXFLAGS&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String CPPFLAGS_str =3D YoctoSDKUtils.getEnvV=
alue(project, &quot;CPPFLAGS&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String LDFLAGS_str =3D YoctoSDKUtils.getEnvVa=
lue(project, &quot;LDFLAGS&quot;);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String command_prefix =3D &quot;CFLAGS=3D\&qu=
ot; -g -O0 &quot; + CFLAGS_str + &quot;\&quot; CXXFLAGS=3D\&quot; -g -O0 &q=
uot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 + CXXFLAGS_st=
r + &quot;\&quot; LDFLAGS=3D\&quot;&quot; + LDFLAGS_str + &quot;\&quot; CPP=
FLAGS=3D\&quot;&quot; + CPPFLAGS_str + &quot;\&quot;&quot;;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String autogen_setting =3D command_prefix+&qu=
ot; autogen.sh&quot; + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String configure_setting =3D command_prefix +=
 &quot; configure&quot; + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 IAConfiguration cfg =3D AutotoolsConfiguratio=
nManager.getInstance().getConfiguration(project, id);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 String strConfigure =3D YoctoSDKUtils.getEnvV=
alue(project,<br>
</div>+&quot;CONFIGURE_FLAGS&quot;);<br>
<div class=3D"im">+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_CONFIGURE_STR, configur=
e_setting);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtil=
s.splitString(strConfigure, &quot;--build=3D&quot;));<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils=
.splitString(strConfigure, &quot;--host=3D&quot;));<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUti=
ls.splitString(strConfigure, &quot;--target=3D&quot;));<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_se=
tting);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strCon=
figure);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConfigurationManager.getInstance().a=
ddConfiguration(project, cfg);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConfigurationManager.getInstance().s=
aveConfigs(project);<br>
+ =A0 =A0 =A0 }<br>
=A0}<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoS=
DKProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natu=
res/YoctoSDKProjectNature.java<br>
index fcb296d..51926fb 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProje=
ctNature.java<br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr<br=
>
</div>+++ ojectNature.java<br>
<div><div class=3D"h5">@@ -10,39 +10,15 @@<br>
=A0 ***********************************************************************=
********/<br>
=A0package org.yocto.sdk.ide.natures;<br>
<br>
-import org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigur=
ationManager;<br>
-import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;<=
br>
-import org.eclipse.cdt.managedbuilder.core.IConfiguration;<br>
-import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
-import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;<br>
=A0import org.eclipse.core.resources.IProject;<br>
=A0import org.eclipse.core.resources.IProjectNature;<br>
=A0import org.eclipse.core.runtime.CoreException;<br>
=A0import org.eclipse.core.runtime.IProgressMonitor;<br>
-import org.eclipse.jface.preference.IPreferenceStore;<br>
-import org.yocto.sdk.ide.YoctoGeneralException;<br>
-import org.yocto.sdk.ide.YoctoProfileElement;<br>
-import org.yocto.sdk.ide.YoctoSDKChecker;<br>
=A0import org.yocto.sdk.ide.YoctoSDKPlugin; -import org.yocto.sdk.ide.Yocto=
UIElement; -import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;<b=
r>
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;<br>
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;<br>
<br>
-<br>
-@SuppressWarnings(&quot;restriction&quot;)<br>
=A0public class YoctoSDKProjectNature implements IProjectNature {<br>
=A0 =A0 =A0 =A0 public static final =A0String YoctoSDK_NATURE_ID =3D YoctoS=
DKPlugin.getUniqueIdentifier() + &quot;.YoctoSDKNature&quot;;<br>
<br>
- =A0 =A0 =A0 private static final String DEFAULT_HOST_STR =3D &quot;host&q=
uot;;<br>
- =A0 =A0 =A0 private static final String DEFAULT_TARGET_STR =3D &quot;targ=
et&quot;;<br>
- =A0 =A0 =A0 private static final String DEFAULT_BUILD_STR =3D &quot;build=
&quot;;<br>
- =A0 =A0 =A0 private static final String DEFAULT_AUTOGEN_OPT_STR =3D &quot=
;autogenOpts&quot;;<br>
-<br>
- =A0 =A0 =A0 private static final String DEFAULT_CONFIGURE_STR =3D &quot;c=
onfigure&quot;;<br>
- =A0 =A0 =A0 private static final String DEFAULT_AUTOGEN_STR =3D &quot;aut=
ogen&quot;;<br>
- =A0 =A0 =A0 private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =
=3D &quot; --with-libtool-sysroot=3D&quot;;<br>
-<br>
=A0 =A0 =A0 =A0 private IProject proj;<br>
<br>
=A0 =A0 =A0 =A0 public void configure() throws CoreException { @@ -62,50 +3=
8,4 @@ public class YoctoSDKProjectNature implements IProjectNature {<br>
=A0 =A0 =A0 =A0 public static void addYoctoSDKNature(IProject project, IPro=
gressMonitor monitor) throws CoreException {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKNatureUtils.addNature(project, Yoct=
oSDK_NATURE_ID, monitor);<br>
=A0 =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 public static void configureAutotoolsOptions(IProject project=
) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 IManagedBuildInfo info =3D ManagedBuildManage=
r.getBuildInfo(project);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 IConfiguration icfg =3D info.getDefaultConfig=
uration();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElement elem =3D YoctoSDKUtils.getElem=
FromProjectEnv(project);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String sysroot_str =3D elem.getStrSysrootLoc(=
);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String id =3D icfg.getId();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String CFLAGS_str =3D YoctoSDKUtils.getEnvVal=
ue(project, &quot;CFLAGS&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String CXXFLAGS_str =3D YoctoSDKUtils.getEnvV=
alue(project, &quot;CXXFLAGS&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String CPPFLAGS_str =3D YoctoSDKUtils.getEnvV=
alue(project, &quot;CPPFLAGS&quot;);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String LDFLAGS_str =3D YoctoSDKUtils.getEnvVa=
lue(project, &quot;LDFLAGS&quot;);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String command_prefix =3D &quot;CFLAGS=3D\&qu=
ot; -g -O0 &quot; + CFLAGS_str + &quot;\&quot; CXXFLAGS=3D\&quot; -g -O0 &q=
uot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 + CXXFLAGS_str + &quot;\&quot; LDFLAGS=3D\&qu=
ot;&quot; + LDFLAGS_str + &quot;\&quot; CPPFLAGS=3D\&quot;&quot; + CPPFLAGS=
_str + &quot;\&quot;&quot;;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String autogen_setting =3D command_prefix+&qu=
ot; autogen.sh&quot; + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String configure_setting =3D command_prefix +=
 &quot; configure&quot; + DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 IAConfiguration cfg =3D AutotoolsConfiguratio=
nManager.getInstance().getConfiguration(project, id);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 String strConfigure =3D YoctoSDKUtils.getEnvV=
alue(project, &quot;CONFIGURE_FLAGS&quot;);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_CONFIGURE_STR, configur=
e_setting);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_BUILD_STR, YoctoSDKUtil=
s.splitString(strConfigure, &quot;--build=3D&quot;));<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_HOST_STR, YoctoSDKUtils=
.splitString(strConfigure, &quot;--host=3D&quot;));<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_TARGET_STR, YoctoSDKUti=
ls.splitString(strConfigure, &quot;--target=3D&quot;));<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_se=
tting);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strCon=
figure);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConfigurationManager.getInstance().a=
ddConfiguration(project, cfg);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConfigurationManager.getInstance().s=
aveConfigs(project);<br>
- =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 public static void configureAutotools(IProject project) throw=
s YoctoGeneralException {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoProfileElement profileElement =3D YoctoS=
DKUtils.getProfilesFromDefaultStore();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.saveProfilesToProjectPreference=
s(profileElement, project);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 IPreferenceStore selecteProfileStore =3D Yoct=
oSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());<=
br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElement elem =3D YoctoSDKUtils.getElem=
FromStore(selecteProfileStore);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 SDKCheckResults result =3D YoctoSDKChecker.ch=
eckYoctoSDK(elem);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (result !=3D SDKCheckResults.SDK_PASS){<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String strErrorMsg =3D =A0Yoc=
toSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Wizard);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 throw new YoctoGeneralExcepti=
on(strErrorMsg);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 else<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.setEnvironmentV=
ariables(project, elem);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 configureAutotoolsOptions(pro=
ject);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 }<br>
=A0}<br>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java<br>
index bd781b3..1e2e424 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.j=
ava<br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtil<br=
>
</div></div>+++ s.java<br>
<div class=3D"im">@@ -54,8 +54,8 @@ import org.yocto.sdk.ide.YoctoProfileEl=
ement;<br>
=A0import org.yocto.sdk.ide.YoctoSDKMessages;<br>
=A0import org.yocto.sdk.ide.YoctoSDKPlugin; =A0import org.yocto.sdk.ide.Yoc=
toUIElement;<br>
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;<br>
=A0import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;<br>
-import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;<br>
=A0import org.yocto.sdk.ide.preferences.PreferenceConstants;<br>
<br>
=A0public class YoctoSDKUtils {<br>
@@ -427,7 +427,9 @@ public class YoctoSDKUtils {<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 try {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 setEnvironmentVariables(pro=
ject, elem);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProjectNature.configu=
reAutotoolsOptions(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(project.hasNature(YoctoSDK=
AutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NATURE_ID)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKAutot=
oolsProjectNature.configureAutotoolsOptions(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IConsole console =3D CCoreP=
lugin.getDefault().getConsole(&quot;org.yocto.sdk.ide.YoctoConsole&quot;);<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 console.start(project);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 consoleOutStream =3D consol=
e.getOutputStream(); diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/s=
dk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src=
/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java<br>

index 73531e5..239cbf8 100644<br>
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProje=
ctTemplate.java<br>
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr<br=
>
</div>+++ ojectTemplate.java<br>
<div class=3D"im">@@ -28,6 +28,7 @@ import org.eclipse.cdt.make.core.MakeCo=
rePlugin;<br>
=A0import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;<b=
r>
=A0import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.ID=
iscoveredPathInfo;<br>
=A0import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IP=
erProjectDiscoveredPathInfo;<br>
+import<br>
</div>+org.eclipse.cdt.make.internal.core.scannerconfig.util.SymbolEntry;<b=
r>
<div class=3D"im">=A0import org.eclipse.cdt.managedbuilder.core.BuildExcept=
ion;<br>
=A0import org.eclipse.cdt.managedbuilder.core.IConfiguration;<br>
=A0import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
@@ -56,6 +57,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;=
<br>
=A0import org.yocto.sdk.ide.YoctoSDKMessages;<br>
=A0import org.yocto.sdk.ide.YoctoSDKPlugin; =A0import org.yocto.sdk.ide.Yoc=
toUIElement;<br>
+import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;<br>
=A0import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;<br>
=A0import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;<br>
=A0import org.yocto.sdk.ide.utils.YoctoSDKUtils;<br>
@@ -88,7 +90,7 @@ public class NewYoctoCProjectTemplate extends ProcessRunn=
er {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String isEmptyProjetValue =3D args[4].getSi=
mpleValue();<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 String isAutotoolsProjectValue =3D args[5].=
getSimpleValue();<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isCProject =3D Boolean.valueOf(isCP=
rojectValue).booleanValue();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isEmptryProject =3D Boolean.valueOf(i=
sEmptyProjetValue).booleanValue();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isEmptyProject =3D<br>
</div>+Boolean.valueOf(isEmptyProjetValue).booleanValue();<br>
<div class=3D"im">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isAutotoolsProjec=
t =3D Boolean.valueOf(isAutotoolsProjectValue).booleanValue();<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IProject project =3D ResourcesPlugin.getWor=
kspace().getRoot().getProject(projectName);<br>
@@ -126,19 +128,8 @@ public class NewYoctoCProjectTemplate extends ProcessR=
unner {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 pca.setArti=
factExtension(artifactExtension);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info =3D pc=
a.createProject(monitor, CCorePlugin.DEFAULT_INDEXER, isCProject);<br>
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsNewP=
rojectNature.addAutotoolsNature(project, monitor);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 // For each I=
Configuration, create a corresponding Autotools Configuration<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IConfiguratio=
n[] cfgs =3D pca.getConfigs();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for (int i =
=3D 0; i &lt; cfgs.length; ++i) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 IConfiguration cfg =3D cfgs[i];<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 AutotoolsConfigurationManager.getInstance().getConfiguration(project, c=
fg.getName(), true);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConf=
igurationManager.getInstance().saveConfigs(project);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(isEmptryPr=
oject) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProje=
ctNature.addYoctoSDKNature(project, monitor);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProje=
ctNature.configureAutotools(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 addNatures(pr=
oject, false, isEmptyProject, isAutotoolsProject,<br>
</div>+monitor);<br>
<div><div class=3D"h5">+<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info.setVal=
id(true);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ManagedBuil=
dManager.saveBuildInfo(project, true);<br>
<br>
@@ -147,31 +138,19 @@ public class NewYoctoCProjectTemplate extends Process=
Runner {<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IWorkspace =
workspace =3D ResourcesPlugin.getWorkspace();<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 turnOffAuto=
Build(workspace);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoProfileE=
lement profileElement =3D YoctoSDKUtils.getProfilesFromDefaultStore();<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IPreferenceSt=
ore selecteProfileStore =3D YoctoSDKPlugin.getProfilePreferenceStore(profil=
eElement.getSelectedProfile());<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElemen=
t elem =3D YoctoSDKUtils.getElemFromStore(selecteProfileStore);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 SDKCheckResul=
ts result =3D YoctoSDKChecker.checkYoctoSDK(elem);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (result !=
=3D SDKCheckResults.SDK_PASS){<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 String strErrorMsg =3D =A0YoctoSDKChecker.getErrorMessage(result, SDKCh=
eckRequestFrom.Wizard);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 throw new YoctoGeneralException(strErrorMsg);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsNewP=
rojectNature.addAutotoolsNature(project, monitor);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(isEmptryPr=
oject) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 YoctoSDKEmptyProjectNature.addYoctoSDKEmptyNature(project, monitor);<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProje=
ctNature.addYoctoSDKNature(project, monitor);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProje=
ctNature.configureAutotools(project);<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConf=
igurationManager.getInstance().saveConfigs(project);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKCheck=
er.checkIfGloballySelectedYoctoProfileIsValid();<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 addNatures(pr=
oject, true, isEmptyProject, isAutotoolsProject,<br>
</div></div>+monitor);<br>
<div class=3D"im">+<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 //restoreAu=
toBuild(workspace);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IDiscovered=
PathManager manager =3D MakeCorePlugin.getDefault().getDiscoveryManager();<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IDiscovered=
PathInfo pathInfo =3D manager.getDiscoveredInfo(project);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (pathInf=
o instanceof IPerProjectDiscoveredPathInfo) {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IPe=
rProjectDiscoveredPathInfo projectPathInfo =3D<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 (IPerProjectDiscoveredPathInfo) pathInfo;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 proje=
ctPathInfo.setIncludeMap(new LinkedHashMap());<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 proje=
ctPathInfo.setSymbolMap(new LinkedHashMap());<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 proje=
ctPathInfo.setIncludeMap(new LinkedHashMap&lt;String, Boolean&gt;());<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 proje=
ctPathInfo.setSymbolMap(new LinkedHashMap&lt;String,<br>
</div>+SymbolEntry&gt;());<br>
<div class=3D"im">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 manager.removeDiscoveredInfo(project);<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
@@ -200,6 +179,40 @@ public class NewYoctoCProjectTemplate extends ProcessR=
unner {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return matcher.find();<br>
=A0}<br>
<br>
+ =A0 =A0 =A0 private void addNatures(IProject project, boolean projectExis=
ts, boolean isEmptyProject,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isAutotoolsProject, I=
ProgressMonitor monitor)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 throws CoreException, YoctoGeneralException {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKProjectNature.addYoctoSDKNature(proje=
ct, monitor);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKChecker.checkIfGloballySelectedYoctoP=
rofileIsValid();<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoProfileElement profileElement =3D YoctoS=
DKUtils.getProfilesFromDefaultStore();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.saveProfilesToProjectPreference=
s(profileElement,<br>
</div>+project);<br>
<div><div class=3D"h5">+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 IPreferenceStore selecteProfileStore =3D Yoct=
oSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());<=
br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoUIElement elem =3D YoctoSDKUtils.getElem=
FromStore(selecteProfileStore);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKUtils.setEnvironmentVariables(project=
, elem);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (isEmptyProject) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKEmptyProjectNature.ad=
dYoctoSDKEmptyNature(project, monitor);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (isAutotoolsProject) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsNewProjectNature.add=
AutotoolsNature(project, monitor);<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if(!projectExists) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 // For each I=
Configuration, create a corresponding Autotools Configuration<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for (IConfigu=
ration cfg : pca.getConfigs()) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 AutotoolsConfigurationManager.getInstance().getConfiguration(project, c=
fg.getName(), true);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 AutotoolsConf=
igurationManager.getInstance().saveConfigs(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKAutotoolsProjectNatur=
e.addYoctoSDKAutotoolsNature(project, monitor);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 YoctoSDKAutotoolsProjectNatur=
e.configureAutotoolsOptions(project);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
=A0 =A0 =A0 =A0 protected final void turnOffAutoBuild(IWorkspace workspace)=
 throws CoreException {<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IWorkspaceDescription workspaceDesc =3D wor=
kspace.getDescription();<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 savedAutoBuildingValue =3D workspaceDesc.is=
AutoBuilding();<br>
--<br>
1.7.9.5<br>
<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--047d7b5d8cff4af8d004da79a70b--
