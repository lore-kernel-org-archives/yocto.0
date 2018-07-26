Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F18A6E00CD5; Wed, 25 Jul 2018 23:58:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46442E00C82
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 23:58:13 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id b66-v6so381040qkj.1
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 23:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wI+V61mc71CUUIdP5+wx1EmmD0Eo48tXWw5CWR5Zra4=;
	b=OQhpCXuJN+LbmIcUWJc3GJObAzAzMdvHFr7JF93hiNgRrKv9R7ekwwTjcOC55AG2RU
	lSyoCsJcMAa1qWga+BMMDnN6Vfaw5vj0FLWcz/QJeakkG0vyBhzosrttMxkXpEmYevE4
	kSKqyb11El0nmwKGoxXBnqxt1sWufuxnq8RLA2MJV4tRwHsh5gG0eEJdMhlmT8HUPG7F
	eHSQdVK8Im4zlSLTIc+JE8TN6Ir1dKtZj9dnJ/qYHL5pCVgZo3nyOhYEM3jS07U2QBnv
	qMdKB7U7ExGTjCCxzdtZ5xnEfcLYp50dXwgmapY6pOr9MLU26l4noq87I5hcrpvlAwPR
	tGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wI+V61mc71CUUIdP5+wx1EmmD0Eo48tXWw5CWR5Zra4=;
	b=tMvBq3LeQFyRfkK1sxeUuw4hmeqyZ7J/gxK53CHGUmDmpYq1LtqikV9W+Ru3Jftk0i
	DQ6dsgQg/xCbRs/DVHRUdQZVaBK5+gDcju5cp7D4EHQBtfo2QsAe7d8GhfHwOSsA3tkt
	vNDmEU/Ny8wddj2QcrpOM6nIAZANRBRPEkZAtRsce13OGnUAxgxy7rlV72pFKaeQ1amj
	n+LuSs7FcB/2pISOmDo/UtHUwCFDbiyx+yY7Dk7kcGQ4eZyPXsfq6oXub8PS7P99xM7b
	2hJFCVuMVLZBvt2v2Lm3VgswS2fGY1fSIAjk5Mse8sHy389PjofHatNOtfN3vR50vE9I
	xu2g==
X-Gm-Message-State: AOUpUlG+EApAVlNGRXZebFtz3zPHHe2xhDsJ/X7dmsZagkmRtoJGblxg
	PCDAl/lXCwaKNci1rZJAlMgd++4x+hrjuE+t3P4=
X-Google-Smtp-Source: AAOMgpeC605ES5kFKQx6Sxwmmh5ZWoskBkFoG8r8Ig2ehl5tFKzy2ibCw8fhkUWxlFYLmppiROPGXiPVcC1vbmVv/mw=
X-Received: by 2002:a37:1b41:: with SMTP id
	b62-v6mr572052qkb.343.1532588292394; 
	Wed, 25 Jul 2018 23:58:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad5d:0:0:0:0:0 with HTTP; Wed, 25 Jul 2018 23:58:11
	-0700 (PDT)
In-Reply-To: <e90c93df9d434d41b6c4453114ddd4e9@sakuraus.com>
References: <e90846d06efa4e6c8a9fc52370af9ada@sakuraus.com>
	<CAJ86T=WENY_jRwhSLJmLXjm7_RbnCJx-fqesWwJw7P2jZh=u4g@mail.gmail.com>
	<e90c93df9d434d41b6c4453114ddd4e9@sakuraus.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 26 Jul 2018 08:58:11 +0200
Message-ID: <CAGAf8Lwydhzk+p7xNM_UZeJFV=Fr-HNr3ibKhdA4dUBnk6jzjw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
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
X-List-Received-Date: Thu, 26 Jul 2018 06:58:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Andre,

> If you are asking why building your image from a completely clean tree
> doesn't result in building your recipe (or changing your recipe
> doesn't result in the image being rebuilt) then yes it suggests that
> your image doesn't include and packages created by your recipe.

Your answer remains me of this story:
https://joke4fun.com/text/engineer-vs-manager-19418

Well... ;-)

I'll try to do some more testings, and to find out what is really wrong her=
e.

The useful info is that out of clean tree nothing is visible in
${TMPDIR}/work, so, after all, might be that YOCTO build system does
not see my layer (for some unknown reason) at all.

Thank you,
Zoran
_______

On Wed, Jul 25, 2018 at 8:15 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
> Hi Andre,
>
> The RDEPENDS did what I needed.
>
>
>
> Thank you very much,
>
> Greg Wilson-Lindberg
>
> Principal Firmware Engineer | Sakura Finetek USA, Inc.
>
>
>
> 1750 W 214th Street | Torrance, CA 90501 | U.S.A.
>
> T: +1 310 783 5075
>
> F: +1 310 618 6902 | E: gwilson@sakuraus.com
>
> www.sakuraus.com
>
>
>
> ________________________________
>
> Confidentiality Notice: This e-mail transmission may contain confidential=
 or
> legally privileged information that is intended only for the individual o=
r
> entity named in the e-mail address. If you are not the intended recipient=
,
> you are hereby notified that any disclosure, copying, distribution, or
> reliance upon the contents of this e-mail is strictly prohibited. If you
> have received this e-mail transmission in error, please reply to the send=
er,
> so that Sakura Finetek USA, Inc. can arrange for proper delivery, and the=
n
> please delete the message from your inbox. Thank you.
>
>
>
>
>
> From: Andre McCurdy [mailto:armccurdy@gmail.com]
> Sent: Tuesday, July 24, 2018 05:09 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Can't get *.a's into SDK sysroot
>
>
>
> On Tue, Jul 24, 2018 at 4:53 PM, Greg Wilson-Lindberg <GWilson@sakuraus.c=
om>
> wrote:
>
> I've created a recipe for Canfestival (a CAN bus CANOpen support library)=
. I
> have had it building for a while, but I had the configuration set up to
> build all parts of it as .so's. I need to change it so that parts of the
> library are .a's. My problem is that I can't get the .a's to copy to the =
SDK
> sysroot /usr/lib directory. The .a's are in the canfestival image/usr/lib=
 &
> sysroot-destdir/usr/lib directories, but nothing that I've tried has gott=
en
> them to the SDK sysroot.
>
>
>
> Here is the canfestival_3-asc.bb file that I'm using:
>
>
>
> SUMMARY =3D "Independent CANOpen=C2=AE stack"
>
> DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform
> independent \
>
>                CANOpen=C2=AE stack that can be built as master or slave n=
odes on
> PCs, \
>
>                Real-time IPCs, and Microcontrollers."
>
>
>
> HOMEPAGE =3D "http://www(dot)canfestival(dot)org/" // obfuscated to get p=
ast
> our email system
>
>
>
> SRCREV =3D "895:8973dd8be7e8"
>
>
>
> SRC_URI =3D "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestiv=
al-3-asc
> \
>
>            file://canfestival_3-asc-configure.patch \
>
>            file://canfestival_3-asc-makefile.in.patch \
>
>            file://canfestival_3-asc-src_makefile.in.patch \
>
>            \
>
>            file://sdo.c.patch \
>
>            file://def.h.patch \
>
>            "
>
> PR =3D 'r01'
>
>
>
> LICENSE =3D "LGPLv2"
>
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D46ec399d3928b6c91e3634ab7263af=
44 \
>
>                     file://LICENCE;md5=3D085e7fb76fb3fa8ba9e9ed0ce95a43f9=
"
>
>
>
> TARGET_CC_ARCH +=3D "${LDFLAGS}"
>
>
>
>
>
>
>
> do_configure() {
>
>     bbplain "Starting Configure"
>
>     #bbplain "rootfs: ${D}"
>
>     ./configure --target=3Dunix --prefix=3D${D}/usr/ --can=3Dsocket --tim=
ers=3Dunix
> --SDO_MAX_SIMULTANEOUS_TRANSFERS=3D30 --SDO_MAX_LENGTH_TRANSFER=3D4096
> --MAX_NB_TIMER=3D128 --SDO_TIMEOUT_MS=3D3000 --debug=3D"WAR"
>
>
>
>     bbplain "Configure Done"
>
> }
>
>
>
> do_compile() {
>
>     oe_runmake canfestival
>
> }
>
>
>
> do_install() {
>
>     bbplain "Starting Install"
>
>     #bbplain "rootfs: ${D}"
>
>     oe_runmake install PREFIX=3D${D}/usr/
>
>
>
>     bbplain "Install Done"
>
> }
>
>
>
> FILES_${PN}-dbg =3D "/usr/src/debug/canfestival"
>
> FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a /usr/include/canfestival/=
*.h"
>
> FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
>
>
>
> #PACKAGE_BEFORE_PN =3D "${PN}-info"
>
> #FILES_${PN}-info =3D "usr/lib/pkgconfig"
>
>
>
> I've fiddled with the various FILES lines, but nothing that I do gets the=
 .a
> files copied to the SDK sysroot /usr/lib directory.
>
>
>
> Any insight into what is going wrong would be greatly appreciated.
>
>
>
> Assuming the static libs are being built and installed correctly they sho=
uld
> be packaged correctly by the default packaging rules. ie you shouldn't ne=
ed
> to tweak any FILES_xxx values.
>
>
>
> However you will need to ensure that the -staticdev package gets included=
 in
> the SDK. Assuming you always want the static libs for this particular rec=
ipe
> to be available then you can try adding the following to the recipe:
>
>
>
>   RDEPENDS_${PN}-dev +=3D "${PN}-staticdev"
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

