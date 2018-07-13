Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C89E00CC8; Fri, 13 Jul 2018 07:00:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F76E007AA
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 07:00:12 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id v71-v6so11646460itb.3
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 07:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rjnhun9nAF5D2o9vBSOwV3wPnf+XqpMC23xTlK1hvao=;
	b=RUYfqAC2XdPbiyEW7NemUn+Ve3NXou4Xktyyv7VOTc7DWqLqC8O8X+FES7ic69N0EM
	BHsCNu09/5dnN3jtCjR7DIoE1Xfn2WhUaumkqv7RFHqSwWgQ5ar3WKYMnnRIn7sOCyyz
	0wbf5wn8tjQjW1gXOzAPJPVOFtM/zLmcysF7bxNe4GUMQWZGM/UWfajEnjWvAjHbPhZS
	w+OO247Usx4VbibyunFCcPNP3Cx/K7x54hlDzxkefOqt8q8qmrQVrZy5MWoFJPudeWyb
	BYxKUQWgBmG1fpkf7qH1g1/l7hn/TZTdeyaOQz5D9L9sEXXwTsMet+sVfr6qk79nhTaC
	wXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rjnhun9nAF5D2o9vBSOwV3wPnf+XqpMC23xTlK1hvao=;
	b=kRgkJ7yyebDuke6ts5pvjFWQ3mLaIjXZLwQhroLf78+iBEwwKFsmV2GhUFBw4dl2NS
	UZx1TgfUKa01uZ7bQsC/MC7wsHRaEdroL8u15uVCaMsRubTbp9wrmAq2HKV77Ib9saF9
	tLp7Iez6jaDobd2QCX9g1T9U4F8s619Y88UTYzlQbjp2NzRofM6FTZXEhYBJFCXHBEYc
	/H9LweHmcNOSlxsgENiwclrUNGi+x4XzMX9+gOBu0UpR6zPJGqCw3239VPEVlYV5E1EN
	CpxkvcMvNf/cw1P4ZRDUnWvilg5Ja90e+KAJCCUYRdg2hseEIw+gqT5JfJhgVi+9ap5D
	3KeA==
X-Gm-Message-State: AOUpUlES3hWCpsBEyviJHzCwhUuhA9fmQiUSt0CwDl3WeKwJA/d1aPyD
	SqV0mzisG1NWcN27uFYuLK2CwwAxKnTjKAaxZ/+CgA==
X-Google-Smtp-Source: AAOMgpcT4IEfJ+FDnTm7z/tTx6Lyb9rVcRNLaWxeCHQkJFtnd4PkPWigZ0uoU/m9nWkjx+3iADeXC7wXl12kd59UB+A=
X-Received: by 2002:a02:5f02:: with SMTP id
	r2-v6mr5468473jab.143.1531490412321; 
	Fri, 13 Jul 2018 07:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
	<CAMKF1soVjuxqEv0YECuAAxcWm7kWpm5k3Yo_ognnJo5eUhaXGQ@mail.gmail.com>
	<CAFzUWG=XB-HXZ4RRNnxufiBm9zTsp-jKCP-BGgmFP8cJ1=tStw@mail.gmail.com>
	<CAMKF1spoykTOLMb2wG9Yi8+eS9xt6GUfCpEnaHq_hUBctc5nEg@mail.gmail.com>
In-Reply-To: <CAMKF1spoykTOLMb2wG9Yi8+eS9xt6GUfCpEnaHq_hUBctc5nEg@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 13 Jul 2018 09:59:59 -0400
Message-ID: <CAFzUWGnkL0aYvG+NX9un8zV=ucYX8tjNumWbj=3TBtF0gFRgoQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 13 Jul 2018 14:00:16 -0000
Content-Type: multipart/alternative; boundary="00000000000000dfdf0570e1e6e1"

--00000000000000dfdf0570e1e6e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

I've uploaded the gist here:
https://gist.github.com/ef8b964d563b9b0c5249b199033d7b6e

Looks like the error is:

clang-5.0: error: the clang compiler does not support '-march=3Darmv7-a'

Giordon

On Fri, Jul 13, 2018 at 1:30 AM Khem Raj <raj.khem@gmail.com> wrote:

> Hi Giordon
>
> I think there is something else going on. Can you check
>
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/build/CMakeFiles/CMakeError.log
>
> and see what error message is being spit out by clang when its trying
> to compile the sample file to detect c++11
> On Thu, Jul 12, 2018 at 1:57 PM Giordon Stark <kratsg@gmail.com> wrote:
> >
> > Hi Khem,
> >
> > I added clang, removed llvm-native -- and now I get an llvm error --
> supposedly because the llvm being used with yocto may be too old(?).
> >
> > kratsg@dc:/local/d4/gstark/poky/build$ bitbake root
> > Loading cache: 100%
> |########################################################################=
###########################################################################=
#####################|
> Time: 0:00:00
> > Loaded 3854 entries from dependency cache.
> > Parsing recipes: 100%
> |########################################################################=
###########################################################################=
###################|
> Time: 0:00:03
> > Parsing of 2600 .bb files complete (2598 cached, 2 parsed). 3853
> targets, 163 skipped, 0 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION           =3D "1.36.0"
> > BUILD_SYS            =3D "x86_64-linux"
> > NATIVELSBSTRING      =3D "universal"
> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> > MACHINE              =3D "zc702-zynq7"
> > DISTRO               =3D "poky"
> > DISTRO_VERSION       =3D "2.4.2"
> > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard
> cortexa9"
> > TARGET_FPU           =3D "hard"
> > meta
> > meta-poky
> > meta-yocto-bsp       =3D "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc=
0"
> > meta-xilinx-bsp      =3D "rocko:7935ef724cd7359ed97e6ae3d90ebc8f07dd7e1=
f"
> > meta-oe
> > meta-python          =3D "rocko:dacfa2b1920e285531bec55cd2f08743390aaf5=
7"
> > meta                 =3D "rocko:7dccdf82d49fb11cb2a7cb205ae08311e5d4329=
1"
> > meta-clang           =3D "rocko:a4c0cd28de9c3d5823be43150a76d221b08896d=
6"
> > meta-l1calo          =3D
> "update/ROOT:0cfb5bfd77ec9bb9fb9afbf4271786842a5dff8f"
> > workspace            =3D "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc=
0"
> >
> > Initialising tasks: 100%
> |########################################################################=
###########################################################################=
################|
> Time: 0:00:03
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: root-6.14.00-r0 do_configure: Function failed: do_configure (log
> file is located at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984)
> > ERROR: Logfile of failure stored in:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984
> > Log data follows:
> > | DEBUG: Executing shell function do_configure
> > | -- The C compiler identification is Clang 5.0.1
> > | -- The CXX compiler identification is Clang 5.0.1
> > | -- Check for working C compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang
> > | -- Check for working C compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang
> -- works
> > | -- Detecting C compiler ABI info
> > | -- Detecting C compiler ABI info - done
> > | -- Detecting C compile features
> > | -- Detecting C compile features - done
> > | -- Check for working CXX compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang++
> > | -- Check for working CXX compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang++
> -- works
> > | -- Detecting CXX compiler ABI info
> > | -- Detecting CXX compiler ABI info - done
> > | -- Detecting CXX compile features
> > | -- Detecting CXX compile features - done
> > | -- ROOT default compression algorithm is lz4
> > | -- Vc does not support arm. Support for Vc disabled.
> > | -- Found Clang. Major version 5, minor version 0
> > | -- Performing Test HAS_CXX11
> > | -- Performing Test HAS_CXX11 - Success
> > | -- Looking for pthread.h
> > | -- Looking for pthread.h - found
> > | -- Looking for pthread_create
> > | -- Looking for pthread_create - not found
> > | -- Looking for pthread_create in pthreads
> > | -- Looking for pthread_create in pthreads - not found
> > | -- Looking for pthread_create in pthread
> > | -- Looking for pthread_create in pthread - found
> > | -- Found Threads: TRUE
> > | -- Found a 64bit system
> > | -- Found CLANG compiler
> > | -- Performing Test GLIBCXX_USE_CXX11_ABI
> > | -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed
> > | -- ROOT Platform: linux
> > | -- ROOT Architecture: linuxx8664gcc
> > | -- Build Type: RelWithDebInfo
> > | -- Compiler Flags: -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3D=
hard
> -mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=3Dinline
> -no-integrated-as -Wno-error=3Dunused-command-line-argument
> -Qunused-arguments
> --sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-lin=
ux-gnueabi/root/6.14.00-r0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0=3D/usr/src/debug/root/6.14.00-r0
> -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=3D
> -fvisibility-inlines-hidden -march=3Darmv7-a -marm -mfpu=3Dneon
> -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian
> -D__extern_always_inline=3Dinline -no-integrated-as
> -Wno-error=3Dunused-command-line-argument -Qunused-arguments
> --sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-lin=
ux-gnueabi/root/6.14.00-r0/recipe-sysroot
> -Wc++11-narrowing -Wsign-compare -Wsometimes-uninitialized
> -Wconditional-uninitialized -Wheader-guard -Warray-bounds -Wcomment
> -Wtautological-compare -Wstrncat-size -Wloop-analysis -Wbool-conversion
> -pipe -m64  -Wshadow -Wall -W -Woverloaded-virtual -fsigned-char -pthread
> -std=3Dc++11
> > | -- Looking for ZLib
> > | -- Found ZLIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libz.so
> (found version "1.2.11")
> > | -- Looking for Freetype
> > | -- Found Freetype:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libfreetype.so
> (found version "2.8.0")
> > | -- Looking for PCRE
> > | -- Found PCRE:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- Looking for LZMA
> > | -- Found LZMA includes at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- Found LZMA library at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/liblzma.so
> > | -- Looking for xxHash
> > | -- Could NOT find xxHash (missing:  xxHash_LIBRARY xxHash_INCLUDE_DIR=
)
> > | -- xxHash not found. Switching on builtin_xxhash option
> > | -- Looking for LZ4
> > | -- Found LZ4:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/liblz4.so
> (found version "1.7.5")
> > | -- Looking for X11
> > | -- Looking for XOpenDisplay in
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libXext.so
> > | -- Looking for XOpenDisplay in
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libXext.so
> - not found
> > | -- Looking for dnet_ntoa in dnet
> > | -- Looking for dnet_ntoa in dnet - not found
> > | -- Looking for dnet_ntoa in dnet_stub
> > | -- Looking for dnet_ntoa in dnet_stub - not found
> > | -- Looking for gethostbyname
> > | -- Looking for gethostbyname - not found
> > | -- Looking for gethostbyname in nsl
> > | -- Looking for gethostbyname in nsl - not found
> > | -- Looking for gethostbyname in bsd
> > | -- Looking for gethostbyname in bsd - not found
> > | -- Looking for connect
> > | -- Looking for connect - not found
> > | -- Looking for connect in socket
> > | -- Looking for connect in socket - not found
> > | -- Looking for remove
> > | -- Looking for remove - not found
> > | -- Looking for remove in posix
> > | -- Looking for remove in posix - not found
> > | -- Looking for shmat
> > | -- Looking for shmat - not found
> > | -- Looking for shmat in ipc
> > | -- Looking for shmat in ipc - not found
> > | -- Looking for IceConnectionNumber in ICE
> > | -- Looking for IceConnectionNumber in ICE - not found
> > | -- Found X11:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so
> > | -- X11_INCLUDE_DIR:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- X11_LIBRARIES:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libXext.so
> > | -- X11_Xpm_INCLUDE_PATH:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- X11_Xpm_LIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.so
> > | -- X11_Xft_INCLUDE_PATH:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- X11_Xft_LIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXft.so
> > | -- X11_Xext_INCLUDE_PATH:
> > | -- X11_Xext_LIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so
> > | -- Looking for GSL
> > | -- Found GSL:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> (found suitable version "1.15", minimum required is "1.10")
> > | -- Found PythonInterp:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/python-native/python
> (found version "2.7.13")
> > | -- Found PythonLibs:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/
> libpython2.7.so (found version "2.7.13")
> > | -- Looking for OpenGL
> > | -- Found OpenGL:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libGL.so
> > | -- Looking for GLEW
> > | -- Found GLEW:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- Looking for gl2ps
> > | -- Could NOT find GL2PS (missing:  GL2PS_LIBRARY GL2PS_INCLUDE_DIR)
> > | -- gl2ps not found. Switching on builtin_gl2ps option
> > | -- Looking for LibXml2
> > | -- Found LibXml2:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libxml2.so
> (found version "2.9.4")
> > | -- Found OpenSSL:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libcrypto.so
> (found version "1.0.2n")
> > | -- Looking for Castor
> > | -- Could NOT find CASTOR (missing:  CASTOR_shift_LIBRARY
> CASTOR_INCLUDE_DIR)
> > | -- Castor not found. Switching off castor option
> > | -- Looking for MySQL
> > | -- Could NOT find MYSQL (missing:  MYSQL_INCLUDE_DIR MYSQL_LIBRARIES)
> > | -- MySQL not found. Switching off mysql option
> > | -- Looking for Oracle
> > | -- Oracle not found.
> > | -- Oracle: You can specify includes:
> -DORACLE_PATH_INCLUDES=3D/usr/include/oracle/10.2.0.3/client
> > | --    currently found includes:
> > | -- Oracle: You can specify libs: -DORACLE_PATH_LIB=3D/usr/lib/oracle/
> 10.2.0.3/client/lib
> > | --    currently found libs:
> ORACLE_LIBRARY_OCCI-NOTFOUND;ORACLE_LIBRARY_CLNTSH-NOTFOUND;ORACLE_LIBRAR=
Y_LNNZ-NOTFOUND
> > | -- Oracle not found. Switching off oracle option
> > | -- Looking for PostgreSQL
> > | -- Could NOT find PostgreSQL (missing:  POSTGRESQL_INCLUDE_DIR
> POSTGRESQL_LIBRARY)
> > | -- PostgreSQL not found. Switching off pgsql option
> > | -- Looking for SQLite
> > | -- Found PkgConfig:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/pkg-config
> (found version "0.29.2")
> > | -- Found Sqlite:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- Looking for Pythia6
> > | -- Pythia6 not found. Switching off pythia6 option
> > | -- Looking for Pythia8
> > | -- Could NOT find Pythia8 (missing:  PYTHIA8_INCLUDE_DIR
> PYTHIA8_LIBRARY)
> > | -- Pythia8 not found. Switching off pythia8 option
> > | -- Looking for FFTW3
> > | -- Found fftw3 includes at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- Found fftw3 library at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libfftw3.so
> > | -- Looking for CFITSIO
> > | -- Could NOT find CFITSIO (missing:  CFITSIO_INCLUDE_DIR
> CFITSIO_LIBRARY)
> > | -- CFITSIO not found. You can enable the option 'builtin_cfitsio' to
> build the library internally'
> > | --                    For the time being switching off 'fitsio' optio=
n
> > | -- Looking for XROOTD
> > | -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDVERS=3D400080003=
)
> > | --              libXrdMain not found: xproofd will be a wrapper aroun=
d
> xrootd
> > | --              include_dirs:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include/xrootd;/local/d4/gstark/poky/buil=
d/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroo=
t/usr/include/xrootd/private
> > | --              libraries:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXrdUtils.so;/local/d4/gstark/poky/=
build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sy=
sroot/usr/lib/libXrdClient.so;/local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdCl.=
so
> > | -- Could NOT find GFAL (missing:  GFAL_INCLUDE_DIR
> SRM_IFCE_INCLUDE_DIR GFAL_LIBRARY)
> > | -- GFAL library not found. Set variable GFAL_DIR to point to your gfa=
l
> installation
> > |                       and the variable SRM_IFCE_DIR to the srm_ifce
> installation
> > | -- For the time being switching OFF 'gfal' option
> > | -- Checking for module 'davix>=3D0.6.4'
> > | --   No package 'davix' found
> > | -- Looking for uuid_generate_random in uuid
> > | -- Looking for uuid_generate_random in uuid - not found
> > | -- Found uuid:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> > | -- Davix not found, switching ON 'builtin_davix' option.
> > | -- Looking for clock_gettime
> > | -- Looking for clock_gettime - not found
> > | -- Looking for clock_gettime in rt
> > | -- Looking for clock_gettime in rt - not found
> > | -- Looking for TBB
> > | -- Could NOT find TBB (missing:  TBB_ROOT_DIR TBB_INCLUDE_DIR
> TBB_LIBRARY)
> > | -- TBB not found. Switching on builtin_tbb option
> > | -- Performing Test CXX_HAS_mno_rtm
> > | -- Performing Test CXX_HAS_mno_rtm - Failed
> > | -- Looking for BLAS for optional parts of TMVA
> > | -- A library with BLAS API not found. Please specify library location=
.
> > | -- Using GSL CBLAS for optional parts of TMVA
> > | -- Enabled support for:  builtin_davix builtin_ftgl builtin_gl2ps
> builtin_clang builtin_tbb builtin_xxhash cling cxx11 davix exceptions
> explicitlink fftw3 gdml genvector http imt mathmore minuit2 opengl pch
> python roofit shared sqlite ssl thread tmva tmva-cpu x11 xft xml xrootd
> > | -- Found LLVM_CONFIG as
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/llvm-config
> > | -- Linker detection: GNU ld
> > | CMake Warning at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.c=
make:185
> (message):
> > |   -fPIC is not supported.
> > | Call Stack (most recent call first):
> > |
>  /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.=
cmake:213
> (add_flag_or_print_warning)
> > |   interpreter/CMakeLists.txt:285 (include)
> > |
> > |
> > | CMake Error at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.c=
make:402
> (message):
> > |   LLVM requires C++11 support but the '-std=3Dc++11' flag isn't
> supported.
> > | Call Stack (most recent call first):
> > |   interpreter/CMakeLists.txt:285 (include)
> > |
> > |
> > | -- Configuring incomplete, errors occurred!
> > | See also
> "/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/build/CMakeFiles/CMakeOutput.log".
> > | See also
> "/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/build/CMakeFiles/CMakeError.log".
> > | WARNING:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/run.do_configure.2984:1
> exit 1 from 'cmake $oecmake_sitefile
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/root-6.14.00
> -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin
> -DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlib=
exec
> -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc
> -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com
> -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dl=
ib
> -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude
> -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0
> -DCMAKE_TOOLCHAIN_FILE=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/root/6.14.00-r0/toolchain.cmake
> -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -Drootfi=
t=3DON
> -Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuiltin_freetype=
=3DOFF
> -Dbuiltin_llvm=3DOFF -Dbuiltin_glew=3DOFF -Dastiff=3DOFF -Dasimage=3DOFF
> -Dbuiltin_afterimage=3DOFF -Dalien=3DOFF -Dvdt=3DOFF ${PACKAGECONFIG_CONF=
ARGS}
> -Wno-dev'
> > | ERROR: Function failed: do_configure (log file is located at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984)
> > ERROR: Task
> (/local/d4/gstark/meta-l1calo/recipes-core/root/root_6.14.00.bb:do_config=
ure)
> failed with exit code '1'
> >
> >
> > On Wed, Jul 11, 2018 at 3:35 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> Hi Giordon
> >>
> >> On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark <kratsg@gmail.com>
> wrote:
> >> >
> >> > Hi all,
> >> >
> >> > |
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/r=
ecipe-sysroot-native/usr/lib/libLLVMSupport.a:
> error adding symbols: File in wrong format
> >> > | clang-5.0: error: linker command failed with exit code 1 (use -v t=
o
> see invocation)
> >> > |
> interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.d=
ir/build.make:95:
> recipe for target 'interpreter/llvm/src/bin/clang-tblgen' failed
> >> > | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1
> >> > | make[2]: Leaving directory
> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/=
build'
> >> > | CMakeFiles/Makefile2:791: recipe for target
> 'interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.=
dir/all'
> failed
> >> > | make[1]: ***
> [interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.=
dir/all]
> Error 2
> >> > | make[1]: *** Waiting for unfinished jobs....
> >> >
> >> > Here's the full log:
> https://gist.github.com/3403addf74b5e902adec93b75fb0e138
> >> >
> >> > Any ideas how to get a more verbose invocation if needed? I suspect
> the error is due to some pre-built libraries being shipped in this recipe=
,
> but I'm not sure what's causing the error in the first place.
> >> >
> >>
> >> it seems to be linking with native llvm libraries which might not be
> intended.
> >>
> >> > Note: I am using meta-clang. The recipe I'm using looks like:
> >> >
> >> > SUMMARY =3D "Numerical data analysis framework (OO)"
> >> > DESCRIPTION =3D "Object oriented framework for large scale data
> analysis"
> >> > HOMEPAGE =3D "http://root.cern.ch"
> >> > LICENSE =3D "LGPLv2.1"
> >> > LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D5ec773ab82cbea1f17ec5b98e8ce60cf"
> >> > SRC_URI =3D "https://root.cern.ch/download/root_v${PV}.source.tar.gz=
"
> >> >
> >> > S =3D "${WORKDIR}/${BPN}-${PV}"
> >> >
> >> > TOOLCHAIN =3D "clang"
> >> > #TARGET_CXXFLAGS_append_toolchain-clang =3D " -stdlib=3Dlibc++ "
> >> >
> >> > DEPENDS +=3D "llvm-native libpcre lz4 libx11 libxpm libxft gsl fftw
> libatomic-ops freetype glew xrootd"
> >> >
> >>
> >> it seems you really need llvm for target in dependencies so please
> >> remove llvm-native from DEPENDS
> >> and add clang to it.
> >>
> >> > inherit cmake pkgconfig pythonnative
> >> >
> >> >
> >> > do_configure_prepend(){
> >> > export FC=3D${GFORTRAN}
> >> > }
> >> >
> >> > EXTRA_OECMAKE =3D "\
> >> >     -Drootfit=3DON \
> >> >     -Dminuit2=3DON \
> >> >     -Dpython=3DON \
> >> >     -Dssl=3DON \
> >> >     -Dxrootd=3DON \
> >> >     -Dbuiltin_freetype=3DOFF \
> >> >     -Dbuiltin_llvm=3DOFF \
> >> >     -Dbuiltin_glew=3DOFF \
> >> >     -Dastiff=3DOFF \
> >> >     -Dasimage=3DOFF \
> >> >     -Dbuiltin_afterimage=3DOFF \
> >> >     -Dalien=3DOFF \
> >> >     -Dvdt=3DOFF \
> >> > "
> >> >
> >> > --
> >> > Giordon Stark
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Giordon Stark
>
--=20
Giordon Stark

--00000000000000dfdf0570e1e6e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>I&#39;ve uploaded the gist her=
e: <a href=3D"https://gist.github.com/ef8b964d563b9b0c5249b199033d7b6e">htt=
ps://gist.github.com/ef8b964d563b9b0c5249b199033d7b6e</a>=C2=A0</div><div><=
br></div><div>Looks like the error is:</div><div><br><div>clang-5.0: error:=
 the clang compiler does not support &#39;-march=3Darmv7-a&#39;</div></div>=
<div><br></div><div>Giordon</div>





</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 13, 2018 =
at 1:30 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Giordon<br>
<br>
I think there is something else going on. Can you check<br>
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/build/CMakeFiles/CMakeError.log<br>
<br>
and see what error message is being spit out by clang when its trying<br>
to compile the sample file to detect c++11<br>
On Thu, Jul 12, 2018 at 1:57 PM Giordon Stark &lt;<a href=3D"mailto:kratsg@=
gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; I added clang, removed llvm-native -- and now I get an llvm error -- s=
upposedly because the llvm being used with yocto may be too old(?).<br>
&gt;<br>
&gt; kratsg@dc:/local/d4/gstark/poky/build$ bitbake root<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
############################################| Time: 0:00:00<br>
&gt; Loaded 3854 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
############################################| Time: 0:00:03<br>
&gt; Parsing of 2600 .bb files complete (2598 cached, 2 parsed). 3853 targe=
ts, 163 skipped, 0 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.0&qu=
ot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-li=
nux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-=
linux-gnueabi&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zc70=
2-zynq7&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.4.2&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp thum=
b neon callconvention-hard cortexa9&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot=
;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:cca8bde9d700d=
68c5f36d7d4c47c048526aedfc0&quot;<br>
&gt; meta-xilinx-bsp=C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:7935ef724cd7359ed9=
7e6ae3d90ebc8f07dd7e1f&quot;<br>
&gt; meta-oe<br>
&gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:dacfa2b1=
920e285531bec55cd2f08743390aaf57&quot;<br>
&gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D =
&quot;rocko:7dccdf82d49fb11cb2a7cb205ae08311e5d43291&quot;<br>
&gt; meta-clang=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:a4c=
0cd28de9c3d5823be43150a76d221b08896d6&quot;<br>
&gt; meta-l1calo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;update/ROOT:0c=
fb5bfd77ec9bb9fb9afbf4271786842a5dff8f&quot;<br>
&gt; workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:cca=
8bde9d700d68c5f36d7d4c47c048526aedfc0&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
############################################| Time: 0:00:03<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: root-6.14.00-r0 do_configure: Function failed: do_configure (lo=
g file is located at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/temp/log.do_configure.2984)<br>
&gt; ERROR: Logfile of failure stored in: /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/temp/log.do_configur=
e.2984<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_configure<br>
&gt; | -- The C compiler identification is Clang 5.0.1<br>
&gt; | -- The CXX compiler identification is Clang 5.0.1<br>
&gt; | -- Check for working C compiler: /local/d4/gstark/poky/build/tmp/wor=
k/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/=
usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang<br>
&gt; | -- Check for working C compiler: /local/d4/gstark/poky/build/tmp/wor=
k/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/=
usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang -- works<br>
&gt; | -- Detecting C compiler ABI info<br>
&gt; | -- Detecting C compiler ABI info - done<br>
&gt; | -- Detecting C compile features<br>
&gt; | -- Detecting C compile features - done<br>
&gt; | -- Check for working CXX compiler: /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-nativ=
e/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang++<br>
&gt; | -- Check for working CXX compiler: /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-nativ=
e/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang++ -- works<br=
>
&gt; | -- Detecting CXX compiler ABI info<br>
&gt; | -- Detecting CXX compiler ABI info - done<br>
&gt; | -- Detecting CXX compile features<br>
&gt; | -- Detecting CXX compile features - done<br>
&gt; | -- ROOT default compression algorithm is lz4<br>
&gt; | -- Vc does not support arm. Support for Vc disabled.<br>
&gt; | -- Found Clang. Major version 5, minor version 0<br>
&gt; | -- Performing Test HAS_CXX11<br>
&gt; | -- Performing Test HAS_CXX11 - Success<br>
&gt; | -- Looking for pthread.h<br>
&gt; | -- Looking for pthread.h - found<br>
&gt; | -- Looking for pthread_create<br>
&gt; | -- Looking for pthread_create - not found<br>
&gt; | -- Looking for pthread_create in pthreads<br>
&gt; | -- Looking for pthread_create in pthreads - not found<br>
&gt; | -- Looking for pthread_create in pthread<br>
&gt; | -- Looking for pthread_create in pthread - found<br>
&gt; | -- Found Threads: TRUE<br>
&gt; | -- Found a 64bit system<br>
&gt; | -- Found CLANG compiler<br>
&gt; | -- Performing Test GLIBCXX_USE_CXX11_ABI<br>
&gt; | -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed<br>
&gt; | -- ROOT Platform: linux<br>
&gt; | -- ROOT Architecture: linuxx8664gcc<br>
&gt; | -- Build Type: RelWithDebInfo<br>
&gt; | -- Compiler Flags: -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=
=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=3Dinline=
 -no-integrated-as -Wno-error=3Dunused-command-line-argument -Qunused-argum=
ents=C2=A0 --sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=C2=A0 -O2 -pipe -g -feli=
minate-unused-debug-types -fdebug-prefix-map=3D/local/d4/gstark/poky/build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0=3D/usr/src/debu=
g/root/6.14.00-r0 -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work=
/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native=
=3D -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=3D=C2=A0 -fvisibility-=
inlines-hidden -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=3Dinline -no-integrat=
ed-as -Wno-error=3Dunused-command-line-argument -Qunused-arguments=C2=A0 --=
sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-g=
nueabi/root/6.14.00-r0/recipe-sysroot -Wc++11-narrowing -Wsign-compare -Wso=
metimes-uninitialized -Wconditional-uninitialized -Wheader-guard -Warray-bo=
unds -Wcomment -Wtautological-compare -Wstrncat-size -Wloop-analysis -Wbool=
-conversion -pipe -m64=C2=A0 -Wshadow -Wall -W -Woverloaded-virtual -fsigne=
d-char -pthread -std=3Dc++11<br>
&gt; | -- Looking for ZLib<br>
&gt; | -- Found ZLIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libz.so (found ve=
rsion &quot;1.2.11&quot;)<br>
&gt; | -- Looking for Freetype<br>
&gt; | -- Found Freetype: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-n=
eon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libfreetype.s=
o (found version &quot;2.8.0&quot;)<br>
&gt; | -- Looking for PCRE<br>
&gt; | -- Found PCRE: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- Looking for LZMA<br>
&gt; | -- Found LZMA includes at /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br=
>
&gt; | -- Found LZMA library at /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/liblzma=
.so<br>
&gt; | -- Looking for xxHash<br>
&gt; | -- Could NOT find xxHash (missing:=C2=A0 xxHash_LIBRARY xxHash_INCLU=
DE_DIR)<br>
&gt; | -- xxHash not found. Switching on builtin_xxhash option<br>
&gt; | -- Looking for LZ4<br>
&gt; | -- Found LZ4: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/liblz4.so (found v=
ersion &quot;1.7.5&quot;)<br>
&gt; | -- Looking for X11<br>
&gt; | -- Looking for XOpenDisplay in /local/d4/gstark/poky/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/l=
ibX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so<br>
&gt; | -- Looking for XOpenDisplay in /local/d4/gstark/poky/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/l=
ibX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so - not found<br>
&gt; | -- Looking for dnet_ntoa in dnet<br>
&gt; | -- Looking for dnet_ntoa in dnet - not found<br>
&gt; | -- Looking for dnet_ntoa in dnet_stub<br>
&gt; | -- Looking for dnet_ntoa in dnet_stub - not found<br>
&gt; | -- Looking for gethostbyname<br>
&gt; | -- Looking for gethostbyname - not found<br>
&gt; | -- Looking for gethostbyname in nsl<br>
&gt; | -- Looking for gethostbyname in nsl - not found<br>
&gt; | -- Looking for gethostbyname in bsd<br>
&gt; | -- Looking for gethostbyname in bsd - not found<br>
&gt; | -- Looking for connect<br>
&gt; | -- Looking for connect - not found<br>
&gt; | -- Looking for connect in socket<br>
&gt; | -- Looking for connect in socket - not found<br>
&gt; | -- Looking for remove<br>
&gt; | -- Looking for remove - not found<br>
&gt; | -- Looking for remove in posix<br>
&gt; | -- Looking for remove in posix - not found<br>
&gt; | -- Looking for shmat<br>
&gt; | -- Looking for shmat - not found<br>
&gt; | -- Looking for shmat in ipc<br>
&gt; | -- Looking for shmat in ipc - not found<br>
&gt; | -- Looking for IceConnectionNumber in ICE<br>
&gt; | -- Looking for IceConnectionNumber in ICE - not found<br>
&gt; | -- Found X11: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so<br>
&gt; | -- X11_INCLUDE_DIR: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- X11_LIBRARIES: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/loc=
al/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.=
14.00-r0/recipe-sysroot/usr/lib/libXext.so<br>
&gt; | -- X11_Xpm_INCLUDE_PATH: /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- X11_Xpm_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.so<br>
&gt; | -- X11_Xft_INCLUDE_PATH: /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- X11_Xft_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXft.so<br>
&gt; | -- X11_Xext_INCLUDE_PATH:<br>
&gt; | -- X11_Xext_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so<br>
&gt; | -- Looking for GSL<br>
&gt; | -- Found GSL: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include (found suitabl=
e version &quot;1.15&quot;, minimum required is &quot;1.10&quot;)<br>
&gt; | -- Found PythonInterp: /local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/py=
thon-native/python (found version &quot;2.7.13&quot;)<br>
&gt; | -- Found PythonLibs: /local/d4/gstark/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/<a href=3D"=
http://libpython2.7.so" rel=3D"noreferrer" target=3D"_blank">libpython2.7.s=
o</a> (found version &quot;2.7.13&quot;)<br>
&gt; | -- Looking for OpenGL<br>
&gt; | -- Found OpenGL: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libGL.so<br>
&gt; | -- Looking for GLEW<br>
&gt; | -- Found GLEW: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- Looking for gl2ps<br>
&gt; | -- Could NOT find GL2PS (missing:=C2=A0 GL2PS_LIBRARY GL2PS_INCLUDE_=
DIR)<br>
&gt; | -- gl2ps not found. Switching on builtin_gl2ps option<br>
&gt; | -- Looking for LibXml2<br>
&gt; | -- Found LibXml2: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libxml2.so (fo=
und version &quot;2.9.4&quot;)<br>
&gt; | -- Found OpenSSL: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libcrypto.so (=
found version &quot;1.0.2n&quot;)<br>
&gt; | -- Looking for Castor<br>
&gt; | -- Could NOT find CASTOR (missing:=C2=A0 CASTOR_shift_LIBRARY CASTOR=
_INCLUDE_DIR)<br>
&gt; | -- Castor not found. Switching off castor option<br>
&gt; | -- Looking for MySQL<br>
&gt; | -- Could NOT find MYSQL (missing:=C2=A0 MYSQL_INCLUDE_DIR MYSQL_LIBR=
ARIES)<br>
&gt; | -- MySQL not found. Switching off mysql option<br>
&gt; | -- Looking for Oracle<br>
&gt; | -- Oracle not found.<br>
&gt; | -- Oracle: You can specify includes: -DORACLE_PATH_INCLUDES=3D/usr/i=
nclude/oracle/<a href=3D"http://10.2.0.3/client" rel=3D"noreferrer" target=
=3D"_blank">10.2.0.3/client</a><br>
&gt; | --=C2=A0 =C2=A0 currently found includes:<br>
&gt; | -- Oracle: You can specify libs: -DORACLE_PATH_LIB=3D/usr/lib/oracle=
/<a href=3D"http://10.2.0.3/client/lib" rel=3D"noreferrer" target=3D"_blank=
">10.2.0.3/client/lib</a><br>
&gt; | --=C2=A0 =C2=A0 currently found libs: ORACLE_LIBRARY_OCCI-NOTFOUND;O=
RACLE_LIBRARY_CLNTSH-NOTFOUND;ORACLE_LIBRARY_LNNZ-NOTFOUND<br>
&gt; | -- Oracle not found. Switching off oracle option<br>
&gt; | -- Looking for PostgreSQL<br>
&gt; | -- Could NOT find PostgreSQL (missing:=C2=A0 POSTGRESQL_INCLUDE_DIR =
POSTGRESQL_LIBRARY)<br>
&gt; | -- PostgreSQL not found. Switching off pgsql option<br>
&gt; | -- Looking for SQLite<br>
&gt; | -- Found PkgConfig: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-=
neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/pkg-c=
onfig (found version &quot;0.29.2&quot;)<br>
&gt; | -- Found Sqlite: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- Looking for Pythia6<br>
&gt; | -- Pythia6 not found. Switching off pythia6 option<br>
&gt; | -- Looking for Pythia8<br>
&gt; | -- Could NOT find Pythia8 (missing:=C2=A0 PYTHIA8_INCLUDE_DIR PYTHIA=
8_LIBRARY)<br>
&gt; | -- Pythia8 not found. Switching off pythia8 option<br>
&gt; | -- Looking for FFTW3<br>
&gt; | -- Found fftw3 includes at /local/d4/gstark/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<b=
r>
&gt; | -- Found fftw3 library at /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libfft=
w3.so<br>
&gt; | -- Looking for CFITSIO<br>
&gt; | -- Could NOT find CFITSIO (missing:=C2=A0 CFITSIO_INCLUDE_DIR CFITSI=
O_LIBRARY)<br>
&gt; | -- CFITSIO not found. You can enable the option &#39;builtin_cfitsio=
&#39; to build the library internally&#39;<br>
&gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 For the time being switching off &#39;fitsio&#39; option<br>
&gt; | -- Looking for XROOTD<br>
&gt; | -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDVERS=3D40008000=
3)<br>
&gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libXrdMain not fo=
und: xproofd will be a wrapper around xrootd<br>
&gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 include_dirs: /lo=
cal/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6=
.14.00-r0/recipe-sysroot/usr/include/xrootd;/local/d4/gstark/poky/build/tmp=
/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr=
/include/xrootd/private<br>
&gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libraries: /local=
/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14=
.00-r0/recipe-sysroot/usr/lib/libXrdUtils.so;/local/d4/gstark/poky/build/tm=
p/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/us=
r/lib/libXrdClient.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdCl.so<br>
&gt; | -- Could NOT find GFAL (missing:=C2=A0 GFAL_INCLUDE_DIR SRM_IFCE_INC=
LUDE_DIR GFAL_LIBRARY)<br>
&gt; | -- GFAL library not found. Set variable GFAL_DIR to point to your gf=
al installation<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0and the variable SRM_IFCE_DIR to the srm_ifce installation<br=
>
&gt; | -- For the time being switching OFF &#39;gfal&#39; option<br>
&gt; | -- Checking for module &#39;davix&gt;=3D0.6.4&#39;<br>
&gt; | --=C2=A0 =C2=A0No package &#39;davix&#39; found<br>
&gt; | -- Looking for uuid_generate_random in uuid<br>
&gt; | -- Looking for uuid_generate_random in uuid - not found<br>
&gt; | -- Found uuid: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt; | -- Davix not found, switching ON &#39;builtin_davix&#39; option.<br>
&gt; | -- Looking for clock_gettime<br>
&gt; | -- Looking for clock_gettime - not found<br>
&gt; | -- Looking for clock_gettime in rt<br>
&gt; | -- Looking for clock_gettime in rt - not found<br>
&gt; | -- Looking for TBB<br>
&gt; | -- Could NOT find TBB (missing:=C2=A0 TBB_ROOT_DIR TBB_INCLUDE_DIR T=
BB_LIBRARY)<br>
&gt; | -- TBB not found. Switching on builtin_tbb option<br>
&gt; | -- Performing Test CXX_HAS_mno_rtm<br>
&gt; | -- Performing Test CXX_HAS_mno_rtm - Failed<br>
&gt; | -- Looking for BLAS for optional parts of TMVA<br>
&gt; | -- A library with BLAS API not found. Please specify library locatio=
n.<br>
&gt; | -- Using GSL CBLAS for optional parts of TMVA<br>
&gt; | -- Enabled support for:=C2=A0 builtin_davix builtin_ftgl builtin_gl2=
ps builtin_clang builtin_tbb builtin_xxhash cling cxx11 davix exceptions ex=
plicitlink fftw3 gdml genvector http imt mathmore minuit2 opengl pch python=
 roofit shared sqlite ssl thread tmva tmva-cpu x11 xft xml xrootd<br>
&gt; | -- Found LLVM_CONFIG as /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/l=
lvm-config<br>
&gt; | -- Linker detection: GNU ld<br>
&gt; | CMake Warning at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/ll=
vm/HandleLLVMOptions.cmake:185 (message):<br>
&gt; |=C2=A0 =C2=A0-fPIC is not supported.<br>
&gt; | Call Stack (most recent call first):<br>
&gt; |=C2=A0 =C2=A0/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-pok=
y-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/Ha=
ndleLLVMOptions.cmake:213 (add_flag_or_print_warning)<br>
&gt; |=C2=A0 =C2=A0interpreter/CMakeLists.txt:285 (include)<br>
&gt; |<br>
&gt; |<br>
&gt; | CMake Error at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm=
/HandleLLVMOptions.cmake:402 (message):<br>
&gt; |=C2=A0 =C2=A0LLVM requires C++11 support but the &#39;-std=3Dc++11&#3=
9; flag isn&#39;t supported.<br>
&gt; | Call Stack (most recent call first):<br>
&gt; |=C2=A0 =C2=A0interpreter/CMakeLists.txt:285 (include)<br>
&gt; |<br>
&gt; |<br>
&gt; | -- Configuring incomplete, errors occurred!<br>
&gt; | See also &quot;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeOutput.log&quot;.<=
br>
&gt; | See also &quot;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeError.log&quot;.<b=
r>
&gt; | WARNING: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-l=
inux-gnueabi/root/6.14.00-r0/temp/run.do_configure.2984:1 exit 1 from &#39;=
cmake $oecmake_sitefile /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/root-6.14.00 -DCMAKE_INSTALL_PREFIX:PA=
TH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3D=
sbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:P=
ATH=3D/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com -DCMAKE_INSTALL_LOC=
ALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_IN=
CLUDEDIR:PATH=3Dinclude -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_IN=
STALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/local/d4/gstark/poky/build/tm=
p/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/toolchain.cmake -=
DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -Drootfit=
=3DON -Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuiltin_freet=
ype=3DOFF -Dbuiltin_llvm=3DOFF -Dbuiltin_glew=3DOFF -Dastiff=3DOFF -Dasimag=
e=3DOFF -Dbuiltin_afterimage=3DOFF -Dalien=3DOFF -Dvdt=3DOFF ${PACKAGECONFI=
G_CONFARGS} -Wno-dev&#39;<br>
&gt; | ERROR: Function failed: do_configure (log file is located at /local/=
d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.=
00-r0/temp/log.do_configure.2984)<br>
&gt; ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/root_6.14.=
00.bb:do_configure) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jul 11, 2018 at 3:35 PM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Giordon<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark &lt;<a href=3D"mail=
to:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; | /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a: error adding s=
ymbols: File in wrong format<br>
&gt;&gt; &gt; | clang-5.0: error: linker command failed with exit code 1 (u=
se -v to see invocation)<br>
&gt;&gt; &gt; | interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/=
clang-tblgen.dir/build.make:95: recipe for target &#39;interpreter/llvm/src=
/bin/clang-tblgen&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error =
1<br>
&gt;&gt; &gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/build=
/tmp/work/aarch64-poky-linux/root/6.14.00-r0/build&#39;<br>
&gt;&gt; &gt; | CMakeFiles/Makefile2:791: recipe for target &#39;interprete=
r/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all&#39; =
failed<br>
&gt;&gt; &gt; | make[1]: *** [interpreter/llvm/src/tools/clang/utils/TableG=
en/CMakeFiles/clang-tblgen.dir/all] Error 2<br>
&gt;&gt; &gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Here&#39;s the full log: <a href=3D"https://gist.github.com/3=
403addf74b5e902adec93b75fb0e138" rel=3D"noreferrer" target=3D"_blank">https=
://gist.github.com/3403addf74b5e902adec93b75fb0e138</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Any ideas how to get a more verbose invocation if needed? I s=
uspect the error is due to some pre-built libraries being shipped in this r=
ecipe, but I&#39;m not sure what&#39;s causing the error in the first place=
.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; it seems to be linking with native llvm libraries which might not =
be intended.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Note: I am using meta-clang. The recipe I&#39;m using looks l=
ike:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SUMMARY =3D &quot;Numerical data analysis framework (OO)&quot=
;<br>
&gt;&gt; &gt; DESCRIPTION =3D &quot;Object oriented framework for large sca=
le data analysis&quot;<br>
&gt;&gt; &gt; HOMEPAGE =3D &quot;<a href=3D"http://root.cern.ch" rel=3D"nor=
eferrer" target=3D"_blank">http://root.cern.ch</a>&quot;<br>
&gt;&gt; &gt; LICENSE =3D &quot;LGPLv2.1&quot;<br>
&gt;&gt; &gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D5ec773ab82cbe=
a1f17ec5b98e8ce60cf&quot;<br>
&gt;&gt; &gt; SRC_URI =3D &quot;<a href=3D"https://root.cern.ch/download/ro=
ot_v$%7BPV%7D.source.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://r=
oot.cern.ch/download/root_v${PV}.source.tar.gz</a>&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; S =3D &quot;${WORKDIR}/${BPN}-${PV}&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; TOOLCHAIN =3D &quot;clang&quot;<br>
&gt;&gt; &gt; #TARGET_CXXFLAGS_append_toolchain-clang =3D &quot; -stdlib=3D=
libc++ &quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; DEPENDS +=3D &quot;llvm-native libpcre lz4 libx11 libxpm libx=
ft gsl fftw libatomic-ops freetype glew xrootd&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; it seems you really need llvm for target in dependencies so please=
<br>
&gt;&gt; remove llvm-native from DEPENDS<br>
&gt;&gt; and add clang to it.<br>
&gt;&gt;<br>
&gt;&gt; &gt; inherit cmake pkgconfig pythonnative<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; do_configure_prepend(){<br>
&gt;&gt; &gt; export FC=3D${GFORTRAN}<br>
&gt;&gt; &gt; }<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; EXTRA_OECMAKE =3D &quot;\<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Drootfit=3DON \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dminuit2=3DON \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dpython=3DON \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dssl=3DON \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dxrootd=3DON \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_freetype=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_llvm=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_glew=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dastiff=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dasimage=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_afterimage=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dalien=3DOFF \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dvdt=3DOFF \<br>
&gt;&gt; &gt; &quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Giordon Stark<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt;<br>
&gt; --<br>
&gt; Giordon Stark<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--00000000000000dfdf0570e1e6e1--
