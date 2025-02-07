Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCD81C02199
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 16:11:13 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web10.73197.1738944664527790223
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 08:11:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QeVOZTvh;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-29fae583cc8so1155376fac.1
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 08:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738944664; x=1739549464; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gYWLj29aRTyBW7snGFq1+gDWcjSDhlZe656s6C5pRmI=;
        b=QeVOZTvh7VaKaoNH/yAtKMKAFcgOuU5XuZf5f/gkRqCyeflEgdLhPjAk9pWP70/wan
         jV1eXWR8MSmMoVv+3KrZa/1i8eNULlQewaXnMHCU7d5US0FP3VoBWjNeFslk1X4raDHN
         8aDD0OhICG2BuJ1K2HDi/CijmnnhS4uD8AlJ/7a2fx+PgOOw59JNuTRQBOSfstPh4TMl
         SfdGfOek34D8hWtsaD5sYBtV9skrtFTGTDiDvTz3dx7zig/7vc7UvFSSN3ZMdtyM+kOG
         Cjo9SPzDBYyFsqZhtZHSgQMQDYTR53P98BmzjeKnFH8qO+RnIzWqIGRdXxJ4o7vZHh78
         Q1hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738944664; x=1739549464;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gYWLj29aRTyBW7snGFq1+gDWcjSDhlZe656s6C5pRmI=;
        b=llCmYLh31SfJtJZ/tlQe3HodMQwbXc7t5e5l8SEtouQNGK1KQzbFUzCB5IJMZgIb27
         Zbw/qHiUys1mOq8HwKfSlW1L9qGAp9MIfWzEFXrxm/5HZ140i4+45/plGCkJrdTcTYBP
         4fgQ7B54j0F3cQybghce6h3KMp9a6d1L2juobw0+p3TmrJHB1cFd7jwGctl7GAZBJrYx
         S1RvD/lNZl5D8KAFHSFn8brKosbqEUz5c1GfQEvSE91wPlj5wt0B0Hh7uAQOSB0vnizA
         khPcgDvU4zUXT0EYM2rk9oyVMrdEulaKjepf1J06DuWWjzK+tPn0QM+RktFx6siQBOb9
         86Xg==
X-Gm-Message-State: AOJu0Yyj7XWGK68BtsvSN/WedcgUopSAPUh5G3ZzVGlhih3b6GGDQkpw
	P1m66GOyZjGi+wB0gQIHktTGvoQKXrgH3fmHR+/+StSyuN8+4KgXC6Nl1lRvCERqsb8IZ7rLM04
	uE5kla31dxyET5ftWuZMxW6Ofwuc=
X-Gm-Gg: ASbGnctxOQL2lC5Ui3TVb9Nc/xcnVGr9CbO2Tu9WsyjM2WvHF1BWIrdKagmZbVMyi1Q
	wo9SKuHGsGl4ghbfYOpCRJMRwxYSajGVILZ5UnvD9o5ABKDBXujDXAAr7dOG7h9ByaF7SmJZE3L
	2vERKC/pUbfhhg2ibBaB3JhK2puqDxlw==
X-Google-Smtp-Source: AGHT+IF4dy7eKIuz3MvPs/WdhhTgRwoI+UJjpc8hRgfl89wslk/2qv7ZsRZ7/9qdjrOa1obIREJeyQNqrPtjg9rM/B0=
X-Received: by 2002:a05:6871:3806:b0:2b7:faa7:daf2 with SMTP id
 586e51a60fabf-2b81e965389mr5236285fac.6.1738944662202; Fri, 07 Feb 2025
 08:11:02 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sq2MrjRGY95CtH6PTwNPn8KFbrNmrv1a+req+4RNn9Z0w@mail.gmail.com>
 <22391.1738935587041536318@lists.yoctoproject.org>
In-Reply-To: <22391.1738935587041536318@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 7 Feb 2025 08:10:51 -0800
X-Gm-Features: AWEUYZm1d2TTmKlpjWKrhUn267UFccsoj41JJ1z1v5ZZyNKAu9RVVQUEkRKQHrQ
Message-ID: <CAMKF1sq5gFG_r27i-8tVw7N0GfGmNvUsed5sKoVzOYd7DyHZQQ@mail.gmail.com>
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master
 branch of Yocto #raspberrypi #raspberrypi0-wifi
To: jdowd@slashdevslashnull.org
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dff3d0062d8f9a70"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 16:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64751

--000000000000dff3d0062d8f9a70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 7, 2025 at 5:39=E2=80=AFAM John via Lists.Yoctoproject.Org <jdo=
wd=3D
slashdevslashnull.org@lists.yoctoproject.org> wrote:

> So with your suggested change to the file: raspberrypi0-2w.conf, it
> stopped at the same place as reported in my first post. I of course, adde=
d
> a line to the config.txt of:
>
>
> arm_64bit=3D0
>
> I checked the output on the console to verify.
>
>

Thanks I think there is something else regesssing then which might need
further investigation

Unless there is anything else you want me to try I'm going to move onto
> getting the wifi to work and eventually bluetooth (Everything is better
> with bluetooth).
>
> Cheers!!
>
>

--000000000000dff3d0062d8f9a70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 7, 2025 at 5:39=E2=80=AFAM =
John via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</=
a> &lt;jdowd=3D<a href=3D"mailto:slashdevslashnull.org@lists.yoctoproject.o=
rg">slashdevslashnull.org@lists.yoctoproject.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div>So with your suggested change to the file=
: raspberrypi0-2w.conf, it stopped at the same place as reported in my firs=
t post. I of course, added a line to the config.txt of:</div>
<div>=C2=A0</div>
<blockquote>
<div>arm_64bit=3D0</div>
</blockquote>
<div>I checked the output on the console to verify.</div>
<div>=C2=A0</div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Thanks I think there is something else regesssing then which might need fu=
rther investigation=C2=A0</div><div dir=3D"auto"><br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"auto"></div>
<div>Unless there is anything else you want me to try I&#39;m going to move=
 onto getting the wifi to work and eventually bluetooth (Everything is bett=
er with bluetooth).</div>
<div>=C2=A0</div>
<div>Cheers!!</div>
<div>=C2=A0</div>
</blockquote></div></div>

--000000000000dff3d0062d8f9a70--

