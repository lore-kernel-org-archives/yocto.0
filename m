Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2195.1580669347204001618
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 10:49:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQj6qXjq;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: chuckwolber@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75809E0164F; Sun,  2 Feb 2020 10:49:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (chuckwolber[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.174 listed in list.dnswl.org]
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C0A3E015FD
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 10:49:05 -0800 (PST)
Received: by mail-qt1-f174.google.com with SMTP id c24so9754521qtp.5
        for <yocto@yoctoproject.org>; Sun, 02 Feb 2020 10:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zyJut10AyjYJl4RurgJ8pGI3WacCnE1q6imMuTHZGpM=;
        b=eQj6qXjq/k+ROhz4IKy1z1BwCxmHh2IvpXVnWDwPF6DgC1IhaofkWQtVLtxdaBgekq
         Eg4vpf1vS26DRCwXpN2GTVxQJe00ACrZrRHMxEg4ZieajOfbGNSHIN030nNtKfNeSFXR
         eX2vaqvHh4CRy4ODt9PRxs8LB3KewQ52RGv07TFkzEc13X7WFcSyxpedZkGCtuXERlbO
         l1KzW6EBeLZ7F476go2mJKV3+TeEZ3EY7QutaTp/ik9mBh+WBxXLzhihcvpRVe87DNHb
         K+aCkRT7d+7SJ4q8+zzoZZInRQfVz1gU+WdokSNGcQ0IWIAp5nY5GjQv4aW4AGFXvqBd
         biTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zyJut10AyjYJl4RurgJ8pGI3WacCnE1q6imMuTHZGpM=;
        b=CdBPOcwlbzJby87lfrv0IJUMnevEDnvk7+POLP1gH1JS9/fs4rBriRVOg4Zfeyo3+f
         27g+LtTEtHgIT2VJI4dH7z/Gz3uLwfKSVNhpZkyurGdk3ESS6ERKkOvJjG3Vn9zk3Sh4
         gZf2W5liW2Tv51cAJbYtln+jy55/tFZZ29/oqXkGdimYB7CcK3SNX6ylWgNideqa2y5S
         19GTQDGvyLNCmTksBUAaHtCXvbM6r0UG2k+yI0r3amV1EavN4dqRqG+roegttEgGBBzG
         /D1dijUfURnydgf7buDdJ+PWQ2NmeQkQskRjefN5ziAcTVq5yleCt6qxgHx/yEULXh4m
         UDNQ==
X-Gm-Message-State: APjAAAXwUT+BdWA7R/lKmwd/SM2QJmKn7k84plsfzhzr1RfV0JGuFCc9
	AfksQEMTYFDhfxVQ4N3NylGpwgEw3MCuH3ghR2E=
X-Google-Smtp-Source: APXvYqwG/mfsIeVMm0QH8gCYt2+vwrDjyROyv1OXo8cRVX9/egwuctZuQkHneNSxJDbxZb+fB2Kr+XwXLU+Yghqo1sY=
X-Received: by 2002:aed:29a2:: with SMTP id o31mr20479805qtd.279.1580669344367;
 Sun, 02 Feb 2020 10:49:04 -0800 (PST)
MIME-Version: 1.0
References: <086201d5d5f4$307b2150$917163f0$@gmail.com> <20200202132840.GA6805@localhost>
 <5FE54648-B93A-4C10-A41B-22593E37625D@gmail.com>
In-Reply-To: <5FE54648-B93A-4C10-A41B-22593E37625D@gmail.com>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Sun, 2 Feb 2020 10:48:53 -0800
Message-ID: <CAB=6tBSos-ZstK7BXJT1eoBH1x93NQpp=f0ad9qh=RsLsUH8Bg@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status WW04'20
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Adrian Bunk <bunk@stusta.de>, Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c7483c059d9c423c"

--000000000000c7483c059d9c423c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 2, 2020 at 6:09 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Why separate them? I=E2=80=99d rather have newbies and experts in the sam=
e room..
>

Enthusiastic second to this.

If you separate things too much, newbies get no sense of the depth of the
project, and experienced people get less of a sense of the "newcomer pain
points".

Granted, this breaks down when traffic elevates to to LKML levels, but we
are not even close to that (yet).

..Ch:W..

--000000000000c7483c059d9c423c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Feb 2, 2020 at 6:09 AM Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.co=
m</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Why separate them? I=E2=80=99d rather have newb=
ies and experts in the same room..<br></blockquote></div><div><br></div><di=
v>Enthusiastic second to this. <br></div><div><br></div><div>If you separat=
e things too much, newbies get no sense of the depth of the project, and ex=
perienced people get less of a sense of the &quot;newcomer pain points&quot=
;.</div><div><br></div><div>Granted, this breaks down when traffic elevates=
 to to LKML levels, but we are not even close to that (yet).<br></div><div>=
<br></div><div>..Ch:W..<br></div><br></div>

--000000000000c7483c059d9c423c--
