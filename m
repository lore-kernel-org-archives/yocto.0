Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web08.1717.1616023403529145191
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 16:23:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PiIn2bl4;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id c6so2780061qtc.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 Mar 2021 16:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0PQlcLZpNzYVTfhUsj0w02lgEUKE6uga/BuK4icaMUg=;
        b=PiIn2bl4Ejq2E02sp6bC7cU/npq23WzZH64NAgKkDc9rwUoZP5zI3y7ZkMnkkA/3ov
         50xbTJlUyvSCCogVr8FkkMtXsTOQIE+vsqja6PUEjnpiXqt1N71RpjE9paP+vSWSdL05
         QcG1gb/IqvRehQgs+YGNuI7+2yUGu3M0+u88x8/SPPiuQvtqT789eM/c2/zWMYiAGDiA
         UEUs+5YKM221E/cGwMgaPKwF38kmnOBV/cBAiPfK6xgLUC47RmoAHiOkyB3a/EUVwbuR
         pR5Jmd/4tUXEt5eUINXVWFA0iDMGtADT5FeAQfDnupr+0LUkKfaz5nvGUVGl48lzX6qP
         iFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0PQlcLZpNzYVTfhUsj0w02lgEUKE6uga/BuK4icaMUg=;
        b=cnE55fkuAiwRuSGlIeywWowLuG6Kmj2OB8MMDg6JqO3UZOsRH3xMabz8Rpv01DtsW6
         3QScz/zP47DhJJl3s1idpJ2lW8m5rMIkll0n8HvkazrcAajBsR3dLp7LA0Ly4kgnxIVp
         lDk2VskQO+PxQhOIJIhpGSyUX5yhx29xm1orfRfZtP3iGSEbHt6bXqczyHtjJLHnP4sM
         bs2HCWFBmfqkH1SvIn5x7FZ7BR5O79ozf1SE/kwhM3m+tsuC1ddzyflIr/YN7I4uOc/z
         ks8gmUrnLjM28sjvacbCdnXu1JHfdNzNdGNfVEMl5yRyKRQgD3DERDFH56VH6ARoKu+E
         AQbg==
X-Gm-Message-State: AOAM532+LNuy/7rgjrPWP/ke03o2S8C/sWt2h0dO2cuPqd+pBl4dsk/d
	ezlbU5sFes6xLSMJ3auvyEG7N/S3opVxMpeZEwY=
X-Google-Smtp-Source: ABdhPJy4wK+iZZRzHpjvX3CEdoU9sP64CItr79EtMavi12RcihS7CWKUE1ITzH1zA2UEs/FSehpdpQ9p1NzifWBx2WU=
X-Received: by 2002:ac8:5cc4:: with SMTP id s4mr1344832qta.214.1616023402276;
 Wed, 17 Mar 2021 16:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <PR0P264MB08893A9AFD28BBED215F58C5E16B9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <PR0P264MB08893A9AFD28BBED215F58C5E16B9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 17 Mar 2021 16:22:55 -0700
Message-ID: <CAMKF1sp-YanX3aegWRfmde5VrgLBui0Ocwnfe5-mFD-cvenuhw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IFt5b2N0b10gc3VidHJlZSDigKYvdG1wL2RlcGxveS/igKYgLCBmaWxlcyBuYW1lZCBQYWNrYWdlcw==?=
To: keydi <krzysztof.dudziak@thalesgroup.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 16, 2021 at 8:53 AM keydi <krzysztof.dudziak@thalesgroup.com> w=
rote:
>
> Hello,
>
> This is about two projects Projects A and B. Both use Yocto to build emb=
edded-Linux distribution. However different Yocto release each. Also differ=
ent target platform each. One puts Linux software packages to RPM, another =
one to IPK. For only one of those two Yocto generates plain-text files name=
d 'Packages' and places it to image subdirectories of /tmp/deploy/rpm or /t=
mp/deploy/ipk subtree. The another one doesn't. Is this (files 'Packages' t=
o be generated or not) any configuration point platform vendor can had set =
for its code-base to non-standard setting? Any means available for project =
Packages files (as of time being) not being generated to activate these fil=
es generation?
>
> Background: Tool-chain used here to generate software bill of materials =
and all artifacts needed for fulfillment of used software license terms pro=
cesses these files. Might it be good/bad idea to use files addressed in thi=
s message for software composition evaluation?

what you are looking at is feeds area, where the format will vary
depending upon which online package management is in use. So you will
have to make that differentiation. Packages file is used when opkg is
used and not by rpm/dnf
for SCA perhaps you want to look at content of the packages. or maybe
use the manifests that yocto generates e.g. license manifest in images
have info on all packages that go into that image, it may not be
formatted as per your expectation
but its somewhere to start


>
>
>=20
>
