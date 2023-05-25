Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6896EC77B73
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 04:22:56 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.4753.1684988574302600084
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 21:22:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=J/zznSvF;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-561f23dc55aso1652937b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 21:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684988573; x=1687580573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8kEQ0L7MN1kUoE6CJBeN9Hx9jAGjO3rJh142C4ZW9l0=;
        b=J/zznSvFqQl1mfx2ZjOK21/UGQ0QRJnAfQPyfbTRWg0tkLTI15L4bmYtJaajt4HZM2
         ua5LCCiuFOtHYMcLEqom/54Sa1Z/wdqYc/nfETldusio29SEGjJoGc/yIIM3QaR5N6g0
         jyd+RrEdtQWzfrEoixdhRAnmM2UqO11vy0gTYGM7n4rX3MyVIesowrQzW2XUGyhGTiAJ
         b11dX4vWHwST4mxCN9RiB3K8U0Mr/fUqBU/CM7hAaCT3rqyO+rR8G41R85tEj58Z3xNi
         fe+vukPLibTkvBZv4uwdU5S+XPQ2wKKaYngEEd6UV74w1YPvBuJcs1Rh5PebMhpFJvIg
         TcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684988573; x=1687580573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8kEQ0L7MN1kUoE6CJBeN9Hx9jAGjO3rJh142C4ZW9l0=;
        b=iZYEXkcXq7ZkRIr+ABK4xCkYyIj0HwTAZS90P4hVwMWQ+fgin3yhtTx2J8xtobMi5C
         6Q2eoTz9QmbVt9EERocXQShUay3cE1aAjAJR+wQqNLsUFX3c5cn05qIZn9Fn9qfPfASm
         rEk/0oLF+sHvQAeRWqY2caMB/FPfrP9R8n+KTWZWrBxKxiF2L702l0/BNEf3AKayPNJW
         U8Kk6M7q81Rh5FOs85yH8TDvIOEriTGe4qv1SPC5lRYRzC3P57SRcKVqMIlSu5AeGxJX
         u0XKMp5KnQzFWn/a+CVza1fRcMREB4HPwFzeQkovL5DlLL+y4d57EGh42a9l13dJTo9s
         S12A==
X-Gm-Message-State: AC+VfDyED5SbEf747uT49Qs74jmFAko9cn5XhDZMmDcgZOK7PbUBc5eE
	Nyb4V0Ks6SHsViGa7zO1vuSru4DLaXCODsJuWzo=
X-Google-Smtp-Source: ACHHUZ5eqpnFA1DTUiAanH68IyWRUlJI+2L4hjL2aV9pPygWC4aLvc/HEN7mMnPI4co66CqbYvxmvLuVDRVwv0MLvTg=
X-Received: by 2002:a0d:ee07:0:b0:561:429e:acd2 with SMTP id
 x7-20020a0dee07000000b00561429eacd2mr18203440ywe.35.1684988573250; Wed, 24
 May 2023 21:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <dc33b8e9-3c27-afc0-7595-9020ba69bbdd@bootlin.com>
 <CAMKF1sq5GkHkumFtS-CgDOPFR5Bydizk2dnMLvmzNECYTy=Q=w@mail.gmail.com> <a82a15fb-387f-8ac8-70a5-13c9df329eb6@bootlin.com>
In-Reply-To: <a82a15fb-387f-8ac8-70a5-13c9df329eb6@bootlin.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 24 May 2023 21:22:42 -0700
Message-ID: <CANx9H-COECkEFztZXmxLF7rNZkkjfuZpBL9y+ZC4_Xvc-tBXhQ@mail.gmail.com>
Subject: Re: [yocto] psplash: white stripes with custom splash image
To: michael.opdenacker@bootlin.com
Cc: Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005bf96e05fc7cf919"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 04:22:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60120

--0000000000005bf96e05fc7cf919
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 24, 2023 at 12:52 PM Michael Opdenacker via
lists.yoctoproject.org <michael.opdenacker=3D
bootlin.com@lists.yoctoproject.org> wrote:

> Hi Khem,
>
> On 24.05.23 at 18:46, Khem Raj wrote:
> > On Wed, May 24, 2023 at 3:24=E2=80=AFAM Michael Opdenacker via
> > lists.yoctoproject.org
> > <michael.opdenacker=3Dbootlin.com@lists.yoctoproject.org> wrote:
> >> Greetings,
> >>
> >> I wanted to customize the boot splash image for an i.MX6 system.
> >>
> >> I'm using Kirkstone and created a psplash/psplash_%.bbappend file in a
> >> custom layer:
> >>
> >> SPLASH_IMAGES =3D "file://krtek.png;outsuffix=3Ddefault"
> >> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> >>
> >> The "files/krtek.png" file has a 800x480 resolution, which matches my
> >> display's.
> >>
> >> However, the screen shows two white stripes at the bottom (see the
> >> attached picture). Actually, the top stripe is added on top of the
> >> original picture, and the bottom one corresponds to the picture being
> >> translated upwards (see the attached original picture).
> >>
> >> I'm running a 4.19 Linux kernel. I couldn't reproduce this issue on a
> >> qemux86-64 system (same picture, 5.15 kernel), though the QEMU display
> >> has a greater resolution.
> >>
> >> Has anyone seen this before, or would anyone have an idea why this
> happens?
> >> Thanks in advance
> > It looks like the text box for messages is still painted. try with
> > both sysvinit and systemd
> > IIRC I saw something similar with systemd a year or so ago, it might
> > have been different
> > thing dont know.
>
>
> Thanks for the tip!
> I am using systemd indeed. I've just tried with sysvinit, and the issue
> is the same. Anyway, I'll check the code for this text box.
>

https://git.yoctoproject.org/psplash/tree/configure.ac#n34

I think.


> Thanks again.
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60114):
> https://lists.yoctoproject.org/g/yocto/message/60114
> Mute This Topic: https://lists.yoctoproject.org/mt/99105545/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000005bf96e05fc7cf919
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, May 24, 2023 at 12:52 PM Michael Opdenacker via <a =
href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;micha=
el.opdenacker=3D<a href=3D"mailto:bootlin.com@lists.yoctoproject.org">bootl=
in.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">Hi Khem,<br>
<br>
On 24.05.23 at 18:46, Khem Raj wrote:<br>
&gt; On Wed, May 24, 2023 at 3:24=E2=80=AFAM Michael Opdenacker via<br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D=
"_blank">lists.yoctoproject.org</a><br>
&gt; &lt;michael.opdenacker=3D<a href=3D"mailto:bootlin.com@lists.yoctoproj=
ect.org" target=3D"_blank">bootlin.com@lists.yoctoproject.org</a>&gt; wrote=
:<br>
&gt;&gt; Greetings,<br>
&gt;&gt;<br>
&gt;&gt; I wanted to customize the boot splash image for an i.MX6 system.<b=
r>
&gt;&gt;<br>
&gt;&gt; I&#39;m using Kirkstone and created a psplash/psplash_%.bbappend f=
ile in a<br>
&gt;&gt; custom layer:<br>
&gt;&gt;<br>
&gt;&gt; SPLASH_IMAGES =3D &quot;file://krtek.png;outsuffix=3Ddefault&quot;=
<br>
&gt;&gt; FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt;&gt;<br>
&gt;&gt; The &quot;files/krtek.png&quot; file has a 800x480 resolution, whi=
ch matches my<br>
&gt;&gt; display&#39;s.<br>
&gt;&gt;<br>
&gt;&gt; However, the screen shows two white stripes at the bottom (see the=
<br>
&gt;&gt; attached picture). Actually, the top stripe is added on top of the=
<br>
&gt;&gt; original picture, and the bottom one corresponds to the picture be=
ing<br>
&gt;&gt; translated upwards (see the attached original picture).<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m running a 4.19 Linux kernel. I couldn&#39;t reproduce this=
 issue on a<br>
&gt;&gt; qemux86-64 system (same picture, 5.15 kernel), though the QEMU dis=
play<br>
&gt;&gt; has a greater resolution.<br>
&gt;&gt;<br>
&gt;&gt; Has anyone seen this before, or would anyone have an idea why this=
 happens?<br>
&gt;&gt; Thanks in advance<br>
&gt; It looks like the text box for messages is still painted. try with<br>
&gt; both sysvinit and systemd<br>
&gt; IIRC I saw something similar with systemd a year or so ago, it might<b=
r>
&gt; have been different<br>
&gt; thing dont know.<br>
<br>
<br>
Thanks for the tip!<br>
I am using systemd indeed. I&#39;ve just tried with sysvinit, and the issue=
 <br>
is the same. Anyway, I&#39;ll check the code for this text box.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"><div><a href=3D"=
https://git.yoctoproject.org/psplash/tree/configure.ac#n34">https://git.yoc=
toproject.org/psplash/tree/configure.ac#n34</a></div><br></div><div dir=3D"=
auto">I think.</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><br>
Thanks again.<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60114): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60114" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60114</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99105545/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
99105545/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000005bf96e05fc7cf919--

