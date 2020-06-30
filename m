Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web12.8140.1593553956955247134
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 14:52:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rh5HWUus;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id 67so5937179pfg.5
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 14:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1kORqM4sgzgHuNmTQpzNbMOzPWeubuH71hNzE/s3lJ8=;
        b=Rh5HWUusZ6OgfnfAn9NmJU0TPgVLsNNriszX5anraHqfLpiu5PgFeM3xcZPT+HBbZO
         Vr4JIVmDXBkyTYfsQDWI/DcPSlwIEVfnz1eiMb0E3pXWNHX2/GoRjJIm9Pm9SJ+IAAi+
         Hx37l46I4RcvgFqYydblvGajtMcdCCNu4bqXYOHdljpNOKw0WuJkzqxfYuNhBFmWEdNs
         BvC61ZSLfjcNfb7SSH/8q2R/UbjbF6YwIEDJqZxqyYqyyV1HYdTwWVi+Gw1BKihA2c37
         F1USIAb2L39s+qXSgKfUO7BicqojmipXGuS0Nao8xmPCmYMlSCXIW+d8Subg0Nu3thCT
         1wuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1kORqM4sgzgHuNmTQpzNbMOzPWeubuH71hNzE/s3lJ8=;
        b=ZDXVDro2KgStMQReH469QMcxiBI/MTaVcUH1WEaB6cLnmB31VUS3owWm8vUV8R/Qj8
         SsTgP+bkAi4z/J69P5ThWj19jS4QaLtNCAK0Ww6u1bz2vecRqAuikbyG/jFv3aF30jJm
         rLVpa4k+fzdKQubhbbjPmhK7ITkCRooZj3anGmes2krpn4REP9kZaFUI52tMLQEws71p
         6Q/H++kRuzJNdELK0ghqZN8bOszMuvnu0+Ab1txsgujBPnNAERNH6YGthDLZyiIgkNT3
         mYL+UE/vWiTYUscwWdl+DwvdzJuG6kjM2ltUwz3Fg3+z6vP6QR75ISbnWk+BJSZjUY7i
         TABw==
X-Gm-Message-State: AOAM530Hdjwv0fC+nNJ8jb4hPNTp0+LqPrjSzN8cPkGStFPkTjcjnVy0
	vNFQQSvkZzOFzNvjEcvUmiBS453LJCs=
X-Google-Smtp-Source: ABdhPJw2kbrCFdu+o7vUU0dAMl0xChHmmdFjpRPZkx7MurdtBRLO5dWopTB0Qghjy4ZUiwemfnUdRA==
X-Received: by 2002:a62:8f4a:: with SMTP id n71mr21032958pfd.31.1593553955985;
        Tue, 30 Jun 2020 14:52:35 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:2c51:53a1:364:7e03? ([2601:646:9200:4e0:2c51:53a1:364:7e03])
        by smtp.gmail.com with ESMTPSA id h17sm3364783pgv.41.2020.06.30.14.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:52:35 -0700 (PDT)
Subject: Re: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
To: Mikko Rapeli <mikko.rapeli@bmw.de>, john.ernberg@actia.se
Cc: yocto@lists.yoctoproject.org
References: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
 <20200630100752.GW108868@korppu>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <d943a362-2a5c-bb93-2eba-bbbc9bd6393c@gmail.com>
Date: Tue, 30 Jun 2020 14:52:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200630100752.GW108868@korppu>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 6/30/20 3:07 AM, Mikko Rapeli wrote:
> Hi,
> 
> On Tue, Jun 30, 2020 at 09:34:39AM +0000, John Ernberg wrote:
>> Hi,
>>
>> I have been trying to use INCOMPATIBLE_LICENSE to filter out undesirable
>> licenses for us from our images. I started simple and picked the
>> examples from the manual (AGPL-3.0, GPL-3.0 and LGPL-3.0).
>>
>> Currently we're based on Warrior, but I also did a short test on master
>> (results later in the message)
>>
>> Our images use systemd as init system. We use busybox ash as shell on
>> these images for now.
>>
>> When setting the INCOMPATIBLE_LICENSE according to the manual example,
>> systemd cannot be built anymore because bash is being skipped due to
>> license.
>>
>> Turns out that because systemd-bash-completion and
>> systemd-kernel-install both rdepend on bash, we can't build systemd at
>> all, because bash is not buildable. Even if we're not installing those
>> features of systemd.
>>
>> A dive into TaskData suggests that all the rdepends of all packages
>> provided by a recipe are flattened into depends of the recipe when
>> testing buildability.
>>
>> A quick test on master from about 2 weeks ago show the same behavior.
>>
>> For the test on master all I did was change the DISTRO_FEATURES of
>> core-image-minimal to include systemd.
>>
>>
>> Am I using ICOMPATIBLE_LICENSE properly so far?
>> If so, is being unable to fulfill an rdepend for an unused package meant
>> to fail the whole build, and how can I avoid it short of including
>> meta-gplv2 or writing lots of .bbappends to remove the dependencies?
>> Otherwise, where did I go wrong, and what should I be trying instead?
> 
> You need to add exceptions to build a lot GPLv3 components but not let them
> be part of product images.
> 
> In distro config:
> 
> INCOMPATIBLE_LICENSE += "GPLv3 GPLv3+ LGPLv3 LGPLv3+"
> ...
> WHITELIST_GPL-3.0 += "bash"
> PACKAGE_EXCLUDE += "bash-ptest bash-dbg bash-staticdev bash-dev bash-doc bash-locale bashbug bash"
> ...
> 
> The PACKAGE_EXCLUDE must be complete list of binary packages produced by the recipe.
> 


I think having two different distro configs is a reliable approach here, 
we keep adding more refined packaging which means you have to be on your 
toes all the time in the allowed list above.

> I end up enabling a large set of GPLv3 tools for use as development tooling at build
> time or in SDK:
> 
> $ grep WHITELIST_ distro.conf
> WHITELIST_GPL-3.0 += "autoconf"
> WHITELIST_GPL-3.0 += "bash"
> WHITELIST_GPL-3.0 += "bc"
> WHITELIST_GPL-3.0 += "binutils"
> WHITELIST_GPL-3.0 += "bison"
> WHITELIST_GPL-3.0 += "ccache"
> WHITELIST_GPL-3.0 += "coreutils"
> WHITELIST_GPL-3.0 += "diffutils"
> WHITELIST_GPL-3.0 += "elfutils"
> WHITELIST_GPL-3.0 += "findutils"
> WHITELIST_GPL-3.0 += "gawk"
> WHITELIST_GPL-3.0 += "gdb"
> WHITELIST_GPL-3.0 += "gdbm"
> WHITELIST_GPL-3.0 += "gettext"
> WHITELIST_GPL-3.0 += "gnutls"
> WHITELIST_GPL-3.0 += "grep"
> WHITELIST_GPL-3.0 += "libevent"
> WHITELIST_GPL-3.0 += "libpipeline"
> WHITELIST_GPL-3.0 += "libunistring"
> WHITELIST_GPL-3.0 += "m4"
> WHITELIST_GPL-3.0 += "make"
> WHITELIST_GPL-3.0 += "readline"
> WHITELIST_GPL-3.0 += "rsync"
> WHITELIST_GPL-3.0 += "sed"
> WHITELIST_GPL-3.0 += "which"
> 
> If one does not do this, alternative is to use a bunch of old and deprecated tool
> versions from meta-gplv2.
> 
> Hope this helps,
> 
> -Mikko
> 
> 
> 
> 
