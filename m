Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43817C83F26
	for <webhook@archiver.kernel.org>; Tue, 29 Jul 2025 12:45:52 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.6206.1753793146623741425
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 05:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=v7y+/Hxq;
 spf=softfail (domain: sidebranch.com, ip: 209.85.216.42, mailfrom: leon@sidebranch.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-31c4a546cc2so4716325a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 05:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1753793145; x=1754397945; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=la9CzxfVLa4VVwtjhjH95XZsf/G1/emc9fYBs4bpbaQ=;
        b=v7y+/Hxqiox8AUCN1t1XLbF6zn3MP5fO28bvdIo2A+7sze8l8QUk5ORuUluKDxy4qV
         iA+hmSqXmAWIkp4PjLmoNVigJqqhusRz/45JY38Bf33XqYbaXK+7gT2UTOU7Oc++EUlR
         yT+4L7xwb/NiZIOuTVJp/ulVyna4DOdgpFD+//MdfrLlXyUQ8PF+g8/K+LBfPfIzMWuN
         by3+KZ6SaerBHQ/Ih1U+FH/++URyPolcPCjUKOFgPv6BSLUeU8uOWCkOMH32C53nsn4Q
         2kE6FmU6XOgpCNibNX1wtJfgDGqjL+DskIVw/peYS6kMrvs1DMmO16FOOAz3dLjcAMcV
         8h8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753793145; x=1754397945;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=la9CzxfVLa4VVwtjhjH95XZsf/G1/emc9fYBs4bpbaQ=;
        b=mmSGHUuc+GSRog7+uJSnhtJcg91Ac7nig7et31fKpZDHXLiZFmWp8c5NRUJ9MHPPXx
         2KHivbPID+VS1P1gBSzEy3DvsXiLvQtq4K+obPv8tGyzocE0zef/wurFRRPFxoMF9kc+
         LoCi31lYMqKefrSCbQZThJ+z7DyaVVGrmQ0Cylcaxq+AxW/XVOgcv7ySHvKZUcIL3FyB
         bDsp2nnBECRI+LFf7KsgAmhaRQ81pZDXVtMdxKpyxn4diemOGZSMPxhZ40nVUaodob22
         cxOpiJEYEXIBE2l16BJGRojkx9ydOzkoHvpynDGvjxLb8Po9Y3s2Jsc3Buy9G8cj8yX4
         bS2w==
X-Gm-Message-State: AOJu0YwULtiitoqg2afIFRLWSZRqxV0BL9Qvd0XEvFuTA5rs3/CC/YhM
	6bojcwdEdBB9EmfaqygofXN8DalhkLgnOcyl5lep+vj4ZXH1VRyBlrC/URWuLyuEeG1eZv4iPgv
	qcgf3WPPtMmhNcVkaY6zdMuOzu2KPnVBjsPlyP4zx0APTpW8Q12qqrX8=
X-Gm-Gg: ASbGncvj8fGOKIdyoExY8YcCAuZ7ksjdKUJLrd3fHSz0l6lcN8q5e5EVsSlfpiXGIdK
	zObMckkP0b8uZ9xCDSj7jOoPhfxcNUZLQkab9DGLDvzmlUVJHvHWcUE837b5QofhKdLNzWNPpz7
	dVjiWSevUFrS3vFO68OKFtzegYxOfIYjG5PmbpPPIRmc1929Q3FzGFtrC/Dgwmj2aM7HK9kidYy
	IzynEgAKSesPk+grjiIEwm1kyC/j/DGQDbebw==
X-Google-Smtp-Source: AGHT+IHjFNXRKbunP27h3Kn4fjcbTXXZT5/LCPceS8HKWPSyrmItZ7WexrhRTf+CN0E4jVcSig0i2EH5D9aB47GR95Q=
X-Received: by 2002:a17:90b:240c:b0:31e:cc6b:321e with SMTP id
 98e67ed59e1d1-31ecc6b3327mr10006144a91.33.1753793145301; Tue, 29 Jul 2025
 05:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <42aa178f-8b5e-1eb4-99a1-8e3a036580b5@crashcourse.ca>
In-Reply-To: <42aa178f-8b5e-1eb4-99a1-8e3a036580b5@crashcourse.ca>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 29 Jul 2025 14:45:33 +0200
X-Gm-Features: Ac12FXymsYGP6J6iRzz8zieUnnkt0RiQ_nOVo96FRU7qvx8nqTBCslRuVSWPxLc
Message-ID: <CAMjhiJhy9m4-xOyUNPtf2NuET7fD0YFhwOcinc8wMUSppzP7xQ@mail.gmail.com>
Subject: Re: [yocto] can anyone suggest a decent example of a SMARC-based YP build?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 12:45:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65713

Hi Robert,

On Tue, Jul 29, 2025 at 12:08=E2=80=AFPM Robert P. J. Day via
lists.yoctoproject.org <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org>
wrote:
>   just started perusing the docs on "SMARC" SoMs:
> ...
> and then more than likely someone who wants to build a product around
> that fairly standardized format and spec needs to design a (custom,
> ...
> so even if there's a wild variety of carrier boards, one would think
> that the SMARC 2.2 spec will still mean a lot of the configuration is
> consistent.
>

No. SMARC (loosely or more strictly, depending on who you ask)
defines a common connector pin-out, voltages, and that's about it.

Any "configuration" for the SoC, device tree, etc. are all different,
let alone the Yocto build configuration.

Regards,

Leon

