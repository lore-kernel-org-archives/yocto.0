Return-Path: <onea.alex@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED9BBC5479D
	for <webhook@archiver.kernel.org>; Wed, 11 Jan 2023 11:48:39 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.21712.1673437711912320968
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Jan 2023 03:48:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=asM90rlb;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: onea.alex@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id p25so9553602ljn.12
        for <yocto@lists.yoctoproject.org>; Wed, 11 Jan 2023 03:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qa3S8tzd8P2vweWD88foiFAilc9ceasuiaMBhGqBsXA=;
        b=asM90rlbGEqfDDQLavjSvDj7dtMuVZCch6G2189UIMbmifV6pJ71Pjkd8V/dsEalII
         tEH7F/psstOmZrZ1rf4VTYIPkcUL2KntXqrUSZc5lynzBv42Fw5qwdtMNQ3FML9dYfsE
         SkGPyEfcOxZgh9oXw4zhy+tCrmVtkDVuPqNOccZ9TOT9vKmwB9uQH0+kneLLwzP8j4aE
         KlJLd2/isfeVrJ552LHN4bF+Y7y62kzEDBaCZ4ku11u2mRH2AgbIuLE4cKaGa6xvoBgq
         DI+ja3/7JlU1QNqyJetP219TVm7ys3nwga+RI8TSn8VFTgZXPGgm+AGD2ZRhrbI5GCrq
         egKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qa3S8tzd8P2vweWD88foiFAilc9ceasuiaMBhGqBsXA=;
        b=7xyIBEojGXcr0M0qEEOLr8DW/NSXqy844RYoxq2NbTIMXac6D3tcIq2t6NwRpvuZ4n
         63uBVJbHukHee+HqjyQ/U5jpAlrqpuF40sdjt6dq5KqUwqJ5m+aq6FEGX3yjA2EmWvB4
         LBOIyVzL9Tg5ajPqzLePzDBPkLH9ZBY8s/w89bYRTpiTkMsVLgiaqZXnJAwoyBYML+ZX
         gqoggNJpyKP4XlAKQKvH4KK42GdKPChUygEfS4uw9ALieUf7VoBrVRKlAzJOrajmfigK
         8c5mepGFQ7baMkJAwB1r9iyF1+nfxssZkjarXBbheFsYjN0Xh4boAzCEnUs8Zq6EtaFz
         MdkQ==
X-Gm-Message-State: AFqh2kpxP6h6ajrxGSPh8govGhjimTlh+vGPRbK1b+vQiUAXdMXLR5Vt
	umfIfRxns7mTjbD3vrNSaYkvZ8mtBMdphwfO2CpaT4lVVJtmuQ==
X-Google-Smtp-Source: AMrXdXsRKVL/+z1NWUjt/TAkRa7klnOerqPj9fYbcXbNFRtbkaCWLGvcA8VBY09C7Vk0Uj5JbuaHrvFldmnCgqooS9w=
X-Received: by 2002:a2e:934c:0:b0:27f:b476:76a0 with SMTP id
 m12-20020a2e934c000000b0027fb47676a0mr2336733ljh.497.1673437709466; Wed, 11
 Jan 2023 03:48:29 -0800 (PST)
MIME-Version: 1.0
From: Alexandru Onea <onea.alex@gmail.com>
Date: Wed, 11 Jan 2023 13:48:18 +0200
Message-ID: <CAJgSc4xpQuuwzJ8BDtngtrH=a3-+OXVrEW1mf7RZwLE=H4R4mg@mail.gmail.com>
Subject: distutils.bbclass: why is --install-data=${datadir} passed?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003a00a705f1fb9401"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Jan 2023 11:48:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58964

--0000000000003a00a705f1fb9401
Content-Type: text/plain; charset="UTF-8"

Hello, community!

While writing some python-based recipes using setuptools3 I have noticed
that ${datadir} is always installed in the staging area even though there
is no content under it. This causes QA issues. I found out that the
distutils bbclass contains the following line which causes this behavior:

DISTUTILS_INSTALL_ARGS ?= "--root=${D} \
    --prefix=${prefix} \
    --install-lib=${PYTHON_SITEPACKAGES_DIR} \
    *--install-data=${datadir}*"

Is there a reason for installing ${datadir} always, regardless of what the
build system specifies either in setup.py or in do_install[_append]?

So far my workaround is to remove this flag from DISTUTILS_INSTALL_ARGS. I
did it first on a per-recipe basis and now I am thinking of doing it
globally by overriding the distuitls bbclass with my own version that
requires the original and then removes the flag. Are there any concerns
that I should be aware of?

Best regards,
Alexandru N. Onea

--0000000000003a00a705f1fb9401
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, community!</div><div><br></div>While writing s=
ome python-based recipes using setuptools3 I have noticed that ${datadir} i=
s always installed in the staging area even though there is no content unde=
r it. This causes QA issues. I found out that the distutils bbclass contain=
s the following line which causes this behavior:<div><br></div><div></div><=
div><font face=3D"monospace">DISTUTILS_INSTALL_ARGS ?=3D &quot;--root=3D${D=
} \<br>=C2=A0 =C2=A0 --prefix=3D${prefix} \<br>=C2=A0 =C2=A0 --install-lib=
=3D${PYTHON_SITEPACKAGES_DIR} \<br>=C2=A0 =C2=A0 <b>--install-data=3D${data=
dir}</b>&quot;</font></div><div><br clear=3D"all"><div><div dir=3D"ltr" dat=
a-smartmail=3D"gmail_signature"><div>Is there a reason for installing ${dat=
adir} always, regardless of what the build system specifies either in setup=
.py or in do_install[_append]?</div><div><br></div><div>So far my workaroun=
d is to remove this flag from DISTUTILS_INSTALL_ARGS. I did it first on a p=
er-recipe basis and now I am thinking of doing it globally by overriding th=
e distuitls=C2=A0bbclass with my own version that requires the original and=
 then removes the flag. Are there any concerns that I should=C2=A0be aware =
of?</div><div dir=3D"ltr"><br></div><div>Best regards,</div><div dir=3D"ltr=
">Alexandru N. Onea</div></div></div></div></div>

--0000000000003a00a705f1fb9401--

