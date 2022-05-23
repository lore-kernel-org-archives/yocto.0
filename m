Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36811C433F5
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 14:50:15 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.28536.1653317405981755628
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:50:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PSQ3JHQV;
 spf=pass (domain: gmail.com, ip: 209.85.214.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id w3so6691267plp.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=4YedP+nG8DKrb3m0rqGuGxkLQHGw5voOA2gZHFiadgk=;
        b=PSQ3JHQVCa6LrrXdlBPeJN5HwH5J4PTrs7xHv7ivDYySAvgw2LHMgrEzZ0cweRGLaI
         Wfz09nRKBXjWPsWCnxMOE9R/J4DIlN12EsFEwNOgUvO2QNOsZw4BUaXYrP5jwpPW1+PM
         p/wJvc4tgGSUi1TJuoz6zbvCS3nmGJz86Hn+1pv6EvCnutuCtH8+vifZeY8NEndUX61a
         TlvubIn6urHzpShLMIrLtkcqtehPGW+gIvRvHSJ+oggrui2XFagx/ejYZ7TYCAxiw5JY
         pZKNAKMqzNVlN5PMUpFGldGO3VSxsTf5NuHFmI3kD/FuMxn4Qy5QD53Z2a1sB+Kkn3b/
         iQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4YedP+nG8DKrb3m0rqGuGxkLQHGw5voOA2gZHFiadgk=;
        b=an3BLgWypA8rwv/sm0PkouG2SJ0AoxVkBV/UYy9Z+ETZZG7jfNJ0PZPCqbyr+1bfQ7
         ELHsTTH3YurG5hZEW+/iUnGqnMrmtS+mgVA7I6TwXQmqpp7McYYq9DovTbxQGAvmdEnf
         NLgScaOa0u947hDyhRPsgLZHejjbuTvE6k7pmyhlVv3KhbYZ3sv4FO5HTSca+8zq8itZ
         uGmGWvGCpk7eszVk8HWHAQJrNLjTy8MRhFwt/Ddb4ogCPsSs3muhFxmbMxeKApSKurAl
         ATjxEVchrG20aZL4cA1A1uyzcDzYe+C9+t52qUR8QBEyXKExEFE2GFlDfgA3u5sjCOVZ
         9Rhg==
X-Gm-Message-State: AOAM5326m4exo6ygrDLLR5ODWctNnTF7nzrhoZ0ybSlM/xCubGwJZmTR
	WvMT1TzdPRxCXSegG2wHqsfYoKV0Sj5tVg==
X-Google-Smtp-Source: 
 ABdhPJwrxytf5hKz58d8ihiiSVUd3lm48pF4eSPVIPYxLE1Uk85A+zUedlwVz29OUc3EMAUgMOWuGw==
X-Received: by 2002:a17:90b:1c87:b0:1ca:f4e:4fbe with SMTP id
 oo7-20020a17090b1c8700b001ca0f4e4fbemr27122111pjb.159.1653317405486;
        Mon, 23 May 2022 07:50:05 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:22e0:d3fa:16:d603?
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 w6-20020a17090a380600b001cd8e9ea22asm7397732pjb.52.2022.05.23.07.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 07:50:04 -0700 (PDT)
Message-ID: <1e9d88f7-708e-3497-8eb9-9f315c47a947@gmail.com>
Date: Mon, 23 May 2022 07:50:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH] lib-perl: prefix man pages to
 avoid conflicting with base perl
Content-Language: en-US
To: Jeremy Puhlman <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
References: <20220520183007.2574658-1-jpuhlman@mvista.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220520183007.2574658-1-jpuhlman@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 14:50:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57162

merged.

thanks

On 5/20/22 11:30, Jeremy Puhlman wrote:
> The following occurs when pkgs-docs added to image features.
>
> Error: Transaction test error:
>    file /usr/share/man/man3/lib.3 conflicts between attempted installs of lib-perl-doc-0.63-r0.corei7_64 and perl-doc-5.34.1-r0.corei7_64
>
> Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> ---
>   recipes-perl/perl/lib-perl_0.63.bb | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/recipes-perl/perl/lib-perl_0.63.bb b/recipes-perl/perl/lib-perl_0.63.bb
> index 4c964d5..25d0890 100644
> --- a/recipes-perl/perl/lib-perl_0.63.bb
> +++ b/recipes-perl/perl/lib-perl_0.63.bb
> @@ -26,3 +26,10 @@ do_compile() {
>   	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
>   	cpan_do_compile
>   }
> +
> +do_install:append() {
> +   # Man pages here conflict wtih the main perl documentation
> +   for page in ${D}${mandir}/man*/*; do
> +        mv $page $(dirname $page)/${BPN}-$(basename $page)
> +    done
> +}
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57147): https://lists.yoctoproject.org/g/yocto/message/57147
> Mute This Topic: https://lists.yoctoproject.org/mt/91237435/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


