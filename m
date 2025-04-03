Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55B9C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 18:41:24 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.3079.1743705676280841535
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 11:41:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iXwKijOe;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso7371635e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 11:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743705674; x=1744310474; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UZ1v90x5q73ZwRxtPEavfN3vC0Vn2z5pfM78WNLnyOs=;
        b=iXwKijOeEaB08i6dB3vHo4KXNbeF7z8S5uDh6NrBYyCNURPDYNc4FxK5WcvHHjoSrF
         0MUMUgWZqX7wK4vuxNwnHxuBSQ8elKuKHcG+o2A16pSKvLHnt/YkrXaou9n4ja5EHrb0
         6cvrczphVdnjwXQW2bcioqi/HNuEF+WYnOt03sivxzCuXqERNdlUdI3tzB06O5EjBa/0
         YI+Lbthxagfyg/Cqjfp7+tvduIQCQS5i7uuWV8Hggm9h9+a0sgHPopBHCDH5tPogvPOV
         6p66KV7hyYFKLiZISHdahqeSg8eZTuLNPp0DYp891SREVqAy/1R4bvJNM3i8KH92xcWH
         t37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743705674; x=1744310474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ1v90x5q73ZwRxtPEavfN3vC0Vn2z5pfM78WNLnyOs=;
        b=JfI3J8+B1EPY9akoUKao37PpP1AbB9p2H1WoyTDfVXJUQBv1dMlzEpYyftQbwT36MP
         AmextfQUzXDlg+9E/mNzSTH3fKjbw9EHEN2qDTX8rY0yNKvtVvSKBscEO46xUCrs+lko
         S8XHf92DSIXpLbNScx4tIPLL4rKYNAhAC0E3qo10t0OhKve1c3Uo1qgwhcdOgEVHCWoc
         wEyGT+mIxfIkgTXrcTKMQsVWc7Imv5hJMRv1AcvyUAQMZrozeC1BbtZg9E022bpcbtQJ
         1QVYi3q/ek2xJvEV5xSJ22ggrp9MHxK1daFFcbRmIWrXHvlCxWGACOqmJOztnK9N86fj
         bIHQ==
X-Gm-Message-State: AOJu0Yy41p5GDeVko8VavaAQHx7sIKYrlK0WaZqhcuCUlCHsnn82dory
	fsZvWdThFSxiswRbmZwlIEFuHrYqPaKLsKStvZCg+GAKACEZW7VmIdM0HDdv
X-Gm-Gg: ASbGncsL7lnqmVCOFDLLN0xHYBHxTDSKwM1vn+Aqt0aAvPcODhIaTXZ9IBD3HhWq3Ss
	hIV552xeOJQvkiLBXdGqlJkNepgUoAwRCcFbtmIj/YbTSNur7Y8LPgbGfBwr07nJnlZWH+TrPpn
	W5WwNlSydqufO3ywDsJGFHCAWsDUHrbbM93LoM2kUWPT1Opm/lZuAaSoJrpmlihWNPx/Jdc9lO2
	N/htyPeHibxhY2ZhvgB6yN2VDJlNQLIE1hDatlHSpCu3Xp+0v6nWA9eMeaC+y9YTAAUxO0k4YHc
	oYGbIl2nTvsZ3HCS+Rmw0wjBhMGRaZpnJ4FxTceEjqnMgQEsJz3N0HKqpgPX
X-Google-Smtp-Source: AGHT+IFcFNfjJYEs4qZObIzZKdC02LBTAmCiphZ3QT/6ajmArvTWRQ9/kTR61xGqzOWtyuLLx27XvQ==
X-Received: by 2002:a05:600c:4690:b0:43c:e467:d6ce with SMTP id 5b1f17b1804b1-43ecf83ff46mr1995925e9.4.1743705673931;
        Thu, 03 Apr 2025 11:41:13 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1660bcesm28653405e9.10.2025.04.03.11.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 11:41:13 -0700 (PDT)
Message-ID: <36b9c7bc-ebd3-43f9-bd32-b8fcf25a08b7@gmail.com>
Date: Thu, 3 Apr 2025 20:41:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] nativesdk-mesa do_configure fails with
 PACKAGECONFIG:append=" gallium gallium-llvm"
To: yocto@lists.yoctoproject.org, philip.dawson@datapath.co.uk
References: <Z8Dt.1743694621655020425.miUC@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Z8Dt.1743694621655020425.miUC@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 18:41:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65091

I managed to reproduce this. I see the problem itself, but without
looking much deeper don't know what is causing it, or why it is
happening unfortunately...

There are people more familiar and experienced with deep llvm things, so
I'm sharing this for them.

I used an empty build folder, with only checking out poky repo,
langsdale branch (I imagine kirkstone would be the same, after the
previous report, though I haven't tried this now explicitly)
I only added gallium-llvm to the PACKAGECONFIG of mesa.
I ran the following command: "MACHINE=qemuarm64 bitbake nativesdk-mesa"

After the error:
1. llvm-config is present. Meson is trying to execute "llvm-config
--shared-mode" - but it errors out. It throws a lot of errors about
missing files:

llvm-config: error: missing:
/home/meeee/stuff/yocto/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-mesa/2_22.2.3-r0/recipe-sysroot-native/usr/lib/libLLVMDemangle.a

Note that it is looking for it in $RECIPE_SYSROOT_NATIVE

2. When I look in the WORKDIR, I can find the missing files, in
$RECIPE_SYSROOT. This doesn't look correct at the first sight... Out of
curiousity I checked the type of this file - it's for x86-64.

3. When I look in the sysroots-components folder, I found it in x86
sysroots-components/x86_64-nativesdk/nativesdk-llvm/ folder, which looks
about right, thought it's not more than a guess.

Is it possible that somehow these files get staged in the wrong sysroot?

On 4/3/25 17:37, philip.dawson via lists.yoctoproject.org wrote:
> Hi,
>  
> We're trying to enable gallium-llvm for mesa 22.2.3 build in our
> langdale based project.
> (We're using Petalinux tooling but I don't think that's making a
> difference here - meta-xilinx does have a mesa_%.bbappend but it seems
> only concerned with mali/libmali)
>  
> The target build works fine, but if we try to run the nativesdk-mali
> build (as part of bitbake petalinux-image-minimal -c do_populate_sdk run
> by the petalinux tools) then it fails on the do_configure step with the
> following meson error:
>  
> | WARNING: Ignoring LLVM CMake dependency because dynamic was requested
> | llvm-config found: YES (/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
> build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-
> r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6) 14.0.6
> | Run-time dependency LLVM (modules: bitwriter, core, engine,
> executionengine, instcombine, mcdisassembler, mcjit, native, scalaropts,
> transformutils, coroutines) found: NO (tried cmake and config-tool)
> | Looking for a fallback subproject for the dependency llvm (modules:
> bitwriter, engine, mcdisassembler, mcjit, core, executionengine,
> scalaropts, transformutils, instcombine, native)
> | Building fallback subproject with default_library=shared
> |
> | ../mesa-22.2.3/meson.build:1782:2: ERROR: Neither a subproject
> directory nor a llvm.wrap file was found.
> |
> | A full log can be found at /home/phil-wsl2-u2204/build/dgc219_nsg/
> dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-
> mesa/2_22.2.3-r0/build/meson-logs/meson-log.txt
> | ERROR: meson failed
> | WARNING: /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/tmp/work/
> x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/temp/
> run.do_configure.3927848:173 exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> |       #1: bbfatal_log, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
> build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-
> r0/temp/run.do_configure.3927848, line 173
> |       #2: meson_do_configure, /home/phil-wsl2-u2204/build/dgc219_nsg/
> dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-
> mesa/2_22.2.3-r0/temp/run.do_configure.3927848, line 162
> |       #3: do_configure, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
> build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-
> r0/temp/run.do_configure.3927848, line 148
> |       #4: main, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/
> tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/
> temp/run.do_configure.3927848, line 186
> ERROR: Task (virtual:nativesdk:/home/phil-wsl2-u2204/build/dgc219_nsg/
> dgc219/components/yocto/layers/poky/meta/recipes-graphics/mesa/
> mesa_22.2.3.bb:do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6558 tasks of which 6549 didn't need to
> be rerun and 1 failed.
> Summary: 1 task failed:
>   virtual:nativesdk:/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/
> components/yocto/layers/poky/meta/recipes-graphics/mesa/
> mesa_22.2.3.bb:do_configure
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
> ERROR: Failed to build project. Check the /home/phil-wsl2-u2204/build/
> dgc219_nsg/dgc219/build/build.log file for more details...
>  
>  
> (It looks like someone had a similar error for target mesa build in a
> Mar 26 message but they haven't posted details to get any assistance yet).
>  
> As far as I can tell nativesdk-llvm14.0.6 and nativesdk-llvm are in the
> nativesdk-mesa recipe-sysroot providers and llvm-native and llvm14.0.6-
> native are in the nativesdk-mesa receipe-sysroot-native providers. I get
> a bit mixed up when dealing with native/nativesdk builds and the vairous
> sysroots and I have no idea how meson detects llvm and why it's failing
> here. The meson-log.txt doesn't seem provide any illumination (at least
> to my untrained eye).
>  
> Do you have any idea how I can get this build working? Are there any
> more debug options I can enable to work out what meson is looking for
> exactly and why it can't find it?
>  
> Best Regards,
> Phil Dawson
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65087): https://lists.yoctoproject.org/g/yocto/message/65087
> Mute This Topic: https://lists.yoctoproject.org/mt/112067781/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


