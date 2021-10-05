Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87CA6C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 17:49:48 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.118.1633456187692695304
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 10:49:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hEGRwZLL;
 spf=pass (domain: gmail.com, ip: 209.85.215.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id q201so37266pgq.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 10:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=sMUlhA/dG31Ve+7igZ52JaHCocx+jI8BrSeoxZ1gGYE=;
        b=hEGRwZLLk/oiIQUiEgV+4z2z7F16EuUCqSkry32PdBY2ZIajnP229AGI5+53Bg2cas
         zcze1LrsT2MizCrQuYciVnt5jO+1SY7lWSYTm/YqrKCPzdpFn0HcTh07GWi8TEyHHdtp
         Ekg+ePAD2X0WOvZfdhonAKBFnnbxlXgl5JB9ilIrZ9SFzEs0nfdlt6eP7MC/0F7QdoTM
         5KrH4Qk3bKq0CMykkAsvqiaVfJSF6N7UjKQ5Kh4bFLY/zLaWqLVCWI5ISiYiBHjlfqKK
         3Ogc09tUYnZVjPOW/oZsAEgOU79Yfpsy4RMn6LG+RnWapGSJDhHE/GczqUB3E7eTgO47
         qmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=sMUlhA/dG31Ve+7igZ52JaHCocx+jI8BrSeoxZ1gGYE=;
        b=IL2IPWOgYkwRXalFaA7t9Q38x2LYQvUm8NUAhRKIv4/5wZeF5j+KJ+B3Ke3ovkpm1C
         heYJIEQPeXcjt2x7bEnT4BN3ak9I+tPh8KS6Qh9FyOfcGyqYnHKI+dsgOozgdQbk7MWF
         gXyAs05GmFX8VWdN3Dv1HEyN/ZBxuSSpc3TGupX3TH7I1ftq5l3y0GCpKzd42FJG7SeY
         BjX6ms1JgIuDxC8lVSiUXgyz09b+P3eMbEddSNOrfvIE+89Y8JlWiISI4hSt9AHAWy0S
         E7ghoA5KaTxRLrHJtcG1se+Wfidyol0rnOFrWMFEEOA3z/okd7N3PnJNuIFiIoYOKo83
         Qppw==
X-Gm-Message-State: AOAM530cyBbJlZ9BK+nPCXivDFFxLQVXpPJN3jC0b+tZN+5Cn/+gTK98
	es2fv0tJslKfUfBNYeHOFZM=
X-Google-Smtp-Source: 
 ABdhPJyU8uU5QqXGYJfa89FB9yIliZFQsmFEI9jARKQghAUrQ8Cg/E5jPudZd3vouwJSkN+efK1fdg==
X-Received: by 2002:a63:7d01:: with SMTP id y1mr16644454pgc.343.1633456186985;
        Tue, 05 Oct 2021 10:49:46 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:1dd4:bfc8:e90d:89c8?
 ([2601:646:9200:a0f0:1dd4:bfc8:e90d:89c8])
        by smtp.gmail.com with ESMTPSA id
 e7sm18198184pfc.114.2021.10.05.10.49.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 10:49:46 -0700 (PDT)
Message-ID: <3dd3c58c-aa49-f1f6-0fbb-1126ebeeb14d@gmail.com>
Date: Tue, 5 Oct 2021 10:49:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.2
Subject: Re: [yocto] file package dependency
Content-Language: en-US
To: Timur <ta@taydin.org>, yocto@lists.yoctoproject.org
References: <61fe05e9-40df-7f02-b25d-1ca5b1af61dd@taydin.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <61fe05e9-40df-7f02-b25d-1ca5b1af61dd@taydin.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 17:49:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54962



On 10/5/21 5:10 AM, Timur wrote:
> Hi, I'm building a yocto release from the thud branch. The size of the 
> OS image is very critical, so I need to remove as much as I can. Looking 
> at the dependency information, I can see that the "file" package is not 
> required by any other package, but yet it is installed. I really have to 
> remove this package because it is quite large with its magic database, 
> but I can't find who is installing it and why.
> 

I think looking into buildhistory metadata might give some hints, it 
stores the information about image to package dependencies in a dotty 
file which you can either open in a viewer or text editor and see who 
might be pulling the package which provides file utility. So firstly you 
have to find which package provides file utility which could be done via 
oe-pkg-utils tool

> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54956): https://lists.yoctoproject.org/g/yocto/message/54956
> Mute This Topic: https://lists.yoctoproject.org/mt/86091587/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

