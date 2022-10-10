Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE53AC433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 14:16:05 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web12.6746.1665411359720139844
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 07:16:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=AeKUadGz;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.46,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f46.google.com with SMTP id o21so25133589ejm.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 07:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=29Uzc7V1XF8SdIAHyee8zP4gcdg7QF7+vKkudPUZyXM=;
        b=AeKUadGzSz9NR1TdAdHXDI1mNCyKbN/MyKOyaaHl8RHuWF5QNpfvrO0aR6CZA7685o
         RhUQnZej21+v9/bxfFo+z1LZVb9GE0ErEQ3Ela2iMRsrEYu65LIWGWWO3xqJ37rcFrCe
         Ps9I0GlhrSCvNukR9GJ4/7xzrmVMySmZw6B3UDpf+JA/3i9BiEY47sVk/IBTuuqjegkM
         lVMufdF6fX34S/ZihMPAuMNaU9+5ZNvC9UNRHB7454OpSuBEblWteBKy8Z4iNTblMmo/
         zWpGXCKR3BGj8bTtXfucSAFYNR1vEZdas0ZL6qP572OUIhL1EfcX5SRc9iOEMXmN9+fj
         pklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=29Uzc7V1XF8SdIAHyee8zP4gcdg7QF7+vKkudPUZyXM=;
        b=ukOu/NF3j7nrylDQnXJmor7HX76tim4a3NK8jgI/QU+HvXTlG/nHp7OtI88ton5fB7
         lz9qY8QwbWKuiv98gZ1k13cc7gwrgADkrKE9TkU+eml9bS1HZ4W+kmpDqIv1JJCvpQUB
         pcN5cy0TK9Bo2fI6XiJo/rXWLI+mu1KbvM8B2hLwyaQjFtHdOO52Z/vds1Lk/vNnzD3w
         Ty3vZ8cikQfcWF0fpB4ICeo0vfwU7wHFcEffQoJ9unIAPRODQ2PmUi58w59l6jSrwCsQ
         S2L/3fpiTVowMmD8gc6VNfMm41CQ534zVDiomxrd8tunb1R2Chy57jRBVrdVPQEozXMU
         NdJw==
X-Gm-Message-State: ACrzQf3md4S7a2YQIlk2vfq8QzQ9JkYEXWmtWexhdVJJ83e0zGxpNKAK
	6r6RhuStlyzBCWuqoeVJZ+ONJ/VA/wGaHlXD8yiwGQ==
X-Google-Smtp-Source: 
 AMsMyM6CEflhOi5sG/IXWRz/qG2yiRLNLw5mK9rHOXzFhAmGrkbMkoRGSK6AdCDrWMlwGlYdjVmCk4t0yQLv6ubdYjU=
X-Received: by 2002:a17:907:3da0:b0:787:89cc:faab with SMTP id
 he32-20020a1709073da000b0078789ccfaabmr14946983ejc.92.1665411357572; Mon, 10
 Oct 2022 07:15:57 -0700 (PDT)
MIME-Version: 1.0
References: 
 <01010183c1d53236-d20aa3af-b0ca-4f72-b153-1ece8a7e1c53-000000@us-west-2.amazonses.com>
 <171CBA851628AA03.28514@lists.yoctoproject.org>
In-Reply-To: <171CBA851628AA03.28514@lists.yoctoproject.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 10 Oct 2022 04:15:46 -1000
Message-ID: 
 <CAOSpxdZhhuf+dTEMhO=dz0Xtqn4senp+wx0y8x9trwHtWGGM9Q@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: Pokybuild User <pokybuild@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 14:16:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58308

Richard let me know that a missing release number will result in a
broken build for QA, so I will run a 3.1.20-rc2 build with this
corrected.

Again, sorry for the confusion.

Steve

On Mon, Oct 10, 2022 at 4:10 AM Steve Sakoman via
lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
wrote:
>
> This was the 3.1.20 release build.  I somehow neglected to fill in the
> release number on the build form.  Sorry for the confusion.
>
> There was one failure in the build -- a known autobuilder intermittent issue:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=14522
>
> I reran this and it passed:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/63/builds/5931
>
> Steve
>
> On Mon, Oct 10, 2022 at 2:18 AM Pokybuild User
> <pokybuild@yoctoproject.org> wrote:
> >
> >
> > A build flagged for QA (yocto-.rc1) was completed on the autobuilder and is available at:
> >
> >
> >     https://autobuilder.yocto.io/pub/releases/yocto-.rc1
> >
> >
> > Build hash information:
> >
> > bitbake: 048d682b031644fb9f0d41a489bacb873aa27bd7
> > meta-agl: da4775d226b2a231e27e8c8995c20fdd3c73f08a
> > meta-arm: 08c44df351ae1913f41de8388981b03e21235f09
> > meta-aws: 052c9a5f8532ed96487df37bae2f598c129d7d01
> > meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> > meta-intel: ed616c50ea329ba6fe68642cfc8bf8c6b8b61beb
> > meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> > meta-openembedded: 6792ebdd966aa0fb662989529193a0940fbfee00
> > meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
> > oecore: dbad46a0079843b380cf3dda6008b12ab9526688
> > poky: 7f9b7f912e13451a4cd03b10a8090a5def68dc39
> >
> >
> >
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> >
> >
> >
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58307): https://lists.yoctoproject.org/g/yocto/message/58307
> Mute This Topic: https://lists.yoctoproject.org/mt/94234792/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

