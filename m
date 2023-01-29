Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 829A9C05027
	for <webhook@archiver.kernel.org>; Sun, 29 Jan 2023 03:26:58 +0000 (UTC)
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
 by mx.groups.io with SMTP id smtpd.web11.10024.1674962815144938384
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 19:26:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.21, mailfrom: f_l_k@t-online.de)
Received: from fwd70.dcpf.telekom.de (fwd70.aul.t-online.de [10.223.144.96])
	by mailout10.t-online.de (Postfix) with SMTP id 90F0A1DF11;
	Sun, 29 Jan 2023 04:26:52 +0100 (CET)
Received: from [192.168.0.164] ([24.134.105.89]) by fwd70.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1pLyLE-08nZ200; Sun, 29 Jan 2023 04:26:52 +0100
Date: Sun, 29 Jan 2023 04:26:46 +0100
From: f_l_k@t-online.de
Subject: Re: [yocto] Hardware accelerated video decoding and display on AMD
 hardware?
To: Ori Pessach <mail@oripessach.com>
Cc: Tim Orling <ticotimo@gmail.com>, yocto@lists.yoctoproject.org
Message-Id: <MK98PR.D3IKITI1SD132@t-online.de>
In-Reply-To: 
	<CAJekvNS0=+MHczMHbAZHZUsNiihVBp2sRhRBePUCbmVnFusgWQ@mail.gmail.com>
References: 
	<CAJekvNToLOBwvDRmST97En5K6vEb-KB1oe8GOSZHd+qzp3sqcQ@mail.gmail.com>
	<CANx9H-A3Y0WR5zwvqvNm7MwW85aa4KZ2Rq-CTnEpc7gCW8Gt6Q@mail.gmail.com>
	<CAJekvNS0=+MHczMHbAZHZUsNiihVBp2sRhRBePUCbmVnFusgWQ@mail.gmail.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-DZz3aOjA2DzZdQ3YBPRe"
X-TOI-EXPURGATEID: 150726::1674962812-17FFA778-A008C095/0/0 CLEAN NORMAL
X-TOI-MSGID: b5f01e05-7aff-4fb4-9a5f-026f6e0039e3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 29 Jan 2023 03:26:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59097

--=-DZz3aOjA2DzZdQ3YBPRe
Content-Type: text/plain; charset=iso-8859-13; format=flowed
Content-Transfer-Encoding: quoted-printable

You need to enable gallium-llvm and r600 PACKAGECONFIGS for mesa to=20
build the radeonsi driver

On Sat, Jan 28 2023 at 08:07:28 PM -0700, Ori Pessach=20
<mail@oripessach.com> wrote:
> Thanks.
>=20
> Unfortunately, neither xf86-video-amdgpu nor linux-firmware seem to=20
> be available. meta-amd certainly doesn't have them, and =20
> xf86-video-amdgpu is only in a newer branch of meta-oe than the one=20
> I'm currently using.
>=20
> xf86-video-ati is available and I already use it - it doesn't=20
> accelerate OpenGL or video decoding, unfortunately.
>=20
> Regarding meta-amd, its FEATURES.md suggests that it doesn't support=20
> any multimedia features on any of its targeted machines. I'm left=20
> wondering what it does support...
>=20
> Any other suggestions? Or ideas why the mesa recipe doesn't want to=20
> build the radeonsi driver even though the version I'm building=20
> (21.2.4) seems to include it?
>=20
> Thanks,
>=20
> Ori Pessach
>=20
> On Sat, Jan 28, 2023 at 4:29 PM Tim Orling <ticotimo@gmail.com=20
> <mailto:ticotimo@gmail.com>> wrote:
>>=20
>>=20
>> On Sat, Jan 28, 2023 at 2:47 PM Ori Pessach <mail@oripessach.com=20
>> <mailto:mail@oripessach.com>> wrote:
>>> Hello,
>>>=20
>>> I asked this on the meta-amd mailing list but got no response.
>>>=20
>>> Can anyone tell me what needs to be added to an image if I want to=20
>>> enable accelerated video decoding and display on commodity (PC) AMD=20
>>> hardware?
>>>=20
>>> The image is currently running Xorg and, at least on Intel=20
>>> hardware, is capable of accelerated decoding and display using=20
>>> VAAPI and OpenGL. The user application uses gstreamer for decoding=20
>>> and display.
>>=20
>> I don=E2=80=99t have any direct experience, but a search for =E2=80=9CRa=
deon=E2=80=9D=20
>> on layerindex gives some hints:
>> <https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3DR=
adeon>
>>=20
>> So you probably want xf86-video-amdgpu and linux-firmware-amdgpu.
>>=20
>>>=20
>>> Thanks,
>>>=20
>>> Ori Pessach
>>>=20
>>>=20
>>>=20


--=-DZz3aOjA2DzZdQ3YBPRe
Content-Type: text/html; charset=iso-8859-13
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto"><div>You need to enable gallium-llvm an=
d r600 PACKAGECONFIGS for mesa to build the radeonsi driver</div></div><div=
 id=3D"geary-quote" dir=3D"auto"><br>On Sat, Jan 28 2023 at 08:07:28 PM -07=
00, Ori Pessach &lt;mail@oripessach.com&gt; wrote:<br><blockquote type=3D"c=
ite"><div dir=3D"ltr"><div>Thanks.</div><div><br></div><div>Unfortunately, =
neither xf86-video-amdgpu nor linux-firmware seem to be available. meta-amd=
 certainly doesn't have them, and&nbsp; xf86-video-amdgpu is only in a newe=
r branch of meta-oe than the one I'm currently using.</div><div><br></div><=
div>xf86-video-ati is available and I already use it - it doesn't accelerat=
e OpenGL or video decoding, unfortunately. <br></div><div><br></div><div>Re=
garding meta-amd, its FEATURES.md suggests that it doesn't support any mult=
imedia features on any of its targeted machines. I'm left wondering what it=
 does support...</div><div><br></div><div>Any other suggestions? Or ideas w=
hy the mesa recipe doesn't want to build the radeonsi driver even though th=
e version I'm building (21.2.4) seems to include it?</div><div><br></div><d=
iv>Thanks,</div><div><br></div><div>Ori Pessach<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 28, 20=
23 at 4:29 PM Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticotimo=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sat, Jan 28, 2023 at 2:47 PM Ori Pessach &lt;<a=
 href=3D"mailto:mail@oripessach.com" target=3D"_blank">mail@oripessach.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div style=3D"box-sizing:border-box;font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,5=
1)">Hello,</div><div style=3D"box-sizing:border-box;font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,5=
1)"><br style=3D"box-sizing:border-box"></div><div style=3D"box-sizing:bord=
er-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;fo=
nt-size:14px;color:rgb(51,51,51)">I asked this on the meta-amd mailing list=
 but got no response.</div><div style=3D"box-sizing:border-box;font-family:=
&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:=
rgb(51,51,51)"><br></div><div style=3D"box-sizing:border-box;font-family:&q=
uot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rg=
b(51,51,51)">Can anyone tell me what needs to be added to an image if I wan=
t to enable accelerated video decoding and display on commodity (PC) AMD ha=
rdware?</div><div style=3D"box-sizing:border-box;font-family:&quot;Helvetic=
a Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)"=
><br style=3D"box-sizing:border-box"></div><div style=3D"box-sizing:border-=
box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-=
size:14px;color:rgb(51,51,51)">The image is currently running Xorg and, at =
least on Intel hardware, is capable of accelerated decoding and display usi=
ng VAAPI and OpenGL. The user application uses gstreamer for decoding and d=
isplay.</div><div style=3D"box-sizing:border-box;font-family:&quot;Helvetic=
a Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)"=
></div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">I d=
on=E2=80=99t have any direct experience, but a search for =E2=80=9CRadeon=
=E2=80=9D on layerindex gives some hints:</div><div dir=3D"auto"><div><a hr=
ef=3D"https://layers.openembedded.org/layerindex/branch/master/recipes/?q=
=3DRadeon" target=3D"_blank">https://layers.openembedded.org/layerindex/bra=
nch/master/recipes/?q=3DRadeon</a></div><br></div><div dir=3D"auto">So you =
probably want xf86-video-amdgpu and linux-firmware-amdgpu.</div><div dir=3D=
"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div style=3D"box-sizing:border-box;font-family:&quot;Helvetica Ne=
ue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)"><br=
 style=3D"box-sizing:border-box"></div><div style=3D"box-sizing:border-box;=
font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size=
:14px;color:rgb(51,51,51)">Thanks,</div><div style=3D"box-sizing:border-box=
;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-siz=
e:14px;color:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div><div =
style=3D"box-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helve=
tica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)">Ori Pessach</div>=
</div>
<br>
<br>
<br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
--=-DZz3aOjA2DzZdQ3YBPRe--


