Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA64E014FA
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:36:11 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hn14so2424749wib.1
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WlKc9o4RUS/jKpz8Ym5+BAjg0f1hg6w590Jsu0pOUi4=;
	b=arbeeAfD7TYKgStXX8ioeqTQSse1zSpJoXDHdFpgWrITQHubIvZR/xU27IRPwQYKmp
	8K5oh8rPK6DUWhXhcR/hdSiBQm4GOgotaXSdRWFkr8XbVgrxk3tqPWkH3S+KC1qCOzxy
	jweJaxJ00DARRXxqxEacumHzUgBHQGpAOvNYehJXKpWveTjNB+bIy2OkKskBu0UX4Wqv
	4/L0NHyMZqplzWSJhlnv32aC+gaYRLPkMFLfya4j9wrwkkMVa59PFs7spKB4uqogYf3a
	C6bHB/AH3n0A6d8hXVGLauVHnj7P8ZR9giTLfap22/tbTQDxrBDh8kCJ9iR232NZouEw
	6MIg==
MIME-Version: 1.0
X-Received: by 10.180.109.84 with SMTP id hq20mr12000796wib.11.1369744570537; 
	Tue, 28 May 2013 05:36:10 -0700 (PDT)
Received: by 10.227.240.4 with HTTP; Tue, 28 May 2013 05:36:10 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C32CD4@ORSMSX103.amr.corp.intel.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C32CD4@ORSMSX103.amr.corp.intel.com>
Date: Tue, 28 May 2013 14:36:10 +0200
Message-ID: <CAEe+mUax5HC28NAL+h9qT8Z4t81oazWcjvR6CFzbthivbiXV8A@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Tue, 28 May 2013 12:36:12 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9db18f5bb704ddc68243

--e89a8f3b9db18f5bb704ddc68243
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

Thank you for merging our patches!
About QA, I took a look in Bugzilla and the "Eclipse Plugin" Test Cases
there. I thought something like the following might be reasonable to test
the CMake feature:

0. Precondition: Set up at least 2 "Cross development profiles" (e.g. one
for "i586-..." and one for "arm...") in the Yocto IDE.
(Window > Preferences > Yocto Project ADT)

1. Select File -> New -> Project.

2. Double click C or C++ (two separate test cases).

3. Expand the category "Yocto ADT CMake Project".

4. Select "Hello World C++ CMake Project" (or "Hello World C CMake Project"
if C chosen in Step 2.).

5. Put a name in the Project name.

6. Click Next.

7. Add information in the fields about Author, Vendor etc..

8. Click Finish.

9. (optional) Right-click on the created project > Properties > C/C++ Build
> Settings > choose "CMake Options" in the tab "Tool settings". Change some
options there (e.g. enter "--debug-output" in the field "Other flags").
Press Apply and OK.

10. Press the hammer symbol to build the project.

11. Check the output of the build process:
a) The console "Configure using CMake [<project name>]" should list the
correct C/C++ cross-compilers of the chosen cross development profile (and
also provide some more verbose output if "--debug-output" was set in Step
9.)
b) The console "CDT build console [<project name>]" shows the usage of the
correct cross-compiler and sysroot (if verbose Makefile generated (this is
the default option but can be changed from the "CMake Options") in Step 9.)
c) The file "toolchain.cmake" has been generated with correct cross
development settings (compiler, sysroot etc.).
d) A binary is created in the Debug folder

12. Change the cross development profile for the project (Right-click on
the created project > Properties > Yocto Project Settings > choose
another profile from the drop-down box > Apply > OK) and go back to Step 9.
to build the project again with another cross development profile.

Do you think the test case is OK like this?

Best regards,
Atanas


On Fri, May 24, 2013 at 8:55 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> Hi Atanas,
>
> All the cmake related patches have been merged to eclipse-poky master.
> Also, can you provide some detailed information regarding how to test the
> feature so QA can add adequate test cases in the existing eclipse plug-in
> testing.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Atanas Gegov
> Sent: Friday, May 24, 2013 5:03 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [eclipse-poky][PATCH 0/7] Introducing a
> YoctoSDKCMakeProjectNature
>
> From: Atanas Gegov <atanas.gegov@bmw-carit.de>
>
> Hi,
>
> This patch series introduces a YoctoSDKCMakeProjectNature as a new nature
> for CMake-based Yocto Projects in the IDE. It requires the basic
> YoctoSDKProjectNature and is an alternative to the
> YoctoSDKAutotoolsProjectNature.
>
> This does not affect the currently existing Autotools template projects.
>
> Upcoming patch series will add the last missing parts for having CMake
> projects in the IDE: a ManagedBuilder for CMake (CMake toolchain for
> building in Eclipse) and some template projects.
>
> Cheers, Atanas
>
> P.S: This patch series apply on the current master "Fix the issue
> introduced by code refactoring since DialogHandler inherit IHandler,
> execute expect to return an object"
> (dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa).
>
>
> Atanas Gegov (7):
>   plugins/sdk.ide: Prepared templates for CMake nature
>   plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
>   plugins/sdk.ide: Enable the creation of CMake projects
>   plugins/sdk.ide: Update CMake projects on Yocto settings change
>   plugins/sdk.ide: Renamed template process
>   plugins/sdk.ide: Fixed whitespace issues
>   plugins/sdk.ide: Extracted member variables
>
>  .../OSGI-INF/l10n/bundle.properties                |    1 +
>  plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
>  .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
>  .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
>  .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245
> ------------------
>  .../ide/wizard/NewYoctoProjectTemplateProcess.java |  267
> ++++++++++++++++++++
>  .../EmptyCAutotoolsProject/template.xml            |    1 +
>  .../EmptyCPPAutotoolsProject/template.xml          |    1 +
>  .../HelloWorldCAutotoolsProject/template.xml       |    1 +
>  .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
>  .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
>  11 files changed, 395 insertions(+), 247 deletions(-)  create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
>  delete mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
>  create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
>
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--e89a8f3b9db18f5bb704ddc68243
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jessica,</div><div><br></div><div>Thank you for me=
rging our patches!</div><div>About QA, I took a look in Bugzilla and the &q=
uot;Eclipse Plugin&quot; Test Cases there. I thought something like the fol=
lowing might be reasonable to test the CMake feature:</div>
<div><br></div><div>0. Precondition: Set up at least 2 &quot;Cross developm=
ent profiles&quot; (e.g. one for &quot;i586-...&quot; and one for &quot;arm=
...&quot;) in the Yocto IDE.</div><div>(Window &gt; Preferences &gt; Yocto =
Project ADT)</div>
<div><br></div><div>1. Select File -&gt; New -&gt; Project.</div><div><br><=
/div><div>2. Double click C or C++ (two separate test cases).</div><div><br=
></div><div>3. Expand the category &quot;Yocto ADT CMake Project&quot;.</di=
v>
<div><br></div><div>4. Select &quot;Hello World C++ CMake Project&quot; (or=
 &quot;Hello World C CMake Project&quot; if C chosen in Step 2.).</div><div=
><br></div><div>5. Put a name in the Project name.</div><div><br></div>
<div>6. Click Next.</div><div><br></div><div>7. Add information in the fiel=
ds about Author, Vendor etc..</div><div><br></div><div>8. Click Finish.</di=
v><div><br></div><div>9. (optional) Right-click on the created project &gt;=
 Properties &gt; C/C++ Build &gt; Settings &gt; choose &quot;CMake Options&=
quot; in the tab &quot;Tool settings&quot;. Change some options there (e.g.=
 enter &quot;--debug-output&quot; in the field &quot;Other flags&quot;). Pr=
ess Apply and OK.</div>
<div><br></div><div>10. Press the hammer symbol to build the project.</div>=
<div><br></div><div>11. Check the output of the build process:</div><div>a)=
 The console &quot;Configure using CMake [&lt;project name&gt;]&quot; shoul=
d list the correct C/C++ cross-compilers of the chosen cross development pr=
ofile (and also provide some more verbose output if &quot;--debug-output&qu=
ot; was set in Step 9.)</div>
<div>b) The console &quot;CDT build console [&lt;project name&gt;]&quot; sh=
ows the usage of the correct cross-compiler and sysroot (if verbose Makefil=
e generated (this is the default option but can be changed from the &quot;C=
Make Options&quot;) in Step 9.)</div>
<div>c) The file &quot;toolchain.cmake&quot; has been generated with correc=
t cross development settings (compiler, sysroot etc.).</div><div>d) A binar=
y is created in the Debug folder</div><div><br></div><div>12. Change the cr=
oss development profile for the project (Right-click on the created project=
 &gt; Properties &gt; Yocto Project Settings &gt; choose</div>
<div>another profile from the drop-down box &gt; Apply &gt; OK) and go back=
 to Step 9. to build the project again with another cross development profi=
le.</div><div><br></div><div>Do you think the test case is OK like this?</d=
iv>
<div><br></div><div>Best regards,</div><div>Atanas</div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">On Fri, May 24, 2013 at 8:55 PM,=
 Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel=
.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hi Atanas,<br>
<br>
All the cmake related patches have been merged to eclipse-poky master. =A0 =
Also, can you provide some detailed information regarding how to test the f=
eature so QA can add adequate test cases in the existing eclipse plug-in te=
sting.<br>

<br>
Thanks,<br>
Jessica<br>
<div><div class=3D"h5"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Friday, May 24, 2013 5:03 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProje=
ctNature<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de">atanas.=
gegov@bmw-carit.de</a>&gt;<br>
<br>
Hi,<br>
<br>
This patch series introduces a YoctoSDKCMakeProjectNature as a new nature f=
or CMake-based Yocto Projects in the IDE. It requires the basic YoctoSDKPro=
jectNature and is an alternative to the YoctoSDKAutotoolsProjectNature.<br>

<br>
This does not affect the currently existing Autotools template projects.<br=
>
<br>
Upcoming patch series will add the last missing parts for having CMake proj=
ects in the IDE: a ManagedBuilder for CMake (CMake toolchain for building i=
n Eclipse) and some template projects.<br>
<br>
Cheers, Atanas<br>
<br>
P.S: This patch series apply on the current master &quot;Fix the issue intr=
oduced by code refactoring since DialogHandler inherit IHandler, execute ex=
pect to return an object&quot;<br>
(dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa).<br>
<br>
<br>
Atanas Gegov (7):<br>
=A0 plugins/sdk.ide: Prepared templates for CMake nature<br>
=A0 plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature<br>
=A0 plugins/sdk.ide: Enable the creation of CMake projects<br>
=A0 plugins/sdk.ide: Update CMake projects on Yocto settings change<br>
=A0 plugins/sdk.ide: Renamed template process<br>
=A0 plugins/sdk.ide: Fixed whitespace issues<br>
=A0 plugins/sdk.ide: Extracted member variables<br>
<br>
=A0.../OSGI-INF/l10n/bundle.properties =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A01 +<br>
=A0plugins/org.yocto.sdk.ide/plugin.xml =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 2=
5 +-<br>
=A0.../ide/natures/YoctoSDKCMakeProjectNature.java =A0 =A0| =A0 92 +++++++<=
br>
=A0.../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | =A0 =A07 +-<br>
=A0.../sdk/ide/wizard/NewYoctoCProjectTemplate.java =A0 | =A0245 ----------=
--------<br>
=A0.../ide/wizard/NewYoctoProjectTemplateProcess.java | =A0267 ++++++++++++=
++++++++<br>
=A0.../EmptyCAutotoolsProject/template.xml =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
1 +<br>
=A0.../EmptyCPPAutotoolsProject/template.xml =A0 =A0 =A0 =A0 =A0| =A0 =A01 =
+<br>
=A0.../HelloWorldCAutotoolsProject/template.xml =A0 =A0 =A0 | =A0 =A01 +<br=
>
=A0.../HelloWorldCGTKAutotoolsProject/template.xml =A0 =A0| =A0 =A01 +<br>
=A0.../HelloWorldCPPAutotoolsProject/template.xml =A0 =A0 | =A0 =A01 +<br>
=A011 files changed, 395 insertions(+), 247 deletions(-) =A0create mode 100=
644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakePr=
ojectNature.java<br>
=A0delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizar=
d/NewYoctoCProjectTemplate.java<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizar=
d/NewYoctoProjectTemplateProcess.java<br>
<br>
--<br>
1.7.9.5<br>
<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></div>

--e89a8f3b9db18f5bb704ddc68243--
