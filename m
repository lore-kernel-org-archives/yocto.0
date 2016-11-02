Return-Path: <Swapna.Gurumani@microchip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72CEFE00A64; Wed,  2 Nov 2016 13:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [198.175.253.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from email.microchip.com (exsmtp01.microchip.com [198.175.253.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF97E00912
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 13:17:13 -0700 (PDT)
Received: from CHN-SV-EXMX05.mchp-main.com ([fe80::88ec:a5e:b3b2:e58]) by
	CHN-SV-EXCH01.mchp-main.com ([fe80::9840:ffdf:ec5:1335%29]) with mapi
	id 14.03.0181.006; Wed, 2 Nov 2016 13:17:12 -0700
From: <Swapna.Gurumani@microchip.com>
To: <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] how to copy a tar file to Root file system
Thread-Index: AdIz3RmoIOKxDAIqRCm8SCX7sc6E+wAQVLEAAAxww2D//7a5gIAAbtBw///KQID//8OtMIABFqqA//7hdBA=
Date: Wed, 2 Nov 2016 20:17:11 +0000
Message-ID: <061E8AE63BCA5A41B92BC90F19C8225237AE791C@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE761C@CHN-SV-EXMX05.mchp-main.com>
	<3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.215.90]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Wed, 02 Nov 2016 20:17:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> Also if I look into the
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf
> -neon-
> poky-linux-gnueabi/crank/1.0-r2 It is empty.

There's something strange going on here, because the path you have just giv=
en is ${WORKDIR} - and that shouldn't be able to be empty at this point. If=
 nothing else there should be a "temp" directory under it containing logs i=
f
*any* tasks have run. Surely you have skipped out some steps between when i=
t was working and now? I notice the tarball name changed - did you regenera=
te it or just rename it?

Answer>> I renamed it. For some reason it was. But now its populated with l=
ot of stuff including the crank folder, temp, image etc..


In any case, when debugging situations like this it helps to make a fresh s=
tart - run "bitbake -c clean crank" (you don't need -c cleansstate because =
being stuck at do_install you haven't got to any real sstate tasks yet). Th=
en methodically run through each task - when do_unpack ran what got unpacke=
d into ${WORKDIR}? If that's as expected, what got put into ${D} (which is =
the "image" subdirectory under ${WORKDIR})? Does what's in ${D} match up wi=
th the layout you expect to be on the target? At any time you can use "bitb=
ake -e crank | less" to inspect the value of variables. You can also see ex=
actly what commands got run within the task by looking at the run.do_* file=
s under "temp" in the workdir.
=20
ANSWER >> All this looks good. The run.do* files don't show much. Although,=
 why am I seeing stuff like:
NOTE: arm-poky-linux-gnueabi-objdump -p /home/swapna/workspace/work/yocto/p=
oky/build-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r0/pa=
ckages-split/crank/opt/crank/linux-sama5d-armle-fbdev-obj/lib/luagretest.so

In log.do_package_qa?


* Based on what you've said earlier, your S value cannot be correct - it ma=
y not matter, but it might as well be fixed anyway. If the tarball unpacks =
a "crank" subdirectory then it should be set to "${WORKDIR}/crank".

ANSWER >> I get the same error no matter what the S is set to:
non -staticdev package contains static .a library: crank path 'work/cortexa=
5hf-neon-poky-linux-gnueabi/crank/1.0-r0/packages-split/crank/opt/crank/lin=
ux-sama5d-armle-fbdev-obj/lib/libssgf.a' [staticdev]


WHY am I getting this error?


* Setting DEPENDS isn't really doing you any good - DEPENDS is for build-ti=
me dependencies. You're only unpacking a tarball, you don't need any build-=
time dependencies to speak of. If you have runtime dependencies then set th=
em in RDEPENDS_${PN} since that's where runtime dependencies need to be set=
.

ANSWER>> without that line, I get the following error:

WARNING: crank-1.0-r0 do_package_qa: QA Issue: crank rdepends on tslib, but=
 it isn't a build dependency, missing tslib in DEPENDS or PACKAGECONFIG? [b=
uild-deps]
WARNING: crank-1.0-r0 do_package_qa: QA Issue: crank rdepends on libasound,=
 but it isn't a build dependency, missing alsa-lib in DEPENDS or PACKAGECON=
FIG? [build-deps]


* As another responder pointed out, the inherit of pkgconfig isn't needed -=
 you don't need pkg-config for anything being done here.
Again, same error with or without this. Or even if I use " inherit bin_pack=
age"



Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

