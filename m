Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC8F8C433F5
	for <webhook@archiver.kernel.org>; Mon, 18 Oct 2021 18:30:16 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web11.40522.1634581814950630756
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Oct 2021 11:30:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=HSvfdgby;
 spf=pass (domain: mvista.com, ip: 209.85.210.53,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-ot1-f53.google.com with SMTP id
 x27-20020a9d459b000000b0055303520cc4so910853ote.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 18 Oct 2021 11:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=pRhOaBBpAMMIHhD0pyh1nu1mnRpPIUdjCYupGjfv7sk=;
        b=HSvfdgbyxkVvNXH/ayc/JboY/CMj3R4Na3RJCSOoJ8ghlxNJvVaVaDHt/6ft+0c9F/
         lKZTk64lPRvd23R1ay637Efe3SpfIi36uhjJH5tsGGsM2BvJkcy0u4Zu7toJCKD0S0iJ
         qJBufQz1vOSmQu8Yxk+y93ZZN35KzsIuZD7EE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pRhOaBBpAMMIHhD0pyh1nu1mnRpPIUdjCYupGjfv7sk=;
        b=8H3QGiizhgC9YZknt7D2s6liGgsblceVKVvaOJR2NFac4YtmzV0ivziRm3NrPEEDIh
         zAFiCv6TRtNSYx/Hd98QDFI9ucAldIP00rcRas0RPcwmPa7HcNPXtveqPTyjU0HbjLWr
         VATzYr9Are4wssIQXLzeNcEtQAGJJ1TgS3dtH3ggbBk5XlRgZXd7H1Ka8CW3VSSOR3Lv
         vTOr+HXjQxM9a9U5c0PaEv48R7v9YUWd/CxpmRR36hV37tQHdLJf7wDfM925A+34MQ4V
         JoNJaRhLmeHODPrsU04aEfAMLq3RjP861g9Uk71T/uxZfvlPwAfkp5BGDNCcj3UKy+gz
         19mg==
X-Gm-Message-State: AOAM532gUaMVThJhdr2TqiUFlx7MXESHB2Qupr5tV5gd1fGZxkX1UVKm
	vUxxPPn3JEUiuOrzvP7k00Lpmg==
X-Google-Smtp-Source: 
 ABdhPJxAn4oUYa2f4t9rUPWbw5NlVtDY1+vlGYYyhCl+fc8cx0dEke2PXdDsR+pOm9j3CkwAAbb+Yw==
X-Received: by 2002:a9d:4c88:: with SMTP id m8mr1235645otf.308.1634581814105;
        Mon, 18 Oct 2021 11:30:14 -0700 (PDT)
Received: from [192.168.1.23] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id k5sm1819190oil.7.2021.10.18.11.30.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 11:30:13 -0700 (PDT)
Message-ID: <46740cfc-ff0a-329d-2883-28ab249d9f1a@mvista.com>
Date: Mon, 18 Oct 2021 11:30:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [meta-cgl][PATCH] libsocket6-perl: inherit autotools-brokensep
Content-Language: en-US
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20211015060419.24336-1-yi.zhao@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20211015060419.24336-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Oct 2021 18:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55096

Merged, thanks.

On 10/14/2021 11:04 PM, Yi Zhao wrote:
> Inherit autotools-brokensep to fix the build error which is introduced
> by oe-commit:
>    commit 8e26252b45b7660c7c67c702411bdec187a76ffc
>    Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>    Date:   Sun Sep 19 16:17:31 2021 +0100
>
>      layer.conf: Extend recipes not to install without explict dependencies
>
> Fixes:
> libsocket6-perl/0.29-r2/temp/run.do_configure.27951: autoreconf: not found
> libsocket6-perl/0.29-r2/temp/run.do_configure.27951: oefatal: not found
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> index bbeab8e..9f38380 100644
> --- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> @@ -23,4 +23,4 @@ do_configure:prepend () {
>   	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --oldincludedir=${oldincludedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
>   }
>   
> -inherit cpan
> +inherit autotools-brokensep cpan


