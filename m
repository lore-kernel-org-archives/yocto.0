Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE63BC61DA4
	for <webhook@archiver.kernel.org>; Sat, 11 Feb 2023 15:36:55 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web11.11330.1676129809464103438
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Feb 2023 07:36:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AuWZ1HqC;
 spf=pass (domain: gmail.com, ip: 209.85.210.54, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id g15-20020a9d6b0f000000b0068db1940216so2454637otp.5
        for <yocto@lists.yoctoproject.org>; Sat, 11 Feb 2023 07:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BUoxR74Bz4OoyUU7NpImnWW90EsSAmQKZ3/cGrG0k8o=;
        b=AuWZ1HqC+ge8RRwoEFx2vxemAMHJpeMJnKbfxhFHo15AGCrTndOHcRe3RkdCeyBxTS
         EgB2+ZF98eCvG4f4tQHYiEZi31//eKsuYJXiEHuVtnpfwCq0Kodpb+qqMSP+M+/bCOFS
         YJQ+4QrHoTtd4/GyJlLFxs8fRXygZzsxSuSjyPPIcmZ3tkqKGSmySWYmVXbMC7O2gTNt
         xrLdEdOhEfMbEmZZIyg5IIup7BrBz5iR0Uf4PGgbGqjU2L+HMwjp8C433yAxcjgpxLJa
         eFbs/9wmeAcLq9q5nobw6tQiGBXtYUWXBYksyajmLwTS1srlI7Amx9AlNkyOoxmzQHbP
         aS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BUoxR74Bz4OoyUU7NpImnWW90EsSAmQKZ3/cGrG0k8o=;
        b=Tzphut7Z00tJDdtwbaFVRwkhqYXLj2vEtJi6Vyv/qYwL1iRty4XQ/L2MR4J+ZSNPcN
         7WGRn+5wsVK6TfGniCw8jA3xWRUqzDApIRJqiHKH8MOpLRfHxEFS71RxCs6r2Q9+ICHQ
         kFcCiOH8YGekwb4FxAFmwibXreL/FnyZN8vZhWmNbUXdnKNSUS3Xcge+bRL0T8nUJAAD
         Wyzv7byQkxL2xPHpw5b/eq7NCbvQkbYygaXFE+6u6pBITeeMLuQwE08PW0w6fhK2uffh
         pUhIvYmDBvHwUwWDnxIdiQG23VoGqDBpdeav218Ny8Cdo8+LN5vG6dup3oUSRTmCiixC
         2l0Q==
X-Gm-Message-State: AO0yUKWvWRds0Hns2os9+ajN09jWdr/tNI5bpj/oCxjAjSM0cPuP6eqj
	3b5GWGHTfIElQWLEnbMRJcxI23+5J2I=
X-Google-Smtp-Source: AK7set96lwcQZuRzonKFpPJnXTX9WdRwDxvTynAJPo+SwZ/4yNSiaT+QA0CmOlWSU2LVH9PkMVy0Pw==
X-Received: by 2002:a9d:77c5:0:b0:68b:e603:5b7 with SMTP id w5-20020a9d77c5000000b0068be60305b7mr10695494otl.15.1676129808757;
        Sat, 11 Feb 2023 07:36:48 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:6c32:d739:9179:1de7? ([2600:1700:9190:ba10:6c32:d739:9179:1de7])
        by smtp.gmail.com with ESMTPSA id v26-20020a9d69da000000b0068bcd200247sm3206368oto.75.2023.02.11.07.36.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 07:36:48 -0800 (PST)
Message-ID: <0becad35-1fdf-a6f0-ed74-0a1fb051939e@gmail.com>
Date: Sat, 11 Feb 2023 10:36:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [meta-security][PATCH] dm-verity-img.bbclass: add squashfs images
Content-Language: en-US
To: =?UTF-8?Q?Maciej_Borz=c4=99cki?= <maciek@thing.com>,
 yocto@lists.yoctoproject.org
References: <d6c7ddefe6a490ce9b73c8ab42e389dc246a932f.1675261039.git.maciek@thing.com>
 <CAJgHQz1UvKLip=tr-s9tq_=7MV5vuFQdF46zGLFBRCTrZ67Qew@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <CAJgHQz1UvKLip=tr-s9tq_=7MV5vuFQdF46zGLFBRCTrZ67Qew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Feb 2023 15:36:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59212

merged.

On 2/8/23 7:06 AM, Maciej Borzęcki wrote:
> On Wed, Feb 1, 2023 at 3:17 PM Maciek Borzecki <maciek@thing.com> wrote:
>
>     Add squashfs to images supported by verity.
>
>     Signed-off-by: Maciek Borzecki <maciek@thing.com>
>     ---
>      classes/dm-verity-img.bbclass | 7 ++++++-
>      1 file changed, 6 insertions(+), 1 deletion(-)
>
>     diff --git a/classes/dm-verity-img.bbclass
>     b/classes/dm-verity-img.bbclass
>     index dd447e6..e5946bc 100644
>     --- a/classes/dm-verity-img.bbclass
>     +++ b/classes/dm-verity-img.bbclass
>     @@ -63,7 +63,12 @@ verity_setup() {
>          veritysetup
>     --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE}
>     --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 |
>     process_verity
>      }
>
>     -VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity
>     erofs.verity erofs-lz4.verity erofs-lz4hc.verity"
>     +VERITY_TYPES = " \
>     +    ext2.verity ext3.verity ext4.verity \
>     +    btrfs.verity \
>     +    erofs.verity erofs-lz4.verity erofs-lz4hc.verity \
>     +    squashfs.verity squashfs-xz.verity squashfs-lzo.verity
>     squashfs-lz4.verity squashfs-zst.verity \
>     +"
>      IMAGE_TYPES += "${VERITY_TYPES}"
>      CONVERSIONTYPES += "verity"
>      CONVERSION_CMD:verity = "verity_setup ${type}"
>     -- 
>     2.39.1
>
> Gentle ping about the patch. Wanted to resubmit this to kirkstone 
> along with a cherry-pick of 
> https://git.yoctoproject.org/meta-security/commit/classes/dm-verity-img.bbclass?id=8ca6bb86e653a332f7cb5b30babc0cd6c58769d0, 
> so I'd be thankful for any feedback.
>
> Cheers,
> Maciek


