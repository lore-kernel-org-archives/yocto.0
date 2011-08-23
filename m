Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 308CFE0071A
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 14:58:04 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxg7 with SMTP id 7so874792fxg.35
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 14:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=LQiLcrDAlynxClPr+4tQrI2l+LdhYTkGL9HIk2s6Pkk=;
	b=N5kjB1DlUs5i+ywIX3KR9fi/O5zmDEXmmSm1QQK63pbWKobmaeYXuE1Esa8BAYkLZ4
	1vTbPNYTdPdHemtXhqAG6fJgxTtIOs1aS+gbAc2GTfKsrB3xaO9763TbehaUw6nGp4/2
	dRniXRgUzS/vr9f3jpu/uuaDJTeq+trv3e6c8=
Received: by 10.223.63.139 with SMTP id b11mr6007656fai.111.1314136682715;
	Tue, 23 Aug 2011 14:58:02 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id g16sm309007faa.27.2011.08.23.14.58.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Aug 2011 14:58:01 -0700 (PDT)
Date: Tue, 23 Aug 2011 23:57:54 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20110823215754.GA5522@jama.jama.net>
References: <cover.1314124511.git.sgw@linux.intel.com>
	<99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
	<CA+M6bX=vjB5gV572LVemMdeiO3TuFFUK_L6xTA2pDrVu-0ZZvw@mail.gmail.com>
	<4E541AEE.2000305@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4E541AEE.2000305@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard.conf: set DEFAULT_TUNE to cortexa8
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Aug 2011 21:58:04 -0000
X-Groupsio-MsgNum: 2493
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline

--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 23, 2011 at 02:26:06PM -0700, Saul Wold wrote:
> On 08/23/2011 12:35 PM, Tom Rini wrote:
> > On Tue, Aug 23, 2011 at 1:36 PM, Saul Wold<sgw@linux.intel.com>  wrote:
> >>     [YOCTO #1381]
> >>
> >>     lttng-ust generates an ICE when building for armv7, so change it t=
o armv5
> >>     | vfprintf.c:956:1: error: unrecognizable insn:
> >>     | (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]=
) 0)
> >>     |         (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v:SI 166 =
[ nextarg ])
> >>     |                         (const_int 8 [0x8]))
> >>     |                     (reg/f:SI 370 [ argtable.7 ])) [0 *D.6937_56=
9+0 S1
> >>     A32]))) vfprintf.c:555 -1
> >>     |      (nil))
> >>     | vfprintf.c:956:1: internal compiler error: in extract_insn, at r=
ecog.c:2109
> >
> > Which version of lttng-ust is this exactly?  In addition to what
> > Darren is saying about how this should be papered-over at the recipe
> > level until gcc itself is fixed...
> >
> Sorry, this was my mis-understanding of Darren's comment.
>=20
> Version of lttng-ust is 0.15.
>=20
> Initially I tried to do something with tcmode-default, setting lttng-ust=
=20
> similar to meta-xlib which also had a ICE issue.
>=20
> TARGET_CC_ARCH_arm_pn-mesa-xlib :=3D=20
> "${@'${TARGET_CC_ARCH}'.replace('armv7-a','armv5')}"
>=20
> That caused the compiler to complain about a mode issue, probably due to=
=20
> mixing of tune parameters:
>=20
> | arm-poky-linux-gnueabi-libtool: compile:  ccache=20
> arm-poky-linux-gnueabi-gcc
> -march=3Darmv5 -fno-tree-vectorize -mthumb-interwork -mfloat-abi=3Dsoftfp
> -mfpu=3Dneon -mtune=3Dcortex-a8
> --sysroot=3D/vol/1/sgw/autobuilder/yab/yocto-slave/external/build/build/t=
mp/sysroots/beagleboard
> -DHAVE_CONFIG_H -I. -I.. -I../include/ust -I../include -I../libustcomm
> -DUST_COMPONENT=3Dlibust -fno-strict-aliasing -Wall -pipe -g
> -feliminate-unused-debug-types -MT libust_la-marker-control.lo -MD -MP -MF
> .deps/libust_la-marker-control.Tpo -c marker-control.c -o
> libust_la-marker-control.o >/dev/null 2>&1
> | mv -f .deps/libust_la-tracercore.Tpo .deps/libust_la-tracercore.Plo
> | {standard input}: Assembler messages:
> | {standard input}:190: Error: selected processor does not support ARM=20
> mode `dmb'
>=20
> Yes, we are trying to solve Compiler issue, when I first started working=
=20
> on the last week there was not a compiler bug filed, but now there seems=
=20
> to be one!
>=20
> http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D43137
>=20
> Which looks like it is resolved also!

This is better bug report:
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D50099

Regards,

> I will move this to Nitin to see if he can incorporate the patch into gcc.
>=20
> Sau!
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk5UImIACgkQN1Ujt2V2gByPogCgrMNogDBmPQrDvwLQ0LsaVHUR
ffEAn2LlhbtLxE7l/GdlZBtAU75CscrD
=GBUI
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--
