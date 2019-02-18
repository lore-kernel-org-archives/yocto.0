Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED639E00A1A; Mon, 18 Feb 2019 11:37:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6563E0095C
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:37:33 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id p25so20241217qtb.3
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M/C3CvfjEsUmem0j1pUymiSbeO8NikJOJzKbmaVTkuA=;
	b=hFUNJwLNxngBFdieEpOMbgrmg9ej/u46NMqX7OXY9J5wriNka7DXI8/dP3FO/VKsLW
	wui0A+i9YKga4jjVsVbLZE5r+PqCxiXwwqsXL6VjtQ8cn9I/pPBFy9oKdUD5U3TgPPg9
	UfaXO6lxAkaMXsQzUr2IEgzPP8Rv78UCiNV8lc9VPV30pV7TiWbTOPoHYE1VrWEqG4rp
	06yJr+I256TgEGWgfg2nHKG72yqtQgRLfdZR4a4j2P+Sm+9v5TDxWnymENVbLGxqlf+O
	FQyLSDeUzjafCnySkZzuEhcurQRyNh5cmG3vKICTmEUK5iqov2nwpdpcZ0j14b4Xrkhm
	1Y5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M/C3CvfjEsUmem0j1pUymiSbeO8NikJOJzKbmaVTkuA=;
	b=p81ObmdLTylaH76f6pTeaVQ9vh8gNfQnoe/2Zo1tPfMQIob9/iGkSa7VYNROokEj0s
	+TzlMgYktpKqHZJ1TLt3pLKuGoPQGIe5eIGmRQL5vTqg//GegkhsPlnY7WJwujxRim73
	oTfS5hIL83OnxECZekNKueZ6uP5ehNiLgIKY36FVpUhNzOVzNJ2HJSdY6ynwOY8lW/0A
	kUFhb2HEFyZuNTeHQF2hq+5zpsc+ETq9E+qXS5jDps4tR7m86OpFEXSifrLmffHUFdTG
	eK7cQEVIP2phWsPYKinswwoqJYyYQvYzwN9cSf30OhrnMj8iejWTzcUqEjNy155SsXp4
	ya2A==
X-Gm-Message-State: AHQUAuZ35ZYjAzTJ2qlL7+SeZzb3vf3jhyH011o7t+ZlXvGjRu0oBp09
	C8y/xBdfrVqsWX9dXJO7wA67rKUV7ExGGSFyDLf2mGu2Hjg=
X-Google-Smtp-Source: AHgI3IY6MchnHUKvWH0Ev/xSIxQcDSCDPUxPdUPjX4eaAyZYk7y3OiYjcEOUltaJnJvjI1NAjx1iarB1NgUzrRHemw8=
X-Received: by 2002:a0c:9428:: with SMTP id h37mr5400764qvh.42.1550518652954; 
	Mon, 18 Feb 2019 11:37:32 -0800 (PST)
MIME-Version: 1.0
References: <001301d4c2f2$e94a45a0$bbded0e0$@aktyon.com>
In-Reply-To: <001301d4c2f2$e94a45a0$bbded0e0$@aktyon.com>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Mon, 18 Feb 2019 11:37:22 -0800
Message-ID: <CAHSUxjRN5d9R57CZGTm9avr_Min0D23AjoYTQ6yNTq+DtAUrRQ@mail.gmail.com>
To: andrew.rudd@aktyon.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto General purpose evaluation
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
X-List-Received-Date: Mon, 18 Feb 2019 19:37:35 -0000
X-Groupsio-MsgNum: 44141
Content-Type: multipart/related; boundary="00000000000087c1b60582304150"

--00000000000087c1b60582304150
Content-Type: multipart/alternative; boundary="00000000000087c1b4058230414f"

--00000000000087c1b4058230414f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sounds like you should be using an embedded Linux, since only including the
minimum required software will help keep your image small and power usage
down. Removing audio, video and usb, including from your kernel config,
should drastically reduce your size.

You should consider the value of a read only FS, since I'd assume you'll
have random power loss due to solar being your primary power source.
Yocto/Buildroot will be much better with that.

For Yocto vs Buildroot, here's a good place to start for your research:
https://lwn.net/Articles/682540/. In my experience, Buildroot is easy,
simple, and great as long as you're building one thing. Yocto is much more
powerful and if you need more than what Buildroot can provide then you're
better off investing your time learning Yocto instead of learning how to
modify Buildroot, IMO.

On Mon, Feb 18, 2019 at 10:33 AM <andrew.rudd@aktyon.com> wrote:

> Hello,
>
>
>
> I=E2=80=99m looking to evaluate the general purpose/utility of a custom b=
uild
> Yocto embedded OS. I=E2=80=99m trying to get my head around the benefits =
of using
> such an OS. I=E2=80=99m sure it=E2=80=99s on case by case basis so let me=
 provide my
> background and requirements.
>
>
>
> Background/requirements
>
> Currently using Debian OS on my prototype build based on a Beaglebone
> green wireless.
>
> Custom software is constructed in java.
>
> System utilizes 9 axis accelerometer, vibration sensor, Bluetooth, WiFi,
> LTE-M, GNSS, power management (through BB I2c and GPIO channels)
>
> It runs on a battery and solar.
>
> Power usage is important. Standby is used and still needs to listen for
> vibration sensor, Bluetooth and LTE-m cellular events.
>
> Only constrained by power usage and data usage. Processor or memory usage
> are unconstrained except for in relation to power usage.
>
> Minimizing data usage if an OS update is needed would be an advantage.
>
> No audio , video, USB or GUI is used.
>
>
>
>
>
> So would there be a significant benefit seen by using a custom Yocto buil=
d
> or would a GUIless version of Debian be just as effective? Also consideri=
ng
> Buildroot if that would be just as effective and simpler to execute. If
> anyone has any other thoughts or concerns I would love to discuss. Thank
> you for your time.
>
>
>
> Thank you,
>
> Andrew Rudd
>
> President, Aktyon
>
> 352-256-8086
>
> Andrew.Rudd@Aktyon.com
>
> [image: AktyonLogoAndFontSignature]
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=20
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--00000000000087c1b4058230414f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Sounds like you should be using an embedd=
ed Linux, since only including the minimum required software will help keep=
 your image small and power usage down. Removing audio, video and usb, incl=
uding from your kernel config, should drastically reduce your size.=C2=A0<d=
iv><br></div><div>You should consider the value of a read only FS, since I&=
#39;d assume you&#39;ll have random power loss due to solar being your prim=
ary power source. Yocto/Buildroot will be much better with that.</div><div>=
<br></div><div>For Yocto vs Buildroot, here&#39;s a good place to start for=
 your research:=C2=A0<a href=3D"https://lwn.net/Articles/682540/">https://l=
wn.net/Articles/682540/</a>. In my experience, Buildroot is easy, simple, a=
nd great as long as you&#39;re building one thing. Yocto is much more power=
ful and if you need more than what Buildroot can provide then you&#39;re be=
tter off investing your time learning Yocto instead of learning how to modi=
fy Buildroot, IMO.</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 18, 2019 at 10:33 AM &lt;<a href=
=3D"mailto:andrew.rudd@aktyon.com">andrew.rudd@aktyon.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US=
"><div class=3D"gmail-m_-1361485301329218260WordSection1"><p class=3D"MsoNo=
rmal">Hello,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></=
p><p class=3D"MsoNormal">I=E2=80=99m looking to evaluate the general purpos=
e/utility of a custom build Yocto embedded OS. I=E2=80=99m trying to get my=
 head around the benefits of using such an OS. I=E2=80=99m sure it=E2=80=99=
s on case by case basis so let me provide my background and requirements.<u=
></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"=
MsoNormal">Background/requirements<u></u><u></u></p><p class=3D"MsoNormal">=
Currently using Debian OS on my prototype build based on a Beaglebone green=
 wireless. <u></u><u></u></p><p class=3D"MsoNormal">Custom software is cons=
tructed in java.<u></u><u></u></p><p class=3D"MsoNormal">System utilizes 9 =
axis accelerometer, vibration sensor, Bluetooth, WiFi, LTE-M, GNSS, power m=
anagement (through BB I2c and GPIO channels)<u></u><u></u></p><p class=3D"M=
soNormal">It runs on a battery and solar.<u></u><u></u></p><p class=3D"MsoN=
ormal">Power usage is important. Standby is used and still needs to listen =
for vibration sensor, Bluetooth and LTE-m cellular events.<u></u><u></u></p=
><p class=3D"MsoNormal">Only constrained by power usage and data usage. Pro=
cessor or memory usage are unconstrained except for in relation to power us=
age.<u></u><u></u></p><p class=3D"MsoNormal">Minimizing data usage if an OS=
 update is needed would be an advantage. <u></u><u></u></p><p class=3D"MsoN=
ormal">No audio , video, USB or GUI is used.<u></u><u></u></p><p class=3D"M=
soNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p><p class=3D"MsoNormal">So would there be a significant benefit seen b=
y using a custom Yocto build or would a GUIless version of Debian be just a=
s effective? Also considering Buildroot if that would be just as effective =
and simpler to execute. If anyone has any other thoughts or concerns I woul=
d love to discuss. Thank you for your time.<u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thank you,<u></u><u=
></u></p><p class=3D"MsoNormal">Andrew Rudd<u></u><u></u></p><p class=3D"Ms=
oNormal">President, Aktyon<u></u><u></u></p><p class=3D"MsoNormal">352-256-=
8086<u></u><u></u></p><p class=3D"MsoNormal"><a href=3D"mailto:Andrew.Rudd@=
Aktyon.com" target=3D"_blank"><span style=3D"color:blue">Andrew.Rudd@Aktyon=
.com</span></a><u></u><u></u></p><p class=3D"MsoNormal"><img border=3D"0" w=
idth=3D"230" height=3D"56" style=3D"width: 2.3958in; height: 0.5833in;" id=
=3D"gmail-m_-1361485301329218260Picture_x0020_1" src=3D"cid:16902162e524cff=
311" alt=3D"AktyonLogoAndFontSignature"><u></u><u></u></p><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p></div></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--00000000000087c1b4058230414f--

--00000000000087c1b60582304150
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <16902162e524cff311>
X-Attachment-Id: 16902162e524cff311

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

--00000000000087c1b60582304150--
