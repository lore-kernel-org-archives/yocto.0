Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2DBC433F5
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 19:59:45 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web12.1947.1650568925762712178
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 12:22:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=P1FzZwmM;
 spf=pass (domain: gmail.com, ip: 209.85.210.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id a15so5862934pfv.11;
        Thu, 21 Apr 2022 12:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lMF4U1isWY/OjCXH7kvtuNoZZTHUmsxL00et6yifmWw=;
        b=P1FzZwmMnAFAy4pooTE/X/8JJN9MG/Bwxyn0+BU5XQtRvKgr5ZBx0vxNkGSi7Yfdyq
         dFEQaa9ZCk8xHsXPN+1zw88Z3WFgXakVX2yvRHUS+e2lFr54RUw3EOlaWE/mEAVG3qev
         sXllSbFuCpYkYNuNLNT61sXHii2oY/dZxV3P24jBFYtXSgkWadbCX1LQGlfQm4KGxnxA
         6rrTrjWCEkDeLECCEY0rXz7zXEsYFxcIJ6Iv01qQNciSvBGBXzXN8uWdEmrIC8PpvqBj
         3cHU3a/guWGWJWT9XwbZ/8wTsFEZBZTE1jpBwFNwfE5oKanrTfqTWGiI0vWDxavgfJjJ
         +IMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lMF4U1isWY/OjCXH7kvtuNoZZTHUmsxL00et6yifmWw=;
        b=R17Zq97W1/8QHRzUdMgVU/C/48u/L0y9iCIyobCf6T7UyepmQU0wqJHuB1RXuZakwu
         j5ZepNUbleHy4s7LlnPD2dDWLmD6yc5gUvXi82z3Wp89wups3YWTuVQia3eQb92gA595
         cxfqkmsN5CaIUIghcDCL0wov+EZtQboppnfhDKjWRFnRPj0NvlaEgx1d1/mrVkKUnYAD
         /EF2Z8cl9AUt6W3RzBhFcL74aLk6SwTSYttWBJywcl0zVylRqN2ZRS6B2756W35qzNy6
         Q/GuxEJq6F6R9kutkfVCK7ZNmmqjmXA45qlPM19kHMcCGGUepnojxDky0jyBf63ZfCDK
         q+mA==
X-Gm-Message-State: AOAM532H+SnHgPPa3YDHAYScE4djxTnDWYFOTU7EuJRAX8Fzsrl1URro
	70oHxo0OVOz3e+FKYO5p51r0CNCUbrA=
X-Google-Smtp-Source: 
 ABdhPJynzVCuAyPpgP3N6B7EtwnEiHijl+g2ld17y1pHjnVS7pjARthM6/bltXSQ5q0iAeKHwy5wpQ==
X-Received: by 2002:a63:fc17:0:b0:3aa:1113:3c99 with SMTP id
 j23-20020a63fc17000000b003aa11133c99mr821816pgi.204.1650568924984;
        Thu, 21 Apr 2022 12:22:04 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:3384:3e7e:5066:2213?
 ([2601:202:4180:a5c0:3384:3e7e:5066:2213])
        by smtp.gmail.com with ESMTPSA id
 w4-20020a056a0014c400b004fb0c7b3813sm25222658pfu.134.2022.04.21.12.22.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 12:22:04 -0700 (PDT)
Message-ID: <d29717c6-6449-838e-3840-6684aac269fb@gmail.com>
Date: Thu, 21 Apr 2022 12:22:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.3.6.rc1)
Content-Language: en-US
To: qa-build-notification@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>,
 "Mittal, Anuj" <anuj.mittal@intel.com>
References: 
 <0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com>
 <36840f7431b8a53272a3f783d747807dde19967e.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: 
 <36840f7431b8a53272a3f783d747807dde19967e.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 19:59:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56835

no issues from me.

-armin

On 4/20/22 00:29, Richard Purdie wrote:
> On Wed, 2022-04-20 at 06:02 +0000, Pokybuild User wrote:
>> A build flagged for QA (yocto-3.3.6.rc1) was completed on the autobuilder and is available at:
>>
>>
>>      https://autobuilder.yocto.io/pub/releases/yocto-3.3.6.rc1
>>
>>
>> Build hash information:
>>
>> bitbake: d01d8326331cfe59208674cfc53aa26c0028b313
>> meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
>> meta-arm: 878fabbfc720da7d634ed9a2c0e24d4b8845ea20
>> meta-aws: 6801abf40bb255a31bce5061c5c6b72f5e2a8f58
>> meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
>> meta-intel: 16bfef2d1e0d0c8c596741d0bbb820541c432f6d
>> meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
>> meta-openembedded: a970ee45c2335c37041ad1658323481874bb4f0e
>> oecore: fbbb689c8df7f82644b8a9bc5bb6884bc6516660
>> poky: eee9fba7b4d5d7a268a495688039027390894e6d
> 3.3.6 built but there were two issues. One was a qemu boot test failure for
> core-image-sato-sdk on qemuppc-alt. I did have a look for logs but there aren't
> any, qemu never seemed to start but nothing to indicate why. Since the other
> tests for ppc passed, I think this is one of our general intermittent problems
> on ppc and we should ignore it.
>
> The other was some valgrind ptest failures. Those are known intermittent issues
> and I believe also not significant from a release perspective.
>
> Cheers,
>
> Richard
>
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#129): https://lists.yoctoproject.org/g/qa-build-notification/message/129
> Mute This Topic: https://lists.yoctoproject.org/mt/90578884/3616698
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave/8918815/3616698/368265748/xyzzy [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>


