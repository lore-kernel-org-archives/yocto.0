Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E439C2FC08
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 21:39:46 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web11.2073.1695245977248763998
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 14:39:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=xr/bkbBz;
 spf=pass (domain: ibeeto.com, ip: 209.85.210.53, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6c09f1f4610so215470a34.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 14:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1695245976; x=1695850776; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3uQ0DJHY6W1ltBYhh3QYyWsYnhqEWnFxTefIPxv/Rd0=;
        b=xr/bkbBzreptGNchGY7jY+435jX/GGSr+aAxXXT5RWZfUy5+jLKu0S018Ga6cSRmFY
         JdIllucEjwBvdauIeBwupH8UGO0GVpn/+qzC5YZlCau+e0y0Hapi+M12qbSD9jJtGn3B
         77bDgDZ/PoKnc9TLABt07cmYtczJEYBXyOQ+4Ng+n3oYsaZidqOy56nGcdIhC6kASTDH
         N+sFcIa0z1cqEAibkqgdOtnAOKlUYrMf/4Lh6PWsuzXP5CxYKMRM7dQiMYEcAJicRiXy
         PXUNhObVLFuV/cMxk13i/83FlUtQ7JzXq2KF+L+4ht4UNivUt1mR7HupxBZIZA/g+ALj
         +epw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695245976; x=1695850776;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3uQ0DJHY6W1ltBYhh3QYyWsYnhqEWnFxTefIPxv/Rd0=;
        b=fBI840YqjIIP0RLPDKSmV42uDwsPdWxWaIYRYufTlrCnaMsW8gjzMMCrYyZ+Zlbe/7
         hNQ2tF7XPOMAZBFHQqdOJVQvseOIKEN+HYRirYetQuKQJNLnN0Ua9zWoWVXr8bJaazI3
         6Irflt4r+t9lEph4NxX70U4xaaU7Lt42hal5nrNH7N5dYo62z90okxP9P0HDMYz3boZZ
         Q+mz+PDUSw6ufv0O3PgmZL7zBPCTf2Vtw3BQcNiqo5GpURgl4of+gbPLxu/mjo0EBPRp
         mtjKJTUfHeJw3AwFVuzIYo+KpJNApxnMs5jcMaXEofQMF/jGWwIGz1c9uTZPM9+nnS52
         gMZw==
X-Gm-Message-State: AOJu0YxEDAj/bWxeo94R0Akfi14btzklX8ztWrCESVNT3FSGW7G29QrI
	6Go84yuFXqtf3Upc1t5R7xaiiQ==
X-Google-Smtp-Source: AGHT+IErmFAcUtal8WUg8vC2VU5pt5gVu/foqXtnhmVNIm4FOdidx5/v3SbPUJ1WFG6+ThEL/tqKoQ==
X-Received: by 2002:a05:6358:929:b0:133:ac7:c84b with SMTP id r41-20020a056358092900b001330ac7c84bmr3547322rwi.12.1695245976033;
        Wed, 20 Sep 2023 14:39:36 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id o9-20020a639a09000000b0056569f7cbd2sm10069460pge.37.2023.09.20.14.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 14:39:35 -0700 (PDT)
Message-ID: <9c210e65-35af-17f9-8d27-ac32bc079a8a@ibeeto.com>
Date: Wed, 20 Sep 2023 14:39:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Forcing uninative?
Content-Language: en-US
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com>
 <2023092021160802de53c6@mail.local>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
In-Reply-To: <2023092021160802de53c6@mail.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 21:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61059

Thank you, Alexandre.

On 9/20/23 14:16, Alexandre Belloni wrote:
> Hello,
>
> On 20/09/2023 13:59:54-0700, Rudolf J Streif wrote:
>> I need to resurrect a Yocto Project build environment based on honister. My
>> dev system has since moved on to a newer glibc etc. As expected, I am
>> getting this warning
>>
>> WARNING: Your host glibc version (2.37) is newer than that in uninative
>> (2.34). Disabling uninative so that sstate is not corrupted.
>>
>> The distro's gcc now is 13.2.1.
>>
>> Now the following packages do not compile anymore:
>>
>>   * rust-llvm-native : which there is a patch (applied to kirkstone):
>>     https://lore.kernel.org/openembedded-core/CANPvuR=G1NxfJb67xD19FoNh4eTDsTM4TDyF+vDbh6crNH=dgw@mail.gmail.com/T/
>>   * libdnf-native : because std::uint32_t does not exist anymore
>>
>> I don't care about the sstate as I am creating a new one. However, how can I
>> force uninative to be used and would it even solve the problem (I would
>> think so as the idea of uninative is to isolate the build from the host
>> libraries)?
>>
> You should rather use buildtools. You can install those with
> scripts/install-buildtools. The -r option is there to allow you to
> select a target release. You can try something like:
>
> poky/scripts/install-buildtools -d ~/YP/buildtools -r yocto-3.4.4 --installer-version 3.4.4
>
> This will then tell you to source buildtools/environment-setup-x86_64-pokysdk-linux
OK, I did that. The environment only adds the paths. Then I sourced the 
build environment as usual. Unfortunately, it still fails with the same 
error messages.
>
> This should be enough to be able to build old releases.
>
> Regards,
>
-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386


