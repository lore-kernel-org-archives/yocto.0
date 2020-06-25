Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web10.152.1593100999976942025
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 09:03:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jorOcpfv;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id k23so6587805iom.10
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jun 2020 09:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=oeG2CKo5jtxn26xUgVbDAZqRo1+KBn5AaTQ6KKMO5/E=;
        b=jorOcpfv9ykrOlKiSrCH2DmrtAkuFrL8h0EuFCtQnVJrxLuxwMio/eAD9gYeKSfa+k
         Tqv4I/UXUUG2BHsn9ns248WiZQxEdec13gwOKUWg0R5RqS1Ne4KMzKQ7ljknUUyhikId
         gRVyMOecglWgGxgkARV43I4L416j3F5hN5daM4gX2ZsGx1A3tDzbMptHo7Pdmt9XW1Fw
         dOb5JbUDce6+YQnRyMEAAyiogm0MfExAX167N/wLKU2bmslbbomrY+MvV8uUmAPDilvn
         qAGxbwsVWv4Xz3AEuHb9eXv2TfTkVh69bM0xPzUKxyTk02Hg+asuIjJiO3L7ny5Vt7M7
         FE1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=oeG2CKo5jtxn26xUgVbDAZqRo1+KBn5AaTQ6KKMO5/E=;
        b=lGQHKhNl1C/kxciN0WW5IUWNRN+pDZWseUfohwoJ73lAqdhzqSy1sA9EDccOATXHUm
         IphbHtleCUh9vn7AAQysnK/92ir5Vbu3pADdy8RCPdv6ts3YrCwu97fBcPNIIjNch2H0
         5LL6sw4mvWfISiZLkQFMA1x5HBFav/MBv65xcj2Y4xJaoqU8ABjxbTqubVj3fbsH7Lal
         4JPI+PjoZRsLju3yDPWWv89InhaFbvfmSoQb7UrEuRDDApp1AXeITQlVAwRHGMfhMDtH
         fu67h1qCV8UrIFBx8uummXSBaf+1NsEncKBEiX3aJnRcTLt0Crd8rCo6p3+OiVNlmf/R
         1oDw==
X-Gm-Message-State: AOAM533XNkAt4hsqinSvZPnFesG0vnMOGF57kyZXM8TAas9I0h14wxet
	6+zeBy6GbteZjofx/zbG+kKhbIN3
X-Google-Smtp-Source: ABdhPJzuaU2HGJuF1M3POffCRuE+6siTW9PUi3Rc2VQ8PKP8w8LgWecRcyuhg9vXfw5mphaZ8qiYmw==
X-Received: by 2002:a6b:7516:: with SMTP id l22mr37835358ioh.18.1593100999097;
        Thu, 25 Jun 2020 09:03:19 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:7004:574a:57d2:4d47? ([2605:a601:ac3d:c100:7004:574a:57d2:4d47])
        by smtp.gmail.com with ESMTPSA id n7sm5286046iob.44.2020.06.25.09.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:03:18 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-rockchip][PATCH] Use TF-A recipe from meta-arm
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20200612173823.7749-1-JPEWhacker@gmail.com>
 <20200625033057.GA21029@linux-uys3> <20200625034401.GA21929@linux-uys3>
Message-ID: <8c7bac88-d8f1-1ce9-1128-40a29fa5b60d@gmail.com>
Date: Thu, 25 Jun 2020 11:03:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200625034401.GA21929@linux-uys3>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 6/24/20 10:44 PM, Trevor Woerner wrote:
> On Wed 2020-06-24 @ 11:30:57 PM, Trevor Woerner wrote:
>> On Fri 2020-06-12 @ 12:38:23 PM, Joshua Watt wrote:
>>> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
>>> index 401d649..042507d 100644
>>> --- a/recipes-bsp/u-boot/u-boot%.bbappend
>>> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
>>> @@ -7,8 +7,8 @@ do_compile_append_rock2-square () {
>>>   
>>>   ATF_DEPENDS ??= ""
>>>   
>>> -EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
>>> -ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"
>>> +EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>> The space you've included at the start of the following string makes me stop
>> and double-check... did you mean to add an "_append" in the following symbol?
>>
>>> +ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
> Ah… I should have read the next line before replying. I see you switched from
> += to .= and hence the space. A bit curious, though?

It prevents the recipe adding in an extra space to the task depends when 
the machine is not an rk3399, which helps the layer by YP 2.0 compatible


