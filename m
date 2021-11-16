Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B1DC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 17:09:09 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web12.900.1637082548956852874
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 09:09:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Uy9O9cmd;
 spf=pass (domain: gmail.com, ip: 209.85.222.172,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id 193so21247682qkh.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 09:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BNolVBZDSM1kb0dyID6hUQNfMQhZoPnAg550SOq3oZQ=;
        b=Uy9O9cmdiAJhdIwhj3laMKbqL4JzRloeV5n8gr9p+R7/2576Ry7Lobe2+9ueTZzNy9
         fTmqdaJ+6DkyfTnP1nksp5o079uvnpm8jgIs9LwKbebUlZTRePfYoET6eYIpFt7fGoCV
         uSkDmtMwgyGl9W/G+6lUk3x/xZ1SpybsWA8zI1dfFZijsrBm/NotCqu7cQU7s57iymbm
         gaZTdkExvpv+CKUVP4GGe8GsCNgjJ/IiU+0YrWl7OQBRxkSQM/sU/0BoU49LDXl0IxOI
         0Y9Hpn5tGQ7asPd7pVLIRAlNhptpRVj7GtV9+EqfRDEVprW0y6XGNFaQBTinRgRIY7fa
         KjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BNolVBZDSM1kb0dyID6hUQNfMQhZoPnAg550SOq3oZQ=;
        b=1A8rWxPyfQ85uSk+ZPeNZBniDW+NtCjtOK1NUB39u2JalFdMrQZiZMD2o5ioAC6vNF
         FaZKfL+NqCju7Uc1rs8GbXRJ/5PYCDg4P5iervC6yCSNiac6HLe9OK/Yn22qwD3znvGb
         Klu6MfSmRs1oEc8smPTYLeVxvDwMokdXNbFFkPxMm4CTkeISIeeTykflQ4AkXUC9NGvZ
         ff5ZCfBNafX6bwnpk9CE4ZSlAcV/xRvHL2EHI2GSKZs93kHWiI93f2Df4OrQ/M37kuKy
         oUPozNTonEKIUhXqtbAlp3bCvMaXE0unJ6rWy/PbLn8W2JqTuRt4GC11YUxOwjqk6Gs5
         c5Lg==
X-Gm-Message-State: AOAM533kkmd97G5vXngDCYFmDBZunnNmJOwG2PpNGgogFZ6dRK9o1TDI
	2Z6tRS4lsZPfA6nEtGGEZKLOd2HMD3FxU7XoAj4=
X-Google-Smtp-Source: 
 ABdhPJzw42EbGSAUfHY3b8TxMWzL2au0PhbYMUDek5LinWuqMmantKzlmnY2lWcurdVYZfcgDkkUbRuoEBaSEUruXgM=
X-Received: by 2002:a37:9507:: with SMTP id x7mr7317876qkd.105.1637082547918;
 Tue, 16 Nov 2021 09:09:07 -0800 (PST)
MIME-Version: 1.0
References: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sq+cj8e31L1ExHSKckEVab-ZdeUCF3_CTSr0VPtZ=_sVQ@mail.gmail.com>
 <20211116170406.abau3j6liwsdonbp@fedora>
In-Reply-To: <20211116170406.abau3j6liwsdonbp@fedora>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 16 Nov 2021 09:08:41 -0800
Message-ID: 
 <CAMKF1srfKKzNYBJPMKo_V13QKXuq1+mz-ULDd7hk3UEH_QwCNQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Trevor Woerner <twoerner@gmail.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 17:09:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55349

On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:
> > On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
> > <quentin.schulz@theobroma-systems.com> wrote:
> > >
> > > From Linux kernel v5.14 to v5.14.11 (both included), the Ethernet MAC
> > > controller found on RK3399 is not working.
> > >
> > > A fix is available in v5.14.12 and later (available also in v5.15)
> > > which is provided here and applied to linux-yocto source tree if
> > > linux-yocto version is of the impacted ones.
> > >
> > > The conditional patching is unfortunately required because Honister 3.4
> > > has linux-yocto v5.14.9 and Honister 3.4.1 will have at least
> > > linux-yocto v5.14.14.
> >
> > Patching piece below looks quite a bit.
> > lets just fix v5.14.14 and dont worry about 3.4
> >
>
> v5.14.14 is already fixed. The only release currently is 3.4 and I hit
> that issue, hence the patch.
> I assume not everybody is updating to 3.4.1 when it's out, I've seen
> people running behind dot releases.
> What's bothering you?

once dot release is out then thats whats maintained not the original
release since they are incremental.
the anon python to apply a patch. Can you explain why we want to patch
applied this way ?

>
> Cheers,
> Quentin

