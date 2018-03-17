Return-Path: <matthias.schoepfer@identpro.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 563DDE00ADB; Sat, 17 Mar 2018 06:14:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Sat, 17 Mar 2018 06:13:57 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 105DFE006E9
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 06:13:57 -0700 (PDT)
Received: from SBS-IDENTPRO.intranet.identpro.net ([176.95.137.65]) by
	mrelayeu.kundenserver.de (mreue101 [212.227.15.183]) with ESMTPSA
	(Nemesis)
	id 0MDPP3-1epExF0r1h-00Gpw5; Sat, 17 Mar 2018 14:08:52 +0100
Received: from SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) by
	SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) with mapi id
	14.01.0438.000; Sat, 17 Mar 2018 14:08:49 +0100
From: =?Windows-1252?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>
To: Peter Balazovic <balazovic.peter@gmail.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] OpenBLAS recipe
Thread-Index: AQHTvdzq8zwSHZ2E6EOYVmTfl0s1ag==
Date: Sat, 17 Mar 2018 13:08:47 +0000
Message-ID: <C44683C49AD51C4AB28DA746E48E3587FFAD19@SBS-IDENTPRO.intranet.identpro.net>
References: <CAFq4t4jet61Fv5_dJFyiHLuAXDiAqP6TpjSvyD65wz1LpfvKEQ@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [176.95.137.65]
MIME-Version: 1.0
X-Provags-ID: V03:K0:KIoxo6G8lj366cXLeM9xdqjTdaviuPY/dFI4184DMr+2VOKzDfI
	LaZwR+iLvzo6kMGjPrFCK5ksjP6rhL6hrrTpbKJOyUdlPGmBuBQAvnWljHp/FJWC1cynWrL
	RCPgM/p5g+Lq4GQQJLgjkvsKQkS5h+DPqU6jBKdvjtt/iDpso24FaZ7C3L9TbthOTbIQKiX
	CyQgAdl3XV6Dg0UCyRP0w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:egHQffISSbo=:dq8mPCJRkFpi82KyiYtT8K
	hGM86L1yeR1jUmTt9PZEuXCwzehHAQvzm9q7XPlAZ9K3ge6WyzvbxHkxkjFT5lx/FgISZrc8F
	aqZMOFp3NzxAnbSlvEhcf9pVYO65oi/Fni+0eivhmRxT7oTSbW4+RBh2NlcosiG8nx/Evic8Y
	HbwWJ5boG1d7FSqMOlGcWbiCA2uI4lerVGLuPswec3sUl62uzp0dm0ar7EBqXypce+nMul23O
	mXe+7XAYmomZGZXqkZ/RYARUvfDjJXjkmAfDZZqDNJyB4uTmeq6545K+DBApMNp/Sy4+rD1yh
	9EouHsx1MjF5PJQP7EU52bWgBl6aJ4SjQFIrjCRTbj8CsJXeOu8jGcawygDb58DQotcaFWvpA
	FJtgyn4rXmexm2t2gV4GxOI4SV4kSPyJ5jWV+jTfg7LYaDz3Il38X+EczBmT2lY4P00f4pn1K
	IuF4AnF+bbSaZyFjNdGPOyDEOQUqztTnhQbQS4gdoOb5ROgSGLRhHcsWS8T5j8ER9jYrCIo+T
	SEdEOgMVPnWL5x/6bk1HT/9QslwVZFCUiYgorZtiBVghzZh0DyN8lszbBRp+NFyew8cfYInkE
	UNQRokiW7HCPceNEGUQDaYetuxdxoDqj9pC2/uvP+uq0cxG65eBZ7Qr9NNrIH7+lwfnbp/VUy
	6gMpJpG5CayCB5QhgiQldLOR0pcHAlKzyhj3OhzaOAfRrMo4GZ2Y+fPg8mNhEsd8VhKNmUpNq
	22gvpXsMMRbnSTcBGF22F+XRSK6RA9co+RYQkIBBkct1UwMUDvjUe307gcg=
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
X-List-Received-Date: Sat, 17 Mar 2018 13:14:00 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Peter,=0A=
=0A=
openblas builds for me fine. This seems to be more of an issue with=0A=
hard/softfloat than openBLAS.=0A=
=0A=
If I remember correctly, there was at some point a problem with fortran,=0A=
which might be needed for openBLAS. But this seems not to be the issue=0A=
here.=0A=
=0A=
Maybe try to compile it for qemu-x86 and see, if it works there...=0A=
=0A=
Regards,=0A=
=0A=
	Matthias=0A=
=0A=
On 03/17/2018 11:44 AM, Peter Balazovic wrote:=0A=
> Hello guys,=0A=
> =0A=
> I tried to use openblas recipe from=0A=
> https://layers.openembedded.org/layerindex/recipe/68888/=0A=
> recipes-convnet/openblas/openblas_0.2.19.bb=0A=
> <http://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-extra/r=
ecipes-convnet/openblas/openblas_0.2.19.bb>=0A=
> =0A=
> Unfortunately got compiling error btw I notice there is further openBLAS=
=0A=
> release 0.2.20, is there any update on that recipe?=0A=
> =0A=
> =0A=
> Compiling problems:=0A=
> =0A=
> NOTE: Executing RunQueue Tasks=0A=
> ERROR: openblas-0.2.19-r0 do_compile: oe_runmake failed=0A=
> ERROR: openblas-0.2.19-r0 do_compile: Function failed: do_compile (log=0A=
> file is located at=0A=
> ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/t=
emp/log.do_compile.2836)=0A=
> ERROR: Logfile of failure stored in:=0A=
> ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/t=
emp/log.do_compile.2836=0A=
> Log data follows:=0A=
> | DEBUG: Executing shell function do_compile=0A=
> | NOTE: make -j 4 HOSTCC=3Dgcc=A0 CC=3Darm-poky-linux-gnueabi-gcc=A0=0A=
> --sysroot=3D../build/tmp/sysroots/ ONLY_CBLAS=3D1 BINARY=3D32 TARGET=3Dar=
m=0A=
> | make[1]: warning: -jN forced in submake: disabling jobserver mode.=0A=
> | make[1]: Entering directory=0A=
> '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/=
OpenBLAS-0.2.19/interface'=0A=
> | arm-poky-linux-gnueabi-gcc=A0 --sysroot=3D../build/tmp/sysroots/=A0 -O2=
=0A=
> -pipe -g -feliminate-unused-debug-types=0A=
> -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=A0 -O2 -DMAX_STACK_ALLOC=
=3D2048=0A=
> -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER=0A=
> -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -=
DCNAME=3D=0A=
> -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=0A=
> -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK=0A=
> -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
> -DASMNAME=3Dcblas_isamax -DASMFNAME=3Dcblas_isamax_ -DNAME=3Dcblas_isamax=
_=0A=
> -DCNAME=3Dcblas_isamax -DCHAR_NAME=3D\"cblas_isamax_\"=0A=
> -DCHAR_CNAME=3D\"cblas_isamax\" -DNO_AFFINITY -I.. -I. -UDOUBLE=A0 -UCOMP=
LEX=0A=
> -DCBLAS -c -DUSE_ABS -UUSE_MIN imax.c -o cblas_isamax.o=0A=
> | arm-poky-linux-gnueabi-gcc=A0 --sysroot=3D../build/tmp/sysroots/=A0 -O2=
=0A=
> -pipe -g -feliminate-unused-debug-types=0A=
> -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=A0 -O2 -DMAX_STACK_ALLOC=
=3D2048=0A=
> -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER=0A=
> -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -=
DCNAME=3D=0A=
> -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=0A=
> -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK=0A=
> -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
> -DASMNAME=3Dcblas_sasum -DASMFNAME=3Dcblas_sasum_ -DNAME=3Dcblas_sasum_=
=0A=
> -DCNAME=3Dcblas_sasum -DCHAR_NAME=3D\"cblas_sasum_\"=0A=
> -DCHAR_CNAME=3D\"cblas_sasum\" -DNO_AFFINITY -I.. -I. -UDOUBLE=A0 -UCOMPL=
EX=0A=
> -DCBLAS -c asum.c -o cblas_sasum.o=0A=
> | arm-poky-linux-gnueabi-gcc=A0 --sysroot=3D../build/tmp/sysroots/=A0 -O2=
=0A=
> -pipe -g -feliminate-unused-debug-types=0A=
> -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=A0 -O2 -DMAX_STACK_ALLOC=
=3D2048=0A=
> -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER=0A=
> -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -=
DCNAME=3D=0A=
> -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=0A=
> -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK=0A=
> -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
> -DASMNAME=3Dcblas_saxpy -DASMFNAME=3Dcblas_saxpy_ -DNAME=3Dcblas_saxpy_=
=0A=
> -DCNAME=3Dcblas_saxpy -DCHAR_NAME=3D\"cblas_saxpy_\"=0A=
> -DCHAR_CNAME=3D\"cblas_saxpy\" -DNO_AFFINITY -I.. -I. -UDOUBLE=A0 -UCOMPL=
EX=0A=
> -DCBLAS -c axpy.c -o cblas_saxpy.o=0A=
> | arm-poky-linux-gnueabi-gcc=A0 --sysroot=3D../build/tmp/sysroots/=A0 -O2=
=0A=
> -pipe -g -feliminate-unused-debug-types=0A=
> -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
> -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=A0 -O2 -DMAX_STACK_ALLOC=
=3D2048=0A=
> -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER=0A=
> -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -=
DCNAME=3D=0A=
> -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=0A=
> -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK=0A=
> -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
> -DASMNAME=3Dcblas_scopy -DASMFNAME=3Dcblas_scopy_ -DNAME=3Dcblas_scopy_=
=0A=
> -DCNAME=3Dcblas_scopy -DCHAR_NAME=3D\"cblas_scopy_\"=0A=
> -DCHAR_CNAME=3D\"cblas_scopy\" -DNO_AFFINITY -I.. -I. -UDOUBLE=A0 -UCOMPL=
EX=0A=
> -DCBLAS -c copy.c -o cblas_scopy.o=0A=
> | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
> | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "NAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "NAME" redefined=0A=
> | In file included from ../build/tmp/sysroots//usr/include/features.h:392=
:0,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ../build/tmp/sy=
sroots//usr/include/stdio.h:27,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from imax.c:39:=0A=
> | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=0A=
> gnu/stubs-soft.h: No such file or directory=0A=
> |=A0 # include <gnu/stubs-soft.h>=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 ^=0A=
> | compilation terminated.=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "NAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "NAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
> | In file included from ../build/tmp/sysroots//usr/include/features.h:392=
:0,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ../build/tmp/sy=
sroots//usr/include/stdio.h:27,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from axpy.c:39:=0A=
> | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=0A=
> gnu/stubs-soft.h: No such file or directory=0A=
> |=A0 # include <gnu/stubs-soft.h>=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 ^=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
> | <command-line>:0:0: note: this is the location of the previous definiti=
on=0A=
> | ERROR: oe_runmake failed=0A=
> | In file included from ../build/tmp/sysroots//usr/include/features.h:392=
:0,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ../build/tmp/sy=
sroots//usr/include/stdio.h:27,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from asum.c:39:=0A=
> | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=0A=
> gnu/stubs-soft.h: No such file or directory=0A=
> |=A0 # include <gnu/stubs-soft.h>=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 ^=0A=
> | compilation terminated.=0A=
> | In file included from ../build/tmp/sysroots//usr/include/features.h:392=
:0,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ../build/tmp/sy=
sroots//usr/include/stdio.h:27,=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from copy.c:39:=0A=
> | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=0A=
> gnu/stubs-soft.h: No such file or directory=0A=
> |=A0 # include <gnu/stubs-soft.h>=0A=
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 ^=0A=
> | compilation terminated.=0A=
> | compilation terminated.=0A=
> | Makefile:1351: recipe for target 'cblas_isamax.o' failed=0A=
> | make[1]: *** [cblas_isamax.o] Error 1=0A=
> | make[1]: *** Waiting for unfinished jobs....=0A=
> | Makefile:1375: recipe for target 'cblas_sasum.o' failed=0A=
> | make[1]: *** [cblas_sasum.o] Error 1=0A=
> | Makefile:1447: recipe for target 'cblas_scopy.o' failed=0A=
> | make[1]: *** [cblas_scopy.o] Error 1=0A=
> | Makefile:1435: recipe for target 'cblas_saxpy.o' failed=0A=
> | make[1]: *** [cblas_saxpy.o] Error 1=0A=
> | make[1]: Leaving directory=0A=
> '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/=
OpenBLAS-0.2.19/interface'=0A=
> | Makefile:133: recipe for target 'libs' failed=0A=
> | make: *** [libs] Error 1=0A=
> | ERROR: Function failed: do_compile (log file is located at=0A=
> ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/t=
emp/log.do_compile.2836)=0A=
> ERROR: Task=0A=
> (../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/openblas/o=
penblas_0.2.19.bb:do_compile)=0A=
> failed with exit code '1'=0A=
> NOTE: Tasks Summary: Attempted 433 tasks of which 432 didn't need to be=
=0A=
> rerun and 1 failed.=0A=
> =0A=
=0A=
=0A=
-- =0A=
Dr.-Ing. Matthias Sch=F6pfer=0A=
=0A=
Softwareentwicklung=0A=
=0A=
____________________________________=0A=
=0A=
IdentPro GmbH=0A=
Camp-Spich-Str. 4=0A=
53842 Troisdorf=0A=
=0A=
Tel:   +49 (0)2241 / 866 392 46=0A=
Fax:   +49 (0)2241 / 866 392 99=0A=
eMail: matthias.schoepfer@identpro.de=0A=
=0A=
http://www.identpro.de=0A=
=0A=
identplus=AE =96 Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.=
=0A=
=FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen Sie das=
=0A=
Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrechner.=0A=
=0A=
identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
=0A=
---------------------------------=0A=
IdentPro GmbH=0A=
Member of Dr. Wack Holding GmbH & Co.KG=0A=
Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
Gesch=E4ftsf=FChrer: Michael Wack=0A=
Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
WEEE-Reg.-Nr. DE 79026890=0A=

