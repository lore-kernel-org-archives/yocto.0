Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AC25CE7A89
	for <webhook@archiver.kernel.org>; Sat, 23 Sep 2023 20:40:14 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web10.28560.1695501613506854043
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Sep 2023 13:40:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hsvGIufZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1d6b4735158so2368056fac.0
        for <yocto@lists.yoctoproject.org>; Sat, 23 Sep 2023 13:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695501613; x=1696106413; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZkjGQCs+f79giqIcNKjxoEbhSWMiOGz72ttTgS3bfb8=;
        b=hsvGIufZ4kmcQNdi5nOs6tNr0dT2wB4BZH07hQydi+jcaQ9AAl5OBiWHRI+bnvUEVY
         UGtBdIgGI6eR1Vtz6Z6EZorgpkAoDCrmsqa8ueoW8wrn3A+SgGmqr+uLMbmD3z5zVTQC
         u5TWFCzQMraCq4FxIiGQdm9DG1AewgUtO6sUTlpp4/BpeKH0BuwMdMqfATDqCJ/GANF7
         UwZASQafW08TInWHindI6B74uZWHo166zTkGFwq7zCk1pR2FFqPaoHQkzLbik3YR6Qyf
         KIqQg4fRuO4/hTF/kSlWYvS3dxihc17+Ld11n8/BkIpRlCEQBOi2vKZh6MuX4rSYf+cB
         xbfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695501613; x=1696106413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZkjGQCs+f79giqIcNKjxoEbhSWMiOGz72ttTgS3bfb8=;
        b=ZFn9Dsxf2HMpcXaktZJYT+G9AdQggatHBFis/VcalInU7OroEXllvN1E7ZTHIQkQWZ
         0EPUJR7qPO4DPcfMN8B9yMHuoih+EJDeUrWWxaZXmbnu3BzdqJTASf+rpstjLwAzmrPy
         nJenfmKJqoZvmSCtAwlVgjP0jspJk4zO3DD1oAO/d+SOlpS3DX6Hrd9TzAQDW9ljyOAc
         yfGlczBYLlFdED5n7yn3S1DKAPp2SejMUfDKapw1+7aWPjsebhmzkmpSk2E4ICOAMzNz
         7f7xb3+IinEmBjb9joOIW2dW7QglbmhDlSeS6To3NRsZ+mDRee44SzNNKV0Pm9EeGz0j
         t0Rw==
X-Gm-Message-State: AOJu0Yweb9E+8wcsm8RBQ4pAH52SzYBMlvuYnjW1kkL/QvPOrbU4hJLV
	uBAsrcKB6lFAVWNzYVP5+JLOKIIvrauDd9rT/uQ=
X-Google-Smtp-Source: AGHT+IEN4zXts6st7OH9VN7A/Jplypry0HxjKzseCn5IFuD0n1t2hg0ZhkFIhPPqnUiKD1V1Th8ldOrHRNBEzXaPy/g=
X-Received: by 2002:a05:6870:858d:b0:1d6:51aa:13b2 with SMTP id
 f13-20020a056870858d00b001d651aa13b2mr1819478oal.19.1695501612632; Sat, 23
 Sep 2023 13:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
 <CADfgfoY8c3jiGNhbVj8nETsRNxwsxZ6vg3JSqKWX8XAzTRX1tA@mail.gmail.com>
 <CADfgfoarvGQgNSHbT0gHAChtKofgeZrv1rciJq-W9iB67jq4kw@mail.gmail.com> <CADfgfoa+ztGTc-Pijy_a83MZKH3VyhJiqxj0Gg=YOMjujwMCVA@mail.gmail.com>
In-Reply-To: <CADfgfoa+ztGTc-Pijy_a83MZKH3VyhJiqxj0Gg=YOMjujwMCVA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Sep 2023 13:39:46 -0700
Message-ID: <CAMKF1srL4Y4oPNUebHvUBeHwC=T4fWLbhEQAz=Uf8a98xWzFwA@mail.gmail.com>
Subject: Re: [yocto] CDN for sstate.yoctoproject.org
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, Ross Burton <Ross.Burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Sep 2023 20:40:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61089

For fun, I tried scratch build of core-image-sato-sdk from master-next
+ my changes with the new SSTATE_MIRROR

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
##########|
Time: 0:02:16
Checking sstate mirror object availability: 100%
|##########################################################################=
#############################################################|
Time: 0:02:26
Sstate summary: Wanted 5040 Local 3 Mirrors 5024 Missed 13 Current 0
(99% match, 0% complete)

...

NOTE: Tasks Summary: Attempted 10124 tasks of which 10092 didn't need
to be rerun and all succeeded.

So match percentage is cool.

Elapsed time: 799.86 seconds

which is approx 13 mins so pretty cool given that sstate download is
also included in this time.

On Sat, Sep 23, 2023 at 12:53=E2=80=AFPM Michael Halstead
<mhalstead@linuxfoundation.org> wrote:
>
> When adding https://cdn.jsdelivr.net/yocto/sstate/all please remove any r=
eference to sstate.yoctoproject.org from SSTATE_MIRRORS to ensure a proper =
test.
>
> Thank you
>
> On Sat, Sep 23, 2023 at 12:51=E2=80=AFPM Michael Halstead <mhalstead@linu=
xfoundation.org> wrote:
>>
>> After some workshopping this morning we have a solution for larger files=
. Almost every package is now available with CDN acceleration. For files ov=
er 64MB the fetcher will need to follow a series of redirects to work prope=
rly. Files under 64MB will be served fast from every region. Larger files w=
ill be proxyed and cached on a smaller network of servers that can handle t=
hem. Once cached they will be stored for up to a month. Because sstate is i=
mmutable that means fast access after the first use in a region.
>>
>> Set SSTATE_MIRRORS to include https://cdn.jsdelivr.net/yocto/sstate/all =
or http://cdn.jsdelivr.net/yocto/sstate/all, test it out, and report back.
>>
>> If we want the system to perform as fast as possible we need to change S=
STATE to work with 64MB file segments but that's a discussion to have after=
 this solution is tested.
>>
>>
>> On Fri, Sep 22, 2023 at 12:03=E2=80=AFPM Michael Halstead <mhalstead@lin=
uxfoundation.org> wrote:
>>>
>>> Here are packages and size ranges that are not yet served via CDN. Hope=
fully testing on the smaller files is possible while we figure out a soluti=
on for these.
>>>
>>> assimp 75M 76M
>>> binutils 64M 100M
>>> boost 68M 148M
>>> ceres-solver 167M 182M
>>> cmake 157M 553M
>>> ffmpeg 68M 69M
>>> gcc 127M 681M
>>> gcc-cross-aarch64 64M 102M
>>> gcc-cross-arm 64M 72M
>>> gcc-cross-i686 65M 80M
>>> gcc-cross-mips 65M 69M
>>> gcc-cross-mips64 64M 69M
>>> gcc-cross-powerpc 64M 72M
>>> gcc-cross-x86_64 65M 104M
>>> gcc-crosssdk-aarch64-pokysdk-linux 65M 75M
>>> gcc-crosssdk-i686-oesdk-linux 65M 77M
>>> gcc-crosssdk-i686-pokysdk-linux 65M 79M
>>> gcc-crosssdk-i686-w64-mingw32 66M 78M
>>> gcc-crosssdk-x86_64-oesdk-linux 65M 78M
>>> gcc-crosssdk-x86_64-pokysdk-linux 65M 80M
>>> gcc-crosssdk-x86_64-w64-mingw32 67M 79M
>>> gdb 66M 105M
>>> ghostscript 64M 115M
>>> git 68M 90M
>>> glibc-locale 81M 228M
>>> go 67M 67M
>>> go-binary-native 82M 82M
>>> go-cross-core2-32 98M 100M
>>> go-cross-core2-64 93M 100M
>>> go-cross-corei7-64 98M 99M
>>> go-cross-cortexa15t2hf-neon 99M 99M
>>> go-cross-cortexa57 93M 99M
>>> go-cross-cortexa8hf-neon 99M 100M
>>> go-cross-mips32r2 98M 99M
>>> go-cross-mips64 99M 99M
>>> go-cross-mips64r2 99M 99M
>>> go-native 86M 86M
>>> go-runtime 64M 82M
>>> grpc 74M 102M
>>> hdf5 78M 137M
>>> influxdb 76M 98M
>>> intel-media-driver 68M 132M
>>> jemalloc 164M 164M
>>> kea 65M 153M
>>> lib32-binutils 64M 70M
>>> lib32-boost 77M 122M
>>> lib32-cmake 158M 305M
>>> lib32-gcc 144M 390M
>>> lib32-gcc-cross-i686 65M 79M
>>> lib32-gcc-cross-mips 65M 69M
>>> lib32-ghostscript 65M 83M
>>> lib32-git 65M 65M
>>> lib32-glibc-locale 81M 228M
>>> lib32-go-cross-x86 98M 99M
>>> lib32-kea 64M 88M
>>> lib32-linux-firmware 275M 419M
>>> lib32-llvm 1126.4M 2662.4M
>>> lib32-ltp 77M 305M
>>> lib32-mesa 65M 68M
>>> lib32-openssl 119M 360M
>>> lib32-piglit 106M 106M
>>> lib32-qemu 275M 639M
>>> lib32-rust 93M 129M
>>> lib32-rust-llvm 64M 76M
>>> lib32-spirv-tools 68M 107M
>>> lib32-valgrind 68M 89M
>>> lib32-vulkan-demos 74M 74M
>>> lib32-vulkan-validation-layers 65M 101M
>>> lib32-webkitgtk 1126.4M 927M
>>> lib64-boost 75M 119M
>>> lib64-gcc 151M 401M
>>> lib64-gcc-cross-mips64 65M 69M
>>> lib64-gcc-cross-x86_64 65M 80M
>>> lib64-glibc-locale 82M 228M
>>> lib64-go-cross-x86_64 98M 99M
>>> lib64-go-runtime 68M 81M
>>> lib64-ltp 67M 347M
>>> lib64-mesa 66M 68M
>>> lib64-openssl 276M 411M
>>> lib64-rust 97M 123M
>>> lib64-rust-llvm 64M 67M
>>> lib64-valgrind 65M 84M
>>> libyang 93M 93M
>>> linux-firmware 275M 419M
>>> linux-intel 120M 395M
>>> linux-yocto 66M 537M
>>> linux-yocto-rt 174M 287M
>>> llvm 1126.4M 3481.6M
>>> llvm-native 71M 88M
>>> ltp 64M 598M
>>> mariadb 1331.2M 966M
>>> mariadb-native 237M 259M
>>> mesa 64M 113M
>>> minifi-cpp 155M 214M
>>> mozjs-102 183M 255M
>>> nativesdk-glibc-locale 81M 226M
>>> nativesdk-qemu 245M 644M
>>> nativesdk-rust 82M 125M
>>> nativesdk-rust-llvm 65M 73M
>>> nodejs 1024.0M 723M
>>> opencv 185M 237M
>>> opengl-es-cts 406M 560M
>>> openssl 92M 685M
>>> php 67M 68M
>>> piglit 106M 106M
>>> poco 75M 107M
>>> python3-grpcio 65M 88M
>>> python3-wxgtk4 70M 100M
>>> qemu 1228.8M 929M
>>> qemu-system-native 65M 71M
>>> renderdoc 67M 82M
>>> rocksdb 177M 272M
>>> rust 85M 140M
>>> rust-llvm 64M 79M
>>> rust-llvm-native 287M 418M
>>> rust-native 78M 85M
>>> spirv-tools 64M 195M
>>> systemd 69M 71M
>>> tesseract-lang 369M 451M
>>> upm 82M 82M
>>> valgrind 64M 128M
>>> vsomeip 82M 149M
>>> vulkan-cts 592M 833M
>>> vulkan-demos 73M 138M
>>> vulkan-validation-layers 65M 108M
>>> webkitgtk 1024.0M 995M
>>> webkitgtk3 1126.4M 1638.4M
>>> wireshark 65M 85M
>>> wxwidgets 70M 88M
>>>
>>> On Fri, Sep 22, 2023 at 10:32=E2=80=AFAM Michael Halstead <mhalstead@li=
nuxfoundation.org> wrote:
>>>>
>>>> Right now we have https://cdn.jsdelivr.net/yocto/sstate set up as a CD=
N mirroring proxy endpoint. It's fast and completely free to the project. H=
owever, it will only work for files smaller than 64MB and will send a redir=
ect to the main server at sstate.yoctoproject.org for files larger than 64M=
B.
>>>>
>>>> The good news is that we have a fast free CDN provided by https://www.=
jsdelivr.com/ and their many sponsors for 99.4% of our files.
>>>>
>>>> Here is an estimated distribution of sstate files currently available:
>>>> 1 KB-4 KB: 103168
>>>> 4 KB-16 KB: 1218048
>>>> 16 KB-64 KB: 1886976
>>>> 64 KB-256 KB: 1225216
>>>> 256 KB-1 MB: 170752
>>>> 1 MB-4 MB: 92928
>>>> 4 MB-16 MB: 83200
>>>> 16 MB-64 MB: 40448
>>>> 64 MB-256 MB: 17664
>>>> 256 MB-1 GB: 7936
>>>> 1 GB-4 GB: 2560
>>>>
>>>> I'm still working on a CDN solution for the larger files but we can be=
gin testing https://cdn.jsdelivr.net/yocto/sstate today.
>>>>
>>>> Here is an example link to a file that is currently popular from each =
location:
>>>>
>>>> http://sstate.yoctoproject.org/all/universal/c6/81/sstate:re2c-native:=
x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bd=
aa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>>>>
>>>> https://cdn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-=
native:x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9=
441d9bdaa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>>>>
>>>> I'm also attaching a list of the largest files in sstate. Anything we =
can do to reduce the size of these or to split them into smaller pieces wil=
l help with hosting and with the user's download experience.
>>>>
>>>> --
>>>> Michael Halstead
>>>> Linux Foundation / Yocto Project
>>>> Systems Operations Engineer
>>>
>>>
>>>
>>> --
>>> Michael Halstead
>>> Linux Foundation / Yocto Project
>>> Systems Operations Engineer
>>
>>
>>
>> --
>> Michael Halstead
>> Linux Foundation / Yocto Project
>> Systems Operations Engineer
>
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61088): https://lists.yoctoproject.org/g/yocto/messag=
e/61088
> Mute This Topic: https://lists.yoctoproject.org/mt/101525879/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914=
/1837948400/xyzzy [raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

