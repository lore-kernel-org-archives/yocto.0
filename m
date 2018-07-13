Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18342E01063; Fri, 13 Jul 2018 08:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
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
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD5E0E00CC9
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 08:36:27 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id y10-v6so16851664ioa.10
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 08:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Fb/IVMf6/Et7PIhI2wvB2m8PpFsij4LhBlbrpwfqFu4=;
	b=HraN2aUWG9DSrK4biK2hN7eF6cv0+ciwwUcGQw+TeoJdldWAsOM638vBnl6cH7fmHC
	woghqJu3NbbBB/XKz0UZ3yH8/vgGUe7gCyTCi05jbNhGIbzniPM/HzxXGXPPvpjgyWuE
	hhmfq4MNZy4GYV6iHdYO9JxLYEd4d/hxREa/bSBK9drzho6DfpZ1EN+rfY+L3AIR3kIL
	SS7uAwRt/OeUBOYOaiLzRyuzxA3X+BTLktxmgAWh5o5BqiGYNEBWZo5rsgEbP5d405EE
	VwN63v0jEBxvmeZ4fMIdlUu+/CCSK92q3uZ1eXFt8Zo0ZKZiCwhZB0uGnVaGF3vtbHcR
	1HiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Fb/IVMf6/Et7PIhI2wvB2m8PpFsij4LhBlbrpwfqFu4=;
	b=E0A/6gbVnp/QX/uSxSBRCNhMEFtoIZVWcDUo1kJQ6jQdgfKguGv3tHeUjm3semPfqt
	3ORIQnvtfqhOU5JDMeBSxpMHEm5DnNZenIwjApHeDYKeSog6aQZfmvB7QlWZQTEg8/nH
	o0nM7rFbbUEK4A84/qIzTPvUf4FijAialGUYKZ+NxUPP1jxH5BZJu7oJuI3owuMTun0/
	FWvcJJSqa4cc5h461eCYgHkDC5zGo3LgwBbLiuztgyHn8p5mEqzvF9uX/T52/6SiYSc+
	golT9B5LgblTu1hO589a+VC2Sbq9/Q0MiQcyMxjmTs0o5Zc9y2kskkm7hS4cyUck3ebo
	k5LA==
X-Gm-Message-State: AOUpUlEtdkYBLQTpY56mtAjvc8XtS96kGwRL52iqNuqUVQKPirP0Q4Jk
	OBZA2cTPSra6NlKnvgp4u9LSBNi/itaNlssDrvU=
X-Google-Smtp-Source: AAOMgpcxg/ks116xcZFppRmrAaB7K4Bwhu4vpuJl645mhK7ePvG1wZnfUM+xgmo52g7LJ2KwKXx6LZgNN2d6qbH9Cpk=
X-Received: by 2002:a5e:8341:: with SMTP id
	y1-v6mr17389629iom.183.1531496187005; 
	Fri, 13 Jul 2018 08:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
	<CAMKF1soVjuxqEv0YECuAAxcWm7kWpm5k3Yo_ognnJo5eUhaXGQ@mail.gmail.com>
	<CAFzUWG=XB-HXZ4RRNnxufiBm9zTsp-jKCP-BGgmFP8cJ1=tStw@mail.gmail.com>
	<CAMKF1spoykTOLMb2wG9Yi8+eS9xt6GUfCpEnaHq_hUBctc5nEg@mail.gmail.com>
	<CAFzUWGnkL0aYvG+NX9un8zV=ucYX8tjNumWbj=3TBtF0gFRgoQ@mail.gmail.com>
	<CAMKF1spKRGVcQLXn-FW+=579ELKXb3eNzg6i59XhAX+yg8=1AA@mail.gmail.com>
In-Reply-To: <CAMKF1spKRGVcQLXn-FW+=579ELKXb3eNzg6i59XhAX+yg8=1AA@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 13 Jul 2018 11:36:15 -0400
Message-ID: <CAFzUWGnxcH8U6JFv2_5BAXpEDTOENjjHDPKjvT-tmB2dmkhb-g@mail.gmail.com>
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
X-List-Received-Date: Fri, 13 Jul 2018 15:36:31 -0000
Content-Type: multipart/alternative; boundary="000000000000338e880570e33ece"

--000000000000338e880570e33ece
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

For meta-clang -- I'm on rocko. Is that truly too old? I'm going to switch
to sumo in the next few weeks, but I was hoping to nail some of these
recipes before I switch to sumo (one of the bigger things is the update to
the linux kernel when switching will give me a bunch of patches for QSPI
for the machines I'm on and I need to debug the QSPI first before switching
over...)

commit a4c0cd28de9c3d5823be43150a76d221b08896d6
Author: Khem Raj <raj.khem@gmail.com>
Date:   Tue Dec 12 19:02:54 2017 -0800

    clang: Update to latest on release_50

    Fixes issue #47

    Signed-off-by: Khem Raj <raj.khem@gmail.com>

and I think I have the particular commit you're linking:

kratsg@dc:~/d4/gstark/meta-clang$ git branch --contains e9def8f1
  master
* rocko

So I will go ahead and add the extra TUNES you listed at the end of your
email and see if that works for me.

Giordon

On Fri, Jul 13, 2018 at 10:32 AM Khem Raj <raj.khem@gmail.com> wrote:

> Hi Giordon
>
> I realised that you are on an older release can you cherry pick
>
> https://github.com/kraj/meta-clang/commit/e9def8f1
>
> I hope that will be helpful this was done for armv7ve/rpi3
>
> I think that you need to add following for your case. If it works you
> can send the patches for the branch you are on.
>
> TUNE_CCARGS_remove_toolchain-clang =3D "-march=3Darmv7-a"
> TUNE_CCARGS_append_toolchain-clang =3D
> "${@bb.utils.contains("TUNE_FEATURES", "armv7a", " -march=3Darmv7a", "",
> d)}"
> On Fri, Jul 13, 2018 at 8:00 AM Giordon Stark <kratsg@gmail.com> wrote:
> >
> > Hi Khem,
> >
> > I've uploaded the gist here:
> https://gist.github.com/ef8b964d563b9b0c5249b199033d7b6e
> >
> > Looks like the error is:
> >
> > clang-5.0: error: the clang compiler does not support '-march=3Darmv7-a=
'
> >
> > Giordon
> >
> > On Fri, Jul 13, 2018 at 1:30 AM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> Hi Giordon
> >>
> >> I think there is something else going on. Can you check
> >>
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/build/CMakeFiles/CMakeError.log
> >>
> >> and see what error message is being spit out by clang when its trying
> >> to compile the sample file to detect c++11
> >> On Thu, Jul 12, 2018 at 1:57 PM Giordon Stark <kratsg@gmail.com> wrote=
:
> >> >
> >> > Hi Khem,
> >> >
> >> > I added clang, removed llvm-native -- and now I get an llvm error --
> supposedly because the llvm being used with yocto may be too old(?).
> >> >
> >> > kratsg@dc:/local/d4/gstark/poky/build$ bitbake root
> >> > Loading cache: 100%
> |########################################################################=
###########################################################################=
#####################|
> Time: 0:00:00
> >> > Loaded 3854 entries from dependency cache.
> >> > Parsing recipes: 100%
> |########################################################################=
###########################################################################=
###################|
> Time: 0:00:03
> >> > Parsing of 2600 .bb files complete (2598 cached, 2 parsed). 3853
> targets, 163 skipped, 0 masked, 0 errors.
> >> > NOTE: Resolving any missing task queue dependencies
> >> >
> >> > Build Configuration:
> >> > BB_VERSION           =3D "1.36.0"
> >> > BUILD_SYS            =3D "x86_64-linux"
> >> > NATIVELSBSTRING      =3D "universal"
> >> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> >> > MACHINE              =3D "zc702-zynq7"
> >> > DISTRO               =3D "poky"
> >> > DISTRO_VERSION       =3D "2.4.2"
> >> > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-h=
ard
> cortexa9"
> >> > TARGET_FPU           =3D "hard"
> >> > meta
> >> > meta-poky
> >> > meta-yocto-bsp       =3D
> "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc0"
> >> > meta-xilinx-bsp      =3D
> "rocko:7935ef724cd7359ed97e6ae3d90ebc8f07dd7e1f"
> >> > meta-oe
> >> > meta-python          =3D
> "rocko:dacfa2b1920e285531bec55cd2f08743390aaf57"
> >> > meta                 =3D
> "rocko:7dccdf82d49fb11cb2a7cb205ae08311e5d43291"
> >> > meta-clang           =3D
> "rocko:a4c0cd28de9c3d5823be43150a76d221b08896d6"
> >> > meta-l1calo          =3D
> "update/ROOT:0cfb5bfd77ec9bb9fb9afbf4271786842a5dff8f"
> >> > workspace            =3D
> "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc0"
> >> >
> >> > Initialising tasks: 100%
> |########################################################################=
###########################################################################=
################|
> Time: 0:00:03
> >> > NOTE: Executing SetScene Tasks
> >> > NOTE: Executing RunQueue Tasks
> >> > ERROR: root-6.14.00-r0 do_configure: Function failed: do_configure
> (log file is located at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984)
> >> > ERROR: Logfile of failure stored in:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984
> >> > Log data follows:
> >> > | DEBUG: Executing shell function do_configure
> >> > | -- The C compiler identification is Clang 5.0.1
> >> > | -- The CXX compiler identification is Clang 5.0.1
> >> > | -- Check for working C compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang
> >> > | -- Check for working C compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang
> -- works
> >> > | -- Detecting C compiler ABI info
> >> > | -- Detecting C compiler ABI info - done
> >> > | -- Detecting C compile features
> >> > | -- Detecting C compile features - done
> >> > | -- Check for working CXX compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang++
> >> > | -- Check for working CXX compiler:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-pok=
y-linux-gnueabi-clang++
> -- works
> >> > | -- Detecting CXX compiler ABI info
> >> > | -- Detecting CXX compiler ABI info - done
> >> > | -- Detecting CXX compile features
> >> > | -- Detecting CXX compile features - done
> >> > | -- ROOT default compression algorithm is lz4
> >> > | -- Vc does not support arm. Support for Vc disabled.
> >> > | -- Found Clang. Major version 5, minor version 0
> >> > | -- Performing Test HAS_CXX11
> >> > | -- Performing Test HAS_CXX11 - Success
> >> > | -- Looking for pthread.h
> >> > | -- Looking for pthread.h - found
> >> > | -- Looking for pthread_create
> >> > | -- Looking for pthread_create - not found
> >> > | -- Looking for pthread_create in pthreads
> >> > | -- Looking for pthread_create in pthreads - not found
> >> > | -- Looking for pthread_create in pthread
> >> > | -- Looking for pthread_create in pthread - found
> >> > | -- Found Threads: TRUE
> >> > | -- Found a 64bit system
> >> > | -- Found CLANG compiler
> >> > | -- Performing Test GLIBCXX_USE_CXX11_ABI
> >> > | -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed
> >> > | -- ROOT Platform: linux
> >> > | -- ROOT Architecture: linuxx8664gcc
> >> > | -- Build Type: RelWithDebInfo
> >> > | -- Compiler Flags: -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=
=3Dhard
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
> >> > | -- Looking for ZLib
> >> > | -- Found ZLIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libz.so
> (found version "1.2.11")
> >> > | -- Looking for Freetype
> >> > | -- Found Freetype:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libfreetype.so
> (found version "2.8.0")
> >> > | -- Looking for PCRE
> >> > | -- Found PCRE:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- Looking for LZMA
> >> > | -- Found LZMA includes at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- Found LZMA library at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/liblzma.so
> >> > | -- Looking for xxHash
> >> > | -- Could NOT find xxHash (missing:  xxHash_LIBRARY
> xxHash_INCLUDE_DIR)
> >> > | -- xxHash not found. Switching on builtin_xxhash option
> >> > | -- Looking for LZ4
> >> > | -- Found LZ4:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/liblz4.so
> (found version "1.7.5")
> >> > | -- Looking for X11
> >> > | -- Looking for XOpenDisplay in
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libXext.so
> >> > | -- Looking for XOpenDisplay in
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libXext.so
> - not found
> >> > | -- Looking for dnet_ntoa in dnet
> >> > | -- Looking for dnet_ntoa in dnet - not found
> >> > | -- Looking for dnet_ntoa in dnet_stub
> >> > | -- Looking for dnet_ntoa in dnet_stub - not found
> >> > | -- Looking for gethostbyname
> >> > | -- Looking for gethostbyname - not found
> >> > | -- Looking for gethostbyname in nsl
> >> > | -- Looking for gethostbyname in nsl - not found
> >> > | -- Looking for gethostbyname in bsd
> >> > | -- Looking for gethostbyname in bsd - not found
> >> > | -- Looking for connect
> >> > | -- Looking for connect - not found
> >> > | -- Looking for connect in socket
> >> > | -- Looking for connect in socket - not found
> >> > | -- Looking for remove
> >> > | -- Looking for remove - not found
> >> > | -- Looking for remove in posix
> >> > | -- Looking for remove in posix - not found
> >> > | -- Looking for shmat
> >> > | -- Looking for shmat - not found
> >> > | -- Looking for shmat in ipc
> >> > | -- Looking for shmat in ipc - not found
> >> > | -- Looking for IceConnectionNumber in ICE
> >> > | -- Looking for IceConnectionNumber in ICE - not found
> >> > | -- Found X11:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so
> >> > | -- X11_INCLUDE_DIR:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- X11_LIBRARIES:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libXext.so
> >> > | -- X11_Xpm_INCLUDE_PATH:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- X11_Xpm_LIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.so
> >> > | -- X11_Xft_INCLUDE_PATH:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- X11_Xft_LIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXft.so
> >> > | -- X11_Xext_INCLUDE_PATH:
> >> > | -- X11_Xext_LIB:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so
> >> > | -- Looking for GSL
> >> > | -- Found GSL:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> (found suitable version "1.15", minimum required is "1.10")
> >> > | -- Found PythonInterp:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/python-native/python
> (found version "2.7.13")
> >> > | -- Found PythonLibs:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/
> libpython2.7.so (found version "2.7.13")
> >> > | -- Looking for OpenGL
> >> > | -- Found OpenGL:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libGL.so
> >> > | -- Looking for GLEW
> >> > | -- Found GLEW:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- Looking for gl2ps
> >> > | -- Could NOT find GL2PS (missing:  GL2PS_LIBRARY GL2PS_INCLUDE_DIR=
)
> >> > | -- gl2ps not found. Switching on builtin_gl2ps option
> >> > | -- Looking for LibXml2
> >> > | -- Found LibXml2:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libxml2.so
> (found version "2.9.4")
> >> > | -- Found OpenSSL:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libcrypto.so
> (found version "1.0.2n")
> >> > | -- Looking for Castor
> >> > | -- Could NOT find CASTOR (missing:  CASTOR_shift_LIBRARY
> CASTOR_INCLUDE_DIR)
> >> > | -- Castor not found. Switching off castor option
> >> > | -- Looking for MySQL
> >> > | -- Could NOT find MYSQL (missing:  MYSQL_INCLUDE_DIR
> MYSQL_LIBRARIES)
> >> > | -- MySQL not found. Switching off mysql option
> >> > | -- Looking for Oracle
> >> > | -- Oracle not found.
> >> > | -- Oracle: You can specify includes:
> -DORACLE_PATH_INCLUDES=3D/usr/include/oracle/10.2.0.3/client
> >> > | --    currently found includes:
> >> > | -- Oracle: You can specify libs: -DORACLE_PATH_LIB=3D/usr/lib/orac=
le/
> 10.2.0.3/client/lib
> >> > | --    currently found libs:
> ORACLE_LIBRARY_OCCI-NOTFOUND;ORACLE_LIBRARY_CLNTSH-NOTFOUND;ORACLE_LIBRAR=
Y_LNNZ-NOTFOUND
> >> > | -- Oracle not found. Switching off oracle option
> >> > | -- Looking for PostgreSQL
> >> > | -- Could NOT find PostgreSQL (missing:  POSTGRESQL_INCLUDE_DIR
> POSTGRESQL_LIBRARY)
> >> > | -- PostgreSQL not found. Switching off pgsql option
> >> > | -- Looking for SQLite
> >> > | -- Found PkgConfig:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/pkg-config
> (found version "0.29.2")
> >> > | -- Found Sqlite:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- Looking for Pythia6
> >> > | -- Pythia6 not found. Switching off pythia6 option
> >> > | -- Looking for Pythia8
> >> > | -- Could NOT find Pythia8 (missing:  PYTHIA8_INCLUDE_DIR
> PYTHIA8_LIBRARY)
> >> > | -- Pythia8 not found. Switching off pythia8 option
> >> > | -- Looking for FFTW3
> >> > | -- Found fftw3 includes at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- Found fftw3 library at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libfftw3.so
> >> > | -- Looking for CFITSIO
> >> > | -- Could NOT find CFITSIO (missing:  CFITSIO_INCLUDE_DIR
> CFITSIO_LIBRARY)
> >> > | -- CFITSIO not found. You can enable the option 'builtin_cfitsio'
> to build the library internally'
> >> > | --                    For the time being switching off 'fitsio'
> option
> >> > | -- Looking for XROOTD
> >> > | -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDVERS=3D400080=
003)
> >> > | --              libXrdMain not found: xproofd will be a wrapper
> around xrootd
> >> > | --              include_dirs:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include/xrootd;/local/d4/gstark/poky/buil=
d/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroo=
t/usr/include/xrootd/private
> >> > | --              libraries:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/lib/libXrdUtils.so;/local/d4/gstark/poky/=
build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sy=
sroot/usr/lib/libXrdClient.so;/local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdCl.=
so
> >> > | -- Could NOT find GFAL (missing:  GFAL_INCLUDE_DIR
> SRM_IFCE_INCLUDE_DIR GFAL_LIBRARY)
> >> > | -- GFAL library not found. Set variable GFAL_DIR to point to your
> gfal installation
> >> > |                       and the variable SRM_IFCE_DIR to the srm_ifc=
e
> installation
> >> > | -- For the time being switching OFF 'gfal' option
> >> > | -- Checking for module 'davix>=3D0.6.4'
> >> > | --   No package 'davix' found
> >> > | -- Looking for uuid_generate_random in uuid
> >> > | -- Looking for uuid_generate_random in uuid - not found
> >> > | -- Found uuid:
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot/usr/include
> >> > | -- Davix not found, switching ON 'builtin_davix' option.
> >> > | -- Looking for clock_gettime
> >> > | -- Looking for clock_gettime - not found
> >> > | -- Looking for clock_gettime in rt
> >> > | -- Looking for clock_gettime in rt - not found
> >> > | -- Looking for TBB
> >> > | -- Could NOT find TBB (missing:  TBB_ROOT_DIR TBB_INCLUDE_DIR
> TBB_LIBRARY)
> >> > | -- TBB not found. Switching on builtin_tbb option
> >> > | -- Performing Test CXX_HAS_mno_rtm
> >> > | -- Performing Test CXX_HAS_mno_rtm - Failed
> >> > | -- Looking for BLAS for optional parts of TMVA
> >> > | -- A library with BLAS API not found. Please specify library
> location.
> >> > | -- Using GSL CBLAS for optional parts of TMVA
> >> > | -- Enabled support for:  builtin_davix builtin_ftgl builtin_gl2ps
> builtin_clang builtin_tbb builtin_xxhash cling cxx11 davix exceptions
> explicitlink fftw3 gdml genvector http imt mathmore minuit2 opengl pch
> python roofit shared sqlite ssl thread tmva tmva-cpu x11 xft xml xrootd
> >> > | -- Found LLVM_CONFIG as
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/bin/llvm-config
> >> > | -- Linker detection: GNU ld
> >> > | CMake Warning at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.c=
make:185
> (message):
> >> > |   -fPIC is not supported.
> >> > | Call Stack (most recent call first):
> >> > |
>  /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.=
cmake:213
> (add_flag_or_print_warning)
> >> > |   interpreter/CMakeLists.txt:285 (include)
> >> > |
> >> > |
> >> > | CMake Error at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.c=
make:402
> (message):
> >> > |   LLVM requires C++11 support but the '-std=3Dc++11' flag isn't
> supported.
> >> > | Call Stack (most recent call first):
> >> > |   interpreter/CMakeLists.txt:285 (include)
> >> > |
> >> > |
> >> > | -- Configuring incomplete, errors occurred!
> >> > | See also
> "/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/build/CMakeFiles/CMakeOutput.log".
> >> > | See also
> "/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/build/CMakeFiles/CMakeError.log".
> >> > | WARNING:
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
> >> > | ERROR: Function failed: do_configure (log file is located at
> /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984)
> >> > ERROR: Task
> (/local/d4/gstark/meta-l1calo/recipes-core/root/root_6.14.00.bb:do_config=
ure)
> failed with exit code '1'
> >> >
> >> >
> >> > On Wed, Jul 11, 2018 at 3:35 PM Khem Raj <raj.khem@gmail.com> wrote:
> >> >>
> >> >> Hi Giordon
> >> >>
> >> >> On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark <kratsg@gmail.com>
> wrote:
> >> >> >
> >> >> > Hi all,
> >> >> >
> >> >> > |
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/r=
ecipe-sysroot-native/usr/lib/libLLVMSupport.a:
> error adding symbols: File in wrong format
> >> >> > | clang-5.0: error: linker command failed with exit code 1 (use -=
v
> to see invocation)
> >> >> > |
> interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.d=
ir/build.make:95:
> recipe for target 'interpreter/llvm/src/bin/clang-tblgen' failed
> >> >> > | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1
> >> >> > | make[2]: Leaving directory
> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/=
build'
> >> >> > | CMakeFiles/Makefile2:791: recipe for target
> 'interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.=
dir/all'
> failed
> >> >> > | make[1]: ***
> [interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.=
dir/all]
> Error 2
> >> >> > | make[1]: *** Waiting for unfinished jobs....
> >> >> >
> >> >> > Here's the full log:
> https://gist.github.com/3403addf74b5e902adec93b75fb0e138
> >> >> >
> >> >> > Any ideas how to get a more verbose invocation if needed? I
> suspect the error is due to some pre-built libraries being shipped in thi=
s
> recipe, but I'm not sure what's causing the error in the first place.
> >> >> >
> >> >>
> >> >> it seems to be linking with native llvm libraries which might not b=
e
> intended.
> >> >>
> >> >> > Note: I am using meta-clang. The recipe I'm using looks like:
> >> >> >
> >> >> > SUMMARY =3D "Numerical data analysis framework (OO)"
> >> >> > DESCRIPTION =3D "Object oriented framework for large scale data
> analysis"
> >> >> > HOMEPAGE =3D "http://root.cern.ch"
> >> >> > LICENSE =3D "LGPLv2.1"
> >> >> > LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D5ec773ab82cbea1f17ec5b98e8ce60cf"
> >> >> > SRC_URI =3D "https://root.cern.ch/download/root_v${PV}.source.tar=
.gz
> "
> >> >> >
> >> >> > S =3D "${WORKDIR}/${BPN}-${PV}"
> >> >> >
> >> >> > TOOLCHAIN =3D "clang"
> >> >> > #TARGET_CXXFLAGS_append_toolchain-clang =3D " -stdlib=3Dlibc++ "
> >> >> >
> >> >> > DEPENDS +=3D "llvm-native libpcre lz4 libx11 libxpm libxft gsl ff=
tw
> libatomic-ops freetype glew xrootd"
> >> >> >
> >> >>
> >> >> it seems you really need llvm for target in dependencies so please
> >> >> remove llvm-native from DEPENDS
> >> >> and add clang to it.
> >> >>
> >> >> > inherit cmake pkgconfig pythonnative
> >> >> >
> >> >> >
> >> >> > do_configure_prepend(){
> >> >> > export FC=3D${GFORTRAN}
> >> >> > }
> >> >> >
> >> >> > EXTRA_OECMAKE =3D "\
> >> >> >     -Drootfit=3DON \
> >> >> >     -Dminuit2=3DON \
> >> >> >     -Dpython=3DON \
> >> >> >     -Dssl=3DON \
> >> >> >     -Dxrootd=3DON \
> >> >> >     -Dbuiltin_freetype=3DOFF \
> >> >> >     -Dbuiltin_llvm=3DOFF \
> >> >> >     -Dbuiltin_glew=3DOFF \
> >> >> >     -Dastiff=3DOFF \
> >> >> >     -Dasimage=3DOFF \
> >> >> >     -Dbuiltin_afterimage=3DOFF \
> >> >> >     -Dalien=3DOFF \
> >> >> >     -Dvdt=3DOFF \
> >> >> > "
> >> >> >
> >> >> > --
> >> >> > Giordon Stark
> >> >> > --
> >> >> > _______________________________________________
> >> >> > yocto mailing list
> >> >> > yocto@yoctoproject.org
> >> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >> > --
> >> > Giordon Stark
> >
> > --
> > Giordon Stark
>
--=20
Giordon Stark

--000000000000338e880570e33ece
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>For meta-clang -- I&#39;m on r=
ocko. Is that truly too old? I&#39;m going to switch to sumo in the next fe=
w weeks, but I was hoping to nail some of these recipes before I switch to =
sumo (one of the bigger things is the update to the linux kernel when switc=
hing will give me a bunch of patches for QSPI for the machines I&#39;m on a=
nd I need to debug the QSPI first before switching over...)</div><div><br><=
/div><div><div><font face=3D"monospace">commit a4c0cd28de9c3d5823be43150a76=
d221b08896d6</font></div><div><font face=3D"monospace">Author: Khem Raj &lt=
;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;</font></d=
iv><div><font face=3D"monospace">Date:=C2=A0 =C2=A0Tue Dec 12 19:02:54 2017=
 -0800</font></div><div><font face=3D"monospace"><br></font></div><div><fon=
t face=3D"monospace">=C2=A0 =C2=A0 clang: Update to latest on release_50</f=
ont></div><div><font face=3D"monospace">=C2=A0 =C2=A0=C2=A0</font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 Fixes issue #47</font></div><div><=
font face=3D"monospace">=C2=A0 =C2=A0=C2=A0</font></div><div><font face=3D"=
monospace">=C2=A0 =C2=A0 Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.=
khem@gmail.com">raj.khem@gmail.com</a>&gt;</font></div><div><br></div></div=
><div>and I think I have the particular commit you&#39;re linking:</div><di=
v><br></div><div><div><font face=3D"monospace">kratsg@dc:~/d4/gstark/meta-c=
lang$ git branch --contains e9def8f1</font></div><div><font face=3D"monospa=
ce">=C2=A0 master</font></div><div><font face=3D"monospace">* rocko</font><=
/div></div><div><br></div><div>So I will go ahead and add the extra TUNES y=
ou listed at the end of your email and see if that works for me.</div><div>=
<br></div><div>Giordon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Fri, Jul 13, 2018 at 10:32 AM Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi Giordon<br>
<br>
I realised that you are on an older release can you cherry pick<br>
<br>
<a href=3D"https://github.com/kraj/meta-clang/commit/e9def8f1" rel=3D"noref=
errer" target=3D"_blank">https://github.com/kraj/meta-clang/commit/e9def8f1=
</a><br>
<br>
I hope that will be helpful this was done for armv7ve/rpi3<br>
<br>
I think that you need to add following for your case. If it works you<br>
can send the patches for the branch you are on.<br>
<br>
TUNE_CCARGS_remove_toolchain-clang =3D &quot;-march=3Darmv7-a&quot;<br>
TUNE_CCARGS_append_toolchain-clang =3D<br>
&quot;${@bb.utils.contains(&quot;TUNE_FEATURES&quot;, &quot;armv7a&quot;, &=
quot; -march=3Darmv7a&quot;, &quot;&quot;,<br>
d)}&quot;<br>
On Fri, Jul 13, 2018 at 8:00 AM Giordon Stark &lt;<a href=3D"mailto:kratsg@=
gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; I&#39;ve uploaded the gist here: <a href=3D"https://gist.github.com/ef=
8b964d563b9b0c5249b199033d7b6e" rel=3D"noreferrer" target=3D"_blank">https:=
//gist.github.com/ef8b964d563b9b0c5249b199033d7b6e</a><br>
&gt;<br>
&gt; Looks like the error is:<br>
&gt;<br>
&gt; clang-5.0: error: the clang compiler does not support &#39;-march=3Dar=
mv7-a&#39;<br>
&gt;<br>
&gt; Giordon<br>
&gt;<br>
&gt; On Fri, Jul 13, 2018 at 1:30 AM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Giordon<br>
&gt;&gt;<br>
&gt;&gt; I think there is something else going on. Can you check<br>
&gt;&gt; /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/build/CMakeFiles/CMakeError.log<br>
&gt;&gt;<br>
&gt;&gt; and see what error message is being spit out by clang when its try=
ing<br>
&gt;&gt; to compile the sample file to detect c++11<br>
&gt;&gt; On Thu, Jul 12, 2018 at 1:57 PM Giordon Stark &lt;<a href=3D"mailt=
o:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Khem,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I added clang, removed llvm-native -- and now I get an llvm e=
rror -- supposedly because the llvm being used with yocto may be too old(?)=
.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; kratsg@dc:/local/d4/gstark/poky/build$ bitbake root<br>
&gt;&gt; &gt; Loading cache: 100% |########################################=
###########################################################################=
#####################################################| Time: 0:00:00<br>
&gt;&gt; &gt; Loaded 3854 entries from dependency cache.<br>
&gt;&gt; &gt; Parsing recipes: 100% |######################################=
###########################################################################=
#####################################################| Time: 0:00:03<br>
&gt;&gt; &gt; Parsing of 2600 .bb files complete (2598 cached, 2 parsed). 3=
853 targets, 163 skipped, 0 masked, 0 errors.<br>
&gt;&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Build Configuration:<br>
&gt;&gt; &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
1.36.0&quot;<br>
&gt;&gt; &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
x86_64-linux&quot;<br>
&gt;&gt; &gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;=
<br>
&gt;&gt; &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
arm-poky-linux-gnueabi&quot;<br>
&gt;&gt; &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;zc702-zynq7&quot;<br>
&gt;&gt; &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;poky&quot;<br>
&gt;&gt; &gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.4.2&quot=
;<br>
&gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a=
 vfp thumb neon callconvention-hard cortexa9&quot;<br>
&gt;&gt; &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
hard&quot;<br>
&gt;&gt; &gt; meta<br>
&gt;&gt; &gt; meta-poky<br>
&gt;&gt; &gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:cca8=
bde9d700d68c5f36d7d4c47c048526aedfc0&quot;<br>
&gt;&gt; &gt; meta-xilinx-bsp=C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:7935ef724=
cd7359ed97e6ae3d90ebc8f07dd7e1f&quot;<br>
&gt;&gt; &gt; meta-oe<br>
&gt;&gt; &gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko=
:dacfa2b1920e285531bec55cd2f08743390aaf57&quot;<br>
&gt;&gt; &gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;rocko:7dccdf82d49fb11cb2a7cb205ae08311e5d43291&quot;<br>
&gt;&gt; &gt; meta-clang=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
rocko:a4c0cd28de9c3d5823be43150a76d221b08896d6&quot;<br>
&gt;&gt; &gt; meta-l1calo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;updat=
e/ROOT:0cfb5bfd77ec9bb9fb9afbf4271786842a5dff8f&quot;<br>
&gt;&gt; &gt; workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc0&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Initialising tasks: 100% |###################################=
###########################################################################=
#####################################################| Time: 0:00:03<br>
&gt;&gt; &gt; NOTE: Executing SetScene Tasks<br>
&gt;&gt; &gt; NOTE: Executing RunQueue Tasks<br>
&gt;&gt; &gt; ERROR: root-6.14.00-r0 do_configure: Function failed: do_conf=
igure (log file is located at /local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/temp/log.do_configure.2984)<br>
&gt;&gt; &gt; ERROR: Logfile of failure stored in: /local/d4/gstark/poky/bu=
ild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/temp/log.do=
_configure.2984<br>
&gt;&gt; &gt; Log data follows:<br>
&gt;&gt; &gt; | DEBUG: Executing shell function do_configure<br>
&gt;&gt; &gt; | -- The C compiler identification is Clang 5.0.1<br>
&gt;&gt; &gt; | -- The CXX compiler identification is Clang 5.0.1<br>
&gt;&gt; &gt; | -- Check for working C compiler: /local/d4/gstark/poky/buil=
d/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang<br>
&gt;&gt; &gt; | -- Check for working C compiler: /local/d4/gstark/poky/buil=
d/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang -- wor=
ks<br>
&gt;&gt; &gt; | -- Detecting C compiler ABI info<br>
&gt;&gt; &gt; | -- Detecting C compiler ABI info - done<br>
&gt;&gt; &gt; | -- Detecting C compile features<br>
&gt;&gt; &gt; | -- Detecting C compile features - done<br>
&gt;&gt; &gt; | -- Check for working CXX compiler: /local/d4/gstark/poky/bu=
ild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysr=
oot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang++<br=
>
&gt;&gt; &gt; | -- Check for working CXX compiler: /local/d4/gstark/poky/bu=
ild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysr=
oot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-clang++ --=
 works<br>
&gt;&gt; &gt; | -- Detecting CXX compiler ABI info<br>
&gt;&gt; &gt; | -- Detecting CXX compiler ABI info - done<br>
&gt;&gt; &gt; | -- Detecting CXX compile features<br>
&gt;&gt; &gt; | -- Detecting CXX compile features - done<br>
&gt;&gt; &gt; | -- ROOT default compression algorithm is lz4<br>
&gt;&gt; &gt; | -- Vc does not support arm. Support for Vc disabled.<br>
&gt;&gt; &gt; | -- Found Clang. Major version 5, minor version 0<br>
&gt;&gt; &gt; | -- Performing Test HAS_CXX11<br>
&gt;&gt; &gt; | -- Performing Test HAS_CXX11 - Success<br>
&gt;&gt; &gt; | -- Looking for pthread.h<br>
&gt;&gt; &gt; | -- Looking for pthread.h - found<br>
&gt;&gt; &gt; | -- Looking for pthread_create<br>
&gt;&gt; &gt; | -- Looking for pthread_create - not found<br>
&gt;&gt; &gt; | -- Looking for pthread_create in pthreads<br>
&gt;&gt; &gt; | -- Looking for pthread_create in pthreads - not found<br>
&gt;&gt; &gt; | -- Looking for pthread_create in pthread<br>
&gt;&gt; &gt; | -- Looking for pthread_create in pthread - found<br>
&gt;&gt; &gt; | -- Found Threads: TRUE<br>
&gt;&gt; &gt; | -- Found a 64bit system<br>
&gt;&gt; &gt; | -- Found CLANG compiler<br>
&gt;&gt; &gt; | -- Performing Test GLIBCXX_USE_CXX11_ABI<br>
&gt;&gt; &gt; | -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed<br>
&gt;&gt; &gt; | -- ROOT Platform: linux<br>
&gt;&gt; &gt; | -- ROOT Architecture: linuxx8664gcc<br>
&gt;&gt; &gt; | -- Build Type: RelWithDebInfo<br>
&gt;&gt; &gt; | -- Compiler Flags: -march=3Darmv7-a -marm -mfpu=3Dneon -mfl=
oat-abi=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=
=3Dinline -no-integrated-as -Wno-error=3Dunused-command-line-argument -Qunu=
sed-arguments=C2=A0 --sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=C2=A0 -O2 -pipe=
 -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/local/d4/gstark/po=
ky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0=3D/usr=
/src/debug/root/6.14.00-r0 -fdebug-prefix-map=3D/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
-native=3D -fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=3D=C2=A0 -fvisi=
bility-inlines-hidden -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=3Dinline -no-i=
ntegrated-as -Wno-error=3Dunused-command-line-argument -Qunused-arguments=
=C2=A0 --sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-pok=
y-linux-gnueabi/root/6.14.00-r0/recipe-sysroot -Wc++11-narrowing -Wsign-com=
pare -Wsometimes-uninitialized -Wconditional-uninitialized -Wheader-guard -=
Warray-bounds -Wcomment -Wtautological-compare -Wstrncat-size -Wloop-analys=
is -Wbool-conversion -pipe -m64=C2=A0 -Wshadow -Wall -W -Woverloaded-virtua=
l -fsigned-char -pthread -std=3Dc++11<br>
&gt;&gt; &gt; | -- Looking for ZLib<br>
&gt;&gt; &gt; | -- Found ZLIB: /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libz.so =
(found version &quot;1.2.11&quot;)<br>
&gt;&gt; &gt; | -- Looking for Freetype<br>
&gt;&gt; &gt; | -- Found Freetype: /local/d4/gstark/poky/build/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libf=
reetype.so (found version &quot;2.8.0&quot;)<br>
&gt;&gt; &gt; | -- Looking for PCRE<br>
&gt;&gt; &gt; | -- Found PCRE: /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt;&gt; &gt; | -- Looking for LZMA<br>
&gt;&gt; &gt; | -- Found LZMA includes at /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/i=
nclude<br>
&gt;&gt; &gt; | -- Found LZMA library at /local/d4/gstark/poky/build/tmp/wo=
rk/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/li=
b/liblzma.so<br>
&gt;&gt; &gt; | -- Looking for xxHash<br>
&gt;&gt; &gt; | -- Could NOT find xxHash (missing:=C2=A0 xxHash_LIBRARY xxH=
ash_INCLUDE_DIR)<br>
&gt;&gt; &gt; | -- xxHash not found. Switching on builtin_xxhash option<br>
&gt;&gt; &gt; | -- Looking for LZ4<br>
&gt;&gt; &gt; | -- Found LZ4: /local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/liblz4.so=
 (found version &quot;1.7.5&quot;)<br>
&gt;&gt; &gt; | -- Looking for X11<br>
&gt;&gt; &gt; | -- Looking for XOpenDisplay in /local/d4/gstark/poky/build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/=
usr/lib/libX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so<br>
&gt;&gt; &gt; | -- Looking for XOpenDisplay in /local/d4/gstark/poky/build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/=
usr/lib/libX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so - not foun=
d<br>
&gt;&gt; &gt; | -- Looking for dnet_ntoa in dnet<br>
&gt;&gt; &gt; | -- Looking for dnet_ntoa in dnet - not found<br>
&gt;&gt; &gt; | -- Looking for dnet_ntoa in dnet_stub<br>
&gt;&gt; &gt; | -- Looking for dnet_ntoa in dnet_stub - not found<br>
&gt;&gt; &gt; | -- Looking for gethostbyname<br>
&gt;&gt; &gt; | -- Looking for gethostbyname - not found<br>
&gt;&gt; &gt; | -- Looking for gethostbyname in nsl<br>
&gt;&gt; &gt; | -- Looking for gethostbyname in nsl - not found<br>
&gt;&gt; &gt; | -- Looking for gethostbyname in bsd<br>
&gt;&gt; &gt; | -- Looking for gethostbyname in bsd - not found<br>
&gt;&gt; &gt; | -- Looking for connect<br>
&gt;&gt; &gt; | -- Looking for connect - not found<br>
&gt;&gt; &gt; | -- Looking for connect in socket<br>
&gt;&gt; &gt; | -- Looking for connect in socket - not found<br>
&gt;&gt; &gt; | -- Looking for remove<br>
&gt;&gt; &gt; | -- Looking for remove - not found<br>
&gt;&gt; &gt; | -- Looking for remove in posix<br>
&gt;&gt; &gt; | -- Looking for remove in posix - not found<br>
&gt;&gt; &gt; | -- Looking for shmat<br>
&gt;&gt; &gt; | -- Looking for shmat - not found<br>
&gt;&gt; &gt; | -- Looking for shmat in ipc<br>
&gt;&gt; &gt; | -- Looking for shmat in ipc - not found<br>
&gt;&gt; &gt; | -- Looking for IceConnectionNumber in ICE<br>
&gt;&gt; &gt; | -- Looking for IceConnectionNumber in ICE - not found<br>
&gt;&gt; &gt; | -- Found X11: /local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so=
<br>
&gt;&gt; &gt; | -- X11_INCLUDE_DIR: /local/d4/gstark/poky/build/tmp/work/co=
rtexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include=
<br>
&gt;&gt; &gt; | -- X11_LIBRARIES: /local/d4/gstark/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX1=
1.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueab=
i/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so<br>
&gt;&gt; &gt; | -- X11_Xpm_INCLUDE_PATH: /local/d4/gstark/poky/build/tmp/wo=
rk/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/in=
clude<br>
&gt;&gt; &gt; | -- X11_Xpm_LIB: /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.=
so<br>
&gt;&gt; &gt; | -- X11_Xft_INCLUDE_PATH: /local/d4/gstark/poky/build/tmp/wo=
rk/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/in=
clude<br>
&gt;&gt; &gt; | -- X11_Xft_LIB: /local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXft.=
so<br>
&gt;&gt; &gt; | -- X11_Xext_INCLUDE_PATH:<br>
&gt;&gt; &gt; | -- X11_Xext_LIB: /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXex=
t.so<br>
&gt;&gt; &gt; | -- Looking for GSL<br>
&gt;&gt; &gt; | -- Found GSL: /local/d4/gstark/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include (foun=
d suitable version &quot;1.15&quot;, minimum required is &quot;1.10&quot;)<=
br>
&gt;&gt; &gt; | -- Found PythonInterp: /local/d4/gstark/poky/build/tmp/work=
/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/u=
sr/bin/python-native/python (found version &quot;2.7.13&quot;)<br>
&gt;&gt; &gt; | -- Found PythonLibs: /local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/<a=
 href=3D"http://libpython2.7.so" rel=3D"noreferrer" target=3D"_blank">libpy=
thon2.7.so</a> (found version &quot;2.7.13&quot;)<br>
&gt;&gt; &gt; | -- Looking for OpenGL<br>
&gt;&gt; &gt; | -- Found OpenGL: /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libGL.=
so<br>
&gt;&gt; &gt; | -- Looking for GLEW<br>
&gt;&gt; &gt; | -- Found GLEW: /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt;&gt; &gt; | -- Looking for gl2ps<br>
&gt;&gt; &gt; | -- Could NOT find GL2PS (missing:=C2=A0 GL2PS_LIBRARY GL2PS=
_INCLUDE_DIR)<br>
&gt;&gt; &gt; | -- gl2ps not found. Switching on builtin_gl2ps option<br>
&gt;&gt; &gt; | -- Looking for LibXml2<br>
&gt;&gt; &gt; | -- Found LibXml2: /local/d4/gstark/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libxm=
l2.so (found version &quot;2.9.4&quot;)<br>
&gt;&gt; &gt; | -- Found OpenSSL: /local/d4/gstark/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libcr=
ypto.so (found version &quot;1.0.2n&quot;)<br>
&gt;&gt; &gt; | -- Looking for Castor<br>
&gt;&gt; &gt; | -- Could NOT find CASTOR (missing:=C2=A0 CASTOR_shift_LIBRA=
RY CASTOR_INCLUDE_DIR)<br>
&gt;&gt; &gt; | -- Castor not found. Switching off castor option<br>
&gt;&gt; &gt; | -- Looking for MySQL<br>
&gt;&gt; &gt; | -- Could NOT find MYSQL (missing:=C2=A0 MYSQL_INCLUDE_DIR M=
YSQL_LIBRARIES)<br>
&gt;&gt; &gt; | -- MySQL not found. Switching off mysql option<br>
&gt;&gt; &gt; | -- Looking for Oracle<br>
&gt;&gt; &gt; | -- Oracle not found.<br>
&gt;&gt; &gt; | -- Oracle: You can specify includes: -DORACLE_PATH_INCLUDES=
=3D/usr/include/oracle/<a href=3D"http://10.2.0.3/client" rel=3D"noreferrer=
" target=3D"_blank">10.2.0.3/client</a><br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0 currently found includes:<br>
&gt;&gt; &gt; | -- Oracle: You can specify libs: -DORACLE_PATH_LIB=3D/usr/l=
ib/oracle/<a href=3D"http://10.2.0.3/client/lib" rel=3D"noreferrer" target=
=3D"_blank">10.2.0.3/client/lib</a><br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0 currently found libs: ORACLE_LIBRARY_OCCI-N=
OTFOUND;ORACLE_LIBRARY_CLNTSH-NOTFOUND;ORACLE_LIBRARY_LNNZ-NOTFOUND<br>
&gt;&gt; &gt; | -- Oracle not found. Switching off oracle option<br>
&gt;&gt; &gt; | -- Looking for PostgreSQL<br>
&gt;&gt; &gt; | -- Could NOT find PostgreSQL (missing:=C2=A0 POSTGRESQL_INC=
LUDE_DIR POSTGRESQL_LIBRARY)<br>
&gt;&gt; &gt; | -- PostgreSQL not found. Switching off pgsql option<br>
&gt;&gt; &gt; | -- Looking for SQLite<br>
&gt;&gt; &gt; | -- Found PkgConfig: /local/d4/gstark/poky/build/tmp/work/co=
rtexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/=
bin/pkg-config (found version &quot;0.29.2&quot;)<br>
&gt;&gt; &gt; | -- Found Sqlite: /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br=
>
&gt;&gt; &gt; | -- Looking for Pythia6<br>
&gt;&gt; &gt; | -- Pythia6 not found. Switching off pythia6 option<br>
&gt;&gt; &gt; | -- Looking for Pythia8<br>
&gt;&gt; &gt; | -- Could NOT find Pythia8 (missing:=C2=A0 PYTHIA8_INCLUDE_D=
IR PYTHIA8_LIBRARY)<br>
&gt;&gt; &gt; | -- Pythia8 not found. Switching off pythia8 option<br>
&gt;&gt; &gt; | -- Looking for FFTW3<br>
&gt;&gt; &gt; | -- Found fftw3 includes at /local/d4/gstark/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/=
include<br>
&gt;&gt; &gt; | -- Found fftw3 library at /local/d4/gstark/poky/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/l=
ib/libfftw3.so<br>
&gt;&gt; &gt; | -- Looking for CFITSIO<br>
&gt;&gt; &gt; | -- Could NOT find CFITSIO (missing:=C2=A0 CFITSIO_INCLUDE_D=
IR CFITSIO_LIBRARY)<br>
&gt;&gt; &gt; | -- CFITSIO not found. You can enable the option &#39;builti=
n_cfitsio&#39; to build the library internally&#39;<br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 For the time being switching off &#39;fitsio&#39; option<br>
&gt;&gt; &gt; | -- Looking for XROOTD<br>
&gt;&gt; &gt; | -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDVERS=
=3D400080003)<br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libXrdMa=
in not found: xproofd will be a wrapper around xrootd<br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 include_=
dirs: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnuea=
bi/root/6.14.00-r0/recipe-sysroot/usr/include/xrootd;/local/d4/gstark/poky/=
build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sy=
sroot/usr/include/xrootd/private<br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 librarie=
s: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdUtils.so;/local/d4/gstark/poky=
/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-s=
ysroot/usr/lib/libXrdClient.so;/local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdCl=
.so<br>
&gt;&gt; &gt; | -- Could NOT find GFAL (missing:=C2=A0 GFAL_INCLUDE_DIR SRM=
_IFCE_INCLUDE_DIR GFAL_LIBRARY)<br>
&gt;&gt; &gt; | -- GFAL library not found. Set variable GFAL_DIR to point t=
o your gfal installation<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0and the variable SRM_IFCE_DIR to the srm_ifce insta=
llation<br>
&gt;&gt; &gt; | -- For the time being switching OFF &#39;gfal&#39; option<b=
r>
&gt;&gt; &gt; | -- Checking for module &#39;davix&gt;=3D0.6.4&#39;<br>
&gt;&gt; &gt; | --=C2=A0 =C2=A0No package &#39;davix&#39; found<br>
&gt;&gt; &gt; | -- Looking for uuid_generate_random in uuid<br>
&gt;&gt; &gt; | -- Looking for uuid_generate_random in uuid - not found<br>
&gt;&gt; &gt; | -- Found uuid: /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include<br>
&gt;&gt; &gt; | -- Davix not found, switching ON &#39;builtin_davix&#39; op=
tion.<br>
&gt;&gt; &gt; | -- Looking for clock_gettime<br>
&gt;&gt; &gt; | -- Looking for clock_gettime - not found<br>
&gt;&gt; &gt; | -- Looking for clock_gettime in rt<br>
&gt;&gt; &gt; | -- Looking for clock_gettime in rt - not found<br>
&gt;&gt; &gt; | -- Looking for TBB<br>
&gt;&gt; &gt; | -- Could NOT find TBB (missing:=C2=A0 TBB_ROOT_DIR TBB_INCL=
UDE_DIR TBB_LIBRARY)<br>
&gt;&gt; &gt; | -- TBB not found. Switching on builtin_tbb option<br>
&gt;&gt; &gt; | -- Performing Test CXX_HAS_mno_rtm<br>
&gt;&gt; &gt; | -- Performing Test CXX_HAS_mno_rtm - Failed<br>
&gt;&gt; &gt; | -- Looking for BLAS for optional parts of TMVA<br>
&gt;&gt; &gt; | -- A library with BLAS API not found. Please specify librar=
y location.<br>
&gt;&gt; &gt; | -- Using GSL CBLAS for optional parts of TMVA<br>
&gt;&gt; &gt; | -- Enabled support for:=C2=A0 builtin_davix builtin_ftgl bu=
iltin_gl2ps builtin_clang builtin_tbb builtin_xxhash cling cxx11 davix exce=
ptions explicitlink fftw3 gdml genvector http imt mathmore minuit2 opengl p=
ch python roofit shared sqlite ssl thread tmva tmva-cpu x11 xft xml xrootd<=
br>
&gt;&gt; &gt; | -- Found LLVM_CONFIG as /local/d4/gstark/poky/build/tmp/wor=
k/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/=
usr/bin/llvm-config<br>
&gt;&gt; &gt; | -- Linker detection: GNU ld<br>
&gt;&gt; &gt; | CMake Warning at /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib=
/cmake/llvm/HandleLLVMOptions.cmake:185 (message):<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0-fPIC is not supported.<br>
&gt;&gt; &gt; | Call Stack (most recent call first):<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0/local/d4/gstark/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmak=
e/llvm/HandleLLVMOptions.cmake:213 (add_flag_or_print_warning)<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0interpreter/CMakeLists.txt:285 (include)<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; | CMake Error at /local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/c=
make/llvm/HandleLLVMOptions.cmake:402 (message):<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0LLVM requires C++11 support but the &#39;-std=
=3Dc++11&#39; flag isn&#39;t supported.<br>
&gt;&gt; &gt; | Call Stack (most recent call first):<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0interpreter/CMakeLists.txt:285 (include)<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; | -- Configuring incomplete, errors occurred!<br>
&gt;&gt; &gt; | See also &quot;/local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeOutput.lo=
g&quot;.<br>
&gt;&gt; &gt; | See also &quot;/local/d4/gstark/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeError.log=
&quot;.<br>
&gt;&gt; &gt; | WARNING: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/temp/run.do_configure.2984:1 exit 1 f=
rom &#39;cmake $oecmake_sitefile /local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/root-6.14.00 -DCMAKE_INSTALL_=
PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBINDI=
R:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_SYS=
CONFDIR:PATH=3D/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com -DCMAKE_IN=
STALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE_I=
NSTALL_INCLUDEDIR:PATH=3Dinclude -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -=
DCMAKE_INSTALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/local/d4/gstark/poky=
/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/toolchai=
n.cmake -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -D=
rootfit=3DON -Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuilti=
n_freetype=3DOFF -Dbuiltin_llvm=3DOFF -Dbuiltin_glew=3DOFF -Dastiff=3DOFF -=
Dasimage=3DOFF -Dbuiltin_afterimage=3DOFF -Dalien=3DOFF -Dvdt=3DOFF ${PACKA=
GECONFIG_CONFARGS} -Wno-dev&#39;<br>
&gt;&gt; &gt; | ERROR: Function failed: do_configure (log file is located a=
t /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/r=
oot/6.14.00-r0/temp/log.do_configure.2984)<br>
&gt;&gt; &gt; ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/r=
oot_6.14.00.bb:do_configure) failed with exit code &#39;1&#39;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Jul 11, 2018 at 3:35 PM Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Giordon<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark &lt;<a hre=
f=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wr=
ote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; | /local/d4/gstark/poky/build/tmp/work/aarch64-poky-=
linux/root/6.14.00-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a: error=
 adding symbols: File in wrong format<br>
&gt;&gt; &gt;&gt; &gt; | clang-5.0: error: linker command failed with exit =
code 1 (use -v to see invocation)<br>
&gt;&gt; &gt;&gt; &gt; | interpreter/llvm/src/tools/clang/utils/TableGen/CM=
akeFiles/clang-tblgen.dir/build.make:95: recipe for target &#39;interpreter=
/llvm/src/bin/clang-tblgen&#39; failed<br>
&gt;&gt; &gt;&gt; &gt; | make[2]: *** [interpreter/llvm/src/bin/clang-tblge=
n] Error 1<br>
&gt;&gt; &gt;&gt; &gt; | make[2]: Leaving directory &#39;/local/d4/gstark/p=
oky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/build&#39;<br>
&gt;&gt; &gt;&gt; &gt; | CMakeFiles/Makefile2:791: recipe for target &#39;i=
nterpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/=
all&#39; failed<br>
&gt;&gt; &gt;&gt; &gt; | make[1]: *** [interpreter/llvm/src/tools/clang/uti=
ls/TableGen/CMakeFiles/clang-tblgen.dir/all] Error 2<br>
&gt;&gt; &gt;&gt; &gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Here&#39;s the full log: <a href=3D"https://gist.git=
hub.com/3403addf74b5e902adec93b75fb0e138" rel=3D"noreferrer" target=3D"_bla=
nk">https://gist.github.com/3403addf74b5e902adec93b75fb0e138</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Any ideas how to get a more verbose invocation if ne=
eded? I suspect the error is due to some pre-built libraries being shipped =
in this recipe, but I&#39;m not sure what&#39;s causing the error in the fi=
rst place.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; it seems to be linking with native llvm libraries which m=
ight not be intended.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; Note: I am using meta-clang. The recipe I&#39;m usin=
g looks like:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; SUMMARY =3D &quot;Numerical data analysis framework =
(OO)&quot;<br>
&gt;&gt; &gt;&gt; &gt; DESCRIPTION =3D &quot;Object oriented framework for =
large scale data analysis&quot;<br>
&gt;&gt; &gt;&gt; &gt; HOMEPAGE =3D &quot;<a href=3D"http://root.cern.ch" r=
el=3D"noreferrer" target=3D"_blank">http://root.cern.ch</a>&quot;<br>
&gt;&gt; &gt;&gt; &gt; LICENSE =3D &quot;LGPLv2.1&quot;<br>
&gt;&gt; &gt;&gt; &gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D5ec7=
73ab82cbea1f17ec5b98e8ce60cf&quot;<br>
&gt;&gt; &gt;&gt; &gt; SRC_URI =3D &quot;<a href=3D"https://root.cern.ch/do=
wnload/root_v$%7BPV%7D.source.tar.gz" rel=3D"noreferrer" target=3D"_blank">=
https://root.cern.ch/download/root_v${PV}.source.tar.gz</a>&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; S =3D &quot;${WORKDIR}/${BPN}-${PV}&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; TOOLCHAIN =3D &quot;clang&quot;<br>
&gt;&gt; &gt;&gt; &gt; #TARGET_CXXFLAGS_append_toolchain-clang =3D &quot; -=
stdlib=3Dlibc++ &quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; DEPENDS +=3D &quot;llvm-native libpcre lz4 libx11 li=
bxpm libxft gsl fftw libatomic-ops freetype glew xrootd&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; it seems you really need llvm for target in dependencies =
so please<br>
&gt;&gt; &gt;&gt; remove llvm-native from DEPENDS<br>
&gt;&gt; &gt;&gt; and add clang to it.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; inherit cmake pkgconfig pythonnative<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; do_configure_prepend(){<br>
&gt;&gt; &gt;&gt; &gt; export FC=3D${GFORTRAN}<br>
&gt;&gt; &gt;&gt; &gt; }<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; EXTRA_OECMAKE =3D &quot;\<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Drootfit=3DON \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dminuit2=3DON \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dpython=3DON \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dssl=3DON \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dxrootd=3DON \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_freetype=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_llvm=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_glew=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dastiff=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dasimage=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_afterimage=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dalien=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Dvdt=3DOFF \<br>
&gt;&gt; &gt;&gt; &gt; &quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; Giordon Stark<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/l=
istinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Giordon Stark<br>
&gt;<br>
&gt; --<br>
&gt; Giordon Stark<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--000000000000338e880570e33ece--
