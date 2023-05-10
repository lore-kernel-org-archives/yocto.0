Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04D67C7EE22
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:25:10 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.18680.1683728705118197715
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:25:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=N6wEbMi1;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-55a010774a5so112079017b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 07:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683728704; x=1686320704;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BA9DKMm1FIWCgJDEUSouGrAEjEY/LuK6HYEDJiLdJos=;
        b=N6wEbMi1FQeOuy0Qwmp+nDixgMHbl71SPlJ616diVzxp/ytEcgJlQbxcWoI5Tp3IS/
         64InKut5XFq+57PtkaKXO3o+BCu0ftW6yM+/RxZBphCuL/DwfhnA56HxAiTYgfJQqWt4
         8MZ1i4OAvB+Uu8E1Xwvv8EWgE4PAxn55hjZIwcRcqhz1jCCJvHsMNd36JYzqRSvp3T1y
         QU/khgZ6Iw6LFDNfU6V0S15IWGiLgMl0INanZ3VUkJdZU4iVEjCU3V+6hjC3LxyCYXJB
         XVuo3CeTkSdMJ5JNhrXh8fa/OS1jyy7mfs2oA5QjIOqLPeYU72XfMUp/SLfbcpfKANvC
         NVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683728704; x=1686320704;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BA9DKMm1FIWCgJDEUSouGrAEjEY/LuK6HYEDJiLdJos=;
        b=kO+Waetmh3fT1rzngBwN0GXQp0NN7QgEwyc8+XfLa7fxR8n6hWEfst3Waf4sKL0UNj
         bYJW+PREdsdqOBhO+zTtU3nk+oBh0Y7WB8EiSk52n8OZPnik4LwWW7dSy7FsJOML2S2t
         T91Gz5y8Bq1ewKvfg0Xl6MFun1Q6jmWtgQ1SSJXi8w9KcF+VKnSUM1subz/X9lMnupMh
         lTkxXlhVLteOGQ1uYRAflF1Cs2kQXwXAD5Bfn12fnMxJzMe6Fur7UuwvKusw8DmIXkD1
         bCVZ1t0+M97DUqRL74UXoJGtNF3/pZMHDcipPGdlqtPP156iksBBJDYombKJHXHflvKu
         dKBQ==
X-Gm-Message-State: AC+VfDycVwAzzsN9H68vqOI2pVQYUqgNCsUP+C0rwdUmJIgm/Rt1AZme
	2FEzR5TP5kj7qg9cw1kGUgw=
X-Google-Smtp-Source: ACHHUZ5hwJ8kyr+wSdmsOgyLztqP3YCZnniW3YndW4tYvU6b9KO08nJkPZLFRqC0WvIuchSWnIuO7A==
X-Received: by 2002:a81:658a:0:b0:55d:8768:4081 with SMTP id z132-20020a81658a000000b0055d87684081mr18118363ywb.7.1683728704216;
        Wed, 10 May 2023 07:25:04 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:8122:c224:cc78:85c7? ([2600:1700:9190:ba10:8122:c224:cc78:85c7])
        by smtp.gmail.com with ESMTPSA id o185-20020a8173c2000000b00555d2944284sm4065169ywc.67.2023.05.10.07.25.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 07:25:03 -0700 (PDT)
Message-ID: <4f9206ad-aa2d-bdb0-dec7-fd40f1fee826@gmail.com>
Date: Wed, 10 May 2023 10:25:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
Content-Language: en-US
To: Mikko Rapeli <mikko.rapeli@linaro.org>,
 Stefan Berger <stefanb@linux.ibm.com>
Cc: Jose Quaresma <quaresma.jose@gmail.com>, yocto@lists.yoctoproject.org,
 Jose Quaresma <jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
 <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
 <ZFuY1UtAFKNI4Oyt@nuoska>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <ZFuY1UtAFKNI4Oyt@nuoska>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:25:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59963



On 5/10/23 9:15 AM, Mikko Rapeli wrote:
> Hi,
>
> On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:
>>
>> On 5/10/23 07:44, Armin Kuster wrote:
>>>
>>> On 5/9/23 2:56 PM, Jose Quaresma wrote:
>>>> This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
>>>>
>>>> The full patchset are overriding the do_configure task and also added a kernel patch
>>>> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
>>>> in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
>>>> So the patch fails in some recipes and also do_configure task doesn't make sense.
>>>> This breaks many recipes like linux-firmware and maybe others.
>>> I fail to see how  this package update is part of the issue above. I am still trying to sort out the store here to figure out how we move forward.
>> My suggestion would be that I post a v2 of my fix patches containing:
>>
>> 1) removal of the Linux kernel patch
>> 2) removal of the squashfs option (less important)
>> 3) the suggestion outlined here: https://lists.yoctoproject.org/g/yocto/message/59955
>>     but modified to look like this with '&& [ -f .config ]' appended:
>>
>>   do_configure:append() {
>>       if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}" = "yes" ] && [ -f .config ] ; then
>>           sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=.*|CONFIG_SYSTEM_TRUSTED_KEYS=\"${IMA_EVM_ROOT_CA}\"|" .config
>>       fi
>>   }
>>
>> I don't want to hold things up but maybe it's worth discussing the suggested changes.
>>
>>  From what I can see 'bitbake linux-firmware' builds under OpenBMC now with these suggested changes
>> and it did NOT build before. My suggestion would be to discuss the proposal under that thread there.
>> The problems seem to be that the file meta-security/meta-integrity/recipes-kernel/linux/linux-%.bbappend
>> matches the pattern linux-firmware as well and therefore its contents get included when building
>> linux-firmware. When building linux-firmware while having also DISTRO_FEATURES ima set in local.conf then the
>> ima.scc is added to SRC_URI and the do_configure is also appended. The latter will not have side-effects but
>> I don't know about the former nor how to create a better filter (other than DISTRO_FEATURES) for not having
>> these included for linux-firmware.
> Why is the bbappend applying changes to all recipes where name starts with
> "linux-"?
>
> It is aiming at Linux kernel recipes which by default in yocto are
> called "linux-yocto", so the bbappend could simply be
> "linux-yocto_%.bbappend" (or "linux-yocto%.bbappend to catch the rt
> and other variants too).

Well that one is on me. That change came in when I ported over the 
meta-intel-iot-security layer.

6680225 meta-integrity: port over from meta-intel-iot-security

I will send a patch correcting that.

Thanks for the reminder and pointing this out.

BR,
Armin

>
> I think it's a bad idea to try to apply this change automatically to all
> possible BSP layer kernels which may or may not have names starting with
> "linux-" and it's well known that there are a lot of recipe names which
> start with "linux-" which are not Linux kernels (linux-firmware,
> linux-libc-headers, linux-dummy etc).
>
> Cheers,
>
> -Mikko


