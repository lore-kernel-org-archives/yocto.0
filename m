Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.31076.1628817367888894670
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 18:16:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=COTH98Yt;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id bo18so13000054pjb.0
        for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 18:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IqtNX6CDX+4z1ilBiPECgkEIUyX5ZDxx8+yygZKEFcM=;
        b=COTH98YtZQ/YVT/FHdIP847SoVpg4lJrjYkknrGFypRx83aFw4N/UgA69LImRvwxB9
         xtYcAeXM0IR3YVcqNn0PBW6NjTQx7oo37ueorT0A//uEaulgUYb6PWEOoIotlb6j+0YR
         spBgGZfCXQwEw+R0WlV6mK75ZwsRTxdk+X1o4QJrMjNzdUNTkIbbaA0doZLfsDLPXzbF
         M7dSekDP2IqVKxZvaYK3bcHN/bAjXFQL8EiQ2xl7PM6N067qHcTKxiuUOEGORoy2TqvM
         0iUnqJ1pUEq2C5SFS5sAYMjHhYFm92OB2lU6GYzbWgxD2TOIPGvA62ew6wNRS6oMTBcp
         Blmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=IqtNX6CDX+4z1ilBiPECgkEIUyX5ZDxx8+yygZKEFcM=;
        b=gSsBYs1o2P4SqJnkBVUFdx+NVWxSpvgO/CczmxdbLlRJm+1Z0QR65S4KOtn22VvEoZ
         5ABnDtRiCDXz01wHfl+8fTl1xbzpgcZzNH1fgAGwy91wQ6QvLtRv1x/tbk6g+0/DFTKc
         Pb2tdalKFUJML9Fj+4b1h0zQlfZed8temXze1jlH9kjaedFIyqXxW204sfcgyPp6FZD+
         lNi/wjy9EAbNevYzcVME/6vkjTPhV2bVQVoMcv240NsAa1ReYACceZBOBPHexuqNORqT
         nC0yfxKvyIK78KFhRC8Xvgc+7ARlLOjPdjPjzdXpMJJ1w/uB5cLvwzqmzi/jJDUzdct9
         zqGw==
X-Gm-Message-State: AOAM532gJeWh13jaobiUxXFqUuZVyk1dqKC27ihTtPbq40sZI4y3FVX7
	z0S1mentrjiuQkOdWlr9bMnYChmIDCuUsQ==
X-Google-Smtp-Source: ABdhPJzg//7NyHAKwz1AFY1H7lrvGxCjH96QIPUOA500wiVswkSSyawwmtp+RF+hAcVMCseJbaz82Q==
X-Received: by 2002:a17:90a:7283:: with SMTP id e3mr728184pjg.65.1628817367013;
        Thu, 12 Aug 2021 18:16:07 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:c078:a19b:8919:aba? ([2601:646:9200:a0f0:c078:a19b:8919:aba])
        by smtp.gmail.com with ESMTPSA id t8sm85899pgh.18.2021.08.12.18.16.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 18:16:06 -0700 (PDT)
Subject: Re: [yocto] Unable to add gdbserver to the Yocto build #yocto
To: ashutosh.naik@gmail.com, yocto@lists.yoctoproject.org
References: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <6a92b219-c311-7690-e2e8-e02be225e4ec@gmail.com>
Date: Thu, 12 Aug 2021 18:16:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 8/12/21 7:28 AM, ashutosh.naik@gmail.com wrote:
> I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,
> 
>     EXTRA_IMAGE_FEATURES = "debug-tweaks tools-debug"
>     PACKAGECONFIG_remove_pn-gdb = "readline"
> 
> I also tried to add the gdbserver package explicitly by adding this to 
> conf/local.conf:
> 
>     IMAGE_INSTALL_append = " gdbserver"
> 
> However, the build failed with the following error:
> 
>     Collected errors:
>       * Solver encountered 1 problem(s):
>       * Problem 1/1:
>       *   - nothing provides gdbserver needed by
>     packagegroup-core-tools-debug-1.0-r3.all
>       *
>       * Solution 1:
>       *   - do not ask to install a package providing
>     packagegroup-core-tools-debug
> 
> Would appreciate any help, as I am struggling with this issue for over a day

whats your target architecture ? sometimes gdbserver port may not be 
available for a given arch.

> Thanks
> Ash
> 
> 
> 
> 
