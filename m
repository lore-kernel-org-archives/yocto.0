Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5080EE014E0
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 08:47:49 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id h11so2279843wiv.13
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 08:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=hWJGv+FWdGE6VOUjN3luRw155zMy4bl3ofGSjdS54K8=;
	b=vanuiqEjC7gxkiw/V25/lWmZh7gEMmdjldVwQM7fn+oBjliZHSg4cYJDJDU7YB7OT6
	9CppSd6dieEOq5fRd9AgKQf+dLQu0qEnrx+R6muJJQoBGuaWIyVckvZMvrFUrHkib9Fs
	JDFhUPgdrYqTDA9LdQQIUGZ08alCVrLLhu/WueQtdS9aBZUMtJx6BTeAa0Z2a5Icqfgd
	j3/5JUjTSaU+M8n6DTHi71adf9x8dWIx537LIRDfVYmsGocQIiKR3jpg+REm7h4EgG9T
	K6EvWjlFW3FUW/9Ms9hsZTlKx7EHawSgXvOZdCHVJJ853ZP21//aFFb9e5y4bwhgFAA4
	dQoQ==
MIME-Version: 1.0
X-Received: by 10.181.11.164 with SMTP id ej4mr27926863wid.29.1366818467792;
	Wed, 24 Apr 2013 08:47:47 -0700 (PDT)
Received: by 10.227.160.201 with HTTP; Wed, 24 Apr 2013 08:47:47 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6FDCDC04@ORSMSX104.amr.corp.intel.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDCDC04@ORSMSX104.amr.corp.intel.com>
Date: Wed, 24 Apr 2013 17:47:47 +0200
Message-ID: <CAEe+mUaBtaM5hby00ACs-N_oZWMHeO2eqxt_2G5h8B-hvqtrsA@mail.gmail.com>
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
X-List-Received-Date: Wed, 24 Apr 2013 15:47:49 -0000
Content-Type: multipart/alternative; boundary=f46d0438914b3ecf2404db1d3945

--f46d0438914b3ecf2404db1d3945
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

thank you for the comments!

1. Yes, the idea is that at the end there are the current category ("Yocto
Project ADT Autotools Project" with some Autotools-based project templates)
and a new category "Yocto Project ADT CMake Project" with e.g. its own
"Hello World C++ CMake Project". The latter category and the templates will
be implemented in the upcoming patch series.
2. Could you please give me a small example how it should look like?Should
the method addNatures receive a list of natures to add? What is the case if
more natures are added to a project (e.g. SDKNature + AutotoolsNature +
EmptyNature)? Or do you think of enum based on the buildsystem natures only
(Autotools vs. CMake) and not based on all 4 natures?
3. I just created an account in bugzilla.yoctoproject.org, so you can
assign me the CMake support entry.

Thanks,
Atanas


On Tue, Apr 23, 2013 at 8:50 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

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
> you're able to help fixing certain bugs in this area down the road.  Also,
> from project planning process wise, we're right in the 1.5 planning, and
> I'd like to create an entry in the bugzilla for extending eclipse for CMake
> support and assign that to you, so it's easier to track what are the
> community contribution to the project.
>
> Thanks,
> Jessica
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
> building in Eclipse) and some template projects. However, I already wanted
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
>  11 files changed, 384 insertions(+), 247 deletions(-)  create mode 100644
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

--f46d0438914b3ecf2404db1d3945
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jessica,<br><br>thank you for the comments!<div><br><di=
v style>1. Yes, the idea is that at the end there are the current category =
(<span style=3D"font-family:arial,sans-serif;font-size:13px">&quot;Yocto Pr=
oject ADT Autotools Project&quot; with some Autotools-based project templat=
es</span>) and a new category <span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">&quot;Yocto Project ADT CMake Project&quot; with e.g. its ow=
n &quot;Hello World C++ CMake Project&quot;. The latter category and the te=
mplates will be implemented in the upcoming patch series.=A0</span></div>
<div style>2. Could you please give me a small example how it should look l=
ike?Should the method addNatures receive a list of natures to add? What is =
the case if more natures are added to a project (e.g. SDKNature + Autotools=
Nature + EmptyNature)? Or do you think of enum based on the buildsystem nat=
ures only (Autotools vs. CMake) and not based on all 4 natures?</div>
<div style>3. I just created an account in=A0<a href=3D"http://bugzilla.yoc=
toproject.org/" target=3D"_blank" style=3D"font-size:13px;font-family:arial=
,sans-serif">bugzilla.yoctoproject.org</a>, so you can assign me the CMake =
support entry.</div>
<div><br>Thanks,<br>Atanas<div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Tue, Apr 23, 2013 at 8:50 PM, Zhang, Jessica <span dir=3D"l=
tr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessic=
a.zhang@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hi Atanas,<br>
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
=3D"http://bugzilla.yoctoproject.org" target=3D"_blank">bugzilla.yoctoproje=
ct.org</a> or not, if not, please do, since I&#39;d hope you&#39;re able to=
 help fixing certain bugs in this area down the road. =A0Also, from project=
 planning process wise, we&#39;re right in the 1.5 planning, and I&#39;d li=
ke to create an entry in the bugzilla for extending eclipse for CMake suppo=
rt and assign that to you, so it&#39;s easier to track what are the communi=
ty contribution to the project.<br>

<br>
Thanks,<br>
Jessica<br>
<div><div class=3D"h5"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Monday, April 22, 2013 5:06 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProject=
Nature<br>
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
n Eclipse) and some template projects. However, I already wanted to post th=
is series for a review and make sure that the concept is acceptable, so tha=
t we can build on top of it.<br>

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
1.7.9.5<br>
<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></div></div></div>

--f46d0438914b3ecf2404db1d3945--
