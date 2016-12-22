Return-Path: <clopez@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57903E010C2; Wed, 21 Dec 2016 17:48:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.51.32.191 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Dec 2016 17:48:23 PST
Received: from smtp4.mundo-r.com (smtp3.mundo-r.com [212.51.32.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9099FE0109B
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 17:48:23 -0800 (PST)
IronPort-PHdr: =?us-ascii?q?9a23=3A6buPRh33+9EtTpLPsmDT+DRfVm0co7zxezQtwd8Z?=
	=?us-ascii?q?seIeIvad9pjvdHbS+e9qxAeQG96KsLQU0KGK7+jJYi8p2d65qncMcZhBBVcuqP?=
	=?us-ascii?q?49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6?=
	=?us-ascii?q?JvjvGo7Vks+7y/2+94fdbghMijexe7B/IRu5oQjeucQdnJdvJLs2xhbVuHVDZv?=
	=?us-ascii?q?5YxXlvJVKdnhb84tm/8Zt++ClOuPwv6tBNX7zic6s3UbJXAjImM3so5MLwrhnM?=
	=?us-ascii?q?URGP5noHXWoIlBdDHhXI4wv7Xpf1tSv6q/Z91SyHNsD4Ubw4RTKv5LptRRT1ii?=
	=?us-ascii?q?kIKiQ5/XnKhMJugqJVoBWhqR9xzYHab46aNuZxc7jSfd8GX2dPWdpdWiJBD466?=
	=?us-ascii?q?coABD/ABPeFdr4TluVYBtwG+BQ2rBOP01zRFmnv20rYk3OQ7DQHG2xErEdQJsH?=
	=?us-ascii?q?TMstr0NboZX/qrw6nS0zrCbu5d1DDh54jMdRAhue+DXLNrfMrQxkkgDQfFjlSK?=
	=?us-ascii?q?poD/IzyV0eENvnGd4uF9Vuyvk3YqpgVsrjS128sgl4vEipgRx13A7yl13YY4KN?=
	=?us-ascii?q?2gREN/fNKoCoZcuzyYOodsX88vTHtktDs8x7Ybo5C0ZjIKx44ixxPHbvyHdJWH?=
	=?us-ascii?q?7Qz7WeaKJDd4mGpleLWihxau6USgyvPzVs2z0FtSoCpKiN/Mt3EM1xzV9MeLUP?=
	=?us-ascii?q?p9/ki71jaL1gDc8PtILlwzlareM5Ihw7gwmYQPsUnbGiL6hV/6gLKLekgm4OSl?=
	=?us-ascii?q?7+Dqbq/7qpKcN4J4kgT+Pb4vmsy7D+Q4KA8OX22D9Oug0L3j+lX5T6tLj/Atk6?=
	=?us-ascii?q?nZv4rVJcAapqGjGQNazoEj6xOnAze8zNsYhWUHLE5CeB+fgIjmIUvOIfDjAPe6?=
	=?us-ascii?q?h1Sjiy1kx+vdPr3mHprBNGTMkLDkfbxl8U5T1BIzzcxD55JTErwBJfXzWknttN?=
	=?us-ascii?q?HWDx41KRC7w+L9B9Vn0YMTWXmCAqCcMKzIsF+I4vgjLPWLZI8QoDz9MeQq5+by?=
	=?us-ascii?q?jX8lnl8QZamo3ZwLZ3CkGfRrOEWYYX3wjdcdFmcKphA+TOvoiFKcTTFTe2y+X6?=
	=?us-ascii?q?Um5jE0W8qaCtLSQYuxh5SQ2yynGYVMYWJLAUzKFm3nJKueXPJZQyuIJsh62hUA?=
	=?us-ascii?q?X7W7V4hp8Ra2uR2y87d9I/icriYcsoruxvB06OTXlBh0/jtxWZfOm1qRRn15yz?=
	=?us-ascii?q?tbDwQ927py9BRw?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AdAQCzL1tY/5tjdVteGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBBwEBAQEBFAEBAQEBAQEBAQEBBwEBAQEBgwoBAQEBAR+BC44qllCVE4IKhiI?=
	=?us-ascii?q?CgV8/FAEBAQEBAQEBAQEBYSiCMxiCHgEFeRALGB0RVxMIAohsAap+in8BAQEHA?=
	=?us-ascii?q?gEWD4Y2gX0IglSFDIUVBYheh2iKMYNjgXyLWpBRkjMfN4EHFg2GDYlLAQEB?=
X-IPAS-Result: =?us-ascii?q?A2AdAQCzL1tY/5tjdVteGQEBAQEBAQEBAQEBBwEBAQEBFAE?=
	=?us-ascii?q?BAQEBAQEBAQEBBwEBAQEBgwoBAQEBAR+BC44qllCVE4IKhiICgV8/FAEBAQEBA?=
	=?us-ascii?q?QEBAQEBYSiCMxiCHgEFeRALGB0RVxMIAohsAap+in8BAQEHAgEWD4Y2gX0IglS?=
	=?us-ascii?q?FDIUVBYheh2iKMYNjgXyLWpBRkjMfN4EHFg2GDYlLAQEB?=
X-IronPort-AV: E=Sophos;i="5.33,386,1477954800"; 
	d="asc'?scan'208";a="222945550"
Received: from fanzine.igalia.com ([91.117.99.155])
	by smtp4.mundo-r.com with ESMTP; 22 Dec 2016 02:47:18 +0100
Received: from 1.14.117.91.dynamic.reverse-mundo-r.com ([91.117.14.1]
	helo=[192.168.0.23]) by fanzine.igalia.com with esmtpsa 
	(Cipher TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim)
	id 1cJsTW-0005EI-LS; Thu, 22 Dec 2016 02:47:18 +0100
To: yocto@yoctoproject.org
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
	<55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
	<CAJ70iBQz+-=30eEzXY4PhtCXpgx=cDRsEnipbx1fVSR-FObaNw@mail.gmail.com>
	<CAMKF1sp+RaZSOQTDYst-ZGCPbc4tr7-+RsUivVszaXsEYy+gJA@mail.gmail.com>
	<CAJ70iBRhC+=S9jshcMeFa5pUsdUDH=wn37okfbHX3gEieon2bw@mail.gmail.com>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
	url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <e1c19b2e-09af-9352-bb09-7cf38a5620b6@igalia.com>
Date: Thu, 22 Dec 2016 02:47:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ70iBRhC+=S9jshcMeFa5pUsdUDH=wn37okfbHX3gEieon2bw@mail.gmail.com>
Cc: jmcasanova@igalia.com, gary@mlbassoc.com
Subject: Re: Error during webkit compilation for rasberry pi3
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
X-List-Received-Date: Thu, 22 Dec 2016 01:48:25 -0000
X-Groupsio-MsgNum: 33569
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="Mx8w5Ao3KJaPmDuQ8rf7bDpp9aN6msVqg"

--Mx8w5Ao3KJaPmDuQ8rf7bDpp9aN6msVqg
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 21/12/16 18:50, Mont3z Claros wrote:
> Thanks, Khem. I'll try this.
> I've just asked this because I've got a black screen on my monitor
> when using VC4 driver and when I've check the UART console I see the
> error:
>=20
> vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
> vc4-drm soc:gpu: master bind failed: -517
> vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
> vc4-drm soc:gpu: master bind failed: -517
>=20
> So, I'll try building it without opencl.
> Montez.
>=20

For the RPI3 there are two options for the graphics drivers:

 1) The default ones (propietary from broadcom). To get WebKit working
with that ones you have to disable OpenGL support in WebKit. This can be
achieved by not passing the corresponding PACKAGECONFIG option. For
example, using last master of poky/oe-core or meta-webkit you can set
this in local.conf:

  PACKAGECONFIG_pn-webkitgtk =3D "x11 webgl"

Check the webkit recipe to see if there is an opengl PACKAGECONFIG
option. Otherwise you can pass the flag manually -DENABLE_OPENGL=3DOFF to=

EXTRA_OECMAKE

Alternatively, if you already built it, you can disable OpenGL at
runtime also by executing on the terminal:
export WEBKIT_DISABLE_COMPOSITING_MODE=3D1
before starting the browser from the terminal itself.

 2) With the new VC4 drivers it should work with OpenGL support.
I friend of mine tried it on the RPI3 with Wayland (core-image-weston)
and it worked as expected. Not sure about X11 (core-image-sato).

But you seem to have trouble starting the GUI with this VC4 drivers.
Maybe it helps if you use the master branch of meta-raspberry as this
VC4 drivers are relatively bleeding edge.


--Mx8w5Ao3KJaPmDuQ8rf7bDpp9aN6msVqg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJYWzCdAAoJEJZQic5rlfiCNOAQALqFfxenoV5gyciJwWC4Dmhd
UJcQgByxtlFoIF0vju+jqNuCJYnPOUqDNIZq8y0hiRIu4B20fDqVeFWAc4anr9ND
CuHPfO2ZS5rdZV9nIoHZX1p55P7sakjyVDyWoc2GX9XnrhVeqgVOsajjrRZcu5+5
MKS96QIuUJ7Ajs/dnIZ0Qv9XO5MIW9ITj0ssoewcHqrn4ffyMmRSKfVRfqd7PFdh
pnv8bMFxMXwbfZtjmGwxVAtHTRylvJyKMGW4+PwCXF1c6p4wmk/1x2ht67RJ2HBi
w4cgcoGhePL8FXBTFJlOCVF27eQfEk7M9ZIl2j7uYo94xywMN4jsmJvUuMaUEU5v
MLOj2tWHie98PRkTvjH1Gba93gcnKUchbDQOuSAtFH/lcv/fextd3vI4oXdhQ3BY
/+Q2JA5l68aiDA5e0nohp/pVpZiCTmP9PjWVHdTJIhFT4AJMjm6YhuJVoGVfbhuX
QhAd+g1F0nPQdnMuKGy4uolAPp+a7KkDQCVUNxdCcu7YShm1rDPIwVxeZeOkdwME
KbfUtXdA9wbO2OclwVLbtUBk9XfR259pfP48ZYFZxPJ9b1reku56yoHQV5x8yROt
AcnjVipaV0BB2+xg4IeePQ9JFdlSS2Mfrd+lQLemtVTYM/+ux4vWgau3OkyPu929
+Y8OoIe0TbddWhiMAHJV
=QO2w
-----END PGP SIGNATURE-----

--Mx8w5Ao3KJaPmDuQ8rf7bDpp9aN6msVqg--
