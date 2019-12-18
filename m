Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web09.932.1576701508444159841
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 12:38:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m6xPw40b;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id a33so1885968pgm.5;
        Wed, 18 Dec 2019 12:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vtufXY0TbIGbaxGEkx5OH5hd7Nx/gG4eu/ROqFLQ4vY=;
        b=m6xPw40b2uIDcKmVwVRBydkUGa5rnR2aVx3D9QqhZo3IenGqoGaX53kOnSicREptBt
         r//eAiYMPVJb4bph9eOmwTv0ft1ae+iljWY1o5nGlUDIDahX1qdItPwJ6ELnqGuU0YG0
         V7bbdNcEeSyhFi4+FyB9hVPGeAZDIN+dhNblp2y2h/rtphIwI/cdbyiwZX/Cd4I88eky
         j/z2tASNaqd13eN/URAuxQJ5uieRx1vdnIV9U5CHVjsHHYtmKURQP2IFYL2d+HIgCPwM
         FEWLGvWydI8E9AycJ9mxWlyHN7FNqr2bbNGRxIEWxPz2tIh3W8XKLL3sP3IbIWlqKrx5
         AhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=vtufXY0TbIGbaxGEkx5OH5hd7Nx/gG4eu/ROqFLQ4vY=;
        b=H/BxTx2vcNaA5+sTvqXx+JDXYKp0OC3skVqlOSTHhQf1BZqEUhDvc5oAySMEgSgsoj
         wPtavA1OyOV0VMr0NuGYxllT/tCTBqlDc6rkZwizlmhxN14B/woCBneQ1Hie1/tBB7Ti
         KIO9fbluutxag4Gzms5ljA62CEiMHCN3AFojlipIAmKZLTExN6hxx9/0kVhOZM37ThiB
         BfXt1vR3JqHAhwPwfbTpPS4VBa6SIiC5ojArPRhw7u5ZrWRGYe4Qzy5lD14r3TiK8lt3
         H+RgZ+F9BgpFUecTLGDfpUzr4wswdtt1eeoFRQG++UXPtSKKy/st1zgT4Pv7WwINHqdF
         k7jQ==
X-Gm-Message-State: APjAAAVhI0ZSrxbdMjht+oqc9tQOebun4yb8cwlXOsOefbtg/pIZq27c
	6iupzb+ha+OMMoU7ccBjiHxYShMQ6zM=
X-Google-Smtp-Source: APXvYqx0U6ZbGqaDgk3ssQUjDp3SD1LvHVTyZoOVJUemyX2GDz/+Dkb6oyUUGaTtWZKs2zEIIGcj6g==
X-Received: by 2002:a63:604:: with SMTP id 4mr5315794pgg.406.1576701507155;
        Wed, 18 Dec 2019 12:38:27 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:dd5b:acf6:7dd2:90d0? ([2601:646:9200:4e0:dd5b:acf6:7dd2:90d0])
        by smtp.gmail.com with ESMTPSA id i2sm4135416pgi.94.2019.12.18.12.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 12:38:26 -0800 (PST)
Subject: Re: [yocto] go tool dist: unknown architecture: aarch64
To: learning yocto <learning.yocto@gmail.com>, yocto@lists.yoctoproject.org,
 meta-virtualization@lists.yoctoproject.org
References: <15E15F75E87A3A54.14752@lists.yoctoproject.org>
 <CAGWAjas1j+-imALC3Ggc_hLAnd4a8cqPv-kiftfTLObQ3bjZnw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <749af202-7f4a-39ca-3168-025b4b4d8614@gmail.com>
Date: Wed, 18 Dec 2019 12:38:25 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAGWAjas1j+-imALC3Ggc_hLAnd4a8cqPv-kiftfTLObQ3bjZnw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/18/19 1:49 AM, learning yocto wrote:
> A bit debug, found out that the go-native.inc depends on
> go1.4-bootstrap which does not have arm64/aarch64 support.
> Found out a reference on
> - https://golang.org/doc/install/source#bootstrapFromSource
> - https://golang.org/doc/install/source#bootstrapFromCrosscompiledSource
> 
> To cross-compile a bootstrap toolchain from source, which is necessary
> on systems Go 1.4 did not target (for example, linux/ppc64le), install
> Go on a different system and run
> bootstrap.bash(https://golang.org/src/bootstrap.bash)
> 
> When run as (for example)
> 
> $ GOOS=linux GOARCH=ppc64 ./bootstrap.bash
> 
> How to add this in yocto I am not sure...
> any pointers please help


this is a bit more involved issue since go compiler needs go compiler to 
build, since 1.4 is where it has to start and that means you have to 
create a bootsrap go cross compiler for aarch64 using go 1.5 first on 
x86 host. once you have this distribution for aarch64, it should then be 
installed on your aarch64 host and used to bootstrap the full compiler.

perhaps add it to uninative tarball for aarch64 then or host it somewhere.

another option is to require host to have go compiler and use that to 
bootstrap the version of go we want to use for OE.

> 
> On Wed, 18 Dec 2019 at 05:18, learning yocto via
> Lists.Yoctoproject.Org
> <learning.yocto=gmail.com@lists.yoctoproject.org> wrote:
>>
>> Hello List,
>>
>> I am a newbie to yocto world, trying to build poky (zeus) for
>>   qemuarm64 machine on an arm64 board.
>>
>> When I included meta-virtualization layer and add docker-ce
>>
>> local.conf
>> -----------
>> DISTRO_FEATURES_append = " virtualization"
>> IMAGE_INSTALL_append = " docker"
>> -----------
>>
>> bitbake core-image-minimal / bitbake -c configure go-native
>> throws the error
>>
>> ---------------
>> DEBUG: Executing shell function do_configure
>> # Building C bootstrap tool.
>> cmd/dist
>> go tool dist: unknown architecture: aarch64
>> WARNING: exit code 1 from a shell command.
>> ERROR: Execution of
>> '/mnt1/yocto_kb/build-rpi/tmp/work/aarch64-linux/go-native/1.12.9-r0/temp/run.do_configure.31724'
>> failed with exit code 1:
>> # Building C bootstrap tool.
>> cmd/dist
>> go tool dist: unknown architecture: aarch64
>> WARNING: exit code 1 from a shell command.
>> ---------
>>
>> Not sure how to fix this error.  Please advice
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47741): https://lists.yoctoproject.org/g/yocto/message/47741
>> Mute This Topic: https://lists.yoctoproject.org/mt/68784558/4043142
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [learning.yocto@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47746): https://lists.yoctoproject.org/g/yocto/message/47746
>> Mute This Topic: https://lists.yoctoproject.org/mt/68784558/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-

