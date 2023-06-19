Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C4F1EB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:34:12 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.3850.1687167249054764196
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:34:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=eeS0THHl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.180, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2b44eddb52dso43883011fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 02:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687167247; x=1689759247;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1W2mgTp9Akb49qFTE+OuR9dlOVwnqzHi8lDBPtdnK1w=;
        b=eeS0THHlyOiy18uEfKe1ElnOdlCw1odIqjnUCHGbzPRy2IFLKcpgAVp2iEfw4518ZD
         KW6QLTNqgXnbMP3K4i26iWXBVx0sKdBfbm5AFJaT5jUX/ZJP4JKLGg44faXy51lWds3J
         8siGpCLJPQvYl/UmFlV1Ha52rF3UKTho/arSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687167247; x=1689759247;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1W2mgTp9Akb49qFTE+OuR9dlOVwnqzHi8lDBPtdnK1w=;
        b=RmPw6xp1BArjQn74rs0dxOFNDIngvJZHn72gpJuEiMJa7LOkpiYk40TLjiCkiooxu2
         +PeAr+yad7/QRPMnAKO88Z0vGwsiqZ5+4qn4geWJyJbYGmGl1TMC2Khsd9qB8S2y5j22
         jKK6k6ovrN1tJraPj8E7OL8osXKPIBieNia48jW68afKRvGS1MoOD77ytBfC9BdId3m9
         AZAB3uHbV9CFngIB72oMJdYilAnpjxsMaqyPa+995/BKJDPPEuUld7qr9ALdgT6ww9Tu
         +YQ6Xtt3/gv0YrKKrnTIDB3UHg+I+MX+A1Av4zaTp+6rim2hBnW0o0/C+dFX7cetA22j
         i7eg==
X-Gm-Message-State: AC+VfDx6Ga51en9Kfu51+PobNFtTfpR51GBEwyO+sRWMFQ9ds1VqP12j
	rnB0UN6tbiNqiNXldQIs/73wRQ==
X-Google-Smtp-Source: ACHHUZ6Z9pVJ4Hvpf0h+T0U4Ggg7RLb+F8Ijc+A8Lm+hNMbKt1qudnNbIQMD2lFAhRgw52S/8/x88A==
X-Received: by 2002:a2e:9083:0:b0:2b0:489e:c457 with SMTP id l3-20020a2e9083000000b002b0489ec457mr5856667ljg.39.1687167247227;
        Mon, 19 Jun 2023 02:34:07 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a584:d6f1:d866:e41? ([2001:8b0:aba:5f3c:a584:d6f1:d866:e41])
        by smtp.gmail.com with ESMTPSA id j18-20020a05600c2b9200b003f8140763c7sm10119495wmc.30.2023.06.19.02.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:34:06 -0700 (PDT)
Message-ID: <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	michael.opdenacker@bootlin.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Mon, 19 Jun 2023 10:34:05 +0100
In-Reply-To: <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
	 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:34:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60340

On Mon, 2023-06-19 at 11:02 +0200, Alexander Kanavin wrote:
> Even if we would have a subscription with Canonical, it would not be
> fair to ask contributors to fix issues that occur only on distribution
> available through commercial channels. So yes, it should be dropped
> ASAP.
>=20
> Alex
>=20
> On Mon, 19 Jun 2023 at 10:35, Michael Opdenacker via
> lists.yoctoproject.org
> <michael.opdenacker=3Dbootlin.com@lists.yoctoproject.org> wrote:
> >=20
> > Greetings,
> >=20
> > I know that we are still testing and supporting Ubuntu 18.04, but shoul=
d
> > we go on doing it?
> >=20
> > This version no longer has public updates, so unless we have a
> > subscription with Canonical, we are going to be out of sync with the
> > updates that Ubuntu 18.04 subscribers get.

This isn't as simple as you'd think.

The x86 worker will be dropped when maintenance comes around to that
point on the autobuilder, it is in the queue.

The ARM worker worries me a lot more. The 1804 worker is currently
stable but I do worry a bit what will happen when we change the OS on
that machine. In theory it should be fine and it could well be but that
hardware was very painful in the past.

I appreciate the idealist "lets drop it ASAP" but there are other
things to consider. Do we want to lose Michael Halstead and myself for
a couple of weeks trying to fix a new OS on it? Do we want to lose a
third of our ARM build power?

Cheers,

Richard


