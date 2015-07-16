Return-Path: <dkimble@alticast.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1777BE009D2; Thu, 16 Jul 2015 10:21:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from CAS.ALTICAST.COM (mail.alticast.com [210.223.111.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A07A7E00984
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:21:42 -0700 (PDT)
Received: from MDBA.ALTICAST.COM (10.20.1.13) by MDBA.ALTICAST.COM
	(10.20.1.13) with Microsoft SMTP Server (TLS) id 15.0.847.32;
	Fri, 17 Jul 2015 02:20:57 +0900
Received: from MDBA.ALTICAST.COM ([::1]) by MDBA.ALTICAST.COM
	([fe80::a120:603e:ce7f:b63a%22]) with mapi id 15.00.0847.030;
	Fri, 17 Jul 2015 02:20:57 +0900
From: Dave Kimble <dkimble@alticast.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] using gdb with externalsrc
Thread-Index: AQHQvow+Np9lhVRZQU2DpV3k5r/M/Z3ct0rS//+jYACAAJqvrf//3A0AgAF89/Q=
Date: Thu, 16 Jul 2015 17:20:56 +0000
Message-ID: <3807b632959942309eac8a86154420a2@MDBA.ALTICAST.COM>
References: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
	<18f7ce035aef414a9f831b93f7891401@MDBA.ALTICAST.COM>
	<CAMKF1sonpFNZJo4W6hr9tZgwYFLK=FQTYRm-nqonzWgqYMJPyg@mail.gmail.com>
	<13cb666befe542429cf1351610232147@MDBA.ALTICAST.COM>,
	<CAMKF1sqOkmFAwGWJ4PJWcJUy+F6SVrhoKGBmiWcg6+ZNPB4xqA@mail.gmail.com>
In-Reply-To: <CAMKF1sqOkmFAwGWJ4PJWcJUy+F6SVrhoKGBmiWcg6+ZNPB4xqA@mail.gmail.com>
Accept-Language: en-US, ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [107.1.177.180]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Jul 2015 02:42:32 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using gdb with externalsrc
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
X-List-Received-Date: Thu, 16 Jul 2015 17:21:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The path is S (externalsrc path).=0A=
=0A=
compiler flags:=0A=
i586-poky-linux-gcc  -m32 -march=3Di586 --sysroot=3D[sysroot dir] -DHAVE_CO=
NFIG_H -I. -I[externalsrc dir] -I..   -D_ANSC_LINUX -D_ANSC_USER -D_ANSC_LI=
TTLE_ENDIAN_  -O2 -pipe -g -feliminate-unused-debug-types     -c -o [compon=
ent].o `test -f '[component source file]' =0A=
=0A=
(gdb) show directories=0A=
Source directories searched: $cdir:$cwd=0A=
=0A=
=0A=
Would it work to do add a do_package_append() that just manually copies the=
 sources?=0A=
=0A=
=0A=
________________________________________=0A=
From: Khem Raj <raj.khem@gmail.com>=0A=
Sent: Wednesday, July 15, 2015 8:54 PM=0A=
To: Dave Kimble=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] using gdb with externalsrc=0A=
=0A=
On Wed, Jul 15, 2015 at 2:52 PM, Dave Kimble <dkimble@alticast.com> wrote:=
=0A=
> Yes, I'm able to debug the externalsrc component. I can see variables, se=
t=0A=
> breakpoints, step/next through the code etc. (so the symbols are valid). =
And=0A=
> local changes to the externalsrc component are reflected when I debug.=0A=
>=0A=
> But I can't list the externalsrc component source code from within gdb (o=
r=0A=
> find it anywhere in the image). The source for all of the other component=
s=0A=
> is in the image (and I can list it in gdb). When I try to list the code f=
or=0A=
> the externalsrc component, gdb prints this error message:=0A=
> "[path on my build machine]/sourceFile.c: No such file or directory."=0A=
=0A=
is this path pointing to S which is externalsrc path or to B which is=0A=
under build TMPDIR=0A=
and secondly, can you see compiler flags used during build for externalsrc =
?=0A=
=0A=
are you using master branch ?=0A=
=0A=
what does show directories say=0A=
=0A=
>=0A=
> If I don't use externalsrc at all, I can debug all of the components and=
=0A=
> list source code for all of them from within gdb.=0A=
>=0A=
> So, I can't solve how to get the externalsrc source code into the image. =
I=0A=
> don't mind if I have to use "set substitute-path" from within gdb if=0A=
> externalsrc source files are put in a different place (although, it'd be=
=0A=
> ideal if they were put in the same place).=0A=
>=0A=
=0A=
sources are embedded in debug info, most probably when debug-split is done=
=0A=
at that point there could be something going wrong where its not able=0A=
to put the right path links=0A=

