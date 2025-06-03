Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3798C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 23:04:05 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.3478.1748991837122222760
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 16:03:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZcS+tARR;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-742c7a52e97so5226042b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 16:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748991835; x=1749596635; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M6SyHOijvLfWQjGsj0SilTg9/7Tb+o+C05/nvZ44pfQ=;
        b=ZcS+tARR/1vayfSZEaRiUHXOXFJU1415JWNCVsUVdjvbJNpGTaOi3gMpLxAmMnvlQA
         Ap1AJ1ergJMfgFDYJmVLCwaXCWcWvVRdEpdkd8BU/o07uc27/okycPBreHrF7pzJsIiR
         5mYgpV3TQaAAJsYRxJvW0tSXAaaMk9R3LgmkzQDIGIeRe5xvYbBuX35YDuU3iPzUzVxq
         czkUQ8OvuwK5YBhc0lTcJc8OJwSU7QfRdAHaAuk/lLcvQ8BeJB9irh15Pv81vH1MnUUu
         m3BjnM208Bxwvertk6DtZaqp3EZUfTapFLEXsApmC2KaxctXB32IAmjYZ4BiqMPh+YcJ
         WDKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748991835; x=1749596635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M6SyHOijvLfWQjGsj0SilTg9/7Tb+o+C05/nvZ44pfQ=;
        b=DnjaQhMyooclBfPlEPzUxlpsHjbGtHeGxzcRAPf5K9I0DDnUvZ5U6DeM/w8v1WDLln
         n7K6nBAUHM0blo0mB+0nkPqYJoqTTSutELSDpjn1b/tMsGGo8AGoWFQ+qOy317TIq307
         5N4UjuOtAxuLd73wSUgXPyvkkuMYKKLIKTxbiNCZJR1rbxlLeYdV6pWZiuTyRlWBUS+2
         jbW3iR4KJ27Lw63xcsPolQutragf1oDssmVWvhZHtEqeJgslYohhmdSQIw4NV0ZLmQsV
         XlHPTErhMU0tKaEILjSuyZZ/IJPgMU4jUtX2GEJrpjc2NfM6uWGEYStSfNKReGqIFP9+
         dmlA==
X-Gm-Message-State: AOJu0YzyIBNAAmPvvTG29tHocKb6XM0FuSrTBAzOXgye3qBcd8Qc8Zce
	nIS23LIEoXAi0640jP5YBmg25CGH9KGFBYPJCOYq+7ABwvBWO4hPOWi2l3SCMytQurN01524ObP
	OZCA2mcyuadvZs8CzzJtlgUBNIO+8Wp+SFw==
X-Gm-Gg: ASbGncutBtOqUAJVePlX/SewuB/aTe58KSEH95UWrPdUrnQUz2JNAIRdwTl9ogmR7j5
	miDNlmFgoabE0hs2sDPsB8xT8RbpJJwv3hsaKdO0YROxcDDuuE+1mELwLRI7vLZYZXzv/+2Us5O
	6dVXFlaf6b5kHGol6p2BiLWnnSKQw1CGkZ8i2s0Ff2AZBs62sjxcloM39MONHxhAnkGw==
X-Google-Smtp-Source: AGHT+IF0jlVCbWh3jxpxuemPEoskOl5/L1ykdvk5EhKsClBN/XtSZL4yItHl4hu6ba2AavfYYCd+XXQV/AsWSOAksPU=
X-Received: by 2002:a17:90b:1c81:b0:312:959:dc4f with SMTP id
 98e67ed59e1d1-3130cca815amr1096536a91.5.1748991835145; Tue, 03 Jun 2025
 16:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <f0mQ.1748953926946032572.GW8d@lists.yoctoproject.org> <6d4bcaf6-60b5-4e8c-9033-b538fd881b56@gmail.com>
In-Reply-To: <6d4bcaf6-60b5-4e8c-9033-b538fd881b56@gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 3 Jun 2025 16:03:42 -0700
X-Gm-Features: AX0GCFudPU02qF1_AJ4W0lTEcHYbsmzDXvWaPPAO2PMganEac2lVtN7O1MQZGGw
Message-ID: <CANx9H-CHaNMCfjuv8D=eB9=gX+HwR4s4_zXuNjgFUcHrOT-u5w@mail.gmail.com>
Subject: Re: [yocto] How to Customize and Build Original Raspberry Pi OS Using Yocto?
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: anilkumarnt87@gmail.com
Content-Type: multipart/alternative; boundary="0000000000000c89430636b2e58d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 23:04:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65461

--0000000000000c89430636b2e58d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 3, 2025 at 1:28=E2=80=AFPM Khem Raj via lists.yoctoproject.org
<raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:

>
>
> On 6/3/25 5:32 AM, Anil N T via lists.yoctoproject.org wrote:
> > Hi all,
> > I want to customize and generate the official Raspberry Pi OS using
> > Yocto and test it on Raspberry Pi 5 hardware.
> >
> > Here=E2=80=99s what I=E2=80=99ve done so far:
> > I downloaded the Raspberry Pi CM4 rootfs and generated core images usin=
g
> > yocto(https://downloads.raspberrypi.com/raspi ... oot.tar.xz)
> > I kept only the boot files in the SD card=E2=80=99s boot partition.
> > I copied the rootfs contents from the CM4 Raspberry Pi rootfs into the
> > ROOTFS partition.
> > With this setup, the board boots successfully.
> > Now, I want to take the next step:
> > 1. Download the original source code of the Raspberry Pi OS rootfs (not
> > just prebuilt images)
> > 2. Build it using Yocto
> > 3 .Copy the generated rootfs into the ROOTFS partition and boot the boa=
rd
> > My questions:
> > 1. Is it possible to rebuild the official Raspberry Pi OS rootfs (not
> > just minimal Yocto builds) using Yocto?
>
> While it is possible, since yocto build framework can build anything as
> long as someone writes the recipes. I don't know anyone has done it or
> have reported about it in community. Raspbian is based on Debian and
> uses debian's distro build system. Yocto framework builds custom linux
> distros and they can target raspberrypi devices, meta-raspberrypi is the
> yocto BSP layer supports them well.
>

You might have more luck using Isar which uses bitbake but with Debian
sources.
https://github.com/ilbers/isar



> > 2. Where can I get the exact source code or recipe layers for the
> > Raspberry Pi OS packages (not just Poky or meta-raspberrypi layers)?
> > 3.Has anyone here successfully built a Yocto image that replicates the
> > Raspberry Pi OS experience (including its specific desktop environment,
> > tools, etc.)?
> > Any pointers, recommended layers, or documentation links would be hugel=
y
> > appreciated!
> > Thank you in advance
> >
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65460):
> https://lists.yoctoproject.org/g/yocto/message/65460
> Mute This Topic: https://lists.yoctoproject.org/mt/113446142/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000000c89430636b2e58d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 3, 2025 at 1:28=E2=80=AFPM =
Khem Raj via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.o=
rg</a> &lt;raj.khem=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">g=
mail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
<br>
<br>
On 6/3/25 5:32 AM, Anil N T via <a href=3D"http://lists.yoctoproject.org" r=
el=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt; Hi all,<br>
&gt; I want to customize and generate the official Raspberry Pi OS using <b=
r>
&gt; Yocto and test it on Raspberry Pi 5 hardware.<br>
&gt; <br>
&gt; Here=E2=80=99s what I=E2=80=99ve done so far:<br>
&gt; I downloaded the Raspberry Pi CM4 rootfs and generated core images usi=
ng <br>
&gt; yocto(<a href=3D"https://downloads.raspberrypi.com/raspi" rel=3D"noref=
errer" target=3D"_blank">https://downloads.raspberrypi.com/raspi</a> ... oo=
t.tar.xz)<br>
&gt; I kept only the boot files in the SD card=E2=80=99s boot partition.<br=
>
&gt; I copied the rootfs contents from the CM4 Raspberry Pi rootfs into the=
 <br>
&gt; ROOTFS partition.<br>
&gt; With this setup, the board boots successfully.<br>
&gt; Now, I want to take the next step:<br>
&gt; 1. Download the original source code of the Raspberry Pi OS rootfs (no=
t <br>
&gt; just prebuilt images)<br>
&gt; 2. Build it using Yocto<br>
&gt; 3 .Copy the generated rootfs into the ROOTFS partition and boot the bo=
ard<br>
&gt; My questions:<br>
&gt; 1. Is it possible to rebuild the official Raspberry Pi OS rootfs (not =
<br>
&gt; just minimal Yocto builds) using Yocto?<br>
<br>
While it is possible, since yocto build framework can build anything as <br=
>
long as someone writes the recipes. I don&#39;t know anyone has done it or =
<br>
have reported about it in community. Raspbian is based on Debian and <br>
uses debian&#39;s distro build system. Yocto framework builds custom linux =
<br>
distros and they can target raspberrypi devices, meta-raspberrypi is the <b=
r>
yocto BSP layer supports them well.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You might have m=
ore luck using Isar which uses bitbake but with Debian sources.</div><div d=
ir=3D"auto"><div><a href=3D"https://github.com/ilbers/isar">https://github.=
com/ilbers/isar</a></div><br></div><div dir=3D"auto"><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,2=
04)"><br>
&gt; 2. Where can I get the exact source code or recipe layers for the <br>
&gt; Raspberry Pi OS packages (not just Poky or meta-raspberrypi layers)?<b=
r>
&gt; 3.Has anyone here successfully built a Yocto image that replicates the=
 <br>
&gt; Raspberry Pi OS experience (including its specific desktop environment=
, <br>
&gt; tools, etc.)?<br>
&gt; Any pointers, recommended layers, or documentation links would be huge=
ly <br>
&gt; appreciated!<br>
&gt; Thank you in advance<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65460): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65460" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65460</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113446142/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/113446142/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000000c89430636b2e58d--

