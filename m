Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AD83C433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 03:09:08 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web12.46718.1640747347178042268
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 19:09:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZLUkb6m/;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id gj24so17440587pjb.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 19:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc
         :references:from:organization:subject:in-reply-to
         :content-transfer-encoding;
        bh=pFt/kQ/bA43pTf2i6A6Fg6WPzNzlwkdmj+xm0Myvjog=;
        b=ZLUkb6m/PK8VCTbbZi40jpSm/rbfMG4AsLpmTssH5SIfCj8ajTqEmE0xhqIF0T41je
         YXOkLzT5CDzc/hwpGMFIku+Es7X3PuIV5T59HU9T3D2b0YkeiTEVGFVWN8n0yhsrGa3y
         PDCD1XhnF8QMWINHbHayu9ZTr5QxLB3PFWUoxWpbXthdx+qnOidhSw6VwRo0MgEfpwVL
         aIFFKTjCexr1kXdXiI6eRy09F06S99bNfzOo2m2e2J6KHJnWZTn6heN32IQwcKg4J40g
         QJ0SF26AB0r1k9TtVjjVx6BKXiNoiomDoFd+NM9trqlni/UGSiJfxaAHfVCjSEeKf1Ku
         UkrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:references:from:organization:subject
         :in-reply-to:content-transfer-encoding;
        bh=pFt/kQ/bA43pTf2i6A6Fg6WPzNzlwkdmj+xm0Myvjog=;
        b=LvKZYYAPYbAsKoCzCNo8h+O8zZo2L7eQhuh30uask4R1zWG8ugLoS4LoYb6mejuKFy
         +RTOSSpcZqC1kcNHLIz+CNHgDWA7wRPb7fSZG+t1/GF5uuOoOkQdT+PEEvvdgq+L6YaU
         TXKuiyXBoBSKaXgesGm5pZIqVLRJi6kwtQ9b0zxhNXcmihcqbY6mkOBZlA3u8TKYsFRc
         oMvyegxxJxnddDSsd0bhx+psBlwqiFHrRQB5TBmlvVpXkJd7W3KjqXuV+9N8+RQZJJP0
         W3Y1BJwfHacOtY6aM4GCFkmmTsKEDnOs8dEKAF8yo/42QxoYzuufZ22sfIUbfE/K0nUV
         PGCw==
X-Gm-Message-State: AOAM533wtxjqbhtmnoNdtzYAOLAYE/OfBQlh6vdYppkbvP92uittCsQn
	qKU56jTLGF+PQx66i4amTY8=
X-Google-Smtp-Source: 
 ABdhPJxT8nT4gP0R1ByDRIkpTD8D2Wot6Wgd+Zj3LLhWuTOqORXG8v73szvhJZYjHwBcWmifoqXMdA==
X-Received: by 2002:a17:902:bd05:b0:148:a2f7:9d87 with SMTP id
 p5-20020a170902bd0500b00148a2f79d87mr24740907pls.166.1640747346407;
        Tue, 28 Dec 2021 19:09:06 -0800 (PST)
Received: from ?IPV6:2601:646:9200:a0f0:51d1:c053:5f56:149f?
 ([2601:646:9200:a0f0:51d1:c053:5f56:149f])
        by smtp.gmail.com with ESMTPSA id
 t21sm18317069pgn.28.2021.12.28.19.09.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Dec 2021 19:09:06 -0800 (PST)
Message-ID: <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
Date: Tue, 28 Dec 2021 19:09:04 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.4.1
Content-Language: en-US
To: davis roman <davis.roman84@gmail.com>, yocto@lists.yoctoproject.org
Cc: song li <ghosty.lee.1984@gmail.com>
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
In-Reply-To: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 03:09:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55681



On 12/28/21 2:53 PM, davis roman wrote:
> Hi all,
> 
> I'm working on a project utilizing a Realtek RTS3916N mips SoC and as
> part of Realtek's bsp offering, they provide their own fork of
> buildroot packaged with their prebuilt binary toolchain.
> I would much rather use yocto instead however Realtek made it clear
> that no yocto support is available from their end and they have no
> plans to provide it in the future.
> 
> In theory, I have Realtek's u-boot and kernel source so it should be
> possible to build an image so long as poky is instructed to use an
> external toolchain. This is where I hit my first road block because
> Realtek only supports uClibc and I know the yocto community moved way
> from uClibc, in favor of musl, since the Morty release. As a result, I
> decided to use Krogoth-15.0.0 (knowing it's EOL) only because it
> supports uClibc.
> 
> Now that I had picked a specific version of poky, I continued forward
> with the EXTERNAL_TOOLCHAIN feature. The documentation references the
> meta-sourcery layer as the typical use case. Using a sourcery
> toolchain tarball ( 2014.05) I was able to build qemuarm/glibc
> therefore as far as I can tell the EXTERNAL_TOOLCHAIN feature works as
> documented.
> 
> Unfortunately, the issue I have now arises when I use the Realtek
> toolchain.  meta-sourcery informs me that building against uClibc is
> not allowed as it has been blacklisted. Only glibc appears to be
> supported.
> 
> I have looked around to see what other projects are similar and the
> closest I can find is the creator CI20 however due to the Realtek
> toolchain being based on uClibc, I haven't been able to find anything
> suitable for my usecase.
> 
> I would greatly appreciate any suggestions regarding how to proceed
> forward with yocto integration, using a mips uClibc based toolchain.

We have dropped uclibc support long time ago so any effort to support 
uClibc based system will be a bit of work and we have also dropped stale 
patches from metadata so even if you are able to get external toolchain 
bolted in, you will unfurl next set of problems for yourself So I don't 
have a better answer for you here, other than drop the idea of using 
uclibc if you want to use modern yocto baseline. We did support it long 
time ago so if you like you can use thise EOLed releases but there wont 
be much support for it here on community mailing lists.

> 
> Is there any other course of action that I can try?

Since you have bootloader and kernel available to you, it might be less 
work to put together a BSP layer and machine definition for this SOC 
easily and it could be forward looking but there could be some 
portability issues w.r.t. toolchain etc. which are manageable
here you will use internal mips toolchain to build your system and you 
can use musl instead of uclibc to build the system or glibc is other 
supported option.

> 
> Thank you,
> 
> Davis
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55680): https://lists.yoctoproject.org/g/yocto/message/55680
> Mute This Topic: https://lists.yoctoproject.org/mt/88005049/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

