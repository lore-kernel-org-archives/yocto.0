Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED47C6FD1F
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 09:41:22 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.38660.1679478079026176550
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 02:41:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fzp6YMNF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so12581385wmb.5
        for <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 02:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1679478077;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V7+q/abmVM+w/lEURr+RVZaFQAJRcjObnQCRwXGPZ/Y=;
        b=fzp6YMNF8UC3ogTLhj1dB7HhCwF8JHeCSlqzbTHb7Ung+IKKXdVZPXGVaUThNbLsTS
         lN9nSX0HtmpJIFqjT3hblm2WARvoz2UFGq3PFkSH1qHD1UP8v/ChYtCu/Sfu3GSWMF46
         C5FJqN8zaeegb44A8FZU9UT98gWBsVlrRrVvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679478077;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V7+q/abmVM+w/lEURr+RVZaFQAJRcjObnQCRwXGPZ/Y=;
        b=F7z3VXhtYHoUH6UdQ2IUlRExY/6uq4Q0IBlMF8BRwz98UcXrbCm9iVAZC7+8893FZM
         Z941aWn4BSJBTI6afpx6Kj7oPGK93f9+JsAuezJMUtBLj3LbIKewnbwQAbvxV42TZHZw
         smzcHfKL6OyB96wG+tR9CT8QldbqqstWfbUYA/45TkdibvlB5MJPONRHNAlAvJEZRMTy
         OYadSxbEV2qWyPRwB3jq2HnKoaco6E/N37sb4v9Y6MvydMEAkR/JhNNEr1Fb9fMiAXN8
         M7MpWPJfwbLQGEYAadB220l00BCD0yIVpQRZBkHIYOj7BDoZAhPo9unAK/+g/7aC++5V
         LiMw==
X-Gm-Message-State: AO0yUKXjWT52zbb5qQxd+7TwLxuqP3Tr3dsPichx8XrIwH5oJd92g07u
	Ek7yu1QPk0D42Vclqwv3ME6NqQ==
X-Google-Smtp-Source: AK7set9McLh6eCsGjVOUMLQqmprc5LFY7J4WyrBWsCn4IJLNVlK/7gre5s+9EFAmDD/cEngg+7fgpg==
X-Received: by 2002:a05:600c:2258:b0:3ee:67ff:4aad with SMTP id a24-20020a05600c225800b003ee67ff4aadmr695866wmm.26.1679478077358;
        Wed, 22 Mar 2023 02:41:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:fb64:5f49:21ba:a392? ([2001:8b0:aba:5f3c:fb64:5f49:21ba:a392])
        by smtp.gmail.com with ESMTPSA id u10-20020a7bcb0a000000b003eb5ce1b734sm16562580wmj.7.2023.03.22.02.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 02:41:16 -0700 (PDT)
Message-ID: <3723507738dfc4ca08ad9ad9230c150c605e8168.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/8] fix regression
 reports generation on "master-next" branches
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org, 
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Date: Wed, 22 Mar 2023 09:41:16 +0000
In-Reply-To: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
References: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 09:41:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59489

On Mon, 2023-03-13 at 15:51 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> From: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
>=20
> This series fixes regression report generation on "next" branches, as rai=
sed in
> [1].
>=20
> The first five patches are preparatory updates for the real fix, being ei=
ther
> refactoring, cleanup or unit tests addition to better understand how inte=
gration
> branches are used in send-qa-email.
> The proper fix is in 6th commit, followed by corresponding tests
> Finally, the last commit add Alexandre's "next" branch as "fork" branches=
 to
> enable regression reports generation when testing patches, as suggested i=
n [1]
> too.
>=20
> Since patch testing branches are force-pushed on a regular basis, it is q=
uite
> difficult to get a relevant testing scenario, so this series has been tes=
ted by
> faking SHA1 in yocto_testresults_query to match some master-next results =
in
> yocto-testresults at the time of testing this series. I would gladly take
> feedback about this series running for real in a master-next branch
>=20
> [1] https://lists.yoctoproject.org/g/yocto/message/59067
>=20
> Alexis Lothor=C3=A9 (8):
>   scripts/utils: add unit tests for getcomparisonbranch
>   scripts/send-qa-email: remove unused variable
>   scripts/send-qa-email: invert boolean logic for release check
>   scripts/send-qa-email: protect is_release_version from None value
>   scripts/send-qa-email: add tests for is_release_version
>   scripts/send-qa-email: fix testing branches regression reporting
>   scripts/test_send_qa_email.py: add tests for base/target pair guessing
>   config: flag A. Belloni master-next branch as testing branch

I think there is a regression somewhere:

https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/2085/step=
s/29/logs/stdio

Cheers,

Richard

