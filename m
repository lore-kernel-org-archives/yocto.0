Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEECFE00AE6; Sat, 17 Mar 2018 03:40:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 525DEE00A75
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 03:39:41 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id l27so643520pfk.12
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 03:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J5ETOzdHzrQZlnYDiPYziOeJ4txWfdiXMbfKHNVF1II=;
	b=H/9VjmdNpcjfQYmF5j11TLb8zpPJEGfo3JryzJAD/AncH4bdbbkp/wk4AEbssXzVLb
	jnIJPgnIRJeefEIyIwD24Ly3sWXoPG7fEkdkejbse/7Ao3br8p2z9xngqSld7I1grNdc
	RUgt7W6404HlV/DzhuN9l+JFyTFM7t6u7phhD1xr4aEUVL5TZKHbGoqhzCsHPDC5eIin
	IqX6zI8/eQyBJIwj/m+TlMeSOD9DrHbUwfDq5/eBx03jMGoHqG1AVCBoVCGRSXie59Px
	nCk7Ea85NMqe5olMD95c0Y1z2ZkCbZtuIrlyz1+80bUFJ9EM3+uMDbYT7EPDQbjKSYWt
	KCdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J5ETOzdHzrQZlnYDiPYziOeJ4txWfdiXMbfKHNVF1II=;
	b=Qf5wgJQZaQuQy1iPYqKhu/SSbBzBO5b3xI4Z/RolYshkhP9XUNszqsweHp5xG+ZmF7
	J115uwHIuKERDWADFWQLqs0bfVy4rQio60JB2qQ/R6b7qsgbYcAOZUQRC2yiNUOitBwz
	J7iyh9mMfVavC81IDOXmfHY3691uyW6cEPW8gBBKF1WR6h77ofQ8OSA1ZSIoFN0ON/Hl
	2m7SXPYMekQ38CUaWNJVzonMXr24VStOpKhIy1P/bkqPd+eB86tEDtkmpzNMcC1M+wi0
	c+TxgJ/eo5KKZnFqvCLRhnu5+xWfs2mlfmwTGrHo/y7HFjg7tA/86sITVpNYo74KSAHE
	3ciw==
X-Gm-Message-State: AElRT7F168RxHby1OW7xA1nblN+J+ib4sZOEpi7Gu8G8y4XSSsg0suk+
	ZSkEi/EkU/Dd1N22grpY+GYLySoYVOkoGxcf6PuV2w==
X-Google-Smtp-Source: AG47ELtmCH3efQp0Z8LZAd7yLpA0ITph9e60HVK5FDoa+UuK1AEgTW10Sc5jCLprlI1QIWgOLnj9EwvVVMZ6l6HLhnc=
X-Received: by 10.98.178.17 with SMTP id x17mr4529183pfe.2.1521283181065; Sat,
	17 Mar 2018 03:39:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Sat, 17 Mar 2018 03:39:40 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 17 Mar 2018 11:39:40 +0100
Message-ID: <CAFq4t4jet61Fv5_dJFyiHLuAXDiAqP6TpjSvyD65wz1LpfvKEQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: OpenBLAS recipe
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
X-List-Received-Date: Sat, 17 Mar 2018 10:40:38 -0000
Content-Type: multipart/alternative; boundary="001a11436fc29c3bb70567995701"

--001a11436fc29c3bb70567995701
Content-Type: text/plain; charset="UTF-8"

Hello guys,

I tried to use openblas recipe from
https://layers.openembedded.org/layerindex/recipe/68888/
recipes-convnet/openblas/openblas_0.2.19.bb
<http://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-extra/recipes-convnet/openblas/openblas_0.2.19.bb>

Unfortunately got compiling error btw I notice there is further openBLAS
release 0.2.20, is there any update on that recipe?


Compiling problems:

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

--001a11436fc29c3bb70567995701
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello guys,<br><br></div>I tried to use openblas=
 recipe from <a href=3D"https://layers.openembedded.org/layerindex/recipe/6=
8888/">https://layers.openembedded.org/layerindex/recipe/68888/</a> <br><a =
href=3D"http://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-ex=
tra/recipes-convnet/openblas/openblas_0.2.19.bb" style=3D"color:rgb(0,136,2=
04);text-decoration:none;font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255)">recipes-convnet/openblas/openblas_0=
.2.19.bb</a><br><br></div>Unfortunately got compiling error btw I notice th=
ere is further openBLAS release 0.2.20, is there any update on that recipe?=
<br><div><br><br></div><div>Compiling problems:<br><br>NOTE: Executing RunQ=
ueue Tasks<br>ERROR: openblas-0.2.19-r0 do_compile: oe_runmake failed<br>ER=
ROR: openblas-0.2.19-r0 do_compile: Function failed: do_compile (log file i=
s located at ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/=
0.2.19-r0/temp/log.do_compile.2836)<br>ERROR: Logfile of failure stored in:=
 ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/te=
mp/log.do_compile.2836<br>Log data follows:<br>| DEBUG: Executing shell fun=
ction do_compile<br>| NOTE: make -j 4 HOSTCC=3Dgcc=C2=A0 CC=3Darm-poky-linu=
x-gnueabi-gcc=C2=A0 --sysroot=3D../build/tmp/sysroots/ ONLY_CBLAS=3D1 BINAR=
Y=3D32 TARGET=3Darm<br>| make[1]: warning: -jN forced in submake: disabling=
 jobserver mode.<br>| make[1]: Entering directory &#39;../build/tmp/work/co=
rtexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0/OpenBLAS-0.2.19/interfa=
ce&#39;<br>| arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D../build/tmp/sysr=
oots/=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=
=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=
=3D/usr/src/debug/openblas/0.2.19-r0 -fdebug-prefix-map=3D../build/tmp/sysr=
oots/x86_64-linux=3D -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=C2=A0 -=
O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DN=
O_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMF=
NAME=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_NAME=3D\&quot;_\&quot; -DCHAR_CNAME=
=3D\&quot;\&quot; -DNO_AFFINITY -I. -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_=
INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DM=
AX_CPU_NUMBER=3D4 -DASMNAME=3Dcblas_isamax -DASMFNAME=3Dcblas_isamax_ -DNAM=
E=3Dcblas_isamax_ -DCNAME=3Dcblas_isamax -DCHAR_NAME=3D\&quot;cblas_isamax_=
\&quot; -DCHAR_CNAME=3D\&quot;cblas_isamax\&quot; -DNO_AFFINITY -I.. -I. -U=
DOUBLE=C2=A0 -UCOMPLEX -DCBLAS -c -DUSE_ABS -UUSE_MIN imax.c -o cblas_isama=
x.o<br>| arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D../build/tmp/sysroots=
/=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D..=
/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r0=3D/us=
r/src/debug/openblas/0.2.19-r0 -fdebug-prefix-map=3D../build/tmp/sysroots/x=
86_64-linux=3D -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=C2=A0 -O2 -DM=
AX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPA=
CKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=
=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_NAME=3D\&quot;_\&quot; -DCHAR_CNAME=3D\&q=
uot;\&quot; -DNO_AFFINITY -I. -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERF=
ACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU=
_NUMBER=3D4 -DASMNAME=3Dcblas_sasum -DASMFNAME=3Dcblas_sasum_ -DNAME=3Dcbla=
s_sasum_ -DCNAME=3Dcblas_sasum -DCHAR_NAME=3D\&quot;cblas_sasum_\&quot; -DC=
HAR_CNAME=3D\&quot;cblas_sasum\&quot; -DNO_AFFINITY -I.. -I. -UDOUBLE=C2=A0=
 -UCOMPLEX -DCBLAS -c asum.c -o cblas_sasum.o<br>| arm-poky-linux-gnueabi-g=
cc=C2=A0 --sysroot=3D../build/tmp/sysroots/=C2=A0 -O2 -pipe -g -feliminate-=
unused-debug-types -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-p=
oky-linux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0 -f=
debug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=
=3D../build/tmp/sysroots/=3D=C2=A0 -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_I=
NTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMA=
X_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_N=
AME=3D\&quot;_\&quot; -DCHAR_CNAME=3D\&quot;\&quot; -DNO_AFFINITY -I. -O2 -=
DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LA=
PACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3Dcblas_saxpy=
 -DASMFNAME=3Dcblas_saxpy_ -DNAME=3Dcblas_saxpy_ -DCNAME=3Dcblas_saxpy -DCH=
AR_NAME=3D\&quot;cblas_saxpy_\&quot; -DCHAR_CNAME=3D\&quot;cblas_saxpy\&quo=
t; -DNO_AFFINITY -I.. -I. -UDOUBLE=C2=A0 -UCOMPLEX -DCBLAS -c axpy.c -o cbl=
as_saxpy.o<br>| arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D../build/tmp/s=
ysroots/=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-m=
ap=3D../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-r=
0=3D/usr/src/debug/openblas/0.2.19-r0 -fdebug-prefix-map=3D../build/tmp/sys=
roots/x86_64-linux=3D -fdebug-prefix-map=3D../build/tmp/sysroots/=3D=C2=A0 =
-O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -D=
NO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASM=
FNAME=3D_ -DNAME=3D_ -DCNAME=3D -DCHAR_NAME=3D\&quot;_\&quot; -DCHAR_CNAME=
=3D\&quot;\&quot; -DNO_AFFINITY -I. -O2 -DMAX_STACK_ALLOC=3D2048 -Wall -DF_=
INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DM=
AX_CPU_NUMBER=3D4 -DASMNAME=3Dcblas_scopy -DASMFNAME=3Dcblas_scopy_ -DNAME=
=3Dcblas_scopy_ -DCNAME=3Dcblas_scopy -DCHAR_NAME=3D\&quot;cblas_scopy_\&qu=
ot; -DCHAR_CNAME=3D\&quot;cblas_scopy\&quot; -DNO_AFFINITY -I.. -I. -UDOUBL=
E=C2=A0 -UCOMPLEX -DCBLAS -c copy.c -o cblas_scopy.o<br>| &lt;command-line&=
gt;:0:0: warning: &quot;ASMNAME&quot; redefined<br>| &lt;command-line&gt;:0=
:0: warning: &quot;ASMNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: n=
ote: this is the location of the previous definition<br>| &lt;command-line&=
gt;:0:0: warning: &quot;ASMFNAME&quot; redefined<br>| &lt;command-line&gt;:=
0:0: note: this is the location of the previous definition<br>| &lt;command=
-line&gt;:0:0: warning: &quot;NAME&quot; redefined<br>| &lt;command-line&gt=
;:0:0: note: this is the location of the previous definition<br>| &lt;comma=
nd-line&gt;:0:0: warning: &quot;CNAME&quot; redefined<br>| &lt;command-line=
&gt;:0:0: note: this is the location of the previous definition<br>| &lt;co=
mmand-line&gt;:0:0: warning: &quot;CHAR_NAME&quot; redefined<br>| &lt;comma=
nd-line&gt;:0:0: note: this is the location of the previous definition<br>|=
 &lt;command-line&gt;:0:0: warning: &quot;CHAR_CNAME&quot; redefined<br>| &=
lt;command-line&gt;:0:0: note: this is the location of the previous definit=
ion<br>| &lt;command-line&gt;:0:0: warning: &quot;ASMNAME&quot; redefined<b=
r>| &lt;command-line&gt;:0:0: note: this is the location of the previous de=
finition<br>| &lt;command-line&gt;:0:0: warning: &quot;ASMFNAME&quot; redef=
ined<br>| &lt;command-line&gt;:0:0: note: this is the location of the previ=
ous definition<br>| &lt;command-line&gt;:0:0: warning: &quot;NAME&quot; red=
efined<br>| In file included from ../build/tmp/sysroots//usr/include/featur=
es.h:392:0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots//u=
sr/include/stdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from imax.c:39:<br>|=
 ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error: gnu/stub=
s-soft.h: No such file or directory<br>|=C2=A0 # include &lt;gnu/stubs-soft=
.h&gt;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>| &l=
t;command-line&gt;:0:0: note: this is the location of the previous definiti=
on<br>| &lt;command-line&gt;:0:0: warning: &quot;CNAME&quot; redefined<br>|=
 &lt;command-line&gt;:0:0: note: this is the location of the previous defin=
ition<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_NAME&quot; redefin=
ed<br>| &lt;command-line&gt;:0:0: note: this is the location of the previou=
s definition<br>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_CNAME&quot;=
 redefined<br>| &lt;command-line&gt;:0:0: note: this is the location of the=
 previous definition<br>| &lt;command-line&gt;:0:0: note: this is the locat=
ion of the previous definition<br>| &lt;command-line&gt;:0:0: warning: &quo=
t;ASMFNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note: this is the=
 location of the previous definition<br>| &lt;command-line&gt;:0:0: warning=
: &quot;NAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note: this is t=
he location of the previous definition<br>| &lt;command-line&gt;:0:0: warni=
ng: &quot;CNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note: this i=
s the location of the previous definition<br>| &lt;command-line&gt;:0:0: wa=
rning: &quot;CHAR_NAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note:=
 this is the location of the previous definition<br>| &lt;command-line&gt;:=
0:0: warning: &quot;CHAR_CNAME&quot; redefined<br>| &lt;command-line&gt;:0:=
0: note: this is the location of the previous definition<br>| &lt;command-l=
ine&gt;:0:0: warning: &quot;ASMNAME&quot; redefined<br>| &lt;command-line&g=
t;:0:0: note: this is the location of the previous definition<br>| &lt;comm=
and-line&gt;:0:0: warning: &quot;ASMFNAME&quot; redefined<br>| &lt;command-=
line&gt;:0:0: note: this is the location of the previous definition<br>| &l=
t;command-line&gt;:0:0: warning: &quot;NAME&quot; redefined<br>| &lt;comman=
d-line&gt;:0:0: note: this is the location of the previous definition<br>| =
&lt;command-line&gt;:0:0: warning: &quot;CNAME&quot; redefined<br>| &lt;com=
mand-line&gt;:0:0: note: this is the location of the previous definition<br=
>| &lt;command-line&gt;:0:0: warning: &quot;CHAR_NAME&quot; redefined<br>| =
In file included from ../build/tmp/sysroots//usr/include/features.h:392:0,<=
br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots//usr/include/s=
tdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from axpy.c:39:<br>| ../build/tm=
p/sysroots//usr/include/gnu/stubs.h:7:29: fatal error: gnu/stubs-soft.h: No=
 such file or directory<br>|=C2=A0 # include &lt;gnu/stubs-soft.h&gt;<br>|=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| &lt;command-line&gt;:0:0: note: this is the=
 location of the previous definition<br>| &lt;command-line&gt;:0:0: warning=
: &quot;CHAR_CNAME&quot; redefined<br>| &lt;command-line&gt;:0:0: note: thi=
s is the location of the previous definition<br>| ERROR: oe_runmake failed<=
br>| In file included from ../build/tmp/sysroots//usr/include/features.h:39=
2:0,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots//usr/includ=
e/stdio.h:27,<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from asum.c:39:<br>| ../build=
/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal error: gnu/stubs-soft.h:=
 No such file or directory<br>|=C2=A0 # include &lt;gnu/stubs-soft.h&gt;<br=
>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>| In file inc=
luded from ../build/tmp/sysroots//usr/include/features.h:392:0,<br>|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 from ../build/tmp/sysroots//usr/include/stdio.h:27,<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from copy.c:39:<br>| ../build/tmp/sysroots//=
usr/include/gnu/stubs.h:7:29: fatal error: gnu/stubs-soft.h: No such file o=
r directory<br>|=C2=A0 # include &lt;gnu/stubs-soft.h&gt;<br>|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^<br>| compilation terminated.<br>| compilation terminated.<br=
>| Makefile:1351: recipe for target &#39;cblas_isamax.o&#39; failed<br>| ma=
ke[1]: *** [cblas_isamax.o] Error 1<br>| make[1]: *** Waiting for unfinishe=
d jobs....<br>| Makefile:1375: recipe for target &#39;cblas_sasum.o&#39; fa=
iled<br>| make[1]: *** [cblas_sasum.o] Error 1<br>| Makefile:1447: recipe f=
or target &#39;cblas_scopy.o&#39; failed<br>| make[1]: *** [cblas_scopy.o] =
Error 1<br>| Makefile:1435: recipe for target &#39;cblas_saxpy.o&#39; faile=
d<br>| make[1]: *** [cblas_saxpy.o] Error 1<br>| make[1]: Leaving directory=
 &#39;../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0.2.19-=
r0/OpenBLAS-0.2.19/interface&#39;<br>| Makefile:133: recipe for target &#39=
;libs&#39; failed<br>| make: *** [libs] Error 1<br>| ERROR: Function failed=
: do_compile (log file is located at ../build/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/openblas/0.2.19-r0/temp/log.do_compile.2836)<br>ERROR: Task =
(../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/openblas/ope=
nblas_0.2.19.bb:do_compile) failed with exit code &#39;1&#39;<br>NOTE: Task=
s Summary: Attempted 433 tasks of which 432 didn&#39;t need to be rerun and=
 1 failed.<br><br></div></div>

--001a11436fc29c3bb70567995701--
