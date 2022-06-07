Return-Path: <ptsneves@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEF1EC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 08:54:49 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web08.10215.1654592079663251525
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:54:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qom1hZba;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: ptsneves@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id u26so26500209lfd.8;
        Tue, 07 Jun 2022 01:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3l5LxfZHDiLsNV8ZlST03IvaOPktOIwr+hRtK6t/PZI=;
        b=Qom1hZbayNAhNj8ajBrs6aiGMiSGJnv+Z8In64q978hr8w1D34nqOPT6Cppl7rSIfL
         eqa0Gm5MsdMyBJnrFr4dARmfLt2qcx6ZJhdRLu/b+nsTa1rSjpSNY/DyeJkn9j4RVPkv
         dV1+/7SQMdfG0d1Hee4uRA4wuaXK8sYmB/OrGYwXKkzdqmvCqRyq6niHeJtfaU6i9NxS
         g2L47OOtkGI0y3Aswsv7b74PMxq6NEdQDSiqxla7n5V+l1U+jEa0xLeyn9M9vfePy2gA
         nu6eRsZ+By+hGClJccOeneKHnrjFF1XRWagz7nlzXtb7rTXmBFlT7Dl5EAdQ3gGqwsBe
         NkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3l5LxfZHDiLsNV8ZlST03IvaOPktOIwr+hRtK6t/PZI=;
        b=1bbLHfks8cofy9HyF4HObScby9oKLZNcnE67CzMd95GHBqZJcPNBDmOFdwKfhdwGzx
         Mc1AfEKiP3XYg3vuFrN2U10y6sSB3RVrzIQrJFuglZrSW24mFe4ahEl3RTMbhCYmOnqr
         orG+9FoAFjYuvhzjsjBkRmc8+g+iX0yUb0bcL8isp7KkHQtJmo08eUtzZQDopxuLI6XO
         9X+ZiGa4MIAvrI+ZSb6Hrn4vE12oCz5G6LirLOwTZEjzmDFmxeHOplcQ8CSiDfKxqUx6
         bBfjLtPBKi9UNojb6SaQ9DVkIwPycAc+Z4//ybwa09MPhTViZ2j5M3aW9PWIoa7L1TMY
         di4A==
X-Gm-Message-State: AOAM533Cf+vmRkVEhVosLS07he90BhcKCHeSK5Wq8xLiM3SRlls8wQ9Y
	kgCPVpUvf+AIREP2Ai6N1A==
X-Google-Smtp-Source: 
 ABdhPJyI4XoOsCCbn8W+lDon4MkAYLyj9wRBl0stwcqJifSU/TIzJl2kuotBYXS/rTJtNMN0QQWMBg==
X-Received: by 2002:a05:6512:6ca:b0:479:32:6011 with SMTP id
 u10-20020a05651206ca00b0047900326011mr17768607lff.4.1654592077950;
        Tue, 07 Jun 2022 01:54:37 -0700 (PDT)
Received: from [10.67.202.36] (85-128-83-172.static.ip.netia.com.pl.
 [85.128.83.172])
        by smtp.gmail.com with ESMTPSA id
 n19-20020ac242d3000000b0047865073533sm3183049lfl.197.2022.06.07.01.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 01:54:37 -0700 (PDT)
Message-ID: <c1a05448-ff70-b053-c85a-5e77292d5d79@gmail.com>
Date: Tue, 7 Jun 2022 10:54:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [PATCH v2 2/2] manuals: SYSTEMD_SERVICE overrides depend
 on SYSTEMD_PACKAGES
Content-Language: en-US
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 yocto@lists.yoctoproject.org
Cc: YP docs mailing list <docs@lists.yoctoproject.org>
References: <20220603163521.146659-1-ptsneves@gmail.com>
 <20220607084254.2694011-1-ptsneves@gmail.com>
 <20220607084254.2694011-2-ptsneves@gmail.com>
 <d5a7a74d-ff38-8270-acb5-5a6fea861180@bootlin.com>
From: Paulo Neves <ptsneves@gmail.com>
In-Reply-To: <d5a7a74d-ff38-8270-acb5-5a6fea861180@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 08:54:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57281

Hi Michael,

My sincere apologies. Will try to improve next time

Paulo Neves

On 6/7/22 10:53, Michael Opdenacker wrote:
> Hi Paulo
>
> On 6/7/22 10:42, Paulo Neves wrote:
>> Add detail that package overrides are only available if
>> specified in SYSTEMD_PACKAGES.
>>
>> Signed-off-by: Paulo Neves <ptsneves@gmail.com>
>> ---
>>   documentation/ref-manual/variables.rst | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
>> index 42178d556..e31f0ed88 100644
>> --- a/documentation/ref-manual/variables.rst
>> +++ b/documentation/ref-manual/variables.rst
>> @@ -7664,6 +7664,10 @@ system and gives an overview of their function and contents.
>>   
>>            SYSTEMD_SERVICE:${PN} = "connman.service"
>>   
>> +      The package overrides that can be specified are directly related to the value of
>> +      term:`SYSTEMD_PACKAGES`. Overrides not included in term:`SYSTEMD_PACKAGES`
>> +      will be silently ignored.
>> +
>>      :term:`SYSVINIT_ENABLED_GETTYS`
>>         When using
>>         :ref:`SysVinit <dev-manual/common-tasks:enabling system services>`,
> Thanks for the patch. Merged into yocto-docs' master-next
>
> Don't forget to copy the docs@lists.yoctoproject.org mailing list next time.
>
> Thanks again
>
> Michael.
>


