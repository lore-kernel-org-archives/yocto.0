Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46CDCE7A88
	for <webhook@archiver.kernel.org>; Sat, 23 Sep 2023 19:51:43 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.27966.1695498700284442637
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Sep 2023 12:51:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=B1i74XR9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.49, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50308217223so6340419e87.3
        for <yocto@lists.yoctoproject.org>; Sat, 23 Sep 2023 12:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695498698; x=1696103498; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J/xae/qu+2WGHvC0bfIWCNLRMSy+5rHDej2NSbkID90=;
        b=B1i74XR90BDXdirkXSIA5ap1BF6z1v2SDGiXr2WxzhbsZC7sbYpk1GjgfWiyvLMEtJ
         i/bhicIr6w0dlmiGc0tdDGjcoMVvjlxm9yqC3DGkIUPTtLzaMVV2QS84jTDyL4C4bKt9
         2gIFFm9/kUGy/79YvNwqsG+85vUys8CjKjE6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695498698; x=1696103498;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/xae/qu+2WGHvC0bfIWCNLRMSy+5rHDej2NSbkID90=;
        b=vt04dRFPUqce5kkK8DpPiIp2QpkYWf/LqhJlWMFJYjAZpDyPzS2IlUnkW3xck8KqEf
         SCwrvx0kqCHFfnm166kb/lsyiFkY6Hn2ocgbbJSAQW0UozDudYwC2b/RvsfyKmTYzV8I
         Bz5nQz3+5fuL8QAJTniOUXaIOs2R6JjrAVsvah9sH5RJZ8whadC1dr4NypYRYt7s/IHk
         v1216AHHz6fXwES/qG/jb+PWxoexJo89XeeZewWwtKlzWf8LcN5sX8AnLVWcUuVbZJ9c
         CmdhXZK/vRMrbcFw/x71z7t50KKTnTbHygutzZztztG3xvdmLilNddUgCDr8jjCmcKXG
         4OwQ==
X-Gm-Message-State: AOJu0YyAUQMpHShHjhKlksTC3K/3spoztpT9HVpCKaEeIY/pjsWKJYs7
	ZrrWSKhP9g+cb3/PHqKYq7iQ04LozU3YaN42iz6QHQ==
X-Google-Smtp-Source: AGHT+IGxiYgT8ESTw0oJd86tcw2lLIQls/jAdS1G1Doo7gC+L0DDhV3aam5qWfpXvOqiDWs76xGH9lEK85ffixqG22U=
X-Received: by 2002:ac2:4f07:0:b0:4f9:51ac:41eb with SMTP id
 k7-20020ac24f07000000b004f951ac41ebmr2691548lfr.16.1695498698203; Sat, 23 Sep
 2023 12:51:38 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
 <CADfgfoY8c3jiGNhbVj8nETsRNxwsxZ6vg3JSqKWX8XAzTRX1tA@mail.gmail.com>
In-Reply-To: <CADfgfoY8c3jiGNhbVj8nETsRNxwsxZ6vg3JSqKWX8XAzTRX1tA@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Sat, 23 Sep 2023 12:51:26 -0700
Message-ID: <CADfgfoarvGQgNSHbT0gHAChtKofgeZrv1rciJq-W9iB67jq4kw@mail.gmail.com>
Subject: Re: CDN for sstate.yoctoproject.org
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Ross Burton <Ross.Burton@arm.com>
Content-Type: multipart/alternative; boundary="0000000000009fc26306060c0d82"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Sep 2023 19:51:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61087

--0000000000009fc26306060c0d82
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After some workshopping this morning we have a solution for larger files.
Almost every package is now available with CDN acceleration. For files over
64MB the fetcher will need to follow a series of redirects to work
properly. Files under 64MB will be served fast from every region. Larger
files will be proxyed and cached on a smaller network of servers that can
handle them. Once cached they will be stored for up to a month. Because
sstate is immutable that means fast access after the first use in a region.

Set SSTATE_MIRRORS
<https://docs.yoctoproject.org/ref-manual/variables.html#term-SSTATE_MIRROR=
S>
to include https://cdn.jsdelivr.net/yocto/sstate/all or
http://cdn.jsdelivr.net/yocto/sstate/all, test it out, and report back.

If we want the system to perform as fast as possible we need to change
SSTATE to work with 64MB file segments but that's a discussion to have
after this solution is tested.


On Fri, Sep 22, 2023 at 12:03=E2=80=AFPM Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> Here are packages and size ranges that are not yet served via CDN.
> Hopefully testing on the smaller files is possible while we figure out
> a solution for these.
>
> assimp 75M 76M
> binutils 64M 100M
> boost 68M 148M
> ceres-solver 167M 182M
> cmake 157M 553M
> ffmpeg 68M 69M
> gcc 127M 681M
> gcc-cross-aarch64 64M 102M
> gcc-cross-arm 64M 72M
> gcc-cross-i686 65M 80M
> gcc-cross-mips 65M 69M
> gcc-cross-mips64 64M 69M
> gcc-cross-powerpc 64M 72M
> gcc-cross-x86_64 65M 104M
> gcc-crosssdk-aarch64-pokysdk-linux 65M 75M
> gcc-crosssdk-i686-oesdk-linux 65M 77M
> gcc-crosssdk-i686-pokysdk-linux 65M 79M
> gcc-crosssdk-i686-w64-mingw32 66M 78M
> gcc-crosssdk-x86_64-oesdk-linux 65M 78M
> gcc-crosssdk-x86_64-pokysdk-linux 65M 80M
> gcc-crosssdk-x86_64-w64-mingw32 67M 79M
> gdb 66M 105M
> ghostscript 64M 115M
> git 68M 90M
> glibc-locale 81M 228M
> go 67M 67M
> go-binary-native 82M 82M
> go-cross-core2-32 98M 100M
> go-cross-core2-64 93M 100M
> go-cross-corei7-64 98M 99M
> go-cross-cortexa15t2hf-neon 99M 99M
> go-cross-cortexa57 93M 99M
> go-cross-cortexa8hf-neon 99M 100M
> go-cross-mips32r2 98M 99M
> go-cross-mips64 99M 99M
> go-cross-mips64r2 99M 99M
> go-native 86M 86M
> go-runtime 64M 82M
> grpc 74M 102M
> hdf5 78M 137M
> influxdb 76M 98M
> intel-media-driver 68M 132M
> jemalloc 164M 164M
> kea 65M 153M
> lib32-binutils 64M 70M
> lib32-boost 77M 122M
> lib32-cmake 158M 305M
> lib32-gcc 144M 390M
> lib32-gcc-cross-i686 65M 79M
> lib32-gcc-cross-mips 65M 69M
> lib32-ghostscript 65M 83M
> lib32-git 65M 65M
> lib32-glibc-locale 81M 228M
> lib32-go-cross-x86 98M 99M
> lib32-kea 64M 88M
> lib32-linux-firmware 275M 419M
> lib32-llvm 1126.4M 2662.4M
> lib32-ltp 77M 305M
> lib32-mesa 65M 68M
> lib32-openssl 119M 360M
> lib32-piglit 106M 106M
> lib32-qemu 275M 639M
> lib32-rust 93M 129M
> lib32-rust-llvm 64M 76M
> lib32-spirv-tools 68M 107M
> lib32-valgrind 68M 89M
> lib32-vulkan-demos 74M 74M
> lib32-vulkan-validation-layers 65M 101M
> lib32-webkitgtk 1126.4M 927M
> lib64-boost 75M 119M
> lib64-gcc 151M 401M
> lib64-gcc-cross-mips64 65M 69M
> lib64-gcc-cross-x86_64 65M 80M
> lib64-glibc-locale 82M 228M
> lib64-go-cross-x86_64 98M 99M
> lib64-go-runtime 68M 81M
> lib64-ltp 67M 347M
> lib64-mesa 66M 68M
> lib64-openssl 276M 411M
> lib64-rust 97M 123M
> lib64-rust-llvm 64M 67M
> lib64-valgrind 65M 84M
> libyang 93M 93M
> linux-firmware 275M 419M
> linux-intel 120M 395M
> linux-yocto 66M 537M
> linux-yocto-rt 174M 287M
> llvm 1126.4M 3481.6M
> llvm-native 71M 88M
> ltp 64M 598M
> mariadb 1331.2M 966M
> mariadb-native 237M 259M
> mesa 64M 113M
> minifi-cpp 155M 214M
> mozjs-102 183M 255M
> nativesdk-glibc-locale 81M 226M
> nativesdk-qemu 245M 644M
> nativesdk-rust 82M 125M
> nativesdk-rust-llvm 65M 73M
> nodejs 1024.0M 723M
> opencv 185M 237M
> opengl-es-cts 406M 560M
> openssl 92M 685M
> php 67M 68M
> piglit 106M 106M
> poco 75M 107M
> python3-grpcio 65M 88M
> python3-wxgtk4 70M 100M
> qemu 1228.8M 929M
> qemu-system-native 65M 71M
> renderdoc 67M 82M
> rocksdb 177M 272M
> rust 85M 140M
> rust-llvm 64M 79M
> rust-llvm-native 287M 418M
> rust-native 78M 85M
> spirv-tools 64M 195M
> systemd 69M 71M
> tesseract-lang 369M 451M
> upm 82M 82M
> valgrind 64M 128M
> vsomeip 82M 149M
> vulkan-cts 592M 833M
> vulkan-demos 73M 138M
> vulkan-validation-layers 65M 108M
> webkitgtk 1024.0M 995M
> webkitgtk3 1126.4M 1638.4M
> wireshark 65M 85M
> wxwidgets 70M 88M
>
> On Fri, Sep 22, 2023 at 10:32=E2=80=AFAM Michael Halstead <
> mhalstead@linuxfoundation.org> wrote:
>
>> Right now we have https://cdn.jsdelivr.net/yocto/sstate set up as a CDN
>> mirroring proxy endpoint. It's fast and completely free to the project.
>> However, it will only work for files smaller than 64MB and will send a
>> redirect to the main server at sstate.yoctoproject.org for files larger
>> than 64MB.
>>
>> The good news is that we have a fast free CDN provided by
>> https://www.jsdelivr.com/ and their many sponsors for 99.4% of our files=
.
>>
>> Here is an estimated distribution of sstate files currently available:
>> 1 KB-4 KB: 103168
>> 4 KB-16 KB: 1218048
>> 16 KB-64 KB: 1886976
>> 64 KB-256 KB: 1225216
>> 256 KB-1 MB: 170752
>> 1 MB-4 MB: 92928
>> 4 MB-16 MB: 83200
>> 16 MB-64 MB: 40448
>> 64 MB-256 MB: 17664
>> 256 MB-1 GB: 7936
>> 1 GB-4 GB: 2560
>>
>> I'm still working on a CDN solution for the larger files but we can begi=
n
>> testing https://cdn.jsdelivr.net/yocto/sstate today.
>>
>> Here is an example link to a file that is currently popular from each
>> location:
>>
>>
>> http://sstate.yoctoproject.org/all/universal/c6/81/sstate:re2c-native:x8=
6_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa=
82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>>
>>
>> https://cdn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-na=
tive:x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c944=
1d9bdaa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>>
>> I'm also attaching a list of the largest files in sstate. Anything we ca=
n
>> do to reduce the size of these or to split them into smaller pieces will
>> help with hosting and with the user's download experience.
>>
>> --
>> Michael Halstead
>> Linux Foundation / Yocto Project
>> Systems Operations Engineer
>>
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>


--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000009fc26306060c0d82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After some workshopping=C2=A0this=C2=A0morning we have a s=
olution for larger files. Almost every package is now available with CDN ac=
celeration. For files over 64MB the fetcher will need to follow a series of=
 redirects to work properly. Files under 64MB will be served fast from ever=
y region. Larger files will be proxyed=C2=A0and cached on a smaller network=
 of servers that can handle them. Once cached they will be stored for up to=
 a month. Because sstate=C2=A0is immutable that means fast access after the=
 first use in a region.<div><br></div><div>Set=C2=A0<a href=3D"https://docs=
.yoctoproject.org/ref-manual/variables.html#term-SSTATE_MIRRORS">SSTATE_MIR=
RORS</a> to include=C2=A0<a href=3D"https://cdn.jsdelivr.net/yocto/sstate/a=
ll">https://cdn.jsdelivr.net/yocto/sstate/all</a>=C2=A0or=C2=A0<a href=3D"h=
ttp://cdn.jsdelivr.net/yocto/sstate/all">http://cdn.jsdelivr.net/yocto/ssta=
te/all</a>, test it out, and report back.</div><div><br></div><div>If we wa=
nt the system to perform as fast as=C2=A0possible we need to change SSTATE =
to work with 64MB file segments but that&#39;s a discussion to have after t=
his solution is tested.</div></div><div dir=3D"ltr"><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 22, 202=
3 at 12:03=E2=80=AFPM Michael Halstead &lt;<a href=3D"mailto:mhalstead@linu=
xfoundation.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Here are packages and size ranges that are not yet served via CDN. Ho=
pefully testing on the smaller files is possible while we figure out a=C2=
=A0solution for these.<div><br></div><div>assimp	 75M	 76M<br>binutils	 64M=
	100M<br>boost	 68M	148M<br>ceres-solver	167M	182M<br>cmake	157M	553M<br>ff=
mpeg	 68M	 69M<br>gcc	127M	681M<br>gcc-cross-aarch64	 64M	102M<br>gcc-cross=
-arm	 64M	 72M<br>gcc-cross-i686	 65M	 80M<br>gcc-cross-mips	 65M	 69M<br>g=
cc-cross-mips64	 64M	 69M<br>gcc-cross-powerpc	 64M	 72M<br>gcc-cross-x86_6=
4	 65M	104M<br>gcc-crosssdk-aarch64-pokysdk-linux	 65M	 75M<br>gcc-crosssdk=
-i686-oesdk-linux	 65M	 77M<br>gcc-crosssdk-i686-pokysdk-linux	 65M	 79M<br=
>gcc-crosssdk-i686-w64-mingw32	 66M	 78M<br>gcc-crosssdk-x86_64-oesdk-linux=
	 65M	 78M<br>gcc-crosssdk-x86_64-pokysdk-linux	 65M	 80M<br>gcc-crosssdk-x=
86_64-w64-mingw32	 67M	 79M<br>gdb	 66M	105M<br>ghostscript	 64M	115M<br>gi=
t	 68M	 90M<br>glibc-locale	 81M	228M<br>go	 67M	 67M<br>go-binary-native	 =
82M	 82M<br>go-cross-core2-32	 98M	100M<br>go-cross-core2-64	 93M	100M<br>g=
o-cross-corei7-64	 98M	 99M<br>go-cross-cortexa15t2hf-neon	 99M	 99M<br>go-=
cross-cortexa57	 93M	 99M<br>go-cross-cortexa8hf-neon	 99M	100M<br>go-cross=
-mips32r2	 98M	 99M<br>go-cross-mips64	 99M	 99M<br>go-cross-mips64r2	 99M	=
 99M<br>go-native	 86M	 86M<br>go-runtime	 64M	 82M<br>grpc	 74M	102M<br>hd=
f5	 78M	137M<br>influxdb	 76M	 98M<br>intel-media-driver	 68M	132M<br>jemal=
loc	164M	164M<br>kea	 65M	153M<br>lib32-binutils	 64M	 70M<br>lib32-boost	 =
77M	122M<br>lib32-cmake	158M	305M<br>lib32-gcc	144M	390M<br>lib32-gcc-cross=
-i686	 65M	 79M<br>lib32-gcc-cross-mips	 65M	 69M<br>lib32-ghostscript	 65M=
	 83M<br>lib32-git	 65M	 65M<br>lib32-glibc-locale	 81M	228M<br>lib32-go-cr=
oss-x86	 98M	 99M<br>lib32-kea	 64M	 88M<br>lib32-linux-firmware	275M	419M<=
br>lib32-llvm	1126.4M	2662.4M<br>lib32-ltp	 77M	305M<br>lib32-mesa	 65M	 68=
M<br>lib32-openssl	119M	360M<br>lib32-piglit	106M	106M<br>lib32-qemu	275M	6=
39M<br>lib32-rust	 93M	129M<br>lib32-rust-llvm	 64M	 76M<br>lib32-spirv-too=
ls	 68M	107M<br>lib32-valgrind	 68M	 89M<br>lib32-vulkan-demos	 74M	 74M<br=
>lib32-vulkan-validation-layers	 65M	101M<br>lib32-webkitgtk	1126.4M	927M<b=
r>lib64-boost	 75M	119M<br>lib64-gcc	151M	401M<br>lib64-gcc-cross-mips64	 6=
5M	 69M<br>lib64-gcc-cross-x86_64	 65M	 80M<br>lib64-glibc-locale	 82M	228M=
<br>lib64-go-cross-x86_64	 98M	 99M<br>lib64-go-runtime	 68M	 81M<br>lib64-=
ltp	 67M	347M<br>lib64-mesa	 66M	 68M<br>lib64-openssl	276M	411M<br>lib64-r=
ust	 97M	123M<br>lib64-rust-llvm	 64M	 67M<br>lib64-valgrind	 65M	 84M<br>l=
ibyang	 93M	 93M<br>linux-firmware	275M	419M<br>linux-intel	120M	395M<br>li=
nux-yocto	 66M	537M<br>linux-yocto-rt	174M	287M<br>llvm	1126.4M	3481.6M<br>=
llvm-native	 71M	 88M<br>ltp	 64M	598M<br>mariadb	1331.2M	966M<br>mariadb-n=
ative	237M	259M<br>mesa	 64M	113M<br>minifi-cpp	155M	214M<br>mozjs-102	183M=
	255M<br>nativesdk-glibc-locale	 81M	226M<br>nativesdk-qemu	245M	644M<br>na=
tivesdk-rust	 82M	125M<br>nativesdk-rust-llvm	 65M	 73M<br>nodejs	1024.0M	7=
23M<br>opencv	185M	237M<br>opengl-es-cts	406M	560M<br>openssl	 92M	685M<br>=
php	 67M	 68M<br>piglit	106M	106M<br>poco	 75M	107M<br>python3-grpcio	 65M	=
 88M<br>python3-wxgtk4	 70M	100M<br>qemu	1228.8M	929M<br>qemu-system-native=
	 65M	 71M<br>renderdoc	 67M	 82M<br>rocksdb	177M	272M<br>rust	 85M	140M<br=
>rust-llvm	 64M	 79M<br>rust-llvm-native	287M	418M<br>rust-native	 78M	 85M=
<br>spirv-tools	 64M	195M<br>systemd	 69M	 71M<br>tesseract-lang	369M	451M<=
br>upm	 82M	 82M<br>valgrind	 64M	128M<br>vsomeip	 82M	149M<br>vulkan-cts	5=
92M	833M<br>vulkan-demos	 73M	138M<br>vulkan-validation-layers	 65M	108M<br=
>webkitgtk	1024.0M	995M<br>webkitgtk3	1126.4M	1638.4M<br>wireshark	 65M	 85=
M<br>wxwidgets	 70M	 88M<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 22, 2023 at 10:32=E2=80=AFAM =
Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org" targe=
t=3D"_blank">mhalstead@linuxfoundation.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Right now we hav=
e=C2=A0<a href=3D"https://cdn.jsdelivr.net/yocto/sstate" target=3D"_blank">=
https://cdn.jsdelivr.net/yocto/sstate</a> set up as a CDN mirroring proxy e=
ndpoint. It&#39;s fast and completely free to the project. However, it=C2=
=A0will only work for files smaller than 64MB and will send a redirect to t=
he main=C2=A0server at <a href=3D"http://sstate.yoctoproject.org" target=3D=
"_blank">sstate.yoctoproject.org</a> for files larger than 64MB.<div><br></=
div><div>The good news is that we have a fast free CDN provided by=C2=A0<a =
href=3D"https://www.jsdelivr.com/" target=3D"_blank">https://www.jsdelivr.c=
om/</a> and their many sponsors=C2=A0for 99.4% of our files.<br clear=3D"al=
l"><div><br></div><div><div>Here is an estimated distribution of sstate fil=
es currently available:</div><div>1 KB-4 KB: 103168<br>4 KB-16 KB: 1218048<=
br>16 KB-64 KB: 1886976<br>64 KB-256 KB: 1225216<br>256 KB-1 MB: 170752<br>=
1 MB-4 MB: 92928<br>4 MB-16 MB: 83200<br>16 MB-64 MB: 40448<br>64 MB-256 MB=
: 17664<br>256 MB-1 GB: 7936<br>1 GB-4 GB: 2560</div></div><div><br></div><=
div>I&#39;m still working on a CDN solution for the larger files but we can=
 begin testing=C2=A0<a href=3D"https://cdn.jsdelivr.net/yocto/sstate" targe=
t=3D"_blank">https://cdn.jsdelivr.net/yocto/sstate</a>=C2=A0today.</div><di=
v><br></div><div>Here is an example link to a file that is currently popula=
r from each location:</div><div><br></div><div><a href=3D"http://sstate.yoc=
toproject.org/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:r0:x8=
6_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e6246e_de=
ploy_source_date_epoch.tar.zst" target=3D"_blank">http://sstate.yoctoprojec=
t.org/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:r0:x86_64:11:=
c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e6246e_deploy_sou=
rce_date_epoch.tar.zst</a><br></div><div><br></div><div><a href=3D"https://=
cdn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-native:x86_64=
-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa8231=
9a12e96e6246e_deploy_source_date_epoch.tar.zst" target=3D"_blank">https://c=
dn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-native:x86_64-=
linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319=
a12e96e6246e_deploy_source_date_epoch.tar.zst</a><br></div><div><br></div><=
div>I&#39;m also attaching a list of the largest files in sstate. Anything =
we can do to reduce the size of these or to split them into smaller pieces =
will help with hosting and with the user&#39;s download experience.</div><d=
iv><br></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Li=
nux Foundation / Yocto Project</div><div>Systems Operations Engineer</div><=
/div></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><=
div>Systems Operations Engineer</div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><=
div>Systems Operations Engineer</div></div></div>

--0000000000009fc26306060c0d82--

