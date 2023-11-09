Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21D93C4167D
	for <webhook@archiver.kernel.org>; Thu,  9 Nov 2023 14:56:06 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
 by mx.groups.io with SMTP id smtpd.web10.123297.1699541764769733192
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Nov 2023 06:56:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WySV2Pvn;
 spf=pass (domain: gmail.com, ip: 209.85.161.43, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5842a94feb2so507647eaf.0
        for <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 06:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699541764; x=1700146564; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PBRXFEkpElsnAwtSCrXlDbzC0YQS6j7Zk7g7y++Xi28=;
        b=WySV2Pvn58IdDIgtuWXeB0Z725VrlD4iddfILcNDhHijHq6by7sqq95QKZQf15CeMJ
         76G+e8yxKlS7vDbGQ1q7oJrDaNrzUWjy0s8BorIr1i/CAA5v0ENfl6ekx6OE0Myn7zwM
         8Qa6+d7cQ/LN7tQEYeDRoA8VX6EdS8tpFaqnnEckk96os9ayE2fr5esPRqV0Apox/GqX
         OaSkqmYLdXtAgQ2vluuI34ckSEBn3vvNa7y6aOJ35S462nY9CvJY75S51EW3hpo8qJTZ
         4p3yje0dhQ2oi8ewVOeYvqOWC1XrDtQ3Hgg+Whdeb7WBIbBxXbjdNtWrm03o1b7ejOp6
         479g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699541764; x=1700146564;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PBRXFEkpElsnAwtSCrXlDbzC0YQS6j7Zk7g7y++Xi28=;
        b=llA8d9+s1xY4V6QBanFoQA2c47TY7PBIucOxD96XfvuDjE+ytaaB1wqQeUGzLmpQuX
         CfEdto1EY06MKVv/yk0bceuTdmAAFE8LV/5Jo2RVeRW+Zd2SrCr8crEDJfr1T5SVOc/R
         /pFgMGe0nQdPhwcsyDURj4c0biokpHolBY5N+UX6HmYE3AqEpC9T5CycYhUD2aOwQ69N
         IYqzFN7cgYhfQwPPRYI/4UueRSze6nNuCCg3VXpWOX2fZskj5UZOpNrwvSbaIwfpmTSC
         4UEPIwD3Pj+ahKIx4gKjO+UmLsb/VqJFIOZt8CAzgN7eVWZ+MMUxTyhRdbRjBwyDptGo
         6i3w==
X-Gm-Message-State: AOJu0YwNow2TfIK3s7Ipq7tbDP4uaKGY6uYIeizW34rjClhwr9yVGf9/
	azx8p+qTb3lvW+vxqDnvk4E=
X-Google-Smtp-Source: AGHT+IELiIu27rw8PENUvL1hTLvedw5Ooy8JEKWS73w2YwcXRoKbXTkR33aEH5ksxzT1xTPXjgBAJA==
X-Received: by 2002:a05:6820:164:b0:582:3c4a:923a with SMTP id k4-20020a056820016400b005823c4a923amr4968882ood.9.1699541763935;
        Thu, 09 Nov 2023 06:56:03 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:ff2b:7fec:1b0c:22e7? ([2600:1700:9190:ba10:ff2b:7fec:1b0c:22e7])
        by smtp.gmail.com with ESMTPSA id v9-20020a4ae049000000b00581e5b78ce5sm2826514oos.38.2023.11.09.06.56.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:56:03 -0800 (PST)
Message-ID: <bffcdf6c-c1b2-4e60-8e6c-ce33a9648535@gmail.com>
Date: Thu, 9 Nov 2023 09:56:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-security][PATCH] samhain: remove the buildpath
Content-Language: en-US
To: "Yu, Mingli" <mingli.yu@eng.windriver.com>, yocto@lists.yoctoproject.org
References: <178C0E6D2C773B8E.5378@lists.yoctoproject.org>
 <008758c4-63fd-9ad5-95e3-2a2a6896cf4c@windriver.com>
From: akuster808 <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
In-Reply-To: <008758c4-63fd-9ad5-95e3-2a2a6896cf4c@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 14:56:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61645



On 11/8/23 9:43 PM, Yu, Mingli wrote:
> Ping.
>

Its in master and nanbield

https://git.yoctoproject.org/meta-security/commit/?id=9769990db3ca6dae405049b632966cd6e08a8ada

BR,
Armin
> Thanks,
>
> On 10/8/23 14:36, Yu, Mingli wrote:
>> From: Mingli Yu <mingli.yu@windriver.com>
>>
>> Fixes:
>>    WARNING: samhain-server-4.4.10-r0 do_package_qa: QA Issue: File 
>> /var/lib/samhain/samhain-install.sh in package samhain-server 
>> contains reference to TMPDIR [buildpaths]
>>    WARNING: samhain-server-4.4.10-r0 do_package_qa: QA Issue: File 
>> /usr/share/doc/samhain-server/scripts/samhain.ebuild-light in package 
>> samhain-server-doc contains reference to TMPDIR
>>    File /usr/share/doc/samhain-server/scripts/samhain.ebuild in 
>> package samhain-server-doc contains reference to TMPDIR [buildpaths]
>>
>> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
>> ---
>>   recipes-ids/samhain/samhain.inc | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/recipes-ids/samhain/samhain.inc 
>> b/recipes-ids/samhain/samhain.inc
>> index 2788bc3..f5bea1d 100644
>> --- a/recipes-ids/samhain/samhain.inc
>> +++ b/recipes-ids/samhain/samhain.inc
>> @@ -59,6 +59,7 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , 
>> --disable-posix-acl, acl"
>>   PACKAGECONFIG[audit] = 
>> "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
>>   PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
>>   +EXTRA_OECONF += "INSTALL='install -p'"
>>   EXTRA_OEMAKE:append:aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
>>   EXTRA_OEMAKE:append:mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
>>   @@ -89,6 +90,9 @@ ssp_cv_lib=no
>>   sh_cv_va_copy=yes
>>   EOF
>>       export CONFIG_SITE=${S}/config-site.${BP}
>> +    # remove the buildpath
>> +    sed -i -e 's;mydefarg;mydefargholder;g' 
>> ${S}/scripts/samhain.ebuild.in
>> +    sed -i -e 's;mydefarg;mydefargholder;g' 
>> ${S}/scripts/samhain.ebuild-light.in
>>   }
>>     do_configure () {
>>
>>
>>
>>
>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61642): https://lists.yoctoproject.org/g/yocto/message/61642
> Mute This Topic: https://lists.yoctoproject.org/mt/102478928/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


