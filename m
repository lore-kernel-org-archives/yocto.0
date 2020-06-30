Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.626.1593533540052290104
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 09:12:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sUaJPpVO;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id t11so4764867pfq.11
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 09:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=eUM2IaW93Ep0Cx0Re1X9Hqg/ielr4E1UPL7UPAaEmfg=;
        b=sUaJPpVOYI3sL8B40cLmGm+XnMDi70+J5LaTiNR2AGvfJDT/VFVuqhFQ+0PWbmYw2S
         QV6yCwrtz6w3HnVAfPr0C+aA9esp043KuUt1+SRumhZc6u1U3F3zYLHYRXkVGdGPMZJN
         TTAxLvGuMCBmr6NNujDSkuF8Meki1o6MSVqrm4aiNqmiuU2jYLLILZKiev/xJ9hrNXi+
         5Vn7JoqUw2+34jVSHq5pnfqj5ORi49ozrHbTdMSk7PZ72LEiYNrFyPHu326Lilv3a07R
         ixi49CVSFOSagnLf9dOUGDDz27O32pllFkEEginBtbS5NBjVEx/zUi/EXi6Sue685wbM
         syEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eUM2IaW93Ep0Cx0Re1X9Hqg/ielr4E1UPL7UPAaEmfg=;
        b=TOn9JE6QbzlfDtrVG5C0RCPfc5VLqPQExluWa4MhPDswk+T/+CKnhaIWNJ+4du6NXf
         qkYfu7ao1Ys0iezdl8j/THlJu7TA9K8uqBSIIOCWSiX5MYSoeo9sySh2MtU48zB+37iB
         Ub/LGDP/zJ0Uyr0CcTARhqBiaT+jOuR71Rlm0pInJYUr7QJQrUQOO1oaNm7QHsMrZycS
         m5h6XEEqRSlySpXqFM7z7NgHGH6Q4RvRQJNpYZTkr0VPyXLirus153kforwinILPOK/F
         yuVR4GpS4xCPKzouvP7Dow48F9y5Aq+/MBXLrI3cG0Q3qvKEC5xYfPyXcKcktO4jHSVa
         fEsA==
X-Gm-Message-State: AOAM531WFGf81DeUPM7JJF8n1qPCkfvogTUVZLuRrFjDPiCs36v0LaEp
	cx135oEQfSkdxNU9WmpgF/sDeLnlwCU=
X-Google-Smtp-Source: ABdhPJzjZIqm4YoGKOHEYHNF8+VXjTP6xL4P9b9hYpfEyfh764NOA8HVCVaCRm6EiCuadEZt+ncwIg==
X-Received: by 2002:a62:e203:: with SMTP id a3mr11956442pfi.295.1593533538941;
        Tue, 30 Jun 2020 09:12:18 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:2c51:53a1:364:7e03? ([2601:646:9200:4e0:2c51:53a1:364:7e03])
        by smtp.gmail.com with ESMTPSA id 27sm2758628pjg.19.2020.06.30.09.12.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 09:12:18 -0700 (PDT)
Subject: Re: [yocto] #yocto #python
To: yocto@lists.yoctoproject.org
References: <OUPV.1593170119040069710.fQAH@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <e957a5d1-63b3-1eea-1cd8-86a55046ef7d@gmail.com>
Date: Tue, 30 Jun 2020 09:12:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <OUPV.1593170119040069710.fQAH@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/26/20 4:15 AM, valentin.duee@weidmueller.com wrote:
> Hi,
> 
> if I try to add a layer like this:
> 
> bitbake-layers add-layer ../layers/meta-openembedded/meta-oe
> (also for other layers)
> I get following error:
> 
> The following required tools (as specified by HOSTTOOLS) appear to be 
> unavailable in PATH, please install them in order to proceed:
>    python
> 
> But I do have installed python in all possible versions. I don't know 
> what to do currently and would appreciate your help a lot. Thanks in 
> Advance.
> 

which release of yocto are you on ? secondly which OS is on the host?
you might want to install python2 perhaps on it.

> BR
> 
> 
> 
