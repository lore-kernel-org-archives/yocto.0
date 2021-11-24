Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04DCC433F5
	for <webhook@archiver.kernel.org>; Wed, 24 Nov 2021 17:56:03 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web12.1492.1637776559112389934
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 09:55:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hAXp5Z9d;
 spf=pass (domain: gmail.com, ip: 209.85.166.175,
 mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id m5so3256632ilh.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 09:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l6fqQrNWkzr2Eo0aGiLzVByVhGeE27UMpipRAqyImb4=;
        b=hAXp5Z9dCUjO9/3UZ9ridqKP0lZ7O+dqD8nCJsC5BuzCenLN3wgQ4MRE5qGk5Tagei
         6XToG/sVDq7cHTIxmsuwRGj2oPOe76lDmPWG3QmKxM6gEOaJEWCIB2K4yR3sZQCTVudl
         +Z200IP17Pfh6fwfttQfFPRgjQv4O5//xVQFOrStyx0ViBe+O5Iyad4NgFCg7Ek/g9m3
         DDVLmuyJH2XQVnGnjVBwyWEE15uqnzTce2UecCR2xvpmq4QaTAzrZsyeAjIu71259coT
         A2Trzb0ZpBzSaf4BUF1g7wMuxnF73kP2X5dJomAT4UDxJkeXzDmhSRz94nV8nxa7F9AT
         iCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l6fqQrNWkzr2Eo0aGiLzVByVhGeE27UMpipRAqyImb4=;
        b=QUZp5oszc3X4dLBT2qgc7my+xjPosxYUBAHc2kkDfBO+cwgblDQr4d/zH9cY9dD6qR
         ney7c1dSbIGj9Sfv1OnN+f/NFfpTskUoh+vzOwXJdE4ObugqyS3Xi4+X1KfZGmHrDT9q
         XVS/OSGHFRJnYgLES78YN0CoTKrDtQMVnPwjYKPduC7FfoAeMz734yM+XRxQ7co00Zm6
         Ts2zUZQQkEX9gM/eFmQksokVl38iH1Vd0oEIyiL+/IA6twvud5hBd7vJVhR1kiA+/1jh
         DaGPBENmJP+EV/1sYcJDNm84ldMb2bMGmLt7Ajj7pKUBZZt8idaYsXPR3vl8sBK5W57b
         sDHQ==
X-Gm-Message-State: AOAM533/l80UGhNEGzTNtUGzH0Tpw9E67YHFTpfZdP8cb6+IFkgn9N5r
	JvATM4XYG7Cupp9xLcLbaFiQlRz5VPjvMX3hb/lRIdP9xEA=
X-Google-Smtp-Source: 
 ABdhPJwDrtRcCjXR81xYDY/dwjZ3twj/WupQkk+P7zN86wX3RTG/k7p5JNB9VwjQRwafqNde79/nLvVXSQjPumM2SCs=
X-Received: by 2002:a05:6e02:1647:: with SMTP id
 v7mr15282113ilu.217.1637776558217;
 Wed, 24 Nov 2021 09:55:58 -0800 (PST)
MIME-Version: 1.0
References: <qUQg.1637620570327649228.fQLs@lists.yoctoproject.org>
 <1164.1637621652197432636@lists.yoctoproject.org>
In-Reply-To: <1164.1637621652197432636@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 24 Nov 2021 09:55:46 -0800
Message-ID: 
 <CANx9H-BSj=A5kdGLb9YHMeqg+68yCjfXNU4M5P2sbKBP2etaHA@mail.gmail.com>
Subject: Re: [yocto] Problem installing python package from a wheel #bitbake
To: David Babich <ddbabich@bootseeds.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f95cba05d18c9129"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 17:56:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55407

--000000000000f95cba05d18c9129
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 22, 2021 at 2:54 PM David Babich <ddbabich@bootseeds.com> wrote:

> I made it a little further by adding *--no-cache-dir* to the pip3 install
> command.  That got rid fo the warning about not being able to access the
> .cache/pip.  However I still have the error:
>
> | ERROR: torch-1.10.0-cp36-cp36m-linux_aarch64.whl is not a supported
> wheel on this platform.
>
> Installing third-party wheels is not something we are likely to ever
support in Yocto Project/OpenEmbedded recipes.

Are you trying to install using pip3 on target?
Note that many factors will make it tricky for python wheels with binary
content (C or Rust extensions). The python3 version must match, as will the
libraries it requires.

The wheel you listed was built for Python 3.6 (cp36) and ARM v8 (aarch64).
The error is what you would see if you were trying to install an aarch64
wheel on an x86-64 target, but other reasons could lead to that error. We
don't know what version of glibc, gcc, etc. was used and whether those are
going to be compatible.

Also, when asking questions, please tell us which release of Yocto Project
you are using, what the MACHINE you are building for is, which layers you
are using (and at what release) and other information to help us help you.

Cheers,
--Tim

-=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55390):
> https://lists.yoctoproject.org/g/yocto/message/55390
> Mute This Topic: https://lists.yoctoproject.org/mt/87247090/924729
> Mute #python:https://lists.yoctoproject.org/g/yocto/mutehashtag/python
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f95cba05d18c9129
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 22, 2021 at 2:54 PM David=
 Babich &lt;<a href=3D"mailto:ddbabich@bootseeds.com">ddbabich@bootseeds.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small">I made it a little further by adding=C2=A0<strong>--no-cache-=
dir</strong>=C2=A0to the pip3 install command.=C2=A0 That got rid fo the wa=
rning about not being able to access the .cache/pip.=C2=A0 However I still =
have the error:</p>
<p style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font=
-size:small">| ERROR: torch-1.10.0-cp36-cp36m-linux_aarch64.whl is not a su=
pported wheel on this platform.</p>
<br></blockquote><div>Installing third-party wheels is not something we are=
 likely to ever support in Yocto Project/OpenEmbedded recipes.</div><div><b=
r></div><div>Are you trying to install using pip3 on target?</div><div>Note=
 that many factors will make it tricky for python wheels with binary conten=
t (C or Rust extensions). The python3 version must match, as will the libra=
ries it requires.=C2=A0</div><div><br></div><div>The wheel you listed was b=
uilt for Python 3.6 (cp36) and ARM v8 (aarch64).=C2=A0 The error is what yo=
u would see if you were trying to install an aarch64 wheel on an x86-64 tar=
get, but other reasons could lead to that error. We don&#39;t know what ver=
sion of glibc, gcc, etc. was used and whether those are going to be compati=
ble.</div><div><br></div><div>Also, when asking questions, please tell us w=
hich release of Yocto Project you are using, what the MACHINE you are build=
ing for is, which layers you are using (and at what release) and other info=
rmation to help us help you.</div><div><br></div><div>Cheers,</div><div>--T=
im</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55390): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55390" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55390</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87247090/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
87247090/924729</a><br>
Mute #python:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
python" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/python</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f95cba05d18c9129--

