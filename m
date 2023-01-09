Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85521C678D9
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 09:27:37 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.67383.1673256454679811798
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 01:27:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J/h3q1cl;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id bn6so8208749ljb.13
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 01:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BQhDDV6D+SRv/GVYims2+g/a2i8Q5DsemXnr0Tapyos=;
        b=J/h3q1cliMnxTw7ascO3tIljvt5GGeFxsNWCOesThj7wRtAezj8IMwnAvzCoGVxlPt
         XxccgSXSegGpnL27+AamRqsy4PtLLclFOcq79a4EIdS77Ko9/sD9ckCdqt0s4YUysM3B
         g94OBg82e0/vTv9Qvyi7381mo9+ZFrYAfnmQVT103d4iWARyzB2u0w9hJUBLSaoorEKq
         J6YFvayLsElWy0HmL5pAOP0ceWxRyheaXU36EOFP2EMtIF72ATvWzy9ApL4t9Yfw4rSv
         ZuvzK+ba1YEt+ehNtxpm6R7cb9b/SYZ6LbC3dvmVUYd8zKqhsuiiVUgihL61KivTKWkq
         iC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BQhDDV6D+SRv/GVYims2+g/a2i8Q5DsemXnr0Tapyos=;
        b=Pp8iJCfTAG8yr9JLvbYCtnaEifTM5l4XTU34Jl2qrU18JVZdfyHrRRdFPKXsikCLcj
         o0V6skPMO8b2GTsc7wEXlBcIaxaqrvrel+N0HaurJ9N9nw8c2g0BS70zWuELlH28TsIG
         w5AweLiJZlLdKSXreslbJf8f0o9iqCfFNQnmy45LBekwGIlsk8tA/P7oFkVB7/IheXOI
         Ay4Rf4loeGs3m6YwXL0bqQFZbXr87yEV8Ec+csZoroZbgQ0tPTeXYvdxYQaM6i/Ht6+J
         RRv5FbOrij7kypvpiHVDVoG7WnvcdXJ18tj6i7035MzjdjqIlFc3ZbELWi04EJ3rjsQI
         lv1Q==
X-Gm-Message-State: AFqh2kppaxxyI8f9O64jWhmtg/r2d3UBqP56ylojADHZkgodg7pCaTNO
	mnIqeZlWbsx/CeeoL1q9H6t5ZAdqNmzn2aYloOo=
X-Google-Smtp-Source: AMrXdXt5GUHsbfmvuUlOdTQm146EnYtkgv3Qzqkvs1oHGhshMd6I/Y/siW1TdVjYzIMkOjtwjFFXIPHe4dqAdDX7NOg=
X-Received: by 2002:a2e:b4a5:0:b0:282:5f2d:62dc with SMTP id
 q5-20020a2eb4a5000000b002825f2d62dcmr695277ljm.217.1673256452582; Mon, 09 Jan
 2023 01:27:32 -0800 (PST)
MIME-Version: 1.0
References: <m2bknbi6o6.fsf@doe.com>
In-Reply-To: <m2bknbi6o6.fsf@doe.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jan 2023 10:27:21 +0100
Message-ID: <CANNYZj-SApPuQSaGEGq4YeuFcjLmjv_F_cmWNx=OYsVTmsf36Q@mail.gmail.com>
Subject: Re: [yocto] roundup feature for Wic partitions?
To: Benjamin Mordaunt <crawford.benjamin15@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 09:27:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58939

There is; the source code for wic and its tests are fully available to
you, so you are welcome to implement the missing bits and submit them
for review and inclusion.

Also, we do not have a wic maintainer.

Alex

On Sat, 7 Jan 2023 at 00:29, Benjamin Mordaunt
<crawford.benjamin15@gmail.com> wrote:
>
>
> Hi,
>
> I am trying to configure an image to conform to the VHD size alignment
> requirements of Azure. Azure requires that the filesize of a VHD be a
> multiple of 1 MiB. The '--align' option works to align the _start_ of a
> partition to a particular multiple, but I need the _end_ to be aligned.
> As a workaround, I tried:
>
> part /fake --fixed-size=0 --no-table --align=1024
>
> I figured this would create a zero-sized partition which would be
> appropriately aligned at the end of the image, but wic complains that
> zero-sized partitions are not allowed.
>
> Is there a way to achieve this, or extend the capabilities of wic to
> handle this use case?
>
> Best,
> Ben
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58932): https://lists.yoctoproject.org/g/yocto/message/58932
> Mute This Topic: https://lists.yoctoproject.org/mt/96104835/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

