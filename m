Return-Path: <minipada@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CECEE00DD2; Sat, 26 Nov 2016 05:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (minipada[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f177.google.com (mail-wj0-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C04FE00BEB
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2016 05:32:26 -0800 (PST)
Received: by mail-wj0-f177.google.com with SMTP id xy5so79144936wjc.0
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2016 05:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=C3qidvoGRhcFlZvVD4RIaqMmfbwleOQiKbTXMfq4m2M=;
	b=ix3QD07S1vhC5nAAxesiDCgMaVA6js/Fk+ptl2gCW6dhzmr4F6FJ5zhW/rKYzB9c+M
	iQK8Y58c8c+I7EEwrY4XeVLgpxHDWW16BQh49fFiMWgh8dMSVLj9HTCqGx5T88UdckFn
	3Yv5swG3olLEZKMpo5r/UNHF4XkzLxLBvpsW3quARZTKBaqbBruZvt9j3oRlzhf7D779
	+jMmJWqRkY67loEjqmJUyUNKX0aoOokgjX2diZ3dArygxbWpE8BXB8613abHvEULymNc
	Z/onL6vgNBF62J0RUsQ8oMm4k0R7+86UCQh2wmM0BKmJP+PlSlyPJUUPFq+HCAwApzV+
	gytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=C3qidvoGRhcFlZvVD4RIaqMmfbwleOQiKbTXMfq4m2M=;
	b=SuLSM+IhfDfHgxgPmLnXG542KHei/yFHz92scEO4pnb54fp9mKHTz8fnsCjDX65f66
	oCNOzEMjXl+oREPx2aADRV+n7rfE6rYcs84MSQg2vUzDlzJu644sUpH0UQ6fsTmZIKgd
	5Lu9ZSELBhq0nsuzzl0WAHo/cDt6lf5l+WUAAwXP9RdohUCbiXXEOUgpEeXYcFSqTriK
	NC2Ogit0WDTueirhpK/X7jOaPzu37dtlHn2BScB/JW66rRcbIdgvXWyQv4vFAROMrtO/
	Y0Pp1MmQH+fEQu81fOWEhxqSGGDcX2n3p8f4oAiB3rSYJ0FO2RVZOgoJR9olTVgR5iFt
	BFxw==
X-Gm-Message-State: AKaTC00vkfr+0ON3yXPh3R46PXX78PraEcqDW3tUSAQswRgqIvRpK2yLJPWtBDWCNhwCHpxDgGEbx50l0aLfgQ==
X-Received: by 10.194.7.233 with SMTP id m9mr11430225wja.108.1480167144840;
	Sat, 26 Nov 2016 05:32:24 -0800 (PST)
MIME-Version: 1.0
From: david bensoussan <minipada@gmail.com>
Date: Sat, 26 Nov 2016 13:32:14 +0000
Message-ID: <CALxi_JGQkW8hsJtD=O-niX9n6A37BOh4J=EzjD75FSi_X9h5UA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Libgfortran 6.2 doesn't compile
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
X-List-Received-Date: Sat, 26 Nov 2016 13:32:30 -0000
Content-Type: multipart/alternative; boundary=047d7b5d57d0e0639005423444ea

--047d7b5d57d0e0639005423444ea
Content-Type: text/plain; charset=UTF-8

Hello,
I am trying to compile libgfortran 6.2 on Yocto (Morty version) but can't.

    DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
    DEBUG: Executing shell function do_compile
    NOTE: make -j 8
MULTIBUILDTOP=/var/www/toaster/openembedded-core/build-toaster-2/tmp-glibc/work/i586-oe-linux/libgf$
    /bin/bash
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/mk-sik-inc.sh
'i586-oe-linux-gfort$
    /bin/bash
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/mk-srk-inc.sh
'i586-oe-linux-gfort$
    /bin/bash
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/mk-kinds-h.sh
'i586-oe-linux-gfort$
    grep '^#' <
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/c99_protos.h
> c99_protos.inc
    cp
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/config/fpu-387.h
fpu-target.h
    grep '^#define GFC_FPE_' <
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/../gcc/fortran/li$
    grep '^#define GFC_FPE_' <
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/libgfortran.h
>> $
    grep '^#' < kinds.h > kinds.inc
    make  all-am
    make[1]: Entering directory
`/var/www/toaster/openembedded-core/build-toaster-2/tmp-glibc/work/i586-oe-linux/libgfo$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=CC   --mode=compile i586-oe-linux-gcc  -m32
-march=i586 --sysroot=/var/www/toaster/opene$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=i586
--sysroot=/var/www/toaster/openembedded-core/build-toaster-2/$

../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/runtime/backtrace.c:37:33:
fatal error: back$
     #include "backtrace-supported.h"
                                     ^
    compilation terminated.
    make[1]: *** [backtrace.lo] Error 1
    make[1]: *** Waiting for unfinished jobs....

I have default yocto configuration, I simply added:

    FORTRAN_forcevariable = ",fortran"

to enable it.

Am I doing something wrong or is it unstable?

--047d7b5d57d0e0639005423444ea
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I am trying to compile libgfortran 6=
.2 on Yocto (Morty version) but can&#39;t.</div><div><br></div><div>=C2=A0 =
=C2=A0 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;i=
x86-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;i586-=
linux&#39;, &#39;common&#39;]</div><div>=C2=A0 =C2=A0 DEBUG: Executing shel=
l function do_compile</div><div>=C2=A0 =C2=A0 NOTE: make -j 8 MULTIBUILDTOP=
=3D/var/www/toaster/openembedded-core/build-toaster-2/tmp-glibc/work/i586-o=
e-linux/libgf$</div><div>=C2=A0 =C2=A0 /bin/bash ../../../../../../../../wo=
rk-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/mk-sik-inc.sh &#39;i586-oe-lin=
ux-gfort$</div><div>=C2=A0 =C2=A0 /bin/bash ../../../../../../../../work-sh=
ared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/mk-srk-inc.sh &#39;i586-oe-linux-gf=
ort$</div><div>=C2=A0 =C2=A0 /bin/bash ../../../../../../../../work-shared/=
gcc-6.2.0-r0/gcc-6.2.0/libgfortran/mk-kinds-h.sh &#39;i586-oe-linux-gfort$<=
/div><div>=C2=A0 =C2=A0 grep &#39;^#&#39; &lt; ../../../../../../../../work=
-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/c99_protos.h &gt; c99_protos.inc=
</div><div>=C2=A0 =C2=A0 cp ../../../../../../../../work-shared/gcc-6.2.0-r=
0/gcc-6.2.0/libgfortran/config/fpu-387.h fpu-target.h</div><div>=C2=A0 =C2=
=A0 grep &#39;^#define GFC_FPE_&#39; &lt; ../../../../../../../../work-shar=
ed/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/../gcc/fortran/li$</div><div>=C2=A0 =
=C2=A0 grep &#39;^#define GFC_FPE_&#39; &lt; ../../../../../../../../work-s=
hared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/libgfortran.h &gt;&gt; $</div><div=
>=C2=A0 =C2=A0 grep &#39;^#&#39; &lt; kinds.h &gt; kinds.inc</div><div>=C2=
=A0 =C2=A0 make =C2=A0all-am</div><div>=C2=A0 =C2=A0 make[1]: Entering dire=
ctory `/var/www/toaster/openembedded-core/build-toaster-2/tmp-glibc/work/i5=
86-oe-linux/libgfo$</div><div>=C2=A0 =C2=A0 /bin/bash ./libtool =C2=A0--tag=
=3DCC =C2=A0 --mode=3Dcompile i586-oe-linux-gcc =C2=A0-m32 -march=3Di586 --=
sysroot=3D/var/www/toaster/opene$</div><div>=C2=A0 =C2=A0 /bin/bash ./libto=
ol =C2=A0--tag=3DCC =C2=A0 --mode=3Dcompile i586-oe-linux-gcc =C2=A0-m32 -m=
arch=3Di586 --sysroot=3D/var/www/toaster/opene$</div><div>=C2=A0 =C2=A0 /bi=
n/bash ./libtool =C2=A0--tag=3DCC =C2=A0 --mode=3Dcompile i586-oe-linux-gcc=
 =C2=A0-m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$</div><div>=C2=
=A0 =C2=A0 /bin/bash ./libtool =C2=A0--tag=3DCC =C2=A0 --mode=3Dcompile i58=
6-oe-linux-gcc =C2=A0-m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$=
</div><div>=C2=A0 =C2=A0 /bin/bash ./libtool =C2=A0--tag=3DCC =C2=A0 --mode=
=3Dcompile i586-oe-linux-gcc =C2=A0-m32 -march=3Di586 --sysroot=3D/var/www/=
toaster/opene$</div><div>=C2=A0 =C2=A0 /bin/bash ./libtool =C2=A0--tag=3DCC=
 =C2=A0 --mode=3Dcompile i586-oe-linux-gcc =C2=A0-m32 -march=3Di586 --sysro=
ot=3D/var/www/toaster/opene$</div><div>=C2=A0 =C2=A0 /bin/bash ./libtool =
=C2=A0--tag=3DCC =C2=A0 --mode=3Dcompile i586-oe-linux-gcc =C2=A0-m32 -marc=
h=3Di586 --sysroot=3D/var/www/toaster/opene$</div><div>=C2=A0 =C2=A0 /bin/b=
ash ./libtool =C2=A0--tag=3DCC =C2=A0 --mode=3Dcompile i586-oe-linux-gcc =
=C2=A0-m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 libtool: compile: =C2=A0i586-oe-linux-gcc -m32 -march=3Di586 --s=
ysroot=3D/var/www/toaster/openembedded-core/build-toaster-2/$</div><div>=C2=
=A0 =C2=A0 ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgf=
ortran/runtime/backtrace.c:37:33: fatal error: back$</div><div>=C2=A0 =C2=
=A0 =C2=A0#include &quot;backtrace-supported.h&quot;</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div>=C2=A0 =C2=A0 c=
ompilation terminated.</div><div>=C2=A0 =C2=A0 make[1]: *** [backtrace.lo] =
Error 1</div><div>=C2=A0 =C2=A0 make[1]: *** Waiting for unfinished jobs...=
.</div><div><br></div><div>I have default yocto configuration, I simply add=
ed:</div><div><br></div><div>=C2=A0 =C2=A0 FORTRAN_forcevariable =3D &quot;=
,fortran&quot;</div><div>=C2=A0 =C2=A0=C2=A0</div><div>to enable it.</div><=
div><br></div><div>Am I doing something wrong or is it unstable?</div><div>=
<br></div></div>

--047d7b5d57d0e0639005423444ea--
