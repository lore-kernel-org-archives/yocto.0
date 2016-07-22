Return-Path: <clopez@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D36AE00F61; Fri, 22 Jul 2016 09:42:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E36E00F58
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 09:42:07 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CMAgBtTJJX/5tjdVteHAEBgyFWfI0rqSaCD4F7H4V9AoEwOBQBAQEBAQEBXSeEXAEBAQECAXgGCwsYCRYPCQMCAQIBRRMGAgKIJAwBu0gBCxcOhiqETYobBZkmgziBcG6Ce4VdjzqQIR42g3VsiHMBAQE
X-IPAS-Result: A2CMAgBtTJJX/5tjdVteHAEBgyFWfI0rqSaCD4F7H4V9AoEwOBQBAQEBAQEBXSeEXAEBAQECAXgGCwsYCRYPCQMCAQIBRRMGAgKIJAwBu0gBCxcOhiqETYobBZkmgziBcG6Ce4VdjzqQIR42g3VsiHMBAQE
X-IronPort-AV: E=Sophos;i="5.28,405,1464645600"; 
	d="asc'?scan'208";a="154639374"
Received: from fanzine.igalia.com ([91.117.99.155])
	by smtp4.mundo-r.com with ESMTP; 22 Jul 2016 18:41:36 +0200
Received: from 1.14.117.91.dynamic.reverse-mundo-r.com ([91.117.14.1]
	helo=[192.168.0.23]) by fanzine.igalia.com with esmtpsa 
	(Cipher TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16) (Exim)
	id 1bQdW4-0004mD-78
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 18:41:36 +0200
To: yocto@yoctoproject.org
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
	url=http://key.neutrino.es
Organization: Igalia S.L.
Message-ID: <57924CB6.9000807@igalia.com>
Date: Fri, 22 Jul 2016 18:41:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
Subject: Re: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Fri, 22 Jul 2016 16:42:13 -0000
X-Groupsio-MsgNum: 31185
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="NHrvE22hVlpJCVs8hMjE76jCRWSisSOEu"

--NHrvE22hVlpJCVs8hMjE76jCRWSisSOEu
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 21/07/16 14:32, Herve Jourdain wrote:
> v4 series:
> a. rebased
> b. Upstream-Status added to the patch to the VC4 driver (needed only fo=
r kernel 4.4, accepted upstream in 4.7)
>=20
> v3 series:
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
> It was tested with wayland/weston, without the support for X11.
>=20


I have a follow-up patch adding support for X11 that I will send once
this is merged.


> This patch series depends on two other patch series previously posted, =
that enable the support for .dtbo overlay files.
>=20
> Herve Jourdain (12):
>   rpi-default-providers.inc: change default providers to support
>     vc4graphics
>   rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>   raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   rpi-config_git.bb: add v4c overlay to config.txt to support
>     vc4graphics
>   wayland/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   weston/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   mesa_%.bbappend: new file to add the correct configuration options to=

>     support vc4graphics
>   linux-rpi.inc: add the configuration options required to support
>     vc4graphics
>   linux-raspberrypi-4.4: add patch to enable proper operation of
>     renderD128 device
>=20
>  conf/machine/include/rpi-base.inc                  |  1 +
>  conf/machine/include/rpi-default-providers.inc     |  8 +++---
>  conf/machine/raspberrypi.conf                      |  2 ++
>  conf/machine/raspberrypi0.conf                     |  2 ++
>  conf/machine/raspberrypi2.conf                     |  2 ++
>  conf/machine/raspberrypi3.conf                     |  2 ++
>  recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
>  recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
>  recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
>  recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
>  .../0002-vc4-ioctl-rendering-allow.patch           | 29 ++++++++++++++=
++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
>  recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
>  13 files changed, 75 insertions(+), 15 deletions(-)
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4=
-ioctl-rendering-allow.patch
>=20

Tested-by: Carlos Alberto Lopez Perez <clopez@igalia.com>



--NHrvE22hVlpJCVs8hMjE76jCRWSisSOEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJXkky2AAoJEJZQic5rlfiCD7oP/A+v1PnNkJbjPgo+ju8Hnmny
y3B9cAlhM0GCSH/UHPUt6NuUl3749LqSgW8cetpUxOTiBQpTAQDNkl3io/xESO9r
Ppeg9S5D4fmR/KAvSH5ewcqWd28rz4xQlwgAnbzPG+cXaIxIHQORk1S+JC1SyG73
X8WiN/7714qRs3IpqqveE+JSeeLlufi4cFBSl1udqRipK5AD1H7evMH4+2dWx8u4
a7eQnDgjXfidK8WRrUSdnvGxMlV1dL/XW/P6BSWLXT1HT1hz3rvYTHRkkX0gIA4V
Zc0qZO4YRio1O4wJihShWBnoIt7BTchEabJC8D3eyVjzGJ0wiPd/DyptEdUAHbG7
+fJxnBR+j1LpMgp856K3WGlvFu9qnLOduIeeLGcUE5NksjtAANh82gIDQpmOkGi3
i8dphQlwW+LV/AGXkZxz71f2kaao8UHUm2l7KjGBeoF3qsS77qTCy2NNCymEmHL5
sRrjuAucmWSuTQvo1oiPHtKiVv2BC5X3lm45xaXrv+InACxMY2IqfS7T8OPhFvy6
0FxufAUE/F8clXfFQE/mmJAT/iG8tC81zClkb8tWHHFrdF35yHDG2UOzpPtNmBFP
IPMJJbc9LL6lSUb3jK7pYSDlkth8LGTGPC7H/BBWBRtzPM15FTuRakpwe+xxaCgB
d8VVcbE+HZEiSLlCE3N7
=H7fu
-----END PGP SIGNATURE-----

--NHrvE22hVlpJCVs8hMjE76jCRWSisSOEu--
