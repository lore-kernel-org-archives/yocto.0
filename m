Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web12.7978.1590591785258042024
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 08:03:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nSpXRBKt;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id p30so11850468pgl.11
        for <yocto@lists.yoctoproject.org>; Wed, 27 May 2020 08:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=k0jvb45jsE9QLNZ825fBhWsuhMOkPgv1lRZBjGY5Qkw=;
        b=nSpXRBKt4vP7xDbvIcp/0wTqC/DG9Ws5h27YBLaucACV3MTxBAI63Tcjwwxj7j31wI
         L0FceOYrxFUZVSlJ/99U3qxa3wQZLeVRA4J6d1NAgAO4TE2zt4aBILM0lMdSMy9c6PrE
         mg8hRqGOLo5w70m0CgHFDYcQ0fquprl0shG0/Hf9PaCAj/933elCZWPyR8WoggtBzr5U
         EEjdzNvvxLrmd8/hUH1M2DccgqtyA1DD+tZc26fUHr4ERWkQ60FxjAzV2bsLggBRRLPx
         WX++RR4uPlB7vxTaiO4Mc9K3vJAj5rrUUi4q8zoKOZGRRfduOhN3I0jaz9T3PnT1F5VT
         egkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=k0jvb45jsE9QLNZ825fBhWsuhMOkPgv1lRZBjGY5Qkw=;
        b=EbqGJaWQt/ACgp1LDptBGUgaTfIHLwb4Zy7U+dx69Q6jMUUZGSKo6WiwPslvHkvKJu
         CVk8C7fgLnnv7uyFnelnkeMatts/1jjfgAWx7lAYT608tirI5abF1ERGoKUixOfWh8MZ
         2wZcnEyoZeG4X/ag1Ju2jEU6kwqXMXSHlC9E7Fp5N4SOtC7vauqWQJCTAHVIYI/ts2tK
         WUeP9j0k6jSVDvXMy2yco55R49dU9DCwa27QU9ujud4c6hJr9t55wKIgHp8jZrFfF0Ij
         HSs87gYbdQgH0j4oVhMZHEdgCLBtiKhImR3TW33UAefkjdGrScQbgN9AJEnbHDBjRcop
         uFOg==
X-Gm-Message-State: AOAM530BADfjK3dwSPCErZLc7nT9dw+dcu6hw70WJkilpgygrA5IYtLG
	7fBuMwZoxtCZaQp6YS6xfBI=
X-Google-Smtp-Source: ABdhPJzktX+3+CIhLlmVZWyp5cLMLlCPgzgx0XU7JDN6pghY8Xq97+xe7+EL4d8cFngARLXTWf8qVg==
X-Received: by 2002:aa7:9510:: with SMTP id b16mr4396578pfp.265.1590591782748;
        Wed, 27 May 2020 08:03:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:34cd:9c9d:ce61:c13d? ([2601:202:4180:a5c0:34cd:9c9d:ce61:c13d])
        by smtp.gmail.com with ESMTPSA id mu17sm2880251pjb.53.2020.05.27.08.03.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 08:03:01 -0700 (PDT)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
To: "Mills, William" <wmills@ti.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "apoorv.sangal@intel.com" <apoorv.sangal@intel.com>,
 "ee.peng.yeoh@intel.com" <ee.peng.yeoh@intel.com>,
 "aaron.chun.yew.chan@intel.com" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 "sangeeta.jain@intel.com" <sangeeta.jain@intel.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
 <615783cf129245af8973e3376b06f3bc@ti.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <3b138784-ba4a-1283-4f61-09b899c8635f@gmail.com>
Date: Wed, 27 May 2020 08:02:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <615783cf129245af8973e3376b06f3bc@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 5/27/20 5:31 AM, Mills, William wrote:
> In a script, how would I download all the files in this dir:
>
> https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2/machines/beaglebone-yocto/
>
> I see no global md5sum (or sha256sum etc) file in the tree anywhere.
>
> The names are cut off in the default html list format so screen scrapping won't work.  Is there an automated way to request a better format?  WebDav? Am I missing something obvious?

I believe its a known  issue on the web site.  Maybe a having a defect
opened so we can find someone to work on it.

- armin
>
> Thanks,
> Bill
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On Behalf Of pokybuild@ubuntu1804-ty-1.yocto.io
> Sent: Wednesday, May 27, 2020 8:09 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; apoorv.sangal@intel.com; ee.peng.yeoh@intel.com; aaron.chun.yew.chan@intel.com; richard.purdie@linuxfoundation.org; akuster808@gmail.com; sjolley.yp.pm@gmail.com; sangeeta.jain@intel.com
> Subject: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
>
>
> A build flagged for QA (yocto-2.7.4.rc2) was completed on the autobuilder and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2
>
>
> Build hash information: 
>
> bitbake: 7f7126211170439ac1d7d72e980786ce0edb7bb7
> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
> meta-intel: 29ee4852a05931dcf856670d9d8a3c3077a40fe8
> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> oecore: db3ce703d03b18e8a4120969d32ff7f344f34fe9
> poky: f65b24e9ca0918a4ede70ea48ed8b7cc4620f07f
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>  

