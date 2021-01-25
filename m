Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.35905.1611578776802226348
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 04:46:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I41M7ZvC;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id h9so2070066wrr.9
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 04:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=hwp7ggrLZ2fCVYWcpSE4CZMsaIeGZ+piJaUuHdPnEQs=;
        b=I41M7ZvCQjjmA6aJmGg0ZppAIkCdiibim1/G+3GrUY141Rtx5uoNptvoGLM9fICO00
         x/OyZtN8W2UKPzFfviC0WIL0yVK0kPg8c5hK8ZfmIagFOvS572lnwsx207Bml6lFDPp1
         ke9WBZY8YIk5YgOY9CtZxM9vgg8nJxzIiHb/d1OvvzwYz3RgaipQ2RwUX/GOSi4e857o
         oAXjaRQmB1/5LBPAeecD5IpAlin7AoHXcdY/infqX38UIQQ2Tg/2xBFigHnzaH1cED2y
         ff5Xjl08wdw5I+U1F/JtaoR0xghmJ2b6AmdTeO3uo20anpuKBtHiX9P8GywOfVD9Nc2k
         PpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hwp7ggrLZ2fCVYWcpSE4CZMsaIeGZ+piJaUuHdPnEQs=;
        b=HZOInyxMHw6gtOhJrYam6zZo6BCl1soDec3f2Lldfpe67Zgi3Zvn8PfG7olD2/J1I5
         IABKHsUCbj8+6kzTjnjS4LKWAs9YH2hcwPB7qxptYB2IfrV3ovbo55C+TZV2mmOEaAlO
         nSeMjH2ITscMk1PpE2r4jSv20gdeDQH+Lm3WFk5KUZhgNKgRQ1zwal2shZelgyQI3S/S
         F62nU+1Y/AT+ktFn1zItx8r2T17Yauyt2SlmXimryeZKIi+3q43dtek5SscnCkIfOyi7
         ykvoXLQ/Xt4lLwAEpiWIBJVxj+U+k0FQR3/TW6pB3dDXs9+++G0rFAfXJP9vUQ9Q8Rnn
         VVQQ==
X-Gm-Message-State: AOAM531Zm03ip/gEY7OJhgPZZpRx3mg7SEr34ixryHe18lHC7aMxZP4C
	Lps1XXNzgpgf/QIxlNJ6YK2VF1wB3rI=
X-Google-Smtp-Source: ABdhPJxygaXuHABRe1CjaVLFiga0gDNZU7jCbMpAqejba2/J73XbqS3JY2pTV/hDsah6FR4vIDUKkQ==
X-Received: by 2002:a5d:4e89:: with SMTP id e9mr747672wru.201.1611578774794;
        Mon, 25 Jan 2021 04:46:14 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-143-170.home.otenet.gr. [2.86.143.170])
        by smtp.gmail.com with ESMTPSA id w14sm10931181wro.86.2021.01.25.04.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 04:46:14 -0800 (PST)
Subject: Re: [yocto] Points to consider while moving to new yocto versions
To: amaya jindal <amayajindal786@gmail.com>, yocto <yocto@yoctoproject.org>,
 yocto@lists.yoctoproject.org
References: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <dfbc9dbd-7fc9-ce3e-ac4e-261f1b6380e6@gmail.com>
Date: Mon, 25 Jan 2021 14:46:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

My comments are in-line

On 25/01/2021 10:07, amaya jindal wrote:
> Hi All,
> 
> We are planning to move to New yocto from current one that is krogoth 
> yocto to some updated one. 

I would consider it "best practice" to somewhat try to stay up to date 
with recent yocto versions and plan for this from the beginning of your 
project.

What I mean is to have a "stable release" and a "next release" which is 
being used in your nightly builds and tests.

This will make it significantly easier to make version upgrades.

> We are not thinking to move to gates-garth or 
> some other major release but the releases than can have easily support 
> for arm.

I am not sure what you mean by that?

Which versions make it easier/more difficult to support arm?

It's more a question of which chip/kernel/boot loader,...

> 
> Please support and help.
> 
> Points need to take care to port to new yocto version.

Ssince you use a completely outdated and end of life version[1] it might 
require quite some effort to update, but through pain we learn ;)

[1] https://wiki.yoctoproject.org/wiki/Releases

Which chip do you use?

Is it supported by an upstream kernel/boot loader?

Which (additional) layers do you use?

Are these layers supported by the same version as the Yocto version you 
want to move to?

How about your own recipes?

Are they compatible with upstream yocto?

> 
> Regards,
> Rohit

Regards,

Robert

> 
> 
> 
> 

