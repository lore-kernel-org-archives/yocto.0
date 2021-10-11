Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6655C433F5
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 08:00:10 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web11.8825.1633939206988676654
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 01:00:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iccLQEM+;
 spf=pass (domain: gmail.com, ip: 209.85.222.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id u5so11568357uao.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 01:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mSfcyQwHh3jX+MqeMaGoq0fiYE0nX5kttfNSVrA2d8o=;
        b=iccLQEM+Pi6eRpJWq4iL2vh/FzMLSCDzTPX23oIpby6Q115yWlE/rwZf24kHDyRAML
         1nALJj3Ei4oaruGv3QitYABY1H3QIxq/Bt0QX3IGFtqThpCQ+Wut9ZwKIHr1p7qcvJzT
         C0zhAfF4w3lq8/0pc9zD10DnOmuyfS9Etoq+q1rMtFMhQf3KUIRxWPbhheogwc+aNXp9
         y0bCby2SX68AGum+U4bemaanWtyJDTFAD1h4AnNiT1Lo7mTJB8i5PWG6xGmIG5OWmSFj
         Vq8Xl67biG3wJsYTnr+Acqk7aMEvgZ7JrBtWehUpx+0BtPG03ThlRnrg6DEfwONoc3LU
         tXwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mSfcyQwHh3jX+MqeMaGoq0fiYE0nX5kttfNSVrA2d8o=;
        b=j4WaBYqTLM8x6C3MU0QXqrXRAvB4tHWaJAeTpQ0L5nfw92T3yQ1++kGjqdc2YHx1FH
         XNOdLy30ZoHdkJC5146q+apUkqRPKYP+qTMyhGkK0tGxMK2JvmUYBaHG7Qq0iLREFnyL
         dJXZFUokucoRodEKU9KNnq8J3XuEhv5J5R71esZ8ja2NA1XEIstaQrEaH7CJoQRhhNXp
         sdFyov6/btwFdP1BRPe3Fe5PpRy+awQX3aRmgYNoXeG3rQdX5yu+GEmiEIK/D/WplJf2
         kjO3lm58XwKn0hqHacbHKdwFaMqfg2Pye9rm1j2EDfHZM4NUK6ETHGfOHsvwooFNGeWS
         BzfA==
X-Gm-Message-State: AOAM533tqMCHJGhO3eUgermpIFVakDSsGl99YkBsBXvs4df0UZRa8V5/
	LHs0aOCOdhybOETtzY5Zjaps2CchflFGiVS1Z5k=
X-Google-Smtp-Source: 
 ABdhPJwLO/19oMasPzjNRxIYq/rfc18qLpIzAU2rhwSl1b5WaNIgncNZQcvH+ML3aRtLoTUaxvARSdyz8rN1SGXFDA4=
X-Received: by 2002:ab0:1623:: with SMTP id k32mr13226994uae.71.1633939206121;
 Mon, 11 Oct 2021 01:00:06 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAA=hcWSPQbqv9MDuRKME=iK8NM3sJKOdAcS1hti2VW0iodGFbQ@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWSPQbqv9MDuRKME=iK8NM3sJKOdAcS1hti2VW0iodGFbQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 11 Oct 2021 09:59:55 +0200
Message-ID: 
 <CANNYZj_T_fuYj2Ow_e1GydsJaHm36eOJArM7Ezzuj_hWk-TEvw@mail.gmail.com>
Subject: Re: [yocto] Yocto build error
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f72deb05ce0f1d5f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 08:00:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55014

--000000000000f72deb05ce0f1d5f
Content-Type: text/plain; charset="UTF-8"

You need to show the full command line that produces the error.

Alex

On Mon, 11 Oct 2021 at 03:45, JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> I have following errors:
>
> No GNU_HASH in the ELF binary
>
> /build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/solar/1.0.0-0/packages-split/wifi_signal,
> didn't pass LDFLAGS? [ldflags]
>
> So I add --hash-style=gnu to my Makefile:
>
> LD_FLAGS += --hash-style=gnu
> LDFLAGS = LD_FLAGS
>
> But that does not work:
>
> arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
> '--hash-style=gnu'
>
> What is wrong about the error if the  --hash-style=gnu is not the right
> fix?
>
> Thank you.
>
> Kind regards.
>
> JH
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55010):
> https://lists.yoctoproject.org/g/yocto/message/55010
> Mute This Topic: https://lists.yoctoproject.org/mt/86227801/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f72deb05ce0f1d5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You need to show the full command line that produces =
the error.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 11 Oct 2021 at 03=
:45, JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i,<br>
<br>
I have following errors:<br>
<br>
No GNU_HASH in the ELF binary<br>
/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/solar/1.0.0-0/pack=
ages-split/wifi_signal,<br>
didn&#39;t pass LDFLAGS? [ldflags]<br>
<br>
So I add --hash-style=3Dgnu to my Makefile:<br>
<br>
LD_FLAGS +=3D --hash-style=3Dgnu<br>
LDFLAGS =3D LD_FLAGS<br>
<br>
But that does not work:<br>
<br>
arm-oe-linux-gnueabi-gcc: error: unrecognized command line option<br>
&#39;--hash-style=3Dgnu&#39;<br>
<br>
What is wrong about the error if the=C2=A0 --hash-style=3Dgnu is not the ri=
ght fix?<br>
<br>
Thank you.<br>
<br>
Kind regards.<br>
<br>
JH<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55010): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55010" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55010</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86227801/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86227801/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000f72deb05ce0f1d5f--

