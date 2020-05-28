Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.13029.1590675195211330167
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 07:13:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zrck3llL;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id x11so10609053plv.9
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 07:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=ulV42Vw8kvbhYrJXx8+GI2cerTqN5CEV0PfZYgbk7a4=;
        b=Zrck3llL6b0hRMkfbGCRPvJU49OrFF66oilWoXMsmrVJs7M+piVg7/lOi6q5NTw4ur
         HSn80x1OULMYE3NULXyp6oM78unjGiKgxutGe6fUIIF/XOKY0tW93vczyPa7eNZXxP6M
         l7ejwjcu7qs9EurETALW3rN1o6H9CY6hiqTU+8CzVJepxxEuwDTOT2Woomig0Ml2cZdG
         HgWXHqLNalFmRVC9evEHHOsdQ/6wt6U52xcNhCXKPJSEm0WykS3FHIH/BoQ8ZunYm0+G
         VXtJcMm3mHqFaX3pmHD56HwCFAUlH1CwGLqNd8jAvwvZrhXbOQw+8NxY3d6NBBo9tHcn
         yk1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=ulV42Vw8kvbhYrJXx8+GI2cerTqN5CEV0PfZYgbk7a4=;
        b=maEwYxno2bXmeP4yMI8ncnVEp32ddQ4S6T7HDh60qvx0ZjtbrlUOn4tWW3J7p80QSu
         EV5MHpnybx+7Jy17ICNrXf/sBPyBHdTgFPAvobwoVn6uNmB/KapFrjcJ8fPUlzzN56iI
         Dr/SIe/1J3Mj8oCzJGDTfZYO/UqB0cuKej5UnJKpyD6RyZUAu9lyxt7NNJ50E9k4qjiJ
         1JBv+ySEO9B+um9ntrZbGBbcQjhdxYd+79OrQe0+bNpmX5qQ6RqdU8Q1HDSorSzh/AFi
         93WoKVHYVjLtXbvTpg9EF8E2dt9g8x4kxnZ5pqjclcJxkwTSfXfmfkHkBRzs/+eYFoht
         5FLw==
X-Gm-Message-State: AOAM530wi98+cG+Pll2isnPFE93tP1wuYj2F4AhUDBACgmyMzN50sz0X
	bMYZXoqTtE/kw4lYC384oDs=
X-Google-Smtp-Source: ABdhPJw3s0L4D79y62XTqHRzqERbNQZeaTLW6MtKJAOmjt43tYcL3d9wTuS0lU9hykPD1HbKE2YJiQ==
X-Received: by 2002:a17:90a:9f02:: with SMTP id n2mr4221583pjp.173.1590675194615;
        Thu, 28 May 2020 07:13:14 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:34cd:9c9d:ce61:c13d? ([2601:202:4180:a5c0:34cd:9c9d:ce61:c13d])
        by smtp.gmail.com with ESMTPSA id s1sm5234756pjp.27.2020.05.28.07.13.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 07:13:13 -0700 (PDT)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
 <BY5PR11MB4037EFD510C51AFE063EAA3FE38E0@BY5PR11MB4037.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <1d21386f-63ac-2c55-c4dc-be3685bd071e@gmail.com>
Date: Thu, 28 May 2020 07:13:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <BY5PR11MB4037EFD510C51AFE063EAA3FE38E0@BY5PR11MB4037.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 5/27/20 8:34 PM, Jain, Sangeeta wrote:
> Hello All,
>
> Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.4.rc2. We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
>
> Runtime auto test for following platforms:
> 1. MinnowTurbot 32-bit
> 2. Coffee Lake
> 3. NUC 7
> 4. NUC 6
> 5. Edgerouter
> 6. MPC8315e-rdb
> 7. Beaglebone
>
> ETA for completion is Monday, June 01.

Sounds good. Thanks,

- armin
>
> Thanks,
> Sangeeta
>
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf
>> Of pokybuild@ubuntu1804-ty-1.yocto.io
>> Sent: Wednesday, 27 May, 2020 8:09 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
>> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: [yocto] QA notification for completed autobuilder build (yocto-
>> 2.7.4.rc2)
>>
>>
>> A build flagged for QA (yocto-2.7.4.rc2) was completed on the autobuilder and is
>> available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2
>>
>>
>> Build hash information:
>>
>> bitbake: 7f7126211170439ac1d7d72e980786ce0edb7bb7
>> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
>> meta-intel: 29ee4852a05931dcf856670d9d8a3c3077a40fe8
>> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
>> oecore: db3ce703d03b18e8a4120969d32ff7f344f34fe9
>> poky: f65b24e9ca0918a4ede70ea48ed8b7cc4620f07f
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>

