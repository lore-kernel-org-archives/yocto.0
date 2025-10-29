Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF39ACCF9EB
	for <webhook@archiver.kernel.org>; Wed, 29 Oct 2025 13:05:17 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.5700.1761743117317922516
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Oct 2025 06:05:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mSOAV9rI;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-475dbb524e4so30154465e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 Oct 2025 06:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761743116; x=1762347916; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s3zsXkVYpmmVIi0GvyMZaGNuvHftacyigAAiMFoVVwQ=;
        b=mSOAV9rIvgWBkgWs9suMxpflZ0C6nlFODjtW9ap+oNa4wiQQs4wyPcpVEmWve0hDML
         QGoB8hYbA7bLSBx16Ui6xq8MPeWls4Pm9qhI3h8FzOJxeRK0xu+I39bn3m8HFMvKas7e
         vEboObwdRob/eOZ1yDyoqF+U5QWb2xpgn3KP+P7j7vWqHhwfaSHDknbuov5n4nANvwx8
         ubPQMvOLQBdtTPkerMk9dIl5azZiV5zTnLKHa7D13dfcWJRQjWKKH6OqbBOmL8cE2I9X
         ScNBdt3GRCe2fjWViJrMZ3l4t4JVBf0jDLAHQ8aUMWMkr7qOua9om90DQEmR+R1PTgN/
         yEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761743116; x=1762347916;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s3zsXkVYpmmVIi0GvyMZaGNuvHftacyigAAiMFoVVwQ=;
        b=iCgsLYL/JdTVxCoQu3XEjv6Fn8dz2zA6bbbBmcAIAAyxsQCMBxoEIJgPm4FgIVMJVZ
         vkTAhGEhxGfl/3WIbLXUpVvN4g9d1Iak6smxfBQuVw35t1/gbFZK07cfiMhC5b4pIBK3
         JM+IuArNtUEDJftXqnDw+ClJ9lXjjfAohnuxt1ytF4M8QgToQzRxx9A2aqPxrZAYj8/Q
         S73HOnHVUHBzN9EkfVKY+miEWa/rJtaIvby+DzhTdmfLQwe5HAGERtlhZmf5lYSC0i0b
         an+ny6+f7JoLweUxGh0IsXXKRW6eCaY0wR0VDA41s1Som45W5hd3sUcDBLAKfCHXZF0I
         zh1g==
X-Gm-Message-State: AOJu0Yw90FBGVfaFTWwlqFhdSFAMRKAtxj6gdh73c8QkhG72/kiiaqV0
	mX3nuRkmslJTimXmOO85C0phnKFJaubnVNuZIVrvgpf00lAbcPNElCdGRCPa6+KT
X-Gm-Gg: ASbGncsUEXpeGq78QsgOsIdhXVaIibSKVwYpGHW6NuIGPPZfrOqopbBa2U8ZwYe6t4b
	ntPFQLujowhcH0SBp3JirBRcX6jwoGS4ooPu4zSGMlRmF0RtdFVtg/ArZ5rgFAXOpePlqFu/8Bn
	yXVcOWkANAN+F7/2HrMQGds35UxJZIk/NR3gqxeoNzuk+AAhVe8TyYP08v29de3rLhviMn3lWwS
	+mq406/rtqBroiy1GiYSWQLaVFwzosCRM4tN9VBUewuOdujeILk6zhlmlstTkWt7HAuR2o5TGQs
	5uzeSdaX0G1PsxDYCnIM2DJtyWr9ClW0G9cGhMYBn316P79J3PrIgcWjaW80jxqEDeMIJuubhyj
	WMqU1jcLTYwZC8et9g0a/r1/7GuTWZCI2lfxPU0XIBo+ShqjDhXUO9SyfqWNFgNBTssg/svsxxa
	LgZO6ZnOJy
X-Google-Smtp-Source: AGHT+IHU7sDPFWYv+p2sL60HYXJcz7JxY6ZtxBgWA64P3QyCet/SuvP4Btq3VmeAh96vHnQB6NpIpQ==
X-Received: by 2002:a05:600c:4587:b0:46e:37af:f90e with SMTP id 5b1f17b1804b1-4771e1658f5mr27218455e9.6.1761743115288;
        Wed, 29 Oct 2025 06:05:15 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e2358cdsm49291105e9.16.2025.10.29.06.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 06:05:14 -0700 (PDT)
Message-ID: <498ad45f-6a80-4d1f-bf07-92babf68e225@gmail.com>
Date: Wed, 29 Oct 2025 14:05:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: add
 meta-beagle sublayer of meta-ti to check-layer
To: yocto@lists.yoctoproject.org, denis@denix.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <18692C680F0ED8BC.31910@lists.yoctoproject.org>
 <20251028155114.GD3125@denix.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <20251028155114.GD3125@denix.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Oct 2025 13:05:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65980

On 10/28/25 16:51, Denys Dmytriyenko via lists.yoctoproject.org wrote:
> Hi Richard,
>
> I know you are overloaded with the release and getting bitbake-setup working 
> on the AB. While this change is not critical, I just wanted to make sure it's 
> in for the YP Compat v3 launch. Thanks.

Though I'm not Richard, I think for good measure maybe you want to send
this patch to the yocto-patches ML too - that's where AB patches
supposed to go according to the readme. I'd expect the chances to be
seen are better there.

>
> On Sat, Sep 27, 2025 at 11:12:20AM -0400, Denys Dmytriyenko wrote:
>> From: Denys Dmytriyenko <denys@konsulko.com>
>>
>> Also run nightly yocto-check-layer for meta-beagle sublayer of meta-ti.
>>
>> Signed-off-by: Denys Dmytriyenko <denys@konsulko.com>
>> ---
>>  config.json | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/config.json b/config.json
>> index 90cb791..ce1fdc8 100644
>> --- a/config.json
>> +++ b/config.json
>> @@ -1221,7 +1221,7 @@
>>              },
>>              "step5" : {
>>                  "shortname" : "Test meta-ti YP Compatibility",
>> -                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dependency"]
>> +                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras ../meta-ti/meta-beagle --dependency ../meta-arm --no-auto-dependency"]
>>              },
>>              "step6" : {
>>                  "shortname" : "Test meta-oe YP Compatibility",
>> -- 
>> 2.25.1
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#65979): https://lists.yoctoproject.org/g/yocto/message/65979
>> Mute This Topic: https://lists.yoctoproject.org/mt/115996150/6084445
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>


