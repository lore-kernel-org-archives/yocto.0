Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.22521.1594741513984938584
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 08:45:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=csgRB4f3;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id d4so7761573pgk.4
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 08:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6ZTEXjUt2jkPEXkf+XeLJBPFEIaxf2CK+5u0123/c7g=;
        b=csgRB4f381UNElh9+4neQe0z/TCl5cy2xnwUM20GmQa+QchqtqB/v5LGDjkIa925rM
         ynSpbyKPU/3MbJyL4zh2UUMDe4YqzAsQ1ozdef9PK81rr8b+8D5ML6YzejlhCelYuvcS
         CzwGyD6Kl2L0hySvCaQ6uU11DVZH5hK6iBUx+GtQQeKl2KDqrUIGvNpCj5rGsTgLG35+
         ZjejVGBwQky3JY2aP6xj/zgCAzhKpdtjBLk+DZ4m49cGNKrtTlHNdbxTmqLbEhIPjUyY
         6mMYmSXlNWKIF1yhP/S3dEuzH5u40lQPRa/H1ghpphYYW4JZxKJPSh9mHpxEYs24Bov0
         C5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6ZTEXjUt2jkPEXkf+XeLJBPFEIaxf2CK+5u0123/c7g=;
        b=sVrssuAVeA1sVnwx8Zzdb+D2ACppcARRMemBWGsu6vEN0iFBedG6JIG0d2j4MY9uQU
         0VLGvnfSQQ6AGCWOpLeto8R1Z8VF4HzpaYW51YpvZp6sZycGYyEeVcXphFCQSzvOPccW
         m8hEWGNJ1v0CN8eykcgdHPPfsGup48PMb1ApDAQfI6dt5p0mGR/UJjnN3VAUr5jRVG2z
         43/aUG5wWxXE5M+leAu8fv2d0Qnra7gS741iwTSA57e02qRRCY6LPnkcrbXPhqOXsqe9
         M9hQ+MefCJOnNVtFOtynNb9FuUaKW498Z0TFAe3ADzwyMl8ioq3C4VS/9fypSAxTRnay
         tdiw==
X-Gm-Message-State: AOAM5332P72ETQoKbnAAapxZfMhA3ZjE387qrgzVvtCWyaIeR5zLQ+vL
	h4IqpDC9KDkEIgMEvO5dydRaAsNaMww=
X-Google-Smtp-Source: ABdhPJwItjunmGR+fULDckcf60H0lBvPHtaGiDCVcp2KwXrS7GGu4exVwgt8C0mPl6nwegs426GlYw==
X-Received: by 2002:a63:9d45:: with SMTP id i66mr3918334pgd.25.1594741512581;
        Tue, 14 Jul 2020 08:45:12 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ad4? ([2601:646:9200:4e0::ad4])
        by smtp.gmail.com with ESMTPSA id d25sm15556763pgn.2.2020.07.14.08.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 08:45:11 -0700 (PDT)
Subject: Re: [yocto] Linker error undefined reference to `_rtld_global_ro'
To: Robert Varga <robert.varga@getinge.com>, yocto@lists.yoctoproject.org
References: <e123353d-7215-94eb-176e-049ab759defc@gmail.com>
 <15607.1594713192924490761@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Message-ID: <faf2f2ae-5bfe-2493-1445-ebfaaafde328@gmail.com>
Date: Tue, 14 Jul 2020 08:45:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <15607.1594713192924490761@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 7/14/20 12:53 AM, Robert Varga wrote:
> Thank you very much for your response.
> 
>     it seems static apps with glibc compiled with PIE related.
> 
> I'm afraid I didn't understand (as I am new to yocto and try to
> understand it). Did you mean, the following statement in my-image.bb
> file generates the static apps which is not a good approach?
> SDKIMAGE_FEATURES_append = " staticdev-pkgs"
> 
> I introduced this statement because I got linking errors when
> compiling/linking using the SDK complaining about missing libs just like ...
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld:
> cannot find -lpthread
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld:
> cannot find -ldl
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld:
> cannot find -lstdc++
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld:
> cannot find -lm
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld:
> cannot find -lc
> collect2: error: ld returned 1 exit status
> makefile:128: recipe for target 'arm' failed
> make: *** [arm] Error 1
> 
> When using this statement (SDKIMAGE_FEATURES_append = " staticdev-pkgs")
> I can see in /opt/mydistro/1.0.0/sysroots/usr/lib many *.a files which
> are not present without this statement. But I am not sure if this
> statement is correct? Maybe there is another approach for including the
> missing libs?
> 
> And what do you mean with "PIE related"? Are you thinking of an
> Raspberri PI?
> 
>     Can you verfiy if you get same issue with aarch64 or mips ?
> 
> Also I would like to verify, but do not know how to setup for aarch64 or
> mips. Can you provide a short example?
> 
> Thank you for your support.

build SDK for arm64. e.g. MACHINE=qemuarm64 bitbake -cpopulate_sdk
core-image-sato

and install this SDK and repeat your experiment.

> 
> -- 
> 
> Rob
> 
> 
> 
