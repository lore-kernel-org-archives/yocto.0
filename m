Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08F46C3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 11:33:58 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web10.40657.1722425632096266459
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 04:33:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UVOdVybl;
 spf=pass (domain: gmail.com, ip: 209.85.222.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-825eaedfef3so1455711241.0
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 04:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722425631; x=1723030431; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4gsq+Hv334a7ngIz418LgLPk29h8yFWAlP1TYMRMAdA=;
        b=UVOdVyblFZs3Dh0OOAHYx80SzlXRGNW57grOtLeoX7tJOU14JAcWi5kWDCMiVfoqiw
         4YnCd97E0xYLUQjHSkCrunPe5gpgDhnlZtrUvq7jKGJtqu5GLPJoizbrvCmzHf5ko6x+
         f4j+IyuLYPHVo2/0oHogOKIh4wuxg1ltydWUKytqLUQKenr2FVxZSpY6Bkuzt1+VC0aK
         ADy5ErDMavZrzmpRF1+HcElIZw5bP/vs4aTA5+5Srhr9gEKHHyV0m547lTuQdvo7Y5s3
         M/Q3RlUbVHynQPwDr014RhjP+d0E9XURDjKVPH2NRyySL/7tw5FL5rHQyFGxaUh8/Vdm
         0AvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722425631; x=1723030431;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4gsq+Hv334a7ngIz418LgLPk29h8yFWAlP1TYMRMAdA=;
        b=DcK9cU/Uc1rxtUhuwiNYzMO0oc46b9F6VbR5GOMy8pIPKGkC5Dbe3jUJFnF+aJxRAn
         Lm0dxsrr5vdPmh7vnHZEq/pDJPRP2KP+eY41eS1/yWV8HlgjBw4TMaHWF9CPnGiqCNnP
         S2c5J6PTUdgvrudZShBU9sG8yN7UO7RPfi9ErRkXj8igviQJ1rie0+LpmtAlApX35W7t
         6dxjLiFsfSHDUm1mjcxPlA5F8qr3RQ2E3+qVSds88wO7uA+GOxPBFoAmvGG8IgyjOTOD
         xg8N+B7yfQZ8J8sLyqOIMncWj7rUNUj1FRoBe3qO3SK+Wp3iw1r0SB8zg7c5R+e8g5Xx
         etww==
X-Gm-Message-State: AOJu0YxgT8AsQ3ngFcqa9YqMHZUiyKb43kOw71yih/qm5nqohu2MHIMi
	xe7SLkoidy4oCA6Rl8QAOMrBaXHr5S/Lla+eghj1B/oJ+CzYdTfXDdSIbiFphBLiMrQQSyTHmGc
	aSOuEN1uisyPNalJkrJbBPVJABS/gLDTK
X-Google-Smtp-Source: AGHT+IEqG0mAvCzjfXjcmHlFIEusunk46GOBpxH+N7LgW41i7esuwP6u0bgvhPQ259YDd2zfBm7KFDkfy4ccrl2ddC0=
X-Received: by 2002:a05:6102:5089:b0:491:d10:a98c with SMTP id
 ada2fe7eead31-493fa064cabmr18870280137.0.1722425630913; Wed, 31 Jul 2024
 04:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAMjhiJisg+Fr8pQKA6TtWBbvGD5H-q3d1CkiDHO_OrRZnDSnPQ@mail.gmail.com>
 <8209.1722413154612282437@lists.yoctoproject.org>
In-Reply-To: <8209.1722413154612282437@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 31 Jul 2024 12:33:40 +0100
Message-ID: <CANPvuR=_ru5BzUiR_hSkxpkOr_JZxt6NrErioXgXd_G91tvNOA@mail.gmail.com>
Subject: Re: [yocto] Diff / Delta file between two rootfs images.
To: yocto@lists.yoctoproject.org, patryk.seregiet@gmail.com
Cc: Leon Woestenberg <leon@sidebranch.com>
Content-Type: multipart/alternative; boundary="000000000000e1fa8a061e89773d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 11:33:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63631

--000000000000e1fa8a061e89773d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Patryk,

First of all, I'd like to start by saying that I work for Foundries.io.
Foundries.io provides a platform havely based on OSTree to do the OTA.

You can take a look on:

https://foundries.io
https://docs.foundries.io/latest
https://github.com/foundriesio

You can also take a look on the https://github.com/uptane/meta-updater laye=
r
to create root filesystems with ostree.

Jose

patryk seregiet via lists.yoctoproject.org <patryk.seregiet=3D
gmail.com@lists.yoctoproject.org> escreveu (quarta, 31/07/2024 =C3=A0(s) 09=
:06):

> Hello Leon,
>
> Thanks for the suggestion, Mender was the first program of this kind that
> I was recommended, admittedly I did not look for alternatives. I will
> checkout OSTree.
>
> Best regards,
> Patryk Seregiet
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63622):
> https://lists.yoctoproject.org/g/yocto/message/63622
> Mute This Topic: https://lists.yoctoproject.org/mt/107634352/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000e1fa8a061e89773d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0)">Hi Patry=
k,<br></span><br>First of all, I&#39;d like to start by saying that I work =
for Foundries.io.<br>Foundries.io provides a platform havely based on OSTre=
e=C2=A0to do the OTA.<br><br>You can take a look on:</div><div dir=3D"ltr">=
<br></div><div dir=3D"ltr"><a href=3D"https://foundries.io">https://foundri=
es.io</a>=C2=A0</div><div dir=3D"ltr"><a href=3D"https://docs.foundries.io/=
latest">https://docs.foundries.io/latest</a><br><a href=3D"https://github.c=
om/foundriesio">https://github.com/foundriesio</a><br><br>You can also take=
 a look on the <a href=3D"https://github.com/uptane/meta-updater">https://g=
ithub.com/uptane/meta-updater</a> layer<br></div>to create root filesystems=
 with ostree.<div><br>Jose</div><div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">patryk seregiet via <a href=3D"http://lists.=
yoctoproject.org">lists.yoctoproject.org</a> &lt;patryk.seregiet=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; escreveu (quarta, 31/07/2024 =C3=A0(s) 09:06):<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div>Hello Leon,</div>
<div>=C2=A0</div>
<div>Thanks for the suggestion, Mender was the first program of this kind t=
hat I was recommended, admittedly I did not look for alternatives. I will c=
heckout OSTree.</div>
<div>=C2=A0</div>
<div>Best regards,</div>
<div>Patryk Seregiet</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63622): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63622" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63622</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107634352/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107634352/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div></div>

--000000000000e1fa8a061e89773d--

