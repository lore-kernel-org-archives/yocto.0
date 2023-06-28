Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998FEEB64DC
	for <webhook@archiver.kernel.org>; Wed, 28 Jun 2023 18:19:01 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.1289.1687976340868684685
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jun 2023 11:19:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=SzAJyXkq;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-57026f4bccaso1180677b3.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 11:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687976340; x=1690568340;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vSN7h4wzZZI7VJ4+ksxvV+KL3cNRPZUnwJNPNNl9rgM=;
        b=SzAJyXkq2nVC6TyY+GHZuFIvq1HO70+aBVeNU7P76iBGFTA11cah5j0eBD/JXUP3uN
         uaWyDdwCKiAcr63pVZOFIkVujQMXCZKP1o2NGfJfxzAkT5vdR8Zc3b3vza6Nul2ZP7rd
         VL1mq5yfsAac2kWEqCEB6IPEAEYImFc1NLATNIZVkBCCqyN15C7wyix7AZfEPmKYaSSY
         8JE0e1tJp65IOhwAwbwCEq6bKDp/ca2Rxx6KLubZN3lfdWS1RF3AQw05MgAffnOopp+T
         oCOc0MBbo14u8MsBiCcsXBXF5qjxpnahuuwDd9Qv9KzGeOwxkRMVKrm+WC1RvmCPRlhM
         Poyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687976340; x=1690568340;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vSN7h4wzZZI7VJ4+ksxvV+KL3cNRPZUnwJNPNNl9rgM=;
        b=F7SVQtCk64cpOwmhqGD0IXcP9u5smfoNNBKeysX+A03QtF47O/GJKCsW9Dys19sV2t
         Ni/U5ot4pEAeKj4Oge6I0vmGataBhL1oZGCUEhxGLJCbcSI9xP6LuRw+A8H8/P5ADbA/
         bRY4wTZ1tc3sgzcSSSdpJUPQKg+2fLFxyq2rORnE8m9tyrzU8jnlhHcUi+sinzFD1B9g
         Mu3KUdN2hzqpu7IUwOOHHInVtXHZPkzpMqYMegA5NL2MoOX/6Xpi0ojZBM41Nlvid3wc
         x/HrCpb2wf1SabEa83UY5S6BX9s+wmGihnnvXGSPZ3UOvMhVUcgQa3WLuv6PF/OmKNf9
         6K9A==
X-Gm-Message-State: AC+VfDyddtis2VSMTA4x58qdGoU7nUxRvWot2eQl9o1/jCpIQWf28gZv
	WiAHx0ZO1EK9jAK0oWv5LCaoKBHiKkk=
X-Google-Smtp-Source: ACHHUZ7+aOe2U1lfl8E9f5Buk7mc1ZxJa8MYNU+mNI4fDBE5tgKYX2Qb70RS7eT0sqNWUpjCDG6tKg==
X-Received: by 2002:a0d:d5cc:0:b0:570:126:feaf with SMTP id x195-20020a0dd5cc000000b005700126feafmr41194824ywd.19.1687976339927;
        Wed, 28 Jun 2023 11:18:59 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:1313:e2a5:a596:c99? ([2600:1700:9190:ba10:1313:e2a5:a596:c99])
        by smtp.gmail.com with ESMTPSA id x132-20020a81638a000000b00576beffe858sm1783380ywb.97.2023.06.28.11.18.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jun 2023 11:18:59 -0700 (PDT)
Message-ID: <a2c7c67b-5eae-c1e8-8441-d4eb08056962@gmail.com>
Date: Wed, 28 Jun 2023 14:18:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <20230628125609.1327477-1-akuster808@gmail.com>
 <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 18:19:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60468



On 6/28/23 12:47 PM, Richard Purdie wrote:
> On Wed, 2023-06-28 at 08:56 -0400, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   conf/layer.conf | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 334a945..5f289cb 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -28,4 +28,7 @@ INHERIT += "sanity-meta-security"
>>   
>>   QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
>>   
>> +# We need more mem to run many apps in this layer
>> +QB_MEM="-m 2048"
>> +
>>   addpylib ${LAYERDIR}/lib oeqa
> Putting that unconditionally in a layer.conf is a pretty poor thing to
> do for usability IMO as it effectively forces that decision on anyone
> including the layer. There has to be a better way to handle that, at
> least conditionally on some override?

Yep. I moved it and the other qemu params to the image instead. That 
patch has not been sent.

thanks,
Armin
>
> Cheers,
>
> Richard
>
>


