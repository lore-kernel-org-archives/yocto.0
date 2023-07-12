Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35D26EB64DD
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 17:04:05 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.1369.1689181436435269660
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jul 2023 10:03:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=cdZ8Is5F;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2b701e1c80fso113072651fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 10:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689181434; x=1691773434;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Xrb3Xv8TNL5GLCEXP0ZekqNyJYaFsF5HJxi57kfKIs=;
        b=cdZ8Is5F/GmXhDJitmz/opgBMRB3XgGsBD8dRFBqsUdZFL2EUfNAxYdSE+OUpZRZU1
         oUP9+dmuwC7OOg21lwDrcqZ8ZBS7GgyjfLSCVNj2uOviQflrmQVyAhzOttLQBtyumzUD
         dH0GAHMwIGMnDuDeaQuqGtv058Ude/7VQh96JtoKP76t0RJuddVCNhWE/0+LvGwu46io
         7jYlSEii5i8nZrCHxh7sMraB4Eb68avwWeQNtTIY/utho9lhiKSRO3jkI9yT8by49pRj
         kZrRsnwP2xsYmZgIDf8UjWZtuPdBsSoZZxgOjiOAMursFPJAwcqcml1ip7X7OTavvROJ
         6+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689181434; x=1691773434;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Xrb3Xv8TNL5GLCEXP0ZekqNyJYaFsF5HJxi57kfKIs=;
        b=VFsaEaoBfWjU6E13v0Esj4Uwb03N3L5AORspPsTTCv/t1Zh9NpPKbS3GIq/pIE+94c
         s/i4GvVjUdbntbKfllxbHtfd1djQMFsfhwzfP+szaVk5KmfHJiHP0meL8fpUOrQho+Op
         OHUbyfRqO6SU29jkZZP4TCvqOH1XzcvDQLPGzvWpPTbLyf55hkB4//+796nNKAkgcCw8
         abnpF9Na57xR+G0N7Tdf2dy74d/qkjWUj4dA7/gGhxiFXQ+FSnIOQHqScTsMgg6Tw92o
         UlEKF02K8Ggq+Cga4Cf0JpZ3M3IPNoVsXLtIwNYzBw+M7D5W9v/ciqyTq4lXi8Yl4pw1
         FSag==
X-Gm-Message-State: ABy/qLb883mv8FvPb4LfX1daEee3rD4C96rCYmgq4uTInSI6CmEUwSyC
	+YRmAPR5AdswG3tT/utyypKxVg6VQggDXtxyUHs=
X-Google-Smtp-Source: APBJJlE+BQ8Cgv909NDKjUJsKsCBSUoE71Uox7W4qYh8WJXg+HeXAUZUtKCs99GL15QM9NqeLblGVr7BSWgF6dqfiqg=
X-Received: by 2002:a05:651c:120e:b0:2b6:effd:9a3b with SMTP id
 i14-20020a05651c120e00b002b6effd9a3bmr16277669lja.24.1689181434137; Wed, 12
 Jul 2023 10:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <3684.1661546302833449840@lists.yoctoproject.org> <23208.1689112487284330296@lists.yoctoproject.org>
In-Reply-To: <23208.1689112487284330296@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Jul 2023 19:03:42 +0200
Message-ID: <CANNYZj-Lp4rkFT1fBsPhEETtLcB5htumQRqgOPz5kMuuJoabnQ@mail.gmail.com>
Subject: Re: [yocto] Devtool fails if SRCREV is set to ${AUTOREV} #kirkstone
 #devtool #yocto
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 17:04:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60555

Devtool does not have a maintainer. If you can look into the issue, it
would be appreciated.

Alex

On Tue, 11 Jul 2023 at 23:54, Tom Isaacson <tom.isaacson@teknique.com> wrote:
>
> Is there a fix for this yet? We just upgraded to Kirkstone and are running into the same problem.
>
> Thanks.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60550): https://lists.yoctoproject.org/g/yocto/message/60550
> Mute This Topic: https://lists.yoctoproject.org/mt/93100438/1686489
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtool
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

