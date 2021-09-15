Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.2244.1631672489801074262
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 19:21:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nyfjiuYq;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id e16so1284390pfc.6
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 19:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=EZ0r1eNNuMxO8wXYZC185ipxxnhw2umUh2//XhLK0j8=;
        b=nyfjiuYqKLOiZBNvnhgEMNrqXyKjM/M22nNInnM3gSoJTgJOG7O1IEWngKwEQt3dVD
         7DAzeuFPCuLRWk/YCrSr4vPhrTD6hGz1N/mgofKb7PhZ8hyqgMHaYX6t8RQ2J07T379q
         gjsdu/xpRE1M/D9CTSeD+1DtlOdo8B8rAyYeNCFAdJuQAjZ79T02XT/UfA1Z05+4SQ06
         yNw0pTn8YW0GujFigFhXQ5ZUMyXnnC9K4tMDSu2ZbyF/1ZolJoTX32TQfa5sHKRf4NIl
         DrRNib9TGN9LrC23z7ZMAygmD0deBloSP0/cqXTig61SHIfJczH0lTnOI8PqOP05s8et
         B2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=EZ0r1eNNuMxO8wXYZC185ipxxnhw2umUh2//XhLK0j8=;
        b=MugzCUPnpqwqC38GULQA/XTP8r5LCjKbyJdeeN2DKYlZuwuYFN8dJluBcUEFmbgZeK
         lbhi4iVT0y0rd2shzNtFwnhG5O7vCtCBhiAyHB+WM9Hso1jNgQyd3bHALm3rWJAhH6uB
         O7No4k5w9M0NnB5oTVKcs0eJCAjjltBRZaOwk2fmqTeCnOLdsU3t83vElVNtYuEhrWpm
         ehEHOynfTC9JjYvOYEJNlUkBOhEyEEKe4GRc9ti7FLkc3Z4+eEWEPTKKCxu7gBlQdkTL
         tlvQeCwPPYyCHsGeMWFwn57aUTv8w68Fb1sBFyxVrjSKHYKZFdM/BAba7/GBZ5hKJUyr
         1ytw==
X-Gm-Message-State: AOAM530KJMgGBZQVrsAcbv4VRgEKpkSkzfmQ9qMIWbbFzLuUhxX3ChU6
	Moau79TS9WMzjV/ZOlLY4Bs=
X-Google-Smtp-Source: ABdhPJwJ8SXgNHo01hCWhEZ4dUvSqMU2WXCzEYSs6FeNZWflwvR+yN/VQBj8UmdNSXWOPAE5rj85cw==
X-Received: by 2002:a63:6d09:: with SMTP id i9mr18001926pgc.480.1631672489099;
        Tue, 14 Sep 2021 19:21:29 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:ddaf:c34:d8b0:df10? ([2601:646:9200:a0f0:ddaf:c34:d8b0:df10])
        by smtp.gmail.com with ESMTPSA id h15sm11628508pfo.54.2021.09.14.19.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 19:21:28 -0700 (PDT)
Message-ID: <84c9559c-7ec9-1b7c-9dc1-38ff31451e91@gmail.com>
Date: Tue, 14 Sep 2021 19:21:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.0
Subject: Re: [yocto] multilib SDK
To: Arun <arun.sivakumaran@gmail.com>, yocto@lists.yoctoproject.org
References: <CAMKF1sqbzn9C1i512H0+gu9fdvosd6A9Cfirwx3TBVWKRdorUw@mail.gmail.com>
 <13347.1631668391953983661@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <13347.1631668391953983661@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 9/14/21 6:13 PM, Arun wrote:
> The packages that SDK is trying to build are userspace packages and they 
> haven't been ported for 64-bit. There are quite a few of them and short 
> of fixing 64-bit compile issues for all of them, I am trying to see if I 
> can build SDK without these packages built for. 64-bit. The SDK users 
> will only be developing for 32-bit anyway.
> 
> 

you should check the dependencies and ensure they are multilib safe 
sometimes dependencies could be hardcodes and cross the multilib 
boundaries accidentally

> 
> 
