Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E89FBE00BAF; Wed, 25 Jul 2018 01:23:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6647EE00B6C
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 01:23:37 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id n6-v6so6826148qtl.4
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 01:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=zW5GBCJ8sTPqvpKm0RxRIMNtnFj5fuYdYIOmBetVV2k=;
	b=XHXKWKfYWWV3OMGCzDTsk8V9GNZb9JW066/mVNrPTE0+dimjm1YIPsFrVwW/cqJHfY
	Mp8TKBtEVfnZyZnHCSmvIfOjFnjZPpt8A9Q17QALMK9AWUDHS5Lp6U6qZoFOuINxgIt+
	CiQG8PjHY5loS/Mq36t1smcYxVlRlqaw7eZsLV7rtEZDBMbsdixhU/GQTKz6grcfbc72
	Og6zOenaTzJAObJjCTEXGNr3dqSixiNfknL8DdXFAIVPnylho5tpyeKSN5UmR/FiTnHj
	chcZU9UG8r3GuatLYU2OyGSNT4uQxy2LqJ2IONgVGeRMTeWZ5TePTdzZ8NSgVV8H8Px/
	c/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=zW5GBCJ8sTPqvpKm0RxRIMNtnFj5fuYdYIOmBetVV2k=;
	b=i+HrGgLd/mOYkFF5IFvw+qY2xwIygTZ4YE9WMfU0L+TbdqeIw0NtBTMPl+PrwvNaWS
	JogRk5+F83gs/AcDb+0PCY8Xar0rNmshx9WdyROw2giTIOqd1tiSj9htKpXI8uETl9Gy
	X7/dOQp/JLDaBx+nqnxAazxbPQS1eg6vmVKr/I8U51HWbJoDsr0GQPNreprN2rxH9GQU
	jpPfKve2u6ftVrE2ZstgHggafSGL2Ave5roAGRhewfSPUDITj/caFtP3PrJkU/ecmdq+
	+kOYyfeOUn9N29AuZvyh78vojXyGaSq7Kf2g6XwJ0Wm19SVIv1PWrXunY368oHdcmwZO
	1RzQ==
X-Gm-Message-State: AOUpUlFEY3v77ZfEoL5ovFLScZCW5We6KrpZl8QaQKJvy2cibawXMotc
	0wg8euQyUVg9YvhfAMD4DvBbNAJgifLzHy7iuro=
X-Google-Smtp-Source: AAOMgpcyOpUXidfvtnfkZkYBOh17vaf+2+oSCZPZmZUMnsuCceSkthIE62fy9TbtzvnwhwbOtvbaAbLRoIRLzQ1nA4w=
X-Received: by 2002:a0c:9e2a:: with SMTP id
	p42-v6mr18255642qve.54.1532507016698; 
	Wed, 25 Jul 2018 01:23:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad5d:0:0:0:0:0 with HTTP; Wed, 25 Jul 2018 01:23:36
	-0700 (PDT)
In-Reply-To: <CAJ86T=WENY_jRwhSLJmLXjm7_RbnCJx-fqesWwJw7P2jZh=u4g@mail.gmail.com>
References: <e90846d06efa4e6c8a9fc52370af9ada@sakuraus.com>
	<CAJ86T=WENY_jRwhSLJmLXjm7_RbnCJx-fqesWwJw7P2jZh=u4g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 25 Jul 2018 10:23:36 +0200
Message-ID: <CAGAf8LxYwcCUasWAghC431v3Htptfki8WfCxvTHB73Jjv9K75w@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't get *.a's into SDK sysroot
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
X-List-Received-Date: Wed, 25 Jul 2018 08:23:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Andre,

> RDEPENDS_${PN}-dev +=3D "${PN}-staticdev"

I also read this email, and decided to investigate myself. Since I
wrote meta-mylayer with cannelloni recipe in it.

To find out if the recipe works correctly, and it is incorporated
(upfront) in ROOTFS, I did the following:
[1] Did the compilation of the clean tree;
[2] After that, I did: bitbake -s | grep cannelloni -> yes, the build
system sees it;
[3] Changed to ${TMPDIR}/work and issued the command: find . -name cannello=
ni

To my surprise, the search produced empty results.

Then I added your line to the cannelloni recipe: RDEPENDS_${PN}-dev +=3D
"${PN}-staticdev"

Again, bitbake -c cleanall cannelloni, then bitbake cannelloni, and
step [3] produced visible results.

Now I see it in the .../tmp/work/...

But, there were NOT any changes in: .../tmp/deploy/images/beaglebone/
directory (in ${build} directory, I guess)???

So, what I need to do to see build components changed (since I assume,
cannelloni still did not make it in ROOTFS)???

Thank you,
Zoran
_______

On Wed, Jul 25, 2018 at 2:08 AM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Tue, Jul 24, 2018 at 4:53 PM, Greg Wilson-Lindberg <GWilson@sakuraus.c=
om>
> wrote:
>>
>> I've created a recipe for Canfestival (a CAN bus CANOpen support library=
).
>> I have had it building for a while, but I had the configuration set up t=
o
>> build all parts of it as .so's. I need to change it so that parts of the
>> library are .a's. My problem is that I can't get the .a's to copy to the=
 SDK
>> sysroot /usr/lib directory. The .a's are in the canfestival image/usr/li=
b &
>> sysroot-destdir/usr/lib directories, but nothing that I've tried has got=
ten
>> them to the SDK sysroot.
>>
>>
>>
>> Here is the canfestival_3-asc.bb file that I'm using:
>>
>>
>>
>> SUMMARY =3D "Independent CANOpen=C2=AE stack"
>>
>> DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform
>> independent \
>>
>>                CANOpen=C2=AE stack that can be built as master or slave =
nodes
>> on PCs, \
>>
>>                Real-time IPCs, and Microcontrollers."
>>
>>
>>
>> HOMEPAGE =3D "http://www(dot)canfestival(dot)org/" // obfuscated to get =
past
>> our email system
>>
>>
>>
>> SRCREV =3D "895:8973dd8be7e8"
>>
>>
>>
>> SRC_URI =3D
>> "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestival-3-asc \
>>
>>            file://canfestival_3-asc-configure.patch \
>>
>>            file://canfestival_3-asc-makefile.in.patch \
>>
>>            file://canfestival_3-asc-src_makefile.in.patch \
>>
>>            \
>>
>>            file://sdo.c.patch \
>>
>>            file://def.h.patch \
>>
>>            "
>>
>> PR =3D 'r01'
>>
>>
>>
>> LICENSE =3D "LGPLv2"
>>
>> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D46ec399d3928b6c91e3634ab7263a=
f44 \
>>
>>                     file://LICENCE;md5=3D085e7fb76fb3fa8ba9e9ed0ce95a43f=
9"
>>
>>
>>
>> TARGET_CC_ARCH +=3D "${LDFLAGS}"
>>
>>
>>
>>
>>
>>
>>
>> do_configure() {
>>
>>     bbplain "Starting Configure"
>>
>>     #bbplain "rootfs: ${D}"
>>
>>     ./configure --target=3Dunix --prefix=3D${D}/usr/ --can=3Dsocket
>> --timers=3Dunix  --SDO_MAX_SIMULTANEOUS_TRANSFERS=3D30
>> --SDO_MAX_LENGTH_TRANSFER=3D4096 --MAX_NB_TIMER=3D128 --SDO_TIMEOUT_MS=
=3D3000
>> --debug=3D"WAR"
>>
>>
>>
>>     bbplain "Configure Done"
>>
>> }
>>
>>
>>
>> do_compile() {
>>
>>     oe_runmake canfestival
>>
>> }
>>
>>
>>
>> do_install() {
>>
>>     bbplain "Starting Install"
>>
>>     #bbplain "rootfs: ${D}"
>>
>>     oe_runmake install PREFIX=3D${D}/usr/
>>
>>
>>
>>     bbplain "Install Done"
>>
>> }
>>
>>
>>
>> FILES_${PN}-dbg =3D "/usr/src/debug/canfestival"
>>
>> FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a
>> /usr/include/canfestival/*.h"
>>
>> FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
>>
>>
>>
>> #PACKAGE_BEFORE_PN =3D "${PN}-info"
>>
>> #FILES_${PN}-info =3D "usr/lib/pkgconfig"
>>
>>
>>
>> I've fiddled with the various FILES lines, but nothing that I do gets th=
e
>> .a files copied to the SDK sysroot /usr/lib directory.
>>
>>
>>
>> Any insight into what is going wrong would be greatly appreciated.
>
>
> Assuming the static libs are being built and installed correctly they sho=
uld
> be packaged correctly by the default packaging rules. ie you shouldn't ne=
ed
> to tweak any FILES_xxx values.
>
> However you will need to ensure that the -staticdev package gets included=
 in
> the SDK. Assuming you always want the static libs for this particular rec=
ipe
> to be available then you can try adding the following to the recipe:
>
>   RDEPENDS_${PN}-dev +=3D "${PN}-staticdev"
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

