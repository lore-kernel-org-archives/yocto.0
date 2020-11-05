Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web08.11136.1604597618291379982
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 09:33:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KZHg/iNi;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id k2so426768pjg.2
        for <yocto@lists.yoctoproject.org>; Thu, 05 Nov 2020 09:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rX0rPxxjWch9tZroSM9iFOxFomvIgUUyA7refFGqlIA=;
        b=KZHg/iNiezePEbnR3x9Fl/3hRyY4pI+r0e93y0KbPQmjhtgTxOLIpuNvtUpReObkFI
         LqgE3NUi6orK/RFh9i92WclZNJvSgO0ldgbA59CpPz6d5kY1WT4HJf4CH0OfvvaeF1w5
         YQ0b5o6hJaQXwTct2sYLadi8tf3S5LstsPnEyZRgQwXf4f2r1i9N7BIUF9M+GFfvPGlK
         inQJbkgdg+kiUT98w4G0MyUPzs1auN3eAl2g4Wv0TwcRwefQXzz4OGB0wDcg7jlgvHOe
         M7/1MmbQQIPwe/n3TWXvC9deoKePZdmimmnyhPfvq7DhRIjRMvJqx1G/iGU3XrlwxFP4
         N8fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=rX0rPxxjWch9tZroSM9iFOxFomvIgUUyA7refFGqlIA=;
        b=plcZyn/aCF0BvjYuu4TO0L+aMEau+joMKN1tivXIBojgucxCNVB9IJNyO6xMRIE/9T
         cSiSAIDe4WyXGrxgGpnjj8v8Ez9ccr0kSEpcacRl04DX6dlaipLVrb6PaVrSysiM0HTS
         bFwH4Y/PoGAmrnuC0W6RIG2oedt59NWMqVrwBLAV2ayUl3wu+1JLZcpWjM6xszte5Mp9
         NwJ0mdCt+uFHInTRrbYN3sui3Kzfg3FmBL4Td8PxbOjebndRIyuHzNFWVv9r3jwbesb3
         SMLOakhns15ucTVYtcaCpYIXk6K22hMU7ZBGRpKlSYNFkHfodggHfj6lBNDd0EzfPY09
         WJcg==
X-Gm-Message-State: AOAM5313+6frvdh8bA2p8rf31mpMQ/GWRvkeGBlpffliifABQ/Ej9OWB
	sFIBKAardHSrqXOfTK+KgUOdppp5Giw8Ew==
X-Google-Smtp-Source: ABdhPJwm0KOk/fOCW+HqOSngOQzyo4z6kXZitfTvDANDyN9jyTXYr8HEEKm+z5uygdpC9B5gFh98UA==
X-Received: by 2002:a17:90a:474b:: with SMTP id y11mr3421044pjg.114.1604597617496;
        Thu, 05 Nov 2020 09:33:37 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:6955:62e2:f0f4:7e8d? ([2601:646:9200:4e0:6955:62e2:f0f4:7e8d])
        by smtp.gmail.com with ESMTPSA id n5sm2964659pgm.82.2020.11.05.09.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 09:33:36 -0800 (PST)
Subject: Re: [yocto] #yocto overriding a task in a recipe
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.16449EFACAB396B5.26023@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <a51177de-9356-86a5-307b-6adabc0d1c85@gmail.com>
Date: Thu, 5 Nov 2020 09:33:35 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.16449EFACAB396B5.26023@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 11/5/20 4:13 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> If a recipe has a task “do_something() {…stuff…}”, and for some reason I 
> do not want that task to execute its steps, but a different series of 
> steps, can I over-ride the task from a .bbapend by supplying the same 
> routine with different steps (“do_something() {…new stuff…}”) ?
> 

it depends, if the task is having appends etc. they will still be 
applied. but main task you can override.

> Thanks,
> 
> Steve
> 
> 
> 
> 
> 
