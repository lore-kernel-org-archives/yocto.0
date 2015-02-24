Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A368EE008CD; Mon, 23 Feb 2015 22:34:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFB9EE00757
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 22:34:14 -0800 (PST)
Received: by pdbnh10 with SMTP id nh10so31137568pdb.11
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 22:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=/wCRkwrIbXV/e4KAej8PqtJteCabyZOsmYnloMRwFlE=;
	b=esuudj8JPixg4ISoeOZTVR4YR81X8DKgPLHPbaDj0sUY9Jykiq/1X7iSL1sxKpdcE3
	/HMSwc6Wxoju50dhpDuTuo1qfM0JAcuCPsUmvcu7lUklfrTVOVjiNx/0s774tMv6iZf8
	Qvf55A+CCg8UpNr46w5VT1ulYz59xOkmTPaotGghmi3gZdYdD9xR0pj3Z4NMxiAhPw15
	g8EH0nTGCDMzxuYAQ0mfuGC8Hx+Xud8+PFg/iMH7GxrssTCyd48bzRWhwFNv0NhDgSrD
	qecHfCTjqIeX4PqDhBl+nl7iU9BNOgb+FaIosNng+kO9Ty+daTQVhnOiEWCwWz+nz04Y
	Ikcg==
X-Received: by 10.68.57.139 with SMTP id i11mr1175189pbq.59.1424759654136;
	Mon, 23 Feb 2015 22:34:14 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:201b:b105:13ca:8330?
	([2601:9:3580:84c:201b:b105:13ca:8330])
	by mx.google.com with ESMTPSA id
	ci17sm37799334pdb.70.2015.02.23.22.34.12
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 23 Feb 2015 22:34:12 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <54E7D0D8.2060900@urbanec.net>
Date: Mon, 23 Feb 2015 22:34:11 -0800
Message-Id: <71B007D1-AE38-41DB-827E-67DE9A3C3DD1@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<1424455387.11836.57.camel@linuxfoundation.org>
	<54E7D0D8.2060900@urbanec.net>
To: Peter Urbanec <openembedded-devel@urbanec.net>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Tue, 24 Feb 2015 06:34:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Feb 20, 2015, at 4:27 PM, Peter Urbanec =
<openembedded-devel@urbanec.net> wrote:
>=20
> On 21/02/15 05:03, Richard Purdie wrote:
>> On Mon, 2015-02-02 at 02:02 -0800, Khem Raj wrote:
>>> I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
> ...
>> For info, I've now merged the glibc part of this change now too.
>=20
> It looks like the new glibc turns all gcc warnings into errors. That =
does not seem to work too well in all cases:

you seem to be overriding default selected optimization to use -Os =
instead of -O2, with 2.21 glibc is now using -Werror by default which is =
a good thing
but then not all combinations have been tested out so when you override =
the default opt level then please add -Wno-error as well. May be I =
should just send a patch to detect this usecase


>=20
> | mipsel-oe-linux-gcc -mel -mabi=3D32 -mhard-float =
--sysroot=3D/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwi=
z/inihdp/tmp-glibc/sysroots/inihdp-tcbootstrap pthread_equal.c -c =
-std=3Dgnu99 -fgnu89-inline  -Os -Wall -Werror -Winline -Wno-error=3Dundef=
 -Wundef -Wwrite-strings -feliminate-unused-debug-types =
-fmerge-all-constants -frounding-math -g -pipe -Wstrict-prototypes   =
-fPIC        -I../include =
-I/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/t=
mp-glibc/work/mips32el-oe-linux/glibc/glibc-2.21-r0/build-mipsel-oe-linux/=
nptl  =
-I/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/t=
mp-glibc/work/mips32el-oe-linux/glibc/glibc-2.21-r0/build-mipsel-oe-linux =
 -I../sysdeps/unix/sysv/linux/mips/mips32/fpu  =
-I../sysdeps/unix/sysv/linux/mips/mips32  =
-I../sysdeps/unix/sysv/linux/mips  -I../sysdeps/mips/nptl  =
-I../sysdeps/unix/sysv/linux/include -I../sysdeps/unix/sysv/linux  =
-I../sysdeps/nptl  -I../sysdeps/pthread  -I../sysdeps/gnu  -I../!
> sysdeps/un
> ix/inet  -I../sysdeps/unix/sysv  -I../sysdeps/unix/mips/mips32  =
-I../sysdeps/unix/mips  -I../sysdeps/unix  -I../sysdeps/posix  =
-I../sysdeps/mips/mips32/fpu  -I../sysdeps/mips/mips32  =
-I../sysdeps/mips/ieee754  -I../sysdeps/mips/soft-fp  =
-I../sysdeps/mips/include -I../sysdeps/mips  -I../sysdeps/ieee754/flt-32 =
 -I../sysdeps/ieee754/dbl-64  -I../sysdeps/wordsize-32  =
-I../sysdeps/mips/fpu  -I../sysdeps/ieee754  -I../sysdeps/generic  -I.. =
-I../libio -I. -nostdinc -isystem =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/sysroots/x86_64-linux/usr/lib/mipsel-oe-linux.gcc-cross-initial-mip=
sel/gcc/mipsel-oe-linux/4.9.2/include -isystem =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/sysroots/x86_64-linux/usr/lib/mipsel-oe-linux.gcc-cross-initial-mip=
sel/gcc/mipsel-oe-linux/4.9.2/include-fixed -isystem =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/sysroots/inihdp/usr/include  -D_LIBC_REE!
> NTRANT -in
> clude =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/work/mips32el-oe-linux/glibc/glibc-2.21-r0/build-mipsel-oe-linux/li=
bc-modules.h -DMODULE_NAME=3Dlibpthread -include =
../include/libc-symbols.h  -DPIC -DSHARED     -o =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/work/mips32el-oe-linux/glibc/glibc-2.21-r0/build-mipsel-oe-linux/np=
tl/pthread_equal.os -MD -MP -MF =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/work/mips32el-oe-linux/glibc/glibc-2.21-r0/build-mipsel-oe-linux/np=
tl/pthread_equal.os.dt -MT =
/home/peteru/Source/T3/build-enviroment-core-24/builds/beyonwiz/inihdp/tmp=
-glibc/work/mips32el-oe-linux/glibc/glibc-2.21-r0/build-mipsel-oe-linux/np=
tl/pthread_equal.os
> | In file included from allocatestack.c:30:0,
> |                  from pthread_create.c:55:
> | allocatestack.c: In function 'stack_list_add':
> | ../include/list.h:58:1: error: inlining failed in call to =
'list_add': call is unlikely and code size would grow [-Werror=3Dinline]
> |  list_add (list_t *newp, list_t *head)
> |  ^
> | In file included from pthread_create.c:55:0:
> | allocatestack.c:159:3: error: called from here [-Werror=3Dinline]
> |    list_add (elem, list);
> |    ^
>=20


