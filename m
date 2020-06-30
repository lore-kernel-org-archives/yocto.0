Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web11.9997.1593559395685297304
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 16:23:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GVHqRCfp;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id e18so10700341pgn.7
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 16:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=PWTcX8SWgZFQKNxxBk54lix1Ib/wWuch4JfCzuk8Q5w=;
        b=GVHqRCfphmNah41Vo8KzwUOD1/5nGDZzTTESBzb4v1JYmFP0kArrR0Vut9EbbKLm0W
         j2wMdBwAYLotdV9HBj/jsas5zj0f5hqL8mPHan3ILw2zcPhdxuEOv3gTWmNrB8kBcWz5
         yUJv+DOCM+WhdEtKUXp0iBhOWCBUZNfhDB/orPuqzAm7Facz1s8dSWAKIplDXps46Jbs
         2klY2C4chzfy3BsFsW5k9adkedhLR7vgX4nH6qe/wvLvmuqD2hg+nQJ1UGQ6ntPHc0ts
         O9T1Uf1On4DSA3xa7DVQ8p94X5M0Pz5dtLu3azW4y6pbpb8FqQrnuKV0ZN3Msb5+/JlV
         iUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PWTcX8SWgZFQKNxxBk54lix1Ib/wWuch4JfCzuk8Q5w=;
        b=Wwx9lbxeau+S4so53ATTCmv1PVjU5/mjiHr1IUU34HCuzt26k+Gbftt64w6PCU72zV
         6s+HS+mBCEXg1YPUA2E+dg+roks+RftBWwWdipNb/e7knASXmla4Zxf3q0sEY+HP7/cM
         zDRMbkNtgnAdX3TlWGS1uR3FwAECwOHSsxh4m+pOaJboJ6+6LUaTaAYnFE+k+QVuQS6u
         9ujIsh99TiYymDtRIteBv3q9s7GHsJ1F3QchTEVQf3KgPQqWyFj/BSzZeVytPeVYdZIf
         ZWXRJAtCsksnyLkJUYZVJQXFSeKrWTgqoeArooPWpuKlCBvePjQGsBwbHbfBFp8FUI1H
         PNsA==
X-Gm-Message-State: AOAM530UW/6tEfG6kcL6wcUPSNuRGSlcfgo/iiAsA8TZrMm06r0FSX3y
	rcuqZKFPAH/xUV7nNAHmzRzMFQvbtfo=
X-Google-Smtp-Source: ABdhPJyuEnkSJizLZtaffLu4w2XTQzjXkULV2XgcabOkH0eYXOrA4foX97YK4RvLVVGUUZg2leUntw==
X-Received: by 2002:a63:4543:: with SMTP id u3mr15956198pgk.398.1593559394761;
        Tue, 30 Jun 2020 16:23:14 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:2c51:53a1:364:7e03? ([2601:646:9200:4e0:2c51:53a1:364:7e03])
        by smtp.gmail.com with ESMTPSA id x7sm3770451pfp.96.2020.06.30.16.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 16:23:14 -0700 (PDT)
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: MikeB <mabnhdev@gmail.com>, yocto@lists.yoctoproject.org
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <a15e8bd4-71f9-29ee-b9c2-48b2cfa439dd@gmail.com>
Date: Tue, 30 Jun 2020 16:23:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/30/20 2:56 PM, MikeB wrote:
> I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure if this is 
> a bug or just my problem.  I maintain five different architectures and 
> all five have the same failure in gcc-sanitizers as I'm trying to build 
> the SDK.
> 
> | cat: 
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: 
> No such file or directory
> | WARNING: 
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 
> exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > 
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> | ERROR: Execution of 
> '/data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505' 
> failed with exit code 1:
> | cat: 
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: 
> No such file or directory
> | WARNING: 
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 
> exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > 
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> At first, I thought this may be a dependency issue because I inherit 
> "rm_work" to tidy up; but I tried a build without it - i.e. keeping all 
> work around - and got the same failure.
> 
> I've attached the full error log.  Any troubleshooting advice would be 
> appreciated.

try to do a bitbake -ccleansstate on gcc-source-9.3.0

> 
> 
> 
