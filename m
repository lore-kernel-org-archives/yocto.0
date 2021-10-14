Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0661EC433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 16:09:01 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web09.169.1634227740030950190
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:09:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S+t+jGee;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id i12so21087536wrb.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=jsOrUkm0hZd5I0DIo0FRwAwRTia069vqSoNcowOPTDU=;
        b=S+t+jGeeFQ4ptr7RL/qyftLZUhdse92d1jahfH7Kg6b169iqwcbIs6nw1xWiqqiimM
         cdtsJu4FQdKe5Ak2AtUXRltN+cVjEPRncIvIakALejf7rdiR+UzzgVlLYS0BS/l91oC+
         aikCDTzNF261QRtqgDV4cS7zPW94OPci3c/cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=jsOrUkm0hZd5I0DIo0FRwAwRTia069vqSoNcowOPTDU=;
        b=hqzIasOlaMxz07DF662jSOevX4cdaCd6tFkFNLmjT1EYTF2h65M7AKXTjMt8+iZkgD
         NIS2JA3qLEsjfW9TsVP+gqa1m3GE6i4rMgbMEi1u77ozM1EFDLj1zx9ZB5lmACXmbtJ6
         LJ+IXxpfyDyP8IsH8nUkZ2kKExw2UCqyDShu3PLVSNFunF7FAp2YNcA8fNhS6VdIQQKl
         /MUG5SFiR2spLsyEOMpJBTa11SZFEmS4J2zqgwRAX4o3FnMps5ELtn25v41Ocxml7Hrk
         vK7e++Z/AjXwZGy/+Y8TUcBPFcVb9buViluJ5BH5QQ3zuJcvEqdNHbIxd+hwfIBDNy9V
         HLeA==
X-Gm-Message-State: AOAM532tHHXka7VM2FjLbUyqHxKBOTrpcHsyZUCA0nqsYbIGVRX+YrRU
	TUJjI72zeIU4aJMbT/FSg6posQ==
X-Google-Smtp-Source: 
 ABdhPJzxcIBME22oQ6JEQQMUoLvHElwoWs/wLvPzgT58TvzMGDvhh5RSqLz0GsuzlSOh4LLyKMMCvA==
X-Received: by 2002:adf:bc4a:: with SMTP id a10mr7815666wrh.131.1634227738448;
        Thu, 14 Oct 2021 09:08:58 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:eb5c:837c:62b1:b238?
 ([2001:8b0:aba:5f3c:eb5c:837c:62b1:b238])
        by smtp.gmail.com with ESMTPSA id
 q16sm2965706wru.39.2021.10.14.09.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 09:08:58 -0700 (PDT)
Message-ID: 
 <a49f6d2eb665891e315e57b822e00672102dd36f.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper]
 scripts/collect-results: publish everything in tmp/log/oeqa/
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Thu, 14 Oct 2021 17:08:56 +0100
In-Reply-To: <20211013161839.90894-1-alex.kanavin@gmail.com>
References: <20211013161839.90894-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 16:09:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55073

On Wed, 2021-10-13 at 18:18 +0200, Alexander Kanavin wrote:
> From: Alexander Kanavin <alex@linutronix.de>
> 
> In addition to the testresult json, testimage class now also
> provides the testimage task log and qemu console output log
> which can be useful for debugging test failures or
> even checking qemu test runs when failures did not happen.
> 
> Rather than duplicate specific file/folder names, let's copy all
> that is available, and define what is published in the testimage
> class itself (with appropriate folder structure if/when needed).
> At the moment there's just three files, and they are copied into
> folders named after image names, so there's no clutter or risk
> of mixing them up with unrelated logs.
> 
> [YOCTO #14518]
> 
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  scripts/collect-results | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/collect-results b/scripts/collect-results
> index 93834d6..3663330 100755
> --- a/scripts/collect-results
> +++ b/scripts/collect-results
> @@ -3,11 +3,9 @@ WORKDIR=$1
>  DEST=$2
>  target=$3
>  
> -RESFILE=$WORKDIR/tmp/log/oeqa/testresults.json 
> -
> -if [ -e $RESFILE ]; then
> -    mkdir -p $DEST/$target
> -    cp $WORKDIR/tmp/log/oeqa/testresults.json  $DEST/$target/
> +mkdir -p $DEST
> +if [ -e $WORKDIR/tmp/log/oeqa/ ]; then
> +    cp -rf $WORKDIR/tmp/log/oeqa/ $DEST/$target
>  fi
>  

Since that build directory contains symlinks, we may need something like cp -L
here? I didn't test but I think we might run into an issue?

Cheers,

Richard


