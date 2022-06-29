Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02ACC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 13:51:04 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web08.11713.1656510663667705029
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 06:51:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=6rXvQjBZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.54,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f54.google.com with SMTP id o25so278971ejm.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NtMREps4hvBXIxbN+ufhrMZipLMM8wewgTgr68AgOos=;
        b=6rXvQjBZlBC46lYc+1c+FswovbZM2kM1AKGDP7gYqjJA14w7M+5YtbvS1m6fUvNlbP
         P4YpinTMTJuqbx6pSJlNsL7IsDNubGaQM+8f5os+ZtBzNadoRCVTc3UIaSksUkpXw+Bu
         s0Yk8aVFbS/Nw1C9evOUORaXVhAm1LpNSUrF+uN1WPN5bi1EpuDGxZ+rRB7t57MiEfy7
         iDqai/dR7Nk1MZ5VHGMgtFD5Cc0ab63D8udB4IeOFg0Mad1+Mu88PD+uGbibPKd+GHQo
         lkPPRnVH0g8fmc7PZ+fhopfWGudT1hqsJ+3rufWnf1vWQXa99+WZqBgPrv1jLWq8RXiM
         QkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NtMREps4hvBXIxbN+ufhrMZipLMM8wewgTgr68AgOos=;
        b=GZtkO+cNSZKEUABlvpZSvWen4DE8G9lAQYqegjJfVh4EaDM7A9Onc9uN+zZDf4L3mo
         OPpVNWb0G3xDLTlb27Dc+7fm7mtNcfYj1XI1L4iK514DcJMUoHVqVL8w7feRGAAI8EVk
         vSo5CI4mAMztSiNoNDu5WPPj4SXh+bra9UnwkNdwOPzBfc3qBn2QWszGUvHDIAcEOu/H
         +CJfY8YzXPdGQBUh1hIMvbbOIBSFcb8syOzO5k4//GdEvpjni4qQ5FMtAt3S4F1Fl14R
         oxR+EPDnGqqYPS8Hu70wzd5VlMDyhQAjDsYHeGGcBsPyPxX0tzLNKo8sU72svYg+sv/5
         malg==
X-Gm-Message-State: AJIora/RuUnuhArN6EpDEjdJ/SrpCwb4wwUaffHrNg++Cjx2OVF9h7rG
	2UZGsAwXGKZl7MdMispXwEJFm5eGvW0uIblzMdgudw==
X-Google-Smtp-Source: 
 AGRyM1sLH3Di9FNhQ94KMhV+FkIzUu6UsTNuApEEJCYmRKo1wsYP3lSQ1yoHdHkRCeFtPMBfEsI0i3XpQLpR1x08lTI=
X-Received: by 2002:a17:907:204b:b0:726:34a5:915a with SMTP id
 pg11-20020a170907204b00b0072634a5915amr3435157ejb.41.1656510661686; Wed, 29
 Jun 2022 06:51:01 -0700 (PDT)
MIME-Version: 1.0
References: 
 <01010181af49cc59-7fa1b027-722d-4360-9ca4-4894f160087e-000000@us-west-2.amazonses.com>
 <7afd34dca0455a0561ca80e30049f7fbde1a11b0.camel@linuxfoundation.org>
In-Reply-To: 
 <7afd34dca0455a0561ca80e30049f7fbde1a11b0.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 29 Jun 2022 03:50:49 -1000
Message-ID: 
 <CAOSpxdYPFDBFPO-tG3vjQQqpum-bks018CW8is9zyXzoSiju3g@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.2.rc1)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: qa-build-notification@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 13:51:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57421

On Wed, Jun 29, 2022 at 2:43 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2022-06-29 at 11:47 +0000, Pokybuild User wrote:
> > A build flagged for QA (yocto-4.0.2.rc1) was completed on the autobuilder and is available at:
> >
> >
> >     https://autobuilder.yocto.io/pub/releases/yocto-4.0.2.rc1
> >
> >
> > Build hash information:
> >
> > bitbake: b8fd6f5d9959d27176ea016c249cf6d35ac8ba03
> > meta-agl: c4cc627f4d65da8c3b0860c791d9b9687ba8f5d6
> > meta-arm: af928569b421431347c84f5941cee7aaa9f0ac74
> > meta-aws: 8b8eec4bde3b1ff00783503bd77b3a5fb7d904ec
> > meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> > meta-intel: ef3aa3064b9bbfa19f600eafb1e7d3473f62af74
> > meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> > meta-openembedded: fcc7d7eae82be4c180f2e8fa3db90a8ab3be07b7
> > meta-virtualization: 320f44c6e9af463a85b58e0d87ca70273c6b87f6
> > oecore: eea52e0c3d24c79464f4afdbc3c397e1cb982231
> > poky: a5ea426b1da472fc8549459fff3c1b8c6e02f4b5
> >
>
> There were two failures in the build on the autobuilder, both are due
> to known scp issues with fedora36. I thought we hadn't enabled
> kirkstone on f36 but evidently we have :/.

I think I see the issue - we never did an entry for kirkstone in
workers_prev_releases, so the autobuilder is not restricting workers
at all!

I'll send a patch.

Steve

> I don't believe the two issues should block 4.0.2 testing or release.
>
> Cheers,
>
> Richard

