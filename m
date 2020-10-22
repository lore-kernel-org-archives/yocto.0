Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web12.65.1603387301233838177
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 10:21:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q0ZaJSgB;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id e15so1539138pfh.6
        for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2020 10:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cKuPiUnrBSc9s5I068buHac0DCcnGM8urmHjXA050Eg=;
        b=q0ZaJSgBqdCD4UfV1WnSnxRh0q03nFafLgDkSQxxnDXbpWjaoAYsCHhZbJo5MeBzqg
         7RKv5g07IdN58aE/bp3xDFWWpQ9PP9VHOnx+s5SEA32NbNIJSDgCG249nJfcp6LbrVff
         DXJFFv+WqiJja1m2eCBNWRruvP/QsU7V1zHYUdYEfXI+ZSG7Vm6V/pnzUw4krBuzEyVa
         npWtfFPSQkXukGh0ZMzodpDu2ePyz1EZWDHm8Tna/FIqRvyq7XZLjoaihIodIBIXaimR
         7+81ytIGdY8J/Zr2EWMsLdTyid8IPpPHQChOAyxpYRSsoYhCz4Uh1acnStrx9Mt1kafF
         xRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=cKuPiUnrBSc9s5I068buHac0DCcnGM8urmHjXA050Eg=;
        b=TASCjRqqO6HTP1HB4sstDWB/8qjOJfJ6LNqT6G7EzSKGGC82mglzEq7skbz6SoAa1L
         syxcSDzs/dbzxgCsGW43oN+BoU9FedB5wIjmiiulsD8dX/irTcdwRUQmdkPofVx9esOI
         Jp1Mi5EnIYRM7WcfxUk5aAiN/UH4s+dnwZy+96HjOtx50I+ppmKkbAyO3bUFBBaK4KsO
         rnNPJvxWP8VBN2PY7TnJ6eWF2GYQ2OzSK5bD1OHBG+OPqBeM6rk7MdWj8U7YjgeK+42O
         fHBfinkWVP0j7ZoNUjooyjqj+9+OygCBxNx6O3lGkls2L0QAW/FwdKZPNS+C9wmLPtfG
         cWEQ==
X-Gm-Message-State: AOAM5303DoHZbRVHPL0hTooeqIRvxXXMYtE0XUL9e20l0m+M9cxYCxLe
	pdYUGqe76V3anRVjDdt79XQ=
X-Google-Smtp-Source: ABdhPJz/W9RIjhRprEvOAE67pggY8BNfCFD4WyJfa3lpe2IJDf07f24/bi/PqsCWNdfFInKMEjrUkA==
X-Received: by 2002:a63:184:: with SMTP id 126mr2063660pgb.43.1603387300565;
        Thu, 22 Oct 2020 10:21:40 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:913f:dc36:bf23:12ab? ([2601:646:9200:4e0:913f:dc36:bf23:12ab])
        by smtp.gmail.com with ESMTPSA id ei4sm2612549pjb.4.2020.10.22.10.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 10:21:39 -0700 (PDT)
Subject: Re: [yocto] State of qemuppc64
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>,
 yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com
References: <428851cf-9d68-b608-5efd-8916c6dd621a@3mdeb.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <eb5948e3-b391-deb5-c8c6-9cfe78d8b5de@gmail.com>
Date: Thu, 22 Oct 2020 10:21:37 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <428851cf-9d68-b608-5efd-8916c6dd621a@3mdeb.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Maciej

I have set of patches that I carry to support qemuppc64

https://github.com/YoeDistro/openembedded-core/commit/885104134403da36b9ecb47ced6423e183262392

https://github.com/YoeDistro/openembedded-core/commit/aa9797636a6039ede752a57b05f839ce641e3cfc

you can plant them on top of master oe-core or poky and
try out. I haven't built it in months so maybe a bit jaded.

On 10/22/20 10:11 AM, Maciej Pijanowski wrote:
> Hello,
> 
> I need to build a development environment for ppc64 (POWER9).
> I wanted to use Yocto to build ppc64 QEMU images. I'm starting with
> big endian as I need to test out this one first.
> 
> I was surprised to see that there is no qemuppc64 target, so I have
> just started my own here [1]. I want to use the POWER9 tune and POWER9
> CPU in QEMU. It is already supported in recent QEMU as we have already
> been running some firmware images.
> 
> I've been trying to find something about qemuppc64 and Yocto and found
> just some old meta layer [2] and a thread on adding qemuppc64 support
> to the linux-yocto [3]. The last part (yocto-kernel-cache) was merged and
> is still there. There are some more unmerged patches in this regard
> though [4].
> 
> Do you know what is the status there? I would be happy to help moving it
> forward.
> 
> [1]
> https://github.com/3mdeb/meta-ppc64/blob/master/conf/machine/qemuppc64.conf
> [2] https://github.com/akuster/meta-qemu-bsps
> [3]https://www.yoctoproject.org/pipermail/linux-yocto/2014-September/003184.html
> [4]
> https://patchwork.openembedded.org/project/oe-core/patches/?submitter=11275&state=&q=ppc64&archive=both&delegate=
> 
> 
> 
> 
> 
