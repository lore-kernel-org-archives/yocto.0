Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.8519.1620877736267227343
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 20:48:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NiP7GAyJ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 51DFA38C0579
	for <yocto@yoctoproject.org>; Thu, 13 May 2021 03:48:55 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id b15so7497223plh.10
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 20:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eTwUuosG2+civyMbVw/YorRcUtkS/weUVmKkj3PI+ts=;
        b=NiP7GAyJuOqGb8IkD76Z1SEr3eRrlZxf3nyPkHHbQ/QTnB6qpaIb8IL+y+o0ooRiR2
         yO0apY0BbR+AUspK6/lzuWfj2uaOo6+/xcE7feEAqPZ/KXEtPYU4+QY8yEVo1yKQQ/jQ
         SkPpIb+QjUq+HD0J4J4sgOoAF3tdinVFL5uE6DtHCxrayIEMD6IZFSrE9pGS4JmF0VPu
         4t4QaxB1yjBv4m78HJBqZfPmZA1tNHQFGWuD14Wl9/fAmK3+jBtZ3tUbun8O2u2+7tT2
         RoRykQ8a0ASvO5YC5tTepvkCX3WbXxTi5jigdboh9+Sl7LiGYfrKHdobDjMtqPV8ea+7
         bU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=eTwUuosG2+civyMbVw/YorRcUtkS/weUVmKkj3PI+ts=;
        b=oLuT0HszfragICOQWONvag/sZ72GPTmXltmW2n3BmXBM/mzynkC+p6XQTzt044Xkl9
         oqi3lW2SbET0fKv5Bg0yZOrx3jKS5RNVQ47sMwUJ9RPvyMNAAxOntoEgYKsMCctkA2VB
         V+rbLFaG935TFFhGHrAnexaL4FlcA3YpoB0yJjxjCyCt0AMeTVihCem7SpShBE6Z0fQb
         cCSp4WXawmJ/bBeQET6b7cWdrgXno6Zsgb4FYeRX6+PhFjOkU0QZBGk7NSirrGnSEHCz
         PKeBA1PPSvfTy0s9EaPlX+N9M7gXiYWlesT5lIIF6TlMxTNjQdwLqi2R8d5AAXqX5Fj3
         zvBw==
X-Gm-Message-State: AOAM530/X3ndZYqbW1sX5Re7+SiX76ZnUMYs4w9+a62Sk5hOCxoJ//1i
	COKVjW191l6ODps9yNNS0QVgvyJf9GdWaw==
X-Google-Smtp-Source: ABdhPJzL7FKfZSM10FsBn9UqNJArFaG6Y+aBPb1hAeAU6eHYhSOKNAmkTTgmdOHL6nVH0Sy7VyCOmw==
X-Received: by 2002:a17:902:b609:b029:ec:e80d:7ebd with SMTP id b9-20020a170902b609b02900ece80d7ebdmr38557518pls.75.1620877734300;
        Wed, 12 May 2021 20:48:54 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0::c947? ([2601:646:9200:a0f0::c947])
        by smtp.gmail.com with ESMTPSA id g18sm953500pfb.178.2021.05.12.20.48.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 20:48:53 -0700 (PDT)
Subject: Re: [yocto] [meta-raspberrypi][PATCH] 99-com.rules: fix error invalid substitution type
To: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org
References: <20210513034251.9623-1-changqing.li@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <5161b49d-1893-8174-f179-99f952d23e95@gmail.com>
Date: Wed, 12 May 2021 20:48:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210513034251.9623-1-changqing.li@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/12/21 8:42 PM, Changqing Li wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> fix below error:
> /etc/udev/rules.d/99-com.rules:10 Invalid value "/bin/sh -c
> 'ALIASES=/proc/device-tree/aliases; if cmp -s $ALIASES/uart0
> $ALIASES/serial0; then echo 0;elif cmp -s $ALIASES/uart0
> $ALIASES/serial1; then echo 1; else exit 1; fi'" for PROGRAM (char 58:
> invalid substitution type)
> 

Can you create a pull request on github for this please.

> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   recipes-core/udev/udev-rules-rpi/99-com.rules | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
> index 6bf019b..ddd1e17 100644
> --- a/recipes-core/udev/udev-rules-rpi/99-com.rules
> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
> @@ -1,8 +1,8 @@
>   KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
>   	ALIASES=/proc/device-tree/aliases; \
> -	if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
> +	if cmp -s $$ALIASES/uart0 $$ALIASES/serial0; then \
>   		echo 0;\
> -	elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
> +	elif cmp -s $$ALIASES/uart0 $$ALIASES/serial1; then \
>   		echo 1; \
>   	else \
>   		exit 1; \
> @@ -11,9 +11,9 @@ KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
>   
>   KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
>   	ALIASES=/proc/device-tree/aliases; \
> -	if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
> +	if cmp -s $$ALIASES/uart1 $$ALIASES/serial0; then \
>   		echo 0; \
> -	elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
> +	elif cmp -s $$ALIASES/uart1 $$ALIASES/serial1; then \
>   		echo 1; \
>   	else \
>   		exit 1; \
> 
> 
> 
> 
> 
