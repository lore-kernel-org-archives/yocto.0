Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C258C3ABBF
	for <webhook@archiver.kernel.org>; Wed,  7 May 2025 12:43:33 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.8169.1746621802790985316
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 May 2025 05:43:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PsRF0dPL;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6ecfa716ec1so79135896d6.2
        for <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 05:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746621802; x=1747226602; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfxnaPS26wDaUYAgC0pyxR1ZZbd6wU+iQ1i4lk/h1aA=;
        b=PsRF0dPL2DWp22vfrlY0RCJBQWph1g6z0K0K4msJZ161tiFK3O6/3M9IpZG8UWxSKL
         z7n5+CR8Dt6XDhVLgW2K0NF0PKsmjL1x9gIUf2cMPoYKk1a3m9pTVvfBOEZhqgbf9ahF
         9iliYL3lyxdzc1Hgl5mFf6iBc/uQOpX4hdRuSBSQTI2Rbz43JM/TZ64GCQOBmQ1WAMR+
         h6COiPoxHwHybjv0iEhMYwn8lnSmUZdodsx6K+L14Xx3uLVG1JX8y2PyJd72KFSKgiTK
         jeITXC76ieqN2TEmXHEzeXTWn95niC39pqmJ02mdicnE/gHOY3uMu3g1S9pLBw0Nf4wK
         n3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746621802; x=1747226602;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TfxnaPS26wDaUYAgC0pyxR1ZZbd6wU+iQ1i4lk/h1aA=;
        b=dELCFW6E3uUVWke2Nyr9elTVaR+zPOHQqIpJquPbuDUh8b8YrGMDdqF4Nv88jcdtCZ
         zS7sgGTXC3zSB9ZXFgit9iuKylYh+ooP6SAbzQcsrNksED8UpkqnjE4sm+fnYMlWaLFJ
         4UUV7xCAOKJ2rONUBfmKNN/5TInGDRAZQQhUFmXoZqK8QVI0Rx3HAvpwIWbibiV1M51A
         GD0x5Vfttp6B7upvI5OAknchletN8+0xj9cCX/C+wuRR2usE/iPWBToEMwQLU4zmYtPl
         CcbqL+O0uFSXmjEXCjlFR60bryQhB1W9v3E4OxhDAt7cI5vIGkg22+BoyJ0SkQVA1hq6
         32yQ==
X-Gm-Message-State: AOJu0YxLkKhpHlATcneZCdXMxQcaIFLoRyORuek8eARaVo4PORAFZpxO
	IgQ/j3pryWOuwfzIEWOYPNamaORuWCxvM0XaAw6naGR7R/G6gX7cukG+oIc1pDXpHKiPgZNJ4Yq
	8uW9LAwq6ZYFUqvoukLDtgRE7i+E=
X-Gm-Gg: ASbGncu11ar2AAMxFk44GDJkLHefn2vo+ffGefUUoC1PS4BwgOGjUgUfOa0jvYfYxVa
	sIzq91ih8EO7MR8W59623dQ6lblYFvuTNBaygjz+RCfCB8bEf/R+Bv0LD0Pr83P50e80MChMktv
	QTOcvySE/P684XGJkbjLacGgc=
X-Google-Smtp-Source: AGHT+IH7Q/lcsuHnYeWg9nTF8JbPPEzcMrYK4LNTMJKtC+QHnzTx+LnuBvHRwtGu3PqWYowu222l0DTQkowSmr6jXrc=
X-Received: by 2002:a05:6214:29ce:b0:6e4:3ddc:5d33 with SMTP id
 6a1803df08f44-6f5429fffc2mr40772326d6.13.1746621801615; Wed, 07 May 2025
 05:43:21 -0700 (PDT)
MIME-Version: 1.0
References: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com>
 <BE1P281MB1907E2B9EA198B6CA71E314BE989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj9JXZDBWe91SCZhAxujAyWpJgBovMan-pYGoxaRXOQpYA@mail.gmail.com>
 <FRYP281MB1914243C089D8CC2F7EE8172E988A@FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM>
 <67BFF490-850B-49FC-AE23-ADC7C9C1ECB4@arm.com>
In-Reply-To: <67BFF490-850B-49FC-AE23-ADC7C9C1ECB4@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 May 2025 14:43:09 +0200
X-Gm-Features: ATxdqUHhByanPdMKOktTGgSYwSGbWa45sKIMWEoAIjxCbLkC_ad35Ga3gGw7q3w
Message-ID: <CANNYZj-BT0iCgWkycykMZ66DD3Ook5Z0nGcnN13tcxHk-Q026w@mail.gmail.com>
Subject: Re: [yocto] Install externally built .ipk packages during image generation
To: Ross Burton <Ross.Burton@arm.com>, 
	"matthias.neubauer@sick.de" <matthias.neubauer@sick.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 12:43:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65292

On Wed, 7 May 2025 at 11:54, Ross Burton <Ross.Burton@arm.com> wrote:
> > Is there another way to directly inject .ipk packages into the local pa=
ckage feed without the need to repackage them by an additional recipe?
>
> Generating packages is just =E2=80=9Cput files in the right place=E2=80=
=9D, so you could have a =E2=80=9Cpass through packaging=E2=80=9D class whi=
ch takes packages from SRC_URI or similar, and drops them into the same pla=
ce that do_write_package would.  You=E2=80=99ll need to read the package me=
tadata and populate pkgdata too, of course.

I'd also explore using ROOTFS_POSTPROCESS_COMMAND to run custom code
that pulls down those ipk files and installs them into the yocto
rootfs after the recipe-based packages have been installed.

Or you could go even further and just have the applications in a
container inside the yocto host. I've heard of people with node.js
based apps having to do this, using debian docker image.

Generally supporting 'app ecosystems' is not a goal for the Yocto
project; there's no standard or official way to add pre-packaged apps
at image creation time, have an 'application development kit',
guarantee API stability, have app installers, app stores or anything
of the kind. It's going to be custom code all the way to support this.

Rather than have you move further away from Yocto into the land of
proprietary workflows and scripts, I'd prefer ideas (and code) that
improve Yocto for application development. Working directly on source
code with 'devtool modify' has been supported for years. We now also
have the VSCode integration, for example, and a way to get a SDK
environment directly from a bitbake environment, without having to
produce a separate SDK tarball and distribute it to developers. They
only need to learn a couple of magic commands and if sstate is
available, it will be quick. There's also a way to lock and unlock
recipes that can help with avoiding lengthy rebuilds.

Alex

