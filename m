Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73F31C77B6E
	for <webhook@archiver.kernel.org>; Sun,  9 Apr 2023 16:22:34 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web10.23577.1681057347209843751
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Apr 2023 09:22:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=ceuDLrks;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id r14so28243267oiw.12
        for <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 09:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681057346; x=1683649346;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iUpGtQdpQMEgLOh+UB7Cxd4p80rxMS7KpFGcg8eQHqA=;
        b=ceuDLrkss+PyuPQeLc8SNmQyMYLwThKbEnOjGnwwy5FwDNWo8TrhfuicLYW7h1hRI/
         Q9CMTC6fcyG6Bz/8LZSRiHle5yDYZ4e3E2csww1cMfZSxZ0oezVSaPxVxwMF0TjkoQql
         GTxj0eQvAdAgY+LM59X9ECIrmWFrw1b4t8M2fA24obsDrH8pWchKs6wHtDrCfyu7yL6C
         BROo6uDEFkhXCamZaAutKZIOQwzEWVN/CfmNygs+vnPomBlHnbZCFDAb9nRsxJt/d/dd
         WKB2J82dTYIC8Q5n0cdDz5H2rf/wBmYH9Uzqp4Dzm1gE1fc6QCMZbecAxS2LC8YEjBqn
         pSUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681057346; x=1683649346;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iUpGtQdpQMEgLOh+UB7Cxd4p80rxMS7KpFGcg8eQHqA=;
        b=YXvs2aMylJdTwn1vr4/ODc6BNtPaNAOS02Z/FxvpHHfs54JtMsmhIPh0z7TFB56yqp
         8gxWVLJMCFFJTcsG1JOTeYaFgBof89UFTzO3tmbiO25uq167W5xaPvy/Kw3TeahhoNRH
         IlIN8tZA940828Shzh9mbYnc9UBCFzg7/05g5lPJA8nSCQ6tlXViFn/vN4V8L1Z83aQo
         OrpBhz/w3bsgvtWzDnGX1lNCjVfkiGG51yfi/68HbMol0R3hr5LZQJ73aPEHUINh0LB9
         5zI6Ze4CM5CQEV4/+upTs/34BsJ209GxqzAIFG1lM+orzE5stmHEKfN7catpbO7DJeTb
         8mOw==
X-Gm-Message-State: AAQBX9duqHLgbzudlZkACJc3bv4KsnAup14nK62pnCrnXStXSc1+3tIj
	JkR4i2j+8l+0fQm2KOW/wUMdTLKRxSOzjg==
X-Google-Smtp-Source: AKy350aRPhMeyTXns/wdO1NHvoj3inhEEArRYYn/cYnbZflQM/dxVhmCknHOWVrhQyk5bV7jgeVfbw==
X-Received: by 2002:a54:458a:0:b0:387:6a3b:5a86 with SMTP id z10-20020a54458a000000b003876a3b5a86mr3360948oib.28.1681057346214;
        Sun, 09 Apr 2023 09:22:26 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:47d6:87b6:cfbc:dcc5? ([2600:1700:9190:ba10:47d6:87b6:cfbc:dcc5])
        by smtp.gmail.com with ESMTPSA id z127-20020aca3385000000b00383cc29d6b2sm3547939oiz.51.2023.04.09.09.22.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 09:22:25 -0700 (PDT)
Message-ID: <688f88be-b417-d5ff-e9e4-ea678d9154c2@gmail.com>
Date: Sun, 9 Apr 2023 12:22:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-parsec][PATCH 2/2] parsec-service: fix SRC_URI hash
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20230409161619.120499-1-akuster808@gmail.com>
 <1754506B3C76E14A.21832@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <1754506B3C76E14A.21832@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 16:22:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59648

Ignore.

Found another build issus

On 4/9/23 12:16 PM, Armin Kuster via lists.yoctoproject.org wrote:
> Fixes:
> ERROR: Missing SRC_URI checksum, please add those to the recipe:
> SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   .../recipes-parsec/parsec-service/parsec-service_1.2.0.bb       | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
> index 5f4ad5b..bb78f78 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
> @@ -12,7 +12,7 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
>               file://systemd.patch \
>               file://parsec-tmpfiles.conf \
>   "
> -SRC_URI[parsec-service.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
> +SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
>   
>   PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
>   have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59647): https://lists.yoctoproject.org/g/yocto/message/59647
> Mute This Topic: https://lists.yoctoproject.org/mt/98161276/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


