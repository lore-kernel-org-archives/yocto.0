Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5059FC3DA59
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 13:27:08 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.37875.1721050018039869479
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 06:26:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=xWjY5BL/;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.42, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-58e76294858so9145365a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 06:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1721050016; x=1721654816; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A01P5zvLxNVS8hQvP4Rd3BiUzxzrbn3LiyqoSnGfgY4=;
        b=xWjY5BL/alUM0BJtRV1LCiRQTEKb9jv/pAesjQvA8mr4CmEzvHjH9LQVpWVHlH4Xqe
         bjzA4fF1RnFFutvra+A9YFeP6V2whJkBcfNiEEYKntxJT1lnoZytgBWZjaMjAH6wMv/U
         wobg7sqCawj592+JRFeur3ELJc25gWYf9FVWqsFQpxPn/ON4+wwbi/OjhuKOG6fSweoW
         35RLMmQT7PDXiL2j77/KWH335qbmwJFYHP8yvM86VinDOzfrzhLeebNBij4ZT8ge7Auz
         MM+qLVCD7RDhYcnEjnhBOjqhASU2VeQFjnKIXnNvD3KLY3ktv+pHSB0b8Ffp1UDXCdV1
         NKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721050016; x=1721654816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A01P5zvLxNVS8hQvP4Rd3BiUzxzrbn3LiyqoSnGfgY4=;
        b=lEkfjyAp1wTVYiHCB49vXU43bHVmSjnI0V4dRMTEIThbIaIEkHtFvoXOutr7pcy1vU
         0VCtKI8HBI7i662n9Go3SFkwh1oe+rO30MSC/5TiSMsRLoOJaf5o2Ga1djEATuDUKv3A
         9xg8bphxUMWcknMyXTtTXnQq2phD2Xi5dCKlS3wCbtsfXbHOn214mKro3JZO5AHo3gko
         GnEu0VaWMnAb/4lIYeKm/6Bhc/LV+rvMzL/KDUz1Y6PXZDZLsgvV8j+CT+5zMMkpuQyW
         MY+q76kjIyuNgpmX6xus+Lp1UvPH+w6aS5/2OG5CmT+EcVzUBZPdjYI0OUm5Jf/5HqXB
         Qlgg==
X-Gm-Message-State: AOJu0YyX86xe3n2xaNEhJLWudhfmHBd0JyqN8XTCAbL1Yc5xkWUZJm6l
	s30Yd28bfbYrMC5ZpsgyuMJBGBa4insm2JpOhlSeKm6nwJlg/HKU8oRMqWHSAxtQDQKu3c6FG5H
	pooHxqPsZFfLPdcRMSVjKFQ6vue/tUEuHVqmUP1k1n21QJ7NwCI0=
X-Google-Smtp-Source: AGHT+IEL1rU3VIHDzh5h3OC5FiRUYM3jXvZrnZeWH+c9twdtUSRCJkGjoyB1TelsfibevoSfBl5vDN2QS2Pe8mc9nuw=
X-Received: by 2002:a17:906:12cf:b0:a77:cd4f:e4f1 with SMTP id
 a640c23a62f3a-a799cd00b60mr734032766b.27.1721050016216; Mon, 15 Jul 2024
 06:26:56 -0700 (PDT)
MIME-Version: 1.0
References: <1619D009AA8C9E469331A8EE22395AEC01106D1AB7@Exchange2013.PRIMES.local>
In-Reply-To: <1619D009AA8C9E469331A8EE22395AEC01106D1AB7@Exchange2013.PRIMES.local>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 15 Jul 2024 15:26:30 +0200
Message-ID: <CAEt6Nwp6yxvGTnANtsuFwr=qsoFtpmpV7m2AMMcMuU-TQRwgbA@mail.gmail.com>
Subject: Re: [yocto] Exception during boot process, any ideas?
To: yocto@lists.yoctoproject.org, G.Kautzmann@primes.de
Content-Type: multipart/alternative; boundary="000000000000db8d43061d492e4f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 13:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63498

--000000000000db8d43061d492e4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gerd,

As much as we love your enthusiasm - four mails on basically the same issue
in just a matter of hours are a bit much. Remember, this is a list where
community volunteers share their advice.

As you say "I have a scarthgap image that is constantly crashing during
boot, it is (more or less) the =E2=80=9Acore-minimal-build=E2=80=98 but I h=
ave no idea
where it is crashing" the obvious first thing for you to do is remove the
"more or less" part. If a generic poky+meta-raspberrypi build boots, then
the problem is in your additions. Then, bisecting will probably help. If it
also fails, then please proved the corresponding layer revisions and build
configuration so other can possibly reproduce it.

Greets,
Josef

On Mon, Jul 15, 2024 at 12:26=E2=80=AFPM Gerd Kautzmann via lists.yoctoproj=
ect.org
<G.Kautzmann=3DPRIMES.de@lists.yoctoproject.org> wrote:

> Hello ML members,
>
> I have a scarthgap image that is constantly crashing during boot, it is
> (more or less) the =E2=80=9Acore-minimal-build=E2=80=98 but I have no ide=
a where it is
> crashing
>
> [    3.639669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
>
> [    3.650552] EXT4-fs (mmcblk0p2): mounted filesystem
> b76223f7-8225-46bd-b533-9139d82816b6 ro with ordered data mode. Quota mod=
e:
> none.
>
> [    3.662792] VFS: Mounted root (ext4 filesystem) readonly on device
> 179:2.
>
> [    3.670144] devtmpfs: mounted
>
> [    3.676937] Freeing unused kernel image (initmem) memory: 2048K
>
> [    3.696802] Run /sbin/init as init process
>
> [    3.702487] Run /etc/init as init process
>
> [    3.707038] Run /bin/init as init process
>
> [    3.711531] Run /bin/sh as init process
>
> [    3.719204] usb 1-1: New USB device found, idVendor=3D2109,
> idProduct=3D3431, bcdDevice=3D 4.21
>
> [    3.727533] usb 1-1: New USB device strings: Mfr=3D0, Product=3D1,
> SerialNumber=3D0
>
> [    3.734776] usb 1-1: Product: USB2.0 Hub
>
> [    3.740197] hub 1-1:1.0: USB hub found
>
> [    3.744237] hub 1-1:1.0: 4 ports detected
>
> [    3.758903] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
>
> sh: cannot set terminal process group (-1): Inappropriate ioctl for devic=
e
>
> sh: no job control in this shell
>
> sh-5.2# exit
>
> exit[    7.716845] Kernel panic - not syncing: Attempted to kill init!
> exitcode=3D0x00000000
>
> [    7.724835] CPU: 0 PID: 1 Comm: sh Not tainted 6.6.22-v7l #1
>
> [    7.730585] Hardware name: BCM2711
>
>
>
> I tried to include some drivers for cameras, but it crashes, when I delet=
e
> my changes it still keeps crashing.
>
>
>
>
>
> *PRIMES GmbH    *Max-Planck-Str. 2    64319 Pfungstadt   Germany
>
> T +49 6157 9878 0
>
> CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag
>
> Local Court: Darmstadt HRB 5134
>
> g.kautzmann@primes.de    www.primes.de
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63497):
> https://lists.yoctoproject.org/g/yocto/message/63497
> Mute This Topic: https://lists.yoctoproject.org/mt/107228623/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000db8d43061d492e4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Gerd,<div><br></div><div>As much as we love your enthus=
iasm - four mails on basically the same issue in just a matter of hours are=
 a bit much. Remember, this is a list where community volunteers share thei=
r advice.</div><div><br></div><div>As you say &quot;I have a scarthgap imag=
e that is constantly crashing during boot, it is (more or less) the =E2=80=
=9Acore-minimal-build=E2=80=98 but I have no idea where it is crashing&quot=
; the obvious first thing for you to do is remove the &quot;more or less&qu=
ot; part. If a generic poky+meta-raspberrypi build boots, then the problem =
is in your additions. Then, bisecting will probably help. If it also fails,=
 then please proved the corresponding layer revisions and build configurati=
on so other can possibly reproduce it.</div><div><br></div><div>Greets,</di=
v><div>Josef</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Jul 15, 2024 at 12:26=E2=80=AFPM Gerd Kautzmann v=
ia <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctop=
roject.org</a> &lt;G.Kautzmann=3D<a href=3D"mailto:PRIMES.de@lists.yoctopro=
ject.org" target=3D"_blank">PRIMES.de@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,=
204,204);padding-left:1ex"><div>





<div lang=3D"DE">
<div>
<p class=3D"MsoNormal">Hello ML members,<br>
<br>
I have a scarthgap image that is constantly crashing during boot, it is (mo=
re or less) the =E2=80=9Acore-minimal-build=E2=80=98 but I have no idea whe=
re it is crashing
<br>
<br>
[=C2=A0=C2=A0=C2=A0 3.639669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.650552] EXT4-fs (mmcblk0p2): m=
ounted filesystem b76223f7-8225-46bd-b533-9139d82816b6 ro with ordered data=
 mode. Quota mode: none.<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.662792] VFS: Mounted root (ext=
4 filesystem) readonly on device 179:2.<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.670144] devtmpfs: mounted<u></=
u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.676937] Freeing unused kernel =
image (initmem) memory: 2048K<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.696802] Run /sbin/init as init=
 process<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.702487] Run /etc/init as init =
process<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.707038] Run /bin/init as init =
process<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.711531] Run /bin/sh as init pr=
ocess<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.719204] usb 1-1: New USB devic=
e found, idVendor=3D2109, idProduct=3D3431, bcdDevice=3D 4.21<u></u><u></u>=
</p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.727533] usb 1-1: New USB devic=
e strings: Mfr=3D0, Product=3D1, SerialNumber=3D0<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.734776] usb 1-1: Product: USB2=
.0 Hub<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.740197] hub 1-1:1.0: USB hub f=
ound<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.744237] hub 1-1:1.0: 4 ports d=
etected<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 3.758903] vc4-drm gpu: bound fe4=
00000.hvs (ops vc4_hvs_ops)<u></u><u></u></p>
<p class=3D"MsoNormal">sh: cannot set terminal process group (-1): Inapprop=
riate ioctl for device<u></u><u></u></p>
<p class=3D"MsoNormal">sh: no job control in this shell<u></u><u></u></p>
<p class=3D"MsoNormal">sh-5.2# exit<u></u><u></u></p>
<p class=3D"MsoNormal">exit[=C2=A0=C2=A0=C2=A0 7.716845] Kernel panic - not=
 syncing: Attempted to kill init! exitcode=3D0x00000000<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 7.724835] CPU: 0 PID: 1 Comm: sh=
 Not tainted 6.6.22-v7l #1<u></u><u></u></p>
<p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 7.730585] Hardware name: BCM2711=
<u></u><u></u></p>
<p class=3D"MsoNormal"><br>
<br>
I tried to include some drivers for cameras, but it crashes, when I delete =
my changes it still keeps crashing.<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt"><span style=3D"font-siz=
e:2pt;font-family:Arial,sans-serif;color:rgb(56,55,57)"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<b><span lang=3D"EN-GB" style=3D"font-size:8pt;font-family:Arial,sans-serif=
;color:rgb(79,77,81)">PRIMES GmbH=C2=A0=C2=A0=C2=A0
</span></b><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sa=
ns-serif;color:rgb(79,77,81)">Max-Planck-Str.
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
79,77,81)">2<b>=C2=A0=C2=A0=C2=A0
</b>64319 Pfungstadt=C2=A0=C2=A0 Germany=C2=A0=C2=A0=C2=A0 <u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(79,77,8=
1)">T +49 6157 9878 0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(79,77,8=
1)">CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag=C2=A0=C2=
=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(79,77,8=
1)">Local Court: Darmstadt HRB 5134<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:12pt;margin-=
left:5.65pt;line-height:11.1pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif"><a href=3D"mailt=
o:g.kautzmann@primes.de" target=3D"_blank"><span style=3D"color:rgb(5,99,19=
3)">g.kautzmann@primes.de</span></a></span><span style=3D"font-size:8pt;col=
or:rgb(79,77,81)">=C2=A0=C2=A0=C2=A0
</span><span><a title=3D"blocked::http://www.primes.de/
http://www.primes.de/"><span style=3D"font-size:8pt;font-family:Arial,sans-=
serif;color:rgb(79,77,81);text-decoration:none">www.primes.de</span></a></s=
pan><span style=3D"font-size:8pt;color:rgb(79,77,81)">=C2=A0</span><span><u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63497): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63497" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63497</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107228623/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107228623/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div>

--000000000000db8d43061d492e4f--

