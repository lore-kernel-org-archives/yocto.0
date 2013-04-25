Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336FEE014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 02:14:45 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id j13so1286998wgh.2
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 02:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=hsLp4T68+1OK9UVPgyj5LHrau8dlvJtUt2mWadYKzQg=;
	b=SbVXX304CdfUGt1ni6kRBorLU35oRulpBP5bMaTQK3FLE0+bhstnYX0m5LPwbjyU2w
	SySwoxCFYHUx2TyxVbtfb/ugOU9rxTNDqUp12SUQo3rZLJ0KnzIEHZ1ObANZb/BNRoee
	bWcS9w67mG8CKzLjzBPLp2JYhlNoPpNh72uE7QOhY+Hm1jS0izIiaG1jnba0gqq4F4lP
	Izf2RlctJ8GowflBqtBD3TXfR7yP8WTiZiH4rtUta1XblVj+bSkghoN0cXUpTlGsoHS4
	Psx/4RK0sMVcXT9HTM1f5CunTdbOfWmezgAWY1dH5n/zJOi/fTlIQMtnMw5WLG4nFkAB
	Xq8g==
MIME-Version: 1.0
X-Received: by 10.194.93.68 with SMTP id cs4mr26895608wjb.17.1366881283737;
	Thu, 25 Apr 2013 02:14:43 -0700 (PDT)
Received: by 10.227.160.201 with HTTP; Thu, 25 Apr 2013 02:14:43 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6FDCEE4E@ORSMSX104.amr.corp.intel.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDCDC04@ORSMSX104.amr.corp.intel.com>
	<CAEe+mUaBtaM5hby00ACs-N_oZWMHeO2eqxt_2G5h8B-hvqtrsA@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDCEE4E@ORSMSX104.amr.corp.intel.com>
Date: Thu, 25 Apr 2013 11:14:43 +0200
Message-ID: <CAEe+mUZFovywE9mvyG+yKMfP6Lk5-D6hjQyD6xYZGh-k-6mAMQ@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Thu, 25 Apr 2013 09:14:45 -0000
Content-Type: multipart/alternative; boundary=047d7b5d8cff5e10ed04db2bd972

--047d7b5d8cff5e10ed04db2bd972
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

thank you for the input, I will resend the patches.

Best regards,
Atanas


On Thu, Apr 25, 2013 at 6:27 AM, Zhang, Jessica <jessica.zhang@intel.com>wr=
ote:

>  Hi Atanas,****
>
> ** **
>
> Please see my comments below=85****
>
> ** **
>
> Thanks,****
>
> Jessica****
>
> ** **
>
> *From:* Atanas Gegov [mailto:atanas.gegov.oss@gmail.com]
> *Sent:* Wednesday, April 24, 2013 8:48 AM
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] [eclipse-poky][RFC 0/6] Introducing a
> YoctoSDKCMakeProjectNature****
>
> ** **
>
> Hi Jessica,
>
> thank you for the comments!****
>
> ** **
>
> **1.      **Yes, the idea is that at the end there are the current
> category ("Yocto Project ADT Autotools Project" with some Autotools-based
> project templates) and a new category "Yocto Project ADT CMake Project"
> with e.g. its own "Hello World C++ CMake Project". The latter category an=
d
> the templates will be implemented in the upcoming patch series. ****
>
> Great that=92s what I=92d expected .****
>
> ** **
>
> **2.      **Could you please give me a small example how it should look
> like?Should the method addNatures receive a list of natures to add? What =
is
> the case if more natures are added to a project (e.g. SDKNature +
> AutotoolsNature + EmptyNature)? Or do you think of enum based on the
> buildsystem natures only (Autotools vs. CMake) and not based on all 4
> natures?****
>
> I took another look of the class, we should be able to even further
> simplify the API of addNatures.  We can make all the natures as instance
> variables of the class.  In process method we assign them values and
> totally eliminate passing natures in addNatures API.  So the code should
> be(please ignore the incorrect capitalization due to auto correction):***=
*
>
> ** **
>
> Public class NewYoctoProjectTemplateProcess extends ProcessRunner {****
>
> =85****
>
>             Private Boolean isEmptyProject; ****
>
>             Private Boolean isAutotoolsProject;****
>
>             Private Boolean isCMakeProject;****
>
> =85****
>
>             Public void process(=85) {****
>
>             =85****
>
>                         isEmptyProject =3D =85****
>
>                         isAutotoolsProject =3D =85****
>
>                         isCMakeProject =3D =85****
>
>             =85****
>
>                         addNatures(project, false, monitor);****
>
>             =85****
>
>             }****
>
>             =85****
>
>             Private void addNatures(IProject project, Boolean
> projectExists, IProgressMonitor monitor) {****
>
>                         =85****
>
>             }****
>
> ** **
>
> **3.      **I just created an account in bugzilla.yoctoproject.org, so
> you can assign me the CMake support entry.****
>
> Super.  You=92ll get your first assignment J****
>
>
> Thanks,
> Atanas****
>
> ** **
>
> On Tue, Apr 23, 2013 at 8:50 PM, Zhang, Jessica <jessica.zhang@intel.com>
> wrote:****
>
> Hi Atanas,
>
> Overall, the patches look good.  Couple comments:
>
> 1. So from the end user perspective, after the 2nd patch set, user will
> see "Yocto Project ADT CMake Project" category when they want to create a
> new project?
> 2. Can we change the API for addNatures by using an enum type for
> projectNature instead of explicitly listing all of them out.  This way is
> easier for code maintenance and API usability.
> 3. Don't know whether you've created a bugzilla account at
> bugzilla.yoctoproject.org or not, if not, please do, since I'd hope
> you're able to help fixing certain bugs in this area down the road.  Also=
,
> from project planning process wise, we're right in the 1.5 planning, and
> I'd like to create an entry in the bugzilla for extending eclipse for CMa=
ke
> support and assign that to you, so it's easier to track what are the
> community contribution to the project.
>
> Thanks,
> Jessica****
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Atanas Gegov
> Sent: Monday, April 22, 2013 5:06 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [eclipse-poky][RFC 0/6] Introducing a
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
> building in Eclipse) and some template projects. However, I already wante=
d
> to post this series for a review and make sure that the concept is
> acceptable, so that we can build on top of it.
>
> Cheers, Atanas
>
> P.S: This patch series apply on the current master "plugins/sdk.ide:
> Extracted error message to YoctoSDKMessages"
> (7142c5fc82a41a9d5f86c48b289db0ef44f5a897).
>
> Atanas Gegov (6):
>   plugins/sdk.ide: Prepared templates for CMake nature
>   plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
>   plugins/sdk.ide: Enable the creation of CMake projects
>   plugins/sdk.ide: Update CMake projects on Yocto settings change
>   plugins/sdk.ide: Renamed template process
>   plugins/sdk.ide: Fixed whitespace issues
>
>  .../OSGI-INF/l10n/bundle.properties                |    1 +
>  plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
>  .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
>  .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
>  .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245
> -------------------
>  .../ide/wizard/NewYoctoProjectTemplateProcess.java |  256
> ++++++++++++++++++++
>  .../EmptyCAutotoolsProject/template.xml            |    1 +
>  .../EmptyCPPAutotoolsProject/template.xml          |    1 +
>  .../HelloWorldCAutotoolsProject/template.xml       |    1 +
>  .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
>  .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
>  11 files changed, 384 insertions(+), 247 deletions(-)  create mode 10064=
4
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProj=
ectNature.java
>  delete mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTe=
mplate.java
>  create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTem=
plateProcess.java
>
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

--047d7b5d8cff5e10ed04db2bd972
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jessica,<br><br>thank you for the input, I will resend =
the patches.<br><br>Best regards,<br>Atanas</div><div class=3D"gmail_extra"=
><br><br><div class=3D"gmail_quote">On Thu, Apr 25, 2013 at 6:27 AM, Zhang,=
 Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" t=
arget=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> wrote:<br>
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
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Please see my comments be=
low=85<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Atanas G=
egov [mailto:<a href=3D"mailto:atanas.gegov.oss@gmail.com" target=3D"_blank=
">atanas.gegov.oss@gmail.com</a>]
<br>
<b>Sent:</b> Wednesday, April 24, 2013 8:48 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKC=
MakeProjectNature<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div><div class=3D"im">
<p class=3D"MsoNormal">Hi Jessica,<br>
<br>
thank you for the comments!<u></u><u></u></p>
</div><div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div><div class=3D"im">
<p><u></u><span>1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=A0=A0=A0=A0=A0
</span></span><u></u>Yes, the idea is that at the end there are the current=
 category (<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;">&quot;Yocto Project ADT Autotools Project&quot; with =
some Autotools-based project templates</span>) and a new category
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">&quot;Yocto Project ADT CMake Project&quot; with e.g. its own &q=
uot;Hello World C++ CMake Project&quot;. The latter category and the templa=
tes will be implemented in the upcoming patch series.=A0<u></u><u></u></spa=
n></p>

</div><p><span style=3D"color:#1f497d">Great that=92s what I=92d expected .=
<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d"><u></u>=A0<u></u></span></p>
</div>
<div><div class=3D"im">
<p><u></u><span>2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=A0=A0=A0=A0=A0
</span></span><u></u>Could you please give me a small example how it should=
 look like?Should the method addNatures receive a list of natures to add? W=
hat is the case if more natures are added to a project (e.g. SDKNature + Au=
totoolsNature + EmptyNature)?
 Or do you think of enum based on the buildsystem natures only (Autotools v=
s. CMake) and not based on all 4 natures?<u></u><u></u></p>
</div><p><span style=3D"color:#1f497d">I took another look of the class, we=
 should be able to even further simplify the API of addNatures.=A0 We can m=
ake all the natures as instance variables of the class.=A0 In process metho=
d we assign them values
 and totally eliminate passing natures in addNatures API.=A0 So the code sh=
ould be(please ignore the incorrect capitalization due to auto correction):=
<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d"><u></u>=A0<u></u></span></p>
<p><span style=3D"color:#1f497d">Public class NewYoctoProjectTemplateProces=
s extends ProcessRunner {<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=85<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Private =
Boolean isEmptyProject;
<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Private =
Boolean isAutotoolsProject;<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Private =
Boolean isCMakeProject;<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=85<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Public v=
oid process(=85) {<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =85<u></=
u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 isEmptyProject =3D =85<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 isAutotoolsProject =3D =85<u></u><u></u></span>=
</p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 isCMakeProject =3D =85<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =85<u></=
u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 addNatures(project, false, monitor);<u></u><u><=
/u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =85<u></=
u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }<u></u>=
<u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =85<u></=
u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Private =
void addNatures(IProject project, Boolean projectExists, IProgressMonitor m=
onitor) {<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =85<u></u><u></u></span></p>
<p><span style=3D"color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }<u></u>=
<u></u></span></p>
<p><span style=3D"color:#1f497d"><u></u>=A0<u></u></span></p>
</div>
<div><div class=3D"im">
<p><u></u><span>3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=A0=A0=A0=A0=A0
</span></span><u></u>I just created an account in=A0<a href=3D"http://bugzi=
lla.yoctoproject.org/" target=3D"_blank"><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">bugzilla.yoctoproject.o=
rg</span></a>, so you can assign me the CMake support entry.<u></u><u></u><=
/p>

</div><p><span style=3D"color:#1f497d">Super.=A0 You=92ll get your first as=
signment
</span><span style=3D"font-family:Wingdings;color:#1f497d">J</span><span st=
yle=3D"color:#1f497d"><u></u><u></u></span></p>
</div><div><div class=3D"h5">
<div>
<p class=3D"MsoNormal"><br>
Thanks,<br>
Atanas<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Tue, Apr 23, 2013 at 8:50 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<u></u><u></u></p>
<p class=3D"MsoNormal">Hi Atanas,<br>
<br>
Overall, the patches look good. =A0Couple comments:<br>
<br>
1. So from the end user perspective, after the 2nd patch set, user will see=
 &quot;Yocto Project ADT CMake Project&quot; category when they want to cre=
ate a new project?<br>
2. Can we change the API for addNatures by using an enum type for projectNa=
ture instead of explicitly listing all of them out. =A0This way is easier f=
or code maintenance and API usability.<br>
3. Don&#39;t know whether you&#39;ve created a bugzilla account at <a href=
=3D"http://bugzilla.yoctoproject.org" target=3D"_blank">
bugzilla.yoctoproject.org</a> or not, if not, please do, since I&#39;d hope=
 you&#39;re able to help fixing certain bugs in this area down the road. =
=A0Also, from project planning process wise, we&#39;re right in the 1.5 pla=
nning, and I&#39;d like to create an entry in the bugzilla
 for extending eclipse for CMake support and assign that to you, so it&#39;=
s easier to track what are the community contribution to the project.<br>
<br>
Thanks,<br>
Jessica<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@y=
octoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] On B=
ehalf Of Atanas Gegov<br>

Sent: Monday, April 22, 2013 5:06 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
Subject: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProject=
Nature<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de" target=
=3D"_blank">atanas.gegov@bmw-carit.de</a>&gt;<br>
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
n Eclipse) and some template projects. However, I already wanted to post th=
is series for a review and make
 sure that the concept is acceptable, so that we can build on top of it.<br=
>
<br>
Cheers, Atanas<br>
<br>
P.S: This patch series apply on the current master &quot;plugins/sdk.ide:<b=
r>
Extracted error message to YoctoSDKMessages&quot;<br>
(7142c5fc82a41a9d5f86c48b289db0ef44f5a897).<br>
<br>
Atanas Gegov (6):<br>
=A0 plugins/sdk.ide: Prepared templates for CMake nature<br>
=A0 plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature<br>
=A0 plugins/sdk.ide: Enable the creation of CMake projects<br>
=A0 plugins/sdk.ide: Update CMake projects on Yocto settings change<br>
=A0 plugins/sdk.ide: Renamed template process<br>
=A0 plugins/sdk.ide: Fixed whitespace issues<br>
<br>
=A0.../OSGI-INF/l10n/bundle.properties =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A01 +<br>
=A0plugins/org.yocto.sdk.ide/plugin.xml =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 2=
5 +-<br>
=A0.../ide/natures/YoctoSDKCMakeProjectNature.java =A0 =A0| =A0 92 +++++++<=
br>
=A0.../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | =A0 =A07 +-<br>
=A0.../sdk/ide/wizard/NewYoctoCProjectTemplate.java =A0 | =A0245 ----------=
---------<br>
=A0.../ide/wizard/NewYoctoProjectTemplateProcess.java | =A0256 ++++++++++++=
++++++++<br>
=A0.../EmptyCAutotoolsProject/template.xml =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
1 +<br>
=A0.../EmptyCPPAutotoolsProject/template.xml =A0 =A0 =A0 =A0 =A0| =A0 =A01 =
+<br>
=A0.../HelloWorldCAutotoolsProject/template.xml =A0 =A0 =A0 | =A0 =A01 +<br=
>
=A0.../HelloWorldCGTKAutotoolsProject/template.xml =A0 =A0| =A0 =A01 +<br>
=A0.../HelloWorldCPPAutotoolsProject/template.xml =A0 =A0 | =A0 =A01 +<br>
=A011 files changed, 384 insertions(+), 247 deletions(-) =A0create mode 100=
644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakePr=
ojectNature.java<br>
=A0delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizar=
d/NewYoctoCProjectTemplate.java<br>
=A0create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizar=
d/NewYoctoProjectTemplateProcess.java<br>
<br>
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
</div>
</div></div></div>
</div>
</div>
</div>

</blockquote></div><br></div>

--047d7b5d8cff5e10ed04db2bd972--
