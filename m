Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3080E014B2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 05:03:08 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id a12so1484266wgh.11
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 05:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=KpgdsXenuO2zExOD9U54K/HtXkXgb4nPNnYAUdqOYY0=;
	b=G13hx9s7SyMAPD/u9fpgbzf/A2LwwhihaAEetp3T0w6KM+8rvfD61IWO9G7xlmkFep
	GCV8AC1kXf+NDbSkLTM1hmlnP0I3asqZWUb1dzVylwx2F1VHyLoiMT9deFnGRyz0qvLe
	DGjvISWZCF5WTiBI7qkVpGD6gle4U5/UXvlAQJlu7uqq7EDTiWRkcwp6nPFEfyRJ+f/O
	whyCGJEP/w4cbXmGuAelpk6aD/wy8f2rLtXqdaggsKu8MiNB/ZcTaeuAKLlWMyjuvkZo
	LDXU7zHvIVGtnA2r751kguAUWOh7j58lvwBseixkX5/M9AgcgiUThb2n7tEB2/NArV/b
	u3OA==
MIME-Version: 1.0
X-Received: by 10.194.93.68 with SMTP id cs4mr10877839wjb.17.1366200187570;
	Wed, 17 Apr 2013 05:03:07 -0700 (PDT)
Received: by 10.227.160.201 with HTTP; Wed, 17 Apr 2013 05:03:07 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0@ORSMSX104.amr.corp.intel.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
	<1365679531-4518-5-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDC8E87@ORSMSX104.amr.corp.intel.com>
	<CAEe+mUbqCLv5kBaoD4gvEmZHMCi5JUTGa-0C4hFzEeZ6zsBzFg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDC9BE0@ORSMSX104.amr.corp.intel.com>
Date: Wed, 17 Apr 2013 14:03:07 +0200
Message-ID: <CAEe+mUbRrZ2gfXNsHmgp42DL83+nJ7dYiVdkhvvcY+w1M1FpSQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 17 Apr 2013 12:03:09 -0000
Content-Type: multipart/alternative; boundary=047d7b5d8cffdf4dee04da8d44e5

--047d7b5d8cffdf4dee04da8d44e5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

Thanks for the feedback. I got your point and it seems to be the better
solution. We can indeed avoid some duplications in the code.

I will give it a try and resend the patches.

Cheers,
Atanas


On Wed, Apr 17, 2013 at 7:40 AM, Zhang, Jessica <jessica.zhang@intel.com>wr=
ote:

>  Hi Atanas,****
>
> ** **
>
> I ask for building the class hierarch is mainly from the Java side class
> design point of view and I see your point of the relationship considerati=
on
> from the eclipse plug-in side.  Just purely from the class name and the
> implementation, it=92s obviously YoctoSDKAutotoolsProjectNature has a clo=
ser
> relationship to YoctoSDKProjectNature whereas the requirements for
> autotoolsNatureV2 is less obvious.****
>
> ** **
>
> My comments regarding eliminate addYoctoSDKAutotoolsNature, but instead
> just make it the same as addYoctoSDKNature with same signature.  But the
> implementation of them will be difference via the NATURE_ID value.  But
> this makes more sense if we make AutotoolsProjectNature subclass
> ProjectNature, if there=92s no such relationship between the two classes,
> with separate method name as in your patch is just fine.****
>
> ** **
>
> Thoughts?****
>
> ** **
>
> Jessica    ****
>
> ** **
>
> *From:* Atanas Gegov [mailto:atanas.gegov.oss@gmail.com]
> *Sent:* Tuesday, April 16, 2013 5:39 AM
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to
> YoctoSDKAutotoolsProjectNature****
>
> ** **
>
> Hi Jessica,****
>
> ** **
>
> My idea was that the YoctoSDKAutotoolsProjectNature and
> the YoctoSDKProjectNature are related through the "requires-nature" tag i=
n
> plugin.xml. The YoctoSDKAutotoolsProjectNature has also an another
>  "requires-nature" relation to the
> org.eclipse.cdt.autotools.core.autotoolsNatureV2. If I make the
> YoctoSDKAutotoolsProjectNature a subclass of the YoctoSDKProjectNature it
> would suggest (according to my mind) a stronger connection to the
> YoctoSDKProjectNature than to the
> org.eclipse.cdt.autotools.core.autotoolsNatureV2. It would be like
> YoctoSDKAutotoolsProjectNature "requires more" YoctoSDKProjectNature than
> org.eclipse.cdt.autotools.core.autotoolsNatureV2...I am not sure if it is=
 a
> problem or not. So, I can make the YoctoSDKAutotoolsProjectNature a
> subclass of the YoctoSDKProjectNature if you think that it is a better
> design.****
>
>
> What do you mean by "In this way, you don't need to introduce the special
> method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProjectNature
> which makes the interface a little bit cleaner via encapsulation"? In ord=
er
> to add the two natures to the project I think we need both static methods=
:
> - YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);****
>
> - YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project,
> monitor);****
>
> Or do you mean some other solution?****
>
>
> Looking forward to your feedback!
>
> Best regards,
> Atanas****
>
> On Mon, Apr 15, 2013 at 9:12 PM, Zhang, Jessica <jessica.zhang@intel.com>
> wrote:****
>
> Hi Atanas,
>
> Everything looks good for the patch series except can we make
> YoctoSDKAutotoolsProjectNature subclass of YoctoSDKProjectNature by
> extending it to better show the classes relationship.  In this way, you
> don't need to introduce the special method of addYoctoSDKAutotoolsNature =
in
> YoctoSDKAutotoolsProjectNature which makes the interface a little bit
> cleaner via encapsulation.
>
> Thanks,
> Jessica****
>
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
> YoctoSDKProjectNature and additionally the YoctoSDKAutotoolsProjectNature=
.
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
>                             type=3D"org.eclipse.core.resources.IResource"=
>
>                          <test
>
>  property=3D"org.eclipse.core.resources.projectNature"
> -                              value=3D"org.yocto.sdk.ide.YoctoSDKNature"=
>
> +
> + value=3D"org.yocto.sdk.ide.YoctoSDKAutotoolsNature">
>                          </test>
>                       </adapt>
>                    </iterate>
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoo=
lsProjectNature.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoo=
lsProjectNature.java
> index ac73878..767c005 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoo=
lsProjectNature.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAu*=
*
> **
>
> +++ totoolsProjectNature.java****
>
> @@ -10,15 +10,31 @@
>
> *************************************************************************=
******/
>  package org.yocto.sdk.ide.natures;
>
> +import****
>
> +org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfiguratio
> +nManager; import
> +org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;****
>
> +import org.eclipse.cdt.managedbuilder.core.IConfiguration;
> +import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
> +import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
>  import org.eclipse.core.resources.IProject;
>  import org.eclipse.core.resources.IProjectNature;
>  import org.eclipse.core.runtime.CoreException;
>  import org.eclipse.core.runtime.IProgressMonitor;
>  import org.yocto.sdk.ide.YoctoSDKPlugin;****
>
> +import org.yocto.sdk.ide.YoctoUIElement; import
> +org.yocto.sdk.ide.utils.YoctoSDKUtils;****
>
>
>  public class YoctoSDKAutotoolsProjectNature implements IProjectNature {
>         public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID =3D
> YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";
>
> +       private static final String DEFAULT_HOST_STR =3D "host";
> +       private static final String DEFAULT_TARGET_STR =3D "target";
> +       private static final String DEFAULT_BUILD_STR =3D "build";
> +       private static final String DEFAULT_AUTOGEN_OPT_STR =3D
> "autogenOpts";
> +
> +       private static final String DEFAULT_CONFIGURE_STR =3D "configure"=
;
> +       private static final String DEFAULT_AUTOGEN_STR =3D "autogen";
> +       private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =3D "*=
***
>
> +--with-libtool-sysroot=3D";****
>
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
> +               IManagedBuildInfo info =3D
> ManagedBuildManager.getBuildInfo(project);
> +               IConfiguration icfg =3D info.getDefaultConfiguration();
> +               YoctoUIElement elem =3D
> YoctoSDKUtils.getElemFromProjectEnv(project);
> +               String sysroot_str =3D elem.getStrSysrootLoc();
> +               String id =3D icfg.getId();
> +               String CFLAGS_str =3D YoctoSDKUtils.getEnvValue(project,
> "CFLAGS");
> +               String CXXFLAGS_str =3D YoctoSDKUtils.getEnvValue(project=
,
> "CXXFLAGS");
> +               String CPPFLAGS_str =3D YoctoSDKUtils.getEnvValue(project=
,
> "CPPFLAGS");
> +               String LDFLAGS_str =3D YoctoSDKUtils.getEnvValue(project,
> "LDFLAGS");
> +
> +               String command_prefix =3D "CFLAGS=3D\" -g -O0 " + CFLAGS_=
str +
> "\" CXXFLAGS=3D\" -g -O0 "
> +                               + CXXFLAGS_str + "\" LDFLAGS=3D\"" +
> LDFLAGS_str + "\" CPPFLAGS=3D\"" + CPPFLAGS_str + "\"";
> +               String autogen_setting =3D command_prefix+" autogen.sh" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> +               String configure_setting =3D command_prefix + " configure=
" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> +               IAConfiguration cfg =3D
> AutotoolsConfigurationManager.getInstance().getConfiguration(project, id)=
;
> +               String strConfigure =3D YoctoSDKUtils.getEnvValue(project=
,**
> **
>
> +"CONFIGURE_FLAGS");****
>
> +
> +               cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
> +               cfg.setOption(DEFAULT_BUILD_STR,
> YoctoSDKUtils.splitString(strConfigure, "--build=3D"));
> +               cfg.setOption(DEFAULT_HOST_STR,
> YoctoSDKUtils.splitString(strConfigure, "--host=3D"));
> +               cfg.setOption(DEFAULT_TARGET_STR,
> YoctoSDKUtils.splitString(strConfigure, "--target=3D"));
> +               cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
> +               cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
> +
> +
> AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg=
);
> +
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> +       }
>  }
> diff --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProject=
Nature.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProject=
Nature.java
> index fcb296d..51926fb 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProject=
Nature.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr*=
*
> **
>
> +++ ojectNature.java****
>
> @@ -10,39 +10,15 @@
>
> *************************************************************************=
******/
>  package org.yocto.sdk.ide.natures;
>
> -import
> org.eclipse.cdt.internal.autotools.core.configure.AutotoolsConfigurationM=
anager;
> -import org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration=
;
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
>         public static final  String YoctoSDK_NATURE_ID =3D
> YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKNature";
>
> -       private static final String DEFAULT_HOST_STR =3D "host";
> -       private static final String DEFAULT_TARGET_STR =3D "target";
> -       private static final String DEFAULT_BUILD_STR =3D "build";
> -       private static final String DEFAULT_AUTOGEN_OPT_STR =3D
> "autogenOpts";
> -
> -       private static final String DEFAULT_CONFIGURE_STR =3D "configure"=
;
> -       private static final String DEFAULT_AUTOGEN_STR =3D "autogen";
> -       private static final String DEFAULT_LIBTOOL_SYSROOT_PREFIX =3D "
> --with-libtool-sysroot=3D";
> -
>         private IProject proj;
>
>         public void configure() throws CoreException { @@ -62,50 +38,4 @@
> public class YoctoSDKProjectNature implements IProjectNature {
>         public static void addYoctoSDKNature(IProject project,
> IProgressMonitor monitor) throws CoreException {
>                 YoctoSDKNatureUtils.addNature(project, YoctoSDK_NATURE_ID=
,
> monitor);
>         }
> -
> -       public static void configureAutotoolsOptions(IProject project) {
> -               IManagedBuildInfo info =3D
> ManagedBuildManager.getBuildInfo(project);
> -               IConfiguration icfg =3D info.getDefaultConfiguration();
> -               YoctoUIElement elem =3D
> YoctoSDKUtils.getElemFromProjectEnv(project);
> -               String sysroot_str =3D elem.getStrSysrootLoc();
> -               String id =3D icfg.getId();
> -               String CFLAGS_str =3D YoctoSDKUtils.getEnvValue(project,
> "CFLAGS");
> -               String CXXFLAGS_str =3D YoctoSDKUtils.getEnvValue(project=
,
> "CXXFLAGS");
> -               String CPPFLAGS_str =3D YoctoSDKUtils.getEnvValue(project=
,
> "CPPFLAGS");
> -               String LDFLAGS_str =3D YoctoSDKUtils.getEnvValue(project,
> "LDFLAGS");
> -
> -               String command_prefix =3D "CFLAGS=3D\" -g -O0 " + CFLAGS_=
str +
> "\" CXXFLAGS=3D\" -g -O0 "
> -               + CXXFLAGS_str + "\" LDFLAGS=3D\"" + LDFLAGS_str + "\"
> CPPFLAGS=3D\"" + CPPFLAGS_str + "\"";
> -               String autogen_setting =3D command_prefix+" autogen.sh" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> -               String configure_setting =3D command_prefix + " configure=
" +
> DEFAULT_LIBTOOL_SYSROOT_PREFIX + sysroot_str;
> -               IAConfiguration cfg =3D
> AutotoolsConfigurationManager.getInstance().getConfiguration(project, id)=
;
> -               String strConfigure =3D YoctoSDKUtils.getEnvValue(project=
,
> "CONFIGURE_FLAGS");
> -
> -               cfg.setOption(DEFAULT_CONFIGURE_STR, configure_setting);
> -               cfg.setOption(DEFAULT_BUILD_STR,
> YoctoSDKUtils.splitString(strConfigure, "--build=3D"));
> -               cfg.setOption(DEFAULT_HOST_STR,
> YoctoSDKUtils.splitString(strConfigure, "--host=3D"));
> -               cfg.setOption(DEFAULT_TARGET_STR,
> YoctoSDKUtils.splitString(strConfigure, "--target=3D"));
> -               cfg.setOption(DEFAULT_AUTOGEN_STR, autogen_setting);
> -               cfg.setOption(DEFAULT_AUTOGEN_OPT_STR, strConfigure);
> -
> -
> AutotoolsConfigurationManager.getInstance().addConfiguration(project, cfg=
);
> -
> AutotoolsConfigurationManager.getInstance().saveConfigs(project);
> -       }
> -
> -       public static void configureAutotools(IProject project) throws
> YoctoGeneralException {
> -               YoctoProfileElement profileElement =3D
> YoctoSDKUtils.getProfilesFromDefaultStore();
> -
> YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
> -               IPreferenceStore selecteProfileStore =3D
> YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfil=
e());
> -               YoctoUIElement elem =3D
> YoctoSDKUtils.getElemFromStore(selecteProfileStore);
> -               SDKCheckResults result =3D
> YoctoSDKChecker.checkYoctoSDK(elem);
> -               if (result !=3D SDKCheckResults.SDK_PASS){
> -                       String strErrorMsg =3D
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
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.jav=
a
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.jav=
a
> index bd781b3..1e2e424 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.jav=
a
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtil*=
*
> **
>
> +++ s.java****
>
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
> if(project.hasNature(YoctoSDKAutotoolsProjectNature.YoctoSDK_AUTOTOOLS_NA=
TURE_ID))
> {
> +
> YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
> +                       }
>                         IConsole console =3D
> CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
>                         console.start(project);
>                         consoleOutStream =3D console.getOutputStream(); d=
iff
> --git
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProject=
Template.java
> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProject=
Template.java
> index 73531e5..239cbf8 100644
> ---
> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProject=
Template.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr*=
*
> **
>
> +++ ojectTemplate.java****
>
> @@ -28,6 +28,7 @@ import org.eclipse.cdt.make.core.MakeCorePlugin;
>  import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;
>  import
> org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IDiscovere=
dPathInfo;
>  import
> org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IPerProjec=
tDiscoveredPathInfo;
> +import****
>
> +org.eclipse.cdt.make.internal.core.scannerconfig.util.SymbolEntry;****
>
>  import org.eclipse.cdt.managedbuilder.core.BuildException;
>  import org.eclipse.cdt.managedbuilder.core.IConfiguration;
>  import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
> @@ -56,6 +57,7 @@ import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResult=
s;
>  import org.yocto.sdk.ide.YoctoSDKMessages;
>  import org.yocto.sdk.ide.YoctoSDKPlugin;  import
> org.yocto.sdk.ide.YoctoUIElement;
> +import org.yocto.sdk.ide.natures.YoctoSDKAutotoolsProjectNature;
>  import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
>  import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
>  import org.yocto.sdk.ide.utils.YoctoSDKUtils;
> @@ -88,7 +90,7 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>                 String isEmptyProjetValue =3D args[4].getSimpleValue();
>                 String isAutotoolsProjectValue =3D args[5].getSimpleValue=
();
>                 boolean isCProject =3D
> Boolean.valueOf(isCProjectValue).booleanValue();
> -               boolean isEmptryProject =3D
> Boolean.valueOf(isEmptyProjetValue).booleanValue();
> +               boolean isEmptyProject =3D****
>
> +Boolean.valueOf(isEmptyProjetValue).booleanValue();****
>
>                 boolean isAutotoolsProject =3D
> Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
>
>                 IProject project =3D
> ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
> @@ -126,19 +128,8 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>
> pca.setArtifactExtension(artifactExtension);
>                                 info =3D pca.createProject(monitor,
> CCorePlugin.DEFAULT_INDEXER, isCProject);
>
> -
> AutotoolsNewProjectNature.addAutotoolsNature(project, monitor);
> -                               // For each IConfiguration, create a
> corresponding Autotools Configuration
> -                               IConfiguration[] cfgs =3D pca.getConfigs(=
);
> -                               for (int i =3D 0; i < cfgs.length; ++i) {
> -                                       IConfiguration cfg =3D cfgs[i];
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
> +                               addNatures(project, false, isEmptyProject=
,
> isAutotoolsProject,****
>
> +monitor);****
>
> +
>                                 info.setValid(true);
>                                 ManagedBuildManager.saveBuildInfo(project=
,
> true);
>
> @@ -147,31 +138,19 @@ public class NewYoctoCProjectTemplate extends
> ProcessRunner {
>
>                                 IWorkspace workspace =3D
> ResourcesPlugin.getWorkspace();
>                                 turnOffAutoBuild(workspace);
> -                               YoctoProfileElement profileElement =3D
> YoctoSDKUtils.getProfilesFromDefaultStore();
> -                               IPreferenceStore selecteProfileStore =3D
> YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfil=
e());
> -                               YoctoUIElement elem =3D
> YoctoSDKUtils.getElemFromStore(selecteProfileStore);
> -                               SDKCheckResults result =3D
> YoctoSDKChecker.checkYoctoSDK(elem);
> -                               if (result !=3D SDKCheckResults.SDK_PASS)=
{
> -                                       String strErrorMsg =3D
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
> isAutotoolsProject,****
>
> +monitor);****
>
> +
>                                 //restoreAutoBuild(workspace);
>                                 IDiscoveredPathManager manager =3D
> MakeCorePlugin.getDefault().getDiscoveryManager();
>                                 IDiscoveredPathInfo pathInfo =3D
> manager.getDiscoveredInfo(project);
>                                 if (pathInfo instanceof
> IPerProjectDiscoveredPathInfo) {
>                                     IPerProjectDiscoveredPathInfo
> projectPathInfo =3D
>                                         (IPerProjectDiscoveredPathInfo)
> pathInfo;
> -                                   projectPathInfo.setIncludeMap(new
> LinkedHashMap());
> -                                   projectPathInfo.setSymbolMap(new
> LinkedHashMap());
> +                                   projectPathInfo.setIncludeMap(new
> LinkedHashMap<String, Boolean>());
> +                                   projectPathInfo.setSymbolMap(new
> LinkedHashMap<String,****
>
> +SymbolEntry>());****
>
>                                     manager.removeDiscoveredInfo(project)=
;
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
> +               YoctoSDKProjectNature.addYoctoSDKNature(project, monitor)=
;
> +
> +
> YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
> +
> +               YoctoProfileElement profileElement =3D
> YoctoSDKUtils.getProfilesFromDefaultStore();
> +
> YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement,****
>
> +project);****
>
> +
> +               IPreferenceStore selecteProfileStore =3D
> YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfil=
e());
> +               YoctoUIElement elem =3D
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
> YoctoSDKAutotoolsProjectNature.addYoctoSDKAutotoolsNature(project, monito=
r);
> +
> YoctoSDKAutotoolsProjectNature.configureAutotoolsOptions(project);
> +               }
> +       }
> +
>         protected final void turnOffAutoBuild(IWorkspace workspace) throw=
s
> CoreException {
>                 IWorkspaceDescription workspaceDesc =3D
> workspace.getDescription();
>                 savedAutoBuildingValue =3D workspaceDesc.isAutoBuilding()=
;
> --
> 1.7.9.5****
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto****
>
> ** **
>

--047d7b5d8cffdf4dee04da8d44e5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jessica,<br><br>Thanks for the feedback. I got your poi=
nt and it seems to be the better solution. We can indeed avoid some duplica=
tions in the code.<div><br>I will give it a try and resend the patches.<br>
<br>Cheers,<br>Atanas<br><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">On Wed, Apr 17, 2013 at 7:40 AM, Zhang, Jessica <span dir=3D"lt=
r">&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica=
.zhang@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Atanas,<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I ask for building the cl=
ass hierarch is mainly from the Java side class design point of view and I =
see your point of the relationship consideration from the
 eclipse plug-in side.=A0 Just purely from the class name and the implement=
ation, it=92s obviously YoctoSDKAutotoolsProjectNature has a closer relatio=
nship to YoctoSDKProjectNature whereas the requirements for autotoolsNature=
V2 is less obvious.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">My comments regarding eli=
minate addYoctoSDKAutotoolsNature, but instead just make it the same as add=
YoctoSDKNature with same signature.=A0 But the implementation
 of them will be difference via the NATURE_ID value.=A0 But this makes more=
 sense if we make AutotoolsProjectNature subclass ProjectNature, if there=
=92s no such relationship between the two classes, with separate method nam=
e as in your patch is just fine.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thoughts?<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica=A0=A0=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Atanas G=
egov [mailto:<a href=3D"mailto:atanas.gegov.oss@gmail.com" target=3D"_blank=
">atanas.gegov.oss@gmail.com</a>]
<br>
<b>Sent:</b> Tuesday, April 16, 2013 5:39 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoS=
DKAutotoolsProjectNature<u></u><u></u></span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Hi Jessica,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">My idea was that the=A0YoctoSDKAutotoolsProjectNatur=
e and the=A0YoctoSDKProjectNature are related through the &quot;requires-na=
ture&quot; tag in plugin.xml. The=A0YoctoSDKAutotoolsProjectNature has also=
 an another =A0&quot;requires-nature&quot; relation to the org.eclipse.cdt.=
autotools.core.autotoolsNatureV2.
 If I make the YoctoSDKAutotoolsProjectNature a subclass of the YoctoSDKPro=
jectNature it would suggest (according to my mind) a stronger connection to=
 the YoctoSDKProjectNature than to the org.eclipse.cdt.autotools.core.autot=
oolsNatureV2. It would be like YoctoSDKAutotoolsProjectNature
 &quot;requires more&quot; YoctoSDKProjectNature than org.eclipse.cdt.autot=
ools.core.autotoolsNatureV2...I am not sure if it is a problem or not. So, =
I can make the=A0YoctoSDKAutotoolsProjectNature a subclass of the=A0YoctoSD=
KProjectNature if you think that it is a better
 design.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
What do you mean by &quot;In this way, you don&#39;t need to introduce the =
special method of addYoctoSDKAutotoolsNature in YoctoSDKAutotoolsProjectNat=
ure which makes the interface a little bit cleaner via encapsulation&quot;?=
 In order to add the two natures to the project
 I think we need both static methods:<br>
-=A0YoctoSDKProjectNature.addYoctoSDKNature(project, monitor);<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal">-=A0YoctoSDKAutotoolsProjectNature.addYoctoSDKAutoto=
olsNature(project, monitor);<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Or do you mean some other solution?<u></u><u></u></p=
>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
Looking forward to your feedback!<br>
<br>
Best regards,<br>
Atanas<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On Mon, Apr 15, 2013 at 9:12 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<u></u><u></u></p>
<p class=3D"MsoNormal">Hi Atanas,<br>
<br>
Everything looks good for the patch series except can we make YoctoSDKAutot=
oolsProjectNature subclass of YoctoSDKProjectNature by extending it to bett=
er show the classes relationship. =A0In this way, you don&#39;t need to int=
roduce the special method of addYoctoSDKAutotoolsNature
 in YoctoSDKAutotoolsProjectNature which makes the interface a little bit c=
leaner via encapsulation.<br>
<br>
Thanks,<br>
Jessica<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@y=
octoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] On B=
ehalf Of Atanas Gegov<br>

Sent: Thursday, April 11, 2013 4:25 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
Subject: [yocto] [PATCHv2 4/9] plugins/sdk.ide: Switch to YoctoSDKAutotools=
ProjectNature<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de" target=
=3D"_blank">atanas.gegov@bmw-carit.de</a>&gt;<br>
<br>
The YoctoSDKProjectNature remains the basic nature for all Yocto projects i=
n the IDE. The projects using Autotools (all templates) get the YoctoSDKPro=
jectNature and additionally the YoctoSDKAutotoolsProjectNature. The process=
 NewYoctoCProjectTemplate is adapted
 accordingly.<br>
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
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAu<u>=
</u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">+++ totoolsProjectNature.java<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">@@ -10,15 +10,31 @@<br>
=A0 ***********************************************************************=
********/<br>
=A0package org.yocto.sdk.ide.natures;<br>
<br>
+import<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+org.eclipse.cdt.internal.autotools.core.configure.A=
utotoolsConfiguratio<br>
+nManager; import<br>
+org.eclipse.cdt.internal.autotools.core.configure.IAConfiguration;<u></u><=
u></u></p>
<div>
<p class=3D"MsoNormal">+import org.eclipse.cdt.managedbuilder.core.IConfigu=
ration;<br>
+import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;<br>
+import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;<br>
=A0import org.eclipse.core.resources.IProject;<br>
=A0import org.eclipse.core.resources.IProjectNature;<br>
=A0import org.eclipse.core.runtime.CoreException;<br>
=A0import org.eclipse.core.runtime.IProgressMonitor;<br>
=A0import org.yocto.sdk.ide.YoctoSDKPlugin;<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+import org.yocto.sdk.ide.YoctoUIElement; import<br>
+org.yocto.sdk.ide.utils.YoctoSDKUtils;<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><br>
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
=3D &quot;<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+--with-libtool-sysroot=3D&quot;;<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">+<br>
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
alue(project,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+&quot;CONFIGURE_FLAGS&quot;);<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">+<br>
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
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKPr<u>=
</u><u></u></p>
</div>
<p class=3D"MsoNormal">+++ ojectNature.java<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">@@ -10,39 +10,15 @@<br>
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
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtil<u>=
</u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">+++ s.java<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">@@ -54,8 +54,8 @@ import org.yocto.sdk.ide.YoctoProf=
ileElement;<br>
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
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr<u>=
</u><u></u></p>
</div>
<p class=3D"MsoNormal">+++ ojectTemplate.java<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">@@ -28,6 +28,7 @@ import org.eclipse.cdt.make.core.M=
akeCorePlugin;<br>
=A0import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager;<b=
r>
=A0import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.ID=
iscoveredPathInfo;<br>
=A0import org.eclipse.cdt.make.core.scannerconfig.IDiscoveredPathManager.IP=
erProjectDiscoveredPathInfo;<br>
+import<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+org.eclipse.cdt.make.internal.core.scannerconfig.ut=
il.SymbolEntry;<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=A0import org.eclipse.cdt.managedbuilder.core.BuildE=
xception;<br>
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
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isEmptyProject =3D<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+Boolean.valueOf(isEmptyProjetValue).booleanValue();=
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 boolean isAutotoolsP=
roject =3D Boolean.valueOf(isAutotoolsProjectValue).booleanValue();<br>
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
oject, false, isEmptyProject, isAutotoolsProject,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+monitor);<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">+<br>
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
oject, true, isEmptyProject, isAutotoolsProject,<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">+monitor);<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">+<br>
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
ctPathInfo.setSymbolMap(new LinkedHashMap&lt;String,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+SymbolEntry&gt;());<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 manager.removeDiscoveredInfo(project);<br>
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
s(profileElement,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">+project);<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">+<br>
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
1.7.9.5<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div></div></div>

--047d7b5d8cffdf4dee04da8d44e5--
