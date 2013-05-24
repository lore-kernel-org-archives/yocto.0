Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FEDBE01489
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 04:56:22 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id p58so2587016wes.7
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 04:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wnmpf34o7XbfxTp2LkV1kg/QiErbLod4h5dnkT1hGrc=;
	b=pa4MTThLifyyee0LZPufOTsYC3EvvscVhrghFF5FRkYnOLAicta2eQavwr/NsR5Ovu
	rX7HLqv+orpSbVloJrUge1/qx/Gh9tPog8MLKDErEzI/2kVqCste1IswrXwwKIinvfeb
	ALwFOzf9cAENlo3VodWxhuX0IFnh7gIUd97K8XdptgEucw7z6MBM0xTgsRRaJaVuCmz8
	ez7EqdPivL4Ko7OGJ5gBL3CxzKm/lzWJik/V6KA8QShyUT5U3lo3+hbLFP3KchgXSlzB
	9cOYWZhCxypChxRj/v+KawmsIR1DT52NPEkAfBrHdTxqqFD4KgF+i/g2XdEIPyRwqIhc
	Z4XA==
MIME-Version: 1.0
X-Received: by 10.180.189.136 with SMTP id gi8mr51414577wic.11.1369396581660; 
	Fri, 24 May 2013 04:56:21 -0700 (PDT)
Received: by 10.227.240.4 with HTTP; Fri, 24 May 2013 04:56:21 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C32494@ORSMSX103.amr.corp.intel.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C32494@ORSMSX103.amr.corp.intel.com>
Date: Fri, 24 May 2013 13:56:21 +0200
Message-ID: <CAEe+mUZa1jOZEY91wCYotnEa7UO6vnPxjKhOURoj5W7CMtMa5A@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [eclipse-poky][PATCH 00/13] Completed CMake integration in the Yocto IDE
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
X-List-Received-Date: Fri, 24 May 2013 11:56:23 -0000
Content-Type: multipart/alternative; boundary=001a11c2412cce7be404dd757c78

--001a11c2412cce7be404dd757c78
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

Yes, this patch series indeed relies on the previous RFC patches: [yocto]
[eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature. I will
resend the series as PATCH.

Best regards,
Atanas


On Thu, May 23, 2013 at 11:50 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> Hi Atanas,
>
> Seems this patch series relies on the previous RFC patches: [yocto]
> [eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature.  Since
> they were RFC, I didn't apply them and this patch series will report
> YoctoSDKCMakeProjectNature can't be resolved.  Can you send the
> YoctoSDKCMakeNature as patches not RFC?
>
> Thanks,
> Jessica
>
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Atanas Gegov
> Sent: Thursday, May 23, 2013 1:40 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [eclipse-poky][PATCH 00/13] Completed CMake integration
> in the Yocto IDE
>
> From: Atanas Gegov <atanas.gegov@bmw-carit.de>
>
> Hi,
>
> this patch series adds a new plugin containing a CMake configure tool, a
> toolchain and a project type for building CMake projects in the Yocto IDE.
> The plugin also introduces Hello World templates for C and C++. With this
> patch series the CMake integration is completed and the CMake projects can
> be built, debugged etc. as already known from the Autotools-based projects.
>
> Cheers,
> Atanas
>
> P.S: This patch series requires the already discussed patch series
> "[eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature".
>
> Atanas Gegov (13):
>   plugins/cmake: Added an empty CMake integration plugin
>   plugins/cmake: Defined CMake tool with options
>   plugins/sdk.ide: Added a method to get project environment
>   plugins/cmake: Preparing a configure Job
>   plugins/cmake: Added run method to configure Job
>   plugins/cmake: Added a Makefile generator
>   plugins/cmake: Added the generation of toolchain.cmake
>   plugins/cmake: Defined the building toolchain
>   plugins/cmake: Added a new category for CMake projects
>   plugins/cmake: Connect toolchain and new project category
>   plugins/cmake: Added CMake template projects
>   plugins/sdk.ide: Adapted RemoteDebugLauncher for CMake projects
>   features/sdk: Added CMake plugin to sdk feature
>
>  features/org.yocto.sdk/feature.xml                 |    6 +
>  plugins/org.yocto.cmake.managedbuilder/.classpath  |    7 +
>  plugins/org.yocto.cmake.managedbuilder/.project    |   28 ++
>  .../.settings/org.eclipse.jdt.core.prefs           |    8 +
>  .../META-INF/MANIFEST.MF                           |   16 ++
>  .../OSGI-INF/l10n/bundle.properties                |   40 +++
>  .../build.properties                               |    7 +
>  plugins/org.yocto.cmake.managedbuilder/plugin.xml  |  283
> ++++++++++++++++++++
>  .../org/yocto/cmake/managedbuilder/Activator.java  |   50 ++++
>  .../YoctoCMakeMakefileGenerator.java               |  281
> +++++++++++++++++++
>  .../cmake/managedbuilder/YoctoCMakeMessages.java   |   57 ++++
>  .../managedbuilder/YoctoCMakeMessages.properties   |   27 ++
>  .../managedbuilder/job/ExecuteConfigureJob.java    |  149 +++++++++++
>  .../cmake/managedbuilder/util/ConsoleUtility.java  |   49 ++++
>  .../cmake/managedbuilder/util/SystemProcess.java   |  118 ++++++++
>  .../HelloWorldCCMakeProject/src/CMakeLists.txt     |   34 +++
>  .../HelloWorldCCMakeProject/src/main.c             |   21 ++
>  .../HelloWorldCCMakeProject/template.properties    |   31 +++
>  .../HelloWorldCCMakeProject/template.xml           |   61 +++++
>  .../HelloWorldCPPCMakeProject/src/CMakeLists.txt   |   34 +++
>  .../HelloWorldCPPCMakeProject/src/main.cpp         |   21 ++
>  .../HelloWorldCPPCMakeProject/template.properties  |   31 +++
>  .../HelloWorldCPPCMakeProject/template.xml         |   61 +++++
>  .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   29 +-
>  24 files changed, 1445 insertions(+), 4 deletions(-)  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/.classpath
>  create mode 100644 plugins/org.yocto.cmake.managedbuilder/.project
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
>  create mode 100644 plugins/org.yocto.cmake.managedbuilder/build.properties
>  create mode 100644 plugins/org.yocto.cmake.managedbuilder/plugin.xml
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/Activator.java
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.java
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/ConsoleUtility.java
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/src/main.c
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.properties
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCCMakeProject/template.xml
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/src/main.cpp
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.properties
>  create mode 100644
> plugins/org.yocto.cmake.managedbuilder/templates/projecttemplates/HelloWorldCPPCMakeProject/template.xml
>
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c2412cce7be404dd757c78
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jessica,<br><br>Yes, this=A0<span style=3D"font-family:=
arial,sans-serif;font-size:13px">patch series indeed relies on the previous=
 RFC patches: [yocto] [eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMake=
ProjectNature. I will resend the series as PATCH.</span><br>
<br>Best regards,<br>Atanas</div><div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote">On Thu, May 23, 2013 at 11:50 PM, Zhang, Jessica <span =
dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank=
">jessica.zhang@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Atanas,<br>
<br>
Seems this patch series relies on the previous RFC patches: [yocto] [eclips=
e-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature. =A0Since they =
were RFC, I didn&#39;t apply them and this patch series will report YoctoSD=
KCMakeProjectNature can&#39;t be resolved. =A0Can you send the YoctoSDKCMak=
eNature as patches not RFC?<br>

<br>
Thanks,<br>
Jessica<br>
<div><div class=3D"h5"><br>
<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Thursday, May 23, 2013 1:40 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [eclipse-poky][PATCH 00/13] Completed CMake integration in=
 the Yocto IDE<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de">atanas.=
gegov@bmw-carit.de</a>&gt;<br>
<br>
Hi,<br>
<br>
this patch series adds a new plugin containing a CMake configure tool, a to=
olchain and a project type for building CMake projects in the Yocto IDE. Th=
e plugin also introduces Hello World templates for C and C++. With this pat=
ch series the CMake integration is completed and the CMake projects can be =
built, debugged etc. as already known from the Autotools-based projects.<br=
>

<br>
Cheers,<br>
Atanas<br>
<br>
P.S: This patch series requires the already discussed patch series<br>
&quot;[eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature&qu=
ot;.<br>
<br>
Atanas Gegov (13):<br>
=A0 plugins/cmake: Added an empty CMake integration plugin<br>
=A0 plugins/cmake: Defined CMake tool with options<br>
=A0 plugins/sdk.ide: Added a method to get project environment<br>
=A0 plugins/cmake: Preparing a configure Job<br>
=A0 plugins/cmake: Added run method to configure Job<br>
=A0 plugins/cmake: Added a Makefile generator<br>
=A0 plugins/cmake: Added the generation of toolchain.cmake<br>
=A0 plugins/cmake: Defined the building toolchain<br>
=A0 plugins/cmake: Added a new category for CMake projects<br>
=A0 plugins/cmake: Connect toolchain and new project category<br>
=A0 plugins/cmake: Added CMake template projects<br>
=A0 plugins/sdk.ide: Adapted RemoteDebugLauncher for CMake projects<br>
=A0 features/sdk: Added CMake plugin to sdk feature<br>
<br>
=A0features/org.yocto.sdk/feature.xml =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A06 +<br>
=A0plugins/org.yocto.cmake.managedbuilder/.classpath =A0| =A0 =A07 +<br>
=A0plugins/org.yocto.cmake.managedbuilder/.project =A0 =A0| =A0 28 ++<br>
=A0.../.settings/org.eclipse.jdt.core.prefs =A0 =A0 =A0 =A0 =A0 | =A0 =A08 =
+<br>
=A0.../META-INF/MANIFEST.MF =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 | =A0 16 ++<br>
=A0.../OSGI-INF/l10n/bundle.properties =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 40 +++<br>
=A0.../build.properties =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 | =A0 =A07 +<br>
=A0plugins/org.yocto.cmake.managedbuilder/plugin.xml =A0| =A0283 ++++++++++=
++++++++++<br>
=A0.../org/yocto/cmake/managedbuilder/Activator.java =A0| =A0 50 ++++<br>
=A0.../YoctoCMakeMakefileGenerator.java =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A028=
1 +++++++++++++++++++<br>
=A0.../cmake/managedbuilder/YoctoCMakeMessages.java =A0 | =A0 57 ++++<br>
=A0.../managedbuilder/YoctoCMakeMessages.properties =A0 | =A0 27 ++<br>
=A0.../managedbuilder/job/ExecuteConfigureJob.java =A0 =A0| =A0149 ++++++++=
+++<br>
=A0.../cmake/managedbuilder/util/ConsoleUtility.java =A0| =A0 49 ++++<br>
=A0.../cmake/managedbuilder/util/SystemProcess.java =A0 | =A0118 ++++++++<b=
r>
=A0.../HelloWorldCCMakeProject/src/CMakeLists.txt =A0 =A0 | =A0 34 +++<br>
=A0.../HelloWorldCCMakeProject/src/main.c =A0 =A0 =A0 =A0 =A0 =A0 | =A0 21 =
++<br>
=A0.../HelloWorldCCMakeProject/template.properties =A0 =A0| =A0 31 +++<br>
=A0.../HelloWorldCCMakeProject/template.xml =A0 =A0 =A0 =A0 =A0 | =A0 61 ++=
+++<br>
=A0.../HelloWorldCPPCMakeProject/src/CMakeLists.txt =A0 | =A0 34 +++<br>
=A0.../HelloWorldCPPCMakeProject/src/main.cpp =A0 =A0 =A0 =A0 | =A0 21 ++<b=
r>
=A0.../HelloWorldCPPCMakeProject/template.properties =A0| =A0 31 +++<br>
=A0.../HelloWorldCPPCMakeProject/template.xml =A0 =A0 =A0 =A0 | =A0 61 ++++=
+<br>
=A0.../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | =A0 29 +-<br>
=A024 files changed, 1445 insertions(+), 4 deletions(-) =A0create mode 1006=
44 plugins/org.yocto.cmake.managedbuilder/.classpath<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/.project<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/.settings/org.=
eclipse.jdt.core.prefs<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/META-INF/MANIF=
EST.MF<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/=
bundle.properties<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/build.properti=
es<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/plugin.xml<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/Activator.java<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/YoctoCMakeMakefileGenerator.java<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/YoctoCMakeMessages.java<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/YoctoCMakeMessages.properties<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/job/ExecuteConfigureJob.java<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/util/ConsoleUtility.java<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/=
cmake/managedbuilder/util/SystemProcess.java<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCCMakeProject/src/CMakeLists.txt<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCCMakeProject/src/main.c<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCCMakeProject/template.properties<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCCMakeProject/template.xml<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCPPCMakeProject/src/CMakeLists.txt<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCPPCMakeProject/src/main.cpp<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCPPCMakeProject/template.properties<br>
=A0create mode 100644 plugins/org.yocto.cmake.managedbuilder/templates/proj=
ecttemplates/HelloWorldCPPCMakeProject/template.xml<br>
<br>
--<br>
1.7.9.5<br>
<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a11c2412cce7be404dd757c78--
