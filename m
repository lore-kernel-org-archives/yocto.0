Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.15782.1579885776401910163
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 09:09:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XklZOYJ2;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id bg7so91677pjb.5
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2020 09:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kFZ2h0en4bGysPnMU5qlclNeQEcLCCGet56QgHyn30c=;
        b=XklZOYJ2fHX7j7kJoLWMWQfKSfJt/ZeStmnJzLcBitcwGBjk2+GYOYLCj2t4DGU1R+
         rlTHcjUo2TVJyq7fTbmcWoxOitJWB6eUL0wRjsgXzWeaCcWIATcwMky6TcaqD0RQCsL6
         5s2fHyxY080hE7VeYybLmw+SrnyToTfuQPTCUKFYD+9/ScgYDsCRVnj4pYuHQrwypQt/
         pDphn4A4upgY0c3jcXL8zwSUp8+omK3qVc8g4voq+QBBPvrOQqDkgTARe1Iq4UoQfq2J
         NE2nyq0sRS/V2MLqmhVLMkdD4/UTdykLWHIaHx+wLE55IEvBwL6bsJLGare6guIOyPWg
         YqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=kFZ2h0en4bGysPnMU5qlclNeQEcLCCGet56QgHyn30c=;
        b=KaZ3yFL1JXJMAVDvizlVOLq+KSXA7WxEVTe7FG2t30IuSKPdK/dY+sqi7zPgVNsKmc
         vgHnI0uFfU020ncVmgVbm2iL/zk4EtUlF1X1F12+DjeJpXXktJ9+ZwZDWHL/jsk0K6ru
         2/ms1BqT54yUiZfz7Kg6ACuDw4pmig9Ln85ko0YHDnT4DBHaoLg0ri7+hxu5LoUAOQ2o
         SCQ3FdIkevMzTJpv+ZnRkbxvCvPF1XIhrsjyJ5E0+9GxKjqg/lXNrgBtxebOS/H0L6AX
         Od24gGXmGIjAmJAmlMbBdPKGc3m5En6kOOY8yI3m4c1bEjtsGRWboMrcOKi3jjmNPDPT
         U8Lw==
X-Gm-Message-State: APjAAAWmSVlImbFzNWxDQZRoEFq0P/tpUnytfYPkVqzrcQX1U1f7xXPV
	efZt1SDLE1Sz61+3o1fzpnuMkczhY2E=
X-Google-Smtp-Source: APXvYqya9ppekTO+BaZ1dFEei7HpmOQd15DICsjO3xh3XEtWJEsNQvBTW6DDCBImHVTmgeaQP4m/HQ==
X-Received: by 2002:a17:902:d711:: with SMTP id w17mr4626390ply.303.1579885775389;
        Fri, 24 Jan 2020 09:09:35 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5dac:ba30:48e4:cb20? ([2601:646:9200:4e0:5dac:ba30:48e4:cb20])
        by smtp.gmail.com with ESMTPSA id a15sm6940783pfh.169.2020.01.24.09.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 09:09:34 -0800 (PST)
Subject: Re: [yocto] #sdk Workflow for creating pull request to the layer from eSDK
To: Sathish V <sathish25071992@gmail.com>, yocto@lists.yoctoproject.org
References: <EFla.1579868839042558640.55ie@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <02ec48b9-5d82-a8ff-2e95-580349d9d5e5@gmail.com>
Date: Fri, 24 Jan 2020 09:09:34 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <EFla.1579868839042558640.55ie@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 1/24/20 4:27 AM, Sathish V wrote:
> Hi,
> 
>   I am pretty new to Yocto project. In our company we are using Yocto as 
> a common build system for our IoT projects. We are able to build Yocto 
> with adding custom layer and custom image. We are planning to use eSDK 
> in our application development workflow.
> So we need a method to create pull request to our custom layers from the 
> eSDK to the corresponding layer maintainer. Is there any standard way of 
> doing this in Yocto? Or any other method which we can add it as part of 
> our layer is also fine. Any help is appreciated. Thank you.

There are some scripts which can help e.g. [1] [2]
but it may not be used by all layer maintainers to accept changes
so I think you have to come up with some intermediate tool to identify 
and present right upstreaming process. Usually READMEs are required to 
document upstreaming process for the layer

[1] 
https://git.openembedded.org/openembedded-core/tree/scripts/create-pull-request
[2] 
https://git.openembedded.org/openembedded-core/tree/scripts/send-pull-request

> 
> Regards,
> Sathish
> 
> 
> 

