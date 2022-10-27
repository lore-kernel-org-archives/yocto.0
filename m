Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5058FA3740
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 21:20:40 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web08.2976.1666905632274629844
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 14:20:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=ojQzqjbw;
 spf=pass (domain: mistywest.com, ip: 209.85.215.171, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pg1-f171.google.com with SMTP id 78so2841939pgb.13
        for <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 14:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IXZXq2wz78AO6wlzT/ax/MKth3dG0D/CwbSsyh5Y+h0=;
        b=ojQzqjbwSHo5MHmwAZkd9hIpN/Lnqgh840VV6XNZFThMZR5YBVObIL+Kk/nqrjyv1+
         dOHgoSp/h++v5ywbspsfPzJ8nBoRSVL3w54zmRqsUQ6J56wRR74nyAE7bGxjDr+U5ptE
         h7SNHkRYbioKva6lYtTH3GCiY+bRzxvRlcdaMr7XwEjqKAKBPSfrIKvbg4oboujwMPMD
         y/f/Q1im9sMvKM9FuUu6FJkEfPzF4PrlzW9jqqI9KAb2I1O/qCI8lewzRzjwISZv1EOv
         otvNIe34KuUIUsoBRqquJvzjYo7Gnp8WjtFffofCchitSBByzjRKCiZ3hCTr05knLGlk
         UWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IXZXq2wz78AO6wlzT/ax/MKth3dG0D/CwbSsyh5Y+h0=;
        b=rZB6Wxqwu494arudvDiRaLhMtqQlJZOcxK4fsYEBht157uDI4SVMWw+6moQI7a7OJg
         gX/qVSTTGKlcETFlf1mF15cYRBRhoPixnW0RzGyyrYsckdExD0Fo3BdkgPU1tPPMJdQA
         2J/MphLAY7mYgKxbJyHIcGlggrIQcFe9cDuFBRrG9/WHPJEUZgSV1OJCsjS5PdK+/nrQ
         NEmkfDF5TuFIgh7UHkALzExZdtEwXUHWHicxZ91LByymM4YZgbzJ4d5tUPfLaMSeRr6W
         qnkS2gvDySkg6UwEkV1i2045j9ykyzDZ4uWIV8v9bOIwHhNSoAimLdDxXeEqFyeoKe/w
         BUUA==
X-Gm-Message-State: ACrzQf1UEJORynrHKc48ZWGOUcqbUTHOlN1NAGSrF8ZU3CA3rySJEaSE
	ZGdDxBC8UO8z868kCgxrk7Vt6w==
X-Google-Smtp-Source: AMsMyM7X/8arIstkreZHkt4G2ZfJ9Dd2XqojxcUE2xxQfcXFcTHhsHlXqMap812g/o6spDGh8fBSDw==
X-Received: by 2002:a63:1b0f:0:b0:46b:910:6cd9 with SMTP id b15-20020a631b0f000000b0046b09106cd9mr43814514pgb.5.1666905631272;
        Thu, 27 Oct 2022 14:20:31 -0700 (PDT)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id h187-20020a62dec4000000b0056ba7ce4d5asm1589646pfg.52.2022.10.27.14.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 14:20:30 -0700 (PDT)
Message-ID: <bd56c331-c507-b160-5538-19b0bcd4a227@mistywest.com>
Date: Thu, 27 Oct 2022 14:20:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [yocto] patching of device tree from layer
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
References: <nSWO.1666832391012021941.SCBQ@lists.yoctoproject.org>
 <133de83c-2697-fcc0-9b07-803f2d6eb4a7@ibeeto.com>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <133de83c-2697-fcc0-9b07-803f2d6eb4a7@ibeeto.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 21:20:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58429

On 2022-10-27 12:00, Rudolf J Streif wrote:
> Ron,
>
> On 10/26/22 17:59, ron.eggler@mistywest.com wrote:
>>
>> Hi,
>>
>> I'm new here and relatively new to working with Yocto (creating my 
>> own layers anyways). I'm working on developing a SOM platform based 
>> on Renesas RZ series of MPUs.
>>
> Welcome. When asking a question on a mailing list it is always 
> advisable to put all relevant information pertaining to the question 
> into the email and be specific about what you think the problem is. It 
> alleviates people from having to collect additional data to understand 
> the problem.

Thanks and yes makes sense, I'll do my best!

>>
>> I've followed the guide on Digikey by Shawn Hymel to learn about 
>> device tree patching 
>> (https://www.digikey.ca/en/maker/projects/intro-to-embedded-linux-part-5-how-to-enable-i2c-in-the-yocto-project/6843bbf9a83c4c96888fccada1e7aedf). 
>> I assume many of you know about it as well.
>>
> Not necessarily. There are so many different devices and there's 
> probably nobody who knows them all. :)

Yes, I see my statement was not clear, I referred to the tutorial but 
you're right, nobody knows them all!

>>
>> It does a good job in describing how to add changes in a dts file. In 
>> the example, a i2c5 node is added in the dts, overwriting what had 
>> been defined in the original dtsi file and I'm doubting the 
>> cleanliness of it.
>>
> It is good practice to override definitions from a dtsi in a dts. That 
> is the entire idea of the device tree include file which is what the 
> 'i' suggests. The idea is to use dtsi to define device nodes that are 
> shared between different platforms. Some of them are always enabled 
> since all platforms use them. Others, like the i2c bus in question, 
> may only be used on some devices and hence they are disabled. Some 
> nodes might only be templates and the platform's dts needs to complete 
> them if they are used.
>
> In this particular case it would have been better to simply add
>
> &i2c5 {
>    status = "ok";
> };
>
> to the dts as the other definitions were already present as such in 
> the dtsi stm32mp15xx-dkx.dtsi

Oh yeah, that makes better sense now!

>
>
>> Would it not be better, to patch the node in the dtsi file and add 
>> the required changes there instead of adding them to the dts file 
>> essentially overwriting what was set previously? I imagine this will 
>> essentially lead to two nodes being defined with the same name, the 
>> latter just overwriting the former, is that so?
>>
> Nope, that is the idea of using the & before the device node name. All 
> of the &'s and the node's root definition will be merged by the device 
> tree compiler into the resulting device node definition. In this case 
> the i2c5 node's root definition is in stm32mp151.dtsi which is 
> included by stm32mp153.dts which is in turn included by 
> stm32mp157.dtsi which is included by stm32157d-dk1.dts. (I might be 
> wrong with the details of the chain as just browsed through it quickly 
> but you get the idea.)

Oh okay, yeah, I get it! Thanks for the clarification

>>
>> How would one go about patching the dtsi and making sure that the 
>> patch is applied before ther file is included?
>>
> I don't recommend doing this but the example explains how to patch the 
> dts file. It works the same way for the dtsi.
Yes, I realize now that it's a bad idea!
>>
>>
>> Thank you all,
>> Mistyron
>>
>>
> :rjs

I learnt a bunch from your response, Thank you!

Mistyron


