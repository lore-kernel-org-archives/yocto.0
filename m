Return-Path: <Ankita.AN@exaleapsemi.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E12D111BA
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 07:53:31 +0000 (UTC)
Subject: Re: [yocto] XFCE integration with Kirkstone (RISCV64)
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: Ankita.AN@exaleapsemi.com
X-Originating-Location: IN (152.58.23.13)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 03 Nov 2024 23:53:30 -0800
References: <CANNYZj88HwSPabR88B+cg1AqA73ALOSRs0L5edibX8=kGw57yw@mail.gmail.com>
In-Reply-To: <CANNYZj88HwSPabR88B+cg1AqA73ALOSRs0L5edibX8=kGw57yw@mail.gmail.com>
Message-ID: <22763.1730706810757498056@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rW93WpPWTs0fw3e5sKDf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 07:53:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64206

--rW93WpPWTs0fw3e5sKDf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,
As suggested I have build and tested image with meta-xfce .
please find error log:
root:~# cat /var/log/Xorg.7.log | grep '(EE)'
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[=C2=A0 2331.254] (EE) Failed to load module "glx" (module does not exist, =
0)
[=C2=A0 2331.255] (EE) Failed to load module "modesetting" (module does not=
 exist, 0)
[=C2=A0 2331.704] (EE) FBDEV(0): FBIOPUT_VSCREENINFO: Invalid argument
[=C2=A0 2331.704] (EE) FBDEV(0): mode initialization failed
[=C2=A0 2331.704] (EE)
[=C2=A0 2331.704] (EE) AddScreen/ScreenInit failed for driver 0
[=C2=A0 2331.705] (EE)
[=C2=A0 2331.705] (EE)
[=C2=A0 2331.705] (EE) Please also check the log file at "/var/log/Xorg.7.l=
og" for additional information.
[=C2=A0 2331.705] (EE)
[=C2=A0 2331.941] (EE) Server terminated with error (1). Closing log file.

Any suggestion for this issue?

Thanks

--rW93WpPWTs0fw3e5sKDf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Alex,</div>
<div>As suggested I have build and tested image with meta-xfce .&nbsp;</div=
>
<div>please find error log:</div>
<div><span data-teams=3D"true"><span class=3D"ui-provider ah il im in io ip=
 iq ir is it iu iv iw ix iy iz ja jb jc jd je jf jg jh ji jj jk jl jm jn jo=
 jp jq jr js" dir=3D"ltr">root:~# cat /var/log/Xorg.7.log | grep '(EE)'<br =
/>&emsp;&emsp;(WW) warning, (EE) error, (NI) not implemented, (??) unknown.=
<br />[&nbsp; 2331.254] (EE) Failed to load module "glx" (module does not e=
xist, 0)<br />[&nbsp; 2331.255] (EE) Failed to load module "modesetting" (m=
odule does not exist, 0)<br />[&nbsp; 2331.704] (EE) FBDEV(0): FBIOPUT_VSCR=
EENINFO: Invalid argument<br />[&nbsp; 2331.704] (EE) FBDEV(0): mode initia=
lization failed<br />[&nbsp; 2331.704] (EE)&nbsp;<br />[&nbsp; 2331.704] (E=
E) AddScreen/ScreenInit failed for driver 0<br />[&nbsp; 2331.705] (EE)&nbs=
p;<br />[&nbsp; 2331.705] (EE)&nbsp;<br />[&nbsp; 2331.705] (EE) Please als=
o check the log file at "/var/log/Xorg.7.log" for additional information.<b=
r />[&nbsp; 2331.705] (EE)&nbsp;<br />[&nbsp; 2331.941] (EE) Server termina=
ted with error (1). Closing log file.</span></span></div>
<div>&nbsp;</div>
<div><span data-teams=3D"true"><span class=3D"ui-provider ah il im in io ip=
 iq ir is it iu iv iw ix iy iz ja jb jc jd je jf jg jh ji jj jk jl jm jn jo=
 jp jq jr js" dir=3D"ltr">Any suggestion for this issue?</span></span></div=
>
<div>&nbsp;</div>
<div><span data-teams=3D"true"><span class=3D"ui-provider ah il im in io ip=
 iq ir is it iu iv iw ix iy iz ja jb jc jd je jf jg jh ji jj jk jl jm jn jo=
 jp jq jr js" dir=3D"ltr">Thanks</span></span></div>

--rW93WpPWTs0fw3e5sKDf--

