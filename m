Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA023E00D20; Sat, 17 Mar 2018 03:36:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB4F8E007AD
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 03:36:19 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id a15so5084161pgn.5
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 03:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=CPuem/ChSdHAT9FIxSaqLpIb7V10qfjNNGyz1rsY1Kc=;
	b=F73L+r8+cJZX8jONI0NFASwpMDIJwnMb6qgksgXWcHGg2mkSaxc4RVOh9qXJNvZEcN
	5u61yx3ihkSV0kp6/cRbrwJvigR/hUPjo+vgrsB8FS4I2dxqO+5KY7j8tE5t6yMtNo9O
	7ZxMVWtRLjxW2ETSy/5cPOOAWYkldCrMj+YNgi1qYTE5rX5tc66LcVCTj1bSY38gOoB+
	cUvATxkYJhrpY015K8nmaOsjB7y0m+KLwtP9LCP5ENP5N89SbA65np7FwIwxezNmlD89
	sNmWcmy54tGvGzqTNeiAEog0oYxM7Kym45pELFbOvuLl81yzsaz0IrYzo7kko4/hEz51
	tlRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=CPuem/ChSdHAT9FIxSaqLpIb7V10qfjNNGyz1rsY1Kc=;
	b=aBbHNILwkgvYSXSoUurr+ZewKDWNLtQCiwfj719cmxkiXByrnAL6EXe+ghp2JLElm0
	u+cOqJ743RxASj+IJO2/zkQuV2yYCyEXEXeQ06nTfLdkK85Lrw3T782FWRbW0KHvI3aX
	+ESEru2NqXDk6EX4g6rTDT1sjDuoYAmAP9MU7dsQjXgl0Vf5mFTGCop92sQ5WDr8JLot
	VyQI9/31ff5gEFm6tnVBH1qhpBZNjM/pT41fOjfzlU9CSGGKq5qeab8+sB+ih/TKC0VE
	//sWuce73l0y/sTBpEnqtBllpanlsmq6ip5EnWRC1Cr/02wEMTSGEIPzhq6XgLlME6j5
	SP5A==
X-Gm-Message-State: AElRT7HR7UrlzsjLqwEJKBJWnJtbDzIiobtSjgFG26G+yKp+IzNvvZ1I
	uC7Gp2rcJKsVlS78kJN/6Qx92Q+n6wDmCbtym+YZCw==
X-Google-Smtp-Source: AG47ELtewkVzIt0WDKh8Y9D75rUhXgx53Vd3IuF79h2PpurY/7kHumYnVkbufM4AtZaIBDqhsbFYkFgmV1rC+iPrTLg=
X-Received: by 10.99.171.72 with SMTP id k8mr4149634pgp.355.1521282978730;
	Sat, 17 Mar 2018 03:36:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Sat, 17 Mar 2018 03:36:18 -0700 (PDT)
In-Reply-To: <CAFzUWG=c2a0m0frcAK8dNxE44rwUHdWf=E+1JHdbPkf1ZLV3qA@mail.gmail.com>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
	<CAJTo0Lbwybvs404=Xs-vx4Vtj6+znf6gpTi0QvBFR1j-w=e0Qw@mail.gmail.com>
	<CAFq4t4gZDQQat_H-HeYAJWdYCvLMt9rGyunr1BRQXn3dkeAYGQ@mail.gmail.com>
	<CAJTo0LaDQjiTosCtAqBnL0ZZ2aMpDXxdX7kP_SDDqoVobqdi0g@mail.gmail.com>
	<CAFq4t4hgxQkgMQ8Z5-hvVyTWQKn3bAUSgD57gRF+tuXE4UTdWg@mail.gmail.com>
	<d9887f4a-61f9-4c51-95f3-66c52f9a3b1f@balister.org>
	<CAFzUWG=c2a0m0frcAK8dNxE44rwUHdWf=E+1JHdbPkf1ZLV3qA@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 17 Mar 2018 11:36:18 +0100
Message-ID: <CAFq4t4jerHvsYRmh41=nu01OK6cE0Vszn4Vs0VYFsFMDxN97pw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: scipy recipe
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
X-List-Received-Date: Sat, 17 Mar 2018 10:36:23 -0000
Content-Type: multipart/alternative; boundary="94eb2c1be9be8cd8ab0567994bc0"

--94eb2c1be9be8cd8ab0567994bc0
Content-Type: text/plain; charset="UTF-8"

compiling issue on that openblas recipe ...

NOTE: Executing RunQueue Tasks
ERROR: openblas-0.2.19-r0 do_compile: oe_runmake failed
ERROR: openblas-0.2.19-r0 do_compile: Function failed: do_compile (log file
is located at
../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do_compile.2836)
ERROR: Logfile of failure stored in:
../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do_compile.2836
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 HOSTCC=gcc  CC=arm-poky-linux-gnueabi-gcc
--sysroot=../build/tmp/sysroots/ ONLY_CBLAS=1 BINARY=32 TARGET=arm
| make[1]: warning: -jN forced in submake: disabling jobserver mode.
| make[1]: Entering directory
'../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/OpenBLAS-0.2.19/interface'
| arm-poky-linux-gnueabi-gcc  --sysroot=../build/tmp/sysroots/  -O2 -pipe
-g -feliminate-unused-debug-types
-fdebug-prefix-map=../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=/usr/src/debug/openblas/0.2.19-r0
-fdebug-prefix-map=../build/tmp/sysroots/x86_64-linux=
-fdebug-prefix-map=../build/tmp/sysroots/=  -O2 -DMAX_STACK_ALLOC=2048
-Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER
-DNO_WARMUP -DMAX_CPU_NUMBER=4 -DASMNAME= -DASMFNAME=_ -DNAME=_ -DCNAME=
-DCHAR_NAME=\"_\" -DCHAR_CNAME=\"\" -DNO_AFFINITY -I. -O2
-DMAX_STACK_ALLOC=2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK
-DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=4
-DASMNAME=cblas_isamax -DASMFNAME=cblas_isamax_ -DNAME=cblas_isamax_
-DCNAME=cblas_isamax -DCHAR_NAME=\"cblas_isamax_\"
-DCHAR_CNAME=\"cblas_isamax\" -DNO_AFFINITY -I.. -I. -UDOUBLE  -UCOMPLEX
-DCBLAS -c -DUSE_ABS -UUSE_MIN imax.c -o cblas_isamax.o
| arm-poky-linux-gnueabi-gcc  --sysroot=../build/tmp/sysroots/  -O2 -pipe
-g -feliminate-unused-debug-types
-fdebug-prefix-map=../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=/usr/src/debug/openblas/0.2.19-r0
-fdebug-prefix-map=../build/tmp/sysroots/x86_64-linux=
-fdebug-prefix-map=../build/tmp/sysroots/=  -O2 -DMAX_STACK_ALLOC=2048
-Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER
-DNO_WARMUP -DMAX_CPU_NUMBER=4 -DASMNAME= -DASMFNAME=_ -DNAME=_ -DCNAME=
-DCHAR_NAME=\"_\" -DCHAR_CNAME=\"\" -DNO_AFFINITY -I. -O2
-DMAX_STACK_ALLOC=2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK
-DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=4
-DASMNAME=cblas_sasum -DASMFNAME=cblas_sasum_ -DNAME=cblas_sasum_
-DCNAME=cblas_sasum -DCHAR_NAME=\"cblas_sasum_\"
-DCHAR_CNAME=\"cblas_sasum\" -DNO_AFFINITY -I.. -I. -UDOUBLE  -UCOMPLEX
-DCBLAS -c asum.c -o cblas_sasum.o
| arm-poky-linux-gnueabi-gcc  --sysroot=../build/tmp/sysroots/  -O2 -pipe
-g -feliminate-unused-debug-types
-fdebug-prefix-map=../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=/usr/src/debug/openblas/0.2.19-r0
-fdebug-prefix-map=../build/tmp/sysroots/x86_64-linux=
-fdebug-prefix-map=../build/tmp/sysroots/=  -O2 -DMAX_STACK_ALLOC=2048
-Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER
-DNO_WARMUP -DMAX_CPU_NUMBER=4 -DASMNAME= -DASMFNAME=_ -DNAME=_ -DCNAME=
-DCHAR_NAME=\"_\" -DCHAR_CNAME=\"\" -DNO_AFFINITY -I. -O2
-DMAX_STACK_ALLOC=2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK
-DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=4
-DASMNAME=cblas_saxpy -DASMFNAME=cblas_saxpy_ -DNAME=cblas_saxpy_
-DCNAME=cblas_saxpy -DCHAR_NAME=\"cblas_saxpy_\"
-DCHAR_CNAME=\"cblas_saxpy\" -DNO_AFFINITY -I.. -I. -UDOUBLE  -UCOMPLEX
-DCBLAS -c axpy.c -o cblas_saxpy.o
| arm-poky-linux-gnueabi-gcc  --sysroot=../build/tmp/sysroots/  -O2 -pipe
-g -feliminate-unused-debug-types
-fdebug-prefix-map=../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=/usr/src/debug/openblas/0.2.19-r0
-fdebug-prefix-map=../build/tmp/sysroots/x86_64-linux=
-fdebug-prefix-map=../build/tmp/sysroots/=  -O2 -DMAX_STACK_ALLOC=2048
-Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER
-DNO_WARMUP -DMAX_CPU_NUMBER=4 -DASMNAME= -DASMFNAME=_ -DNAME=_ -DCNAME=
-DCHAR_NAME=\"_\" -DCHAR_CNAME=\"\" -DNO_AFFINITY -I. -O2
-DMAX_STACK_ALLOC=2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK
-DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=4
-DASMNAME=cblas_scopy -DASMFNAME=cblas_scopy_ -DNAME=cblas_scopy_
-DCNAME=cblas_scopy -DCHAR_NAME=\"cblas_scopy_\"
-DCHAR_CNAME=\"cblas_scopy\" -DNO_AFFINITY -I.. -I. -UDOUBLE  -UCOMPLEX
-DCBLAS -c copy.c -o cblas_scopy.o
| <command-line>:0:0: warning: "ASMNAME" redefined
| <command-line>:0:0: warning: "ASMNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "ASMFNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "NAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_NAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "ASMNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "ASMFNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "NAME" redefined
| In file included from ../build/tmp/sysroots//usr/include/features.h:392:0,
|                  from ../build/tmp/sysroots//usr/include/stdio.h:27,
|                  from imax.c:39:
| ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:
gnu/stubs-soft.h: No such file or directory
|  # include <gnu/stubs-soft.h>
|                              ^
| compilation terminated.
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_NAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "ASMFNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "NAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_NAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "ASMNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "ASMFNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "NAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_NAME" redefined
| In file included from ../build/tmp/sysroots//usr/include/features.h:392:0,
|                  from ../build/tmp/sysroots//usr/include/stdio.h:27,
|                  from axpy.c:39:
| ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:
gnu/stubs-soft.h: No such file or directory
|  # include <gnu/stubs-soft.h>
|                              ^
| <command-line>:0:0: note: this is the location of the previous definition
| <command-line>:0:0: warning: "CHAR_CNAME" redefined
| <command-line>:0:0: note: this is the location of the previous definition
| ERROR: oe_runmake failed
| In file included from ../build/tmp/sysroots//usr/include/features.h:392:0,
|                  from ../build/tmp/sysroots//usr/include/stdio.h:27,
|                  from asum.c:39:
| ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:
gnu/stubs-soft.h: No such file or directory
|  # include <gnu/stubs-soft.h>
|                              ^
| compilation terminated.
| In file included from ../build/tmp/sysroots//usr/include/features.h:392:0,
|                  from ../build/tmp/sysroots//usr/include/stdio.h:27,
|                  from copy.c:39:
| ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:
gnu/stubs-soft.h: No such file or directory
|  # include <gnu/stubs-soft.h>
|                              ^
| compilation terminated.
| compilation terminated.
| Makefile:1351: recipe for target 'cblas_isamax.o' failed
| make[1]: *** [cblas_isamax.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| Makefile:1375: recipe for target 'cblas_sasum.o' failed
| make[1]: *** [cblas_sasum.o] Error 1
| Makefile:1447: recipe for target 'cblas_scopy.o' failed
| make[1]: *** [cblas_scopy.o] Error 1
| Makefile:1435: recipe for target 'cblas_saxpy.o' failed
| make[1]: *** [cblas_saxpy.o] Error 1
| make[1]: Leaving directory
'../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/OpenBLAS-0.2.19/interface'
| Makefile:133: recipe for target 'libs' failed
| make: *** [libs] Error 1
| ERROR: Function failed: do_compile (log file is located at
../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do_compile.2836)
ERROR: Task
(../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/openblas/openblas_0.2.19.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 433 tasks of which 432 didn't need to be
rerun and 1 failed.



On Fri, Mar 16, 2018 at 7:33 PM, Giordon Stark <gstark@cern.ch> wrote:

> OpenBLAS is here: http://layers.openembedded.org/layerindex/recipe/68888/
>
> G
>
> On Fri, Mar 16, 2018 at 1:30 PM Philip Balister <philip@balister.org>
> wrote:
>
>> You'll get to Atlas soon, and that is another source of pain :)
>>
>> Philip
>>
>> On 03/16/2018 11:26 AM, Peter Balazovic wrote:
>> > Seems OpenBLAS is missing, is there recipe for it?
>> >
>> > ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution
>> failed.
>> > ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file
>> is
>> > located at /log.do_compile.8708)
>> > ERROR: Logfile of failure stored in: /1.0.0-r0/temp/log.do_compile.8708
>> > Log data follows:
>> > | DEBUG: Executing shell function do_compile
>> > | ERROR: python setup.py build execution failed.
>> > | /usr/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown
>> > distribution option: 'python_requires'
>> > |   warnings.warn(msg)
>> > | lapack_opt_info:
>> > | openblas_lapack_info:
>> > |   libraries openblas not found in ['/usr/lib']
>> > |   NOT AVAILABLE
>> > |
>> > | lapack_mkl_info:
>> > | mkl_info:
>> > |   libraries mkl,vml,guide not found in ['/usr/lib']
>> > |   NOT AVAILABLE
>> > |
>> > |   NOT AVAILABLE
>> > |
>> > | atlas_3_10_threads_info:
>> > | Setting PTATLAS=ATLAS
>> > |   libraries tatlas,tatlas not found in /usr/lib
>> > |   libraries lapack_atlas not found in /usr/lib
>> > | <class 'numpy.distutils.system_info.atlas_3_10_threads_info'>
>> > |   NOT AVAILABLE
>> > |
>> > | atlas_3_10_info:
>> > |   libraries satlas,satlas not found in /usr/lib
>> > |   libraries lapack_atlas not found in /usr/lib
>> > | <class 'numpy.distutils.system_info.atlas_3_10_info'>
>> > |   NOT AVAILABLE
>> > |
>> > | atlas_threads_info:
>> > | Setting PTATLAS=ATLAS
>> > |   libraries ptf77blas,ptcblas,atlas not found in /usr/lib
>> > |   libraries lapack_atlas not found in /usr/lib
>> > | <class 'numpy.distutils.system_info.atlas_threads_info'>
>> > |   NOT AVAILABLE
>> > |
>> > | atlas_info:
>> > |   libraries f77blas,cblas,atlas not found in /usr/lib
>> > |   libraries lapack_atlas not found in /usr/lib
>> > | <class 'numpy.distutils.system_info.atlas_info'>
>> > |   NOT AVAILABLE
>> > |
>> > |  /usr/lib/python2.7/site-packages/numpy/distutils/
>> system_info.py:1510:
>> > UserWarning:
>> > |     Atlas (http://math-atlas.sourceforge.net/) libraries not found.
>> > |     Directories to search for the libraries can be specified in the
>> > |     numpy/distutils/site.cfg file (section [atlas]) or by setting
>> > |     the ATLAS environment variable.
>> > |   warnings.warn(AtlasNotFoundError.__doc__)
>> > | lapack_info:
>> > |   libraries lapack not found in ['/usr/lib']
>> > |   NOT AVAILABLE
>> > |
>> > | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1521:
>> > UserWarning:
>> > |     Lapack (http://www.netlib.org/lapack/) libraries not found.
>> > |     Directories to search for the libraries can be specified in the
>> > |     numpy/distutils/site.cfg file (section [lapack]) or by setting
>> > |     the LAPACK environment variable.
>> > |   warnings.warn(LapackNotFoundError.__doc__)
>> > | lapack_src_info:
>> > |   NOT AVAILABLE
>> > |
>> > | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1524:
>> > UserWarning:
>> > |     Lapack (http://www.netlib.org/lapack/) sources not found.
>> > |     Directories to search for the sources can be specified in the
>> > |     numpy/distutils/site.cfg file (section [lapack_src]) or by setting
>> > |     the LAPACK_SRC environment variable.
>> > |   warnings.warn(LapackSrcNotFoundError.__doc__)
>> > |   NOT AVAILABLE
>> > |
>> > | Running from scipy source directory.
>> > | Traceback (most recent call last):
>> > |   File "setup.py", line 418, in <module>
>> > |     setup_package()
>> > |   File "setup.py", line 414, in setup_package
>> > |     setup(**metadata)
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/core.py",
>> line
>> > 135, in setup
>> > |     config = configuration()
>> > |   File "setup.py", line 336, in configuration
>> > |     config.add_subpackage('scipy')
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_
>> util.py",
>> > line 1003, in add_subpackage
>> > |     caller_level = 2)
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_
>> util.py",
>> > line 972, in get_subpackage
>> > |     caller_level = caller_level + 1)
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_
>> util.py",
>> > line 909, in _get_configuration_from_setup_py
>> > |     config = setup_module.configuration(*args)
>> > |   File "scipy/setup.py", line 15, in configuration
>> > |     config.add_subpackage('linalg')
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_
>> util.py",
>> > line 1003, in add_subpackage
>> > |     caller_level = 2)
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_
>> util.py",
>> > line 972, in get_subpackage
>> > |     caller_level = caller_level + 1)
>> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_
>> util.py",
>> > line 909, in _get_configuration_from_setup_py
>> > |     config = setup_module.configuration(*args)
>> > |   File "scipy/linalg/setup.py", line 19, in configuration
>> > |     raise NotFoundError('no lapack/blas resources found')
>> > | numpy.distutils.system_info.NotFoundError: no lapack/blas resources
>> found
>> > | ERROR: Function failed: do_compile (log file is located at
>> > /scipy/1.0.0-r0/temp/log.do_compile.8708)
>> > ERROR: Task
>> > (/sources/meta-openembedded/meta-python/recipes-devtools/
>> python/scipy_1.0.0.bb:do_compile)
>> > failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 8394 tasks of which 8382 didn't need to
>> be
>> > rerun and 1 failed.
>> >
>> >
>> > On Fri, Mar 16, 2018 at 6:36 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>> >
>> >> To change the version, change the filename of the recipe.
>> >>
>> >> Also, please remember the CC the list.
>> >>
>> >> Ross
>> >>
>> >> On 16 March 2018 at 17:30, Peter Balazovic <balazovic.peter@gmail.com>
>> >> wrote:
>> >>
>> >>> I did download from https://github.com/scipy/
>> scipy/archive/v1.0.0.tar.gz
>> >>> and cc to /downloads and same still issue ...
>> >>> as mentioned  should be version is 1.0.0
>> >>> where to change it to point to correct version & file?
>> >>>
>> >>> On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
>> >>> wrote:
>> >>>
>> >>>> You're getting a "file not found" for the URL it is looking for.
>> >>>> According to https://pypi.python.org/pypi/scipy, the version is
>> 1.0.0
>> >>>> not 1.0.
>> >>>>
>> >>>> Ross
>> >>>>
>> >>>> On 16 March 2018 at 16:50, Peter Balazovic <
>> balazovic.peter@gmail.com>
>> >>>> wrote:
>> >>>>
>> >>>>> per using recipe https://github.com/scipy/scipy/issues/8226
>> >>>>>
>> >>>>>
>> >>>>> SUMMARY = "Scientific Library for Python"
>> >>>>> SECTION = "devel/python"
>> >>>>> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
>> >>>>>
>> >>>>> LICENSE = "BSD-3-Clause"
>> >>>>> LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=
>> d0db8f4148a3d5534cfb93be78f9287c"
>> >>>>>
>> >>>>> PYPI_PACKAGE="scipy"
>> >>>>>
>> >>>>> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
>> >>>>> SRC_URI[sha256sum] = "87ea1f11a0e9ec08c264dc64551d50
>> 1fa307289460705f6fccd84cbfc7926d10"
>> >>>>>
>> >>>>> inherit pypi setuptools distutils
>> >>>>>
>> >>>>> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
>> >>>>> DEPENDS += "python-numpy"
>> >>>>>
>> >>>>>
>> >>>>> I am getting error to fetch scipy do_fetch error
>> >>>>>
>> >>>>>
>> >>>>> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
>> >>>>> https://files.pythonhosted.org/packages/source/s/scipy/
>> scipy-1.0.tar.gz,
>> >>>>> attempting MIRRORS if available
>> >>>>> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
>> >>>>> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C";
>> export
>> >>>>> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
>> >>>>> --progress=dot -v failed with exit code 8, output:
>> >>>>> --2018-03-16 17:43:34--  https://files.pythonhosted.org
>> >>>>> /packages/source/s/scipy/scipy-1.0.tar.gz
>> >>>>> Resolving files.pythonhosted.org (files.pythonhosted.org)...
>> >>>>> 151.101.17.63, 2a04:4e42:4::319
>> >>>>> Connecting to files.pythonhosted.org (files.pythonhosted.org)|151.
>> 101.17.63|:443...
>> >>>>> connected.
>> >>>>> HTTP request sent, awaiting response... 404 Not Found
>> >>>>> 2018-03-16 17:43:35 ERROR 404: Not Found.
>> >>>>>
>> >>>>> Any help?
>> >>>>>
>> >>>>>
>> >>>>> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
>> >>>>> randy.macleod@windriver.com> wrote:
>> >>>>>
>> >>>>>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>> >>>>>>
>> >>>>>>> Hello all,
>> >>>>>>>
>> >>>>>>> I wonder if there is scipy recipe available?
>> >>>>>>>
>> >>>>>>
>> >>>>>> Not yet:
>> >>>>>>
>> >>>>>> https://layers.openembedded.org/layerindex/branch/master/rec
>> >>>>>> ipes/?q=scipy
>> >>>>>>
>> >>>>>> It appears to be blocked by:
>> >>>>>>    https://github.com/scipy/scipy/issues/8226
>> >>>>>> but apparently that's a bitbake issue, not a spip one.
>> >>>>>> Care to take a look?
>> >>>>>>
>> >>>>>>
>> >>>>>>> Thanks.
>> >>>>>>>
>> >>>>>>>
>> >>>>>>>
>> >>>>>>
>> >>>>>> --
>> >>>>>> # Randy MacLeod.  WR Linux
>> >>>>>> # Wind River an Intel Company
>> >>>>>>
>> >>>>>
>> >>>>>
>> >>>>> --
>> >>>>> _______________________________________________
>> >>>>> yocto mailing list
>> >>>>> yocto@yoctoproject.org
>> >>>>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>>>
>> >>>>>
>> >>>>
>> >>>
>> >>
>> >
>> >
>> >
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> Giordon Stark
>

--94eb2c1be9be8cd8ab0567994bc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">compiling issue on that openblas recipe ... <br><br>NOTE: =
Executing RunQueue Tasks<br>ERROR: openblas-0.2.19-r0 do_compile: oe_runmak=
e failed<br>ERROR: openblas-0.2.19-r0 do_compile: Function failed: do_compi=
le (log file is located at ../build/tmp/work/cortexa9hf-neon-poky-linux-gnu=
eabi/openblas/0.2.19-r0/temp/log.do_compile.2836)<br>ERROR: Logfile of fail=
ure stored in: ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openbla=
s/0.2.19-r0/temp/log.do_compile.2836<br>Log data follows:<br>| DEBUG: Execu=
ting shell function do_compile<br>| NOTE: make -j 4 HOSTCC=3Dgcc=C2=A0 CC=
=3Darm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D../build/tmp/sysroots/ ONLY=
_CBLAS=3D1 BINARY=3D32 TARGET=3Darm<br>| make[1]: warning: -jN forced in su=
bmake: disabling jobserver mode.<br>| make[1]: Entering directory &#39;../b=
uild/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/OpenBLA=
S-0.2.19/interface&#39;<br>| arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D.=
./build/tmp/sysroots/=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fd=
ebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/open=
blas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0 -fdebug-prefix-map=3D../=
build/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D../build/tmp/sysroo=
ts/=3D=C2=A0 -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -=
DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASM=
NAME=3D -DASMFNAME=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_NAME=3D\&quot;_\&quot; =
-DCHAR_CNAME=3D\&quot;\&quot; -DNO_AFFINITY -I. -O2 -DMAX_STACK_ALLOC=3D204=
8 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DN=
O_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3Dcblas_isamax -DASMFNAME=3Dcblas_i=
samax_ -DNAME=3Dcblas_isamax_ -DCNAME=3Dcblas_isamax -DCHAR_NAME=3D\&quot;c=
blas_isamax_\&quot; -DCHAR_CNAME=3D\&quot;cblas_isamax\&quot; -DNO_AFFINITY=
 -I.. -I. -UDOUBLE=C2=A0 -UCOMPLEX -DCBLAS -c -DUSE_ABS -UUSE_MIN imax.c -o=
 cblas_isamax.o<br>| arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D../build/=
tmp/sysroots/=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-pre=
fix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2=
.19-r0=3D/usr/src/debug/openblas/0.2.19-r0 -fdebug-prefix-map=3D../build/tm=
p/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=
=C2=A0 -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LA=
PACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=
=3D -DASMFNAME=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_NAME=3D\&quot;_\&quot; -DCH=
AR_CNAME=3D\&quot;\&quot; -DNO_AFFINITY -I. -O2 -DMAX_STACK_ALLOC=3D2048 -W=
all -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WA=
RMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3Dcblas_sasum -DASMFNAME=3Dcblas_sasum_=
 -DNAME=3Dcblas_sasum_ -DCNAME=3Dcblas_sasum -DCHAR_NAME=3D\&quot;cblas_sas=
um_\&quot; -DCHAR_CNAME=3D\&quot;cblas_sasum\&quot; -DNO_AFFINITY -I.. -I. =
-UDOUBLE=C2=A0 -UCOMPLEX -DCBLAS -c asum.c -o cblas_sasum.o<br>| arm-poky-l=
inux-gnueabi-gcc=C2=A0 --sysroot=3D../build/tmp/sysroots/=C2=A0 -O2 -pipe -=
g -feliminate-unused-debug-types -fdebug-prefix-map=3D../build/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openbla=
s/0.2.19-r0 -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D -fde=
bug-prefix-map=3D../build/tmp/sysroots/=3D=C2=A0 -O2 -DMAX_STACK_ALLOC=3D20=
48 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -D=
NO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -DCNA=
ME=3D -DCHAR_NAME=3D\&quot;_\&quot; -DCHAR_CNAME=3D\&quot;\&quot; -DNO_AFFI=
NITY -I. -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_=
LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=
=3Dcblas_saxpy -DASMFNAME=3Dcblas_saxpy_ -DNAME=3Dcblas_saxpy_ -DCNAME=3Dcb=
las_saxpy -DCHAR_NAME=3D\&quot;cblas_saxpy_\&quot; -DCHAR_CNAME=3D\&quot;cb=
las_saxpy\&quot; -DNO_AFFINITY -I.. -I. -UDOUBLE=C2=A0 -UCOMPLEX -DCBLAS -c=
 axpy.c -o cblas_saxpy.o<br>| arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D=
../build/tmp/sysroots/=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -f=
debug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/ope=
nblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0 -fdebug-prefix-map=3D..=
/build/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D../build/tmp/sysro=
ots/=3D=C2=A0 -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC =
-DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DAS=
MNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_NAME=3D\&quot;_\&quot;=
 -DCHAR_CNAME=3D\&quot;\&quot; -DNO_AFFINITY -I. -O2 -DMAX_STACK_ALLOC=3D20=
48 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -D=
NO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3Dcblas_scopy -DASMFNAME=3Dcblas_s=
copy_ -DNAME=3Dcblas_scopy_ -DCNAME=3Dcblas_scopy -DCHAR_NAME=3D\&quot;cbla=
s_scopy_\&quot; -DCHAR_CNAME=3D\&quot;cblas_scopy\&quot; -DNO_AFFINITY -I..=
 -I. -UDOUBLE=C2=A0 -UCOMPLEX -DCBLAS -c copy.c -o cblas_scopy.o<br>| &lt;c=
ommand-line&gt;:0:0: warning: &quot;ASMNAME&quot; redefined<br>| &lt;comman=
d-line&gt;:0:0: warning: &quot;ASMNAME&quot; redefined<br>| &lt;command-lin=
e&gt;:0:0: note: this is the location of the previous definition<br>| &lt;c=
ommand-line&gt;:0:0: warning: &quot;ASMFNAME&quot; redefined<br>| &lt;comma=
nd-line&gt;:0:0: note: this is the location of the previous definition<br>|=
 &lt;command-line&gt;:0:0: warning: &quot;NAME&quot; redefined<br>| &lt;com=
mand-line&gt;:0:0: note: this is the location of the previous definition<br=
>| &lt;command-line&gt;:0:0: warning: &quot;CNAME&quot; redefined<br>| &lt;=
command-line&gt;:0:0: note: this is the location of the previous definition=
<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_NAME&quot; redefined<br=
>| &lt;command-line&gt;:0:0: note: this is the location of the previous def=
inition<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_CNAME&quot; rede=
fined<br>| &lt;command-line&gt;:0:0: note: this is the location of the prev=
ious definition<br>| &lt;command-line&gt;:0:0: warning: &quot;ASMNAME&quot;=
 redefined<br>| &lt;command-line&gt;:0:0: note: this is the location of the=
 previous definition<br>| &lt;command-line&gt;:0:0: warning: &quot;ASMFNAME=
&quot; redefined<br>| &lt;command-line&gt;:0:0: note: this is the location =
of the previous definition<br>| &lt;command-line&gt;:0:0: warning: &quot;NA=
ME&quot; redefined<br>| In file included from ../build/tmp/sysroots//usr/in=
clude/features.h:392:0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp=
/sysroots//usr/include/stdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ima=
x.c:39:<br>| ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal err=
or: gnu/stubs-soft.h: No such file or directory<br>|=C2=A0 # include &lt;gn=
u/stubs-soft.h&gt;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation termina=
ted.<br>| &lt;command-line&gt;:0:0: note: this is the location of the previ=
ous definition<br>| &lt;command-line&gt;:0:0: warning: &quot;CNAME&quot; re=
defined<br>| &lt;command-line&gt;:0:0: note: this is the location of the pr=
evious definition<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_NAME&q=
uot; redefined<br>| &lt;command-line&gt;:0:0: note: this is the location of=
 the previous definition<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR=
_CNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note: this is the loc=
ation of the previous definition<br>| &lt;command-line&gt;:0:0: note: this =
is the location of the previous definition<br>| &lt;command-line&gt;:0:0: w=
arning: &quot;ASMFNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note:=
 this is the location of the previous definition<br>| &lt;command-line&gt;:=
0:0: warning: &quot;NAME&quot; redefined<br>| &lt;command-line&gt;:0:0: not=
e: this is the location of the previous definition<br>| &lt;command-line&gt=
;:0:0: warning: &quot;CNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: =
note: this is the location of the previous definition<br>| &lt;command-line=
&gt;:0:0: warning: &quot;CHAR_NAME&quot; redefined<br>| &lt;command-line&gt=
;:0:0: note: this is the location of the previous definition<br>| &lt;comma=
nd-line&gt;:0:0: warning: &quot;CHAR_CNAME&quot; redefined<br>| &lt;command=
-line&gt;:0:0: note: this is the location of the previous definition<br>| &=
lt;command-line&gt;:0:0: warning: &quot;ASMNAME&quot; redefined<br>| &lt;co=
mmand-line&gt;:0:0: note: this is the location of the previous definition<b=
r>| &lt;command-line&gt;:0:0: warning: &quot;ASMFNAME&quot; redefined<br>| =
&lt;command-line&gt;:0:0: note: this is the location of the previous defini=
tion<br>| &lt;command-line&gt;:0:0: warning: &quot;NAME&quot; redefined<br>=
| &lt;command-line&gt;:0:0: note: this is the location of the previous defi=
nition<br>| &lt;command-line&gt;:0:0: warning: &quot;CNAME&quot; redefined<=
br>| &lt;command-line&gt;:0:0: note: this is the location of the previous d=
efinition<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_NAME&quot; red=
efined<br>| In file included from ../build/tmp/sysroots//usr/include/featur=
es.h:392:0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots//u=
sr/include/stdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from axpy.c:39:<br>|=
 ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error: gnu/stub=
s-soft.h: No such file or directory<br>|=C2=A0 # include &lt;gnu/stubs-soft=
.h&gt;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| &lt;command-line&gt;:0:0: note:=
 this is the location of the previous definition<br>| &lt;command-line&gt;:=
0:0: warning: &quot;CHAR_CNAME&quot; redefined<br>| &lt;command-line&gt;:0:=
0: note: this is the location of the previous definition<br>| ERROR: oe_run=
make failed<br>| In file included from ../build/tmp/sysroots//usr/include/f=
eatures.h:392:0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots=
//usr/include/stdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from asum.c:39:<b=
r>| ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error: gnu/s=
tubs-soft.h: No such file or directory<br>|=C2=A0 # include &lt;gnu/stubs-s=
oft.h&gt;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>|=
 In file included from ../build/tmp/sysroots//usr/include/features.h:392:0,=
<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots//usr/include/s=
tdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from copy.c:39:<br>| ../build/tm=
p/sysroots//usr/include/gnu/stubs.h:7:29: fatal error: gnu/stubs-soft.h: No=
 such file or directory<br>|=C2=A0 # include &lt;gnu/stubs-soft.h&gt;<br>|=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>| compilation te=
rminated.<br>| Makefile:1351: recipe for target &#39;cblas_isamax.o&#39; fa=
iled<br>| make[1]: *** [cblas_isamax.o] Error 1<br>| make[1]: *** Waiting f=
or unfinished jobs....<br>| Makefile:1375: recipe for target &#39;cblas_sas=
um.o&#39; failed<br>| make[1]: *** [cblas_sasum.o] Error 1<br>| Makefile:14=
47: recipe for target &#39;cblas_scopy.o&#39; failed<br>| make[1]: *** [cbl=
as_scopy.o] Error 1<br>| Makefile:1435: recipe for target &#39;cblas_saxpy.=
o&#39; failed<br>| make[1]: *** [cblas_saxpy.o] Error 1<br>| make[1]: Leavi=
ng directory &#39;../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/open=
blas/0.2.19-r0/OpenBLAS-0.2.19/interface&#39;<br>| Makefile:133: recipe for=
 target &#39;libs&#39; failed<br>| make: *** [libs] Error 1<br>| ERROR: Fun=
ction failed: do_compile (log file is located at ../build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do_compile.2836)<br>=
ERROR: Task (../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/=
openblas/openblas_0.2.19.bb:do_compile) failed with exit code &#39;1&#39;<b=
r>NOTE: Tasks Summary: Attempted 433 tasks of which 432 didn&#39;t need to =
be rerun and 1 failed.<br><br><br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Fri, Mar 16, 2018 at 7:33 PM, Giordon Stark <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:gstark@cern.ch" target=3D"_blank">gstark=
@cern.ch</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">OpenBLAS is here:=C2=A0<a href=3D"http://layers.openembedded.org/l=
ayerindex/recipe/68888/" target=3D"_blank">http://layers.<wbr>openembedded.=
org/layerindex/<wbr>recipe/68888/</a>=C2=A0<div><br></div><div>G</div></div=
><div class=3D"HOEnZb"><div class=3D"h5"><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Fri, Mar 16, 2018 at 1:30 PM Philip Balister &lt;<a href=
=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">You&#39;ll get to Atlas s=
oon, and that is another source of pain :)<br>
<br>
Philip<br>
<br>
On 03/16/2018 11:26 AM, Peter Balazovic wrote:<br>
&gt; Seems OpenBLAS is missing, is there recipe for it?<br>
&gt;<br>
&gt; ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution fail=
ed.<br>
&gt; ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log fil=
e is<br>
&gt; located at /log.do_compile.8708)<br>
&gt; ERROR: Logfile of failure stored in: /1.0.0-r0/temp/log.do_compile.<wb=
r>8708<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | ERROR: python setup.py build execution failed.<br>
&gt; | /usr/lib/python2.7/distutils/<wbr>dist.py:267: UserWarning: Unknown<=
br>
&gt; distribution option: &#39;python_requires&#39;<br>
&gt; |=C2=A0 =C2=A0warnings.warn(msg)<br>
&gt; | lapack_opt_info:<br>
&gt; | openblas_lapack_info:<br>
&gt; |=C2=A0 =C2=A0libraries openblas not found in [&#39;/usr/lib&#39;]<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | lapack_mkl_info:<br>
&gt; | mkl_info:<br>
&gt; |=C2=A0 =C2=A0libraries mkl,vml,guide not found in [&#39;/usr/lib&#39;=
]<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_3_10_threads_info:<br>
&gt; | Setting PTATLAS=3DATLAS<br>
&gt; |=C2=A0 =C2=A0libraries tatlas,tatlas not found in /usr/lib<br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.<wbr>atlas_3_10_threads_i=
nfo&#39;&gt;<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_3_10_info:<br>
&gt; |=C2=A0 =C2=A0libraries satlas,satlas not found in /usr/lib<br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.<wbr>atlas_3_10_info&#39;=
&gt;<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_threads_info:<br>
&gt; | Setting PTATLAS=3DATLAS<br>
&gt; |=C2=A0 =C2=A0libraries ptf77blas,ptcblas,atlas not found in /usr/lib<=
br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.<wbr>atlas_threads_info&#=
39;&gt;<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_info:<br>
&gt; |=C2=A0 =C2=A0libraries f77blas,cblas,atlas not found in /usr/lib<br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.<wbr>atlas_info&#39;&gt;<=
br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; |=C2=A0 /usr/lib/python2.7/site-<wbr>packages/numpy/distutils/<wbr>sys=
tem_info.py:1510:<br>
&gt; UserWarning:<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Atlas (<a href=3D"http://math-atlas.sourceforge.n=
et/" rel=3D"noreferrer" target=3D"_blank">http://math-atlas.<wbr>sourceforg=
e.net/</a>) libraries not found.<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Directories to search for the libraries can be sp=
ecified in the<br>
&gt; |=C2=A0 =C2=A0 =C2=A0numpy/distutils/site.cfg file (section [atlas]) o=
r by setting<br>
&gt; |=C2=A0 =C2=A0 =C2=A0the ATLAS environment variable.<br>
&gt; |=C2=A0 =C2=A0warnings.warn(<wbr>AtlasNotFoundError.__doc__)<br>
&gt; | lapack_info:<br>
&gt; |=C2=A0 =C2=A0libraries lapack not found in [&#39;/usr/lib&#39;]<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | /usr/lib/python2.7/site-<wbr>packages/numpy/distutils/<wbr>system_in=
fo.py:1521:<br>
&gt; UserWarning:<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Lapack (<a href=3D"http://www.netlib.org/lapack/"=
 rel=3D"noreferrer" target=3D"_blank">http://www.netlib.org/lapack/</a><wbr=
>) libraries not found.<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Directories to search for the libraries can be sp=
ecified in the<br>
&gt; |=C2=A0 =C2=A0 =C2=A0numpy/distutils/site.cfg file (section [lapack]) =
or by setting<br>
&gt; |=C2=A0 =C2=A0 =C2=A0the LAPACK environment variable.<br>
&gt; |=C2=A0 =C2=A0warnings.warn(<wbr>LapackNotFoundError.__doc__)<br>
&gt; | lapack_src_info:<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | /usr/lib/python2.7/site-<wbr>packages/numpy/distutils/<wbr>system_in=
fo.py:1524:<br>
&gt; UserWarning:<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Lapack (<a href=3D"http://www.netlib.org/lapack/"=
 rel=3D"noreferrer" target=3D"_blank">http://www.netlib.org/lapack/</a><wbr=
>) sources not found.<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Directories to search for the sources can be spec=
ified in the<br>
&gt; |=C2=A0 =C2=A0 =C2=A0numpy/distutils/site.cfg file (section [lapack_sr=
c]) or by setting<br>
&gt; |=C2=A0 =C2=A0 =C2=A0the LAPACK_SRC environment variable.<br>
&gt; |=C2=A0 =C2=A0warnings.warn(<wbr>LapackSrcNotFoundError.__doc__<wbr>)<=
br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | Running from scipy source directory.<br>
&gt; | Traceback (most recent call last):<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 418, in &lt;module&gt;<b=
r>
&gt; |=C2=A0 =C2=A0 =C2=A0setup_package()<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 414, in setup_package<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0setup(**metadata)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/core.<wbr>py&quot;, line<br>
&gt; 135, in setup<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config =3D configuration()<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 336, in configuration<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0config.add_subpackage(&#39;scipy&#39;<wbr>)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/misc_<wbr>util.py&quot;,<br>
&gt; line 1003, in add_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D 2)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/misc_<wbr>util.py&quot;,<br>
&gt; line 972, in get_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D caller_level + 1)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/misc_<wbr>util.py&quot;,<br>
&gt; line 909, in _get_configuration_from_setup_<wbr>py<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config =3D setup_module.configuration(*<wbr>args)=
<br>
&gt; |=C2=A0 =C2=A0File &quot;scipy/setup.py&quot;, line 15, in configurati=
on<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config.add_subpackage(&#39;<wbr>linalg&#39;)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/misc_<wbr>util.py&quot;,<br>
&gt; line 1003, in add_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D 2)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/misc_<wbr>util.py&quot;,<br>
&gt; line 972, in get_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D caller_level + 1)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-<wbr>packages/numpy/d=
istutils/misc_<wbr>util.py&quot;,<br>
&gt; line 909, in _get_configuration_from_setup_<wbr>py<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config =3D setup_module.configuration(*<wbr>args)=
<br>
&gt; |=C2=A0 =C2=A0File &quot;scipy/linalg/setup.py&quot;, line 19, in conf=
iguration<br>
&gt; |=C2=A0 =C2=A0 =C2=A0raise NotFoundError(&#39;no lapack/blas resources=
 found&#39;)<br>
&gt; | numpy.distutils.system_info.<wbr>NotFoundError: no lapack/blas resou=
rces found<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /scipy/1.0.0-r0/temp/log.do_<wbr>compile.8708)<br>
&gt; ERROR: Task<br>
&gt; (/sources/meta-openembedded/<wbr>meta-python/recipes-devtools/<wbr>pyt=
hon/scipy_1.0.0.bb:do_<wbr>compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 8394 tasks of which 8382 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Mar 16, 2018 at 6:36 PM, Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt;&gt; To change the version, change the filename of the recipe.<br>
&gt;&gt;<br>
&gt;&gt; Also, please remember the CC the list.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt;<br>
&gt;&gt; On 16 March 2018 at 17:30, Peter Balazovic &lt;<a href=3D"mailto:b=
alazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com</a>&g=
t;<br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; I did download from <a href=3D"https://github.com/scipy/scipy/=
archive/v1.0.0.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/scipy/<wbr>scipy/archive/v1.0.0.tar.gz</a><br>
&gt;&gt;&gt; and cc to /downloads and same still issue ...<br>
&gt;&gt;&gt; as mentioned=C2=A0 should be version is 1.0.0<br>
&gt;&gt;&gt; where to change it to point to correct version &amp; file?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross &lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; You&#39;re getting a &quot;file not found&quot; for the UR=
L it is looking for.<br>
&gt;&gt;&gt;&gt; According to <a href=3D"https://pypi.python.org/pypi/scipy=
" rel=3D"noreferrer" target=3D"_blank">https://pypi.python.org/pypi/<wbr>sc=
ipy</a>, the version is 1.0.0<br>
&gt;&gt;&gt;&gt; not 1.0.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Ross<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 16 March 2018 at 16:50, Peter Balazovic &lt;<a href=3D"=
mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.c=
om</a>&gt;<br>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; per using recipe <a href=3D"https://github.com/scipy/s=
cipy/issues/8226" rel=3D"noreferrer" target=3D"_blank">https://github.com/s=
cipy/<wbr>scipy/issues/8226</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; SUMMARY =3D &quot;Scientific Library for Python&quot;<=
br>
&gt;&gt;&gt;&gt;&gt; SECTION =3D &quot;devel/python&quot;<br>
&gt;&gt;&gt;&gt;&gt; HOMEPAGE =3D &quot;<a href=3D"https://pypi.python.org/=
pypi/scipy" rel=3D"noreferrer" target=3D"_blank">https://pypi.python.org/py=
pi/<wbr>scipy</a>&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; LICENSE =3D &quot;BSD-3-Clause&quot;<br>
&gt;&gt;&gt;&gt;&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3D<w=
br>d0db8f4148a3d5534cfb93be78f928<wbr>7c&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; PYPI_PACKAGE=3D&quot;scipy&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; SRC_URI[md5sum] =3D &quot;<wbr>53fa34bd3733a9a4216842b=
6000f73<wbr>16&quot;<br>
&gt;&gt;&gt;&gt;&gt; SRC_URI[sha256sum] =3D &quot;<wbr>87ea1f11a0e9ec08c264=
dc64551d50<wbr>1fa307289460705f6fccd84cbfc792<wbr>6d10&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; inherit pypi setuptools distutils<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; RDEPENDS_${PN} +=3D &quot;python-core python-numpy-nat=
ive python-distutils&quot;<br>
&gt;&gt;&gt;&gt;&gt; DEPENDS +=3D &quot;python-numpy&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I am getting error to fetch scipy do_fetch error<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL<br=
>
&gt;&gt;&gt;&gt;&gt; <a href=3D"https://files.pythonhosted.org/packages/sou=
rce/s/scipy/scipy-1.0.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://=
files.pythonhosted.<wbr>org/packages/source/s/scipy/<wbr>scipy-1.0.tar.gz</=
a>,<br>
&gt;&gt;&gt;&gt;&gt; attempting MIRRORS if available<br>
&gt;&gt;&gt;&gt;&gt; ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch c=
ommand export<br>
&gt;&gt;&gt;&gt;&gt; DBUS_SESSION_BUS_ADDRESS=3D&quot;<wbr>unix:abstract=3D=
/tmp/dbus-<wbr>idNNJsmT3C&quot;; export<br>
&gt;&gt;&gt;&gt;&gt; SSH_AUTH_SOCK=3D&quot;/run/user/1000/<wbr>keyring/ssh&=
quot;; export ftp_proxy=3D<br>
&gt;&gt;&gt;&gt;&gt; --progress=3Ddot -v failed with exit code 8, output:<b=
r>
&gt;&gt;&gt;&gt;&gt; --2018-03-16 17:43:34--=C2=A0 <a href=3D"https://files=
.pythonhosted.org" rel=3D"noreferrer" target=3D"_blank">https://files.pytho=
nhosted.org</a><br>
&gt;&gt;&gt;&gt;&gt; /packages/source/s/scipy/<wbr>scipy-1.0.tar.gz<br>
&gt;&gt;&gt;&gt;&gt; Resolving <a href=3D"http://files.pythonhosted.org" re=
l=3D"noreferrer" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"h=
ttp://files.pythonhosted.org" rel=3D"noreferrer" target=3D"_blank">files.py=
thonhosted.org</a>)...<br>
&gt;&gt;&gt;&gt;&gt; 151.101.17.63, 2a04:4e42:4::319<br>
&gt;&gt;&gt;&gt;&gt; Connecting to <a href=3D"http://files.pythonhosted.org=
" rel=3D"noreferrer" target=3D"_blank">files.pythonhosted.org</a> (<a href=
=3D"http://files.pythonhosted.org" rel=3D"noreferrer" target=3D"_blank">fil=
es.pythonhosted.org</a>)|151.<wbr>101.17.63|:443...<br>
&gt;&gt;&gt;&gt;&gt; connected.<br>
&gt;&gt;&gt;&gt;&gt; HTTP request sent, awaiting response... 404 Not Found<=
br>
&gt;&gt;&gt;&gt;&gt; 2018-03-16 17:43:35 ERROR 404: Not Found.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Any help?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod &lt;<br=
>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:randy.macleod@windriver.com" target=
=3D"_blank">randy.macleod@windriver.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 2018-03-15 01:56 PM, Peter Balazovic wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello all,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder if there is scipy recipe available?<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Not yet:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://layers.openembedded.org/layerin=
dex/branch/master/rec" rel=3D"noreferrer" target=3D"_blank">https://layers.=
openembedded.<wbr>org/layerindex/branch/master/<wbr>rec</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; ipes/?q=3Dscipy<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; It appears to be blocked by:<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 <a href=3D"https://github.com/scipy/s=
cipy/issues/8226" rel=3D"noreferrer" target=3D"_blank">https://github.com/s=
cipy/<wbr>scipy/issues/8226</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; but apparently that&#39;s a bitbake issue, not a s=
pip one.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Care to take a look?<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt; # Randy MacLeod.=C2=A0 WR Linux<br>
&gt;&gt;&gt;&gt;&gt;&gt; # Wind River an Intel Company<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt; ______________________________<wbr>_________________<b=
r>
&gt;&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_b=
lank">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>or=
g/listinfo/yocto</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</blockquote></div></div></div><span class=3D"HOEnZb"><font color=3D"#88888=
8">-- <br><div dir=3D"ltr" class=3D"m_3082217629623343259gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div=
>
</font></span></blockquote></div><br></div>

--94eb2c1be9be8cd8ab0567994bc0--
