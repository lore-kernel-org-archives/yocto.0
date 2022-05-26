Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 044E2C433EF
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 23:10:45 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.1499.1653606641213529280
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 16:10:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GrYjfmPt;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id gz24so3099564pjb.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 16:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=JH+2zRzyscFDWNCvIi5CLYhLXWDucbWjabinVMZ0DZQ=;
        b=GrYjfmPt5L4ST5Ev4YrdctxHv3xR3FBL/v34so+AxlWpTa8E5akAHDEJl9XnYehEP8
         eAkZ1cnkHhYiEaXsG2BlfY3kF8x5EOSwWhnLoWjFaEIlw5WrgiMvCggh87U8wpshA1u+
         5sdvRDRIJZAma0kB+NXKuDVYVJHtmwpbrpTRekwn34WiAa1hziWIqtAJiwXY5OhBJmXq
         lWPZPwksq9a2uHViwNzQ50yF4vbVikaamOYUTX684JBZaC+49R4t1zs+Vv4oNTtIF8LY
         LZ7Dncvq0vKpQpBcDtWuyJRMf2kXtuDPcLgwaGm8FGh9LBCjtowZpRnBixPOa59WmEW/
         Z/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JH+2zRzyscFDWNCvIi5CLYhLXWDucbWjabinVMZ0DZQ=;
        b=an2EHKslFeH05brsZJeiX2JV2bP/+f/5G7ORvRcamc7cfPSZ+sgxi0/pGjj3PC+W+w
         h+FZwilCazAfATYP0VNCLqDkZGevLOokKmW4rtu4z83pZtmU2mNOS0EU+iKXWUNAEabP
         2Mj8zjSgYlXHjE0e37qo78NhDW+LT/zdMdYKzVCisswF5OG+4VgqDedhfe/Rvt81Bfvd
         6JyTnxeg+YzeFwKtt5j3+U8Qf/hTv1vvoNpOVE2NZ8aZ9NOZ3DKri5ML573rlkWjqluE
         DPQlrpyJdI+2XA5CQ5PczAA2Bi0AT4xLr+oHbT/L5//8Nh+1kMfdhNh+Z8AJirwv5y/C
         DOLQ==
X-Gm-Message-State: AOAM531m24yKa6CAu0ogVpB8LJKahUmCWH7z/rMLUHShi7vMEhqDjJfz
	dKQ6CbfoG9/Q1PGiBkqWzWy8OO90gxKOxg==
X-Google-Smtp-Source: 
 ABdhPJyNipWCxR/FbF9ZQWJVyZAH5tvuFIvQLA7QD80hMnev72vW2aa7UIleRDWmwJc+c3/elVZ7bA==
X-Received: by 2002:a17:903:3241:b0:163:73fb:cfaf with SMTP id
 ji1-20020a170903324100b0016373fbcfafmr6124898plb.110.1653606640762;
        Thu, 26 May 2022 16:10:40 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:c5c:7325:b02a:1f3c?
 ([2601:202:4180:a5c0:c5c:7325:b02a:1f3c])
        by smtp.gmail.com with ESMTPSA id
 g1-20020aa79dc1000000b0050dc76281c7sm1950512pfq.161.2022.05.26.16.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 16:10:40 -0700 (PDT)
Message-ID: <dfbf0bb9-2c56-5fa4-a199-373aa6548841@gmail.com>
Date: Thu, 26 May 2022 16:10:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH] Parsec-service: Fix arm32 build
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20220523120403.1680130-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220523120403.1680130-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 23:10:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57197

thanks.

merged.

On 5/23/22 05:04, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>   .../recipes-parsec/parsec-service/parsec-service_1.0.0.bb   | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> index ad7e560..84539f9 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> @@ -26,7 +26,11 @@ PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace('
>   CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
>   
>   export BINDGEN_EXTRA_CLANG_ARGS
> -BINDGEN_EXTRA_CLANG_ARGS = "--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include"
> +target = "${@d.getVar('TARGET_SYS',True).replace('-', ' ')}"
> +BINDGEN_EXTRA_CLANG_ARGS = "${@bb.utils.contains('target', 'arm', \
> +                              '--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include -mfloat-abi=hard', \
> +                              '--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include', \
> +                              d)}"
>   
>   inherit systemd
>   SYSTEMD_SERVICE:${PN} = "parsec.service"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57154): https://lists.yoctoproject.org/g/yocto/message/57154
> Mute This Topic: https://lists.yoctoproject.org/mt/91286325/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


