Return-Path: <prvs=114075f102=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB26BE00997; Sun, 27 Nov 2016 22:44:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.218 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 186 seconds by postgrey-1.32 at yocto-www;
	Sun, 27 Nov 2016 22:44:17 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F011E00905
	for <yocto@yoctoproject.org>; Sun, 27 Nov 2016 22:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1480315456;
	l=5671; s=domk; d=rsi-elektrotechnik.de;
	h=Content-transfer-encoding:Content-type:Mime-version:In-Reply-To:
	References:To:From:Subject:Date;
	bh=nRUZe5mna/w1uYsHKgMEsAhrKLOSGv0VgwJ9LIajcJY=;
	b=i/yY/jA4eM3aU1fmb21G56p++Xj+rumta3lG4p5nYtfgX4u9wWqT8bN4v+6Hwi+lVQ
	RX3IlorJnIcg8XAX4uF5K4gNGn39qxwxEgqJkdhCSMQlCDwwYF7VqSSdpWpIVCW+Xt4u
	jNhjh/LEPrQjo6lJdQpmnpDEc+yusEN9LdfGI=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N26eC0MVrEDIlpLg0lWA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 39.9 AUTH)
	with ESMTPSA id 9097e2sAS6f9kl1
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Mon, 28 Nov 2016 07:41:09 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-:256) (MDaemon PRO v16.5.1) 
	with ESMTPSA id md50000481381.msg; Mon, 28 Nov 2016 07:40:58 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Mon, 28 Nov 2016 07:40:58 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=114075f102=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
User-Agent: Microsoft-MacOutlook/f.1c.1.161117
Date: Mon, 28 Nov 2016 07:40:56 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: david bensoussan <minipada@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <DEE62A05-CEDD-45BB-B349-9D856BD6ED29@rsi-elektrotechnik.de>
Thread-Topic: [yocto] Libgfortran 6.2 doesn't compile
References: <CALxi_JGQkW8hsJtD=O-niX9n6A37BOh4J=EzjD75FSi_X9h5UA@mail.gmail.com>
In-Reply-To: <CALxi_JGQkW8hsJtD=O-niX9n6A37BOh4J=EzjD75FSi_X9h5UA@mail.gmail.com>
Mime-version: 1.0
Subject: Re: Libgfortran 6.2 doesn't compile
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
X-List-Received-Date: Mon, 28 Nov 2016 06:44:20 -0000
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

Hello David,

Von: <yocto-bounces@yoctoproject.org> im Auftrag von david bensoussan <mini=
pada@gmail.com>
Datum: Samstag, 26. November 2016 um 14:32
An: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Betreff: [yocto] Libgfortran 6.2 doesn't compile

Hello,
I am trying to compile libgfortran 6.2 on Yocto (Morty version) but can't.

    DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-li=
nux', 'common-glibc', 'i586-linux', 'common']
    DEBUG: Executing shell function do_compile
    NOTE: make -j 8 MULTIBUILDTOP=3D/var/www/toaster/openembedded-core/buil=
d-toaster-2/tmp-glibc/work/i586-oe-linux/libgf$
    /bin/bash ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/li=
bgfortran/mk-sik-inc.sh 'i586-oe-linux-gfort$
    /bin/bash ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/li=
bgfortran/mk-srk-inc.sh 'i586-oe-linux-gfort$
    /bin/bash ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/li=
bgfortran/mk-kinds-h.sh 'i586-oe-linux-gfort$
    grep '^#' < ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/=
libgfortran/c99_protos.h > c99_protos.inc
    cp ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortr=
an/config/fpu-387.h fpu-target.h
    grep '^#define GFC_FPE_' < ../../../../../../../../work-shared/gcc-6.2.=
0-r0/gcc-6.2.0/libgfortran/../gcc/fortran/li$
    grep '^#define GFC_FPE_' < ../../../../../../../../work-shared/gcc-6.2.=
0-r0/gcc-6.2.0/libgfortran/libgfortran.h >> $
    grep '^#' < kinds.h > kinds.inc
    make  all-am
    make[1]: Entering directory `/var/www/toaster/openembedded-core/build-t=
oaster-2/tmp-glibc/work/i586-oe-linux/libgfo$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    /bin/bash ./libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux-gcc  -=
m32 -march=3Di586 --sysroot=3D/var/www/toaster/opene$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sysroot=3D/va=
r/www/toaster/openembedded-core/build-toaster-2/$
    ../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgfortran/=
runtime/backtrace.c:37:33: fatal error: back$
     #include "backtrace-supported.h"
                                     ^
    compilation terminated.
    make[1]: *** [backtrace.lo] Error 1
    make[1]: *** Waiting for unfinished jobs....

Yes, lately libfortran has changed their own backtrace implementation for t=
he generic one.

I have default yocto configuration, I simply added:

    FORTRAN_forcevariable =3D ",fortran"
   =20
to enable it.

Am I doing something wrong or is it unstable?

You are not doing wrong, the recipe is just broken at the moment. Unfortuna=
tely, the fix seems to be non-trivial and nobody has gotten round to do it =
yet. Basically the libgcc-recipe infrastructure has to be made libbacktrace=
-aware.

The only workaround that I know of at the moment is to stick with a libgfor=
tran version before the libbacktrace change, which should be anything from =
the 5.X gcc family.
Greetz

-- _______________________________________________ yocto mailing list yocto=
@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto=20


=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548






_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


