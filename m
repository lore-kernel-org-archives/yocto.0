Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15E5CE7A88
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 13:37:42 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.39783.1695562661004325085
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 06:37:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EadxloBs;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d81adf0d57fso5617444276.1
        for <yocto@lists.yoctoproject.org>; Sun, 24 Sep 2023 06:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695562660; x=1696167460; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sMiKaJOS2AFunNe/8ifZ9lJzG93N5oW9Ba/3V0LxkX4=;
        b=EadxloBsjzgCMgokQuNV8gsZTyWh6zTA8QMlNc/IH9L/2104h7pKadICYrtbtZEBZr
         orAYZ+XHu/UbGukssCFZCfE/RRDeooTKzJHC9JTXCygYDGs/1hPzesK7uYFSY0pbY3lL
         H0QtjzuYIZfRmSBBOyrJbbYOyFWlbNcnRgZHIe+sNvi/CanfsK6kHZaM+m2N1WvBaLpS
         SPdimj4+VOqWSE7cijgyJZDhJgZYv2BYzXbs5Y7uyCM1DqB0z6U3h5VPkICZOGpIdd0/
         DmbYxvoHBvb5ELLqSqwNA0V9QVeUpRvZu0iecNZijFYLxgI+a2SBe3U5OMryhD1vCULB
         9s8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695562660; x=1696167460;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sMiKaJOS2AFunNe/8ifZ9lJzG93N5oW9Ba/3V0LxkX4=;
        b=Z2KZqm7M4bvpnJeR8WFd0DsgQIsaDdva3/QUNEDrDBI92nVfFsrG+fkJhPOY427PgC
         b5HxcvCOT4KthAMfYXjUZj2UJrb19Lq2peJzTAyQMYhUEgq7XiJiDENzRNlFELGVb319
         yTfv7MOgVuZmUpeGoTSAg0wncLq//8+FWrG1uUEyu5/ZKz4w/wx5LWPZHVrq2mf8L0Cf
         OhUkkC/uaXOCyC+Rw0t3gy/83yqqqELIXhSP+Wlvd2T6eH1ZJTgXTaAeWbADFVGsrnJk
         GPyAQ8RNauHgdEryv7KRujB9i1YGjPZS9wLdLN+8rSj6hE1TkiWjg2NtIEl0z6Mpd6qN
         8BFg==
X-Gm-Message-State: AOJu0YwrXamL46VHnfNVIoHGTy/Qno4KyWyqTBfP4yUly0EJxDu3WhD6
	WdPrTgze2RDCaeU04gDICWg=
X-Google-Smtp-Source: AGHT+IHj3uVan5kOawmbYMyOmGZYoMv8Czydkrj/HGCrun1qNv1ZJM9ImpogkVfWvv6Jod10/D8u/g==
X-Received: by 2002:a25:ac57:0:b0:d7b:9372:a354 with SMTP id r23-20020a25ac57000000b00d7b9372a354mr4215475ybd.23.1695562660099;
        Sun, 24 Sep 2023 06:37:40 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10::29? ([2600:1700:9190:ba10::29])
        by smtp.gmail.com with ESMTPSA id x2-20020a056902102200b00d818ced8939sm1683864ybt.1.2023.09.24.06.37.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 06:37:39 -0700 (PDT)
Message-ID: <eb6c546a-049e-d97c-9f13-14a527561b28@gmail.com>
Date: Sun, 24 Sep 2023 09:37:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [yocto] CDN for sstate.yoctoproject.org
Content-Language: en-US
To: Michael Halstead <mhalstead@linuxfoundation.org>,
 Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Ross Burton <Ross.Burton@arm.com>
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
 <CADfgfoY8c3jiGNhbVj8nETsRNxwsxZ6vg3JSqKWX8XAzTRX1tA@mail.gmail.com>
 <CADfgfoarvGQgNSHbT0gHAChtKofgeZrv1rciJq-W9iB67jq4kw@mail.gmail.com>
 <CADfgfoa+ztGTc-Pijy_a83MZKH3VyhJiqxj0Gg=YOMjujwMCVA@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <CADfgfoa+ztGTc-Pijy_a83MZKH3VyhJiqxj0Gg=YOMjujwMCVA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Sep 2023 13:37:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61091

Hello Micheal,

Thanks for working on this.

BR,
Armin

On 9/23/23 3:52 PM, Michael Halstead wrote:
> When adding https://cdn.jsdelivr.net/yocto/sstate/all 
> <https://cdn.jsdelivr.net/yocto/sstate/all> please remove any 
> reference to sstate.yoctoproject.org <http://sstate.yoctoproject.org> 
> from SSTATE_MIRRORS to ensure a proper test.
>
> Thank you
>
> On Sat, Sep 23, 2023 at 12:51 PM Michael Halstead 
> <mhalstead@linuxfoundation.org> wrote:
>
>     After some workshopping this morning we have a solution for larger
>     files. Almost every package is now available with CDN
>     acceleration. For files over 64MB the fetcher will need to follow
>     a series of redirects to work properly. Files under 64MB will be
>     served fast from every region. Larger files will be proxyed and
>     cached on a smaller network of servers that can handle them. Once
>     cached they will be stored for up to a month. Because sstate is
>     immutable that means fast access after the first use in a region.
>
>     Set SSTATE_MIRRORS
>     <https://docs.yoctoproject.org/ref-manual/variables.html#term-SSTATE_MIRRORS>
>     to include https://cdn.jsdelivr.net/yocto/sstate/all or
>     http://cdn.jsdelivr.net/yocto/sstate/all, test it out, and report
>     back.
>
>     If we want the system to perform as fast as possible we need to
>     change SSTATE to work with 64MB file segments but that's a
>     discussion to have after this solution is tested.
>
>
>     On Fri, Sep 22, 2023 at 12:03 PM Michael Halstead
>     <mhalstead@linuxfoundation.org> wrote:
>
>         Here are packages and size ranges that are not yet served via
>         CDN. Hopefully testing on the smaller files is possible while
>         we figure out a solution for these.
>
>         assimp 75M 76M
>         binutils 64M 100M
>         boost 68M 148M
>         ceres-solver 167M 182M
>         cmake 157M 553M
>         ffmpeg 68M 69M
>         gcc 127M 681M
>         gcc-cross-aarch64 64M 102M
>         gcc-cross-arm 64M 72M
>         gcc-cross-i686 65M 80M
>         gcc-cross-mips 65M 69M
>         gcc-cross-mips64 64M 69M
>         gcc-cross-powerpc 64M 72M
>         gcc-cross-x86_64 65M 104M
>         gcc-crosssdk-aarch64-pokysdk-linux 65M 75M
>         gcc-crosssdk-i686-oesdk-linux 65M 77M
>         gcc-crosssdk-i686-pokysdk-linux 65M 79M
>         gcc-crosssdk-i686-w64-mingw32 66M 78M
>         gcc-crosssdk-x86_64-oesdk-linux 65M 78M
>         gcc-crosssdk-x86_64-pokysdk-linux 65M 80M
>         gcc-crosssdk-x86_64-w64-mingw32 67M 79M
>         gdb 66M 105M
>         ghostscript 64M 115M
>         git 68M 90M
>         glibc-locale 81M 228M
>         go 67M 67M
>         go-binary-native 82M 82M
>         go-cross-core2-32 98M 100M
>         go-cross-core2-64 93M 100M
>         go-cross-corei7-64 98M 99M
>         go-cross-cortexa15t2hf-neon 99M 99M
>         go-cross-cortexa57 93M 99M
>         go-cross-cortexa8hf-neon 99M 100M
>         go-cross-mips32r2 98M 99M
>         go-cross-mips64 99M 99M
>         go-cross-mips64r2 99M 99M
>         go-native 86M 86M
>         go-runtime 64M 82M
>         grpc 74M 102M
>         hdf5 78M 137M
>         influxdb 76M 98M
>         intel-media-driver 68M 132M
>         jemalloc 164M 164M
>         kea 65M 153M
>         lib32-binutils 64M 70M
>         lib32-boost 77M 122M
>         lib32-cmake 158M 305M
>         lib32-gcc 144M 390M
>         lib32-gcc-cross-i686 65M 79M
>         lib32-gcc-cross-mips 65M 69M
>         lib32-ghostscript 65M 83M
>         lib32-git 65M 65M
>         lib32-glibc-locale 81M 228M
>         lib32-go-cross-x86 98M 99M
>         lib32-kea 64M 88M
>         lib32-linux-firmware 275M 419M
>         lib32-llvm 1126.4M 2662.4M
>         lib32-ltp 77M 305M
>         lib32-mesa 65M 68M
>         lib32-openssl 119M 360M
>         lib32-piglit 106M 106M
>         lib32-qemu 275M 639M
>         lib32-rust 93M 129M
>         lib32-rust-llvm 64M 76M
>         lib32-spirv-tools 68M 107M
>         lib32-valgrind 68M 89M
>         lib32-vulkan-demos 74M 74M
>         lib32-vulkan-validation-layers 65M 101M
>         lib32-webkitgtk 1126.4M 927M
>         lib64-boost 75M 119M
>         lib64-gcc 151M 401M
>         lib64-gcc-cross-mips64 65M 69M
>         lib64-gcc-cross-x86_64 65M 80M
>         lib64-glibc-locale 82M 228M
>         lib64-go-cross-x86_64 98M 99M
>         lib64-go-runtime 68M 81M
>         lib64-ltp 67M 347M
>         lib64-mesa 66M 68M
>         lib64-openssl 276M 411M
>         lib64-rust 97M 123M
>         lib64-rust-llvm 64M 67M
>         lib64-valgrind 65M 84M
>         libyang 93M 93M
>         linux-firmware 275M 419M
>         linux-intel 120M 395M
>         linux-yocto 66M 537M
>         linux-yocto-rt 174M 287M
>         llvm 1126.4M 3481.6M
>         llvm-native 71M 88M
>         ltp 64M 598M
>         mariadb 1331.2M 966M
>         mariadb-native 237M 259M
>         mesa 64M 113M
>         minifi-cpp 155M 214M
>         mozjs-102 183M 255M
>         nativesdk-glibc-locale 81M 226M
>         nativesdk-qemu 245M 644M
>         nativesdk-rust 82M 125M
>         nativesdk-rust-llvm 65M 73M
>         nodejs 1024.0M 723M
>         opencv 185M 237M
>         opengl-es-cts 406M 560M
>         openssl 92M 685M
>         php 67M 68M
>         piglit 106M 106M
>         poco 75M 107M
>         python3-grpcio 65M 88M
>         python3-wxgtk4 70M 100M
>         qemu 1228.8M 929M
>         qemu-system-native 65M 71M
>         renderdoc 67M 82M
>         rocksdb 177M 272M
>         rust 85M 140M
>         rust-llvm 64M 79M
>         rust-llvm-native 287M 418M
>         rust-native 78M 85M
>         spirv-tools 64M 195M
>         systemd 69M 71M
>         tesseract-lang 369M 451M
>         upm 82M 82M
>         valgrind 64M 128M
>         vsomeip 82M 149M
>         vulkan-cts 592M 833M
>         vulkan-demos 73M 138M
>         vulkan-validation-layers 65M 108M
>         webkitgtk 1024.0M 995M
>         webkitgtk3 1126.4M 1638.4M
>         wireshark 65M 85M
>         wxwidgets 70M 88M
>
>         On Fri, Sep 22, 2023 at 10:32 AM Michael Halstead
>         <mhalstead@linuxfoundation.org> wrote:
>
>             Right now we have https://cdn.jsdelivr.net/yocto/sstate
>             set up as a CDN mirroring proxy endpoint. It's fast and
>             completely free to the project. However, it will only work
>             for files smaller than 64MB and will send a redirect to
>             the main server at sstate.yoctoproject.org
>             <http://sstate.yoctoproject.org> for files larger than 64MB.
>
>             The good news is that we have a fast free CDN provided by
>             https://www.jsdelivr.com/ and their many sponsors for
>             99.4% of our files.
>
>             Here is an estimated distribution of sstate files
>             currently available:
>             1 KB-4 KB: 103168
>             4 KB-16 KB: 1218048
>             16 KB-64 KB: 1886976
>             64 KB-256 KB: 1225216
>             256 KB-1 MB: 170752
>             1 MB-4 MB: 92928
>             4 MB-16 MB: 83200
>             16 MB-64 MB: 40448
>             64 MB-256 MB: 17664
>             256 MB-1 GB: 7936
>             1 GB-4 GB: 2560
>
>             I'm still working on a CDN solution for the larger files
>             but we can begin testing
>             https://cdn.jsdelivr.net/yocto/sstate today.
>
>             Here is an example link to a file that is currently
>             popular from each location:
>
>             http://sstate.yoctoproject.org/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>
>             https://cdn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>
>             I'm also attaching a list of the largest files in sstate.
>             Anything we can do to reduce the size of these or to split
>             them into smaller pieces will help with hosting and with
>             the user's download experience.
>
>             -- 
>             Michael Halstead
>             Linux Foundation / Yocto Project
>             Systems Operations Engineer
>
>
>
>         -- 
>         Michael Halstead
>         Linux Foundation / Yocto Project
>         Systems Operations Engineer
>
>
>
>     -- 
>     Michael Halstead
>     Linux Foundation / Yocto Project
>     Systems Operations Engineer
>
>
>
> -- 
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61088): https://lists.yoctoproject.org/g/yocto/message/61088
> Mute This Topic: https://lists.yoctoproject.org/mt/101525879/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/8702355/3616698/227989771/xyzzy [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


