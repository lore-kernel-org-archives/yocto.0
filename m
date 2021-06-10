Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.37.1623339320690492208
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 08:35:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kK+a91+w;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id s14so1922165pfd.9
        for <yocto@lists.yoctoproject.org>; Thu, 10 Jun 2021 08:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G+ZYvi5iB4wrZCAAyQJbx1AG2V0Smy3lbkYFFbXN900=;
        b=kK+a91+wi431ennPkp+egyCZcIgXIkZWXUu8tEbH3HCnrb3omNaLXicoa6hI5MkJk6
         dvU8ozneyY443rFpEqISQD86+E4FYSgezGoAPPH/BbI1kA53cOgeTfD3pUseV+ygRZ5z
         Ge+7Lkhn1QDX3XkMSjRxDjT4bi8+5KUrX5ubSaJUJDLM5JUdTNi2D7T+aP9fpiddM5XD
         DOdnN+sgdbBoDREGAjdG6BD7mnqGznae7zI/v7NVxKgBuSTi8c6BDTijRNfxJ88YRq1+
         vpeu6mnWin7X4tf+H79WFEgWwPONX9RDXjg9CnCuPGM1vk+2E0coyJzGCiOdCfL1GuGp
         wOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=G+ZYvi5iB4wrZCAAyQJbx1AG2V0Smy3lbkYFFbXN900=;
        b=Z3+eoNXxpwYg0TILjCkhIKlEg9swIzNM8ZOc3TIheiyHJ79SL5vI+GdYCZkglBr99f
         sdjKYd6fdT2snQ+Ce8pU2pdsAc0E29EnOs91ZeSFMPAdyX6MOCMKGKm9Zw1A0y0Ed82+
         XJsoVw3+urhbvYnEhW9cl0s18NsAOHJfO7Uc3Uow4baQgnDe6zsqG3tfX0m/7Riepi94
         Cq3kj//0SINHwdpHsaEXGRGXYJfqGb55AufYpApfPuzbG7HHufiRI3OyjWW2CAdiX1BH
         TCfZrKejphy9lsfkW5Xi/aJY6aG0V1+Lqe+dlPBuiLWunNAH2UPc40Pa0wVt8Mt4PAjv
         mgLw==
X-Gm-Message-State: AOAM5326NRJ38NCKWXP0kVcj98jotqt1VvrJ4eOUVY3bQoDdMCDO8E+6
	r4rTESmyAjXYStu8J1AWDiFLk6OR9jH6Eg==
X-Google-Smtp-Source: ABdhPJzRbj0t5eU+cuuhczNBirN7ndy0k3uqHlZotZ75WjY9V2MyaRHYhrNqcWKxRKlnyXWG9hOnlQ==
X-Received: by 2002:a63:6547:: with SMTP id z68mr5492521pgb.341.1623339319620;
        Thu, 10 Jun 2021 08:35:19 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::b7f5? ([2601:646:9200:a0f0::b7f5])
        by smtp.gmail.com with ESMTPSA id r6sm7962920pjm.12.2021.06.10.08.35.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 08:35:19 -0700 (PDT)
Subject: Re: [yocto] Building a different GCC version in SDK vs GCC used to build the rootfs/image
To: greghwang@gmail.com, yocto@lists.yoctoproject.org
References: <n4Zy.1623337025602064118.isEa@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8500de35-ca62-b86b-bff8-b95fe9595ab2@gmail.com>
Date: Thu, 10 Jun 2021 08:35:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <n4Zy.1623337025602064118.isEa@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 6/10/21 7:57 AM, greghwang@gmail.com wrote:
> The backstory is I'm supporting a legacy system built with the Jethro 
> branch and gcc 5.x.  I'm wondering instead of upgrading the underlying 
> yocto layers to a more recent branch like Thud which supports gcc 8.2, 
> is there a way to leave the image built with gcc 5, but build a new 
> cross compiler toolchain use gcc 8.2.  The application team I'm 
> supporting really wants to use C++17 features, and is unable to with gcc 
> 5.x as their crosscompiler.  I would try to put the 2.28 glibc and 8.2 
> gcc-runtime libraries on the image and rely on forward compatibility of 
> the libs to ensure compatibility with gcc 5.  Otherwise, the image would 
> still be using gcc-5 as the compiler for all the recipes.
> 
> I did some experiments on Thud poky and was able to get a different 
> version of gcc in the toolchain by modifying 
> PREFERRED_VERSION_gcc_corss-canadian-${TRANSLATED_TARGET_ARCH}, however 
> I quickly ran into problem trying compile hello-world with g++.  It 
> looked like the compiler was trying to find its header files in
> 
> sysroots/aarch64-oe-linux/usr/include/c++/<gcc version>
> 
> but now I have a mismatched gcc version from what is on the sysroot and 
> the cross compiler can't find it's headers.
> 
> I'm wondering if forcing a different version of gcc in the SDK is even 
> feasible, or maybe I should be looking at external toolchains or some 
> other solution to support my application team's need for an upgraded 
> version of gcc.
>

I think this will be hard to support unless your applications are self 
contained and will bring its own runtime as well in that case you can 
build a SDK from newer releases which matches compiler you need and let 
them use it, if you want to mix and match then it will require a bit of 
extra work e.g. check if runtime from newer compiler will still work 
with older libs/binaries or find a way to package two versions seprately 
and ensure that existing packages on image can keep using older libs

So usually upgrading to relevant yocto release would be cleanest way to 
move forward and would be most reliable of all options but if thats not 
an option then
Perhaps upgrading compiler across the board might be better approach

> 
> 
> 
