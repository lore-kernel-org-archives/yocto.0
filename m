Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E09CD4850
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 19:03:45 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.5875.1695409417687040556
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 12:03:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L7ZzxX04;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.45, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-50305abe5f0so4076924e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 12:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695409416; x=1696014216; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0N+L4sKDe6uRwEM2Arkf1B0GbGGKDcxcJuZEJUvD+Fc=;
        b=L7ZzxX04lfur9aHoCZ8nBg8zaBp1P5gCQXvVPK+aL2AA2HMKeMvp3f++WdlMFVUCi2
         o1oEZFmZ2R4BHRI6265SfiVEFft4ZO0AlWHXUN4kwmObXd6EJhUh+dkq5vyKw9mDQ1Q+
         rHRciBGH7Km9y3mRdf88ELDfN39IWGm3Vt2oQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695409416; x=1696014216;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0N+L4sKDe6uRwEM2Arkf1B0GbGGKDcxcJuZEJUvD+Fc=;
        b=p+mLonj9wIQ6ijhM0ZY61229nEdWYhbBfTRrjuiclDNW0bPb7L6BQ2c9onunZjXP6H
         bYVlSKGUeFGsgCmDZsPEWfFC70PPaqGTlqQ9rtY10PrnXpo1/IpCHfxZtSl0/8uPIYtD
         O7CLQ7+X4WinC5QLUU4vkuZ0Ws7KvpaG5JfMbDqYVQIra6AVnX5UtN4Ga3z7/OQTEYay
         t/8847lSIpDEFdf2dRqO2SiNSrN/hc6pQgbU34vPcuRsPSBZsOs6QnNi4h6redz3SQVb
         qJHRdKDiqN8lWjLT4PwW+fOIoN4YQBOFG/wm77J1tJ/SHZVunqN6upDvPCpr6/vgEf+E
         QvuQ==
X-Gm-Message-State: AOJu0YzPDXLtYH+Cktk+cwuqHBzL81uRrYTU86CDjc38rs5PkuzagkVo
	w48XmSAw0Lsy2H2+itvZjB2NXARdqkRxXKLVcTgdQg==
X-Google-Smtp-Source: AGHT+IGfT1tOmdEpMgpsp/2wr/OK6rNIg7OmZG6jX5amD9L8EA8ft35D8uW93TPSxRSLadk+GNz+8+Za3Kx1USldWos=
X-Received: by 2002:a19:500b:0:b0:4fd:c844:6a43 with SMTP id
 e11-20020a19500b000000b004fdc8446a43mr337827lfb.43.1695409415619; Fri, 22 Sep
 2023 12:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
In-Reply-To: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 22 Sep 2023 12:03:24 -0700
Message-ID: <CADfgfoY8c3jiGNhbVj8nETsRNxwsxZ6vg3JSqKWX8XAzTRX1tA@mail.gmail.com>
Subject: Re: CDN for sstate.yoctoproject.org
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000f79d8c0605f743a2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 19:03:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61084

--000000000000f79d8c0605f743a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here are packages and size ranges that are not yet served via CDN.
Hopefully testing on the smaller files is possible while we figure out
a solution for these.

assimp 75M 76M
binutils 64M 100M
boost 68M 148M
ceres-solver 167M 182M
cmake 157M 553M
ffmpeg 68M 69M
gcc 127M 681M
gcc-cross-aarch64 64M 102M
gcc-cross-arm 64M 72M
gcc-cross-i686 65M 80M
gcc-cross-mips 65M 69M
gcc-cross-mips64 64M 69M
gcc-cross-powerpc 64M 72M
gcc-cross-x86_64 65M 104M
gcc-crosssdk-aarch64-pokysdk-linux 65M 75M
gcc-crosssdk-i686-oesdk-linux 65M 77M
gcc-crosssdk-i686-pokysdk-linux 65M 79M
gcc-crosssdk-i686-w64-mingw32 66M 78M
gcc-crosssdk-x86_64-oesdk-linux 65M 78M
gcc-crosssdk-x86_64-pokysdk-linux 65M 80M
gcc-crosssdk-x86_64-w64-mingw32 67M 79M
gdb 66M 105M
ghostscript 64M 115M
git 68M 90M
glibc-locale 81M 228M
go 67M 67M
go-binary-native 82M 82M
go-cross-core2-32 98M 100M
go-cross-core2-64 93M 100M
go-cross-corei7-64 98M 99M
go-cross-cortexa15t2hf-neon 99M 99M
go-cross-cortexa57 93M 99M
go-cross-cortexa8hf-neon 99M 100M
go-cross-mips32r2 98M 99M
go-cross-mips64 99M 99M
go-cross-mips64r2 99M 99M
go-native 86M 86M
go-runtime 64M 82M
grpc 74M 102M
hdf5 78M 137M
influxdb 76M 98M
intel-media-driver 68M 132M
jemalloc 164M 164M
kea 65M 153M
lib32-binutils 64M 70M
lib32-boost 77M 122M
lib32-cmake 158M 305M
lib32-gcc 144M 390M
lib32-gcc-cross-i686 65M 79M
lib32-gcc-cross-mips 65M 69M
lib32-ghostscript 65M 83M
lib32-git 65M 65M
lib32-glibc-locale 81M 228M
lib32-go-cross-x86 98M 99M
lib32-kea 64M 88M
lib32-linux-firmware 275M 419M
lib32-llvm 1126.4M 2662.4M
lib32-ltp 77M 305M
lib32-mesa 65M 68M
lib32-openssl 119M 360M
lib32-piglit 106M 106M
lib32-qemu 275M 639M
lib32-rust 93M 129M
lib32-rust-llvm 64M 76M
lib32-spirv-tools 68M 107M
lib32-valgrind 68M 89M
lib32-vulkan-demos 74M 74M
lib32-vulkan-validation-layers 65M 101M
lib32-webkitgtk 1126.4M 927M
lib64-boost 75M 119M
lib64-gcc 151M 401M
lib64-gcc-cross-mips64 65M 69M
lib64-gcc-cross-x86_64 65M 80M
lib64-glibc-locale 82M 228M
lib64-go-cross-x86_64 98M 99M
lib64-go-runtime 68M 81M
lib64-ltp 67M 347M
lib64-mesa 66M 68M
lib64-openssl 276M 411M
lib64-rust 97M 123M
lib64-rust-llvm 64M 67M
lib64-valgrind 65M 84M
libyang 93M 93M
linux-firmware 275M 419M
linux-intel 120M 395M
linux-yocto 66M 537M
linux-yocto-rt 174M 287M
llvm 1126.4M 3481.6M
llvm-native 71M 88M
ltp 64M 598M
mariadb 1331.2M 966M
mariadb-native 237M 259M
mesa 64M 113M
minifi-cpp 155M 214M
mozjs-102 183M 255M
nativesdk-glibc-locale 81M 226M
nativesdk-qemu 245M 644M
nativesdk-rust 82M 125M
nativesdk-rust-llvm 65M 73M
nodejs 1024.0M 723M
opencv 185M 237M
opengl-es-cts 406M 560M
openssl 92M 685M
php 67M 68M
piglit 106M 106M
poco 75M 107M
python3-grpcio 65M 88M
python3-wxgtk4 70M 100M
qemu 1228.8M 929M
qemu-system-native 65M 71M
renderdoc 67M 82M
rocksdb 177M 272M
rust 85M 140M
rust-llvm 64M 79M
rust-llvm-native 287M 418M
rust-native 78M 85M
spirv-tools 64M 195M
systemd 69M 71M
tesseract-lang 369M 451M
upm 82M 82M
valgrind 64M 128M
vsomeip 82M 149M
vulkan-cts 592M 833M
vulkan-demos 73M 138M
vulkan-validation-layers 65M 108M
webkitgtk 1024.0M 995M
webkitgtk3 1126.4M 1638.4M
wireshark 65M 85M
wxwidgets 70M 88M

On Fri, Sep 22, 2023 at 10:32=E2=80=AFAM Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> Right now we have https://cdn.jsdelivr.net/yocto/sstate set up as a CDN
> mirroring proxy endpoint. It's fast and completely free to the project.
> However, it will only work for files smaller than 64MB and will send a
> redirect to the main server at sstate.yoctoproject.org for files larger
> than 64MB.
>
> The good news is that we have a fast free CDN provided by
> https://www.jsdelivr.com/ and their many sponsors for 99.4% of our files.
>
> Here is an estimated distribution of sstate files currently available:
> 1 KB-4 KB: 103168
> 4 KB-16 KB: 1218048
> 16 KB-64 KB: 1886976
> 64 KB-256 KB: 1225216
> 256 KB-1 MB: 170752
> 1 MB-4 MB: 92928
> 4 MB-16 MB: 83200
> 16 MB-64 MB: 40448
> 64 MB-256 MB: 17664
> 256 MB-1 GB: 7936
> 1 GB-4 GB: 2560
>
> I'm still working on a CDN solution for the larger files but we can begin
> testing https://cdn.jsdelivr.net/yocto/sstate today.
>
> Here is an example link to a file that is currently popular from each
> location:
>
>
> http://sstate.yoctoproject.org/all/universal/c6/81/sstate:re2c-native:x86=
_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa8=
2319a12e96e6246e_deploy_source_date_epoch.tar.zst
>
>
> https://cdn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-nat=
ive:x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441=
d9bdaa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>
> I'm also attaching a list of the largest files in sstate. Anything we can
> do to reduce the size of these or to split them into smaller pieces will
> help with hosting and with the user's download experience.
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

--000000000000f79d8c0605f743a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here are packages and size ranges that are not yet served =
via CDN. Hopefully testing on the smaller files is possible while we figure=
 out a=C2=A0solution for these.<div><br></div><div>assimp	 75M	 76M<br>binu=
tils	 64M	100M<br>boost	 68M	148M<br>ceres-solver	167M	182M<br>cmake	157M	5=
53M<br>ffmpeg	 68M	 69M<br>gcc	127M	681M<br>gcc-cross-aarch64	 64M	102M<br>=
gcc-cross-arm	 64M	 72M<br>gcc-cross-i686	 65M	 80M<br>gcc-cross-mips	 65M	=
 69M<br>gcc-cross-mips64	 64M	 69M<br>gcc-cross-powerpc	 64M	 72M<br>gcc-cr=
oss-x86_64	 65M	104M<br>gcc-crosssdk-aarch64-pokysdk-linux	 65M	 75M<br>gcc=
-crosssdk-i686-oesdk-linux	 65M	 77M<br>gcc-crosssdk-i686-pokysdk-linux	 65=
M	 79M<br>gcc-crosssdk-i686-w64-mingw32	 66M	 78M<br>gcc-crosssdk-x86_64-oe=
sdk-linux	 65M	 78M<br>gcc-crosssdk-x86_64-pokysdk-linux	 65M	 80M<br>gcc-c=
rosssdk-x86_64-w64-mingw32	 67M	 79M<br>gdb	 66M	105M<br>ghostscript	 64M	1=
15M<br>git	 68M	 90M<br>glibc-locale	 81M	228M<br>go	 67M	 67M<br>go-binary=
-native	 82M	 82M<br>go-cross-core2-32	 98M	100M<br>go-cross-core2-64	 93M	=
100M<br>go-cross-corei7-64	 98M	 99M<br>go-cross-cortexa15t2hf-neon	 99M	 9=
9M<br>go-cross-cortexa57	 93M	 99M<br>go-cross-cortexa8hf-neon	 99M	100M<br=
>go-cross-mips32r2	 98M	 99M<br>go-cross-mips64	 99M	 99M<br>go-cross-mips6=
4r2	 99M	 99M<br>go-native	 86M	 86M<br>go-runtime	 64M	 82M<br>grpc	 74M	1=
02M<br>hdf5	 78M	137M<br>influxdb	 76M	 98M<br>intel-media-driver	 68M	132M=
<br>jemalloc	164M	164M<br>kea	 65M	153M<br>lib32-binutils	 64M	 70M<br>lib3=
2-boost	 77M	122M<br>lib32-cmake	158M	305M<br>lib32-gcc	144M	390M<br>lib32-=
gcc-cross-i686	 65M	 79M<br>lib32-gcc-cross-mips	 65M	 69M<br>lib32-ghostsc=
ript	 65M	 83M<br>lib32-git	 65M	 65M<br>lib32-glibc-locale	 81M	228M<br>li=
b32-go-cross-x86	 98M	 99M<br>lib32-kea	 64M	 88M<br>lib32-linux-firmware	2=
75M	419M<br>lib32-llvm	1126.4M	2662.4M<br>lib32-ltp	 77M	305M<br>lib32-mesa=
	 65M	 68M<br>lib32-openssl	119M	360M<br>lib32-piglit	106M	106M<br>lib32-qe=
mu	275M	639M<br>lib32-rust	 93M	129M<br>lib32-rust-llvm	 64M	 76M<br>lib32-=
spirv-tools	 68M	107M<br>lib32-valgrind	 68M	 89M<br>lib32-vulkan-demos	 74=
M	 74M<br>lib32-vulkan-validation-layers	 65M	101M<br>lib32-webkitgtk	1126.=
4M	927M<br>lib64-boost	 75M	119M<br>lib64-gcc	151M	401M<br>lib64-gcc-cross-=
mips64	 65M	 69M<br>lib64-gcc-cross-x86_64	 65M	 80M<br>lib64-glibc-locale	=
 82M	228M<br>lib64-go-cross-x86_64	 98M	 99M<br>lib64-go-runtime	 68M	 81M<=
br>lib64-ltp	 67M	347M<br>lib64-mesa	 66M	 68M<br>lib64-openssl	276M	411M<b=
r>lib64-rust	 97M	123M<br>lib64-rust-llvm	 64M	 67M<br>lib64-valgrind	 65M	=
 84M<br>libyang	 93M	 93M<br>linux-firmware	275M	419M<br>linux-intel	120M	3=
95M<br>linux-yocto	 66M	537M<br>linux-yocto-rt	174M	287M<br>llvm	1126.4M	34=
81.6M<br>llvm-native	 71M	 88M<br>ltp	 64M	598M<br>mariadb	1331.2M	966M<br>=
mariadb-native	237M	259M<br>mesa	 64M	113M<br>minifi-cpp	155M	214M<br>mozjs=
-102	183M	255M<br>nativesdk-glibc-locale	 81M	226M<br>nativesdk-qemu	245M	6=
44M<br>nativesdk-rust	 82M	125M<br>nativesdk-rust-llvm	 65M	 73M<br>nodejs	=
1024.0M	723M<br>opencv	185M	237M<br>opengl-es-cts	406M	560M<br>openssl	 92M=
	685M<br>php	 67M	 68M<br>piglit	106M	106M<br>poco	 75M	107M<br>python3-grp=
cio	 65M	 88M<br>python3-wxgtk4	 70M	100M<br>qemu	1228.8M	929M<br>qemu-syst=
em-native	 65M	 71M<br>renderdoc	 67M	 82M<br>rocksdb	177M	272M<br>rust	 85=
M	140M<br>rust-llvm	 64M	 79M<br>rust-llvm-native	287M	418M<br>rust-native	=
 78M	 85M<br>spirv-tools	 64M	195M<br>systemd	 69M	 71M<br>tesseract-lang	3=
69M	451M<br>upm	 82M	 82M<br>valgrind	 64M	128M<br>vsomeip	 82M	149M<br>vul=
kan-cts	592M	833M<br>vulkan-demos	 73M	138M<br>vulkan-validation-layers	 65=
M	108M<br>webkitgtk	1024.0M	995M<br>webkitgtk3	1126.4M	1638.4M<br>wireshark=
	 65M	 85M<br>wxwidgets	 70M	 88M<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 22, 2023 at 10:32=E2=
=80=AFAM Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation.o=
rg">mhalstead@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Right now we have=C2=A0<a=
 href=3D"https://cdn.jsdelivr.net/yocto/sstate" target=3D"_blank">https://c=
dn.jsdelivr.net/yocto/sstate</a> set up as a CDN mirroring proxy endpoint. =
It&#39;s fast and completely free to the project. However, it=C2=A0will onl=
y work for files smaller than 64MB and will send a redirect to the main=C2=
=A0server at <a href=3D"http://sstate.yoctoproject.org" target=3D"_blank">s=
state.yoctoproject.org</a> for files larger than 64MB.<div><br></div><div>T=
he good news is that we have a fast free CDN provided by=C2=A0<a href=3D"ht=
tps://www.jsdelivr.com/" target=3D"_blank">https://www.jsdelivr.com/</a> an=
d their many sponsors=C2=A0for 99.4% of our files.<br clear=3D"all"><div><b=
r></div><div><div>Here is an estimated distribution of sstate files current=
ly available:</div><div>1 KB-4 KB: 103168<br>4 KB-16 KB: 1218048<br>16 KB-6=
4 KB: 1886976<br>64 KB-256 KB: 1225216<br>256 KB-1 MB: 170752<br>1 MB-4 MB:=
 92928<br>4 MB-16 MB: 83200<br>16 MB-64 MB: 40448<br>64 MB-256 MB: 17664<br=
>256 MB-1 GB: 7936<br>1 GB-4 GB: 2560</div></div><div><br></div><div>I&#39;=
m still working on a CDN solution for the larger files but we can begin tes=
ting=C2=A0<a href=3D"https://cdn.jsdelivr.net/yocto/sstate" target=3D"_blan=
k">https://cdn.jsdelivr.net/yocto/sstate</a>=C2=A0today.</div><div><br></di=
v><div>Here is an example link to a file that is currently popular from eac=
h location:</div><div><br></div><div><a href=3D"http://sstate.yoctoproject.=
org/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:r0:x86_64:11:c6=
81f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e6246e_deploy_sourc=
e_date_epoch.tar.zst" target=3D"_blank">http://sstate.yoctoproject.org/all/=
universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:r0:x86_64:11:c681f19e27=
86732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e6246e_deploy_source_date_e=
poch.tar.zst</a><br></div><div><br></div><div><a href=3D"https://cdn.jsdeli=
vr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1=
:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e62=
46e_deploy_source_date_epoch.tar.zst" target=3D"_blank">https://cdn.jsdeliv=
r.net/yocto/sstate/all/universal/c6/81/sstate:re2c-native:x86_64-linux:3.1:=
r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa82319a12e96e624=
6e_deploy_source_date_epoch.tar.zst</a><br></div><div><br></div><div>I&#39;=
m also attaching a list of the largest files in sstate. Anything we can do =
to reduce the size of these or to split them into smaller pieces will help =
with hosting and with the user&#39;s download experience.</div><div><br></d=
iv><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" cl=
ass=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foundat=
ion / Yocto Project</div><div>Systems Operations Engineer</div></div></div>=
</div></div>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><=
div>Systems Operations Engineer</div></div></div>

--000000000000f79d8c0605f743a2--

