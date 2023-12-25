Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BD86C3DA6E
	for <webhook@archiver.kernel.org>; Mon, 25 Dec 2023 16:45:26 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web10.62466.1703522722970295950
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Dec 2023 08:45:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KLWuYDtZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2045bedb806so1857582fac.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Dec 2023 08:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703522722; x=1704127522; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kq4DA7ks6IEtSvxz+1ZCK7UAp7j82Hbx5+yxtzPQR8M=;
        b=KLWuYDtZLsaTzQGPI7XrCig6pzYGvbbRcYwJlgoUbUcbspuJNUgV7zOjIUY/wyEVc5
         VDjBNihA4G3ltGkr4GQ0lw45epF2JwUkSEmjyJa8AnGhCMUoek/DMcjQ3ZaR+BDglnUk
         tPzjw4laeEmrVib8+78GUIwLNVgQbUKbd1tZH3UTKeo769syA5ikJeEk8X5mNLVZH3bm
         AJfGevCIN97bACDdCQ0hcp9rP6xoK6NwQtsGuy1KHI5FiQZmtjy4tcDS8F8t2D0n+dhV
         V8T4lymjjQ3f51qUa8tsQerIA5o7me2KWvF+wHPAL91PWkr7CnGLAPHnmJGcoALYsgd4
         N9/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703522722; x=1704127522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kq4DA7ks6IEtSvxz+1ZCK7UAp7j82Hbx5+yxtzPQR8M=;
        b=aMGIpxz/p/LFgvroEtmn+xDV6gByK7Tfj0gI2V0HEo3rKgMG/2J6FW+sPnoJN2ko3O
         zFNR2NhJxMkyDsJ9c0uRrr+kpfCnYpZlLl2ZCs8Vyx/yyyqsn+D+jTjW8VL8r0RPdjLW
         dOLhZem1XxLAZNm9RwKOtTNyt4dLdaNeacvirUUkDHm/h1qfnB3L5sJ2Nm+fzcKAO0P6
         ixmNwU65ZaHhxatZnf/HwSmgxW/lS2fHuCCbGvR4vPq1SrQb9YKAeL16+d5DUw3eBBQy
         3XgbMA39LSt38MP8lhSG4gQ792ezPqGqWek8Rn62BuXcN+Djvn3ixt8uIgQrdtzRZjlc
         4duA==
X-Gm-Message-State: AOJu0YxBXx41NEf98vDZUNNrvu2VapBTdNM7jVfhhJcasL/WA1Izl0RD
	HXn90QvNJbqgpx4zewgr5GEMeuLq9DAv/i9YI24=
X-Google-Smtp-Source: AGHT+IHN8EowrFVm93lOvG+dxLEkIHjm1h+qLmilg0EBY2DXJYeKAlqz45Cj4w8HwOaZVNgj5iKki5cxQbQpsj293jk=
X-Received: by 2002:a05:6871:688:b0:203:28ea:af55 with SMTP id
 l8-20020a056871068800b0020328eaaf55mr8054219oao.90.1703522721974; Mon, 25 Dec
 2023 08:45:21 -0800 (PST)
MIME-Version: 1.0
References: <SQYO.1703485041673038154.cmwU@lists.yoctoproject.org> <26170.1703516318303380181@lists.yoctoproject.org>
In-Reply-To: <26170.1703516318303380181@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Dec 2023 08:45:11 -0800
Message-ID: <CAMKF1spb04xvGZG+U+TLE9iTgDtz4OORwdOihjgTGSTs_bU6hg@mail.gmail.com>
Subject: Re: [yocto] I get an error with bitbake when a program requires libgpiod.
To: stephen@radxa.com, yocto@lists.yoctoproject.org
Cc: "fgobber@hotmail.com" <fgobber@hotmail.com>
Content-Type: multipart/alternative; boundary="000000000000b5ceeb060d584a52"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Dec 2023 16:45:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62036

--000000000000b5ceeb060d584a52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 25, 2023 at 6:58=E2=80=AFAM Stephen Chen <stephen@radxa.com> wr=
ote:

> Hi
>
> I don't know how to reproduce your issue.
> But to add libgpiod, you can add the following lines to your
> build/conf/local.conf
>
> IMAGE_INSTALL:append =3D " \
> libgpiod \
> libgpiod-dev \
> libgpiod-tools \
> "
>

-dev and -tools may not be required so just use libgpiod to begin with

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62035):
> https://lists.yoctoproject.org/g/yocto/message/62035
> Mute This Topic: https://lists.yoctoproject.org/mt/103357169/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b5ceeb060d584a52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 25, 2023 at 6:58=E2=80=AFAM Stephen Chen &lt;<a=
 href=3D"mailto:stephen@radxa.com">stephen@radxa.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">Hi<br><br>I don&#39;t know how to reproduc=
e your issue.<br>But to add libgpiod, you can add the following lines to yo=
ur build/conf/local.conf<br><br>
<div style=3D"white-space:pre-wrap">IMAGE_INSTALL:append =3D &quot; \</div>
<div style=3D"white-space:pre-wrap">libgpiod \</div>
<div style=3D"white-space:pre-wrap">libgpiod-dev \</div>
<div style=3D"white-space:pre-wrap">libgpiod-tools \</div>
<div style=3D"white-space:pre-wrap">&quot;</div>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">-dev and -tools =
may not be required so just use libgpiod to begin with=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#62035): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62035" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62035</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103357169/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103357169/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000b5ceeb060d584a52--

