Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5152E01125; Fri, 13 Jul 2018 08:32:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46535E00E0D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 08:32:28 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id d74-v6so18406615vke.10
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 08:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=avPUbAvjqTlxyT8WQoHUbohfYsZKJHZhG/SkMbIAqsA=;
	b=hJHTMd0lCmFt3eHFpz19Tq0sxGednK4pxDKq0/qqZ6wUUCoyeB1o4/TszdkBN/yJvj
	1/lJpWB4MiwqqrCXyMKIPioWUsBKTCm9Ilhf3ySE1T/K84NHUABbdG5aQQUUh6j0WNrs
	qcRhMI0n6gxfpMO5iHexGlhAvMxSk3Kyc/UoPY8Dy5LoLQP1jdT9PIsvbabmVQiKMZdc
	3JpSlH9GMiHv9ASYHDf4PoGccAgV+CfGUQfN+TqVZrZ2cZXXQhE2zaxkGeA5HuScJV0h
	Z7AXFBDiZ7JnDB4NwRYe1AzMHUjI0Ln0WXAC6pedrrmVsI7nd4zf+Yiv4rYz7ookytqp
	fpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=avPUbAvjqTlxyT8WQoHUbohfYsZKJHZhG/SkMbIAqsA=;
	b=JdWD0L/x7am9LugUww3r/iaWenMPh3UrGXAmCXOk6y/ASc8kXAT7HFv+LiP4PPLDMn
	JV196MFnjibC90JrBWgw/yX6SQ3+Md6O5JWVsljQ07VAp6sHJxagEW220ns/oeESvjoC
	xHKrZfY7Rylj0Ti7FFncvxN+DhhGVHt0rt5aSBrWFUdJpdDHHWDzmhjIV8KsqnRRq6Tq
	/tx5JHGcOc3tKFRFV1QbBPRY+izyposHJg80eTZQjnbdKURtMQ2wUylmBBxmwMJpgM3v
	EgFqiYQD6cYz9YVr35/PWn38YGICmvK+0AFZWLMrF8bYfeRMwjUPT7mJisXn+1nE291M
	XWjQ==
X-Gm-Message-State: AOUpUlHNglga3zIVVL2nANXGqLU+orN8K0zv4Ri7DhbcuWmJlaFU84sL
	q6lsnvuf0spT8Us9QtqL6UNOFrahK9Nf7DAW4AA=
X-Google-Smtp-Source: AAOMgpcDiSNFJVS1Phqu74nVMRX0OhnJSxzsmD4ptH5OnPKWEH1XWlqKVJ+0YPmyUMG34dIUqJ/6KPlcbT2x0x6Lgak=
X-Received: by 2002:a1f:20d4:: with SMTP id
	g203-v6mr4037979vkg.176.1531495947212; 
	Fri, 13 Jul 2018 08:32:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
	<CAMKF1soVjuxqEv0YECuAAxcWm7kWpm5k3Yo_ognnJo5eUhaXGQ@mail.gmail.com>
	<CAFzUWG=XB-HXZ4RRNnxufiBm9zTsp-jKCP-BGgmFP8cJ1=tStw@mail.gmail.com>
	<CAMKF1spoykTOLMb2wG9Yi8+eS9xt6GUfCpEnaHq_hUBctc5nEg@mail.gmail.com>
	<CAFzUWGnkL0aYvG+NX9un8zV=ucYX8tjNumWbj=3TBtF0gFRgoQ@mail.gmail.com>
In-Reply-To: <CAFzUWGnkL0aYvG+NX9un8zV=ucYX8tjNumWbj=3TBtF0gFRgoQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 13 Jul 2018 09:31:57 -0600
Message-ID: <CAMKF1spKRGVcQLXn-FW+=579ELKXb3eNzg6i59XhAX+yg8=1AA@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: LLVM: error adding symbols: File in wrong format
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Jul 2018 15:32:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Giordon

I realised that you are on an older release can you cherry pick

https://github.com/kraj/meta-clang/commit/e9def8f1

I hope that will be helpful this was done for armv7ve/rpi3

I think that you need to add following for your case. If it works you
can send the patches for the branch you are on.

TUNE_CCARGS_remove_toolchain-clang =3D "-march=3Darmv7-a"
TUNE_CCARGS_append_toolchain-clang =3D
"${@bb.utils.contains("TUNE_FEATURES", "armv7a", " -march=3Darmv7a", "",
d)}"
On Fri, Jul 13, 2018 at 8:00 AM Giordon Stark <kratsg@gmail.com> wrote:
>
> Hi Khem,
>
> I've uploaded the gist here: https://gist.github.com/ef8b964d563b9b0c5249=
b199033d7b6e
>
> Looks like the error is:
>
> clang-5.0: error: the clang compiler does not support '-march=3Darmv7-a'
>
> Giordon
>
> On Fri, Jul 13, 2018 at 1:30 AM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> Hi Giordon
>>
>> I think there is something else going on. Can you check
>> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/build/CMakeFiles/CMakeError.log
>>
>> and see what error message is being spit out by clang when its trying
>> to compile the sample file to detect c++11
>> On Thu, Jul 12, 2018 at 1:57 PM Giordon Stark <kratsg@gmail.com> wrote:
>> >
>> > Hi Khem,
>> >
>> > I added clang, removed llvm-native -- and now I get an llvm error -- s=
upposedly because the llvm being used with yocto may be too old(?).
>> >
>> > kratsg@dc:/local/d4/gstark/poky/build$ bitbake root
>> > Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:00
>> > Loaded 3854 entries from dependency cache.
>> > Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:03
>> > Parsing of 2600 .bb files complete (2598 cached, 2 parsed). 3853 targe=
ts, 163 skipped, 0 masked, 0 errors.
>> > NOTE: Resolving any missing task queue dependencies
>> >
>> > Build Configuration:
>> > BB_VERSION           =3D "1.36.0"
>> > BUILD_SYS            =3D "x86_64-linux"
>> > NATIVELSBSTRING      =3D "universal"
>> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
>> > MACHINE              =3D "zc702-zynq7"
>> > DISTRO               =3D "poky"
>> > DISTRO_VERSION       =3D "2.4.2"
>> > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-har=
d cortexa9"
>> > TARGET_FPU           =3D "hard"
>> > meta
>> > meta-poky
>> > meta-yocto-bsp       =3D "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedf=
c0"
>> > meta-xilinx-bsp      =3D "rocko:7935ef724cd7359ed97e6ae3d90ebc8f07dd7e=
1f"
>> > meta-oe
>> > meta-python          =3D "rocko:dacfa2b1920e285531bec55cd2f08743390aaf=
57"
>> > meta                 =3D "rocko:7dccdf82d49fb11cb2a7cb205ae08311e5d432=
91"
>> > meta-clang           =3D "rocko:a4c0cd28de9c3d5823be43150a76d221b08896=
d6"
>> > meta-l1calo          =3D "update/ROOT:0cfb5bfd77ec9bb9fb9afbf427178684=
2a5dff8f"
>> > workspace            =3D "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedf=
c0"
>> >
>> > Initialising tasks: 100% |############################################=
###########################################################################=
############################################| Time: 0:00:03
>> > NOTE: Executing SetScene Tasks
>> > NOTE: Executing RunQueue Tasks
>> > ERROR: root-6.14.00-r0 do_configure: Function failed: do_configure (lo=
g file is located at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/temp/log.do_configure.2984)
>> > ERROR: Logfile of failure stored in: /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/temp/log.do_configur=
e.2984
>> > Log data follows:
>> > | DEBUG: Executing shell function do_configure
>> > | -- The C compiler identification is Clang 5.0.1
>> > | -- The CXX compiler identification is Clang 5.0.1
>> > | -- Check for working C compiler: /local/d4/gstark/poky/build/tmp/wor=
k/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/=
usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang
>> > | -- Check for working C compiler: /local/d4/gstark/poky/build/tmp/wor=
k/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/=
usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang -- works
>> > | -- Detecting C compiler ABI info
>> > | -- Detecting C compiler ABI info - done
>> > | -- Detecting C compile features
>> > | -- Detecting C compile features - done
>> > | -- Check for working CXX compiler: /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-nativ=
e/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang++
>> > | -- Check for working CXX compiler: /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-nativ=
e/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang++ -- works
>> > | -- Detecting CXX compiler ABI info
>> > | -- Detecting CXX compiler ABI info - done
>> > | -- Detecting CXX compile features
>> > | -- Detecting CXX compile features - done
>> > | -- ROOT default compression algorithm is lz4
>> > | -- Vc does not support arm. Support for Vc disabled.
>> > | -- Found Clang. Major version 5, minor version 0
>> > | -- Performing Test HAS_CXX11
>> > | -- Performing Test HAS_CXX11 - Success
>> > | -- Looking for pthread.h
>> > | -- Looking for pthread.h - found
>> > | -- Looking for pthread_create
>> > | -- Looking for pthread_create - not found
>> > | -- Looking for pthread_create in pthreads
>> > | -- Looking for pthread_create in pthreads - not found
>> > | -- Looking for pthread_create in pthread
>> > | -- Looking for pthread_create in pthread - found
>> > | -- Found Threads: TRUE
>> > | -- Found a 64bit system
>> > | -- Found CLANG compiler
>> > | -- Performing Test GLIBCXX_USE_CXX11_ABI
>> > | -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed
>> > | -- ROOT Platform: linux
>> > | -- ROOT Architecture: linuxx8664gcc
>> > | -- Build Type: RelWithDebInfo
>> > | -- Compiler Flags: -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=
=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=3Dinline=
 -no-integrated-as -Wno-error=3Dunused-command-line-argument -Qunused-argum=
ents  --sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/root/6.14.00-r0/recipe-sysroot  -O2 -pipe -g -feliminate-unu=
sed-debug-types -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0=3D/usr/src/debug/root/6.1=
4.00-r0 -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9h=
f-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native=3D -fdebug-=
prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linu=
x-gnueabi/root/6.14.00-r0/recipe-sysroot=3D  -fvisibility-inlines-hidden -m=
arch=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mli=
ttle-endian -D__extern_always_inline=3Dinline -no-integrated-as -Wno-error=
=3Dunused-command-line-argument -Qunused-arguments  --sysroot=3D/local/d4/g=
stark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r=
0/recipe-sysroot -Wc++11-narrowing -Wsign-compare -Wsometimes-uninitialized=
 -Wconditional-uninitialized -Wheader-guard -Warray-bounds -Wcomment -Wtaut=
ological-compare -Wstrncat-size -Wloop-analysis -Wbool-conversion -pipe -m6=
4  -Wshadow -Wall -W -Woverloaded-virtual -fsigned-char -pthread -std=3Dc++=
11
>> > | -- Looking for ZLib
>> > | -- Found ZLIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libz.so (found ve=
rsion "1.2.11")
>> > | -- Looking for Freetype
>> > | -- Found Freetype: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-n=
eon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libfreetype.s=
o (found version "2.8.0")
>> > | -- Looking for PCRE
>> > | -- Found PCRE: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- Looking for LZMA
>> > | -- Found LZMA includes at /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- Found LZMA library at /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/liblzma=
.so
>> > | -- Looking for xxHash
>> > | -- Could NOT find xxHash (missing:  xxHash_LIBRARY xxHash_INCLUDE_DI=
R)
>> > | -- xxHash not found. Switching on builtin_xxhash option
>> > | -- Looking for LZ4
>> > | -- Found LZ4: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/liblz4.so (found v=
ersion "1.7.5")
>> > | -- Looking for X11
>> > | -- Looking for XOpenDisplay in /local/d4/gstark/poky/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/l=
ibX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so
>> > | -- Looking for XOpenDisplay in /local/d4/gstark/poky/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/l=
ibX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so - not found
>> > | -- Looking for dnet_ntoa in dnet
>> > | -- Looking for dnet_ntoa in dnet - not found
>> > | -- Looking for dnet_ntoa in dnet_stub
>> > | -- Looking for dnet_ntoa in dnet_stub - not found
>> > | -- Looking for gethostbyname
>> > | -- Looking for gethostbyname - not found
>> > | -- Looking for gethostbyname in nsl
>> > | -- Looking for gethostbyname in nsl - not found
>> > | -- Looking for gethostbyname in bsd
>> > | -- Looking for gethostbyname in bsd - not found
>> > | -- Looking for connect
>> > | -- Looking for connect - not found
>> > | -- Looking for connect in socket
>> > | -- Looking for connect in socket - not found
>> > | -- Looking for remove
>> > | -- Looking for remove - not found
>> > | -- Looking for remove in posix
>> > | -- Looking for remove in posix - not found
>> > | -- Looking for shmat
>> > | -- Looking for shmat - not found
>> > | -- Looking for shmat in ipc
>> > | -- Looking for shmat in ipc - not found
>> > | -- Looking for IceConnectionNumber in ICE
>> > | -- Looking for IceConnectionNumber in ICE - not found
>> > | -- Found X11: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so
>> > | -- X11_INCLUDE_DIR: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- X11_LIBRARIES: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/loc=
al/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.=
14.00-r0/recipe-sysroot/usr/lib/libXext.so
>> > | -- X11_Xpm_INCLUDE_PATH: /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- X11_Xpm_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.so
>> > | -- X11_Xft_INCLUDE_PATH: /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- X11_Xft_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXft.so
>> > | -- X11_Xext_INCLUDE_PATH:
>> > | -- X11_Xext_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so
>> > | -- Looking for GSL
>> > | -- Found GSL: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include (found suitabl=
e version "1.15", minimum required is "1.10")
>> > | -- Found PythonInterp: /local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/py=
thon-native/python (found version "2.7.13")
>> > | -- Found PythonLibs: /local/d4/gstark/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libpython2.=
7.so (found version "2.7.13")
>> > | -- Looking for OpenGL
>> > | -- Found OpenGL: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libGL.so
>> > | -- Looking for GLEW
>> > | -- Found GLEW: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- Looking for gl2ps
>> > | -- Could NOT find GL2PS (missing:  GL2PS_LIBRARY GL2PS_INCLUDE_DIR)
>> > | -- gl2ps not found. Switching on builtin_gl2ps option
>> > | -- Looking for LibXml2
>> > | -- Found LibXml2: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libxml2.so (fo=
und version "2.9.4")
>> > | -- Found OpenSSL: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libcrypto.so (=
found version "1.0.2n")
>> > | -- Looking for Castor
>> > | -- Could NOT find CASTOR (missing:  CASTOR_shift_LIBRARY CASTOR_INCL=
UDE_DIR)
>> > | -- Castor not found. Switching off castor option
>> > | -- Looking for MySQL
>> > | -- Could NOT find MYSQL (missing:  MYSQL_INCLUDE_DIR MYSQL_LIBRARIES=
)
>> > | -- MySQL not found. Switching off mysql option
>> > | -- Looking for Oracle
>> > | -- Oracle not found.
>> > | -- Oracle: You can specify includes: -DORACLE_PATH_INCLUDES=3D/usr/i=
nclude/oracle/10.2.0.3/client
>> > | --    currently found includes:
>> > | -- Oracle: You can specify libs: -DORACLE_PATH_LIB=3D/usr/lib/oracle=
/10.2.0.3/client/lib
>> > | --    currently found libs: ORACLE_LIBRARY_OCCI-NOTFOUND;ORACLE_LIBR=
ARY_CLNTSH-NOTFOUND;ORACLE_LIBRARY_LNNZ-NOTFOUND
>> > | -- Oracle not found. Switching off oracle option
>> > | -- Looking for PostgreSQL
>> > | -- Could NOT find PostgreSQL (missing:  POSTGRESQL_INCLUDE_DIR POSTG=
RESQL_LIBRARY)
>> > | -- PostgreSQL not found. Switching off pgsql option
>> > | -- Looking for SQLite
>> > | -- Found PkgConfig: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/pkg-c=
onfig (found version "0.29.2")
>> > | -- Found Sqlite: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- Looking for Pythia6
>> > | -- Pythia6 not found. Switching off pythia6 option
>> > | -- Looking for Pythia8
>> > | -- Could NOT find Pythia8 (missing:  PYTHIA8_INCLUDE_DIR PYTHIA8_LIB=
RARY)
>> > | -- Pythia8 not found. Switching off pythia8 option
>> > | -- Looking for FFTW3
>> > | -- Found fftw3 includes at /local/d4/gstark/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- Found fftw3 library at /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libfft=
w3.so
>> > | -- Looking for CFITSIO
>> > | -- Could NOT find CFITSIO (missing:  CFITSIO_INCLUDE_DIR CFITSIO_LIB=
RARY)
>> > | -- CFITSIO not found. You can enable the option 'builtin_cfitsio' to=
 build the library internally'
>> > | --                    For the time being switching off 'fitsio' opti=
on
>> > | -- Looking for XROOTD
>> > | -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDVERS=3D40008000=
3)
>> > | --              libXrdMain not found: xproofd will be a wrapper arou=
nd xrootd
>> > | --              include_dirs: /local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/includ=
e/xrootd;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot/usr/include/xrootd/private
>> > | --              libraries: /local/d4/gstark/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXr=
dUtils.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-g=
nueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdClient.so;/local/d4/gst=
ark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/=
recipe-sysroot/usr/lib/libXrdCl.so
>> > | -- Could NOT find GFAL (missing:  GFAL_INCLUDE_DIR SRM_IFCE_INCLUDE_=
DIR GFAL_LIBRARY)
>> > | -- GFAL library not found. Set variable GFAL_DIR to point to your gf=
al installation
>> > |                       and the variable SRM_IFCE_DIR to the srm_ifce =
installation
>> > | -- For the time being switching OFF 'gfal' option
>> > | -- Checking for module 'davix>=3D0.6.4'
>> > | --   No package 'davix' found
>> > | -- Looking for uuid_generate_random in uuid
>> > | -- Looking for uuid_generate_random in uuid - not found
>> > | -- Found uuid: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include
>> > | -- Davix not found, switching ON 'builtin_davix' option.
>> > | -- Looking for clock_gettime
>> > | -- Looking for clock_gettime - not found
>> > | -- Looking for clock_gettime in rt
>> > | -- Looking for clock_gettime in rt - not found
>> > | -- Looking for TBB
>> > | -- Could NOT find TBB (missing:  TBB_ROOT_DIR TBB_INCLUDE_DIR TBB_LI=
BRARY)
>> > | -- TBB not found. Switching on builtin_tbb option
>> > | -- Performing Test CXX_HAS_mno_rtm
>> > | -- Performing Test CXX_HAS_mno_rtm - Failed
>> > | -- Looking for BLAS for optional parts of TMVA
>> > | -- A library with BLAS API not found. Please specify library locatio=
n.
>> > | -- Using GSL CBLAS for optional parts of TMVA
>> > | -- Enabled support for:  builtin_davix builtin_ftgl builtin_gl2ps bu=
iltin_clang builtin_tbb builtin_xxhash cling cxx11 davix exceptions explici=
tlink fftw3 gdml genvector http imt mathmore minuit2 opengl pch python roof=
it shared sqlite ssl thread tmva tmva-cpu x11 xft xml xrootd
>> > | -- Found LLVM_CONFIG as /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/l=
lvm-config
>> > | -- Linker detection: GNU ld
>> > | CMake Warning at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/ll=
vm/HandleLLVMOptions.cmake:185 (message):
>> > |   -fPIC is not supported.
>> > | Call Stack (most recent call first):
>> > |   /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOp=
tions.cmake:213 (add_flag_or_print_warning)
>> > |   interpreter/CMakeLists.txt:285 (include)
>> > |
>> > |
>> > | CMake Error at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm=
/HandleLLVMOptions.cmake:402 (message):
>> > |   LLVM requires C++11 support but the '-std=3Dc++11' flag isn't supp=
orted.
>> > | Call Stack (most recent call first):
>> > |   interpreter/CMakeLists.txt:285 (include)
>> > |
>> > |
>> > | -- Configuring incomplete, errors occurred!
>> > | See also "/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-=
linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeOutput.log".
>> > | See also "/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-=
linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeError.log".
>> > | WARNING: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-l=
inux-gnueabi/root/6.14.00-r0/temp/run.do_configure.2984:1 exit 1 from 'cmak=
e $oecmake_sitefile /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-po=
ky-linux-gnueabi/root/6.14.00-r0/root-6.14.00 -DCMAKE_INSTALL_PREFIX:PATH=
=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3Dsb=
in -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:PAT=
H=3D/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com -DCMAKE_INSTALL_LOCAL=
STATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_INCL=
UDEDIR:PATH=3Dinclude -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INST=
ALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/local/d4/gstark/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/toolchain.cmake -DC=
MAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -Drootfit=3DO=
N -Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuiltin_freetype=
=3DOFF -Dbuiltin_llvm=3DOFF -Dbuiltin_glew=3DOFF -Dastiff=3DOFF -Dasimage=
=3DOFF -Dbuiltin_afterimage=3DOFF -Dalien=3DOFF -Dvdt=3DOFF ${PACKAGECONFIG=
_CONFARGS} -Wno-dev'
>> > | ERROR: Function failed: do_configure (log file is located at /local/=
d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.=
00-r0/temp/log.do_configure.2984)
>> > ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/root_6.14.=
00.bb:do_configure) failed with exit code '1'
>> >
>> >
>> > On Wed, Jul 11, 2018 at 3:35 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> Hi Giordon
>> >>
>> >> On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark <kratsg@gmail.com> wro=
te:
>> >> >
>> >> > Hi all,
>> >> >
>> >> > | /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14=
.00-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a: error adding symbols=
: File in wrong format
>> >> > | clang-5.0: error: linker command failed with exit code 1 (use -v =
to see invocation)
>> >> > | interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-=
tblgen.dir/build.make:95: recipe for target 'interpreter/llvm/src/bin/clang=
-tblgen' failed
>> >> > | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1
>> >> > | make[2]: Leaving directory '/local/d4/gstark/poky/build/tmp/work/=
aarch64-poky-linux/root/6.14.00-r0/build'
>> >> > | CMakeFiles/Makefile2:791: recipe for target 'interpreter/llvm/src=
/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all' failed
>> >> > | make[1]: *** [interpreter/llvm/src/tools/clang/utils/TableGen/CMa=
keFiles/clang-tblgen.dir/all] Error 2
>> >> > | make[1]: *** Waiting for unfinished jobs....
>> >> >
>> >> > Here's the full log: https://gist.github.com/3403addf74b5e902adec93=
b75fb0e138
>> >> >
>> >> > Any ideas how to get a more verbose invocation if needed? I suspect=
 the error is due to some pre-built libraries being shipped in this recipe,=
 but I'm not sure what's causing the error in the first place.
>> >> >
>> >>
>> >> it seems to be linking with native llvm libraries which might not be =
intended.
>> >>
>> >> > Note: I am using meta-clang. The recipe I'm using looks like:
>> >> >
>> >> > SUMMARY =3D "Numerical data analysis framework (OO)"
>> >> > DESCRIPTION =3D "Object oriented framework for large scale data ana=
lysis"
>> >> > HOMEPAGE =3D "http://root.cern.ch"
>> >> > LICENSE =3D "LGPLv2.1"
>> >> > LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D5ec773ab82cbea1f17ec5b98=
e8ce60cf"
>> >> > SRC_URI =3D "https://root.cern.ch/download/root_v${PV}.source.tar.g=
z"
>> >> >
>> >> > S =3D "${WORKDIR}/${BPN}-${PV}"
>> >> >
>> >> > TOOLCHAIN =3D "clang"
>> >> > #TARGET_CXXFLAGS_append_toolchain-clang =3D " -stdlib=3Dlibc++ "
>> >> >
>> >> > DEPENDS +=3D "llvm-native libpcre lz4 libx11 libxpm libxft gsl fftw=
 libatomic-ops freetype glew xrootd"
>> >> >
>> >>
>> >> it seems you really need llvm for target in dependencies so please
>> >> remove llvm-native from DEPENDS
>> >> and add clang to it.
>> >>
>> >> > inherit cmake pkgconfig pythonnative
>> >> >
>> >> >
>> >> > do_configure_prepend(){
>> >> > export FC=3D${GFORTRAN}
>> >> > }
>> >> >
>> >> > EXTRA_OECMAKE =3D "\
>> >> >     -Drootfit=3DON \
>> >> >     -Dminuit2=3DON \
>> >> >     -Dpython=3DON \
>> >> >     -Dssl=3DON \
>> >> >     -Dxrootd=3DON \
>> >> >     -Dbuiltin_freetype=3DOFF \
>> >> >     -Dbuiltin_llvm=3DOFF \
>> >> >     -Dbuiltin_glew=3DOFF \
>> >> >     -Dastiff=3DOFF \
>> >> >     -Dasimage=3DOFF \
>> >> >     -Dbuiltin_afterimage=3DOFF \
>> >> >     -Dalien=3DOFF \
>> >> >     -Dvdt=3DOFF \
>> >> > "
>> >> >
>> >> > --
>> >> > Giordon Stark
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>> > --
>> > Giordon Stark
>
> --
> Giordon Stark

