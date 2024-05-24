Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD161C25B7A
	for <webhook@archiver.kernel.org>; Fri, 24 May 2024 11:46:10 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.13792.1716551166049654500
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 May 2024 04:46:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=IOC6S1FG;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.45, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a5a5cb0e6b7so1278502166b.1
        for <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 04:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1716551164; x=1717155964; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8Ay5azEH8cDsjyIFnhaXQEjIugV0mxhpzUvR+V9Kkbg=;
        b=IOC6S1FGZoEBbMboGZDIE4Q1O41m3i0XeHTefGUDSJz6Zc9oouNfMF1RT9WjJl40IZ
         V+6PnHlOLVYBibGEnxmN0XFWaRX3YNQqTT2XGBcQd+32CeJDCyEgHbhpH7MjXUeDO0vU
         57OVlYbjNoYg+GueGzHqlaCq9iXu2BNuI8RpRDaSFjLNAIpYG3fbqskxIqnBkH73/LQT
         1TM9Hg4HOHXFFyEY1S7l0e1zv9sb6CPCGnclDMzXyvcw72/PDI67UpHHKyBMe6J7JkYC
         0BtFRRrZQpTX9uVmmQQjXwZIvkL9blXI1bVpy+MUKszWmSWHD0PO2WE5KIes/4688oX1
         HZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716551164; x=1717155964;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Ay5azEH8cDsjyIFnhaXQEjIugV0mxhpzUvR+V9Kkbg=;
        b=M6hv7Y7T5+vAfapbFbbS3QX2qVvquYHtsiqqiKroz1lTgTy/iMVLJCv+7S1HbuURSV
         Nr08Dadtr5w+fMX65LnNdeBqkfVkDpNWWLvyLtc1w22ayBHjk7zKwaQP0e/+KLZsStqq
         Pkf0rzuidggudw0OpChEXP7Zd8HkcOcsPXHirdsrLSqdDc809/xD7I8omP8Bcx2qrCm/
         YmiPpNBscwJPCPJO5N1HOimBOVGiH+Pcw4GRqEQqAKT3kthd1VxJKHkpzFE/13QVrLmC
         /D6Pu/9CZR1ZHho9S023/fv4p72p52UXZdh/XSVGfr9ViGaalYxwIQYfBAWzFVgx4vvN
         FE0g==
X-Forwarded-Encrypted: i=1; AJvYcCWH8osSWcyPEYDV9rc+P/Q61dZLCoVnMl/3RHbQyYtErxxTKfQwDmi/ays1oLZxiKASdRvXYH99UERxh8tFsaM2MnUM6SH3QWZm21SY
X-Gm-Message-State: AOJu0YyglvXYx8u6jHC8aerzQU8o39l+llZLbtsn6W4azxtGgVq0nI/T
	2LxSbFKWLHgITN1ZWWUgZ0FQ+NhO6UOrSaPYxHBU2QWvfTO1nbEu921IcHR3ao7IygufEX+z3BD
	82L0og/YioyRlnLLy4uM+OhmvBY9mxXlYGbr2vWzgkH+PY8ceojU=
X-Google-Smtp-Source: AGHT+IFY4ABQ6th6Ok5ScfPOiaEonXhIgdq2iv0rseF4BgfoKEJn6ivBvd4SgmDTmrV2n7iNyCxV5zIJ+PAs9dr4n+g=
X-Received: by 2002:a17:907:9347:b0:a59:d458:8355 with SMTP id
 a640c23a62f3a-a626537551bmr139192766b.77.1716551164074; Fri, 24 May 2024
 04:46:04 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 24 May 2024 13:45:37 +0200
Message-ID: <CAEt6Nwr1+Dczjq1PvLmBJ_-FCX=cv60GmiK9cCoG-eRsSYo8sw@mail.gmail.com>
Subject: Build systems MC at LPC 2024, Vienna - CFP open!
To: openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000005fb46e061931b666"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 11:46:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63194

--0000000000005fb46e061931b666
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In the Linux ecosystem, there are many ways to build all the software used
to put together a running system. Whether it=E2=80=99s building all the bin=
ary
packages for a binary Linux distribution, using a source-based
distribution, or building an embedded system from scratch, there are a lot
of shared challenges which each system solves in its own way.

In the inagural Build Systems people talked about [1]:
 * Providing provenance of build artifacts
 * Checking for UAPI changes between builds
 * Managing Linux kernels for products
 * Tracking patches used in a build
 * Building for hardware that requires building multiple sets of firmware

This microconference is a way to get people who work on disparate build
systems to discuss common problems and possible shared solutions across the
entire problem space. The kinds of topics we want to discuss are the
following:

 * Bootstrapping the build system
 * Cross building software
 * Make, autoconf, and other similar software build tools
 * Package build systems, bitbake, emerge/portage, pacman, etc
 * Packaging formats
 * Managing software with language-specific package managers
 * Patch sharing
 * Building within a container
 * Build systems for building containers
 * License gathering and verification
 * Security updates
 * SBOMS
 * Software chain-of-trust
 * Repeatable builds
 * Extremely long product life cycle support
 * Documentation and education
 * Finding the next generation of maintainers
 * Build-system visibility within the wider Plumbers attendees.

This is not a definitive list, and you are free to post abstracts for other
related topics.

Build Systems microconference would like to gather representatives
(developers and maintainers) from all the various build systems and related
technologies. This is not a definitive list of possible attendees.

 * Android
 * Arch Linux
 * Buildroot
 * ChromeOS
 * Debian
 * Fedora/Redhat
 * Gentoo
 * OpenEmbedded
 * OpenWRT/LEDE
 * Yocto Project
 * Other traditional Binary Packaged distributions

The CFP closes on July 5 and plan to have the schedule complete by July 19.
Please help us (and the plumbers organziers) by submitting topics early.

For more information, feel free to contact the MC Leads:
Philip Balister <philip@balister.org>
Josef Holzmayr <jester@theyoctojester.info>

Please follow the suggestions from this BLOG post when submitting a CFP for
this track. [2]
Submissions are made via LPC submission system, selecting Track =E2=80=9CBu=
ild
Systems MC=E2=80=9D [3]

[1] https://lpc.events/event/17/sessions/159/#20231114
[2]
https://lpc.events/blog/current/index.php/2023/06/26/the-ideal-microconfere=
nce-topic-session/
[3] https://lpc.events/event/18/abstracts/

--0000000000005fb46e061931b666
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In the Linux ecosystem, there are many ways to build all t=
he software used to put together a running system. Whether it=E2=80=99s bui=
lding all the binary packages for a binary Linux distribution, using a sour=
ce-based distribution, or building an embedded system from scratch, there a=
re a lot of shared challenges which each system solves in its own way.<br><=
br>In the inagural Build Systems people talked about [1]:<br>=C2=A0* Provid=
ing provenance of build artifacts<br>=C2=A0* Checking for UAPI changes betw=
een builds<br>=C2=A0* Managing Linux kernels for products<br>=C2=A0* Tracki=
ng patches used in a build<br>=C2=A0* Building for hardware that requires b=
uilding multiple sets of firmware<br><br>This microconference is a way to g=
et people who work on disparate build systems to discuss common problems an=
d possible shared solutions across the entire problem space. The kinds of t=
opics we want to discuss are the following:<br><br>=C2=A0* Bootstrapping th=
e build system<br>=C2=A0* Cross building software<br>=C2=A0*<span class=3D"=
gmail-Apple-converted-space">=C2=A0</span>Make, autoconf, and other similar=
 software build tools<br>=C2=A0*<span class=3D"gmail-Apple-converted-space"=
>=C2=A0</span>Package build systems, bitbake, emerge/portage, pacman, etc<b=
r>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Packaging=
 formats<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span=
>Managing software with language-specific package managers<br>=C2=A0*<span =
class=3D"gmail-Apple-converted-space">=C2=A0</span>Patch sharing<br>=C2=A0*=
<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Building within a =
container<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</spa=
n>Build systems for building containers<br>=C2=A0*<span class=3D"gmail-Appl=
e-converted-space">=C2=A0</span>License gathering and verification<br>=C2=
=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Security updat=
es<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>SBOMS=
<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Softwar=
e chain-of-trust<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=
=A0</span>Repeatable builds<br>=C2=A0*<span class=3D"gmail-Apple-converted-=
space">=C2=A0</span>Extremely long product life cycle support<br>=C2=A0*<sp=
an class=3D"gmail-Apple-converted-space">=C2=A0</span>Documentation and edu=
cation<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>F=
inding the next generation of maintainers<br>=C2=A0*<span class=3D"gmail-Ap=
ple-converted-space">=C2=A0</span>Build-system visibility within the wider =
Plumbers attendees.<div><br></div><div>This is not a definitive list, and y=
ou are free to post abstracts for other related topics.<br><br>Build System=
s microconference would like to gather representatives (developers and main=
tainers) from all the various build systems and related technologies. This =
is not a definitive list of possible attendees.<br><br>=C2=A0*<span class=
=3D"gmail-Apple-converted-space">=C2=A0</span>Android<br>=C2=A0*<span class=
=3D"gmail-Apple-converted-space">=C2=A0</span>Arch Linux<br>=C2=A0*<span cl=
ass=3D"gmail-Apple-converted-space">=C2=A0</span>Buildroot<br>=C2=A0*<span =
class=3D"gmail-Apple-converted-space">=C2=A0</span>ChromeOS<br>=C2=A0*<span=
 class=3D"gmail-Apple-converted-space">=C2=A0</span>Debian<br>=C2=A0*<span =
class=3D"gmail-Apple-converted-space">=C2=A0</span>Fedora/Redhat<br>=C2=A0*=
<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Gentoo<br>=C2=A0*<=
span class=3D"gmail-Apple-converted-space">=C2=A0</span>OpenEmbedded<br>=C2=
=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>OpenWRT/LEDE<b=
r>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Yocto Pro=
ject<br>=C2=A0*<span class=3D"gmail-Apple-converted-space">=C2=A0</span>Oth=
er traditional Binary Packaged distributions<br><br>The CFP closes on July =
5 and plan to have the schedule complete by July 19. Please help us (and th=
e plumbers organziers) by submitting topics early.<br><br>For more informat=
ion, feel free to contact the MC Leads:<br>Philip Balister &lt;<a href=3D"m=
ailto:philip@balister.org">philip@balister.org</a>&gt;<br>Josef Holzmayr &l=
t;<a href=3D"mailto:jester@theyoctojester.info">jester@theyoctojester.info<=
/a>&gt;<br><br>Please follow the suggestions from this BLOG post when submi=
tting a CFP for this track. [2]<br>Submissions are made via LPC submission =
system, selecting Track =E2=80=9CBuild Systems MC=E2=80=9D [3]<br><br>[1] <=
a href=3D"https://lpc.events/event/17/sessions/159/#20231114">https://lpc.e=
vents/event/17/sessions/159/#20231114</a><br>[2] <a href=3D"https://lpc.eve=
nts/blog/current/index.php/2023/06/26/the-ideal-microconference-topic-sessi=
on/">https://lpc.events/blog/current/index.php/2023/06/26/the-ideal-microco=
nference-topic-session/</a><br>[3] <a href=3D"https://lpc.events/event/18/a=
bstracts/">https://lpc.events/event/18/abstracts/</a></div></div>

--0000000000005fb46e061931b666--

