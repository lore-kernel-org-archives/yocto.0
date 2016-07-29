Return-Path: <clopez@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BFC1E00D31; Fri, 29 Jul 2016 06:32:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88AB0E00CD1
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 06:32:20 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2ApBQC5WZtX/5tjdVtdGgGDKoFStniCD4F9hh0CgSw5EwEBAQEBAQFdJ4RcAQEBAQN4ARALEQMBAgEJFg8JAwIBAgE9CAYNBgICiDEBvD0BAQEBAQEBAwEBAQEBARMOhiqETYRghTsBBJNwhUODOoFwiVSBa4RbiHqMMYN4HwE0g3xsh2sBAQE
X-IPAS-Result: A2ApBQC5WZtX/5tjdVtdGgGDKoFStniCD4F9hh0CgSw5EwEBAQEBAQFdJ4RcAQEBAQN4ARALEQMBAgEJFg8JAwIBAgE9CAYNBgICiDEBvD0BAQEBAQEBAwEBAQEBARMOhiqETYRghTsBBJNwhUODOoFwiVSBa4RbiHqMMYN4HwE0g3xsh2sBAQE
X-IronPort-AV: E=Sophos;i="5.28,439,1464645600"; 
	d="asc'?scan'208,223";a="173666662"
Received: from fanzine.igalia.com ([91.117.99.155])
	by smtp4.mundo-r.com with ESMTP; 29 Jul 2016 15:32:18 +0200
Received: from 1.14.117.91.dynamic.reverse-mundo-r.com ([91.117.14.1]
	helo=[192.168.0.23]) by fanzine.igalia.com with esmtpsa 
	(Cipher TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16) (Exim)
	id 1bT7ti-0005Ro-To; Fri, 29 Jul 2016 15:32:18 +0200
To: Khem Raj <raj.khem@gmail.com>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
	<57924CB6.9000807@igalia.com>
	<95A97B51-03A1-46F2-8BBB-C1F9823D410F@gmail.com>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
	url=http://key.neutrino.es
Organization: Igalia S.L.
Message-ID: <579B5AD8.6070904@igalia.com>
Date: Fri, 29 Jul 2016 15:32:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <95A97B51-03A1-46F2-8BBB-C1F9823D410F@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 29 Jul 2016 13:32:24 -0000
X-Groupsio-MsgNum: 31300
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="NRxckQlJdwA9L0XOfl7hADh7QiFju1pKv"

--NRxckQlJdwA9L0XOfl7hADh7QiFju1pKv
Content-Type: multipart/mixed;
 boundary="------------030106000505010607070202"

--------------030106000505010607070202
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 29/07/16 03:36, Khem Raj wrote:
>>> It was tested with wayland/weston, without the support for X11.
>>>
>>
>>
>> I have a follow-up patch adding support for X11 that I will send once
>> this is merged.
>>
>=20
> Can you send the patch to the list please.
>=20

Find it attached in this e-mail.

Regards.

--------------030106000505010607070202
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


--------------030106000505010607070202--

--NRxckQlJdwA9L0XOfl7hADh7QiFju1pKv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJXm1rZAAoJEJZQic5rlfiC1UEQAICMuEo8Pfcsc9TivarpKEfW
C/A470cFO+Xazsvp2B2RKCPwZ5IHKWtjfzlm4219wBy4bmZLmpk/nwBfaX8hjCjf
NQYIMrMPhIsSpBZLMxQ26qeAgZ7j9bFlpJ/NEvro3U8YOr3GVBGThfJI0LisH9nv
FpUJuiSeR8EEliZ+ZXSDTG5vNsTNAKeBibJTSvW8xOXsxzUUZ+9szfeNFpmmhcsp
PoKO14kOfh41U+7XExCgokaDghioeSEn+MTvN2ccB3lxXH5UFjqFMQwNmtMT6kAV
evuqqd3LxWRDFvlGWSdC9khJmh2O17KP3APPG1xJdNjPO8p3Qz0pK7l8xy7U3ZER
d/lu6kod6OWgK5Ol3BpFPQfix2xlcHkuYrF3asHXX7ibcIAgt+Hv6v0thest0Hb2
zOxe9fcOoOZhH2heHi2WKIfa4gwsSy2O81OBeDYy11/dIWc7hC7sLz+bmH67Gu/t
TyTXLTKZwVdUEPG9zHD8bT99G8bEiIXD8BL7cmuC7iqr2yLOojNYCJf/8TCLRLyO
nwVdZc3y6waAE13s/3fvUQvF2MJlr6VeybTXuQkqdHABlm1/r0rpydoHJCyxYtMK
2Ab5sLAHqj7VsuVy9/3Uwny/xiSxSY0A9HtBfh5TLbTSyfxARaPMkkDePeSLTntT
O93qvIuq65ljtSazCMrb
=h3a2
-----END PGP SIGNATURE-----

--NRxckQlJdwA9L0XOfl7hADh7QiFju1pKv--
