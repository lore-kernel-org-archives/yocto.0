Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67645E002AC
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 08:38:47 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id y6so4075562lbh.37
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 08:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=2waEVJsFOGaJVHHmiWKBFXQ3wHw9QF2D7AHyRtTzjP0=;
	b=HR74Xy8Y6opxl0gZHjsDwgmFeBw2Sm6ppOaYKK5NNJTMPAgwoNkX3J+Y1ZlAhcJKhx
	dTKPxFpx1fKxCzMZWVwhfzxPhJZMHYJz8A4vlXG5UnwSoW2HpsCutKNmfwLKYL7ZnLd6
	g1ybteBvBbed5Y1S15H9Vh86UAr0t33ytbkl90397AHWoO1G9+X0geU+wTFdIFe/knhR
	5KVP5uegL3ET0c18Q/bLY0jSkNe/nyOGabgZ1hGc1Ej3oqt2ui0RTZW+/ystg+SJKsas
	F5wxA3FRQHE8IU21YkcKsz9TgUMVyEO5y0goO7BMYYPGdQnsEMTleAlPiiJJ8ChyQa6V
	5Ieg==
X-Received: by 10.112.59.134 with SMTP id z6mr9860479lbq.28.1384706326218;
	Sun, 17 Nov 2013 08:38:46 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Sun, 17 Nov 2013 08:38:26 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311171105010.23270@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<1530936.srmMeFasFY@helios>
	<alpine.DEB.2.02.1311170626370.18680@oneiric>
	<13190111.cIECxPcJYb@helios>
	<alpine.DEB.2.02.1311170734160.20107@oneiric>
	<CABcZANkx+EgeVp2h-enLxSZGh7XV1607fRdVFidoJhkRnqbnjA@mail.gmail.com>
	<alpine.DEB.2.02.1311171105010.23270@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 17 Nov 2013 09:38:26 -0700
X-Google-Sender-Auth: 9I6bFJZQhAVLKJyDbPQd0lX0DcM
Message-ID: <CABcZANnKfrXQBWietG5NXG2OEoM__ht9qj0zuPg=ViUTZ4Xe6Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 17 Nov 2013 16:38:48 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1f748b152a904eb6210d9

--e89a8fb1f748b152a904eb6210d9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 17, 2013 at 9:17 AM, Robert P. J. Day <rpjday@crashcourse.ca>wr=
ote:

> $ bb show -r core-image-base ROOTFS_PKGMANAGE
> Parsing recipes..done.
> # ROOTFS_PKGMANAGE=3Dopkg opkg-collateral ${EXTRAOPKGCONFIG}
> ROOTFS_PKGMANAGE=3D"opkg opkg-collateral poky-feed-config-opkg"
> $
>
> but that feature *also* pulls in additional processing as it's defined
> in image.bbclass.
>

If you=E2=80=99re referring to the bootstrap bits, technically that doesn=
=E2=80=99t do
something when it=E2=80=99s included in image features, it does something w=
hen it=E2=80=99s
*not* included in image features =E2=80=94 include ROOTFS_PKGMANAGE_BOOTSTR=
AP
instead of ROOTFS_PKGMANAGE.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--e89a8fb1f748b152a904eb6210d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Nov 17, 2013 at 9:17 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":si" style=3D"overflow:hidden">$ =
bb show -r core-image-base ROOTFS_PKGMANAGE<br>
Parsing recipes..done.<br>
# ROOTFS_PKGMANAGE=3Dopkg opkg-collateral ${EXTRAOPKGCONFIG}<br>
ROOTFS_PKGMANAGE=3D&quot;opkg opkg-collateral poky-feed-config-opkg&quot;<b=
r>
$<br>
<br>
but that feature *also* pulls in additional processing as it&#39;s defined<=
br>
in image.bbclass.</div></blockquote></div><br>If you=E2=80=99re referring t=
o the bootstrap bits, technically that doesn=E2=80=99t do something when it=
=E2=80=99s included in image features, it does something when it=E2=80=99s =
*not* included in image features =E2=80=94 include ROOTFS_PKGMANAGE_BOOTSTR=
AP instead of ROOTFS_PKGMANAGE.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--e89a8fb1f748b152a904eb6210d9--
