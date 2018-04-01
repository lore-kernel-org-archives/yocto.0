Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1825E00A1C; Sat, 31 Mar 2018 18:01:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f52.google.com (mail-pl0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D21CFE008F2
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2018 18:01:53 -0700 (PDT)
Received: by mail-pl0-f52.google.com with SMTP id s24-v6so2127086plq.6
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2018 18:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=GRqj/5+LP7d734hlirt4w9gQgD8zKIyu1H8P9l3whlw=;
	b=Ee0pjQM9kLVjC16DbLDSF8istZqXSMCw5L9FrdCFEwwQSmaNWDwx94IsxuvzGHj729
	NbaC6H3Z5/QKNz1R+GjjXA1W/tIYw4JqM4ZJPzEtXEIwn35t+Qs5YAGjdrY14sp86awO
	U3LNKqeXFVwHK/lsTCkVuCwjs27a+NOUQcEHcZgNh3oNXsuzMz3GTdRiO6o1ZbYXtcbD
	LLQEhQzIxsbTsYZL6HqSh+ATKvUSusET2ODHZI3PPUteVFDoUX3SWPfJwD4i/UgZQQdf
	dHhATIS1wMu5fuLuMNxKY7NHvtmhZ4lFWTimNLrZneocJvUBw2GMlXLcUptW2rxtLqLH
	gQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=GRqj/5+LP7d734hlirt4w9gQgD8zKIyu1H8P9l3whlw=;
	b=Q6OAVTOi+CYxrRO1c2GmUPJ0PhqXn78DHY9LBbeDu5ALWLTlBaoVFtfHffxYr/J8mC
	Nl48alYEfMT+WlZm1EZzs7OAgByM6FkGTfhMtg4rNn+XfMtUxb/IxuLQNjYKr7thFejE
	xKk3iJnSK1BRNqEsAvTTtcrjxZ83oAJw8CguM3qyF5FmUX8/MOKhbrxwcNPBoucKWtyU
	jyNEp1UBSstztOsXrqzwr5QTSlF5WDi+qqPtmqMCjAF2rsjrfoO4NWFkNbzPhTIVR3Oy
	aMP1VpMLemQghOxZmBkrCE5iNVMGZPYBkgpmRiWutDW6qO0KtBqtQqDluHYtUU8l358e
	KXZg==
X-Gm-Message-State: AElRT7GmawDLPkLLxoqwMW5h3sEIh8K/qfMuRfuWXxWevoEJmnanjWyl
	JAQovwIz+i9+ZDpDpg/bWxdTxCw2C6xfA7ecXw+ZeQ==
X-Google-Smtp-Source: AIpwx48wt2SH3cMFrhMBUNYiQZjbcsEs2ozud1uF70f6gGj8WfTc9yqsheXDZyTfPjGto5BzaMA0XBozOie5/5CNkkw=
X-Received: by 2002:a17:902:8f97:: with SMTP id
	z23-v6mr4701694plo.162.1522544512619; 
	Sat, 31 Mar 2018 18:01:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.227.8 with HTTP; Sat, 31 Mar 2018 18:01:21 -0700 (PDT)
In-Reply-To: <C44683C49AD51C4AB28DA746E48E35870101A6C9@SBS-IDENTPRO.intranet.identpro.net>
References: <C44683C49AD51C4AB28DA746E48E3587FFAD19@SBS-IDENTPRO.intranet.identpro.net>
	<1521292484.local-966b54e7-d3df-v1.1.5-5834c99f@getmailspring.com>
	<C44683C49AD51C4AB28DA746E48E35870101A6C9@SBS-IDENTPRO.intranet.identpro.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 31 Mar 2018 18:01:21 -0700
Message-ID: <CAMKF1soKz_hUBxvL=0qQ-BsaDcn0ia-T0MMEmL77pfgTne0_8w@mail.gmail.com>
To: =?UTF-8?Q?Matthias_Sch=C3=B6pfer?= <matthias.schoepfer@identpro.de>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenBLAS recipe
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
X-List-Received-Date: Sun, 01 Apr 2018 01:01:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please try this patch here

https://github.com/kraj/intel-iot-refkit/commit/04cd5afec0c41deeb5e1a48b43a=
0a31e708295c1

On Wed, Mar 21, 2018 at 11:51 AM, Matthias Sch=C3=B6pfer
<matthias.schoepfer@identpro.de> wrote:
> Hi Peter,
>
> I got some progress using:
>
>> export BLAS=3D/path/to/libblas.so
>> export LAPACK=3D/path/to/liblapack.so
>> export ATLAS=3D/path/to/libatlas.so
>
> like:
>
> export BLAS=3D${STAGING_LIBDIR}
>
> turns out, my lapack does not have cblas, when I enable CBLAS, I have an
> Issue with Fortran C
>
> ERROR: lapack-3.8.0-r0 do_configure: Function failed: do_configure (log
> file is located at
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/temp/log.do_configure.4609)
> ERROR: Logfile of failure stored in:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/temp/log.do_configure.4609
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | -- The Fortran compiler identification is GNU 7.3.0
> | -- The C compiler identification is GNU 7.3.0
> | -- Check for working Fortran compiler:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gfortran
> | -- Check for working Fortran compiler:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gfortran
>  -- works
> | -- Detecting Fortran compiler ABI info
> | -- Detecting Fortran compiler ABI info - done
> | -- Checking whether
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gfortran
> supports Fortran 90
> | -- Checking whether
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gfortran
> supports Fortran 90 -- yes
> | -- Check for working C compiler:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gcc
> | -- Check for working C compiler:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gcc
> -- works
> | -- Detecting C compiler ABI info
> | -- Detecting C compiler ABI info - done
> | -- Detecting C compile features
> | -- Detecting C compile features - done
> | -- Setting build type to 'Release' as none was specified.
> | -- Looking for Python greater than 2.6 -
> | -- Could NOT find PythonInterp (missing:  PYTHON_EXECUTABLE) (Required
> is at least version "2.7")
> | -- No suitable Python version found, so skipping summary tests.
> | -- Build tests: OFF
> | -- Reducing RELEASE optimization level to O2
> | -- Looking for Fortran NONE - found
> | -- Looking for Fortran INT_CPU_TIME - found
> | -- Looking for Fortran EXT_ETIME - not found
> | -- Looking for Fortran EXT_ETIME_ - not found
> | -- Looking for Fortran INT_ETIME - not found
> | -- --> Will use second_INT_CPU_TIME.f and dsecnd_INT_CPU_TIME.f as
> timing function.
> | -- Build deprecated routines: OFF
> | -- Build single precision real: ON
> | -- Build double precision real: ON
> | -- Build single precision complex: ON
> | -- Build double precision complex: ON
> | -- Using supplied NETLIB BLAS implementation
> | -- CBLAS enable
> | -- Detecting Fortran/C Interface
> | -- Detecting Fortran/C Interface - Failed to load sample executable
> | -- Verifying Fortran/C Compiler Compatibility
> | -- Verifying Fortran/C Compiler Compatibility - Failed
> | CMake Error at
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterf=
ace.cmake:383
> (message):
> |   The Fortran compiler:
> |
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gfortran
> |
> |   and the C compiler:
> |
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gcc
> |
> |   failed to compile a simple test project using both languages.  The
> output
> |   was:
> |
> |     Change Dir:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> |
> |     Run Build
> Command:"/home/mschoepf/identpro/yocto/ros-devel/tmp/hosttools/make"
> "VerifyFortranC"
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -H/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInte=
rface/Verify
> -B/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> --check-build-system CMakeFiles/Makefile.cmake 0
> |     make -f CMakeFiles/Makefile2 VerifyFortranC
> |     make[1]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -H/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInte=
rface/Verify
> -B/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> --check-build-system CMakeFiles/Makefile.cmake 0
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -E cmake_progress_start
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC/CMakeFiles
> 5
> |     make -f CMakeFiles/Makefile2 CMakeFiles/VerifyFortranC.dir/all
> |     make[2]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make -f CMakeFiles/VerifyFortran.dir/build.make
> CMakeFiles/VerifyFortran.dir/depend
> |     make[3]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     cd
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> &&
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -E cmake_depends "Unix Makefiles"
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterf=
ace/Verify
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterf=
ace/Verify
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC/CMakeFiles/VerifyFort=
ran.dir/DependInfo.cmake
> |     Scanning dependencies of target VerifyFortran
> |     make[3]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make -f CMakeFiles/VerifyFortran.dir/build.make
> CMakeFiles/VerifyFortran.dir/requires
> |     make[3]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make[3]: Nothing to be done for
> 'CMakeFiles/VerifyFortran.dir/requires'.
> |     make[3]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make -f CMakeFiles/VerifyFortran.dir/build.make
> CMakeFiles/VerifyFortran.dir/build
> |     make[3]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     [ 20%] Building Fortran object
> CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gfortran
>   -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse
> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp=
-linux/lapack/3.8.0-r0/recipe-sysroot
> -std=3Df2008
> -I/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
>  -O2 -DNDEBUG -O2   -c
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterf=
ace/Verify/VerifyFortran.f
> -o CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o
> |     [ 40%] Linking Fortran static library libVerifyFortran.a
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -P CMakeFiles/VerifyFortran.dir/cmake_clean_target.cmake
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -E cmake_link_script CMakeFiles/VerifyFortran.dir/link.txt --verbose=3D1
> |     x86_64-idp-linux-ar qc libVerifyFortran.a
> CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
ranlib
> libVerifyFortran.a
> |     make[3]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     [ 40%] Built target VerifyFortran
> |     make -f CMakeFiles/VerifyFortranC.dir/build.make
> CMakeFiles/VerifyFortranC.dir/depend
> |     make[3]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     cd
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> &&
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -E cmake_depends "Unix Makefiles"
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterf=
ace/Verify
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterf=
ace/Verify
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC/CMakeFiles/VerifyFort=
ranC.dir/DependInfo.cmake
> |     Scanning dependencies of target VerifyFortranC
> |     make[3]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make -f CMakeFiles/VerifyFortranC.dir/build.make
> CMakeFiles/VerifyFortranC.dir/build
> |     make[3]: Entering directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     [ 60%] Building C object CMakeFiles/VerifyFortranC.dir/main.c.o
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gcc
>  -I/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC  -m64 -march=3Dcor=
e2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf/identpr=
o/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroo=
t  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/m=
schoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r=
0=3D/usr/src/debug/lapack/3.8.0-r0 -fdebug-prefix-map=3D/home/mschoepf/iden=
tpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sys=
root-native=3D -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel=
/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot=3D   -m64 -marc=
h=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf/=
identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe=
-sysroot -DNDEBUG   -o CMakeFiles/VerifyFortranC.dir/main.c.o   -c /home/ms=
choepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0=
/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterface/Verify=
/main.c
> |     [ 80%] Building C object CMakeFiles/VerifyFortranC.dir/VerifyC.c.o
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gcc
>  -I/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC  -m64 -march=3Dcor=
e2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf/identpr=
o/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroo=
t  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/m=
schoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r=
0=3D/usr/src/debug/lapack/3.8.0-r0 -fdebug-prefix-map=3D/home/mschoepf/iden=
tpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sys=
root-native=3D -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel=
/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot=3D   -m64 -marc=
h=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf/=
identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe=
-sysroot -DNDEBUG   -o CMakeFiles/VerifyFortranC.dir/VerifyC.c.o   -c /home=
/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0=
-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterface/Ver=
ify/VerifyC.c
> |     [100%] Linking C executable VerifyFortranC
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake
> -E cmake_link_script CMakeFiles/VerifyFortranC.dir/link.txt --verbose=3D1
> |
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux-=
gcc
>  -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse
> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp=
-linux/lapack/3.8.0-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/cor=
e2-64-idp-linux/lapack/3.8.0-r0=3D/usr/src/debug/lapack/3.8.0-r0
> -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/cor=
e2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/cor=
e2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot=3D
>   -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse
> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp=
-linux/lapack/3.8.0-r0/recipe-sysroot
> -DNDEBUG  -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse
> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp=
-linux/lapack/3.8.0-r0/recipe-sysroot
>  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-O1
> -Wl,--hash-style=3Dgnu -Wl,--as-needed
> CMakeFiles/VerifyFortranC.dir/main.c.o
> CMakeFiles/VerifyFortranC.dir/VerifyC.c.o  -o VerifyFortranC
> libVerifyFortran.a -lgfortran -lm -lquadmath -lm
> |     CMakeFiles/VerifyFortranC.dir/main.c.o: In function `main':
> |
> /usr/src/debug/lapack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=
/-native/usr/share/cmake-3.8/Modules/FortranCInterface/Verify/main.c:14:
> undefined reference to `VerifyFortran'
> |     collect2: error: ld returned 1 exit status
> |     make[3]: *** [CMakeFiles/VerifyFortranC.dir/build.make:125:
> VerifyFortranC] Error 1
> |     make[3]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make[2]: *** [CMakeFiles/Makefile2:109:
> CMakeFiles/VerifyFortranC.dir/all] Error 2
> |     make[2]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make[1]: *** [CMakeFiles/Makefile2:121:
> CMakeFiles/VerifyFortranC.dir/rule] Error 2
> |     make[1]: Leaving directory
> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'
> |     make: *** [Makefile:134: VerifyFortranC] Error 2
> |
> | Call Stack (most recent call first):
> |   CBLAS/CMakeLists.txt:9 (FortranCInterface_VERIFY)
> |
> |
> | -- Configuring incomplete, errors occurred!
> | See also
> "/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/CMakeOutput.log".
> | See also
> "/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/CMakeError.log".
> | WARNING:
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/temp/run.do_configure.4609:1
> exit 1 from 'cmake $oecmake_sitefile
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/lapack-3.8.0
> -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin
> -DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin
> -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec
> -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc
> -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com
> -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dl=
ib
> -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude
> -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0
> -DCMAKE_TOOLCHAIN_FILE=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work=
/core2-64-idp-linux/lapack/3.8.0-r0/toolchain.cmake
> -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1
> -DBUILD_SHARED_LIBS=3DON -DCBLAS=3DON ${PACKAGECONFIG_CONFARGS} -Wno-dev'
> | ERROR: Function failed: do_configure (log file is located at
> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapac=
k/3.8.0-r0/temp/log.do_configure.4609)
> ERROR: Task
> (/home/mschoepf/identpro/yocto/poky/meta-ros/recipes-extended/lapack/lapa=
ck_3.8.0.bb:do_configure)
> failed with exit code '1
>
> On 03/17/2018 02:27 PM, Peter Balazovic wrote:
>>
>> for now I took openblas recipe from here
>> https://github.com/CogentEmbedded/meta-opencl/tree/master/meta-ocl-commo=
n/recipes-graphics/openblas
>> <https://link.getmailspring.com/link/1521292484.local-966b54e7-d3df-v1.1=
.5-5834c99f@getmailspring.com/0?redirect=3Dhttps%3A%2F%2Fgithub.com%2FCogen=
tEmbedded%2Fmeta-opencl%2Ftree%2Fmaster%2Fmeta-ocl-common%2Frecipes-graphic=
s%2Fopenblas&recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D>
>>
>> it compiles.
>>
>> BTW how fortran can be added to yocto build?
>>
>> Secondly I wanna to use it for scipy build but even though compiles with
>> no error but openblas can't be found by this
>>
>> NOTE: Executing RunQueue Tasks
>> ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution failed=
.
>> ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file
>> is located at
>> /../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/scipy/1.0.0-r0/tem=
p/log.do_compile.12169)
>> ERROR: Logfile of failure stored in:
>> /../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/scipy/1.0.0-r0/tem=
p/log.do_compile.12169
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | ERROR: python setup.py build execution failed.
>> |
>> /../build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/dist.py:=
267:
>> UserWarning: Unknown distribution option: 'python_requires'
>> | warnings.warn(msg)
>> | lapack_opt_info:
>> | openblas_lapack_info:
>> | libraries openblas not found in
>> ['/../build/tmp/sysroots/x86_64-linux/usr/lib']
>> | NOT AVAILABLE
>>
>> Even openblas has been added still can't be found ... I look at scipy
>> built from source guide it says
>>
>> |
>>
>> export BLAS=3D/path/to/libblas.so
>> export LAPACK=3D/path/to/liblapack.so
>> export ATLAS=3D/path/to/libatlas.so
>> python setup.py ............
>>
>> |
>> I wonder if openblas needs to somwhow installed or is it issue of scipy
>> build process ...
>>
>>
>> Sent from Mailspring
>> <https://link.getmailspring.com/link/1521292484.local-966b54e7-d3df-v1.1=
.5-5834c99f@getmailspring.com/1?redirect=3Dhttps%3A%2F%2Fgetmailspring.com%=
2F&recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D>,
>> the best free email app for work
>>
>>
>> On Mar 17 2018, at 2:08 pm, Matthias Sch=C3=B6pfer
>> <matthias.schoepfer@identpro.de> wrote:
>>
>>
>>     Hi Peter,
>>
>>     openblas builds for me fine. This seems to be more of an issue with
>>     hard/softfloat than openBLAS.
>>
>>     If I remember correctly, there was at some point a problem with fort=
ran,
>>     which might be needed for openBLAS. But this seems not to be the iss=
ue
>>     here.
>>
>>     Maybe try to compile it for qemu-x86 and see, if it works there...
>>
>>     Regards,
>>
>>     Matthias
>>
>>     On 03/17/2018 11:44 AM, Peter Balazovic wrote:
>>
>>         Hello guys,
>>
>>         I tried to use openblas recipe from
>>         https://layers.openembedded.org/layerindex/recipe/68888/
>>         recipes-convnet/openblas/openblas_0.2.19.bb
>>         <http://github.com/intel/intel-iot-refkit/blob/master/meta-refki=
t-extra/recipes-convnet/openblas/openblas_0.2.19.bb>
>>
>>         Unfortunately got compiling error btw I notice there is further
>>         openBLAS
>>         release 0.2.20, is there any update on that recipe?
>>
>>
>>         Compiling problems:
>>
>>         NOTE: Executing RunQueue Tasks
>>         ERROR: openblas-0.2.19-r0 do_compile: oe_runmake failed
>>         ERROR: openblas-0.2.19-r0 do_compile: Function failed:
>>         do_compile (log
>>         file is located at
>>         ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.=
2.19-r0/temp/log.do_compile.2836)
>>         ERROR: Logfile of failure stored in:
>>         ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.=
2.19-r0/temp/log.do_compile.2836
>>         Log data follows:
>>         | DEBUG: Executing shell function do_compile
>>         | NOTE: make -j 4 HOSTCC=3Dgcc  CC=3Darm-poky-linux-gnueabi-gcc
>>         --sysroot=3D../build/tmp/sysroots/ ONLY_CBLAS=3D1 BINARY=3D32 TA=
RGET=3Darm
>>         | make[1]: warning: -jN forced in submake: disabling jobserver m=
ode.
>>         | make[1]: Entering directory
>>         '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0=
.2.19-r0/OpenBLAS-0.2.19/interface'
>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots/=
  -O2
>>         -pipe -g -feliminate-unused-debug-types
>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linu=
x-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2
>>         -DMAX_STACK_ALLOC=3D2048
>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE
>>         -DSMP_SERVER
>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DN=
AME=3D_
>>         -DCNAME=3D
>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2
>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LA=
PACK
>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4
>>         -DASMNAME=3Dcblas_isamax -DASMFNAME=3Dcblas_isamax_ -DNAME=3Dcbl=
as_isamax_
>>         -DCNAME=3Dcblas_isamax -DCHAR_NAME=3D\"cblas_isamax_\"
>>         -DCHAR_CNAME=3D\"cblas_isamax\" -DNO_AFFINITY -I.. -I. -UDOUBLE
>>         -UCOMPLEX
>>         -DCBLAS -c -DUSE_ABS -UUSE_MIN imax.c -o cblas_isamax.o
>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots/=
  -O2
>>         -pipe -g -feliminate-unused-debug-types
>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linu=
x-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2
>>         -DMAX_STACK_ALLOC=3D2048
>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE
>>         -DSMP_SERVER
>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DN=
AME=3D_
>>         -DCNAME=3D
>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2
>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LA=
PACK
>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4
>>         -DASMNAME=3Dcblas_sasum -DASMFNAME=3Dcblas_sasum_ -DNAME=3Dcblas=
_sasum_
>>         -DCNAME=3Dcblas_sasum -DCHAR_NAME=3D\"cblas_sasum_\"
>>         -DCHAR_CNAME=3D\"cblas_sasum\" -DNO_AFFINITY -I.. -I. -UDOUBLE
>>         -UCOMPLEX
>>         -DCBLAS -c asum.c -o cblas_sasum.o
>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots/=
  -O2
>>         -pipe -g -feliminate-unused-debug-types
>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linu=
x-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2
>>         -DMAX_STACK_ALLOC=3D2048
>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE
>>         -DSMP_SERVER
>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DN=
AME=3D_
>>         -DCNAME=3D
>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2
>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LA=
PACK
>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4
>>         -DASMNAME=3Dcblas_saxpy -DASMFNAME=3Dcblas_saxpy_ -DNAME=3Dcblas=
_saxpy_
>>         -DCNAME=3Dcblas_saxpy -DCHAR_NAME=3D\"cblas_saxpy_\"
>>         -DCHAR_CNAME=3D\"cblas_saxpy\" -DNO_AFFINITY -I.. -I. -UDOUBLE
>>         -UCOMPLEX
>>         -DCBLAS -c axpy.c -o cblas_saxpy.o
>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots/=
  -O2
>>         -pipe -g -feliminate-unused-debug-types
>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linu=
x-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D
>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2
>>         -DMAX_STACK_ALLOC=3D2048
>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE
>>         -DSMP_SERVER
>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DN=
AME=3D_
>>         -DCNAME=3D
>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2
>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LA=
PACK
>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4
>>         -DASMNAME=3Dcblas_scopy -DASMFNAME=3Dcblas_scopy_ -DNAME=3Dcblas=
_scopy_
>>         -DCNAME=3Dcblas_scopy -DCHAR_NAME=3D\"cblas_scopy_\"
>>         -DCHAR_CNAME=3D\"cblas_scopy\" -DNO_AFFINITY -I.. -I. -UDOUBLE
>>         -UCOMPLEX
>>         -DCBLAS -c copy.c -o cblas_scopy.o
>>         | <command-line>:0:0: warning: "ASMNAME" redefined
>>         | <command-line>:0:0: warning: "ASMNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "ASMFNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "NAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "ASMNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "ASMFNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "NAME" redefined
>>         | In file included from
>>         ../build/tmp/sysroots//usr/include/features.h:392:0,
>>         |                  from
>>         ../build/tmp/sysroots//usr/include/stdio.h:27,
>>         |                  from imax.c:39:
>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal err=
or:
>>         gnu/stubs-soft.h: No such file or directory
>>         |  # include <gnu/stubs-soft.h>
>>         |                              ^
>>         | compilation terminated.
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "ASMFNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "NAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "ASMNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "ASMFNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "NAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined
>>         | In file included from
>>         ../build/tmp/sysroots//usr/include/features.h:392:0,
>>         |                  from
>>         ../build/tmp/sysroots//usr/include/stdio.h:27,
>>         |                  from axpy.c:39:
>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal err=
or:
>>         gnu/stubs-soft.h: No such file or directory
>>         |  # include <gnu/stubs-soft.h>
>>         |                              ^
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined
>>         | <command-line>:0:0: note: this is the location of the previous
>>         definition
>>         | ERROR: oe_runmake failed
>>         | In file included from
>>         ../build/tmp/sysroots//usr/include/features.h:392:0,
>>         |                  from
>>         ../build/tmp/sysroots//usr/include/stdio.h:27,
>>         |                  from asum.c:39:
>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal err=
or:
>>         gnu/stubs-soft.h: No such file or directory
>>         |  # include <gnu/stubs-soft.h>
>>         |                              ^
>>         | compilation terminated.
>>         | In file included from
>>         ../build/tmp/sysroots//usr/include/features.h:392:0,
>>         |                  from
>>         ../build/tmp/sysroots//usr/include/stdio.h:27,
>>         |                  from copy.c:39:
>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal err=
or:
>>         gnu/stubs-soft.h: No such file or directory
>>         |  # include <gnu/stubs-soft.h>
>>         |                              ^
>>         | compilation terminated.
>>         | compilation terminated.
>>         | Makefile:1351: recipe for target 'cblas_isamax.o' failed
>>         | make[1]: *** [cblas_isamax.o] Error 1
>>         | make[1]: *** Waiting for unfinished jobs....
>>         | Makefile:1375: recipe for target 'cblas_sasum.o' failed
>>         | make[1]: *** [cblas_sasum.o] Error 1
>>         | Makefile:1447: recipe for target 'cblas_scopy.o' failed
>>         | make[1]: *** [cblas_scopy.o] Error 1
>>         | Makefile:1435: recipe for target 'cblas_saxpy.o' failed
>>         | make[1]: *** [cblas_saxpy.o] Error 1
>>         | make[1]: Leaving directory
>>         '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0=
.2.19-r0/OpenBLAS-0.2.19/interface'
>>         | Makefile:133: recipe for target 'libs' failed
>>         | make: *** [libs] Error 1
>>         | ERROR: Function failed: do_compile (log file is located at
>>         ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.=
2.19-r0/temp/log.do_compile.2836)
>>         ERROR: Task
>>         (../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/o=
penblas/openblas_0.2.19.bb:do_compile)
>>         failed with exit code '1'
>>         NOTE: Tasks Summary: Attempted 433 tasks of which 432 didn't
>>         need to be
>>         rerun and 1 failed.
>>
>>
>>
>>     --
>>     Dr.-Ing. Matthias Sch=C3=B6pfer
>>
>>     Softwareentwicklung
>>
>>     ____________________________________
>>
>>     IdentPro GmbH
>>     Camp-Spich-Str. 4
>>     53842 Troisdorf
>>
>>     Tel: +49 (0)2241 / 866 392 46
>>     Fax: +49 (0)2241 / 866 392 99
>>     eMail: matthias.schoepfer@identpro.de
>>
>>     http://www.identpro.de
>>
>>     identplus=C2=AE =E2=80=93 Das 3D Staplerleitsystem mit enormen Sparp=
otenzial: z. B.
>>     =C3=BCber 67.000 EUR pro Jahr bei 500 Transporten t=C3=A4glich! Bere=
chnen Sie das
>>     Einsparpotenzial f=C3=BCr Ihr Lager mit dem identplus=C2=AE Potenzia=
lrechner.
>>
>>     identplus=C2=AE live erleben: Vereinbaren Sie jetzt einen Termin!
>>
>>     ---------------------------------
>>     IdentPro GmbH
>>     Member of Dr. Wack Holding GmbH & Co.KG
>>     Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg
>>     Gesch=C3=A4ftsf=C3=BChrer: Michael Wack
>>     Umsatzsteuer-ID-Nr.: DE 254 824 945
>>     WEEE-Reg.-Nr. DE 79026890
>>
>> Open Tracking
>
>
> --
> Dr.-Ing. Matthias Sch=C3=B6pfer
>
> Softwareentwicklung
>
> ____________________________________
>
> IdentPro GmbH
> Camp-Spich-Str. 4
> 53842 Troisdorf
>
> Tel:   +49 (0)2241 / 866 392 46
> Fax:   +49 (0)2241 / 866 392 99
> eMail: matthias.schoepfer@identpro.de
>
> http://www.identpro.de
>
> identplus=C2=AE =E2=80=93 Das 3D Staplerleitsystem mit enormen Sparpotenz=
ial: z. B.
> =C3=BCber 67.000 EUR pro Jahr bei 500 Transporten t=C3=A4glich! Berechnen=
 Sie das
> Einsparpotenzial f=C3=BCr Ihr Lager mit dem identplus=C2=AE Potenzialrech=
ner.
>
> identplus=C2=AE live erleben: Vereinbaren Sie jetzt einen Termin!
>
> ---------------------------------
> IdentPro GmbH
> Member of Dr. Wack Holding GmbH & Co.KG
> Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg
> Gesch=C3=A4ftsf=C3=BChrer: Michael Wack
> Umsatzsteuer-ID-Nr.: DE 254 824 945
> WEEE-Reg.-Nr. DE 79026890
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

