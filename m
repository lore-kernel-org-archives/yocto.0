Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web11.2734.1588881055028152945
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2020 12:50:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rd+4q/9m;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id r14so3525427pfg.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2020 12:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fvLRRiNSAR4K32FhEGFdB3H0GH8BUk6R7fBajtd4y/0=;
        b=Rd+4q/9mqDiWIYzrxfSglsCxWuLptUdia5/68HSutrPGIeEYhkxcMk96LnTrc0dZvJ
         09+rzlqP+69nTf2/vlTlHILcEc2ygjhA78D+uJomzpkAkMLYOdvz9+Dgu0CdxOPI2X43
         NiT1B1dDhl4DlJls2UkBSPr37NvNOR6Au9Bto6mmKjE1aVfy7CjMRxsZuce7egrtZVP6
         97SSNoAuXmdySyepC0bRKW8zyHneAxxUdUJN7s+euTPMNY/IKv8G5lFEnpIrbTun6ACg
         uQiZoQTXN/GV5ze/4Bw+qTAVsmQ9zGFkxpV+B1rzWMxxJNGtMYfUlf2nLX4hW2s+kXHW
         8i0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fvLRRiNSAR4K32FhEGFdB3H0GH8BUk6R7fBajtd4y/0=;
        b=GS55m8+KKPy2ay/gzizJgUYdEmkTSkUc7ttP4ayNXbgFH0xNDrLUJM7Fx68pQfpZ/A
         RlC4eDEl7qdOAn5THbnFTPYCUG4QSJ26WDUcFOzJ71l9ajqMKaKurmTKDZLXMFPGX4jm
         AcoM4JNz7zGAJClO57J0JIDVSM2CntKMuPTQUu3swzSD/VhoHXH8L96kMVk2u9SWM9ZI
         1boURT2B3aSvTaKKs33dfwnC6JPvPF1jO7eiV51CwGuIfDHOrD5KACYJzcS+UcYKikAr
         y+CnwYVWBKQeapiANd0CYZ6BkNa41QZSWuDnQi7LHPZKPodo0b4B3vkQBoa89pVf2wDd
         gS8g==
X-Gm-Message-State: AGi0PuajYR2O/OwD77oA/OdulPAZpBsuA/7VC3FeEGDOIrQkV4fmY3yf
	1UAdXDvAOIto5eEyrMDYwjdIirp294A=
X-Google-Smtp-Source: APiQypLM9B1+Z8I93cZwj5XclNlxt3ayhtN7sjDhjUH6O54jxLo6kdQ4IFtehKDFcaps+0PRQuKDmQ==
X-Received: by 2002:aa7:8f2c:: with SMTP id y12mr16375433pfr.80.1588881053670;
        Thu, 07 May 2020 12:50:53 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::2691? ([2601:646:9200:4e0::2691])
        by smtp.gmail.com with ESMTPSA id t14sm4451628pgr.61.2020.05.07.12.50.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 12:50:53 -0700 (PDT)
Subject: Re: [yocto] BSP layer for Firecracker: Sensible? Advisable? #linux #yocto
To: yocto@lists.yoctoproject.org
References: <icKq.1588569081390143515.vhG9@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Message-ID: <d067087b-78c0-5fbe-8526-746fbfb5cfb9@gmail.com>
Date: Thu, 7 May 2020 12:50:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <icKq.1588569081390143515.vhG9@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/3/20 10:11 PM, mark@taqtiqa.com wrote:
> Hi,
> I'm exploring the use of yocto to build kernels, initrd and rootfs for
> the Firecracker micro VMM.

Not sure if there is a dedicated layer for firecracker, but you can
start with QEMU/KVM which is supported and then extend/customise it

> Conseq
> 
> 
> 
