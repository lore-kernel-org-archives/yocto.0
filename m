Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8C8C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 11:22:43 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.9145.1743765760906405183
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 04:22:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mHBQutiD;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e61da95244so3321748a12.2
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 04:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743765759; x=1744370559; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LKlfKK9d0JNThl1XCh9zvAPE5spyhbbbsX4HJ8HmndU=;
        b=mHBQutiDRxGw/Ef/aHhuPHWAU/G6A2+UOULm4pFncqxguY5NHnLcphtM66XzxfUt++
         bKtLiCgM7uToOzvp55LxX5pXFf3UTwUibrv3CAXiZ1L2fyFZ8hjZ8X0GGc9qqN82vf9t
         Z4N9yNqrx/FZbzq967VyqENSo9ho3EG/ESV28w6VV/Psiu0eNJ+/K75tWPAMOnTdXtB+
         P2K/g2EUgjTsgsCZ+xEqMDHFdTSbxdwMNQu75xVuonO/VEGoivtvQAwSHIg4cRzB6AN4
         +N0UwX1SGwUWfDMReaT9ZlCXDDJGhwQBdpsk5tjiT2r5xyKqLLCEvCD1EgBhPECKClVQ
         ciZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743765759; x=1744370559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LKlfKK9d0JNThl1XCh9zvAPE5spyhbbbsX4HJ8HmndU=;
        b=VMtfEzKaMcnsal4TIFPXAARqJ7cNrdWc8Zj2Y255NfUzn/iA4GElvcFaHozeE4/qIU
         WWJSfv/RKBqhlDx/bleTqufHXe1BCkAWtsXpl9mubL1/yFvPKe6bp7hjWo+qhJRIJN2h
         abEsWAeSrACC2L6BvzISatOm6QLVEBp6WnhxWE6vj2371FT8XPAs+FNeOcYT9mB/3tf/
         OXfTyekvOv67OLE5pJDoTIR2wBFf4ouAPyylwySz1Rn7BuhvQMAS2IIkP8hd0LNPf2Gi
         yHDNhTFATEjOVbAdcHGnQY3qZRbFRxsi2+K/LHcVqh/dU5TIB93v5DHKiycRqs56fhCt
         nH5A==
X-Forwarded-Encrypted: i=1; AJvYcCXBVKAkn2vdGaNhsQdCWWtk3LTb3TZnH/3FXPpvsa9ZRT0L+NLRMj7+gWTG0PXcx1maWvTrGA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxST5v62o/gs0WAyveuHGUV+P8jnG9wwDiPsf2kafyKrZUkTZzC
	K59/ZquHsPl9NYIvnzy9RvhDxttn4swvapPnT6eQzRCLBrgqz2od
X-Gm-Gg: ASbGnctFX8+EvNxNaCXj6ZRKtDzcaEb9idYUeHzCYBUkusilonsqi4e1/ubg5OJ4tE/
	1BN8GiESMjcta8MMYJZGy4YpJHSaZJPbU4mVZKLgWRMjIpJwzu+5AchDYXMVZpgfzi7xXMRgv4y
	KUDR68iqR1Fssu11jUJF5b+rpznCHPfK7BkqooAoiNMMv2oWoTTFSUWZ969JhyYE8wnD3wpL+v2
	uf0ttZqIdjtU7oY6f5Xw/+st+ldHs4jI8AOX+5I+upSsEQ+HFC+suvmw/kq8oy1f7vRsc24vuZj
	jAS5GgD6+P4VfCoiEsQqTj7e8olznEaRXJYeKCddubzRZD/C/B1c
X-Google-Smtp-Source: AGHT+IFJLNDUAuQh6ivIt0M+aNt99bmsMIiwH1dW0EN2adUDQRIPhAPoDZgs8SOIlzy/pOBEAZ9KBg==
X-Received: by 2002:a17:907:988:b0:ac3:c020:25e9 with SMTP id a640c23a62f3a-ac7d194a064mr280715566b.34.1743765758578;
        Fri, 04 Apr 2025 04:22:38 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c013f384sm236372766b.114.2025.04.04.04.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 04:22:38 -0700 (PDT)
Message-ID: <e94223d8-84c3-450a-87c2-80719c252744@gmail.com>
Date: Fri, 4 Apr 2025 13:22:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] nativesdk-mesa do_configure fails with
 PACKAGECONFIG:append=" gallium gallium-llvm"
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org,
 philip.dawson@datapath.co.uk
References: <Z8Dt.1743694621655020425.miUC@lists.yoctoproject.org>
 <36b9c7bc-ebd3-43f9-bd32-b8fcf25a08b7@gmail.com>
 <4cc996f3-0359-4a56-a4bf-c52d5c8c636a@gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <4cc996f3-0359-4a56-a4bf-c52d5c8c636a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 11:22:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65105


On 4/4/25 03:22, Khem Raj wrote:
> On 4/3/25 11:41 AM, Gyorgy Sarvari via lists.yoctoproject.org wrote:
>> I managed to reproduce this. I see the problem itself, but without
>> looking much deeper don't know what is causing it, or why it is
>> happening unfortunately...
>>
>> There are people more familiar and experienced with deep llvm things, so
>> I'm sharing this for them.
>>
>> I used an empty build folder, with only checking out poky repo,
>> langsdale branch (I imagine kirkstone would be the same, after the
>> previous report, though I haven't tried this now explicitly)
>> I only added gallium-llvm to the PACKAGECONFIG of mesa.
>> I ran the following command: "MACHINE=qemuarm64 bitbake nativesdk-mesa"
>>
>> After the error:
>> 1. llvm-config is present. Meson is trying to execute "llvm-config
>> --shared-mode" - but it errors out. It throws a lot of errors about
>> missing files:
>>
>> llvm-config: error: missing:
>> /home/meeee/stuff/yocto/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-mesa/2_22.2.3-r0/recipe-sysroot-native/usr/lib/libLLVMDemangle.a
>>
>> Note that it is looking for it in $RECIPE_SYSROOT_NATIVE
>>
>> 2. When I look in the WORKDIR, I can find the missing files, in
>> $RECIPE_SYSROOT. This doesn't look correct at the first sight... Out of
>> curiousity I checked the type of this file - it's for x86-64.
>>
>> 3. When I look in the sysroots-components folder, I found it in x86
>> sysroots-components/x86_64-nativesdk/nativesdk-llvm/ folder, which looks
>> about right, thought it's not more than a guess.
>>
>> Is it possible that somehow these files get staged in the wrong sysroot?
>>
> I think nativesdk sysroot is where it should have looked into. My guess 
> is either mesa's llvm detection logic needs to be looked into or perhaps 
> llvm-config is not working correctly in nativesdk case.

You are onto something.

Checking a bit the history, this is not the first cross-compiling issue
with llvm-config[1], Alex Kanavin was investigating related things in
the past.

Looking a the recipe, it does vendor a custom llvm-config script, which
is used for class-native[2]. If I duplicate this as "||

|do_install:append:class-nativesdk()" in the llvm recipe, then
nativesdk-mesa compiles also. But I must admit that this copy-paste-idea
lacks any rational background, it just looked like a good idea to try.
But not sure if it causes more damage somewhere else.|

[1]:
https://web.git.yoctoproject.org/poky/commit/meta/recipes-devtools/llvm/llvm/llvm-config?h=langdale&id=8f41af0ee94e87b673aa75ee2ecb7cf5a43b0d3d

[2]:
https://web.git.yoctoproject.org/poky/tree/meta/recipes-devtools/llvm/llvm_git.bb?h=langdale#n124


>
>> On 4/3/25 17:37, philip.dawson via lists.yoctoproject.org wrote:
>>> Hi,
>>>   
>>> We're trying to enable gallium-llvm for mesa 22.2.3 build in our
>>> langdale based project.
>>> (We're using Petalinux tooling but I don't think that's making a
>>> difference here - meta-xilinx does have a mesa_%.bbappend but it seems
>>> only concerned with mali/libmali)
>>>   
>>> The target build works fine, but if we try to run the nativesdk-mali
>>> build (as part of bitbake petalinux-image-minimal -c do_populate_sdk run
>>> by the petalinux tools) then it fails on the do_configure step with the
>>> following meson error:
>>>   
>>> | WARNING: Ignoring LLVM CMake dependency because dynamic was requested
>>> | llvm-config found: YES (/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
>>> build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-
>>> r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6) 14.0.6
>>> | Run-time dependency LLVM (modules: bitwriter, core, engine,
>>> executionengine, instcombine, mcdisassembler, mcjit, native, scalaropts,
>>> transformutils, coroutines) found: NO (tried cmake and config-tool)
>>> | Looking for a fallback subproject for the dependency llvm (modules:
>>> bitwriter, engine, mcdisassembler, mcjit, core, executionengine,
>>> scalaropts, transformutils, instcombine, native)
>>> | Building fallback subproject with default_library=shared
>>> |
>>> | ../mesa-22.2.3/meson.build:1782:2: ERROR: Neither a subproject
>>> directory nor a llvm.wrap file was found.
>>> |
>>> | A full log can be found at /home/phil-wsl2-u2204/build/dgc219_nsg/
>>> dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-
>>> mesa/2_22.2.3-r0/build/meson-logs/meson-log.txt
>>> | ERROR: meson failed
>>> | WARNING: /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/tmp/work/
>>> x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/temp/
>>> run.do_configure.3927848:173 exit 1 from 'exit 1'
>>> | WARNING: Backtrace (BB generated script):
>>> |       #1: bbfatal_log, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
>>> build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-
>>> r0/temp/run.do_configure.3927848, line 173
>>> |       #2: meson_do_configure, /home/phil-wsl2-u2204/build/dgc219_nsg/
>>> dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-
>>> mesa/2_22.2.3-r0/temp/run.do_configure.3927848, line 162
>>> |       #3: do_configure, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
>>> build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-
>>> r0/temp/run.do_configure.3927848, line 148
>>> |       #4: main, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/
>>> tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/
>>> temp/run.do_configure.3927848, line 186
>>> ERROR: Task (virtual:nativesdk:/home/phil-wsl2-u2204/build/dgc219_nsg/
>>> dgc219/components/yocto/layers/poky/meta/recipes-graphics/mesa/
>>> mesa_22.2.3.bb:do_configure) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 6558 tasks of which 6549 didn't need to
>>> be rerun and 1 failed.
>>> Summary: 1 task failed:
>>>    virtual:nativesdk:/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
>>> components/yocto/layers/poky/meta/recipes-graphics/mesa/
>>> mesa_22.2.3.bb:do_configure
>>> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>>> ERROR: Failed to build project. Check the /home/phil-wsl2-u2204/build/
>>> dgc219_nsg/dgc219/build/build.log file for more details...
>>>   
>>>   
>>> (It looks like someone had a similar error for target mesa build in a
>>> Mar 26 message but they haven't posted details to get any assistance yet).
>>>   
>>> As far as I can tell nativesdk-llvm14.0.6 and nativesdk-llvm are in the
>>> nativesdk-mesa recipe-sysroot providers and llvm-native and llvm14.0.6-
>>> native are in the nativesdk-mesa receipe-sysroot-native providers. I get
>>> a bit mixed up when dealing with native/nativesdk builds and the vairous
>>> sysroots and I have no idea how meson detects llvm and why it's failing
>>> here. The meson-log.txt doesn't seem provide any illumination (at least
>>> to my untrained eye).
>>>   
>>> Do you have any idea how I can get this build working? Are there any
>>> more debug options I can enable to work out what meson is looking for
>>> exactly and why it can't find it?
>>>   
>>> Best Regards,
>>> Phil Dawson
>>>
>>>
>>>
>>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#65091): https://lists.yoctoproject.org/g/yocto/message/65091
>> Mute This Topic: https://lists.yoctoproject.org/mt/112067781/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

