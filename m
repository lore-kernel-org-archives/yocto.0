Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7E7C02196
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 05:35:52 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web11.33461.1738820147353932951
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 21:35:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z5MKc3aV;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5fa2a2bdde9so159661eaf.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 21:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738820146; x=1739424946; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgSP0kcwt1iv/IgHV1YcU3yhSfSl1B/o04szM2d45jg=;
        b=Z5MKc3aVWgu2YAzoYQ8wTDqtiLF7Wk6NNrj+s22nD0Or3qAOw8mvxRGYIMamHi7219
         G33SP9AG41qxNzi1oy6vK3LLFGDaRffIMVTjh0j/KxDIH9qer2b+8Xijsc9Kw5cc+HlY
         TLbv1LNUvk1GCSUmzYPmY6+plF44l05vpq9rkqs9fAMjLTCncXe0R6h/iJ5byUUgoTr7
         4pXtNArva7D/KNBlfnowuCwg8pjpk0oTkOWP9FF8NgFYaoOx6/o8KgvxyrtzxDH3ZpYU
         8uSYKa5vCH1gBWRuzc0PtlicRQ31NT+zYFyD3R/sUB49GlFcuaWpOsbw0rSjpPklYDAD
         5kow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738820146; x=1739424946;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kgSP0kcwt1iv/IgHV1YcU3yhSfSl1B/o04szM2d45jg=;
        b=ZiMkxjUlZwWmTUnL3EKTm9Q9/9hrcnTV+ao6m1M3yobdppl5uSSwJHklHzSs5M8JKY
         OdmRZIRrEwl27FJAtAJ0cPYt24bWQjDQZ+Wps47s0C6hsKSkMvApL9Rp35aCfaX1B9ui
         cM+wV8GbvdUmbUZABuHVcFVM5Qaox1zFw35WzP2lufiVtJQ/gL+MYe4HX0L8DN/uaUOe
         q+qwT875dd1huLgS1d2eCaJtB+9ZeC6cCrObdG+2DQiGhq1xwZPJRA0o3dzEFU7XCrH6
         QOy4ZqJc1W/P5scJVDzap/Sto0fKc/y79pA9kMdGyaKnI8hdlwB0LGlqOrtgL1BlZ8BX
         WVTg==
X-Gm-Message-State: AOJu0YzwHw8LzpOpYi7s263gHy3yRa+IrZd6LdyJCO3svr+W18ANWntj
	XxqzVdi+xoFEMaIaua90nXzmrlSg2ZKNsaOHFO9c5klXLsL/vLmffHeTWUmrxB8ydyh0/rgpszM
	M/lIZuxPPyoxxr6DxGzl1WnJTugV+r/ASQy4=
X-Gm-Gg: ASbGnct/CHGYK2yxH7yjj1/kcAC1OSKMhil4symxb3uf6/SiZepe69QuzH/mhiBSzU+
	DAwObDSAMe9r71vmNBBuqrcrWSCeamCvSR+uP6MolNKNNAhEfyQKbFRXU//T6f9iLre0IkMLE+u
	RuE/1JO4RhfxY=
X-Google-Smtp-Source: AGHT+IH3qmSavh/AV+20drpMFLb60bX8PQwXuJtGFGME0sSUg6366iE8rFlpkPN+1h9cIumW5triHB+cll8ZbJsnxy4=
X-Received: by 2002:a05:6870:2f0f:b0:297:2376:9b17 with SMTP id
 586e51a60fabf-2b804f9d91fmr3279827fac.19.1738820146182; Wed, 05 Feb 2025
 21:35:46 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBngfbf3h-ARD1O441VMG5PZtrfcGNDN-QGmgi7TYySw2mw@mail.gmail.com>
In-Reply-To: <CAPJWBngfbf3h-ARD1O441VMG5PZtrfcGNDN-QGmgi7TYySw2mw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Feb 2025 21:35:19 -0800
X-Gm-Features: AWEUYZmNyIdXjVAmnAuPYFy2zi-exc0dow_1N07J398YIdS45H3TBDzRbjS0ctQ
Message-ID: <CAMKF1soeaC5uVJLBcHCO0oMVP4Gubcq6po35XUdwwM4eFAkUYw@mail.gmail.com>
Subject: Re: [yocto] Upgrading node version from 16 to 20 in yocto kirkstone
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 05:35:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64719

On Wed, Feb 5, 2025 at 8:51=E2=80=AFPM MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi guys,
> I wanted to update the node version from 16 to 20 in yocto kirkstone. For=
 this I have moved the node20 recipes from yocto scarthgap and ran it. Only=
 first error I got was with the icu recipe version and it moved the latest =
from scarthgap and resolved the issue.
> I got the error in do_comple
> "switch =E2=80=98-msign-return-address=3Dall=E2=80=99 is no longer suppor=
ted"
> for which I tried searching online to fix using a patch but its not worki=
ng.
>
> For now my questions are:
> 1. Is it possible to upgrade to newer versions of packages not officially=
 supported by the particular yocto release version? Has anyone tried it ear=
lier?

It is possible, but success and effort will vary depending upon how
complex the package is and how hairy the dependencies
are. you will have to see if you need  to adjust for yocto syntax
changes, new tools, new host tools, new target dependencies etc. so it
can be quite a lot or in best
cases it will be sticking a backport and it compiling without any other cha=
nges.

> 2. Also if you understand the above error and have a fix for it, please l=
et me know.I will share the logs soon.
>
you are running into below problem, perhaps the compiler is too old to
compile node 20, you need gcc 10+ so perhaps you need
to upgrade the gcc on your build host, the cross-compiler perhaps is ok.

https://github.com/nodejs/build/issues/3319

> Regards,
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64718): https://lists.yoctoproject.org/g/yocto/messag=
e/64718
> Mute This Topic: https://lists.yoctoproject.org/mt/111027204/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

