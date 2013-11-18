Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFF86E00547
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 02:35:35 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2013 02:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,722,1378882800"; d="scan'208";a="429522335"
Received: from unknown (HELO helios.localnet) ([10.252.121.158])
	by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2013 02:35:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 18 Nov 2013 10:35:25 +0000
Message-ID: <3439049.gDsLHNyZCo@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311171105010.23270@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
	<alpine.DEB.2.02.1311171105010.23270@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>
Subject: Re: why is "package-management" defined as a PACKAGE_GROUP?
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
X-List-Received-Date: Mon, 18 Nov 2013 10:35:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Robert,

On Sunday 17 November 2013 11:17:13 Robert P. J. Day wrote:
> On Sun, 17 Nov 2013, Chris Larson wrote:
>=20
> ... huge snip that i hope won't be necessary ...
>=20
> > This test you did makes no sense. Of course it=E2=80=99s in IMAGE_F=
EATURES,
> > you put it there. What you didn=E2=80=99t check is whether
> > ${ROOTFS_PKGMANAGE} ended up being installed in the image, which it=

> > won=E2=80=99t be.
>=20
>   i think i see my basic and fatal misunderstanding, and if you can
> tolerate one more post, i want to make sure i know what i did wrong a=
s
> i want to write this up and i want to be accurate.
>=20
>   as i understood it (apparently incorrectly), IMAGE_FEATURES fell
> into two categories:
>=20
>   1) actual package groups, as defined in core-image.bbclass, as in:
>=20
> PACKAGE_GROUP_x11 =3D "packagegroup-core-x11"
> PACKAGE_GROUP_x11-base =3D "packagegroup-core-x11-base"
> PACKAGE_GROUP_x11-sato =3D "packagegroup-core-x11-sato"

As I keep saying, these aren't package groups despite the name of the=20=

variable. Please stop calling them that. All they say is that if "x11" =
is=20
present in IMAGE_FEATURES, bring in packagegroup-core-x11. The fact tha=
t these=20
*do* point to actual package groups as packages is pretty much incident=
al.

>   2) non-package group values that were processed independently by
> code in image.bbclass, such as "read-only-rootfs" or "debug-tweaks"
>=20
>   what i *thought* was that each setting had to be one *or* the other=
,
> but not both. so when i saw code in image.bbclass that was handling
> the "package-management" IMAGE_FEATURE, i immediately assumed that
> meant it couldn't *also* represent an actual package group. is that
> where i went wrong?
>=20
>   so, in this one case for the IMAGE FEATURE "package-management",
> there is an actual package group defined as:
>=20
> PACKAGE_GROUP_package-management =3D "${ROOTFS_PKGMANAGE}"

Not a package group.

> which represents the packages:
>=20
> $ bb show -r core-image-base ROOTFS_PKGMANAGE
> Parsing recipes..done.
> # ROOTFS_PKGMANAGE=3Dopkg opkg-collateral ${EXTRAOPKGCONFIG}
> ROOTFS_PKGMANAGE=3D"opkg opkg-collateral poky-feed-config-opkg"
> $
>=20
> but that feature *also* pulls in additional processing as it's define=
d
> in image.bbclass.
>=20
>   have i finally got it right?

In that there are several things at work dealing with the single "packa=
ge-
management" item, yes.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

