Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14B94E00CB3; Sat, 17 Mar 2018 06:25:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B85EAE006E9
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 06:25:18 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id l8so14211286wrg.5
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 06:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:message-id:in-reply-to:references:subject:mime-version; 
	bh=DIHcE7vLdJ3zFuW17fatDnEFjDbdh+juUHnVc9ZUjAU=;
	b=cduqeuRrtqbxRuhWNCaAW23QzWvW2Zh9KsqRLGIojF/qqjvJF1DX91jLFbX/wMFNhg
	X4H1CbypEtvPUrnFunBFpIas18m7bXAERtuTbxOeykEE6fBmEX0P4ZHaxJYfxCVQvdYa
	Bga3NtOg37Rpm+3e0tNYfsGyzl3Ll8bWArbey1T1N3o2r2GZ6W5TDxK7cTV9F72+TpML
	L7BVT2cMMoAyIG5Y9UjWNhR/Zht0WHxf+9snqhyTiQcCJAkfMFC74RTpMXMRm5Bi/wC3
	Kbg+HeOUzbIfhwH8Fkdn/lNZZEzyvHypHXsdA9vOdMD/n/p2vpbYykheh/CQRF2ouYnH
	J2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
	:subject:mime-version;
	bh=DIHcE7vLdJ3zFuW17fatDnEFjDbdh+juUHnVc9ZUjAU=;
	b=U1Fh9pp8e21TZ0z/oW+kA+DaOGK+UY0P2TKpS2yYvN9iLEwnGkArjZV1uC/fNWM6tF
	1dGnXsWPk6dIxAtXLUwDdWHSKd/DFCEEeABJ8EN+CatQq+QKY5z6w1lZrC26kDD0hAXF
	LeGQVqfjd6kM0Ek5Bknf8vAqso1+fE6BmCHFFmBLW3r4KCEnfqstiHo6grU5EmAn9m7y
	q1qEMXzE3pTQYVRxjnD7ZHLCZaJSYPXsCQ2gZfo8RYCptSQnoNXEpdmTI8ciz7RXNnHp
	wbvidV/0OhqAaXB0lJCY5rp8UGmLlprl1NYAagkov1mLyuSN9PBvnQOhKDcSVGnsjSa6
	6qeg==
X-Gm-Message-State: AElRT7Gk4UDjYvJmXpDJwt9Xuy+BJQ6uKGuh0q/iZY4oGpMYbUdFwqA6
	m4aaym5ou6FdYQ0zyS8jSDNZWQWD
X-Google-Smtp-Source: AG47ELskoR+UmPv5XxQpfAyYN6YVoQqFYeBg1LYMFeBwUIZ35kVeYim302cwtkJDaPrfwDFbNGwopg==
X-Received: by 10.223.224.200 with SMTP id e8mr4409465wri.149.1521293116805;
	Sat, 17 Mar 2018 06:25:16 -0700 (PDT)
Received: from ubuntu ([141.170.140.31])
	by smtp.gmail.com with ESMTPSA id k1sm4127628wrf.66.2018.03.17.06.25.14
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 17 Mar 2018 06:25:16 -0700 (PDT)
Date: Sat, 17 Mar 2018 14:25:11 +0100
From: Peter Balazovic <balazovic.peter@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <1521292484.local-966b54e7-d3df-v1.1.5-5834c99f@getmailspring.com>
In-Reply-To: <C44683C49AD51C4AB28DA746E48E3587FFAD19@SBS-IDENTPRO.intranet.identpro.net>
References: <C44683C49AD51C4AB28DA746E48E3587FFAD19@SBS-IDENTPRO.intranet.identpro.net>
X-Mailer: Mailspring
MIME-Version: 1.0
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
X-List-Received-Date: Sat, 17 Mar 2018 13:25:21 -0000
Content-Type: multipart/alternative; boundary="5aad1737_15891c33_1491"

--5aad1737_15891c33_1491
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


for now I took openblas recipe from here https://github.com/CogentEmbedde=
d/meta-opencl/tree/master/meta-ocl-common/recipes-graphics/openblas (http=
s://link.getmailspring.com/link/1521292484.local-966b54e7-d3df-v1.1.5-583=
4c99f=40getmailspring.com/0=3Fredirect=3Dhttps%3A%2=46%2=46github.com%2=46=
CogentEmbedded%2=46meta-opencl%2=46tree%2=46master%2=46meta-ocl-common%2=46=
recipes-graphics%2=46openblas&recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%=
3D%3D)
it compiles.
BTW how fortran can be added to yocto build=3F
Secondly I wanna to use it for scipy build but even though compiles with =
no error but openblas can't be found by this
NOTE: Executing RunQueue Tasks
ERROR: scipy-1.0.0-r0 do=5Fcompile: python setup.py build execution faile=
d.
ERROR: scipy-1.0.0-r0 do=5Fcompile: =46unction failed: do=5Fcompile (log =
file is located at /../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/=
scipy/1.0.0-r0/temp/log.do=5Fcompile.12169)
ERROR: Logfile of failure stored in: /../build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/scipy/1.0.0-r0/temp/log.do=5Fcompile.12169
Log data follows:
=7C DEBUG: Executing shell function do=5Fcompile
=7C ERROR: python setup.py build execution failed.
=7C /../build/tmp/sysroots/x86=5F64-linux/usr/lib/python2.7/distutils/dis=
t.py:267: UserWarning: Unknown distribution option: 'python=5Frequires'
=7C warnings.warn(msg)
=7C lapack=5Fopt=5Finfo:
=7C openblas=5Flapack=5Finfo:
=7C libraries openblas not found in =5B'/../build/tmp/sysroots/x86=5F64-l=
inux/usr/lib'=5D
=7C NOT AVAILABLE

Even openblas has been added still can't be found ... I look at scipy bui=
lt from source guide it says
export BLAS=3D/path/to/libblas.so
export LAPACK=3D/path/to/liblapack.so
export ATLAS=3D/path/to/libatlas.so
python setup.py ............
I wonder if openblas needs to somwhow installed or is it issue of scipy b=
uild process ...

Sent from Mailspring (https://link.getmailspring.com/link/1521292484.loca=
l-966b54e7-d3df-v1.1.5-5834c99f=40getmailspring.com/1=3Fredirect=3Dhttps%=
3A%2=46%2=46getmailspring.com%2=46&recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm=
9yZw%3D%3D), the best free email app for work

On Mar 17 2018, at 2:08 pm, Matthias Sch=C3=B6pfer <matthias.schoepfer=40=
identpro.de> wrote:
>
> Hi Peter,
> openblas builds for me fine. This seems to be more of an issue with
> hard/softfloat than openBLAS.
>
> If I remember correctly, there was at some point a problem with fortran=
,
> which might be needed for openBLAS. But this seems not to be the issue
> here.
>
> Maybe try to compile it for qemu-x86 and see, if it works there...
> Regards,
> Matthias
> On 03/17/2018 11:44 AM, Peter Balazovic wrote:
> > Hello guys,
> >
> > I tried to use openblas recipe from
> > https://layers.openembedded.org/layerindex/recipe/68888/
> > recipes-convnet/openblas/openblas=5F0.2.19.bb
> > <http://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-ext=
ra/recipes-convnet/openblas/openblas=5F0.2.19.bb>
> >
> > Unfortunately got compiling error btw I notice there is further openB=
LAS
> > release 0.2.20, is there any update on that recipe=3F
> >
> >
> > Compiling problems:
> > NOTE: Executing RunQueue Tasks
> > ERROR: openblas-0.2.19-r0 do=5Fcompile: oe=5Frunmake failed
> > ERROR: openblas-0.2.19-r0 do=5Fcompile: =46unction failed: do=5Fcompi=
le (log
> > file is located at
> > ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-=
r0/temp/log.do=5Fcompile.2836)
> > ERROR: Logfile of failure stored in:
> > ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-=
r0/temp/log.do=5Fcompile.2836
> > Log data follows:
> > =7C DEBUG: Executing shell function do=5Fcompile
> > =7C NOTE: make -j 4 HOSTCC=3Dgcc CC=3Darm-poky-linux-gnueabi-gcc
> > --sysroot=3D../build/tmp/sysroots/ ONLY=5FCBLAS=3D1 BINARY=3D32 TARGE=
T=3Darm
> > =7C make=5B1=5D: warning: -jN forced in submake: disabling jobserver =
mode.
> > =7C make=5B1=5D: Entering directory
> > '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19=
-r0/OpenBLAS-0.2.19/interface'
> > =7C arm-poky-linux-gnueabi-gcc --sysroot=3D../build/tmp/sysroots/ -O2=

> > -pipe -g -feliminate-unused-debug-types
> > -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnu=
eabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
> > -fdebug-prefix-map=3D../build/tmp/sysroots/x86=5F64-linux=3D
> > -fdebug-prefix-map=3D../build/tmp/sysroots/=3D -O2 -DMAX=5FSTACK=5FAL=
LOC=3D2048
> > -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACK=
E -DSMP=5FSERVER
> > -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46NAME=3D=5F=
 -DNAME=3D=5F -DCNAME=3D
> > -DCHAR=5FNAME=3D=5C=22=5F=5C=22 -DCHAR=5FCNAME=3D=5C=22=5C=22 -DNO=5F=
A=46=46INITY -I. -O2
> > -DMAX=5FSTACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPI=
C -DNO=5FLAPACK
> > -DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4
> > -DASMNAME=3Dcblas=5Fisamax -DASM=46NAME=3Dcblas=5Fisamax=5F -DNAME=3D=
cblas=5Fisamax=5F
> > -DCNAME=3Dcblas=5Fisamax -DCHAR=5FNAME=3D=5C=22cblas=5Fisamax=5F=5C=22=

> > -DCHAR=5FCNAME=3D=5C=22cblas=5Fisamax=5C=22 -DNO=5FA=46=46INITY -I.. =
-I. -UDOUBLE -UCOMPLEX
> > -DCBLAS -c -DUSE=5FABS -UUSE=5FMIN imax.c -o cblas=5Fisamax.o
> > =7C arm-poky-linux-gnueabi-gcc --sysroot=3D../build/tmp/sysroots/ -O2=

> > -pipe -g -feliminate-unused-debug-types
> > -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnu=
eabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
> > -fdebug-prefix-map=3D../build/tmp/sysroots/x86=5F64-linux=3D
> > -fdebug-prefix-map=3D../build/tmp/sysroots/=3D -O2 -DMAX=5FSTACK=5FAL=
LOC=3D2048
> > -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACK=
E -DSMP=5FSERVER
> > -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46NAME=3D=5F=
 -DNAME=3D=5F -DCNAME=3D
> > -DCHAR=5FNAME=3D=5C=22=5F=5C=22 -DCHAR=5FCNAME=3D=5C=22=5C=22 -DNO=5F=
A=46=46INITY -I. -O2
> > -DMAX=5FSTACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPI=
C -DNO=5FLAPACK
> > -DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4
> > -DASMNAME=3Dcblas=5Fsasum -DASM=46NAME=3Dcblas=5Fsasum=5F -DNAME=3Dcb=
las=5Fsasum=5F
> > -DCNAME=3Dcblas=5Fsasum -DCHAR=5FNAME=3D=5C=22cblas=5Fsasum=5F=5C=22
> > -DCHAR=5FCNAME=3D=5C=22cblas=5Fsasum=5C=22 -DNO=5FA=46=46INITY -I.. -=
I. -UDOUBLE -UCOMPLEX
> > -DCBLAS -c asum.c -o cblas=5Fsasum.o
> > =7C arm-poky-linux-gnueabi-gcc --sysroot=3D../build/tmp/sysroots/ -O2=

> > -pipe -g -feliminate-unused-debug-types
> > -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnu=
eabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
> > -fdebug-prefix-map=3D../build/tmp/sysroots/x86=5F64-linux=3D
> > -fdebug-prefix-map=3D../build/tmp/sysroots/=3D -O2 -DMAX=5FSTACK=5FAL=
LOC=3D2048
> > -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACK=
E -DSMP=5FSERVER
> > -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46NAME=3D=5F=
 -DNAME=3D=5F -DCNAME=3D
> > -DCHAR=5FNAME=3D=5C=22=5F=5C=22 -DCHAR=5FCNAME=3D=5C=22=5C=22 -DNO=5F=
A=46=46INITY -I. -O2
> > -DMAX=5FSTACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPI=
C -DNO=5FLAPACK
> > -DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4
> > -DASMNAME=3Dcblas=5Fsaxpy -DASM=46NAME=3Dcblas=5Fsaxpy=5F -DNAME=3Dcb=
las=5Fsaxpy=5F
> > -DCNAME=3Dcblas=5Fsaxpy -DCHAR=5FNAME=3D=5C=22cblas=5Fsaxpy=5F=5C=22
> > -DCHAR=5FCNAME=3D=5C=22cblas=5Fsaxpy=5C=22 -DNO=5FA=46=46INITY -I.. -=
I. -UDOUBLE -UCOMPLEX
> > -DCBLAS -c axpy.c -o cblas=5Fsaxpy.o
> > =7C arm-poky-linux-gnueabi-gcc --sysroot=3D../build/tmp/sysroots/ -O2=

> > -pipe -g -feliminate-unused-debug-types
> > -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnu=
eabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0
> > -fdebug-prefix-map=3D../build/tmp/sysroots/x86=5F64-linux=3D
> > -fdebug-prefix-map=3D../build/tmp/sysroots/=3D -O2 -DMAX=5FSTACK=5FAL=
LOC=3D2048
> > -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACK=
E -DSMP=5FSERVER
> > -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46NAME=3D=5F=
 -DNAME=3D=5F -DCNAME=3D
> > -DCHAR=5FNAME=3D=5C=22=5F=5C=22 -DCHAR=5FCNAME=3D=5C=22=5C=22 -DNO=5F=
A=46=46INITY -I. -O2
> > -DMAX=5FSTACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPI=
C -DNO=5FLAPACK
> > -DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4
> > -DASMNAME=3Dcblas=5Fscopy -DASM=46NAME=3Dcblas=5Fscopy=5F -DNAME=3Dcb=
las=5Fscopy=5F
> > -DCNAME=3Dcblas=5Fscopy -DCHAR=5FNAME=3D=5C=22cblas=5Fscopy=5F=5C=22
> > -DCHAR=5FCNAME=3D=5C=22cblas=5Fscopy=5C=22 -DNO=5FA=46=46INITY -I.. -=
I. -UDOUBLE -UCOMPLEX
> > -DCBLAS -c copy.c -o cblas=5Fscopy.o
> > =7C <command-line>:0:0: warning: =22ASMNAME=22 redefined
> > =7C <command-line>:0:0: warning: =22ASMNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22ASM=46NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FCNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22ASMNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22ASM=46NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22NAME=22 redefined
> > =7C In file included from ../build/tmp/sysroots//usr/include/features=
.h:392:0,
> > =7C from ../build/tmp/sysroots//usr/include/stdio.h:27,
> > =7C from imax.c:39:
> > =7C ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=

> > gnu/stubs-soft.h: No such file or directory
> > =7C =23 include <gnu/stubs-soft.h>
> > =7C =5E
> > =7C compilation terminated.
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FCNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22ASM=46NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FCNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22ASMNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22ASM=46NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22NAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FNAME=22 redefined
> > =7C In file included from ../build/tmp/sysroots//usr/include/features=
.h:392:0,
> > =7C from ../build/tmp/sysroots//usr/include/stdio.h:27,
> > =7C from axpy.c:39:
> > =7C ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=

> > gnu/stubs-soft.h: No such file or directory
> > =7C =23 include <gnu/stubs-soft.h>
> > =7C =5E
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C <command-line>:0:0: warning: =22CHAR=5FCNAME=22 redefined
> > =7C <command-line>:0:0: note: this is the location of the previous de=
finition
> > =7C ERROR: oe=5Frunmake failed
> > =7C In file included from ../build/tmp/sysroots//usr/include/features=
.h:392:0,
> > =7C from ../build/tmp/sysroots//usr/include/stdio.h:27,
> > =7C from asum.c:39:
> > =7C ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=

> > gnu/stubs-soft.h: No such file or directory
> > =7C =23 include <gnu/stubs-soft.h>
> > =7C =5E
> > =7C compilation terminated.
> > =7C In file included from ../build/tmp/sysroots//usr/include/features=
.h:392:0,
> > =7C from ../build/tmp/sysroots//usr/include/stdio.h:27,
> > =7C from copy.c:39:
> > =7C ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error:=

> > gnu/stubs-soft.h: No such file or directory
> > =7C =23 include <gnu/stubs-soft.h>
> > =7C =5E
> > =7C compilation terminated.
> > =7C compilation terminated.
> > =7C Makefile:1351: recipe for target 'cblas=5Fisamax.o' failed
> > =7C make=5B1=5D: *** =5Bcblas=5Fisamax.o=5D Error 1
> > =7C make=5B1=5D: *** Waiting for unfinished jobs....
> > =7C Makefile:1375: recipe for target 'cblas=5Fsasum.o' failed
> > =7C make=5B1=5D: *** =5Bcblas=5Fsasum.o=5D Error 1
> > =7C Makefile:1447: recipe for target 'cblas=5Fscopy.o' failed
> > =7C make=5B1=5D: *** =5Bcblas=5Fscopy.o=5D Error 1
> > =7C Makefile:1435: recipe for target 'cblas=5Fsaxpy.o' failed
> > =7C make=5B1=5D: *** =5Bcblas=5Fsaxpy.o=5D Error 1
> > =7C make=5B1=5D: Leaving directory
> > '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19=
-r0/OpenBLAS-0.2.19/interface'
> > =7C Makefile:133: recipe for target 'libs' failed
> > =7C make: *** =5Blibs=5D Error 1
> > =7C ERROR: =46unction failed: do=5Fcompile (log file is located at
> > ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-=
r0/temp/log.do=5Fcompile.2836)
> > ERROR: Task
> > (../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/openbl=
as/openblas=5F0.2.19.bb:do=5Fcompile)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 433 tasks of which 432 didn't need to =
be
> > rerun and 1 failed.
>
>
>
> --
> Dr.-Ing. Matthias Sch=C3=B6pfer
>
> Softwareentwicklung
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> IdentPro GmbH
> Camp-Spich-Str. 4
> 53842 Troisdorf
>
> Tel: +49 (0)2241 / 866 392 46
> =46ax: +49 (0)2241 / 866 392 99
> eMail: matthias.schoepfer=40identpro.de
>
> http://www.identpro.de
> identplus=C2=AE =E2=80=93 Das 3D Staplerleitsystem mit enormen Sparpote=
nzial: z. B.
> =C3=BCber 67.000 EUR pro Jahr bei 500 Transporten t=C3=A4glich=21 Berec=
hnen Sie das
> Einsparpotenzial f=C3=BCr Ihr Lager mit dem identplus=C2=AE Potenzialre=
chner.
>
> identplus=C2=AE live erleben: Vereinbaren Sie jetzt einen Termin=21
> ---------------------------------
> IdentPro GmbH
> Member of Dr. Wack Holding GmbH & Co.KG
> Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg
> Gesch=C3=A4ftsf=C3=BChrer: Michael Wack
> Umsatzsteuer-ID-Nr.: DE 254 824 945
> WEEE-Reg.-Nr. DE 79026890
>


--5aad1737_15891c33_1491
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<br><div>for now I took openblas recipe from here <a href=3D=22https://li=
nk.getmailspring.com/link/1521292484.local-966b54e7-d3df-v1.1.5-5834c99f=40=
getmailspring.com/0=3Fredirect=3Dhttps%3A%2=46%2=46github.com%2=46CogentE=
mbedded%2=46meta-opencl%2=46tree%2=46master%2=46meta-ocl-common%2=46recip=
es-graphics%2=46openblas&amp;recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3=
D%3D=22 title=3D=22https://github.com/CogentEmbedded/meta-opencl/tree/mas=
ter/meta-ocl-common/recipes-graphics/openblas=22>https://github.com/Cogen=
tEmbedded/meta-opencl/tree/master/meta-ocl-common/recipes-graphics/openbl=
as</a></div><br><div>it compiles.</div><br><div>BTW how fortran can be ad=
ded to yocto build=3F</div><br><div>Secondly  I wanna to use it for scipy=
 build but even though compiles with no error but openblas can't be found=
 by this</div><br><div>NOTE: Executing RunQueue Tasks</div><div>ERROR: sc=
ipy-1.0.0-r0 do=5Fcompile: python setup.py build execution failed.</div><=
div>ERROR: scipy-1.0.0-r0 do=5Fcompile: =46unction failed: do=5Fcompile (=
log file is located at /../build/tmp/work/cortexa9hf-neon-poky-linux-gnue=
abi/scipy/1.0.0-r0/temp/log.do=5Fcompile.12169)</div><div>ERROR: Logfile =
of failure stored in: /../build/tmp/work/cortexa9hf-neon-poky-linux-gnuea=
bi/scipy/1.0.0-r0/temp/log.do=5Fcompile.12169</div><div>Log data follows:=
</div><div>=7C DEBUG: Executing shell function do=5Fcompile</div><div>=7C=
 ERROR: python setup.py build execution failed.</div><div>=7C /../build/t=
mp/sysroots/x86=5F64-linux/usr/lib/python2.7/distutils/dist.py:267: UserW=
arning: Unknown distribution option: 'python=5Frequires'</div><div>=7C   =
warnings.warn(msg)</div><div>=7C lapack=5Fopt=5Finfo:</div><div>=7C openb=
las=5Flapack=5Finfo:</div><div>=7C   libraries openblas not found in =5B'=
/../build/tmp/sysroots/x86=5F64-linux/usr/lib'=5D</div><div>=7C   NOT AVA=
ILABLE</div><br><div>Even openblas has been added still can't be found ..=
. I look at scipy built from source guide it says </div><br><code><pre st=
yle=3D=22background-color:rgba(0,0,0,0.05);padding:0.2em 1em=22>export BL=
AS=3D/path/to/libblas.so<br>export LAPACK=3D/path/to/liblapack.so<br>expo=
rt ATLAS=3D/path/to/libatlas.so<br>python setup.py ............</pre></co=
de><br><div>I wonder if openblas needs to somwhow installed or is it issu=
e of scipy build process ...</div><br><br><div><signature id=3D=22initial=
=22><div><div>Sent from <a href=3D=22https://link.getmailspring.com/link/=
1521292484.local-966b54e7-d3df-v1.1.5-5834c99f=40getmailspring.com/1=3Fre=
direct=3Dhttps%3A%2=46%2=46getmailspring.com%2=46&amp;recipient=3DeW9jdG9=
AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D=22>Mailspring</a>, the best free email app =
for work</div></div></signature></div><br><br><div class=3D=22gmail=5Fquo=
te=5Fattribution=22>On Mar 17 2018, at 2:08 pm, Matthias Sch=C3=B6pfer &l=
t;matthias.schoepfer=40identpro.de&gt; wrote:</div><blockquote><br><div><=
div>Hi Peter,</div><br><div>openblas builds for me fine. This seems to be=
 more of an issue with</div><div>hard/softfloat than openBLAS.</div><br><=
div>If I remember correctly, there was at some point a problem with fortr=
an,</div><div>which might be needed for openBLAS. But this seems not to b=
e the issue</div><div>here.</div><br><div>Maybe try to compile it for qem=
u-x86 and see, if it works there...</div><br><div>Regards,</div><br><div>=
Matthias</div><br><div>On 03/17/2018 11:44 AM, Peter Balazovic wrote:</di=
v><blockquote><div>Hello guys,</div><br><div>I tried to use openblas reci=
pe from</div><div>https://layers.openembedded.org/layerindex/recipe/68888=
/</div><div>recipes-convnet/openblas/openblas=5F0.2.19.bb</div><div>&lt;h=
ttp://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-extra/rec=
ipes-convnet/openblas/openblas=5F0.2.19.bb&gt;</div><br><div>Unfortunatel=
y got compiling error btw I notice there is further openBLAS</div><div>re=
lease 0.2.20, is there any update on that recipe=3F</div><br><br><div>Com=
piling problems:</div><br><div>NOTE: Executing RunQueue Tasks</div><div>E=
RROR: openblas-0.2.19-r0 do=5Fcompile: oe=5Frunmake failed</div><div>ERRO=
R: openblas-0.2.19-r0 do=5Fcompile: =46unction failed: do=5Fcompile (log<=
/div><div>file is located at</div><div>../build/tmp/work/cortexa9hf-neon-=
poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do=5Fcompile.2836)</div><d=
iv>ERROR: Logfile of failure stored in:</div><div>../build/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do=5Fcompile.28=
36</div><div>Log data follows:</div><div>=7C DEBUG: Executing shell funct=
ion do=5Fcompile</div><div>=7C NOTE: make -j 4 HOSTCC=3Dgcc&nbsp; CC=3Dar=
m-poky-linux-gnueabi-gcc&nbsp;</div><div>--sysroot=3D../build/tmp/sysroot=
s/ ONLY=5FCBLAS=3D1 BINARY=3D32 TARGET=3Darm</div><div>=7C make=5B1=5D: w=
arning: -jN forced in submake: disabling jobserver mode.</div><div>=7C ma=
ke=5B1=5D: Entering directory</div><div>'../build/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/openblas/0.2.19-r0/OpenBLAS-0.2.19/interface'</div><=
div>=7C arm-poky-linux-gnueabi-gcc&nbsp; --sysroot=3D../build/tmp/sysroot=
s/&nbsp; -O2</div><div>-pipe -g -feliminate-unused-debug-types</div><div>=
-fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0</div><div>-fdebug=
-prefix-map=3D../build/tmp/sysroots/x86=5F64-linux=3D</div><div>-fdebug-p=
refix-map=3D../build/tmp/sysroots/=3D&nbsp; -O2 -DMAX=5FSTACK=5FALLOC=3D2=
048</div><div>-Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DN=
O=5FLAPACKE -DSMP=5FSERVER</div><div>-DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D=
4 -DASMNAME=3D -DASM=46NAME=3D=5F -DNAME=3D=5F -DCNAME=3D</div><div>-DCHA=
R=5FNAME=3D=5C=22=5F=5C=22 -DCHAR=5FCNAME=3D=5C=22=5C=22 -DNO=5FA=46=46IN=
ITY -I. -O2</div><div>-DMAX=5FSTACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46=
ACE=5FG=46ORT -fPIC -DNO=5FLAPACK</div><div>-DNO=5FLAPACKE -DSMP=5FSERVER=
 -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4</div><div>-DASMNAME=3Dcblas=5Fisa=
max -DASM=46NAME=3Dcblas=5Fisamax=5F -DNAME=3Dcblas=5Fisamax=5F</div><div=
>-DCNAME=3Dcblas=5Fisamax -DCHAR=5FNAME=3D=5C=22cblas=5Fisamax=5F=5C=22</=
div><div>-DCHAR=5FCNAME=3D=5C=22cblas=5Fisamax=5C=22 -DNO=5FA=46=46INITY =
-I.. -I. -UDOUBLE&nbsp; -UCOMPLEX</div><div>-DCBLAS -c -DUSE=5FABS -UUSE=5F=
MIN imax.c -o cblas=5Fisamax.o</div><div>=7C arm-poky-linux-gnueabi-gcc&n=
bsp; --sysroot=3D../build/tmp/sysroots/&nbsp; -O2</div><div>-pipe -g -fel=
iminate-unused-debug-types</div><div>-fdebug-prefix-map=3D../build/tmp/wo=
rk/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug=
/openblas/0.2.19-r0</div><div>-fdebug-prefix-map=3D../build/tmp/sysroots/=
x86=5F64-linux=3D</div><div>-fdebug-prefix-map=3D../build/tmp/sysroots/=3D=
&nbsp; -O2 -DMAX=5FSTACK=5FALLOC=3D2048</div><div>-Wall -D=46=5FINTER=46A=
CE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACKE -DSMP=5FSERVER</div><div>=
-DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46NAME=3D=5F -D=
NAME=3D=5F -DCNAME=3D</div><div>-DCHAR=5FNAME=3D=5C=22=5F=5C=22 -DCHAR=5F=
CNAME=3D=5C=22=5C=22 -DNO=5FA=46=46INITY -I. -O2</div><div>-DMAX=5FSTACK=5F=
ALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK</div=
><div>-DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D=
4</div><div>-DASMNAME=3Dcblas=5Fsasum -DASM=46NAME=3Dcblas=5Fsasum=5F -DN=
AME=3Dcblas=5Fsasum=5F</div><div>-DCNAME=3Dcblas=5Fsasum -DCHAR=5FNAME=3D=
=5C=22cblas=5Fsasum=5F=5C=22</div><div>-DCHAR=5FCNAME=3D=5C=22cblas=5Fsas=
um=5C=22 -DNO=5FA=46=46INITY -I.. -I. -UDOUBLE&nbsp; -UCOMPLEX</div><div>=
-DCBLAS -c asum.c -o cblas=5Fsasum.o</div><div>=7C arm-poky-linux-gnueabi=
-gcc&nbsp; --sysroot=3D../build/tmp/sysroots/&nbsp; -O2</div><div>-pipe -=
g -feliminate-unused-debug-types</div><div>-fdebug-prefix-map=3D../build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=3D/usr/src=
/debug/openblas/0.2.19-r0</div><div>-fdebug-prefix-map=3D../build/tmp/sys=
roots/x86=5F64-linux=3D</div><div>-fdebug-prefix-map=3D../build/tmp/sysro=
ots/=3D&nbsp; -O2 -DMAX=5FSTACK=5FALLOC=3D2048</div><div>-Wall -D=46=5FIN=
TER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACKE -DSMP=5FSERVER</di=
v><div>-DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46NAME=3D=
=5F -DNAME=3D=5F -DCNAME=3D</div><div>-DCHAR=5FNAME=3D=5C=22=5F=5C=22 -DC=
HAR=5FCNAME=3D=5C=22=5C=22 -DNO=5FA=46=46INITY -I. -O2</div><div>-DMAX=5F=
STACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAP=
ACK</div><div>-DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5FN=
UMBER=3D4</div><div>-DASMNAME=3Dcblas=5Fsaxpy -DASM=46NAME=3Dcblas=5Fsaxp=
y=5F -DNAME=3Dcblas=5Fsaxpy=5F</div><div>-DCNAME=3Dcblas=5Fsaxpy -DCHAR=5F=
NAME=3D=5C=22cblas=5Fsaxpy=5F=5C=22</div><div>-DCHAR=5FCNAME=3D=5C=22cbla=
s=5Fsaxpy=5C=22 -DNO=5FA=46=46INITY -I.. -I. -UDOUBLE&nbsp; -UCOMPLEX</di=
v><div>-DCBLAS -c axpy.c -o cblas=5Fsaxpy.o</div><div>=7C arm-poky-linux-=
gnueabi-gcc&nbsp; --sysroot=3D../build/tmp/sysroots/&nbsp; -O2</div><div>=
-pipe -g -feliminate-unused-debug-types</div><div>-fdebug-prefix-map=3D..=
/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=3D/=
usr/src/debug/openblas/0.2.19-r0</div><div>-fdebug-prefix-map=3D../build/=
tmp/sysroots/x86=5F64-linux=3D</div><div>-fdebug-prefix-map=3D../build/tm=
p/sysroots/=3D&nbsp; -O2 -DMAX=5FSTACK=5FALLOC=3D2048</div><div>-Wall -D=46=
=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5FLAPACK -DNO=5FLAPACKE -DSMP=5FSERVE=
R</div><div>-DNO=5FWARMUP -DMAX=5FCPU=5FNUMBER=3D4 -DASMNAME=3D -DASM=46N=
AME=3D=5F -DNAME=3D=5F -DCNAME=3D</div><div>-DCHAR=5FNAME=3D=5C=22=5F=5C=22=
 -DCHAR=5FCNAME=3D=5C=22=5C=22 -DNO=5FA=46=46INITY -I. -O2</div><div>-DMA=
X=5FSTACK=5FALLOC=3D2048 -Wall -D=46=5FINTER=46ACE=5FG=46ORT -fPIC -DNO=5F=
LAPACK</div><div>-DNO=5FLAPACKE -DSMP=5FSERVER -DNO=5FWARMUP -DMAX=5FCPU=5F=
NUMBER=3D4</div><div>-DASMNAME=3Dcblas=5Fscopy -DASM=46NAME=3Dcblas=5Fsco=
py=5F -DNAME=3Dcblas=5Fscopy=5F</div><div>-DCNAME=3Dcblas=5Fscopy -DCHAR=5F=
NAME=3D=5C=22cblas=5Fscopy=5F=5C=22</div><div>-DCHAR=5FCNAME=3D=5C=22cbla=
s=5Fscopy=5C=22 -DNO=5FA=46=46INITY -I.. -I. -UDOUBLE&nbsp; -UCOMPLEX</di=
v><div>-DCBLAS -c copy.c -o cblas=5Fscopy.o</div><div>=7C &lt;command-lin=
e&gt;:0:0: warning: =22ASMNAME=22 redefined</div><div>=7C &lt;command-lin=
e&gt;:0:0: warning: =22ASMNAME=22 redefined</div><div>=7C &lt;command-lin=
e&gt;:0:0: note: this is the location of the previous definition</div><di=
v>=7C &lt;command-line&gt;:0:0: warning: =22ASM=46NAME=22 redefined</div>=
<div>=7C &lt;command-line&gt;:0:0: note: this is the location of the prev=
ious definition</div><div>=7C &lt;command-line&gt;:0:0: warning: =22NAME=22=
 redefined</div><div>=7C &lt;command-line&gt;:0:0: note: this is the loca=
tion of the previous definition</div><div>=7C &lt;command-line&gt;:0:0: w=
arning: =22CNAME=22 redefined</div><div>=7C &lt;command-line&gt;:0:0: not=
e: this is the location of the previous definition</div><div>=7C &lt;comm=
and-line&gt;:0:0: warning: =22CHAR=5FNAME=22 redefined</div><div>=7C &lt;=
command-line&gt;:0:0: note: this is the location of the previous definiti=
on</div><div>=7C &lt;command-line&gt;:0:0: warning: =22CHAR=5FCNAME=22 re=
defined</div><div>=7C &lt;command-line&gt;:0:0: note: this is the locatio=
n of the previous definition</div><div>=7C &lt;command-line&gt;:0:0: warn=
ing: =22ASMNAME=22 redefined</div><div>=7C &lt;command-line&gt;:0:0: note=
: this is the location of the previous definition</div><div>=7C &lt;comma=
nd-line&gt;:0:0: warning: =22ASM=46NAME=22 redefined</div><div>=7C &lt;co=
mmand-line&gt;:0:0: note: this is the location of the previous definition=
</div><div>=7C &lt;command-line&gt;:0:0: warning: =22NAME=22 redefined</d=
iv><div>=7C In file included from ../build/tmp/sysroots//usr/include/feat=
ures.h:392:0,</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../build/tm=
p/sysroots//usr/include/stdio.h:27,</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; from imax.c:39:</div><div>=7C ../build/tmp/sysroots//usr/include/gn=
u/stubs.h:7:29: fatal error:</div><div>gnu/stubs-soft.h: No such file or =
directory</div><div>=7C&nbsp; =23 include &lt;gnu/stubs-soft.h&gt;</div><=
div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =5E</div><div>=7C compilation termina=
ted.</div><div>=7C &lt;command-line&gt;:0:0: note: this is the location o=
f the previous definition</div><div>=7C &lt;command-line&gt;:0:0: warning=
: =22CNAME=22 redefined</div><div>=7C &lt;command-line&gt;:0:0: note: thi=
s is the location of the previous definition</div><div>=7C &lt;command-li=
ne&gt;:0:0: warning: =22CHAR=5FNAME=22 redefined</div><div>=7C &lt;comman=
d-line&gt;:0:0: note: this is the location of the previous definition</di=
v><div>=7C &lt;command-line&gt;:0:0: warning: =22CHAR=5FCNAME=22 redefine=
d</div><div>=7C &lt;command-line&gt;:0:0: note: this is the location of t=
he previous definition</div><div>=7C &lt;command-line&gt;:0:0: note: this=
 is the location of the previous definition</div><div>=7C &lt;command-lin=
e&gt;:0:0: warning: =22ASM=46NAME=22 redefined</div><div>=7C &lt;command-=
line&gt;:0:0: note: this is the location of the previous definition</div>=
<div>=7C &lt;command-line&gt;:0:0: warning: =22NAME=22 redefined</div><di=
v>=7C &lt;command-line&gt;:0:0: note: this is the location of the previou=
s definition</div><div>=7C &lt;command-line&gt;:0:0: warning: =22CNAME=22=
 redefined</div><div>=7C &lt;command-line&gt;:0:0: note: this is the loca=
tion of the previous definition</div><div>=7C &lt;command-line&gt;:0:0: w=
arning: =22CHAR=5FNAME=22 redefined</div><div>=7C &lt;command-line&gt;:0:=
0: note: this is the location of the previous definition</div><div>=7C &l=
t;command-line&gt;:0:0: warning: =22CHAR=5FCNAME=22 redefined</div><div>=7C=
 &lt;command-line&gt;:0:0: note: this is the location of the previous def=
inition</div><div>=7C &lt;command-line&gt;:0:0: warning: =22ASMNAME=22 re=
defined</div><div>=7C &lt;command-line&gt;:0:0: note: this is the locatio=
n of the previous definition</div><div>=7C &lt;command-line&gt;:0:0: warn=
ing: =22ASM=46NAME=22 redefined</div><div>=7C &lt;command-line&gt;:0:0: n=
ote: this is the location of the previous definition</div><div>=7C &lt;co=
mmand-line&gt;:0:0: warning: =22NAME=22 redefined</div><div>=7C &lt;comma=
nd-line&gt;:0:0: note: this is the location of the previous definition</d=
iv><div>=7C &lt;command-line&gt;:0:0: warning: =22CNAME=22 redefined</div=
><div>=7C &lt;command-line&gt;:0:0: note: this is the location of the pre=
vious definition</div><div>=7C &lt;command-line&gt;:0:0: warning: =22CHAR=
=5FNAME=22 redefined</div><div>=7C In file included from ../build/tmp/sys=
roots//usr/include/features.h:392:0,</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; from ../build/tmp/sysroots//usr/include/stdio.h:27,</div><div>=7C&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; from axpy.c:39:</div><div>=7C ../build/tmp/s=
ysroots//usr/include/gnu/stubs.h:7:29: fatal error:</div><div>gnu/stubs-s=
oft.h: No such file or directory</div><div>=7C&nbsp; =23 include &lt;gnu/=
stubs-soft.h&gt;</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =5E</div><div>=
=7C &lt;command-line&gt;:0:0: note: this is the location of the previous =
definition</div><div>=7C &lt;command-line&gt;:0:0: warning: =22CHAR=5FCNA=
ME=22 redefined</div><div>=7C &lt;command-line&gt;:0:0: note: this is the=
 location of the previous definition</div><div>=7C ERROR: oe=5Frunmake fa=
iled</div><div>=7C In file included from ../build/tmp/sysroots//usr/inclu=
de/features.h:392:0,</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../b=
uild/tmp/sysroots//usr/include/stdio.h:27,</div><div>=7C&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; from asum.c:39:</div><div>=7C ../build/tmp/sysroots//usr/inc=
lude/gnu/stubs.h:7:29: fatal error:</div><div>gnu/stubs-soft.h: No such f=
ile or directory</div><div>=7C&nbsp; =23 include &lt;gnu/stubs-soft.h&gt;=
</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =5E</div><div>=7C compilation =
terminated.</div><div>=7C In file included from ../build/tmp/sysroots//us=
r/include/features.h:392:0,</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fr=
om ../build/tmp/sysroots//usr/include/stdio.h:27,</div><div>=7C&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; from copy.c:39:</div><div>=7C ../build/tmp/sysroots//=
usr/include/gnu/stubs.h:7:29: fatal error:</div><div>gnu/stubs-soft.h: No=
 such file or directory</div><div>=7C&nbsp; =23 include &lt;gnu/stubs-sof=
t.h&gt;</div><div>=7C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =5E</div><div>=7C compi=
lation terminated.</div><div>=7C compilation terminated.</div><div>=7C Ma=
kefile:1351: recipe for target 'cblas=5Fisamax.o' failed</div><div>=7C ma=
ke=5B1=5D: *** =5Bcblas=5Fisamax.o=5D Error 1</div><div>=7C make=5B1=5D: =
*** Waiting for unfinished jobs....</div><div>=7C Makefile:1375: recipe f=
or target 'cblas=5Fsasum.o' failed</div><div>=7C make=5B1=5D: *** =5Bcbla=
s=5Fsasum.o=5D Error 1</div><div>=7C Makefile:1447: recipe for target 'cb=
las=5Fscopy.o' failed</div><div>=7C make=5B1=5D: *** =5Bcblas=5Fscopy.o=5D=
 Error 1</div><div>=7C Makefile:1435: recipe for target 'cblas=5Fsaxpy.o'=
 failed</div><div>=7C make=5B1=5D: *** =5Bcblas=5Fsaxpy.o=5D Error 1</div=
><div>=7C make=5B1=5D: Leaving directory</div><div>'../build/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/OpenBLAS-0.2.19/interf=
ace'</div><div>=7C Makefile:133: recipe for target 'libs' failed</div><di=
v>=7C make: *** =5Blibs=5D Error 1</div><div>=7C ERROR: =46unction failed=
: do=5Fcompile (log file is located at</div><div>../build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/temp/log.do=5Fcompile.283=
6)</div><div>ERROR: Task</div><div>(../sources/meta-fsl-bsp-release/imx/m=
eta-bsp/recipes-graphics/openblas/openblas=5F0.2.19.bb:do=5Fcompile)</div=
><div>failed with exit code '1'</div><div>NOTE: Tasks Summary: Attempted =
433 tasks of which 432 didn't need to be</div><div>rerun and 1 failed.</d=
iv></blockquote><br><br><div>--</div><div>Dr.-Ing. Matthias Sch=C3=B6pfer=
</div><br><div>Softwareentwicklung</div><br><div>=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F</div><br><div>IdentPro GmbH</div><div>Camp-Spich-Str. 4</div><d=
iv>53842 Troisdorf</div><br><div>Tel: +49 (0)2241 / 866 392 46</div><div>=
=46ax: +49 (0)2241 / 866 392 99</div><div>eMail: matthias.schoepfer=40ide=
ntpro.de</div><br><div>http://www.identpro.de</div><br><div>identplus=C2=AE=
 =E2=80=93 Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.</div=
><div>=C3=BCber 67.000 EUR pro Jahr bei 500 Transporten t=C3=A4glich=21 B=
erechnen Sie das</div><div>Einsparpotenzial f=C3=BCr Ihr Lager mit dem id=
entplus=C2=AE Potenzialrechner.</div><br><div>identplus=C2=AE live erlebe=
n: Vereinbaren Sie jetzt einen Termin=21</div><br><div>------------------=
---------------</div><div>IdentPro GmbH</div><div>Member of Dr. Wack Hold=
ing GmbH &amp; Co.KG</div><div>Sitz und Registergericht: St. Augustin, HR=
B 9770 Siegburg</div><div>Gesch=C3=A4ftsf=C3=BChrer: Michael Wack</div><d=
iv>Umsatzsteuer-ID-Nr.: DE 254 824 945</div><div>WEEE-Reg.-Nr. DE 7902689=
0</div></div></blockquote><img class=3D=22mailspring-open=22 alt=3D=22Ope=
n Tracking=22 width=3D=220=22 height=3D=220=22 style=3D=22border:0; width=
:0; height:0;=22 src=3D=22https://link.getmailspring.com/open/1521292484.=
local-966b54e7-d3df-v1.1.5-5834c99f=40getmailspring.com=3Frecipient=3DeW9=
jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D=22>

--5aad1737_15891c33_1491--
