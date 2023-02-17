Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B675C636D4
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 04:47:41 +0000 (UTC)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web11.429.1676609259198247012
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Feb 2023 20:47:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BybVpENt;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: joel.winarske@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id k6so4394185vsk.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 Feb 2023 20:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1676609258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kuwdp59W2RS2O3zkk4JEifeEnEiA0UlfmwFB6ciQRyo=;
        b=BybVpENtKm8ez8FW7/ooyvJefg+jKy73HUCK6Q59Wew3jB7KlIG48hIFmKCJTwVQtv
         ou0d1NOkl0WEBUu1NIkD8888hgdKvFmVCtthwUoaLW1S++FQTbcyjz8A3K42N481EAVi
         q32XgvIZNSCmaaI3HpaDzYk7+IfgGpX7XYe9O0yYVSfW9hQdw+6ouVJU2NPYdg2jwhX+
         iuf+ZRctUD2X/8FQmsB0Ji7utOZpp3owNc1esGqpOCfC7FRAJ0XI7R+mI/Y581ZQwZue
         nlpD+1J4ojw75O0fF4I311Mi4p0VwzaWDvCAIVxXns8tL2mMYg3B9Zkrw5uW/nC10aQB
         H1Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676609258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kuwdp59W2RS2O3zkk4JEifeEnEiA0UlfmwFB6ciQRyo=;
        b=wZW1TYqI/0yvP6I1reYW7SAXkP5m8FlMtWj/0cvjY8Mp99uC09v/8LE5FpjtMwPxj3
         CD0HpHabeKrBWoPwt34vSsrBoRBjqQCRekXTbuz6qSu5R7Cv0gsgGL+LheddJu5ojD1I
         9XnY41wdlTqXyEPxJrUgfWwg07C9bryebeHopC+RyIewXl7xlHrtGqEpHK72sIUz3lWN
         XwRPIXYkymt0fTEp+N7Q77puhgzDWjtoPXxdNHaFd4ZaxF7YITa4LFK8obwxyMZy4YoG
         +BS2A/K1x1Y8L8mkpqBgX0HZbYx91TXvhr0sUfDbSNN9nWtwQOU6MxOXArf9B0UnFuIy
         4cwg==
X-Gm-Message-State: AO0yUKUdVqBZETkFh6O8k0rFPFFB4joS0zbBl/QWWFLcE1I3w5toFusT
	/BCs5FgnuE5OAJyKc8YBH4gFFzoUiS4mAfJFCD4=
X-Google-Smtp-Source: AK7set9BQNBApeLGyZPfwgcJ5WrQnWE/7+UqTX6m8Kp9aPDwN8TrQEYm7s/LF6MMeQQwjY8u03KDyYE9ljMWeR4CC0E=
X-Received: by 2002:a05:6102:214f:b0:415:d40b:df0e with SMTP id
 h15-20020a056102214f00b00415d40bdf0emr326089vsg.53.1676609258082; Thu, 16 Feb
 2023 20:47:38 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
 <C4B728CE-7BA8-44F4-8B2C-F3F5299EE35C@arm.com>
In-Reply-To: <C4B728CE-7BA8-44F4-8B2C-F3F5299EE35C@arm.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 16 Feb 2023 20:47:26 -0800
Message-ID: <CABKMkPLyTa1yTJkBWbyLzE9hfXEEW2zMekxMgFzgxDQa9CB4DA@mail.gmail.com>
Subject: Re: [yocto] Mold linker
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004157f005f4de0324"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 04:47:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59235

--0000000000004157f005f4de0324
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh cool!

I'll run some tests on a few builds.

Thanks for pointing that out.


On Thu, Feb 16, 2023 at 12:42 PM Ross Burton <Ross.Burton@arm.com> wrote:

> On 15 Feb 2023, at 05:35, Joel Winarske via lists.yoctoproject.org
> <joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Has anyone played around with the mold linker?
> >
> > https://github.com/rui314/mold
> >
> >
> > Curious what the build time difference might be on a large multi-core
> machine.
>
> I have a branch in poky-contrib:ross/mold.  It=E2=80=99s been blindly upd=
ated to
> the latest release but not tested, but the wins were not as impressive as
> one would hope for most builds.
>
> Worth keeping an eye on though, and if you=E2=80=99re interested then my =
branch
> would be a good starting point, at least for showing where work to oe-cor=
e
> needs to be done to generalise the linker choice further.
>
> Ross

--0000000000004157f005f4de0324
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr">Oh cool!<br></div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">I&#39;ll run some tests on a few builds.</div><div di=
r=3D"ltr"><br></div><div dir=3D"ltr">Thanks for pointing that out.</div><br=
><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Feb 16, 2023 at 12:42 PM Ross Burton &lt;<a href=3D"mailto:=
Ross.Burton@arm.com" target=3D"_blank" rel=3D"noreferrer">Ross.Burton@arm.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 15 Feb 2023, at 05:35, Joel Winarske via <a href=3D"http://lists.yocto=
project.org" rel=3D"noreferrer noreferrer" target=3D"_blank">lists.yoctopro=
ject.org</a> &lt;joel.winarske=3D<a href=3D"mailto:gmail.com@lists.yoctopro=
ject.org" target=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject=
.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Has anyone played around with the mold linker?<br>
&gt; <br>
&gt; <a href=3D"https://github.com/rui314/mold" rel=3D"noreferrer noreferre=
r" target=3D"_blank">https://github.com/rui314/mold</a><br>
&gt; <br>
&gt; <br>
&gt; Curious what the build time difference might be on a large multi-core =
machine.<br>
<br>
I have a branch in poky-contrib:ross/mold.=C2=A0 It=E2=80=99s been blindly =
updated to the latest release but not tested, but the wins were not as impr=
essive as one would hope for most builds.<br>
<br>
Worth keeping an eye on though, and if you=E2=80=99re interested then my br=
anch would be a good starting point, at least for showing where work to oe-=
core needs to be done to generalise the linker choice further.<br>
<br>
Ross</blockquote></div>
</div>

--0000000000004157f005f4de0324--

