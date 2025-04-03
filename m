Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A25C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 13:28:41 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web10.13304.1743686914925635043
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 06:28:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YMoKLPnm;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: sateesh0457@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e60aef2711fso636730276.2
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 06:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743686914; x=1744291714; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xtIU8kMSL/LfSoznXQ76o3Q7o8pQKfHFhIU+b13Te0g=;
        b=YMoKLPnmRI46OTmxU7aZzWgbrqmmU2NfeeUnsVpOJLs1NUAIlEiK9+QGbb0C7oFuj1
         MqCOW8+DvBZ3VPSkzDEE2rmQc/Wd/tQNRilorGtb/FDwpfmI+bB5R0v7uy84bmRqdVSp
         XP1yE0BL3Dx8Ct/szke/QhQ93ei83Ho6pIX/vpvZhRVTP0lcwPJNOySAvb2P74GxbLQU
         jz7zaNitk+ihUjHQeVXUdWvjbBCLhH/ANJ7/dE6a9kOgR9JI1fkD5bpB0FMbUYnzQCkG
         r/Do9eLG6srbkA6CUefr/IzSycBa9nH/wTMP5lxXYGOtcgdEsdKkSW5yUpS0qRwxn4Kc
         ZYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743686914; x=1744291714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtIU8kMSL/LfSoznXQ76o3Q7o8pQKfHFhIU+b13Te0g=;
        b=RMwXAgf25CqhXKlFEh442EUh0h3rdU0O5sy1CJkD32qCMYoCj0sbZIdpNb+2E6z1he
         noorfsxZz+8+BjmnYaT0CLZ6BSr9xXoElPBm3Hu1MUf/PIhZDQejT0pZX2+PdRFA/fu5
         zHpBduybQKO4Pxfs/M7Kl8wpT1SWtr+47fpIXY3k65ObQ2B4ikJ+cs7o6h3NcZ1c0egJ
         kyG6rVW10KVRucsuN3mzPlNb8tbM/t+Pj/Uh1piZ4bZW+6+s2fTxwZSY64mhpdkZ16BK
         JbyOOHDiII7rvtjkeSfBgtKM/eYR45nz8mlLoOKnbY7AqzHRkGAY5Cn/HW3waqV3qqTZ
         cFJg==
X-Gm-Message-State: AOJu0YwjvixMyBUNGk6x2I8H1oaKt1MB7plEn7Tf4dx6dOuc0w8jKgHU
	74uaR7d/za3Z9F+RB1bMvsCNksEnWrubvsmhoh0VWfJdg++AKvZWM+0qXlAj8jRLbWmRoCExyS/
	iopxgPnOSRnuU0O7H+PEAT/HG7qA=
X-Gm-Gg: ASbGncvgkI/6Q4yAn6RGYg5UdHRMu1pZE1zJDNui1kxBH4DgjjnjgE0Wk3HD7H7LJAv
	NHwVa4hne5t9gS5H7XgNLnynh714kK7ZuZtxN+k0nSliMKmaUkLlXWzADmLttNKPaAf+VxT65rR
	oreSLUhqfKRpUOWSzPiBd/7uDqadE9ZABDAE0Ogqf6h7TeZ0BmLAc5dnV0bZeN
X-Google-Smtp-Source: AGHT+IHUWiuBsua7ZZ5la3Urz5gdP3qaaGvj2nm5gtiNmI3VPeNu+C9RUU2hy14DlS/P9DO07Tja5CecE+GtaDBgxdo=
X-Received: by 2002:a05:6902:a86:b0:e69:18e6:6939 with SMTP id
 3f1490d57ef6-e6b83ad4424mr27817415276.45.1743686913843; Thu, 03 Apr 2025
 06:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org> <C198FB4C-838E-4396-A25C-993A8653AF78@arm.com>
In-Reply-To: <C198FB4C-838E-4396-A25C-993A8653AF78@arm.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Thu, 3 Apr 2025 18:58:20 +0530
X-Gm-Features: AQ5f1Jpkh62KZMp_l1zZen1f1MtWdJws_9wIJSo2J2SdX0TLE-jPRN2ECPouVwY
Message-ID: <CACsETSvLz2P6+YJBD_QPeCg2Mgt_QHtGejuiyyaOuWAXO7MU5A@mail.gmail.com>
Subject: Re: [yocto] Replace Bash with Busybox
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001969080631dfbfd7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 13:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65083

--0000000000001969080631dfbfd7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Which script I need to write.

On Thu, 3 Apr, 2025, 6:44=E2=80=AFpm Ross Burton, <Ross.Burton@arm.com> wro=
te:

> On 2 Apr 2025, at 04:51, sateesh m via lists.yoctoproject.org
> <sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi Team,
> >   I want to upgrade my BusyBox version from 1.31 to 1.35 and replace
> Bash with BusyBox. How can I accomplish this task? Can anyone provide
> guidance? This would be helpful for me.
> >   I am managing this as described below, but I am still unsure whether
> this change will work or not
> >   PREFERRED_VERSION_busybox =3D "1.35.0"
> > IMAGE_INSTALL +=3D "busybox"
> > VIRTUAL-RUNTIME_shell =3D "busybox"
> > IMAGE_INSTALL_remove =3D "bash"
>
> busybox doesn=E2=80=99t provide bash, it provides sh.  Recipes will only =
be
> pulling in bash if they need bash, and images will have to pull in bash
> explicitly.
>
> If you want to remove bash then identify what packages in your image need
> bash, and identify how to remove that dependency: either don=E2=80=99t in=
stall the
> thing that needs bash, or rewrite the script to not use bashisms and then
> change the #! to /bin/sh.
>
> Ross

--0000000000001969080631dfbfd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Which script I need to write. </p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 3 Apr, 2025, 6:44=E2=80=AFpm Ross Burton, &lt;<a hr=
ef=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">On 2 Apr 2025, at 04:51, sateesh m via <a=
 href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">lists.yoctoproject.org</a> &lt;sateesh0457=3D<a href=3D"mailto=
:gmail.com@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">gma=
il.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Hi Team,<br>
&gt;=C2=A0 =C2=A0I want to upgrade my BusyBox version from 1.31 to 1.35 and=
 replace Bash with BusyBox. How can I accomplish this task? Can anyone prov=
ide guidance? This would be helpful for me.<br>
&gt;=C2=A0 =C2=A0I am managing this as described below, but I am still unsu=
re whether this change will work or not<br>
&gt;=C2=A0 =C2=A0PREFERRED_VERSION_busybox =3D &quot;1.35.0&quot;<br>
&gt; IMAGE_INSTALL +=3D &quot;busybox&quot;<br>
&gt; VIRTUAL-RUNTIME_shell =3D &quot;busybox&quot;<br>
&gt; IMAGE_INSTALL_remove =3D &quot;bash&quot;<br>
<br>
busybox doesn=E2=80=99t provide bash, it provides sh.=C2=A0 Recipes will on=
ly be pulling in bash if they need bash, and images will have to pull in ba=
sh explicitly.<br>
<br>
If you want to remove bash then identify what packages in your image need b=
ash, and identify how to remove that dependency: either don=E2=80=99t insta=
ll the thing that needs bash, or rewrite the script to not use bashisms and=
 then change the #! to /bin/sh.<br>
<br>
Ross</blockquote></div>

--0000000000001969080631dfbfd7--

