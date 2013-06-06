Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26BB1E01568
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 04:07:18 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id 12so1859381vbf.32
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2013 04:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=Wfku3mC5Uze4Y+ilWA2RLrvz6D7IZfSa/bCIAYibSWA=;
	b=fRS1CxuaX8AFPowvf9/XS1AjfXW0Qoqz3Lem4lohgAkY1NU1PREI+hHSbHPcOKOm6z
	w+7Tarmml+oX0nrmWyYDvZTHaz4ptNMEvRTOT6vMnnlyPaFB/Zi5L7gC8WlaUi2Iuh1M
	VyijWBnD6t7MkwNV8eauwh3DdYVbW+0OCrxumq17VkMUlJWEFhAnNmBxLsHpYxqd2zpi
	q+ZUEGX4O10lreUWiaUI0mfEbth4XQv6FSvRfAt6ZHB0mQkl8njnUfR2wQ5UsZlzUHsR
	xnagoGSVHmLUhVxaup/aPoItENUQ6FsvjYvIVGgRhDOmRWCznx0JSGbIPrM/ge7KnMfY
	6MeQ==
MIME-Version: 1.0
X-Received: by 10.52.65.238 with SMTP id a14mr18464738vdt.24.1370516837505;
	Thu, 06 Jun 2013 04:07:17 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Thu, 6 Jun 2013 04:07:17 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
Date: Thu, 6 Jun 2013 13:07:17 +0200
X-Google-Sender-Auth: xm-iYxWY6-SXL3Hwxu9W1fvHXac
Message-ID: <CAFMfyzJb4U0AXTfC80TtizhX_AzOxuDk5D_Lkgz10SopdTGxWA@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Application Development
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
X-List-Received-Date: Thu, 06 Jun 2013 11:07:18 -0000
Content-Type: multipart/alternative; boundary=20cf307f33724284b904de7a51bd

--20cf307f33724284b904de7a51bd
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Jessica & Philip,

I have an issue... This is such a long error ... I even did a fresh build
by deleting the "tmp" directory. The image build went very well but the
toolchain is always giving me a error...

*| Selecting previously unselected package xz-dev.*
*| Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...*
*| The following package disappeared from your system as*
*| all files have been overwritten by other packages:*
*|   avahi*
*| log_check: Using
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-=
linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
as logfile*
*| Logfile is clean*
*| Installing NATIVESDK packages*
*| Ign file: ./ InRelease*
*| Ign file: ./ InRelease*
*| Ign file: ./ Release.gpg*
*| Ign file: ./ Release.gpg*
*| Get:1 file: ./ Release [24 B]*
*| Get:2 file: ./ Release [11 B]*
*| Ign file: ./ Translation-en*
*| Ign file: ./ Translation-en*
*| Reading package lists...*
*| W: Ignoring Provides line with DepCompareOp for package
nativesdk-pkgconfig__pkg-config__*
*| W: You may want to run apt-get update to correct these problems*
*| Reading package lists...*
*| Building dependency tree...*
*| Reading state information...*
*| Some packages could not be installed. This may mean that you have*
*| requested an impossible situation or if you are using the unstable*
*| distribution that some required packages have not yet been created*
*| or been moved out of Incoming.*
*| The following information may help to resolve the situation:*
*| *
*| The following packages have unmet dependencies:*
*|  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but
it is not installable*
*|                                    Depends: gcc-cross-canadian-arm but
it is not installable*
*|                                    Depends: meta-environment-arm but it
is not installable*
*|                                    Depends: binutils-cross-canadian-arm
but it is not installable*
*| W: Ignoring Provides line with DepCompareOp for package
nativesdk-pkgconfig__pkg-config__*
*| W: You may want to run apt-get update to correct these problems*
*| E: Unable to correct problems, you have held broken packages.*
*| DEBUG: Python function do_populate_sdk finished*
*| ERROR: Function failed: populate_sdk_image (see
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-=
linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
for further information)*
*ERROR: Task 10 (/home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_populate_sdk) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to be
rerun and 1 failed.*
*
*
*Summary: 1 task failed:*
*  /home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_populate_sdk*
*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*

I am not able to install those packages as they say there are no
installation candidate for them...


On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <jessica.zhang@intel.com>wro=
te:

>  Hi Satya,****
>
> ** **
>
> Use bitbake image-name =96c populate_sdk, this allows you to create a
> toolchain with sysroot that match your target image that allows you to
> develop app against=85****
>
> ** **
>
> Cheers,****
>
> Jessica****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Satya Swaroop Damarla
> *Sent:* Wednesday, June 05, 2013 6:05 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Application Development****
>
> ** **
>
> Hi Guys,****
>
> ** **
>
> I have an issue... I created a custom image based on NVIDIA Tegra2 with a
> custom kernel. I installed  packages specific Tegra board and application
> specific. Now we want to send the baord and the new linux image for
> application development... ****
>
> ** **
>
> As I went through ADT manual, I only found qemu based toolchains but I
> want to create toolchain based on my rootfs and kernel... so that the
> development team can develop a voip application for the board... I am kin=
d
> of stuck how to proceed in this issue...****
>
> ** **
>
> I really need a small way out and hopefully I will catch things
> automatically..****
>
> ** **
>
> Cheers,****
>
> Satya****
>

--20cf307f33724284b904de7a51bd
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Hi Jessica &amp; Philip,</span><div style=3D"font-family:arial,sans-serif=
;font-size:13px"><br></div><div style=3D"font-family:arial,sans-serif;font-=
size:13px">
I have an issue... This is such a long error ... I even did a fresh build b=
y deleting the &quot;tmp&quot; directory. The image build went very well bu=
t the toolchain is always giving me a error... =A0</div><div style=3D"font-=
family:arial,sans-serif;font-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| S=
electing previously unselected package xz-dev.</i></div><div style=3D"font-=
family:arial,sans-serif;font-size:13px"><i>| Unpacking xz-dev (from .../xz-=
dev_5.1.2alpha-r0_armel.deb) ...</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| The followi=
ng package disappeared from your system as</i></div><div style=3D"font-fami=
ly:arial,sans-serif;font-size:13px"><i>| all files have been overwritten by=
 other packages:</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| =A0 avahi</=
i></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| log=
_check: Using /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata=
_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_=
sdk.4066 as logfile</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| Logfile is =
clean</i></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><=
i>| Installing NATIVESDK packages</i></div><div style=3D"font-family:arial,=
sans-serif;font-size:13px">
<i>| Ign file: ./ InRelease</i></div><div style=3D"font-family:arial,sans-s=
erif;font-size:13px"><i>| Ign file: ./ InRelease</i></div><div style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><i>| Ign file: ./ Release.gpg</i>=
</div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| Ign file: .=
/ Release.gpg</i></div><div style=3D"font-family:arial,sans-serif;font-size=
:13px"><i>| Get:1 file: ./ Release [24 B]</i></div><div style=3D"font-famil=
y:arial,sans-serif;font-size:13px">
<i>| Get:2 file: ./ Release [11 B]</i></div><div style=3D"font-family:arial=
,sans-serif;font-size:13px"><i>| Ign file: ./ Translation-en</i></div><div =
style=3D"font-family:arial,sans-serif;font-size:13px"><i>| Ign file: ./ Tra=
nslation-en</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| Reading pac=
kage lists...</i></div><div style=3D"font-family:arial,sans-serif;font-size=
:13px"><i>| W: Ignoring Provides line with DepCompareOp for package natives=
dk-pkgconfig__pkg-config__</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| W: You may =
want to run apt-get update to correct these problems</i></div><div style=3D=
"font-family:arial,sans-serif;font-size:13px"><i>| Reading package lists...=
</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| Building de=
pendency tree...</i></div><div style=3D"font-family:arial,sans-serif;font-s=
ize:13px"><i>| Reading state information...</i></div><div style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">
<i>| Some packages could not be installed. This may mean that you have</i><=
/div><div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| reques=
ted an impossible situation or if you are using the unstable</i></div><div =
style=3D"font-family:arial,sans-serif;font-size:13px">
<i>| distribution that some required packages have not yet been created</i>=
</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| or be=
en moved out of Incoming.</i></div><div style=3D"font-family:arial,sans-ser=
if;font-size:13px">
<i>| The following information may help to resolve the situation:</i></div>=
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>|=A0</i></div=
><div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| The follow=
ing packages have unmet dependencies:</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| =A0packageg=
roup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but it is not ins=
tallable</i></div><div style=3D"font-family:arial,sans-serif;font-size:13px=
">
<i>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0Depends: gcc-cross-canadian-arm but it is not installable</i></div><div =
style=3D"font-family:arial,sans-serif;font-size:13px"><i>| =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends: meta-enviro=
nment-arm but it is not installable</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends: binuti=
ls-cross-canadian-arm but it is not installable</i></div><div style=3D"font=
-family:arial,sans-serif;font-size:13px">
<i>| W: Ignoring Provides line with DepCompareOp for package nativesdk-pkgc=
onfig__pkg-config__</i></div><div style=3D"font-family:arial,sans-serif;fon=
t-size:13px"><i>| W: You may want to run apt-get update to correct these pr=
oblems</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| E: Unable t=
o correct problems, you have held broken packages.</i></div><div style=3D"f=
ont-family:arial,sans-serif;font-size:13px"><i>| DEBUG: Python function do_=
populate_sdk finished</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>| ERROR: Func=
tion failed: populate_sdk_image (see /home/damarla/yocto/poky/buildSkidataH=
armony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r=
0/temp/log.do_populate_sdk.4066 for further information)</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>ERROR: Task 1=
0 (/home/damarla/yocto/poky/meta/recipes-graphics/images/<a href=3D"http://=
core-image-skidata.bb/" target=3D"_blank">core-image-skidata.bb</a>, do_pop=
ulate_sdk) failed with exit code &#39;1&#39;</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>NOTE: Tasks S=
ummary: Attempted 5020 tasks of which 4939 didn&#39;t need to be rerun and =
1 failed.</i></div><div style=3D"font-family:arial,sans-serif;font-size:13p=
x">
<i><br></i></div><div style=3D"font-family:arial,sans-serif;font-size:13px"=
><i>Summary: 1 task failed:</i></div><div style=3D"font-family:arial,sans-s=
erif;font-size:13px"><i>=A0 /home/damarla/yocto/poky/meta/recipes-graphics/=
images/<a href=3D"http://core-image-skidata.bb/" target=3D"_blank">core-ima=
ge-skidata.bb</a>, do_populate_sdk</i></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><i>Summary: Ther=
e was 1 ERROR message shown, returning a non-zero exit code.</i></div><div =
style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div style=
=3D"font-family:arial,sans-serif;font-size:13px">
I am not able to install those packages as they say there are no installati=
on candidate for them...</div></div><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote">On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blan=
k">jessica.zhang@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Satya,<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Use bitbake image-name =
=96c populate_sdk, this allows you to create a toolchain with sysroot that =
match your target image that allows you to develop app against=85<u></u><u>=
</u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Cheers,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jessica<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Satya Swaroop Damarla<br>
<b>Sent:</b> Wednesday, June 05, 2013 6:05 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Application Development<u></u><u></u></span></p><di=
v><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Guys,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have an issue... I created a custom image based on=
 NVIDIA Tegra2 with a custom kernel. I installed =A0packages specific Tegra=
 board and application specific. Now we want to send the baord and the new =
linux image for application development...=A0<u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">As I went through ADT manual, I only found qemu base=
d toolchains but I want to create toolchain based on my rootfs and kernel..=
. so that the development team can develop a voip application for the board=
... I am kind of stuck how to proceed
 in this issue...<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I really need a small way out and hopefully I will c=
atch things automatically..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Cheers,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<u></u><u></u></p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--20cf307f33724284b904de7a51bd--
