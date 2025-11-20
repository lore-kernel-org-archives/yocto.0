Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD44CF64BA
	for <webhook@archiver.kernel.org>; Thu, 20 Nov 2025 05:01:43 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.27569.1763614897699841611
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Nov 2025 21:01:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VWrYASlc;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7815092cd0bso4641687b3.2
        for <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 21:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763614897; x=1764219697; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x9i5G8M9di0J5OUh32BjmFtjweNQxU+TDTJqNhJDkLo=;
        b=VWrYASlcI24CKQh3WfB718upXGSHBxFWlIagUFya8T7CIganVgmdJhf+2XJ0rPVq+l
         SCKPJitdGZ99WDkW5OW3Mh2Bm+r0y5p3ckrFiQOu/WTmpDEuYXqdfRmlsd/ZFTNtJB30
         TLhxsnX0ECbE94b3ql5NbIIJCr2dWFKag18YDMtYSBs6HB5X14BglLD4oz60ZSXgOify
         Mvizq0rz8N2DrnW8m5zmW1XJpcohL2rRjcvPEmEepSUDNT4oHeoVdegMD2ANmqi/fLfu
         niiMGQ2C4swoY6vklv6nq3WJS1/JmqNTJhoHIZtYolmI60mopRj1bdzvVGdaio4zTRd2
         vSyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763614897; x=1764219697;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9i5G8M9di0J5OUh32BjmFtjweNQxU+TDTJqNhJDkLo=;
        b=VzyV/T8AZpVK5hrk8c/363tzknzKeI6tYiGTXmoscrCqsFNyag/H4u6IgTV6KUm9Ei
         j7PQHGFe9QRjPCl7AQNQVPSk3sj89TetDqyJrDhqJIcqF8AlgB5mBXuR739rolfHKB0S
         TTgWjWd40Tekv1GRcENXsEBPG307g8dS0qJOPpFUqQWHnluKfnNWK65t+G8REMsOWskX
         8kJgmHsB+8Q4WkPRUABkzvoiHofQKVcefgdc2+06mp9dEhjX0DcqbCQRSrt8HzuQoNlx
         VGaOFkiJnAVC5I2V7kL3iv5pMPBwlSpAsbTZhH765HfnElfEwelaUnTeI9DW6Of7f5FW
         3WCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUC6LLLbAE2qahxTaa57oH5MztZOCGF4+PEbG6E8ktLRqHyE6c7g7jN7jUHNEn5qHApmXXGA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzLIN4MoatVElScErvg865W3QwcGic3beldpmPpJC3ktTHnHDhl
	9q5beLYDYseciBrH8b9bS7BZdrCUxuf/ArbrLJlr8YWXWsINd2odKRrHUzSSu0hYS0W6ZfENv1Z
	PctKgIMPx3O/oJTnH+UcEDCZJ0SvUltA=
X-Gm-Gg: ASbGnct/nRhbrf9ga2k655FAcxs21cW3BphigKGkhTIVpIEXmljYRywkulWVZPvBs3K
	F3CmMm1nBJMFNu1y2Gs0UWGvVCJ/TB0xz/4CWrZ3ruRs7aFMIU7SUKYkTTexLkT48yOhAmdpMFd
	ZJETSv+nQyKe8v37n0fVKBTDmocwBSEJV527qOfPPsOeP0EnJdYniQRINqY3i1tmkBdKEUyHiOD
	5sY+I/u0u83gHBoGcNch6YJ61079Iw+AOw8p6IFL8TrZcQDllBBvdqA8lHshmIMs2rNCxlQ6IIo
	8xV5FqLsHBfb+fLNSVNq4kW49yBRKww67N1l+X16pXAeWUjTg31jGe6v2q+6qreGcr4lVTaXXCo
	Zr5ELI/Oy2+uIRZeXaDNg9iD2Z7Q=
X-Google-Smtp-Source: AGHT+IEUdDBoHPFycdAQcPp1kb9F/eRi6N27H1h9NOsSvUf7bIdqs3ToWVaGaAajArdpQDyf+p7wjW3o692v005qdAw=
X-Received: by 2002:a05:690c:6c0e:b0:786:68da:3f4b with SMTP id
 00721157ae682-78a795a84d0mr31584497b3.31.1763614896785; Wed, 19 Nov 2025
 21:01:36 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sq=PB-ahsheN4iCD9w9MzmnCwUUZxTmaCJNBVhYpwKm1g@mail.gmail.com>
In-Reply-To: <CAMKF1sq=PB-ahsheN4iCD9w9MzmnCwUUZxTmaCJNBVhYpwKm1g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Nov 2025 21:01:10 -0800
X-Gm-Features: AWmQ_bmAYu-DRHtYreWBR3xzdijhaQ77CuHNr3xRJ8ImMs1dLxGdemp5Nn1x5cw
Message-ID: <CAMKF1soaUxXhsWJcQ3HG4TQQN-ETAQC09iJ05vQq04=SYqn6rA@mail.gmail.com>
Subject: Re: Whinlatter ( 5.3 ) release and maintenance for meta-openembedded layers
To: openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000718c8e0643ff9758"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Nov 2025 05:01:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66037

--000000000000718c8e0643ff9758
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

"whinlatter" branch for meta-openembedded has been created, please test it
with whinlatter oe-core in your distros and report problems and fixes

Thanks
-Khem

On Tue, Nov 18, 2025 at 8:05=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:

> Hey All,
>
> Whinlatter release is in its final stages for OE-Core. Accordingly we wil=
l
> be branching meta-openembedded for whinlatter as soon as the OE-core is
> branched out.
>
> If you have patches lined up for this release, please send them by this
> week. I am also interested in ptest fixes particularly, if folks can run
> ptests on meta-openembedded layers and report, patches to fix the failure=
s
> are even better.
>
> Anuj Mittal has agreed to maintain this release along with scarthgap LTS
> that he has been
> doing an awesome job with. Ankur Tyagi will co-maintain whinlatter
> alongside Anuj to even out
> the load a bit.
>
> I will send an update again when the release branch is created.
>
> Thank you
> -Khem
>

--000000000000718c8e0643ff9758
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>&quot;whinlatter&quot; branc=
h for meta-openembedded has been created, please test it with whinlatter oe=
-core in your distros and report problems and fixes</div><div><br></div><di=
v>Thanks</div><div>-Khem</div></div><br><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 18, 2025 at=
 8:05=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khe=
m@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hey All,<div><br></div><div>Whinlatter release =
is in its final stages for OE-Core. Accordingly we will be branching meta-o=
penembedded for whinlatter as soon as the OE-core is branched out.</div><di=
v><br></div><div>If you have patches lined up for this release, please send=
 them by this week. I am also interested in ptest fixes particularly, if fo=
lks can run ptests on meta-openembedded layers and report,=C2=A0patches to =
fix the failures are even=C2=A0better.</div><div><br></div><div>Anuj Mittal=
 has agreed to maintain this release along with scarthgap LTS that he has b=
een</div><div>doing an awesome job with. Ankur Tyagi will co-maintain whinl=
atter alongside Anuj to even out</div><div>the load a bit.</div><div><br></=
div><div>I will send an update again when the release branch is created.</d=
iv><div><br></div><div>Thank you</div><div>-Khem</div></div>
</blockquote></div>

--000000000000718c8e0643ff9758--

