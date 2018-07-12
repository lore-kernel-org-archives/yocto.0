Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49A78E00B18; Thu, 12 Jul 2018 12:57:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
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
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3453FE00874
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 12:57:47 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id v71-v6so8450488itb.3
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 12:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4JB7XHySRzC6sb+ab4f0b1fIxr97PKCc6yfZP5Vf+Qg=;
	b=QDSKiUnI/BERtZn6ffJiWRsEvjhP7lgCzA3F7W9qplAw2sPAL2OSmwIKzP5FCnR9tN
	XoPmzyyoyzw2QJ4XuUxWKE/26739oCQ4pjHnMME+lY2ArBd4iIRrWOFoSsXFYAFolnn2
	uWIUtZnnz+qLwS+c3L2Eq3fkhV/5KaaJ0oyhgJiIAIAJFjeXGqzrTlYagQoagbr/BXF+
	OtfeTO7dY65X2z61W1OW+ump0TaRYTwEX2ND3klJKGiHbn/k4+G/ubBoniBSb17xqU14
	bZ39roO0xOE7zDGMrXMnooCnf9sxsD+tDzq+HUEBc1xFmBCRNTkjueu2UuS1Wg+6fmn3
	93kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4JB7XHySRzC6sb+ab4f0b1fIxr97PKCc6yfZP5Vf+Qg=;
	b=jgdJnYGM59UXcGEJM8qVaUDoj95UgL6LGDfHKR7fDj7BzCifzskbRhRXaUJtyfYpTy
	WqsD6PV11r/NX0Yft4LWmaTfMzKN0Ned0No5viHcOa7u5YA7AEXXkUTJihohiuiDmf+e
	jW321PG2jFLaAG79UdVbrX5fXUDnX/GWPzAbuqoxcCP46nkUfxcID28Up18lRj9Qz5h/
	zemIROG9dgJ0jVf0WxubuqSRppEDv6CqXWFzR9aHxSl4JjJCAqEzXHAku8Nd9PNn0mh+
	q643HpACmVBkbW8Onwn/P+C/55tMtRApbtSdw81cnMtBVGi9tB2ipwTkrLrZzQwMtHYd
	JRzA==
X-Gm-Message-State: AOUpUlHRezwZASW1Q+C+PeMSrfc/6P9FGhQA8aFFzwJy1oOpYLG4SBuf
	AJgP4dOOTnTpSPBUr9U6LR9c0s3P/akLZqgAiNs=
X-Google-Smtp-Source: AAOMgpctgBfKIhEfeqewKYb/e97y9lk6j3CR6uOt6GSPjKKW/TdONAMinD3+YBWX/DGrMwMtEazjjsbJZeGid7nSgjo=
X-Received: by 2002:a02:9c54:: with SMTP id
	h20-v6mr2861860jal.49.1531425466325; 
	Thu, 12 Jul 2018 12:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
	<CAMKF1soVjuxqEv0YECuAAxcWm7kWpm5k3Yo_ognnJo5eUhaXGQ@mail.gmail.com>
In-Reply-To: <CAMKF1soVjuxqEv0YECuAAxcWm7kWpm5k3Yo_ognnJo5eUhaXGQ@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 12 Jul 2018 15:57:34 -0400
Message-ID: <CAFzUWG=XB-HXZ4RRNnxufiBm9zTsp-jKCP-BGgmFP8cJ1=tStw@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Jul 2018 19:57:50 -0000
Content-Type: multipart/alternative; boundary="000000000000eba8810570d2c641"

--000000000000eba8810570d2c641
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

I added clang, removed llvm-native -- and now I get an llvm error --
supposedly because the llvm being used with yocto may be too old(?).

kratsg@dc:/local/d4/gstark/poky/build$ bitbake root
Loading cache: 100%
|##########################################################################=
###########################################################################=
###################|
Time: 0:00:00
Loaded 3854 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
###########################################################################=
#################|
Time: 0:00:03
Parsing of 2600 .bb files complete (2598 cached, 2 parsed). 3853 targets,
163 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "zc702-zynq7"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.4.2"
TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard
cortexa9"
TARGET_FPU           =3D "hard"
meta
meta-poky
meta-yocto-bsp       =3D "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc0"
meta-xilinx-bsp      =3D "rocko:7935ef724cd7359ed97e6ae3d90ebc8f07dd7e1f"
meta-oe
meta-python          =3D "rocko:dacfa2b1920e285531bec55cd2f08743390aaf57"
meta                 =3D "rocko:7dccdf82d49fb11cb2a7cb205ae08311e5d43291"
meta-clang           =3D "rocko:a4c0cd28de9c3d5823be43150a76d221b08896d6"
meta-l1calo          =3D
"update/ROOT:0cfb5bfd77ec9bb9fb9afbf4271786842a5dff8f"
workspace            =3D "rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc0"

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
##############|
Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: root-6.14.00-r0 do_configure: Function failed: do_configure (log
file is located at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/temp/log.do_configure.2984)
ERROR: Logfile of failure stored in:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/temp/log.do_configure.2984
Log data follows:
| DEBUG: Executing shell function do_configure
| -- The C compiler identification is Clang 5.0.1
| -- The CXX compiler identification is Clang 5.0.1
| -- Check for working C compiler:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-=
linux-gnueabi-clang
| -- Check for working C compiler:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-=
linux-gnueabi-clang
-- works
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Check for working CXX compiler:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-=
linux-gnueabi-clang++
| -- Check for working CXX compiler:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-=
linux-gnueabi-clang++
-- works
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - done
| -- Detecting CXX compile features
| -- Detecting CXX compile features - done
| -- ROOT default compression algorithm is lz4
| -- Vc does not support arm. Support for Vc disabled.
| -- Found Clang. Major version 5, minor version 0
| -- Performing Test HAS_CXX11
| -- Performing Test HAS_CXX11 - Success
| -- Looking for pthread.h
| -- Looking for pthread.h - found
| -- Looking for pthread_create
| -- Looking for pthread_create - not found
| -- Looking for pthread_create in pthreads
| -- Looking for pthread_create in pthreads - not found
| -- Looking for pthread_create in pthread
| -- Looking for pthread_create in pthread - found
| -- Found Threads: TRUE
| -- Found a 64bit system
| -- Found CLANG compiler
| -- Performing Test GLIBCXX_USE_CXX11_ABI
| -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed
| -- ROOT Platform: linux
| -- ROOT Architecture: linuxx8664gcc
| -- Build Type: RelWithDebInfo
| -- Compiler Flags: -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard
-mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inline=3Dinline
-no-integrated-as -Wno-error=3Dunused-command-line-argument
-Qunused-arguments
--sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux=
-gnueabi/root/6.14.00-r0/recipe-sysroot
-O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0=3D/usr/src/debug/root/6.14.00-r0
-fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native=3D
-fdebug-prefix-map=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=3D
-fvisibility-inlines-hidden -march=3Darmv7-a -marm -mfpu=3Dneon
-mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian
-D__extern_always_inline=3Dinline -no-integrated-as
-Wno-error=3Dunused-command-line-argument -Qunused-arguments
--sysroot=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux=
-gnueabi/root/6.14.00-r0/recipe-sysroot
-Wc++11-narrowing -Wsign-compare -Wsometimes-uninitialized
-Wconditional-uninitialized -Wheader-guard -Warray-bounds -Wcomment
-Wtautological-compare -Wstrncat-size -Wloop-analysis -Wbool-conversion
-pipe -m64  -Wshadow -Wall -W -Woverloaded-virtual -fsigned-char -pthread
-std=3Dc++11
| -- Looking for ZLib
| -- Found ZLIB:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libz.so
(found version "1.2.11")
| -- Looking for Freetype
| -- Found Freetype:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libfreetype.so
(found version "2.8.0")
| -- Looking for PCRE
| -- Found PCRE:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- Looking for LZMA
| -- Found LZMA includes at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- Found LZMA library at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/liblzma.so
| -- Looking for xxHash
| -- Could NOT find xxHash (missing:  xxHash_LIBRARY xxHash_INCLUDE_DIR)
| -- xxHash not found. Switching on builtin_xxhash option
| -- Looking for LZ4
| -- Found LZ4:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/liblz4.so
(found version "1.7.5")
| -- Looking for X11
| -- Looking for XOpenDisplay in
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build/t=
mp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/u=
sr/lib/libXext.so
| -- Looking for XOpenDisplay in
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build/t=
mp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/u=
sr/lib/libXext.so
- not found
| -- Looking for dnet_ntoa in dnet
| -- Looking for dnet_ntoa in dnet - not found
| -- Looking for dnet_ntoa in dnet_stub
| -- Looking for dnet_ntoa in dnet_stub - not found
| -- Looking for gethostbyname
| -- Looking for gethostbyname - not found
| -- Looking for gethostbyname in nsl
| -- Looking for gethostbyname in nsl - not found
| -- Looking for gethostbyname in bsd
| -- Looking for gethostbyname in bsd - not found
| -- Looking for connect
| -- Looking for connect - not found
| -- Looking for connect in socket
| -- Looking for connect in socket - not found
| -- Looking for remove
| -- Looking for remove - not found
| -- Looking for remove in posix
| -- Looking for remove in posix - not found
| -- Looking for shmat
| -- Looking for shmat - not found
| -- Looking for shmat in ipc
| -- Looking for shmat in ipc - not found
| -- Looking for IceConnectionNumber in ICE
| -- Looking for IceConnectionNumber in ICE - not found
| -- Found X11:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so
| -- X11_INCLUDE_DIR:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- X11_LIBRARIES:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build/t=
mp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/u=
sr/lib/libXext.so
| -- X11_Xpm_INCLUDE_PATH:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- X11_Xpm_LIB:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.so
| -- X11_Xft_INCLUDE_PATH:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- X11_Xft_LIB:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libXft.so
| -- X11_Xext_INCLUDE_PATH:
| -- X11_Xext_LIB:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so
| -- Looking for GSL
| -- Found GSL:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
(found suitable version "1.15", minimum required is "1.10")
| -- Found PythonInterp:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/python-native/python
(found version "2.7.13")
| -- Found PythonLibs:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/
libpython2.7.so (found version "2.7.13")
| -- Looking for OpenGL
| -- Found OpenGL:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libGL.so
| -- Looking for GLEW
| -- Found GLEW:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- Looking for gl2ps
| -- Could NOT find GL2PS (missing:  GL2PS_LIBRARY GL2PS_INCLUDE_DIR)
| -- gl2ps not found. Switching on builtin_gl2ps option
| -- Looking for LibXml2
| -- Found LibXml2:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libxml2.so
(found version "2.9.4")
| -- Found OpenSSL:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libcrypto.so
(found version "1.0.2n")
| -- Looking for Castor
| -- Could NOT find CASTOR (missing:  CASTOR_shift_LIBRARY
CASTOR_INCLUDE_DIR)
| -- Castor not found. Switching off castor option
| -- Looking for MySQL
| -- Could NOT find MYSQL (missing:  MYSQL_INCLUDE_DIR MYSQL_LIBRARIES)
| -- MySQL not found. Switching off mysql option
| -- Looking for Oracle
| -- Oracle not found.
| -- Oracle: You can specify includes:
-DORACLE_PATH_INCLUDES=3D/usr/include/oracle/10.2.0.3/client
| --    currently found includes:
| -- Oracle: You can specify libs: -DORACLE_PATH_LIB=3D/usr/lib/oracle/
10.2.0.3/client/lib
| --    currently found libs:
ORACLE_LIBRARY_OCCI-NOTFOUND;ORACLE_LIBRARY_CLNTSH-NOTFOUND;ORACLE_LIBRARY_=
LNNZ-NOTFOUND
| -- Oracle not found. Switching off oracle option
| -- Looking for PostgreSQL
| -- Could NOT find PostgreSQL (missing:  POSTGRESQL_INCLUDE_DIR
POSTGRESQL_LIBRARY)
| -- PostgreSQL not found. Switching off pgsql option
| -- Looking for SQLite
| -- Found PkgConfig:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/pkg-config
(found version "0.29.2")
| -- Found Sqlite:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- Looking for Pythia6
| -- Pythia6 not found. Switching off pythia6 option
| -- Looking for Pythia8
| -- Could NOT find Pythia8 (missing:  PYTHIA8_INCLUDE_DIR PYTHIA8_LIBRARY)
| -- Pythia8 not found. Switching off pythia8 option
| -- Looking for FFTW3
| -- Found fftw3 includes at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- Found fftw3 library at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libfftw3.so
| -- Looking for CFITSIO
| -- Could NOT find CFITSIO (missing:  CFITSIO_INCLUDE_DIR CFITSIO_LIBRARY)
| -- CFITSIO not found. You can enable the option 'builtin_cfitsio' to
build the library internally'
| --                    For the time being switching off 'fitsio' option
| -- Looking for XROOTD
| -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDVERS=3D400080003)
| --              libXrdMain not found: xproofd will be a wrapper around
xrootd
| --              include_dirs:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include/xrootd;/local/d4/gstark/poky/build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/=
usr/include/xrootd/private
| --              libraries:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libXrdUtils.so;/local/d4/gstark/poky/bu=
ild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysr=
oot/usr/lib/libXrdClient.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdCl.so
| -- Could NOT find GFAL (missing:  GFAL_INCLUDE_DIR SRM_IFCE_INCLUDE_DIR
GFAL_LIBRARY)
| -- GFAL library not found. Set variable GFAL_DIR to point to your gfal
installation
|                       and the variable SRM_IFCE_DIR to the srm_ifce
installation
| -- For the time being switching OFF 'gfal' option
| -- Checking for module 'davix>=3D0.6.4'
| --   No package 'davix' found
| -- Looking for uuid_generate_random in uuid
| -- Looking for uuid_generate_random in uuid - not found
| -- Found uuid:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/include
| -- Davix not found, switching ON 'builtin_davix' option.
| -- Looking for clock_gettime
| -- Looking for clock_gettime - not found
| -- Looking for clock_gettime in rt
| -- Looking for clock_gettime in rt - not found
| -- Looking for TBB
| -- Could NOT find TBB (missing:  TBB_ROOT_DIR TBB_INCLUDE_DIR TBB_LIBRARY=
)
| -- TBB not found. Switching on builtin_tbb option
| -- Performing Test CXX_HAS_mno_rtm
| -- Performing Test CXX_HAS_mno_rtm - Failed
| -- Looking for BLAS for optional parts of TMVA
| -- A library with BLAS API not found. Please specify library location.
| -- Using GSL CBLAS for optional parts of TMVA
| -- Enabled support for:  builtin_davix builtin_ftgl builtin_gl2ps
builtin_clang builtin_tbb builtin_xxhash cling cxx11 davix exceptions
explicitlink fftw3 gdml genvector http imt mathmore minuit2 opengl pch
python roofit shared sqlite ssl thread tmva tmva-cpu x11 xft xml xrootd
| -- Found LLVM_CONFIG as
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/bin/llvm-config
| -- Linker detection: GNU ld
*| CMake Warning at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.cma=
ke:185
(message):*
*|   -fPIC is not supported.*
*| Call Stack (most recent call first):*
*|
 /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/ro=
ot/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.cm=
ake:213
(add_flag_or_print_warning)*
*|   interpreter/CMakeLists.txt:285 (include)*
*| *
*| *
*| CMake Error at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.cma=
ke:402
(message):*
*|   LLVM requires C++11 support but the '-std=3Dc++11' flag isn't supporte=
d.*
*| Call Stack (most recent call first):*
*|   interpreter/CMakeLists.txt:285 (include)*
*| *
*| *
| -- Configuring incomplete, errors occurred!
| See also
"/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/ro=
ot/6.14.00-r0/build/CMakeFiles/CMakeOutput.log".
| See also
"/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/ro=
ot/6.14.00-r0/build/CMakeFiles/CMakeError.log".
| WARNING:
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/temp/run.do_configure.2984:1
exit 1 from 'cmake $oecmake_sitefile
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/root-6.14.00
-DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin
-DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibex=
ec
-DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc
-DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com
-DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib
-DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude
-DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0
-DCMAKE_TOOLCHAIN_FILE=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/toolchain.cmake
-DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -Drootfit=
=3DON
-Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuiltin_freetype=3D=
OFF
-Dbuiltin_llvm=3DOFF -Dbuiltin_glew=3DOFF -Dastiff=3DOFF -Dasimage=3DOFF
-Dbuiltin_afterimage=3DOFF -Dalien=3DOFF -Dvdt=3DOFF ${PACKAGECONFIG_CONFAR=
GS}
-Wno-dev'
| ERROR: Function failed: do_configure (log file is located at
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/temp/log.do_configure.2984)
ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/root_6.14.00.bb=
:do_configure)
failed with exit code '1'


On Wed, Jul 11, 2018 at 3:35 PM Khem Raj <raj.khem@gmail.com> wrote:

> Hi Giordon
>
> On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark <kratsg@gmail.com> wrote:
> >
> > Hi all,
> >
> > |
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/r=
ecipe-sysroot-native/usr/lib/libLLVMSupport.a:
> error adding symbols: File in wrong format
> > | clang-5.0: error: linker command failed with exit code 1 (use -v to
> see invocation)
> > |
> interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.d=
ir/build.make:95:
> recipe for target 'interpreter/llvm/src/bin/clang-tblgen' failed
> > | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1
> > | make[2]: Leaving directory
> '/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/=
build'
> > | CMakeFiles/Makefile2:791: recipe for target
> 'interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.=
dir/all'
> failed
> > | make[1]: ***
> [interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.=
dir/all]
> Error 2
> > | make[1]: *** Waiting for unfinished jobs....
> >
> > Here's the full log:
> https://gist.github.com/3403addf74b5e902adec93b75fb0e138
> >
> > Any ideas how to get a more verbose invocation if needed? I suspect the
> error is due to some pre-built libraries being shipped in this recipe, bu=
t
> I'm not sure what's causing the error in the first place.
> >
>
> it seems to be linking with native llvm libraries which might not be
> intended.
>
> > Note: I am using meta-clang. The recipe I'm using looks like:
> >
> > SUMMARY =3D "Numerical data analysis framework (OO)"
> > DESCRIPTION =3D "Object oriented framework for large scale data analysi=
s"
> > HOMEPAGE =3D "http://root.cern.ch"
> > LICENSE =3D "LGPLv2.1"
> > LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D5ec773ab82cbea1f17ec5b98e8ce=
60cf"
> > SRC_URI =3D "https://root.cern.ch/download/root_v${PV}.source.tar.gz"
> >
> > S =3D "${WORKDIR}/${BPN}-${PV}"
> >
> > TOOLCHAIN =3D "clang"
> > #TARGET_CXXFLAGS_append_toolchain-clang =3D " -stdlib=3Dlibc++ "
> >
> > DEPENDS +=3D "llvm-native libpcre lz4 libx11 libxpm libxft gsl fftw
> libatomic-ops freetype glew xrootd"
> >
>
> it seems you really need llvm for target in dependencies so please
> remove llvm-native from DEPENDS
> and add clang to it.
>
> > inherit cmake pkgconfig pythonnative
> >
> >
> > do_configure_prepend(){
> > export FC=3D${GFORTRAN}
> > }
> >
> > EXTRA_OECMAKE =3D "\
> >     -Drootfit=3DON \
> >     -Dminuit2=3DON \
> >     -Dpython=3DON \
> >     -Dssl=3DON \
> >     -Dxrootd=3DON \
> >     -Dbuiltin_freetype=3DOFF \
> >     -Dbuiltin_llvm=3DOFF \
> >     -Dbuiltin_glew=3DOFF \
> >     -Dastiff=3DOFF \
> >     -Dasimage=3DOFF \
> >     -Dbuiltin_afterimage=3DOFF \
> >     -Dalien=3DOFF \
> >     -Dvdt=3DOFF \
> > "
> >
> > --
> > Giordon Stark
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
--=20
Giordon Stark

--000000000000eba8810570d2c641
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>I added clang, removed llvm-na=
tive -- and now I get an llvm error -- supposedly because the llvm being us=
ed with yocto may be too old(?).</div><div><br></div><div><div><font face=
=3D"monospace">kratsg@dc:/local/d4/gstark/poky/build$ bitbake root</font></=
div><div><font face=3D"monospace">Loading cache: 100% |####################=
###########################################################################=
#########################################################################| =
Time: 0:00:00</font></div><div><font face=3D"monospace">Loaded 3854 entries=
 from dependency cache.</font></div><div><font face=3D"monospace">Parsing r=
ecipes: 100% |#############################################################=
###########################################################################=
##############################| Time: 0:00:03</font></div><div><font face=
=3D"monospace">Parsing of 2600 .bb files complete (2598 cached, 2 parsed). =
3853 targets, 163 skipped, 0 masked, 0 errors.</font></div><div><font face=
=3D"monospace">NOTE: Resolving any missing task queue dependencies</font></=
div><div><font face=3D"monospace"><br></font></div><div><font face=3D"monos=
pace">Build Configuration:</font></div><div><font face=3D"monospace">BB_VER=
SION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.0&quot;</font><=
/div><div><font face=3D"monospace">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</font></div><div><font face=3D"mono=
space">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;</font>=
</div><div><font face=3D"monospace">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</font></div><div><font =
face=3D"monospace">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;zc702-zynq7&quot;</font></div><div><font face=3D"monospace">DISTR=
O=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot=
;</font></div><div><font face=3D"monospace">DISTRO_VERSION=C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;2.4.2&quot;</font></div><div><font face=3D"monospace">T=
UNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp thumb neon=
 callconvention-hard cortexa9&quot;</font></div><div><font face=3D"monospac=
e">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;<=
/font></div><div><font face=3D"monospace">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</font></div><div><font face=3D"monospace=
">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div=
><font face=3D"monospace">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;rocko:cca8bde9d700d68c5f36d7d4c47c048526aedfc0&quot;</font></div><div><fo=
nt face=3D"monospace">meta-xilinx-bsp=C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:7=
935ef724cd7359ed97e6ae3d90ebc8f07dd7e1f&quot;</font></div><div><font face=
=3D"monospace">meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</font></div><div><font face=3D"monospace">meta-python=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;rocko:dacfa2b1920e285531bec55cd2f08743390aaf57&=
quot;</font></div><div><font face=3D"monospace">meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:7dccdf82d49fb11cb2=
a7cb205ae08311e5d43291&quot;</font></div><div><font face=3D"monospace">meta=
-clang=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:a4c0cd28de9c=
3d5823be43150a76d221b08896d6&quot;</font></div><div><font face=3D"monospace=
">meta-l1calo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;update/ROOT:0cfb5=
bfd77ec9bb9fb9afbf4271786842a5dff8f&quot;</font></div><div><font face=3D"mo=
nospace">workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko=
:cca8bde9d700d68c5f36d7d4c47c048526aedfc0&quot;</font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace">Initialising =
tasks: 100% |##############################################################=
###########################################################################=
##########################| Time: 0:00:03</font></div><div><font face=3D"mo=
nospace">NOTE: Executing SetScene Tasks</font></div><div><font face=3D"mono=
space">NOTE: Executing RunQueue Tasks</font></div><div><font face=3D"monosp=
ace">ERROR: root-6.14.00-r0 do_configure: Function failed: do_configure (lo=
g file is located at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/temp/log.do_configure.2984)</font></div><=
div><font face=3D"monospace">ERROR: Logfile of failure stored in: /local/d4=
/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00=
-r0/temp/log.do_configure.2984</font></div><div><font face=3D"monospace">Lo=
g data follows:</font></div><div><font face=3D"monospace">| DEBUG: Executin=
g shell function do_configure</font></div><div><font face=3D"monospace">| -=
- The C compiler identification is Clang 5.0.1</font></div><div><font face=
=3D"monospace">| -- The CXX compiler identification is Clang 5.0.1</font></=
div><div><font face=3D"monospace">| -- Check for working C compiler: /local=
/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14=
.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-=
gnueabi-clang</font></div><div><font face=3D"monospace">| -- Check for work=
ing C compiler: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-l=
inux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-g=
nueabi/arm-poky-linux-gnueabi-clang -- works</font></div><div><font face=3D=
"monospace">| -- Detecting C compiler ABI info</font></div><div><font face=
=3D"monospace">| -- Detecting C compiler ABI info - done</font></div><div><=
font face=3D"monospace">| -- Detecting C compile features</font></div><div>=
<font face=3D"monospace">| -- Detecting C compile features - done</font></d=
iv><div><font face=3D"monospace">| -- Check for working CXX compiler: /loca=
l/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.1=
4.00-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux=
-gnueabi-clang++</font></div><div><font face=3D"monospace">| -- Check for w=
orking CXX compiler: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/arm-poky-li=
nux-gnueabi/arm-poky-linux-gnueabi-clang++ -- works</font></div><div><font =
face=3D"monospace">| -- Detecting CXX compiler ABI info</font></div><div><f=
ont face=3D"monospace">| -- Detecting CXX compiler ABI info - done</font></=
div><div><font face=3D"monospace">| -- Detecting CXX compile features</font=
></div><div><font face=3D"monospace">| -- Detecting CXX compile features - =
done</font></div><div><font face=3D"monospace">| -- ROOT default compressio=
n algorithm is lz4</font></div><div><font face=3D"monospace">| -- Vc does n=
ot support arm. Support for Vc disabled.</font></div><div><font face=3D"mon=
ospace">| -- Found Clang. Major version 5, minor version 0</font></div><div=
><font face=3D"monospace">| -- Performing Test HAS_CXX11</font></div><div><=
font face=3D"monospace">| -- Performing Test HAS_CXX11 - Success</font></di=
v><div><font face=3D"monospace">| -- Looking for pthread.h</font></div><div=
><font face=3D"monospace">| -- Looking for pthread.h - found</font></div><d=
iv><font face=3D"monospace">| -- Looking for pthread_create</font></div><di=
v><font face=3D"monospace">| -- Looking for pthread_create - not found</fon=
t></div><div><font face=3D"monospace">| -- Looking for pthread_create in pt=
hreads</font></div><div><font face=3D"monospace">| -- Looking for pthread_c=
reate in pthreads - not found</font></div><div><font face=3D"monospace">| -=
- Looking for pthread_create in pthread</font></div><div><font face=3D"mono=
space">| -- Looking for pthread_create in pthread - found</font></div><div>=
<font face=3D"monospace">| -- Found Threads: TRUE</font></div><div><font fa=
ce=3D"monospace">| -- Found a 64bit system</font></div><div><font face=3D"m=
onospace">| -- Found CLANG compiler</font></div><div><font face=3D"monospac=
e">| -- Performing Test GLIBCXX_USE_CXX11_ABI</font></div><div><font face=
=3D"monospace">| -- Performing Test GLIBCXX_USE_CXX11_ABI - Failed</font></=
div><div><font face=3D"monospace">| -- ROOT Platform: linux</font></div><di=
v><font face=3D"monospace">| -- ROOT Architecture: linuxx8664gcc</font></di=
v><div><font face=3D"monospace">| -- Build Type: RelWithDebInfo</font></div=
><div><font face=3D"monospace">| -- Compiler Flags: -march=3Darmv7-a -marm =
-mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian -D__exter=
n_always_inline=3Dinline -no-integrated-as -Wno-error=3Dunused-command-line=
-argument -Qunused-arguments=C2=A0 --sysroot=3D/local/d4/gstark/poky/build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/lo=
cal/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6=
.14.00-r0=3D/usr/src/debug/root/6.14.00-r0 -fdebug-prefix-map=3D/local/d4/g=
stark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r=
0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
=3D=C2=A0 -fvisibility-inlines-hidden -march=3Darmv7-a -marm -mfpu=3Dneon -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mlittle-endian -D__extern_always_inlin=
e=3Dinline -no-integrated-as -Wno-error=3Dunused-command-line-argument -Qun=
used-arguments=C2=A0 --sysroot=3D/local/d4/gstark/poky/build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot -Wc++11-narrow=
ing -Wsign-compare -Wsometimes-uninitialized -Wconditional-uninitialized -W=
header-guard -Warray-bounds -Wcomment -Wtautological-compare -Wstrncat-size=
 -Wloop-analysis -Wbool-conversion -pipe -m64=C2=A0 -Wshadow -Wall -W -Wove=
rloaded-virtual -fsigned-char -pthread -std=3Dc++11</font></div><div><font =
face=3D"monospace">| -- Looking for ZLib</font></div><div><font face=3D"mon=
ospace">| -- Found ZLIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libz.so (found=
 version &quot;1.2.11&quot;)</font></div><div><font face=3D"monospace">| --=
 Looking for Freetype</font></div><div><font face=3D"monospace">| -- Found =
Freetype: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-g=
nueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libfreetype.so (found version=
 &quot;2.8.0&quot;)</font></div><div><font face=3D"monospace">| -- Looking =
for PCRE</font></div><div><font face=3D"monospace">| -- Found PCRE: /local/=
d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.=
00-r0/recipe-sysroot/usr/include</font></div><div><font face=3D"monospace">=
| -- Looking for LZMA</font></div><div><font face=3D"monospace">| -- Found =
LZMA includes at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-=
linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include</font></div><div><=
font face=3D"monospace">| -- Found LZMA library at /local/d4/gstark/poky/bu=
ild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysr=
oot/usr/lib/liblzma.so</font></div><div><font face=3D"monospace">| -- Looki=
ng for xxHash</font></div><div><font face=3D"monospace">| -- Could NOT find=
 xxHash (missing:=C2=A0 xxHash_LIBRARY xxHash_INCLUDE_DIR)</font></div><div=
><font face=3D"monospace">| -- xxHash not found. Switching on builtin_xxhas=
h option</font></div><div><font face=3D"monospace">| -- Looking for LZ4</fo=
nt></div><div><font face=3D"monospace">| -- Found LZ4: /local/d4/gstark/pok=
y/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-=
sysroot/usr/lib/liblz4.so (found version &quot;1.7.5&quot;)</font></div><di=
v><font face=3D"monospace">| -- Looking for X11</font></div><div><font face=
=3D"monospace">| -- Looking for XOpenDisplay in /local/d4/gstark/poky/build=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot=
/usr/lib/libX11.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-pok=
y-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXext.so</font></d=
iv><div><font face=3D"monospace">| -- Looking for XOpenDisplay in /local/d4=
/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00=
-r0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/li=
bXext.so - not found</font></div><div><font face=3D"monospace">| -- Looking=
 for dnet_ntoa in dnet</font></div><div><font face=3D"monospace">| -- Looki=
ng for dnet_ntoa in dnet - not found</font></div><div><font face=3D"monospa=
ce">| -- Looking for dnet_ntoa in dnet_stub</font></div><div><font face=3D"=
monospace">| -- Looking for dnet_ntoa in dnet_stub - not found</font></div>=
<div><font face=3D"monospace">| -- Looking for gethostbyname</font></div><d=
iv><font face=3D"monospace">| -- Looking for gethostbyname - not found</fon=
t></div><div><font face=3D"monospace">| -- Looking for gethostbyname in nsl=
</font></div><div><font face=3D"monospace">| -- Looking for gethostbyname i=
n nsl - not found</font></div><div><font face=3D"monospace">| -- Looking fo=
r gethostbyname in bsd</font></div><div><font face=3D"monospace">| -- Looki=
ng for gethostbyname in bsd - not found</font></div><div><font face=3D"mono=
space">| -- Looking for connect</font></div><div><font face=3D"monospace">|=
 -- Looking for connect - not found</font></div><div><font face=3D"monospac=
e">| -- Looking for connect in socket</font></div><div><font face=3D"monosp=
ace">| -- Looking for connect in socket - not found</font></div><div><font =
face=3D"monospace">| -- Looking for remove</font></div><div><font face=3D"m=
onospace">| -- Looking for remove - not found</font></div><div><font face=
=3D"monospace">| -- Looking for remove in posix</font></div><div><font face=
=3D"monospace">| -- Looking for remove in posix - not found</font></div><di=
v><font face=3D"monospace">| -- Looking for shmat</font></div><div><font fa=
ce=3D"monospace">| -- Looking for shmat - not found</font></div><div><font =
face=3D"monospace">| -- Looking for shmat in ipc</font></div><div><font fac=
e=3D"monospace">| -- Looking for shmat in ipc - not found</font></div><div>=
<font face=3D"monospace">| -- Looking for IceConnectionNumber in ICE</font>=
</div><div><font face=3D"monospace">| -- Looking for IceConnectionNumber in=
 ICE - not found</font></div><div><font face=3D"monospace">| -- Found X11: =
/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/roo=
t/6.14.00-r0/recipe-sysroot/usr/lib/libX11.so</font></div><div><font face=
=3D"monospace">| -- X11_INCLUDE_DIR: /local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/includ=
e</font></div><div><font face=3D"monospace">| -- X11_LIBRARIES: /local/d4/g=
stark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r=
0/recipe-sysroot/usr/lib/libX11.so;/local/d4/gstark/poky/build/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libX=
ext.so</font></div><div><font face=3D"monospace">| -- X11_Xpm_INCLUDE_PATH:=
 /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/ro=
ot/6.14.00-r0/recipe-sysroot/usr/include</font></div><div><font face=3D"mon=
ospace">| -- X11_Xpm_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-n=
eon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXpm.so</fo=
nt></div><div><font face=3D"monospace">| -- X11_Xft_INCLUDE_PATH: /local/d4=
/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00=
-r0/recipe-sysroot/usr/include</font></div><div><font face=3D"monospace">| =
-- X11_Xft_LIB: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-l=
inux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXft.so</font></div><=
div><font face=3D"monospace">| -- X11_Xext_INCLUDE_PATH:</font></div><div><=
font face=3D"monospace">| -- X11_Xext_LIB: /local/d4/gstark/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/=
lib/libXext.so</font></div><div><font face=3D"monospace">| -- Looking for G=
SL</font></div><div><font face=3D"monospace">| -- Found GSL: /local/d4/gsta=
rk/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/r=
ecipe-sysroot/usr/include (found suitable version &quot;1.15&quot;, minimum=
 required is &quot;1.10&quot;)</font></div><div><font face=3D"monospace">| =
-- Found PythonInterp: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/python-na=
tive/python (found version &quot;2.7.13&quot;)</font></div><div><font face=
=3D"monospace">| -- Found PythonLibs: /local/d4/gstark/poky/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/<=
a href=3D"http://libpython2.7.so">libpython2.7.so</a> (found version &quot;=
2.7.13&quot;)</font></div><div><font face=3D"monospace">| -- Looking for Op=
enGL</font></div><div><font face=3D"monospace">| -- Found OpenGL: /local/d4=
/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00=
-r0/recipe-sysroot/usr/lib/libGL.so</font></div><div><font face=3D"monospac=
e">| -- Looking for GLEW</font></div><div><font face=3D"monospace">| -- Fou=
nd GLEW: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/recipe-sysroot/usr/include</font></div><div><font fac=
e=3D"monospace">| -- Looking for gl2ps</font></div><div><font face=3D"monos=
pace">| -- Could NOT find GL2PS (missing:=C2=A0 GL2PS_LIBRARY GL2PS_INCLUDE=
_DIR)</font></div><div><font face=3D"monospace">| -- gl2ps not found. Switc=
hing on builtin_gl2ps option</font></div><div><font face=3D"monospace">| --=
 Looking for LibXml2</font></div><div><font face=3D"monospace">| -- Found L=
ibXml2: /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnu=
eabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libxml2.so (found version &quot=
;2.9.4&quot;)</font></div><div><font face=3D"monospace">| -- Found OpenSSL:=
 /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/ro=
ot/6.14.00-r0/recipe-sysroot/usr/lib/libcrypto.so (found version &quot;1.0.=
2n&quot;)</font></div><div><font face=3D"monospace">| -- Looking for Castor=
</font></div><div><font face=3D"monospace">| -- Could NOT find CASTOR (miss=
ing:=C2=A0 CASTOR_shift_LIBRARY CASTOR_INCLUDE_DIR)</font></div><div><font =
face=3D"monospace">| -- Castor not found. Switching off castor option</font=
></div><div><font face=3D"monospace">| -- Looking for MySQL</font></div><di=
v><font face=3D"monospace">| -- Could NOT find MYSQL (missing:=C2=A0 MYSQL_=
INCLUDE_DIR MYSQL_LIBRARIES)</font></div><div><font face=3D"monospace">| --=
 MySQL not found. Switching off mysql option</font></div><div><font face=3D=
"monospace">| -- Looking for Oracle</font></div><div><font face=3D"monospac=
e">| -- Oracle not found.</font></div><div><font face=3D"monospace">| -- Or=
acle: You can specify includes: -DORACLE_PATH_INCLUDES=3D/usr/include/oracl=
e/<a href=3D"http://10.2.0.3/client">10.2.0.3/client</a></font></div><div><=
font face=3D"monospace">| --=C2=A0 =C2=A0 currently found includes:</font><=
/div><div><font face=3D"monospace">| -- Oracle: You can specify libs: -DORA=
CLE_PATH_LIB=3D/usr/lib/oracle/<a href=3D"http://10.2.0.3/client/lib">10.2.=
0.3/client/lib</a></font></div><div><font face=3D"monospace">| --=C2=A0 =C2=
=A0 currently found libs: ORACLE_LIBRARY_OCCI-NOTFOUND;ORACLE_LIBRARY_CLNTS=
H-NOTFOUND;ORACLE_LIBRARY_LNNZ-NOTFOUND</font></div><div><font face=3D"mono=
space">| -- Oracle not found. Switching off oracle option</font></div><div>=
<font face=3D"monospace">| -- Looking for PostgreSQL</font></div><div><font=
 face=3D"monospace">| -- Could NOT find PostgreSQL (missing:=C2=A0 POSTGRES=
QL_INCLUDE_DIR POSTGRESQL_LIBRARY)</font></div><div><font face=3D"monospace=
">| -- PostgreSQL not found. Switching off pgsql option</font></div><div><f=
ont face=3D"monospace">| -- Looking for SQLite</font></div><div><font face=
=3D"monospace">| -- Found PkgConfig: /local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr=
/bin/pkg-config (found version &quot;0.29.2&quot;)</font></div><div><font f=
ace=3D"monospace">| -- Found Sqlite: /local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/includ=
e</font></div><div><font face=3D"monospace">| -- Looking for Pythia6</font>=
</div><div><font face=3D"monospace">| -- Pythia6 not found. Switching off p=
ythia6 option</font></div><div><font face=3D"monospace">| -- Looking for Py=
thia8</font></div><div><font face=3D"monospace">| -- Could NOT find Pythia8=
 (missing:=C2=A0 PYTHIA8_INCLUDE_DIR PYTHIA8_LIBRARY)</font></div><div><fon=
t face=3D"monospace">| -- Pythia8 not found. Switching off pythia8 option</=
font></div><div><font face=3D"monospace">| -- Looking for FFTW3</font></div=
><div><font face=3D"monospace">| -- Found fftw3 includes at /local/d4/gstar=
k/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/re=
cipe-sysroot/usr/include</font></div><div><font face=3D"monospace">| -- Fou=
nd fftw3 library at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-po=
ky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libfftw3.so</font><=
/div><div><font face=3D"monospace">| -- Looking for CFITSIO</font></div><di=
v><font face=3D"monospace">| -- Could NOT find CFITSIO (missing:=C2=A0 CFIT=
SIO_INCLUDE_DIR CFITSIO_LIBRARY)</font></div><div><font face=3D"monospace">=
| -- CFITSIO not found. You can enable the option &#39;builtin_cfitsio&#39;=
 to build the library internally&#39;</font></div><div><font face=3D"monosp=
ace">| --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 For the time being switching off &#39;fitsio&#39; option</font></div><d=
iv><font face=3D"monospace">| -- Looking for XROOTD</font></div><div><font =
face=3D"monospace">| -- Found Xrootd version num: 4.8.3 (setting -DROOTXRDV=
ERS=3D400080003)</font></div><div><font face=3D"monospace">| --=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libXrdMain not found: xproofd will b=
e a wrapper around xrootd</font></div><div><font face=3D"monospace">| --=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 include_dirs: /local/d4/gstar=
k/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/re=
cipe-sysroot/usr/include/xrootd;/local/d4/gstark/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/include/xro=
otd/private</font></div><div><font face=3D"monospace">| --=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libraries: /local/d4/gstark/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/=
lib/libXrdUtils.so;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-pok=
y-linux-gnueabi/root/6.14.00-r0/recipe-sysroot/usr/lib/libXrdClient.so;/loc=
al/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.=
14.00-r0/recipe-sysroot/usr/lib/libXrdCl.so</font></div><div><font face=3D"=
monospace">| -- Could NOT find GFAL (missing:=C2=A0 GFAL_INCLUDE_DIR SRM_IF=
CE_INCLUDE_DIR GFAL_LIBRARY)</font></div><div><font face=3D"monospace">| --=
 GFAL library not found. Set variable GFAL_DIR to point to your gfal instal=
lation</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and the variable=
 SRM_IFCE_DIR to the srm_ifce installation</font></div><div><font face=3D"m=
onospace">| -- For the time being switching OFF &#39;gfal&#39; option</font=
></div><div><font face=3D"monospace">| -- Checking for module &#39;davix&gt=
;=3D0.6.4&#39;</font></div><div><font face=3D"monospace">| --=C2=A0 =C2=A0N=
o package &#39;davix&#39; found</font></div><div><font face=3D"monospace">|=
 -- Looking for uuid_generate_random in uuid</font></div><div><font face=3D=
"monospace">| -- Looking for uuid_generate_random in uuid - not found</font=
></div><div><font face=3D"monospace">| -- Found uuid: /local/d4/gstark/poky=
/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-s=
ysroot/usr/include</font></div><div><font face=3D"monospace">| -- Davix not=
 found, switching ON &#39;builtin_davix&#39; option.</font></div><div><font=
 face=3D"monospace">| -- Looking for clock_gettime</font></div><div><font f=
ace=3D"monospace">| -- Looking for clock_gettime - not found</font></div><d=
iv><font face=3D"monospace">| -- Looking for clock_gettime in rt</font></di=
v><div><font face=3D"monospace">| -- Looking for clock_gettime in rt - not =
found</font></div><div><font face=3D"monospace">| -- Looking for TBB</font>=
</div><div><font face=3D"monospace">| -- Could NOT find TBB (missing:=C2=A0=
 TBB_ROOT_DIR TBB_INCLUDE_DIR TBB_LIBRARY)</font></div><div><font face=3D"m=
onospace">| -- TBB not found. Switching on builtin_tbb option</font></div><=
div><font face=3D"monospace">| -- Performing Test CXX_HAS_mno_rtm</font></d=
iv><div><font face=3D"monospace">| -- Performing Test CXX_HAS_mno_rtm - Fai=
led</font></div><div><font face=3D"monospace">| -- Looking for BLAS for opt=
ional parts of TMVA</font></div><div><font face=3D"monospace">| -- A librar=
y with BLAS API not found. Please specify library location.</font></div><di=
v><font face=3D"monospace">| -- Using GSL CBLAS for optional parts of TMVA<=
/font></div><div><font face=3D"monospace">| -- Enabled support for:=C2=A0 b=
uiltin_davix builtin_ftgl builtin_gl2ps builtin_clang builtin_tbb builtin_x=
xhash cling cxx11 davix exceptions explicitlink fftw3 gdml genvector http i=
mt mathmore minuit2 opengl pch python roofit shared sqlite ssl thread tmva =
tmva-cpu x11 xft xml xrootd</font></div><div><font face=3D"monospace">| -- =
Found LLVM_CONFIG as /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/bin/llvm-config=
</font></div><div><font face=3D"monospace">| -- Linker detection: GNU ld</f=
ont></div><div><font face=3D"monospace"><b>| CMake Warning at /local/d4/gst=
ark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/=
recipe-sysroot-native/usr/lib/cmake/llvm/HandleLLVMOptions.cmake:185 (messa=
ge):</b></font></div><div><font face=3D"monospace"><b>|=C2=A0 =C2=A0-fPIC i=
s not supported.</b></font></div><div><font face=3D"monospace"><b>| Call St=
ack (most recent call first):</b></font></div><div><font face=3D"monospace"=
><b>|=C2=A0 =C2=A0/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr/lib/cmake/llvm/Han=
dleLLVMOptions.cmake:213 (add_flag_or_print_warning)</b></font></div><div><=
font face=3D"monospace"><b>|=C2=A0 =C2=A0interpreter/CMakeLists.txt:285 (in=
clude)</b></font></div><div><font face=3D"monospace"><b>|=C2=A0</b></font><=
/div><div><font face=3D"monospace"><b>|=C2=A0</b></font></div><div><font fa=
ce=3D"monospace"><b>| CMake Error at /local/d4/gstark/poky/build/tmp/work/c=
ortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/recipe-sysroot-native/usr=
/lib/cmake/llvm/HandleLLVMOptions.cmake:402 (message):</b></font></div><div=
><font face=3D"monospace"><b>|=C2=A0 =C2=A0LLVM requires C++11 support but =
the &#39;-std=3Dc++11&#39; flag isn&#39;t supported.</b></font></div><div><=
font face=3D"monospace"><b>| Call Stack (most recent call first):</b></font=
></div><div><font face=3D"monospace"><b>|=C2=A0 =C2=A0interpreter/CMakeList=
s.txt:285 (include)</b></font></div><div><font face=3D"monospace"><b>|=C2=
=A0</b></font></div><div><font face=3D"monospace"><b>|=C2=A0</b></font></di=
v><div><font face=3D"monospace">| -- Configuring incomplete, errors occurre=
d!</font></div><div><font face=3D"monospace">| See also &quot;/local/d4/gst=
ark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/=
build/CMakeFiles/CMakeOutput.log&quot;.</font></div><div><font face=3D"mono=
space">| See also &quot;/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/root/6.14.00-r0/build/CMakeFiles/CMakeError.log&quot;.=
</font></div><div><font face=3D"monospace">| WARNING: /local/d4/gstark/poky=
/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/temp/run=
.do_configure.2984:1 exit 1 from &#39;cmake $oecmake_sitefile /local/d4/gst=
ark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/root/6.14.00-r0/=
root-6.14.00 -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=
=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=
=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc -DCMAKE_INSTALL_SHAREDSTA=
TEDIR:PATH=3D../com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTA=
LL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude -DCMAKE_INST=
ALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAI=
N_FILE=3D/local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gn=
ueabi/root/6.14.00-r0/toolchain.cmake -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_=
NO_SYSTEM_FROM_IMPORTED=3D1 -Drootfit=3DON -Dminuit2=3DON -Dpython=3DON -Ds=
sl=3DON -Dxrootd=3DON -Dbuiltin_freetype=3DOFF -Dbuiltin_llvm=3DOFF -Dbuilt=
in_glew=3DOFF -Dastiff=3DOFF -Dasimage=3DOFF -Dbuiltin_afterimage=3DOFF -Da=
lien=3DOFF -Dvdt=3DOFF ${PACKAGECONFIG_CONFARGS} -Wno-dev&#39;</font></div>=
<div><font face=3D"monospace">| ERROR: Function failed: do_configure (log f=
ile is located at /local/d4/gstark/poky/build/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/root/6.14.00-r0/temp/log.do_configure.2984)</font></div><div=
><font face=3D"monospace">ERROR: Task (/local/d4/gstark/meta-l1calo/recipes=
-core/root/root_6.14.00.bb:do_configure) failed with exit code &#39;1&#39;<=
/font></div></div><div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr">On Wed, Jul 11, 2018 at 3:35 PM Khem Raj &lt;<a href=3D"mailto:=
raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Hi Giordon<br>
<br>
On Tue, Jul 10, 2018 at 10:36 AM Giordon Stark &lt;<a href=3D"mailto:kratsg=
@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; | /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00=
-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a: error adding symbols: F=
ile in wrong format<br>
&gt; | clang-5.0: error: linker command failed with exit code 1 (use -v to =
see invocation)<br>
&gt; | interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tbl=
gen.dir/build.make:95: recipe for target &#39;interpreter/llvm/src/bin/clan=
g-tblgen&#39; failed<br>
&gt; | make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1<br>
&gt; | make[2]: Leaving directory &#39;/local/d4/gstark/poky/build/tmp/work=
/aarch64-poky-linux/root/6.14.00-r0/build&#39;<br>
&gt; | CMakeFiles/Makefile2:791: recipe for target &#39;interpreter/llvm/sr=
c/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all&#39; failed<br=
>
&gt; | make[1]: *** [interpreter/llvm/src/tools/clang/utils/TableGen/CMakeF=
iles/clang-tblgen.dir/all] Error 2<br>
&gt; | make[1]: *** Waiting for unfinished jobs....<br>
&gt;<br>
&gt; Here&#39;s the full log: <a href=3D"https://gist.github.com/3403addf74=
b5e902adec93b75fb0e138" rel=3D"noreferrer" target=3D"_blank">https://gist.g=
ithub.com/3403addf74b5e902adec93b75fb0e138</a><br>
&gt;<br>
&gt; Any ideas how to get a more verbose invocation if needed? I suspect th=
e error is due to some pre-built libraries being shipped in this recipe, bu=
t I&#39;m not sure what&#39;s causing the error in the first place.<br>
&gt;<br>
<br>
it seems to be linking with native llvm libraries which might not be intend=
ed.<br>
<br>
&gt; Note: I am using meta-clang. The recipe I&#39;m using looks like:<br>
&gt;<br>
&gt; SUMMARY =3D &quot;Numerical data analysis framework (OO)&quot;<br>
&gt; DESCRIPTION =3D &quot;Object oriented framework for large scale data a=
nalysis&quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://root.cern.ch" rel=3D"noreferrer" =
target=3D"_blank">http://root.cern.ch</a>&quot;<br>
&gt; LICENSE =3D &quot;LGPLv2.1&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D5ec773ab82cbea1f17ec5b=
98e8ce60cf&quot;<br>
&gt; SRC_URI =3D &quot;<a href=3D"https://root.cern.ch/download/root_v$%7BP=
V%7D.source.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://root.cern.=
ch/download/root_v${PV}.source.tar.gz</a>&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/${BPN}-${PV}&quot;<br>
&gt;<br>
&gt; TOOLCHAIN =3D &quot;clang&quot;<br>
&gt; #TARGET_CXXFLAGS_append_toolchain-clang =3D &quot; -stdlib=3Dlibc++ &q=
uot;<br>
&gt;<br>
&gt; DEPENDS +=3D &quot;llvm-native libpcre lz4 libx11 libxpm libxft gsl ff=
tw libatomic-ops freetype glew xrootd&quot;<br>
&gt;<br>
<br>
it seems you really need llvm for target in dependencies so please<br>
remove llvm-native from DEPENDS<br>
and add clang to it.<br>
<br>
&gt; inherit cmake pkgconfig pythonnative<br>
&gt;<br>
&gt;<br>
&gt; do_configure_prepend(){<br>
&gt; export FC=3D${GFORTRAN}<br>
&gt; }<br>
&gt;<br>
&gt; EXTRA_OECMAKE =3D &quot;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Drootfit=3DON \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dminuit2=3DON \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dpython=3DON \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dssl=3DON \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dxrootd=3DON \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_freetype=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_llvm=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_glew=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dastiff=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dasimage=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dbuiltin_afterimage=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dalien=3DOFF \<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Dvdt=3DOFF \<br>
&gt; &quot;<br>
&gt;<br>
&gt; --<br>
&gt; Giordon Stark<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--000000000000eba8810570d2c641--
