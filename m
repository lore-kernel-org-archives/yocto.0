Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0026BC4332F
	for <webhook@archiver.kernel.org>; Sat, 24 Dec 2022 19:17:27 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.103908.1671909440713281486
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Dec 2022 11:17:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=NSzvTljB;
 spf=pass (domain: mistywest.com, ip: 209.85.216.45, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f45.google.com with SMTP id gt4so7669032pjb.1
        for <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 11:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=09RjGlQfqhvkAFYLwwP9/KwluS7aD3n1n+cmKSIIlpg=;
        b=NSzvTljBmFZllrjmsfoVyxbcMOBOxnLb5skllDJRMqI8iiQExZAOwb05XJAyklpN4L
         C0+KzfLf0O4OYRmQFc2wZ6jfbWwguOt37W1EvmK/RekwFS/EIOnLozk16KvW44TlMW6h
         dc1f3XIOPvifNUpTF6yFI2aRc9a0XOUU3nH/IRYeUBaO1lh7b6ngT6wJkXWwXqc6tkP/
         4HfZD+hc1/WIJj3+A1HpyoGsQosFjWvCQlEDhKUZXUlCRPobAtEFrbxnod0uPN4y0MXZ
         +Ue6Rsz0DsDbOCxRfdRJzaLCG6FAi00fLbRzV2P/SDZWD7+SKAPGriHQRmuSwXZtOp+h
         vyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09RjGlQfqhvkAFYLwwP9/KwluS7aD3n1n+cmKSIIlpg=;
        b=cpxycJjrFVhv9EmdopT4buH2j8tUApXA0PpzGjSkLoZWeiy+/5uDqfO4Xsy+zg7ExE
         nCDAB7K+hatei0TK/4fhU5Be+hps4qaJSd8Osb4QmW1UJicXrCS3uwqT9AKGWrzsWdde
         HY7Yzv7voAWGffX/cr9WE+sUSU56kn1nHuX+Hb0Sx4BiGzL79RXUiTkfx9M2X/XGEJe+
         nXfbzpiSLYXHe0HXKzd+kz/tgBn9uQ240rD80uPjfu2bx9+3KYvm17QX1TNxH2DalZjd
         +XLMkuunOeALltt6io9uU51zfLNTUsrYCiv8SB2645G1tkGtxBPkqN+jp3MMhaj0xFlw
         pdkg==
X-Gm-Message-State: AFqh2krB18C6w47mxqFfba0eEQ4w5rSbZUc0yZ5qykV3PWRYp+JtVShe
	kqnXUEDAsnE6iH++99nUHYDssQ==
X-Google-Smtp-Source: AMrXdXt0VsXNmfD8ePURH5TA339ig45fXvQKdW6Zkr2xnid4/n1foMGGC0+ZInAbFY2+bOIWf4OmqA==
X-Received: by 2002:a17:902:ec89:b0:18b:ed3f:c6ca with SMTP id x9-20020a170902ec8900b0018bed3fc6camr20485183plg.12.1671909440109;
        Sat, 24 Dec 2022 11:17:20 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id h13-20020a170902680d00b00190eb20377bsm1073194plk.189.2022.12.24.11.17.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 11:17:19 -0800 (PST)
Message-ID: <2b0d1f55-d4a1-cd28-908f-7d19e700bbfa@mistywest.com>
Date: Sat, 24 Dec 2022 11:17:18 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [yocto] lsusb
Content-Language: en-US
To: Markus Volk <f_l_k@t-online.de>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
 <CAMKF1sqUTzOykipWXr7OGyu5TeEueif57_1z8EBUX-MDEetiSA@mail.gmail.com>
 <ebad1d85-062c-9e89-12ef-4cab2b58b1ec@mistywest.com>
 <X8MENR.4MKC85CKXZNY@t-online.de>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <X8MENR.4MKC85CKXZNY@t-online.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 19:17:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58862

On 2022-12-24 08:38, Markus Volk wrote:
> Am Sa, 24. Dez 2022 um 08:34:49 -0800 schrieb Mistyron 
> <ron.eggler@mistywest.com>:
>> $ grep usb path/to/package.manifest   libusb-1.0-0   usbutils   
>> usbutils-python
>
> lsusb is part of usbutils, so it is not explicitly listed, but should 
> be included in your image
Oh, I think the cleanall didn't wipe the cache sufficiently, after I 
deleted contents in sstate-cache/ I get the following:
$ tar -tvf path/to/myimage-20221224185313.rootfs.tar.gz  | grep lsusb
lrwxrwxrwx 0/0               0 2018-03-09 04:34 ./usr/bin/lsusb -> 
/usr/bin/lsusb.usbutils
-rwxr-xr-x 0/0           14266 2018-03-09 04:34 ./usr/bin/lsusb.py
-rwxr-xr-x 0/0          247976 2018-03-09 04:34 ./usr/bin/lsusb.usbutils
-rw-r--r-- 0/0              43 2018-03-09 04:34 
./usr/lib/opkg/alternatives/lsusb

I would expect "$ lsusb" to work now when I copy this to my board 
(cannot est right now)

the package.manifest however still only lists:

libusb-1.0-0
usbutils
usbutils-python


