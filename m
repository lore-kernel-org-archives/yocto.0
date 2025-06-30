Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E896EC8302D
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 12:45:39 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.39421.1751287536373458199
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 05:45:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hO0BFKvM;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ae0d7b32322so345574566b.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 05:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751287535; x=1751892335; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wwYsmpXSV0HD47EJ9mCfA3Ehp4pCA0BQXWiEOxirPv0=;
        b=hO0BFKvMW+P/TbnQIgLAViZzFvEcP/HUZWEA5TSOYzdKbsyCrTtIn15RtzhAhPClVr
         fGI/z86F696n8QHPxRwm/0hDCRDnUdsIxe2ZAhMNQh0luAL1GBXte5EP+3U9ujiRflAv
         MyFCssycvKXf/PWq0/s4RLQi07FOugItTJlizfeh4lSu/oq47ZaFZeVrV7alDoh0hNt9
         ipwViJFMLudaj4khPU6mvaiFvV99Pv+35V5HT/7ARH2uFZ/WJn0QuvXLzDk9iaa7g1+q
         o9CEFNYxUTiNQWzjqEf1i201ynyLGju5rOCsXCis6G3kmhfBxaW2eG+VdieAO0wyqBpD
         g9mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751287535; x=1751892335;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wwYsmpXSV0HD47EJ9mCfA3Ehp4pCA0BQXWiEOxirPv0=;
        b=gjMhutZu+wGKEDr3Ka1ktRCrylsvU/mBTe7VZMCK9k5j1343IN+WRLUbz3tGvYU2Cu
         7whlpHDWVA/EIz7tiAffBbjHPaOk+0daIUbM45/wVMd2F3F0wfuBQln7xNTeSwQxA1Wk
         DEUdXUYsSIRS+plXFM8eraVpd3GuLXhhu38LnvVDd2qjpPIxwgDUFpg5UUfIM2Dy/O1a
         t16O80TeBhsX9Bbp4TWOiU5kWgEf9D1y4+XGFVSAtMFjL58RntFDwcmugkEQ9Tcl+mT3
         sI+IW9nzvfHWOb1qXHTDsSBvz3i2txexL75DANLQf+YLcMKxuHqL88uSAozOac3HyNxn
         Pu9g==
X-Forwarded-Encrypted: i=1; AJvYcCVn5DRQv2+GKlDG0TphJbH+SevuEbLFWyHF0ikQxanHi8cy1+JVNfcVLGCPOvXxelSJbdpO7A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyaU70XP6saWHZGGKLXfPFAkDNOfCXsM02Oyz72pRYKqG444ii2
	+XKOMMfIi5pHV/VSYcFKTj0SXaBjXtapQBKMTZtz6v2aBwiQSlL+p7+O
X-Gm-Gg: ASbGnctf6/Sx5WmV4BK4GUoAdlSUeWAZ4EjiFenCFbHLXixNUbKu0Udh2RA8SDQlEd9
	fmkEGICasJA0T5uheBiVl63dmFrLabl6lPPUrMGcbOUsk9EJT0a38NZluQVNrmEtNmD7s24oZHX
	iN9H6KE6E/7deIWmzQ5hNLN7NfwFINwbVv4SenDTbXSDYHVrTtroBN9UD3t4QdSWGZuQik5EyUW
	F5CgHgg6xIVGIdTvkKFJQT6dICk9DQM4SNhC6M/4YhEE480lX8cnBiagzfzpiexhrptC3udkl1H
	j2VR/RXlM9R/GJ7wLepnhJvtke5f2SoEKhkBeDy9VD1t9oZZRFFneCMT5FqgQOTC11d1JA==
X-Google-Smtp-Source: AGHT+IFL3UNkXFeKB7k8/QUdP1m+MBOkvl2LxxsrtBMYK05GwlXlaNuqPtfraC24gjtlMg7QebTROQ==
X-Received: by 2002:a17:906:528c:b0:ae0:1fdf:ea5c with SMTP id a640c23a62f3a-ae3500e055amr1074293566b.38.1751287534472;
        Mon, 30 Jun 2025 05:45:34 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353659e06sm655959266b.44.2025.06.30.05.45.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 05:45:33 -0700 (PDT)
Message-ID: <08597a1e-b181-40f1-8a36-81df66a84138@gmail.com>
Date: Mon, 30 Jun 2025 14:45:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] WiFi driver on Radxa Zero 3W #devicedriver #make
To: ferdinand0022@gmail.com, yocto@lists.yoctoproject.org
References: <467a4e38-bcb5-4b19-a0f7-70f32974bb6f@gmail.com>
 <25560.1751281011452693605@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <25560.1751281011452693605@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 12:45:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65566

On 6/30/25 12:56, ferdinand0022 via Lists.Yoctoproject.Org wrote:
> Thanks a lot for the reply. It proceeded a bit more, but now it seems
> like the compilation is not running correctly.
>
>     My edited file looks like this:
>     SUMMARY = "Aicsemi aic8800 Wi-Fi driver"
>     DESCRIPTION = "Aicsemi aic8800 Wi-Fi driver installation"
>     LICENSE = "CLOSED"
>     SRC_URI =
>     "git://github.com/radxa-pkg/aic8800.git;branch=main;protocol=https"
>     SRCREV = "ac5c387ca74e17e91d14d87cd3ba140bb21faf6e"
>     S = "${WORKDIR}/git"
>     inherit module
>
>     RPROVIDES:${PN} += "kernel-module-aic8800"
>
>
> After running the bitbake command on the module,  compilation from the
> makefile seems to show this error:
>
>      src/tools/aicrf_test/bt_test.c:1:10: fatal error: stdio.h: No
>     such file or directory
>     |     1 | #include <stdio.h>
>     |       |          ^~~~~~~~~
>     | src/tools/aicrf_test/wifi_test.c:1:10: fatal error: stdio.h: No
>     such file or directory
>     |     1 | #include <stdio.h>
>     |       |          ^~~~~~~~~
>     | compilation terminated.
>
>  
> Basically the default header files are not getting detected in the
> yocto build process. I have gcc 13.3 already installed on the build host.
> I have attached the generated logfile here.

Right, looking at the repo, the top level Makefile seems to build some
userspace testing tools. The driver makefiles seem to be in
src/SDIO/driver_fw/driver/aic8800 and
src/PCIE/driver_fw/driver/aic8800/aic8000_fdrv folders.

Pick the appropriate one, and set that as S value. E.g. for the SDIO
driver set S = "${WORKDIR}/git/src/SDIO/driver_fw/driver/aic8800".

Also, possibly you want to take a look at the Makefiles themselves, they
have a couple of hardcoded values that doesn't look very Yocto
compatible at the first sight, e.g. the SDIO driver has Ubuntu config
enabled by default, and some of the directory settings are fairly
opinionated also (e.g. KDIR is set to be on the build host).

