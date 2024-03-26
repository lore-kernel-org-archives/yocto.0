Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06A6CCD11DD
	for <webhook@archiver.kernel.org>; Tue, 26 Mar 2024 12:01:09 +0000 (UTC)
Subject: Pipewire Integration with Yocto 4.0.13 (kirkstone)
To: yocto@lists.yoctoproject.org
From: "Sudarshana Reddy Singathala" <sudarshana.singathala@moschip.com>
X-Originating-Location: Medak, Telangana, IN (14.99.139.148)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 Mar 2024 04:57:14 -0700
Message-ID: <Ws4w.1711454234860006570.EdLJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D3vK4CvRd5eWru7dV2Ea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Mar 2024 12:01:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62845

--D3vK4CvRd5eWru7dV2Ea
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am working with yocto project on IMX8MM board, i am trying to replace pul=
seaudio with pipewire as I have seen pipewire is part of=C2=A0 yocto meta-o=
pembedded/meta-multimedia/recipe-multimedia/pipewire.

But im not able to see pipewire configuration and commands in my image.

And then i added the below packages in local.conf file
IMAGE_INSTALL:append =3D " libspa-dbus libpipewire pipewire pipewire-pulse =
wireplumber pipewire-alsa pipewire-modules-meta pipewire-v4l2"

And i getting the below error=C2=A0message while running pipewire service,
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [W][00008.835990] p=
w.context=C2=A0=C2=A0 | [=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 context.c:=C2=
=A0 374 pw_context_new()] 0xaaab10aeba40: can't load dbus library: support/=
libspa-dbus
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.836576] p=
w.module=C2=A0=C2=A0=C2=A0 | [=C2=A0=C2=A0 impl-module.c:=C2=A0 278 pw_cont=
ext_load_module()] No module "libpipewire-module-rt" was found
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.838528] p=
w.module=C2=A0=C2=A0=C2=A0 | [=C2=A0=C2=A0 impl-module.c:=C2=A0 278 pw_cont=
ext_load_module()] No module "libpipewire-module-profiler" was found
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.838576] p=
w.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | [=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 conf.c:=C2=A0 560 load_module()] 0xaaab10aeba40: coul=
d not load mandatory module "libpipewire-module-profily
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.839009] d=
efault=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | [=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pipe=
wire.c:=C2=A0 125 main()] failed to create context: No such file or directo=
ry
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Main=
 process exited, code=3Dexited, status=3D254/n/a
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Fail=
ed with result 'exit-code'.
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Sche=
duled restart job, restart counter is at 5.
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: Stopped PipeWire Multi=
media Service.
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Star=
t request repeated too quickly.
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Fail=
ed with result 'exit-code'.
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: Failed to start PipeWi=
re Multimedia Service.

Can some one help me in integrating pipewire.

Best Regards,
Sudarshan.

--D3vK4CvRd5eWru7dV2Ea
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
Hi,</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
&nbsp;</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
I am working with yocto project on IMX8MM board, i am trying to replace pul=
seaudio with pipewire as I have seen pipewire is part of&nbsp; yocto meta-o=
pembedded/meta-multimedia/recipe-multimedia/pipewire.</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
&nbsp;</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
But im not able to see pipewire configuration and commands in my image.</di=
v>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
&nbsp;</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
And then i added the below packages in local.conf file</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
IMAGE_INSTALL:append =3D " libspa-dbus libpipewire pipewire pipewire-pulse =
wireplumber pipewire-alsa pipewire-modules-meta pipewire-v4l2"<br /><br /><=
/div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
And i getting the below error&nbsp;message while running pipewire service,<=
/div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [W][00008.835990] p=
w.context&nbsp;&nbsp; | [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; context.c:&nb=
sp; 374 pw_context_new()] 0xaaab10aeba40: can't load dbus library: support/=
libspa-dbus<br />Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E=
][00008.836576] pw.module&nbsp;&nbsp;&nbsp; | [&nbsp;&nbsp; impl-module.c:&=
nbsp; 278 pw_context_load_module()] No module "libpipewire-module-rt" was f=
ound<br />Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008=
.838528] pw.module&nbsp;&nbsp;&nbsp; | [&nbsp;&nbsp; impl-module.c:&nbsp; 2=
78 pw_context_load_module()] No module "libpipewire-module-profiler" was fo=
und<br />Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.=
838576] pw.conf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; conf.c:&nbsp; 560 load_module()] 0xaaab10aeba4=
0: could not load mandatory module "libpipewire-module-profily<br />Apr 28 =
18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.839009] default&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pipewire.c:=
&nbsp; 125 main()] failed to create context: No such file or directory<br /=
>Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Mai=
n process exited, code=3Dexited, status=3D254/n/a<br />Apr 28 18:28:37 phyb=
oard-pollux-imx8mp-3 systemd[1]: pipewire.service: Failed with result 'exit=
-code'.<br />Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.=
service: Scheduled restart job, restart counter is at 5.<br />Apr 28 18:28:=
37 phyboard-pollux-imx8mp-3 systemd[1]: Stopped PipeWire Multimedia Service=
.<br />Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.servic=
e: Start request repeated too quickly.<br />Apr 28 18:28:37 phyboard-pollux=
-imx8mp-3 systemd[1]: pipewire.service: Failed with result 'exit-code'.<br =
/>Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: Failed to start Pipe=
Wire Multimedia Service.</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
&nbsp;</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
Can some one help me in integrating pipewire.</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
&nbsp;</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
Best Regards,</div>
<div style=3D"direction: ltr; font-family: Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif; font-size: 12pt; color: black;">=
Sudarshan.</div>

--D3vK4CvRd5eWru7dV2Ea--

