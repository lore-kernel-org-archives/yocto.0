Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48BFCC433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 16:09:36 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web10.102.1635178175114810422
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 09:09:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HkswroUa;
 spf=pass (domain: gmail.com, ip: 209.85.214.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id v16so2882285ple.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 09:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=D3G1Mb4LR25UivMPWr7mKOPKpoXfXtAjePPnlKyg88Q=;
        b=HkswroUaaGB5mFFn9rliKx9fUnThsPaxKPlgr+4HGU9NEHvpHKfTEmn+uA12Y1cv7q
         TARWdbRR8AOYdqrxczz/OgmDAbjNQ12ux0KmGFQra1Q0N76QTgI6gD6miMCJBbxjEFS6
         4rW/gstonLmP0I3wZDbZUDZJhgiGtN76e34/Z7Oeh9kJ5jPt8a8QTQHaHBaK3xNMTi6y
         mKtDSjNAxiLvPwyLUsW/uTRuKYyekhtp8A1JXFGdfCR05uFOFj8LBX4W0z8cVri/2nV/
         J9FgfvEDp4xxz3mJ/at/woYxqSQunOdAzkMH/HPH2fHzPJT3ItHCdLZzG1AQP+iPbBlA
         kO8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=D3G1Mb4LR25UivMPWr7mKOPKpoXfXtAjePPnlKyg88Q=;
        b=L+oQRiFiYVjA7wk9GgMN2JLB4ZXQd3FYrqirHttUT/xtcvL1vgSrPzeMidpfjZadzx
         Dyc5EUxp8Hti89zMe9gOKPnBDFDR9PWVwN2d85/xHDeQt4Cfxwx7R2ZEcFceMmCiLxrY
         D20de/hgOs//EFYxEKUH9LlXGnQo1aEBb2IkJxC+IPM2/AL2ukqWfGPY2UqaoEY12Zvp
         pbh0bjxVkJxJVVz6jRi37IpYR33E6MHU5K4mxZMWDZYbicLrLh8tuLxkw6kwwLI8Qtn5
         vii/tVTKGFRMbXe8r1Es3WMymXVFugoA5jKAYRvllpQvf/18dnKZZqCEAdQx2SyA/QDa
         qlMA==
X-Gm-Message-State: AOAM533OR+S2RQDG/XDnTpHj6v/fvXJ8spCPI3kGHlucMMEnHC3OjsS8
	xZNtLZKh3ifS2nD1CY+fpjY=
X-Google-Smtp-Source: 
 ABdhPJym2cqzB9de9XwGom7wfRYOjbx1Mxq70Q0SiOYCMJNx3D4GA8IYEHZEoBISGv5mDr4qNeLm8w==
X-Received: by 2002:a17:90b:314c:: with SMTP id
 ip12mr11077239pjb.23.1635178174457;
        Mon, 25 Oct 2021 09:09:34 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:38ee:f227:46a3:aa85?
 ([2601:646:9200:a0f0:38ee:f227:46a3:aa85])
        by smtp.gmail.com with ESMTPSA id
 u10sm5788792pfh.49.2021.10.25.09.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 09:09:34 -0700 (PDT)
Message-ID: <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
Date: Mon, 25 Oct 2021 09:09:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.1
Subject: Re: [yocto] [hardknott][yocto-autobuilder-helper][PATCH] config.json:
 set max load in PARALLEL_MAKE
Content-Language: en-US
To: Anuj Mittal <anuj.mittal@intel.com>, yocto@lists.yoctoproject.org,
 richard.purdie@linuxfoundation.org
References: <20211025140710.5419-1-anuj.mittal@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <20211025140710.5419-1-anuj.mittal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 16:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55146



On 10/25/21 7:07 AM, Anuj Mittal wrote:
> From: Trevor Gamblin <trevor.gamblin@windriver.com>
> 
> Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
> builds based on the detected system load. With this option added, if
> either tool has at least one job running and detects that the system
> load exceeds the given value, it will wait until either the system load
> average drops below that limit, or until all other jobs are finished
> before starting additional jobs.
> 
> Since most autobuilder machines have 56 cores, this should help keep the
> system from being overloaded during builds.
> 
> Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html
> 
> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
> Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
> ---
>   config.json | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/config.json b/config.json
> index 33d36ad..d397365 100644
> --- a/config.json
> +++ b/config.json
> @@ -43,7 +43,7 @@
>               "PREMIRRORS = ''",
>               "BB_GENERATE_MIRROR_TARBALLS = '1'",
>               "BB_NUMBER_THREADS = '16'",
> -            "PARALLEL_MAKE = '-j 16'",
> +            "PARALLEL_MAKE = '-j 16 -l 52'",

We have seen a lot of hung builds when we used this option internally on 
builders, Additionally some packages like bison started to fail 
intermittently which seemed like a parallel build issue but never got to 
see why it would happen only with -l enabled.

So this change would need some testing before we make it permanent into AB

>               "XZ_MEMLIMIT = '5%'",
>               "XZ_THREADS = '8'",
>               "BB_TASK_NICE_LEVEL = '5'",
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55144): https://lists.yoctoproject.org/g/yocto/message/55144
> Mute This Topic: https://lists.yoctoproject.org/mt/86577772/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

