Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29FF1CFA447
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 15:48:46 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
 by mx.groups.io with SMTP id smtpd.web11.823.1729698520140542421
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Oct 2024 08:48:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UE0s4UX3;
 spf=pass (domain: gmail.com, ip: 209.85.161.42, mailfrom: bratiranjan12@gmail.com)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5eba976beecso457015eaf.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 08:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729698519; x=1730303319; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nsdF0pdVwe1HiOel2oZtDuy8qbHHRRbFD50SATPv1S0=;
        b=UE0s4UX3dUzFBWdekoZOYc6G5bT0Hkb4jYxqInyC8VRttwl/SLJmHv4kmJ3UWrQ5nZ
         lr0QtHz2in+bHUCblWVuIVQzmIU1fZR64fZkvY/Ojdo4xbxdLBGJQ2TlkzhTBdyxmZmJ
         0ocgCGlXPYw2UNtAoBrxpJIcqoaQA2PJMg1qgrPAbjjfgWV99axiBsB/jfBPu3+Rb00F
         ykmbzk1qVYqOicWxb/HylIbkLHmxoDHAYdqeYFYehZadLcsaKrzQdLh6DRzHVR18xRLq
         UIuRD+X7TVgjM7kfk+7w0FlJ4pyJH0nvh4jUYaiKspIX2FfHafr9yaCNhqjveHop1CE1
         pWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729698519; x=1730303319;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nsdF0pdVwe1HiOel2oZtDuy8qbHHRRbFD50SATPv1S0=;
        b=Fb19Xi4n5W52zlDGuBmJuYRSHPIDeDUovpVZ3ZRd6o79j9eTRwoeVSr9oVDR8XYndx
         rFrX3v6BrepiY1ezH+0Z7QELgSJb/WMix1Zh6ecwG2miYpICA1IQViNZv2hMVLp18eRh
         eBIDRqjN4LVMMKaPVmpqlXpLhR34IbOS/dxVzpwdb74Vcsfe23Yik0KFSr8g7b/4kjFj
         uRQBlQZM9koOz/0IXC+WHrDMFZaIOIRm0lsicIwk43VtHYfhp/VYaa/uUDb9gFxmsG+T
         Qnw1gYkvMRgfI49hFXD10MgdWycv0Y7n1yhX7wqp3xoTwAmrUOeDca/Yc4eLHs2hOZ8+
         4lLw==
X-Gm-Message-State: AOJu0YwzSJ+ptzMjee/t5nTAiO//LL2UmBcSBGB5BfH7kp7GapMJBSe5
	mjxSwShln7aLfkFA9bA75KSb0WyB5AiyLmzAHCRcJgBX2Vob1xpmjjYoxqAjRB5oLeKuv0omx6D
	nZgNjZ8yH7QWLIW0n1izNLBk4jIPU1MbZ7seZfQ==
X-Google-Smtp-Source: AGHT+IGJ6caiRJHanIrJcU13WNsueVDXbMh0wdIeub1IDQ6FfbM2/9k7Q3DEXf3bmXAeLykcGz+uiWexJjTsZ4NlfJs=
X-Received: by 2002:a05:6820:160d:b0:5eb:6b3e:ce7f with SMTP id
 006d021491bc7-5ebedeb15f8mr1681945eaf.0.1729698518730; Wed, 23 Oct 2024
 08:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY7XTNo=OF-nBWCCKuqOjSNLfaop-E3RJksqzZ2N91rmUg@mail.gmail.com>
In-Reply-To: <CALSmAY7XTNo=OF-nBWCCKuqOjSNLfaop-E3RJksqzZ2N91rmUg@mail.gmail.com>
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Wed, 23 Oct 2024 21:18:27 +0530
Message-ID: <CALSmAY5MsNoCPpfS0ZOKzC36vHK7efco7N=iMN_d8cwU5ZJjHQ@mail.gmail.com>
Subject: Re: Crypto-Ver-error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c71306062526d115"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 15:48:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64097

--000000000000c71306062526d115
Content-Type: text/plain; charset="UTF-8"

Can anyone help me with this issue? Or it is not possible??

Hi all,
[Current scenario]
I am using scartgap yocto so python3-cryptography that poky provided is of
42.0.5 but i am integrating a middleware which actually needs cryptography
ver-37.0.4.[langdale yocto]

[What i have tried]
I tried to compile the python3-cryptography_37.0.4.bb file in current
scarthgap but experienced a lot or error and was unsuccessful. But the same
thing when i tried for nanbield yocto i was successful.

[From Board side]
When i tried to install cryptography directly from board through pip3 i was
successful but i dont want this everything should be compiled and load in
my final image through yocto.

Kindly help me to install cryptography==37.0.4 to my final image through
yocto

Thank you !

On Wed, 23 Oct 2024 at 16:24, Bratiranjan Acharya <bratiranjan12@gmail.com>
wrote:

> Hi all,
> [Current scenario]
> I am using scartgap yocto so python3-cryptography that poky provided is of
> 42.0.5 but i am integrating a middleware which actually needs cryptography
> ver-37.0.4.[langdale yocto]
>
> [What i have tried]
> I tried to compile the python3-cryptography_37.0.4.bb file in current
> scarthgap but experienced a lot or error and was unsuccessful. But the same
> thing when i tried for nanbield yocto i was successful.
>
> [From Board side]
> When i tried to install cryptography directly from board through pip3 i
> was successful but i dont want this everything should be compiled and load
> in my final image through yocto.
>
> Kindly help me to install cryptography==37.0.4 to my final image through
> yocto
>
> Thank you !
>

--000000000000c71306062526d115
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anyone help me with this issue? Or it is not possible?=
?<br><br>Hi all,<br>[Current scenario]<div>I am using scartgap yocto so pyt=
hon3-cryptography that poky provided is of 42.0.5 but i am integrating a mi=
ddleware which actually needs cryptography ver-37.0.4.[langdale yocto]<br><=
br>[What i have tried]<br>I tried to compile the=C2=A0<a href=3D"http://pyt=
hon3-cryptography_37.0.4.bb/" target=3D"_blank">python3-cryptography_37.0.4=
.bb</a>=C2=A0file in current scarthgap but experienced a lot or error and w=
as unsuccessful. But the same thing when i tried for=C2=A0nanbield yocto i =
was successful.=C2=A0<br><br>[From Board side]<br>When i tried to install c=
ryptography directly from board through pip3 i was successful but i dont wa=
nt this everything should be compiled and load in my final image through yo=
cto.<br><br>Kindly help me to install cryptography=3D=3D37.0.4 to my final =
image through yocto<br><br>Thank you !</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 23 Oct 2024 at 16:24, B=
ratiranjan Acharya &lt;<a href=3D"mailto:bratiranjan12@gmail.com">bratiranj=
an12@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hi all,<br>[Current scenario]<div>I am using=
 scartgap yocto so python3-cryptography that poky provided is of 42.0.5 but=
 i am integrating a middleware which actually needs cryptography ver-37.0.4=
.[langdale yocto]<br><br>[What i have tried]<br>I tried to compile the <a h=
ref=3D"http://python3-cryptography_37.0.4.bb" target=3D"_blank">python3-cry=
ptography_37.0.4.bb</a> file in current scarthgap but experienced a lot or =
error and was unsuccessful. But the same thing when i tried for=C2=A0nanbie=
ld yocto i was successful.=C2=A0<br><br>[From Board side]<br>When i tried t=
o install cryptography directly from board through pip3 i was successful bu=
t i dont want this everything should be compiled and load in my final image=
 through yocto.<br><br>Kindly help me to install cryptography=3D=3D37.0.4 t=
o my final image through yocto<br><br>Thank you !</div></div>
</blockquote></div>

--000000000000c71306062526d115--

