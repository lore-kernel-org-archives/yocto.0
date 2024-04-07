Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD229CD128A
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 20:22:57 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.91037.1712521373535693392
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 13:22:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=VmbzscIo;
 spf=pass (domain: konsulko.com, ip: 209.85.208.182, mailfrom: tim.orling@konsulko.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d68cf90ec4so46028281fa.1
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 13:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712521372; x=1713126172; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OE5qttFithH9ToXwBqgpxXIL7oWsBu/LCmMH7EZHrbo=;
        b=VmbzscIotRALyglykweSz9aGrm6Rd1U1rEFxuDJCkxZw4IlriRIW4J0uPHdL6tQSx8
         bnabH+gVN4YkHngh+e04R7mbC6gCYZgLtBk0rVicH9OzLwhvmRe4i5MucuiHkq8X7u+i
         xTrBVMUG1nHbw6fn9pTONu3zedit64tWENzRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712521372; x=1713126172;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OE5qttFithH9ToXwBqgpxXIL7oWsBu/LCmMH7EZHrbo=;
        b=LBDAgrJ53qub1wvGZ/U3GuACyQmVrbIEBZLbfShl7QSSZ35bppeeXcyuN3cyH6aueh
         10NG5jtBjudoCgsT+a2f80Qfw+Ss1yZD2T+vwBnLCEY+28oF6FL6vdzAoRQn2yx+6135
         nfRMfbgtIQn0XqFjTWzZQ2WExqIsp1vzl9opNHchEwGr/ZpXy1zuhtOBNUNybgqMktHO
         HOoFxleQbuS5VuWe1Ajk7zg8ig6Z5/PZ8ti2lnIOB4tM37I0MgiO/hfPtQ1MQTHBwcQC
         m22ANw6Xm1bpq8x0vnkU2vKywKOa+EDZ2ZQX2Halx/RM+ik2dhf5/kJmYFWmCkEm/mI8
         b8XA==
X-Gm-Message-State: AOJu0YySEYgQKDmC71G7j5y6TxSPuSM9hwHaJK7o4YtrmA8vQ9SPViAl
	b4pWXF6eKR6pYZQnob6hheGJpIQYEN476FLbQFPMPA5djWqKzTzeFyL+cecFsTUHFhW35iUV/TU
	MFewHY2D6d2IG7M/fsz83OkT0ssDL7Lqu4eDHGA==
X-Google-Smtp-Source: AGHT+IFKmtxo3PSlYq9Qnm1RcB587I+WeDA0DL//93ZiX5onYsATRy7Q9Qq7g29pNhkUmPMXr3fItukRzSQvyMc6ACs=
X-Received: by 2002:a2e:9187:0:b0:2d8:6a03:87df with SMTP id
 f7-20020a2e9187000000b002d86a0387dfmr4049910ljg.8.1712521371523; Sun, 07 Apr
 2024 13:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1712518899.git.tim.orling@konsulko.com> <CAMKF1sr-jARNHK4c1nW-idjuCj=tXfb1fDg8vf4kViE7XsAkMg@mail.gmail.com>
In-Reply-To: <CAMKF1sr-jARNHK4c1nW-idjuCj=tXfb1fDg8vf4kViE7XsAkMg@mail.gmail.com>
From: Tim Orling <tim.orling@konsulko.com>
Date: Sun, 7 Apr 2024 13:22:40 -0700
Message-ID: <CAOyo-87ZhjCZ=iyF+uU2mqae-0Wp3dbZ-LpZ7Mt9ee2Tc-G_Xg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/3] Initial u-boot support for raspberrypi5
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000053bed06158774fc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 20:22:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62896

--000000000000053bed06158774fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I set up my github repo with git.yoctoproject.org so I have to destroy it
to fork from agherzan and send a PR.

It's Sunday. I'm not going to do that.

On Sun, Apr 7, 2024 at 1:11=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote:

> I think it would be better if you opened a github PR so it can run throug=
h
> CI
>
> On Sun, Apr 7, 2024 at 12:54=E2=80=AFPM Tim Orling <tim.orling@konsulko.c=
om>
> wrote:
> >
> > Enable u-boot for the raspberrypi5 via the meta-lts-mixins
> 'scarthgap/u-boot' branch.
> >
> > This is initial support for raspberrypi5, not all features (usb,
> ethernet) are enabled
> > in u-boot yet.
> >
> > You may need to have a UART dongle plugged into the 'UART' port between
> 'HDMI0' and
> > 'HDMI1' to get the kernel to boot. Your mileage may vary.
> >
> > The following changes since commit
> d072cc8a48571a4af40a937f98e173b5c9468c4f:
> >
> >   rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:35:31 +0000=
)
> >
> > are available in the Git repository at:
> >
> >   https://github.com/moto-timo/meta-raspberrypi
> scarthgap/raspberrypi5_u-boot
> >
> https://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberrypi5=
_u-boot
> >
> > Tim Orling (3):
> >   layer.conf: rpi5 recommends lts-u-boot-mixin
> >   u-boot: re-enable rapsberrypi5
> >   raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT
> >
> >  conf/layer.conf                      | 3 +++
> >  conf/machine/raspberrypi5.conf       | 6 ++++++
> >  recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---
> >  3 files changed, 9 insertions(+), 3 deletions(-)
> >
> > --
> > 2.43.2
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#62891):
> https://lists.yoctoproject.org/g/yocto/message/62891
> > Mute This Topic: https://lists.yoctoproject.org/mt/105388889/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000053bed06158774fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I set up my github repo with <a href=3D"http://git.yoctopr=
oject.org">git.yoctoproject.org</a> so I have to destroy it to fork from ag=
herzan and send a PR.<div><br></div><div>It&#39;s Sunday. I&#39;m not going=
 to do that.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, Apr 7, 2024 at 1:11=E2=80=AFPM Khem Raj &lt;<a hr=
ef=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">I think it would be bett=
er if you opened a github PR so it can run through CI<br>
<br>
On Sun, Apr 7, 2024 at 12:54=E2=80=AFPM Tim Orling &lt;<a href=3D"mailto:ti=
m.orling@konsulko.com" target=3D"_blank">tim.orling@konsulko.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Enable u-boot for the raspberrypi5 via the meta-lts-mixins &#39;scarth=
gap/u-boot&#39; branch.<br>
&gt;<br>
&gt; This is initial support for raspberrypi5, not all features (usb, ether=
net) are enabled<br>
&gt; in u-boot yet.<br>
&gt;<br>
&gt; You may need to have a UART dongle plugged into the &#39;UART&#39; por=
t between &#39;HDMI0&#39; and<br>
&gt; &#39;HDMI1&#39; to get the kernel to boot. Your mileage may vary.<br>
&gt;<br>
&gt; The following changes since commit d072cc8a48571a4af40a937f98e173b5c94=
68c4f:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:=
35:31 +0000)<br>
&gt;<br>
&gt; are available in the Git repository at:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://github.com/moto-timo/meta-raspberrypi" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/moto-timo/meta-rasp=
berrypi</a> scarthgap/raspberrypi5_u-boot<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://github.com/moto-timo/meta-raspberrypi/t=
ree/scarthgap/raspberrypi5_u-boot" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberrypi5_u-bo=
ot</a><br>
&gt;<br>
&gt; Tim Orling (3):<br>
&gt;=C2=A0 =C2=A0layer.conf: rpi5 recommends lts-u-boot-mixin<br>
&gt;=C2=A0 =C2=A0u-boot: re-enable rapsberrypi5<br>
&gt;=C2=A0 =C2=A0raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT<br>
&gt;<br>
&gt;=C2=A0 conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
&gt;=C2=A0 conf/machine/raspberrypi5.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++=
+++<br>
&gt;=C2=A0 recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---<br>
&gt;=C2=A0 3 files changed, 9 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.43.2<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#62891): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/62891" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/62891</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10538888=
9/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105388889/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000053bed06158774fc--

