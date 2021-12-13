Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DCB3C433F5
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 22:30:11 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.18278.1639434609926662838
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 14:30:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hb5TSkTS;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id gu12so15782044qvb.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 14:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QGJgFA3FIcGeXnbuyiE0oRK5WZWrjMHMHsMebsQ5vbA=;
        b=hb5TSkTSKKXZ8pELOBqXwWAHCpTTWOEkjNpiQVRC7bAQdY8YGZJGrzQxCL22qWCjZG
         zaLu3fOF5V95aKHVtadxBPfAAkRjKV4bkPrBw2AZ5QtAsbg6oUUgwkCfRoxkHt25mpF5
         YeWh/gul6Z+dAlslwf+1q5vVHNeaBKwX4zyaFy2ECfbetiNiKbYV2wsXefWwRRbYZm+u
         G1KsO/3jAe0XjStzBm3KSg+I7a48htK6TtUt6pO+ccQmtCLgFnIQDb9j+GQL6kG7qGJA
         ce77DwCTxClQcMU+gGiU9bzTeFgFnZuc62efvdLG+zCf8coKR/hS97bqv/ZuHopEHVok
         xQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QGJgFA3FIcGeXnbuyiE0oRK5WZWrjMHMHsMebsQ5vbA=;
        b=Go/GAwg0QoKPBv65nZFMPhYQgbXGBsWYr2flxs4Rnm6aUsj9jKECdCxNjVPE482+zM
         KiJik4TT7Qw5Deh8twEVny4caFuPBU9RcRuZ8NQqveR5meG0wlimJzLEMvhVsP/nVsoU
         DK/saGr7UsVqZDgQAhtDjVWoUrVEwy0gBWhDTfqlJ0tPcc28dOD9md1aDcQahEkWFup+
         jiv/XJSSsXkz1sf9XMta3+oJkht8jqCsiOqkQ7hWMlf9NGrCFtqVnUPvjMvfz0tNtJe9
         pmuJC37XUlTm6WGUwLJd6t4SggdMzw+FZvchnsWCRxHg98uf9Ad2Vbe8VCAoMyS/5dgV
         t2rg==
X-Gm-Message-State: AOAM531Vo47FRD1vzrtAdBWuEIDGl5nhZpyJlGW/0BVpS9MtIVi/X7gH
	OdjEt7hzTa5MBrEKTLhhgLM=
X-Google-Smtp-Source: 
 ABdhPJyxTWeaNqLHLQQzpl4HA/pdq+pLoWj+c75KeWXWVzuPQDHN6PmQT9zeG/yow6LrzueMyTeIiw==
X-Received: by 2002:ad4:5a13:: with SMTP id
 ei19mr1170571qvb.129.1639434609009;
        Mon, 13 Dec 2021 14:30:09 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 bq36sm6842808qkb.6.2021.12.13.14.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 14:30:07 -0800 (PST)
Date: Mon, 13 Dec 2021 17:30:05 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Quentin Schulz <foss+yocto@0leil.net>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
Message-ID: <20211213223005.GA36849@localhost>
References: <20211116170406.abau3j6liwsdonbp@fedora>
 <CAMKF1srfKKzNYBJPMKo_V13QKXuq1+mz-ULDd7hk3UEH_QwCNQ@mail.gmail.com>
 <20211116171242.7dyycd3d2qwb4ske@fedora>
 <CAMKF1soUeJES6ZG-wvng3VDfW_unw_7Fo4KSPWr3Cr8uR9T=eA@mail.gmail.com>
 <69C8168A-27F2-4B12-9592-264E80EFBC2D@0leil.net>
 <CAMKF1sq2vE9NuXpLYG6upqxBfa7XZ9yO0G2qNe-+yRBMcaTxVg@mail.gmail.com>
 <20211213090032.dy47s56sykoikbfc@fedora>
 <CAMKF1srokMzJfW8ZU=djZVaaXUTdXd9giCz6GgbhqX+X7RU8kQ@mail.gmail.com>
 <C99AA08F-5ECC-4989-8B8B-F4C6EF182ABD@0leil.net>
 <CAMKF1sorO4VR2GaN0gn2rS5-Lti_rXGy=9GsQWCgEAgN5gO9nQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: 
 <CAMKF1sorO4VR2GaN0gn2rS5-Lti_rXGy=9GsQWCgEAgN5gO9nQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 22:30:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55568

Hi Quentin/Khem,

On Mon 2021-12-13 @ 09:35:53 AM, Khem Raj wrote:
> On Mon, Dec 13, 2021 at 9:18 AM Quentin Schulz <foss+yocto@0leil.net> wrote:
> >
> > Hi Khem,
> >
> > On December 13, 2021 4:04:03 PM GMT+01:00, Khem Raj <raj.khem@gmail.com> wrote:
> > >On Mon, Dec 13, 2021 at 1:00 AM Quentin Schulz <
> > >quentin.schulz@theobroma-systems.com> wrote:
> > >
> > >> Hi Trevor,
> > >>
> > >> Gentle ping :)
> > >>
> > >> Honister 3.4.1 being out it's less of an issue but the question remains
> > >> at least for settling on a policy :)

I apologize for not reviewing this patch in a timely manner; I'm sorry for the
frustration it caused.

Would this have been solved by (me) creating a honister  branch? I usually
don't create a release branch until openembedded-core moves, but this looks
like it was a case where master and the latest branch diverged?

If so, would that still be useful?

Best regards,
	Trevor

