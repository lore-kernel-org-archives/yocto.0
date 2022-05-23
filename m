Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53792C433EF
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 20:25:32 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.1230.1653337531316189457
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 13:25:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VDF5lMsj;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 l20-20020a17090a409400b001dd2a9d555bso353972pjg.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 13:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=2gwxskth0OatwoiSiawV9OssRzGEc3M8YpcS8UXGeI4=;
        b=VDF5lMsj4CswQnlYR6MMB9lgSIXnKiqCDzJUnMH/pcCKUaYMFRFdz1zk5unduf1naA
         pmENOrlyj8Ira1Tw8niY+HfgoWfHPDzrJfGEtY93lbXieGPOFOCvkxdtLORibCuwPWWb
         7afVPzjYORdwhe6SOCoEftLFSxpdLCN/HNan7qfm5XYeG6sHxPIE5qkFI4jcxde6Tlui
         1PiZ7GkH4sibkXaV3T5TwSzYTRHiwsnABF88kW4GHFdJam2pOkPBUJfqVdwLfEplwsuC
         8x5pLsyYOF11HFb8kKctWnbCatKLFoCbkNNxau6gyQlSqP+1iw5jd9zIPJEl70S7DlzU
         gm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2gwxskth0OatwoiSiawV9OssRzGEc3M8YpcS8UXGeI4=;
        b=ykbrNiMUGYRxRaAVxzAsHXqad+VJ6ReDnIUS0U+6vwUCu91V+QfHDQeFQANBIbfDWZ
         /GOhh0lVIHB2c5OK91Poh/Ws+o76SVGqVV/jGM6hsngZ2ofdFLzk7m/0Ruuzb03fuzwH
         xplTlhpnGhG/w4GvKrG7JfAjKJofQww7XME2++TVndj6nzNACYJjxlK6caDqzIggV1+V
         wcmco/QI58t4g6hEp9Vo+lo0pVlOQHKkuarRd+BtXaxn1HbeprC2jgjC3WsTpP87u0d4
         Q2ovuad0txO46OBSM6OP4JE6Iry6nY092436OhpJr8kxaPMiraoyzaLcCldlhphlUQ+n
         zofQ==
X-Gm-Message-State: AOAM532704LZqV6xD1Q04spj7zKFebdK/ZwQ4G5Vj+szmODJejrbKfbC
	9Dw9LKqch/TQ/EFcXh/GZe+4s8aDAwL/AA==
X-Google-Smtp-Source: 
 ABdhPJz5FtRBIEr62plGDbPuyRm9Me7FUNql6bJilSlGOFKUHDcOyBA7is8y/LN8RAz3QiJO9P9F0A==
X-Received: by 2002:a17:90a:a894:b0:1df:7577:4d3c with SMTP id
 h20-20020a17090aa89400b001df75774d3cmr762114pjq.43.1653337530303;
        Mon, 23 May 2022 13:25:30 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:22e0:d3fa:16:d603?
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 l17-20020a629111000000b0050dc76281ccsm7522213pfe.166.2022.05.23.13.25.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 13:25:29 -0700 (PDT)
Message-ID: <a8e5c569-cd60-e1a8-4de3-62375b8804cb@gmail.com>
Date: Mon, 23 May 2022 13:25:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][kirkstone][PATCH] lib-perl: prefix man
 pages to avoid conflicting with base perl
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20220520183224.2579404-1-jpuhlman@mvista.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220520183224.2579404-1-jpuhlman@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 20:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57165

merged.

thanks

On 5/20/22 11:32, Jeremy Puhlman wrote:
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
> View/Reply Online (#57148): https://lists.yoctoproject.org/g/yocto/message/57148
> Mute This Topic: https://lists.yoctoproject.org/mt/91237492/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


