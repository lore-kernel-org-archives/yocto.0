Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2259E0080D; Fri,  7 Nov 2014 16:03:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,URIBL_RHS_DOB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day
	Old Bread) *      [URIs: github.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C5CBE0079E
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 16:03:40 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 4A5D612A198
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 19:03:40 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id IkSSS5sgCYbk for <yocto@yoctoproject.org>;
	Fri,  7 Nov 2014 19:03:38 -0500 (EST)
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by mail.rogue-research.com (Postfix) with ESMTPSA id E654012A184
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 19:03:37 -0500 (EST)
Received: by mail-vc0-f177.google.com with SMTP id hq11so282896vcb.22
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 16:03:37 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.220.162.196 with SMTP id w4mr9932667vcx.30.1415405017231;
	Fri, 07 Nov 2014 16:03:37 -0800 (PST)
Received: by 10.31.3.220 with HTTP; Fri, 7 Nov 2014 16:03:37 -0800 (PST)
In-Reply-To: <20141107142336.GC2444@jama>
References: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
	<545C0397.3030304@mlbassoc.com> <20141107142336.GC2444@jama>
Date: Fri, 7 Nov 2014 19:03:37 -0500
Message-ID: <CACgAsMeVuUNE8iKwFoHCE16s-eHiC-+zx7GKy0b24SGJST1pNg@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: ERROR: gtest not found in the base feed
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
X-List-Received-Date: Sat, 08 Nov 2014 00:03:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Martin,

On Fri, Nov 7, 2014 at 9:23 AM, Martin Jansa <martin.jansa@gmail.com> wrote=
:
> On Thu, Nov 06, 2014 at 04:26:15PM -0700, Gary Thomas wrote:
>> On 2014-11-06 16:01, Kevyn-Alexandre Par=C3=A9 wrote:
>> > Hi,
>> >
>> > I'm just trying to add a recipe that I found here
>> >
>> > https://github.com/webOS-ports/meta-webos-ports/blob/master/recipes-up=
streamable/gtest/gtest_1.7.0.bb
>> >
>> > for gtest as part of my image:
>> >
>> > bitbake -e gtest | grep ^PACKAGES=3D
>> > PACKAGES=3D"gtest-dbg gtest-staticdev gtest-dev gtest-doc gtest-locale=
  gtest"
>> >
>> > Adding it:
>> > IMAGE_INSTALL +=3D "gtest"
>> >
>> > ERROR: gtest not found in the base feeds (overo armv7a-vfp-neon
>> > armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5
>> > armv4 arm noarch any all).
>> >
>> > Since in
>> >
>> > ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-r=
pms/armv7a_vfp_neon/
>> > gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_=
neon.rpm
>>
>> Where is the gtest-1.7.0-r0.armv7a_vfp_neon.rpm??
>>
>> I suspect that the build didn't work correctly, or at least it generated
>> no installable objects which by default will not generate an empty packa=
ge.
>
> That's correct, all files are installed in gtest-dev package.
>
> The problem is the default RDEPENDS from ${PN}-dev to ${PN}
>
> meta/conf/bitbake.conf:RDEPENDS_${PN}-dev =3D "${PN} (=3D ${EXTENDPKGV})"

k now I understand more this one:
Computing transaction...error: Can't install
gtest-dev-1.7.0-r0@armv7a_vfp_neon: no package provides gtest =3D
1.7.0-r0


198 EXTENDPRAUTO =3D "${@['.${PRAUTO\x7d',''][d.getVar('PRAUTO',1) is None]=
}"
199 PRAUTOINX =3D "${PF}"
200
201 PKGV ?=3D "${PV}"
202 PKGR ?=3D "${PR}${EXTENDPRAUTO}"
203 PKGE ?=3D "${@['','${PE\x7d'][int(d.getVar('PE',1) or 0) > 0]}"
204 EXTENDPKGEVER =3D "${@['','${PKGE\x7d:'][d.getVar('PKGE',1).strip() !=
=3D '']}"
205 EXTENDPKGV ?=3D "${EXTENDPKGEVER}${PKGV}-${PKGR}"

So this EXTENDPKGEVER is :

-1.7.0-r0.armv7a_vfp_neon

?

>
> You can either set
> ALLOW_EMPTY_${PN} =3D "1"

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-ALL=
OW_EMPTY

Adding this in my recipe and gtest-dev in my image create gtest
package and it succeed in creating the rootfs.

build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpm=
s/armv7a_vfp_neon$
ls
gtest-1.7.0-r0.armv7a_vfp_neon.rpm
gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm
gtest-dev-1.7.0-r0.armv7a_vfp_neon.rpm

> or
> RDEPENDS_${PN}-dev =3D ""
>

That works nicely but why this is not part of the recipe by default?
Could it be interesting to add it?

thx,

-KA

