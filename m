Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5604E00BAE; Tue, 10 Jun 2014 12:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9E4FE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:51:20 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id n3so4203401wiv.3
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OOgBvX48XnJUQSNzJZFoq12ZiLzSRN1ZwoFyUbc6cHg=;
	b=XX4rRayo4G/Osj+kuIR+QCiDjlSHHFeXS4iukRg+kynqt/3ZP8NdVMQyi2C3JXzchP
	6ijCKxcV9OMuQNiMeGzZdYPblTuGbM58g31KJpvsG0UI4GhdrMspWh7k//VugMqJlOlm
	p5HQ1gVE1/Kme+YYMnNS++SptOCUsu/oalhLs6QrcH7slBJo6KpL7WSVFTeXxvx/mFOD
	OQ6cQXkX1zCGdue1F/9DoyIzM4RHc95ttlLLX279GERPqyeAPrzsAN1s7nCcETQTNzda
	SCiMcF9AtVyRHzLUw+1+G2DGwwGnQD0ps1oykg6y22lUk7CSxDFq7OFmh4jY+RE5jO+0
	279w==
X-Gm-Message-State: ALoCoQmc+d4j00/XCiFlNkWezkpx51KGkKW750/j0eilM2wez5l28iKgqSFC72hFmlgCnKgFVGJt
X-Received: by 10.194.222.197 with SMTP id qo5mr18150814wjc.78.1402429879879; 
	Tue, 10 Jun 2014 12:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 12:50:58 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 22:50:58 +0300
Message-ID: <CAK18fxGb7aYv1f-3qfoJDiNKM4C7FfiKVOUJk5D0JaU7uCEnig@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] pi-blaster: Add recipe
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
X-List-Received-Date: Tue, 10 Jun 2014 19:51:24 -0000
Content-Type: multipart/alternative; boundary=001a11c3a99ad01b3f04fb80a680

--001a11c3a99ad01b3f04fb80a680
Content-Type: text/plain; charset=UTF-8

Hi Alex,


On Tue, May 20, 2014 at 5:40 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

> Please see following patch for details.
>
> The following changes since commit
> f3a8693f08f99893453fd1fe282515b2f222c080:
>
>   omxplayer: Update to remote's HEAD (2014-05-09 14:56:59 +0300)
>
> are available in the git repository at:
>
>   git://github.com/DynamicDevices/meta-raspberrypi ajl/pi-blaster
>   https://github.com/DynamicDevices/meta-raspberrypi/tree/master
>
> Alex J Lennon (1):
>   pi-blaster: Added recipe
>
>  recipes-devtools/pi-blaster/files/initscript.patch | 71
> ++++++++++++++++++++++
>  recipes-devtools/pi-blaster/pi-blaster.inc         | 36 +++++++++++
>  recipes-devtools/pi-blaster/pi-blaster_git.bb      |  3 +
>  3 files changed, 110 insertions(+)
>  create mode 100644 recipes-devtools/pi-blaster/files/initscript.patch
>  create mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc
>  create mode 100644 recipes-devtools/pi-blaster/pi-blaster_git.bb


You missed the actual patch so I will give my feedback listed below:
1. Refactor commit log.
2. One space left after "oe_runmake".
3. Why exactly do you need oe_runmake after all?
4. I would replace the do install/configure appends with a patch on
Makefile (would be useful for the project's maintainer too).
5. Please add comments to patches too. Here is an example:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch

Thanks,


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c3a99ad01b3f04fb80a680
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alex,<br><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Tue, May 20, 2014 at 5:40 PM, Alex J Lennon <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_bl=
ank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Please see following patch for details.<br>
<br>
The following changes since commit f3a8693f08f99893453fd1fe282515b2f222c080=
:<br>
<br>
=C2=A0 omxplayer: Update to remote&#39;s HEAD (2014-05-09 14:56:59 +0300)<b=
r>
<br>
are available in the git repository at:<br>
<br>
=C2=A0 git://<a href=3D"http://github.com/DynamicDevices/meta-raspberrypi" =
target=3D"_blank">github.com/DynamicDevices/meta-raspberrypi</a> ajl/pi-bla=
ster<br>
=C2=A0 <a href=3D"https://github.com/DynamicDevices/meta-raspberrypi/tree/m=
aster" target=3D"_blank">https://github.com/DynamicDevices/meta-raspberrypi=
/tree/master</a><br>
<br>
Alex J Lennon (1):<br>
=C2=A0 pi-blaster: Added recipe<br>
<br>
=C2=A0recipes-devtools/pi-blaster/files/initscript.patch | 71 +++++++++++++=
+++++++++<br>
=C2=A0recipes-devtools/pi-blaster/pi-blaster.inc =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 36 +++++++++++<br>
=C2=A0recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" targ=
et=3D"_blank">pi-blaster_git.bb</a> =C2=A0 =C2=A0 =C2=A0| =C2=A03 +<br>
=C2=A03 files changed, 110 insertions(+)<br>
=C2=A0create mode 100644 recipes-devtools/pi-blaster/files/initscript.patch=
<br>
=C2=A0create mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc<br>
=C2=A0create mode 100644 recipes-devtools/pi-blaster/<a href=3D"http://pi-b=
laster_git.bb" target=3D"_blank">pi-blaster_git.bb</a></blockquote><div><br=
></div><div>You missed the actual patch so I will give my feedback listed b=
elow:</div>

<div>1. Refactor commit log.</div><div>2. One space left after &quot;oe_run=
make&quot;.</div><div>3. Why exactly do you need oe_runmake after all?</div=
><div>4. I would replace the do install/configure appends with a patch on M=
akefile (would be useful for the project&#39;s maintainer too).</div>

<div>5. Please add comments to patches too. Here is an example:</div><div><=
a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/r=
ecipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch">htt=
p://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bsp/rp=
i-mkimage/rpi-mkimage/open-files-relative-to-script.patch</a><br>

</div><div><br></div><div>Thanks,</div></div><br clear=3D"all"><div><br></d=
iv>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div styl=
e=3D"text-align:center"><div align=3D"left" style=3D"font-family:&#39;Times=
 New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--001a11c3a99ad01b3f04fb80a680--
