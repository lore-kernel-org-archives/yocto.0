Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCFC4167B
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 01:47:55 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web11.3241.1669772867886981886
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 17:47:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dpu5uAuD;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-142faa7a207so19317261fac.13
        for <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 17:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4GATK2JxivGV4fVX4iIZLvd+I+b/ueIt5etzNxjp2A=;
        b=Dpu5uAuDliiYMcLIAjs2Il1TS7JJb7Y4NzFu0KGxaLJuPFyoigHsL1/vLc9RqnWeiL
         wOlP0zfFVMi088NkgOHNFXZMYu60qXZOvj11igWIxgG3CoCJhBwyLWE9c56vzssJrFUs
         1gc2rlvm6SuMN+xOH6/wRWlkxGhK5B0uh8Klr/Pzrdk9y7aEJ+AxcOknr3BcVC90Rvk7
         k2BWFb8eXiVblYJrtkwc6S7v/dhaARR2W0uTT+9HQQ7jLXeo5XOcsYGNKFJ7HDoGvHTV
         Ci+RopSimxl42c5zfsM7kiFuTG3QShBwFL75GFaGMTcv62wxW0fo2s5qNMtg7chB3q2h
         PlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4GATK2JxivGV4fVX4iIZLvd+I+b/ueIt5etzNxjp2A=;
        b=vhmWlz6otnfv3/poj8ZMO6RM4toW4Hm1nUI9TWSpK0nMimjYNMg/wPdpNv6cFEzDNn
         ctzq9AAkdsmEACG27BSzNGq1ZoaZIKE52cjrsxs2m1z+Yee8FlbeuOOBeqWi6YXvZo+k
         GRc6JXD/Seni0DCRUXTFBTQ4gjqCezfYMUD+V9bYtIQb0m4ipBa1V8/bXahOx179xn3U
         lY2rOrFV1mIt9FcXghMoS9CTmqX9qts1M8i5TAF/e3Yp2W7ra8WANhHDZNpZonqUaPCH
         DFcFV5ARFC1vUZ8k1OQXbMDrpfcE9PbpCtJn710T+bHOsETR7gUI9btrz77W3lPmP76Z
         lAQg==
X-Gm-Message-State: ANoB5plViCoFwG750NDbp+xpR+3vP6YpbufwsRCK7U1w7X41Ehd9lLNr
	W6zh7+MJXjwvmlm9EUYneCeKxFL3IGzg9S9dVVc=
X-Google-Smtp-Source: AA0mqf4Ectq5NI6b+h00mgYbYQndx4Qg/vRYh7rn2djKrWMTj7bdBrndIMDpip7916v8C0cWHFXRs4YuuTi9VeMb4TY=
X-Received: by 2002:a05:6870:1784:b0:13b:1e05:a73d with SMTP id
 r4-20020a056870178400b0013b1e05a73dmr35325230oae.55.1669772866908; Tue, 29
 Nov 2022 17:47:46 -0800 (PST)
MIME-Version: 1.0
References: <5giG.1669745229140773433.upcj@lists.yoctoproject.org>
In-Reply-To: <5giG.1669745229140773433.upcj@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Nov 2022 17:47:21 -0800
Message-ID: <CAMKF1soGfZjXEczuMTvD=kWR=Ns4RcnU0QhzJ3SkdUPQ1hJWsg@mail.gmail.com>
Subject: Re: [yocto] Building a dhcp recipe separately for dhcrelay and
 dhclient #yocto
To: vaijayanthi@silver-peak.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 01:47:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58659

On Tue, Nov 29, 2022 at 10:07 AM Vaijayanthi via
lists.yoctoproject.org
<vaijayanthi=3Dsilver-peak.com@lists.yoctoproject.org> wrote:
>
> We have custom patches for building dhcrelay and dhclient. How do we use =
the dhcp source files and build separately for dhcrelay and dhclient? Shoul=
d we create a new recipe for dhcrelay and dhclient? How do we then consume =
the files from poky/recipes-connectivity/dhcp?

what are benefits of having separate recipes for them? I would say
creating separate output packages should be effective enough for
granularity.

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58656): https://lists.yoctoproject.org/g/yocto/messag=
e/58656
> Mute This Topic: https://lists.yoctoproject.org/mt/95340567/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

