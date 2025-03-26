Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F104C36008
	for <webhook@archiver.kernel.org>; Wed, 26 Mar 2025 15:06:40 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.24911.1743001591346792115
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Mar 2025 08:06:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PbE02N8Q;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso1166752766b.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 08:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743001590; x=1743606390; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h2n0FMm+UXl7tamN3m//1CAMsIroto1llJaXcdVsMVg=;
        b=PbE02N8QYMEOENdw1RigPZyuTjH4GoclCM6P0p2z7CiC6smzreIqEtStFViMHlZv/H
         9vp/ireGfdG/1IaaLJDuU4MUDgNk5tStmu1LDoR3YjhHH5vWzqHXy5NpbofpZLRZC/nF
         iHogymoUWytvT9VFPCgztaSb96rWXynAOZqYazfqKIQMCSqCvn3jDD+qdXqrgzBD4KZ/
         8KWdWtPfm8HvrOpVCri2+fQtDoducmGbu49Gy5Qy90B8GFb/kkwpp6iy26o784j8X+od
         ZIUMypmnTVEqFqgnWOmeh36ltWfyNDVZO1NpE+BefaqFJo3+ZBDho1AyxEGMQVz9whBE
         aYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743001590; x=1743606390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h2n0FMm+UXl7tamN3m//1CAMsIroto1llJaXcdVsMVg=;
        b=bVAXfTrNsS19NEUHw7d7NjsinvvzcPDubyZnZTChwsLIxBvDBU4narOZ0vR78WkcrG
         UbOvDGKzYimIjv/i97P6WY9vj3+t06u4Cp/qzhad+XHDbTZT0bNtcfgMXjrXYoMBqaR8
         2QHi5/FIKKHStpoWtTNLXVTFuKyVinQeUfZVbM6TCKsCA7ZEmSESuk1T3Bd2XSStcgMC
         sg6LW2VI6ZoeUC8G5iBy8/grq7bg+m01nys2hpLWgcUGFnY0ODWAgPwf4adSVSk0QIPG
         Md5juSSoxA15ldsmtyli/CdEcU9vTFu9dhHhVZ9Ab6w9R3KjgrCtTUVpSFE65B4No5MG
         7llQ==
X-Gm-Message-State: AOJu0Yz/5M8JBLGQ11XSRXb0EnGM7ZQS9mJV+TWQx1R5X5dVHXBYkkx1
	CFikd2Z9nQS//kEWWPEd08CKjfm9XFuS6ybzTjSkhNISk1iG+WaEbABQ+g==
X-Gm-Gg: ASbGnctCx+RP5njbpYiSiVXQAVyVdyYoMaaoQdqgyqD6VsIIWGOPtc04jcnQvyveUQo
	9VQu38yulHzWPMwnjkJcXdAiROo+vz6sgoMGBBQ8icVvXo6X8Kk7gdIiwFNbjLDljtynZzQRNis
	guNLlR/ueTEu8lUdqZakvAma6rkO0u7fQjtrngrrWwRFK+h5O8bYSs6vIruhzOyF8Su6/fRviRF
	shitbQrbR4D7RYG9jXTyUfvba4UsseBVw2BCeXxwLBgcwt26BYQH2yx9f5w15DZf9IiCNKBpUrb
	44R9gO8si2KF58kbvV51S45AekxLw0nHqL/yJlWss8qW1tTrClpO
X-Google-Smtp-Source: AGHT+IGJQm0mBuVhDrkoMipdN+rPDcIRhABvDV8a6dfILt7kJAd0d35LY8mfnh7Ey32YeY/bBx2Jbw==
X-Received: by 2002:a17:907:3f11:b0:ac1:e07b:63ca with SMTP id a640c23a62f3a-ac3f22aa3f7mr1870877466b.22.1743001588824;
        Wed, 26 Mar 2025 08:06:28 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efd47fd6sm1046192166b.162.2025.03.26.08.06.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 08:06:28 -0700 (PDT)
Message-ID: <b7002a62-4562-4138-89f4-a27afb13c79e@gmail.com>
Date: Wed, 26 Mar 2025 16:06:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] mesa 22.3.5 build with custom patches #kirkstone
To: yocto@lists.yoctoproject.org, Ankita.AN@exaleapsemi.com
References: <Dr9J.1742972842547375612.OugW@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Dr9J.1742972842547375612.OugW@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 15:06:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65023

Unfortunately the information you gave isn't a lot to work with (custom
recipe with custom sources and custom patches, all unknown to us).

But nevertheless, you could check the logs it refers to ("A full log can
be found at /home/.../meson-log.txt") - it should contain the commands
meson executed, and their output also.

Your logs claim that meson has found llvm-config binary (which is good,
and expected), but apparently it failed to gather usable info from it to
actually use llvm - meson-log.txt might give you some starting point
about the actual problem.

On 26.03.25 08:07, Ankita.AN via lists.yoctoproject.org wrote:
> Hi,
> I am trying to build mesa 22.3.5 with custom patches. I am getting
> issue as 
>
>     Message: libdrm 2.4.110 needed because amdgpu has the highest
>     requirement
>     | Run-time dependency libdrm_amdgpu found: YES 2.4.110
>     | Run-time dependency libdrm_radeon found: YES 2.4.110
>     | Run-time dependency libdrm_nouveau found: YES 2.4.110
>     | Run-time dependency libdrm found: YES 2.4.110
>     |*Run-time dependency libudev found: NO (tried pkgconfig and cmake)*
>     | ../mesa-22.3.5/meson.build:1803: WARNING: shared_llvm option
>     "true" deprecated, please use "enabled" instead.
>     | ../mesa-22.3.5/meson.build:1816: WARNING: llvm option "true"
>     deprecated, please use "enabled" instead.
>     | WARNING: Ignoring LLVM CMake dependency because dynamic was
>     requested
>     | llvm-config found: YES
>     (/home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/recipe-sysroot-native/usr/bin/llvm-config13.0.1)
>     13.0.1
>     | Run-time dependency LLVM (modules: amdgpu, asmparser, bitreader,
>     bitwriter, core, engine, executionengine, instcombine, ipo,
>     mcdisassembler, mcjit, native, scalaropts, transformutils,
>     coroutines, lto) found: NO (tried cmake and config-tool)
>     | Looking for a fallback subproject for the dependency llvm
>     (modules: bitwriter, engine, mcdisassembler, mcjit, core,
>     executionengine, scalaropts, transformutils, instcombine, amdgpu,
>     bitreader, ipo, asmparser, native)
>     | Building fallback subproject with default_library=shared
>     | 
>     *| ../mesa-22.3.5/meson.build:1835:2: ERROR: Neither a subproject
>     directory nor a llvm.wrap file was found.*
>     | 
>     | A full log can be found at
>     /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/build/meson-logs/meson-log.txt
>     | ERROR: meson failed
>     | WARNING:
>     /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.497608:191
>     exit 1 from 'exit 1'
>     | WARNING: Backtrace (BB generated script):
>     |     #1: bbfatal_log,
>     /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.497608,
>     line 191
>     |     #2: meson_do_configure,
>     /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.497608,
>     line 180
>     |     #3: do_configure,
>     /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.497608,
>     line 156
>     |     #4: main,
>     /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.497608,
>     line 204
>     ERROR: Task
>     (/home/ankita/Workspace/MArch/sources/meta-exaleap-nb2-private/recipes-graphics/mesa_22.3.5/mesa_22.3.5.bb:do_configure)
>     failed with exit code '1'
>     NOTE: Tasks Summary: Attempted 1376 tasks of which 1375 didn't
>     need to be rerun and 1 failed.
>     NOTE: Writing buildhistory
>     NOTE: Writing buildhistory took: 5 seconds
>     Summary: 1 task failed:
>      
>     /home/ankita/Workspace/MArch/sources/meta-exaleap-nb2-private/recipes-graphics/mesa_22.3.5/mesa_22.3.5.bb:do_configure
>     Summary: There were 138 WARNING messages.
>     Summary: There were 2 ERROR messages, returning a non-zero exit code.
>
>  
> How can fix this isuue?
>  
>  
>  
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65019): https://lists.yoctoproject.org/g/yocto/message/65019
> Mute This Topic: https://lists.yoctoproject.org/mt/111912795/6084445
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

