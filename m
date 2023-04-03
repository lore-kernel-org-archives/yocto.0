Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB3AAC77B62
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 12:04:14 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.68233.1680523446133473265
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Apr 2023 05:04:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=URfLcuHb;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id k17so34395168ybm.11
        for <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 05:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680523445; x=1683115445;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gr2/NfyJuzRh3hswQ3VTThU2Fm8c54pcqrQ+YlpCybs=;
        b=URfLcuHbZwSxruTEs8ODYM11YZDwOe7M1Zwuvkyv1fHeX8nkUJ18XF8h0UMbFW7uUW
         cndVKgkffGfRuCC0mKILK+X3zmFQEFOqjY52NKa5qsW5W39/Y3YjWWoBa9pt+YLVOPWd
         Fclc11Zd8eUrdcRON29t0a0zw2BN9vWbHPZ/mGe1+X46+VETmAQAX4rbH+bIStWHQkkg
         SMfUjzdlbWvgI6TXrGt3QKMP/r8OGZXks4YpqhlT66u83P/RaNgGyLCfVzaVz11J/Ppd
         kbfMmJ1ZNvqvL2QzyoCXaaxCqj65Qk0W3FqQeKNEH8jPPo3QM2k6kSoHRkM+OpTXxCa0
         m/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680523445; x=1683115445;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gr2/NfyJuzRh3hswQ3VTThU2Fm8c54pcqrQ+YlpCybs=;
        b=fKAPfaiPXmWCK3queTsecNKurz8+DMw+MPvQudvdDt3IhZ7lHf55M/ErSdyhggs6YF
         I2l2+9NcXB95gvslZadY77SmDDvupqensvrkyCAtzyzSusuHcvMcGXxY72Gb7CMBxy3K
         /g2MTVUFwwgrX4heqUbfZp6oqQjb4TK8cHhmI4tBzyIYsftIzRAsqjaiHqc2KbiAB7jo
         Hsowhh6VASGEGBJ0v1ni8enFD4w/UjkKrHZScYmYH5Jn0qLVPHM2H9rmqGzI11w0gOzf
         lfRPq3b1djE26qs0SHepMkYndx9ZmTovTfAG080pffo5dgtE+xkzk8VhaHIhtHs+Tnx3
         q/jw==
X-Gm-Message-State: AAQBX9cKpCcSvRwj4E3PhrNIE0DqtnoVDbC12CUYjoFLCXXGY5sHxU3G
	b85Zk06pJPfgskTvEOOHuv8=
X-Google-Smtp-Source: AKy350Z8V9vsxJuJJoRSl3fsv4jzlgTt5KVu6HN87bmRDrdpttoCX0gQXEj031km8rMBxDB5wUz03A==
X-Received: by 2002:a25:dc8b:0:b0:b60:d281:de9c with SMTP id y133-20020a25dc8b000000b00b60d281de9cmr33660845ybe.44.1680523445240;
        Mon, 03 Apr 2023 05:04:05 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:5721:594d:dca6:d109? ([2600:1700:9190:ba10:5721:594d:dca6:d109])
        by smtp.gmail.com with ESMTPSA id z13-20020a25868d000000b00b7767ca748csm2485498ybk.41.2023.04.03.05.04.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 05:04:04 -0700 (PDT)
Message-ID: <7edbd5df-2794-fbb5-9617-dbce3878e5d6@gmail.com>
Date: Mon, 3 Apr 2023 08:04:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-security][PATCH v3] parsec-service: update from
 1.1.0 to 1.2.0-rc1
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <deecd5c0-3ca1-b40b-83f7-6de4fa657ba9@gmail.com>
 <24425.1680519199347121026@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <24425.1680519199347121026@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 12:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59597



On 4/3/23 6:53 AM, Anton Antonov wrote:
> On Sat, Apr 1, 2023 at 05:50 AM, Armin Kuster wrote:
>
>         parsec-service 1.1.0 fails to compile with latest tpm2-tss update
>         in meta-security:
>
>     Thanks for the update.
>     This patch is currently in a test build.
>     Just a note. If this version ends up being the official one being
>     supported in the upcoming 4.2 release, when parsec-service 1.2.0
>     official drops and is added, we will need to us "EPOCH" as I
>     believe "-rc1" being dropped will signal the version going backwards.
>
> I think Parsec would fail to be built with this patch after these 
> patches in OE-core:
>
> https://git.yoctoproject.org/poky/commit/?id=2b12c58724d250d1faf24072128e2de75dfe2c15
>
> https://git.yoctoproject.org/poky/commit/?id=4d9886e1435dba3785973cc920865f8ab67e644d
>

Yep, I am dealing with this on two other rust recipes. Fun.

-armin
>
> Updates for cargo-update-recipe-crates are under review and the 1.2.0 
> release recipe would solve the issue.
>
> Cheers,
>
> Anton
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59596): https://lists.yoctoproject.org/g/yocto/message/59596
> Mute This Topic: https://lists.yoctoproject.org/mt/97876594/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


