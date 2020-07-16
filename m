Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web12.1872.1594929557319400230
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 12:59:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kgor6C1M;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id c30so6727849qka.10
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 12:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=QrRX1DyQHmLBK70jsiQ8S1wj3qDJt2app3wu8FkgUiE=;
        b=Kgor6C1MOCf43yVGB1pbo8Ip8tAMObun8qZFWfZl4O6wsDiPeVxAMiLD6RxUidjnl4
         15ElEwi6LfATyHJlJKIx7OXYYFm+MJYTDTWkOyCiI+ilKzi+85R4lmhwBdVyj+mPxg6I
         ibBkTbTz4ehOi1csAkT9oZskqdysrwoUr1JzEx/a3/SjQCVV1mJ29y6IQaVydvTZqab9
         LEdJCpGEppDdw+Wjw4GV5QU5nHm/tN0r3ZcsYvk+tYN++rfgNK1ZNC4MFTbC/ElYahAj
         VY2VbFPaFbHpXC7bL5vdKeDWMjGys7D+ITzSBz0l6hNYyZwkDYMUtURKBErbrfK5HY8X
         qedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QrRX1DyQHmLBK70jsiQ8S1wj3qDJt2app3wu8FkgUiE=;
        b=FBvs0qn/xt1GUXHa159L0cXoQ84ZNPfn4lL0S5FJy+VX8vVyLV+sxY9l2ZbGiVBbYM
         s8hoWvf1NxFryyn/ccf60sgZBZGeKBGjENobTyi2+FPG9jC3vlSdfnZj/KiPdB1v1pWi
         xQkE/UdGUhFi8WfJMim347e/XE6lWGJkYMf944EG7TWmyKhbGfOTijSD2K6fOnmwHt+/
         s/V2sWgYsGCNJCCVYAY8u+Gvu+Y3mV4jh+HIz1UjH+J8qDlHPnms/Z0kNDUalw8MCkqm
         sTZ4IL7LDpDzaB28XQ1EJoeEubEEFpzG0z1SedGHjhFJuGqm3BlAR+wzF+0Ad6j12KoV
         /jZg==
X-Gm-Message-State: AOAM532ehaSCfRFVFj1HyTVkm6lBPvc8UjBFCUt2c2ARAvkjMB60Xp6N
	rav3/ZGpc4lDZt3sr9ZGBSxi0dlKw4s=
X-Google-Smtp-Source: ABdhPJyEn55iiHOMMPI3Vss5T0T4H7WOAIZdJMTMPVSVgnEhhxcDcmrzSLM3WZJOo5XuYe2048K0/w==
X-Received: by 2002:a05:620a:1235:: with SMTP id v21mr3537212qkj.454.1594929556000;
        Thu, 16 Jul 2020 12:59:16 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:509a:f082:a7a9:78b9? ([2601:646:9200:4e0:509a:f082:a7a9:78b9])
        by smtp.gmail.com with ESMTPSA id 21sm8399676qkj.56.2020.07.16.12.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2020 12:59:14 -0700 (PDT)
Subject: Re: [yocto] Linker error undefined reference to `_rtld_global_ro'
To: Robert Varga <robert.varga@getinge.com>, yocto@lists.yoctoproject.org
References: <faf2f2ae-5bfe-2493-1445-ebfaaafde328@gmail.com>
 <11273.1594823779014710167@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <8b7bd962-4d27-501d-d72d-6c72b63b2672@gmail.com>
Date: Thu, 16 Jul 2020 12:59:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <11273.1594823779014710167@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 7/15/20 7:36 AM, Robert Varga wrote:
> Thank you for instructions...
> 
>     build SDK for arm64. e.g. MACHINE=qemuarm64 bitbake -cpopulate_sdk
>     core-image-sato
> 
> After long attempts I finally managed to create an SDK with qemuarm64. 
> However, I did not use the core-minimal-sato as suggested, but used the 
> same setup as in my-image.bb (which is based on the 
> core-image-full-cmdline).
> With this new SDK I then did the same experiment and compiled the 
> application, and it worked! There were no linker error messages.
> Now the question for me is, why did it compile with qemuarm64, but not 
> with my settings?
> Is there anything else I can do to isolate the issue?
> Thanks for your support so far.

Can you check if your glibc is compiled with --enable-static-pie ?
search for GLIBCPIE and its value, if its set to --enable-static-pie 
then disable it for arm with GLIBCPIE_arm = ""

and retry

> -- 
> 
> Rob
> 
> 
> 
