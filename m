Return-Path: <ajlennon@dynamicdevices.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80509FD88C4
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 22:06:29 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7142.1773180386414842122
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 15:06:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices.co.uk header.s=google header.b=SsIRyfCe;
 spf=pass (domain: dynamicdevices.co.uk, ip: 209.85.128.44, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48540355459so20331535e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 15:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices.co.uk; s=google; t=1773180385; x=1773785185; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BR1GK7pEVtdE1uurEFNcdhiOn85JzWgGgTisdZ3+AXc=;
        b=SsIRyfCeA9CVeXtLo6IWClOwrQCz1eR2h6t9MBqsrw4/Bltty16UraX+gj4ghukX93
         5kNajq/fFXWKXKcEYdkyQh9pyc3JpnqdBYEubqqMMrEqi2wMyuppxzbO0qJUCzbMCgpK
         FIgNuUfnJOsb43VjFh4v3PvIxiTzuJkGPEPM823GLi9ovdtWuLWDSuL1gz7MJ1o/M99s
         wnEAEuisn665nIzimoGPTE0T45DvZkQdmDjfBxnfagpIdm9+lQtbXLNhNVoi9qClyFXH
         97a+I5OaY2WNxAG4dOIRMJhzRepIlOaWzEAq5kb6BRiCs6QgiRhpdi9uY9YtKs7t46/v
         x+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773180385; x=1773785185;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BR1GK7pEVtdE1uurEFNcdhiOn85JzWgGgTisdZ3+AXc=;
        b=UZmNvqfwu2gLsETIQrCa4tEavUGdJb7fqaCLC/EijkMxFYZgIZxOyG2HiJc0ZLqpJm
         CpbzAAQdQWfKyVjnqAwJafdLG2oKKtbthiLhKO2gvK4canSN4GyvC74v7pZTUCwdWyw1
         gsJJExQgmxaPK3v9DsgIOIzAnlQAQ8lAosrc9VMLapHoKSW6APSmFh8fNhobtR7gLJah
         wuW7/SB5eeAU+fAhVpckcEnQrwDthPKaZab0X+8TTcsk6enXkMc6khYSjlclX47AdDCF
         ozKRE6cICR892fQxnrdMlil9aFU109xPcMcL1SgGE9IbLHA1aTVsWl7W2SLS4fw+xrkj
         h+wQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmJOjTm9Z9V3D7WSdffF6ailkSqNBa/oRwwkPieq7rFyxH9c5FPCyOCTrwuk5GKjtL/jMLrw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxqAQMkZgPZWknIzr0W/C8DTXYXo1Mtx0P6HhLiPM75eFoXEX54
	FytZ7h2E95pA3YugpVQqLBk1LJF/xmuKFwvcfsfcWJRg0JxpHeVgbOj8Hc4hU+xdiys=
X-Gm-Gg: ATEYQzyrqHygAXbOeG8iHrtpcG53So3hdvYe/6lbpjKEm/J1IAWQvVAFvipkOhs2Hq7
	4sudlnu2PXvu0VngZPVuP0iYzTN9TRHObIf391uCqJulREpjY7xQhixve6Lxj/02OB65dr8ccud
	czKW2k78+C/ZRexkCCrOlZXRA2+L2ObzgDeT9jrRbg4JCMM2hmk+MvaLQyj39CXe63+OBU49iur
	x+hNH4LOixKtZ8BmnyhDqpFCfafQn8SI/4rPKPo8ehY7lVOAbGXRV79+/pfD0n3sFO12CbMg3if
	KTSiAmqUda3m6TvZfkradsQQ6vSJDMQb0KatDN6YlTxPbKOPbDsTbilYyxakbNC6bBLE8qYcYxC
	PxcNf1bR3bpYd2HW0n4JXDOoufu9aoVKDq2hoF5NNt3yOv0+aEzHcxodP9q6ef1J7I86eRoiO78
	Fb+7U2py0p7OeK+UtbmPT0VdKLLAC4in/pvi2GnNJtQ7XIrmXTagaB7suftRRBS9bPij6X1zzN1
	SCEoLY1RCHEIgJudyOuxGA8CWKLwAbp
X-Received: by 2002:a05:600c:4510:b0:485:39b9:96a1 with SMTP id 5b1f17b1804b1-4854b0fe6e6mr6076755e9.19.1773180384541;
        Tue, 10 Mar 2026 15:06:24 -0700 (PDT)
Received: from [192.168.68.138] (live-30-b2-v4wan-174414-cust740.vm29.cable.virginm.net. [82.14.134.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f821d895sm1217704f8f.33.2026.03.10.15.06.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 15:06:24 -0700 (PDT)
Message-ID: <0ce0bdc6-bbce-44f3-b010-112739b8b87d@dynamicdevices.co.uk>
Date: Tue, 10 Mar 2026 22:04:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] are there some recent examples of building .NET recipes
 for YP?
To: Josef Holzmayr <jester@theyoctojester.info>,
 yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <32336316-50a9-9193-9c85-d5e6973505c4@crashcourse.ca>
 <CAEt6Nwpi5DBYBvcWO6UTdo9YNm1oie1GVbusOSqkgkuq-LO9fQ@mail.gmail.com>
Content-Language: en-US
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <CAEt6Nwpi5DBYBvcWO6UTdo9YNm1oie1GVbusOSqkgkuq-LO9fQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 22:06:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66321


On 10/03/2026 21:28, Josef Holzmayr wrote:
> Channeling @Alex J Lennon
>
> On Tue, Mar 10, 2026 at 3:19 PM Robert P. J. Day via
> lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org>
> wrote:
>>
>>    colleague wants to add a .NET package as a (systemd) service to a YP
>> image -- google keeps promoting this 10-year-old page:
>>
>> https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.NET_applications_from_first_principles
>>
>>    does someone have a link or two to something more recent? thank you
>> kindly.
>>
>> rday

Hi folks. I felt a vibration in the force....

I continue to maintain meta-mono and you're right this desperately needs 
an update.

I guess that's on me but if you fancy collaborating it might go faster :)

Cheers,

A/

>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#66314): https://lists.yoctoproject.org/g/yocto/message/66314
>> Mute This Topic: https://lists.yoctoproject.org/mt/118241577/4689568
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoctojester.info]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

