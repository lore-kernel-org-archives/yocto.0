Return-Path: <clopez@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08B3BE00CBB; Fri, 15 Jul 2016 12:25:49 -0700 (PDT)
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
Received: from smtp4.mundo-r.com (smtp3.mundo-r.com [212.51.32.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F940E00A6D
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 12:25:42 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CYAQAtOIlX/5tjdVtcGgEBAQGDIIFSjSqpO4IPgXuGGgKBLzgUAQEBAQEBAWUnhFwBAQEBAgF4BgsLEQMBAgEJFg8JAwIBAgE9CAYBDAYCAogkDAG/SAEBAQEGAQEBAQEUDoYqhE2EYIU7AQSTYIVBgzeBboNphU2PNZAbHjaDdToyhlMBAQE
X-IPAS-Result: A2CYAQAtOIlX/5tjdVtcGgEBAQGDIIFSjSqpO4IPgXuGGgKBLzgUAQEBAQEBAWUnhFwBAQEBAgF4BgsLEQMBAgEJFg8JAwIBAgE9CAYBDAYCAogkDAG/SAEBAQEGAQEBAQEUDoYqhE2EYIU7AQSTYIVBgzeBboNphU2PNZAbHjaDdToyhlMBAQE
X-IronPort-AV: E=Sophos;i="5.28,369,1464645600"; 
	d="asc'?scan'208,223";a="151895457"
Received: from fanzine.igalia.com ([91.117.99.155])
	by smtp4.mundo-r.com with ESMTP; 15 Jul 2016 21:25:41 +0200
Received: from maestria.local.igalia.com ([192.168.10.14] helo=mail.igalia.com)
	by fanzine.igalia.com with esmtps 
	(Cipher TLS1.0:RSA_AES_128_CBC_SHA1:16) (Exim)
	id 1bO8k0-0005VP-OX; Fri, 15 Jul 2016 21:25:40 +0200
Received: from fanzine.local.igalia.com ([192.168.10.13] helo=[10.76.0.26])
	by mail.igalia.com with esmtps 
	(Cipher TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim)
	id 1bO8k0-0007Od-D1; Fri, 15 Jul 2016 21:25:40 +0200
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
	url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <578938B3.9010506@igalia.com>
Date: Fri, 15 Jul 2016 21:25:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
Subject: Re: [meta-raspberrypi][PATCH v3 00/14] Support for VC4 graphics driver
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
X-List-Received-Date: Fri, 15 Jul 2016 19:25:49 -0000
X-Groupsio-MsgNum: 31090
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="am9pC7JR4aFUo4Fmn8EMDMMXj40HkXPXJ"

--am9pC7JR4aFUo4Fmn8EMDMMXj40HkXPXJ
Content-Type: multipart/mixed;
 boundary="------------000505060205080201060007"

--------------000505060205080201060007
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 30/05/16 22:49, Herve Jourdain wrote:
> This v3 series addresses the following issues with the v2 series:
> a. patch rebased
> b. new revision of kernel, to get a version of the VC4 graphics driver =
that handles render nodes
> c. patch to the VC4 driver to enable proper working of the render nodes=
 (need to add authorization for IOCTLs)
>=20
> v2 series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to build=
 (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d overlay,=
 depending on the board (and the memory it has)
>=20
> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it r=
equired use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for 4=
=2E4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed =
unreasonable to support VC4 with 4.1 kernels.
>=20
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and=
 later.
>=20
> This patch series proposes to support VC4 by only adding 'vc4graphics' =
to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all=
 the necessary configuration/changes to use the VC4 driver, including mes=
a/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed (sup=
port for .dtbo, and fix of the mesa packaging when there is no DRI driver=
).
> The memory reserved for the VC4 driver has default values depending on =
the version of the board used, but it can be configured by setting VC4_CM=
A_SIZE to a value supported by the overlay ('cma-256', 'cma-192', 'cma-12=
8', 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on boa=
rds with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>=20

Hi.

I tested this and works fine.

So +1 vote to merge this.


> It was tested with wayland/weston, without the support for X11.


I'm ataching here a minor patch that adds support for X11.

Regards!

--------------000505060205080201060007
Content-Type: text/x-diff;
 name="vc4graphics-Support-X11-with-the-VC4-driver.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="vc4graphics-Support-X11-with-the-VC4-driver.patch"

From 7058846569c3769c3e3c8a4de25a123ab56a289f Mon Sep 17 00:00:00 2001
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Date: Fri, 15 Jul 2016 21:22:00 +0200
Subject: [PATCH] vc4graphics: Support X11 with the VC4 driver.

  * We need to use the X11 modesetting driver with VC4.

  * We need to build at least the mesa swrast DRI driver.
   (its already the default so don't overwrite it to empty)

Signed-off-by: Carlos Alberto Lopez Perez <clopez@igalia.com>
---
 conf/machine/include/rpi-base.inc     | 2 +-
 recipes-graphics/mesa/mesa_%.bbappend | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-b=
ase.inc
index 34b90e8..3311074 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -12,7 +12,7 @@ XSERVER =3D " \
     xf86-input-evdev \
     xf86-input-mouse \
     xf86-input-keyboard \
-    xf86-video-fbdev \
+    ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-mo=
desetting", "xf86-video-fbdev", d)} \
     "
=20
 # Really supported starting from linux-raspberrypi 3.18.y only
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/=
mesa_%.bbappend
index b182388..9c5df99 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,4 +1,2 @@
 PACKAGECONFIG_append_rpi =3D " gallium"
 GALLIUMDRIVERS_rpi =3D "vc4"
-DRIDRIVERS_rpi =3D ""
-
--=20
2.1.4


--------------000505060205080201060007--

--am9pC7JR4aFUo4Fmn8EMDMMXj40HkXPXJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJXiTizAAoJEJZQic5rlfiCt+MP/Ah7DW8pzeoJACcD3fE7yzZI
zA9noyS+ZVsQGmmVjXN0ZVWyfuVhV0YrhMjITDZwBL6UyfNMaP6KQajxRV6ZV+2l
iPAtbl4T/kIUXYqfCb+8mOSxNhxR6XH0EI7SIcVW3mIkYwh48C4Brrw4FmcUaPv3
+ukG50owmb5kvZz0vF3F6xaNNA8xqaWHr3BxzwwKmusCXsIm3343F99hvbbtZqeS
2vXHLGzPhuO+CVVUITmJk69AoSDSuP69SMVjf9CwSx+HtwKKure7h8kEsYuaPClx
lsVx74p8QH3V84q/Jgw4FwkWBEbdjQy22X8SdEWW7nASzDzsMpZGRD92IepGhj8/
V7zomMraifSgw5BXi3MPPAsdXGivzrRm9NrLhaFHiqhMO1+6cgSOUoJPn3P95nQC
H6PgQNUbXu9n+N4B9Mnu2S8X7IZ2KRK/Tkpi/ma/LdWzihxmqCaQog1H8p1xWzrh
VoW6PYJofW0t1mpP3K8qMA0wZi28Zw9Jtxt13e98Q2CDyBG3keMAcGlSdSHYgD5H
Z5vMzou/zuiNtTbVmRXLBLzhmD1oOwvIP8rZ7+p+fIwVw7bVrxcqete2hMF4LiPw
IBu0DYpKRIg0FNxaVVDPe1oLPPQMpoOZe8lWvFe0eF3hcpkQr9dT+fsMVshzlKs6
yfsJ1Evxd3caLgNCv7GI
=cR7C
-----END PGP SIGNATURE-----

--am9pC7JR4aFUo4Fmn8EMDMMXj40HkXPXJ--
