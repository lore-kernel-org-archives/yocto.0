Return-Path: <chiefsleepyeye@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B931C6FA99
	for <webhook@archiver.kernel.org>; Sun, 12 Mar 2023 10:24:02 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.63992.1678616641575741159
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Mar 2023 03:24:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=m/bC02vC;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: chiefsleepyeye@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id i28so12207722lfv.0
        for <yocto@lists.yoctoproject.org>; Sun, 12 Mar 2023 03:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678616639;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X0FyYmEiUgieRokwTTDZ/m4CM7NkusZ3ouHBrgMYrOg=;
        b=m/bC02vCdSgdS1VkG7yIIrAnf5J7cQtJxZYlC7wH4GJnbQltGhFJnt1sjZbIC2EBi/
         /CYzPuWDnnmiCTUTlyyB0WCM2h01P0Cb4/J116i9mp+3sKutnYC4ef1HyPeo0zTgA/8k
         FikYO9tqde0izU33dwg8tMOB+E5EXvfq74hNno4TfjD+CD82ZXSxSPv2mEtvSfdyOOvl
         2k8MVayRIUPaj6PhH5oOsagxWeI5vxW8/EWMbwVhvDs+nhxGGhLjvGE3tL47v+5HQeIF
         q0ubk+qtxaNOC4AZ8hoA0yDoc0OncA4zChM3d3DsFGjOBy70Bn0DYo902kgGsNWJGTm1
         4PfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678616639;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X0FyYmEiUgieRokwTTDZ/m4CM7NkusZ3ouHBrgMYrOg=;
        b=J1mmQBfH9jQKZV7H+5usHGm3qhQWVabzHbQ9MSF9LGEfN+Yi0xmaQNVpeM/BKjPlXk
         qL+pbIvmZUrZoEJYPwLIE+Ws0bhEnPzGFR+bQl+cAi5NfQg1kz4GPj2tF/PW7GyNvCVo
         O29aZ2gNPqTfrBCdQqc/mOcQutxsYx7nYutYMknJSnj+iOsa2ItUJWIRcCPnfxL7ZG0O
         TtlYrJiQEuP3n83TcNAhmPLyyCmXIoyk2/3q8H6XUQPovM7E8bSeCnvbr+SIZRiQt5lo
         29swMnp5on0FcXySSiA6EydtkW6Bc+yakbq1cyNfqfyZVq59RpEL1E8FY4gZtG86lfYS
         C9aw==
X-Gm-Message-State: AO0yUKUycB2YiY9lid0YpUfZsS591EaZ+uMoH8LP4XJBMmJivWftDA/i
	nepyjD6YRre9Xilbm3BwWM3aEeV3Mt23uheh4xA=
X-Google-Smtp-Source: AK7set9Rj7HVe09RkgJToCNUxpT1XaurVgnHtVYmBWljKtXBLYU8caGEp76kLIOaekAf+7lKhSJPFp7QdBS91kkNcjA=
X-Received: by 2002:a05:6512:68:b0:4d5:ca32:9bd7 with SMTP id
 i8-20020a056512006800b004d5ca329bd7mr9725745lfo.3.1678616639176; Sun, 12 Mar
 2023 03:23:59 -0700 (PDT)
MIME-Version: 1.0
References: <itaD.1678596723864035619.vjmt@lists.yoctoproject.org>
In-Reply-To: <itaD.1678596723864035619.vjmt@lists.yoctoproject.org>
From: Mike Lynch <chiefsleepyeye@gmail.com>
Date: Sun, 12 Mar 2023 05:23:47 -0500
Message-ID: <CAMbeKuAy_hqpTZw5xEALdNrfsh7mzZ4h6aOsAABPnnG5o5tiKg@mail.gmail.com>
Subject: Re: [yocto] setup in Ubuntu on VMWare #ubuntu
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007e04b805f6b1644e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Mar 2023 10:24:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59405

--0000000000007e04b805f6b1644e
Content-Type: text/plain; charset="UTF-8"

I've done this in the past.  Build time in that environment is painfully
slow (an entire day using a decent machine).

On Sat, Mar 11, 2023, 10:52 PM Crane <crane2018@gmail.com> wrote:

> Hello,
>
> I want to run Yocto project build on Ubuntu 22.04 running on VMWare. In
> the documentation at this link
> <https://docs.yoctoproject.org/current/dev-manual/start.html#setting-up-to-use-cross-platforms-crops>,
> there are three cases, but none of them is for Linux running on virtual
> machine.
> I wonder if it belongs to the category of "Native Linux Host". If not, how
> to set up Ubuntu 22.04 on VMWare.
>
> Thanks!
> Crane
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59403):
> https://lists.yoctoproject.org/g/yocto/message/59403
> Mute This Topic: https://lists.yoctoproject.org/mt/97554667/6323106
> Mute #ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chiefsleepyeye@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000007e04b805f6b1644e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I&#39;ve done this in the past.=C2=A0 Build time in that =
environment is painfully slow (an entire day using a decent machine).</div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat=
, Mar 11, 2023, 10:52 PM Crane &lt;<a href=3D"mailto:crane2018@gmail.com">c=
rane2018@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">H=
ello,<br><br>I want to run Yocto project build on Ubuntu 22.04 running on V=
MWare. In the documentation at <a href=3D"https://docs.yoctoproject.org/cur=
rent/dev-manual/start.html#setting-up-to-use-cross-platforms-crops" rel=3D"=
noopener noreferrer" target=3D"_blank">this link</a>, there are three cases=
, but none of them is for Linux running on virtual machine.=C2=A0<br>I wond=
er if it belongs to the category of &quot;Native Linux Host&quot;. If not, =
how to set up Ubuntu 22.04 on VMWare.<br><br>Thanks!<br>Crane
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59403): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59403" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/59403</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97554667/6323=
106" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/97554667/6323106</a><br>
Mute #ubuntu:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
ubuntu" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yocto=
project.org/g/yocto/mutehashtag/ubuntu</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:chiefsleepyeye@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">chiefsleepyeye@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000007e04b805f6b1644e--

