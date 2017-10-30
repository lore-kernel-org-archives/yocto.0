Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 261C1E00D8C; Sun, 29 Oct 2017 21:25:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-132.dsl.connexus.net.au
	[203.122.143.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF14DE00D85
	for <yocto@yoctoproject.org>; Sun, 29 Oct 2017 21:25:22 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Mon, 30 Oct 2017 15:25:19 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 30 Oct 2017 15:25:17 +1100
Thread-Topic: fontconfig-native build error
Thread-Index: AdNRNl3ct1xi9wLqStKFIaxcb0yULQ==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F094B8AD@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23424.006
x-tm-as-result: No-3.659300-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: fontconfig-native build error
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
X-List-Received-Date: Mon, 30 Oct 2017 04:25:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've been building a project with 'morty' with no problems for a few months=
, using Ubuntu 16.04.

Today, I've just tried doing a build on a fresh Ubuntu 17.10 VM. But I'm ge=
tting a build error for fontconfig-native:


x86_64-linux-libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I../../fontconfig-=
2.12.1/src -I.. -I../../fontconfig-2.12.1 -I../../fontconfig-2.12.1/src -I/=
home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include/freetype=
2 -I/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include -I/=
home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include -Wall -W=
pointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declaratio=
ns -Wnested-externs -fno-strict-aliasing -DFC_CACHEDIR=3D\"/home/craigm/yoc=
to/poky/build/tmp/sysroots/x86_64-linux/var/cache/fontconfig\" -DFONTCONFIG=
_PATH=3D\"/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/fonts=
\" -isystem/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/incl=
ude -isystem/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/inc=
lude -O2 -pipe -pthread -c ../../fontconfig-2.12.1/src/fcobjs.c  -fPIC -DPI=
C -o .libs/fcobjs.o
ERROR: oe_runmake failed
../../fontconfig-2.12.1/src/fcmatch.c:324:63: error: 'PRI_CHAR_WIDTH_STRONG=
' undeclared here (not in a function); did you mean 'PRI_WIDTH_STRONG'?
 #define FC_OBJECT(NAME, Type, Cmp) { FC_##NAME##_OBJECT, Cmp, PRI_##NAME##=
_STRONG, PRI_##NAME##_WEAK },
                                                               ^
../../fontconfig-2.12.1/src/fcobjs.h:54:1: note: in expansion of macro 'FC_=
OBJECT'
 FC_OBJECT (CHAR_WIDTH,  FcTypeInteger, NULL)
 ^~~~~~~~~
../../fontconfig-2.12.1/src/fcmatch.c:324:84: error: 'PRI_CHAR_WIDTH_WEAK' =
undeclared here (not in a function); did you mean 'PRI_WIDTH_WEAK'?
 #define FC_OBJECT(NAME, Type, Cmp) { FC_##NAME##_OBJECT, Cmp, PRI_##NAME##=
_STRONG, PRI_##NAME##_WEAK },
                                                                           =
         ^
../../fontconfig-2.12.1/src/fcobjs.h:54:1: note: in expansion of macro 'FC_=
OBJECT'
 FC_OBJECT (CHAR_WIDTH,  FcTypeInteger, NULL)
 ^~~~~~~~~
Makefile:632: recipe for target 'fcmatch.lo' failed
make[3]: *** [fcmatch.lo] Error 1


Funnily enough, fontconfig (not native) builds fine; it's only fontconfig-n=
ative that gives the above error.

Any advice on this? I would consider going back to Ubuntu 16.04; I would al=
so consider moving from morty to pyro or rocko (it's on my to-do list).

--=20
Craig McQueen


