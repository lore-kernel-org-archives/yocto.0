Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B99AC4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 00:02:03 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.17053.1701820914968928577
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 16:01:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=hFaaWGov;
 spf=pass (domain: mvista.com, ip: 209.85.214.182, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1d0538d9bbcso42523815ad.3
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 16:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1701820914; x=1702425714; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5OFQNfNzARoiZa2nm0TKY2lgpJCFoPX2/H6uuapZf2Y=;
        b=hFaaWGov/wfVUdpPl2spWHEtahBmWyYJIxEzQIiJ4U5X/78P4HFCilYs+FrYIssYRj
         39+CCkU2VazEdY32WUaUOyVmb1cUvRgm2d6e+3m1rHpGobBMS6Ird4MfeAmCSYKOjMwk
         t19Ykh+ydS+tBI7Wh6xSMkgihq6pmlIkB5CW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701820914; x=1702425714;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5OFQNfNzARoiZa2nm0TKY2lgpJCFoPX2/H6uuapZf2Y=;
        b=T+yqkuB7eS63S0H2Wru8dkCOzEtmZ538nrgIQZIiEHOlyl/YTOJ8i2hbvqX8ct5K6p
         iCc2gV86X1S7zNdqC4v9pUF31s8r0g1fMmPZXAgFVlqtwzkKg8kHST3EMfVXAFi4kugx
         6vLQCdopP17Q1ZCGqwocf1lKegzkVfekEAdkwsnn5XJSbaZJp8NmnUctNQAPAc/5z2Lv
         T4exHa7eANn9kprnHWdZHXO2Pz4Qvw/M3UtRPfEJDln3C380LN4CYFgmjFlcsvAZc7xZ
         q0TIWDjUp/2X/MfRpfoL9GZgbS7TMmbQyLbMcJIRj+Tv+/AW2B4URx0s80QzvL6zn4aC
         GEGw==
X-Gm-Message-State: AOJu0YyJdrmoK0p4tQd3CJ1L8pYrx1fspggtjyXT12GrbrMJUxYicWzF
	bJEDGXiYaLhZCnStAaPLGs9VdA==
X-Google-Smtp-Source: AGHT+IHlJmPfayvOuRIzbf+U8vtSWWyEQPgrl+K9tqvl+Lu0TVpxAMRtD4xt3vX+AHRD0KlsDT4nvA==
X-Received: by 2002:a17:903:41cd:b0:1cc:43af:f568 with SMTP id u13-20020a17090341cd00b001cc43aff568mr37071ple.6.1701820914326;
        Tue, 05 Dec 2023 16:01:54 -0800 (PST)
Received: from [10.20.245.32] (50-240-203-141-static.hfc.comcastbusiness.net. [50.240.203.141])
        by smtp.gmail.com with ESMTPSA id x16-20020a170902ec9000b001cc3fae06a6sm1840878plg.159.2023.12.05.16.01.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 16:01:53 -0800 (PST)
Message-ID: <f00f66aa-8e5a-4c3a-a486-487dbe536cba@mvista.com>
Date: Tue, 5 Dec 2023 16:01:51 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] sstate-cache issue with SPDX enabled
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>, mwen@ambarella.com,
 yocto@lists.yoctoproject.org
References: <hJ5J.1686151970057523750.KtUg@lists.yoctoproject.org>
 <b5c6dfa4dfaa8d14c52a3269be6043dbef3e4f5f.camel@linuxfoundation.org>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <b5c6dfa4dfaa8d14c52a3269be6043dbef3e4f5f.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 00:02:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61810



On 6/8/2023 1:15 PM, Richard Purdie wrote:
> On Wed, 2023-06-07 at 08:32 -0700, mwen@ambarella.com wrote:
>> We’re using Poky Kirkstone(LTS) with the latest version for our
>> SDK. Recently, we're trying to enable the feature of creating SBOM in
>> SPDX. But we met a sstate-cache checking failure issue when enabling
>> SPDX to generate SBOM. It will be appreciated if you have any idea
>> for the root cause. Refer to below details for the issue.
>> https://docs.yoctoproject.org/4.0.10/singleindex.html#creating-a-software-bill-of-materials
> We did work on this in master recently and there have been fixes merged
> there, after which we enabled SPDX by default.
>
> Unfortunately they were not straightforward and this may make it tricky
> to backport into the older releases. We're still testing them in master
> before considering that.

Was there a follow up to pulling these fixes in to older releases? I 
created a branch of kirkstone
with create-spdx brought up to nanbield. Its likely not how it should be 
backported, but it does
seem to work with only one backported fix to bitbake for exposing hashfn 
in the taskdep data.

Those changes appear to resolve the similar issue I was seeing.

https://github.com/jpuhlman/openembedded-core/tree/kirkstone-current-spdx

>
> Cheers,
>
> Richard
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60235): https://lists.yoctoproject.org/g/yocto/message/60235
> Mute This Topic: https://lists.yoctoproject.org/mt/99403018/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6691901/2167262/1422422786/xyzzy [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


