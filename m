Return-Path: <o.mandel@menlosystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E6E6E00C62; Wed, 13 Sep 2017 04:15:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 351 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Sep 2017 04:15:47 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06287E00C2B
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:15:47 -0700 (PDT)
Received: from frontend03.mail.m-online.net (unknown [192.168.6.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3xsf830kxNz1qsDq
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 13:09:55 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.84])
	by mail.m-online.net (Postfix) with ESMTP id 3xsf8304dLz1qqkS
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 13:09:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan3.mail.m-online.net [192.168.6.84]) (amavisd-new,
	port 10024) with ESMTP id KMVwXv9A4zuO for <yocto@yoctoproject.org>;
	Wed, 13 Sep 2017 13:09:53 +0200 (CEST)
X-Auth-Info: nh7sRJzvXpGev06x1QpGQ37Jrbz8Nl2SfXRGWURXp4m8cuDuYQdN9tA2dFPIjT13
Received: from [10.0.0.72] (host-141-40-253-38.customer.izb-online.de
	[141.40.253.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 13:09:53 +0200 (CEST)
To: yocto@yoctoproject.org
From: Olaf Mandel <o.mandel@menlosystems.com>
Message-ID: <264515b7-d412-2188-ad66-003c0e3d0dd8@menlosystems.com>
Date: Wed, 13 Sep 2017 13:08:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Question about populate_sdk
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
X-List-Received-Date: Wed, 13 Sep 2017 11:15:48 -0000
X-Groupsio-MsgNum: 37835
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="nomLwR0pELjGTLlAiRTPT4Td5pdVeLNwJ"

--nomLwR0pELjGTLlAiRTPT4Td5pdVeLNwJ
Content-Type: multipart/mixed; boundary="7MuUhITNxtnGjdDCTCxqiMQDWrQbKVl1u";
 protected-headers="v1"
From: Olaf Mandel <o.mandel@menlosystems.com>
To: yocto@yoctoproject.org
Message-ID: <264515b7-d412-2188-ad66-003c0e3d0dd8@menlosystems.com>
Subject: Question about populate_sdk

--7MuUhITNxtnGjdDCTCxqiMQDWrQbKVl1u
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hello,

I hope this is the right place to ask this: I wanted to generate an SDK
bundle to work on an applications code outside of the bitbake
environment (also without devtool, if possible). So I selected an image
containing the application and ran the populate_sdk task of that image.
But the generated SDK is missing some dependencies of the application.

Is this expected? Or am I doing something wrong?

I made a minimal demo layer that shows the problem (see below for the 7
files making up the demo). I ran "bitbake -c populate_sdk test-image"
and I expected the file usr/lib/test-lib to be present in the SDK, but
it is not.


# meta-test/conf/bblayers.conf.sample
LCONF_VERSION =3D "7"
BBLAYERS ?=3D " \
  ##OEROOT##/meta \
  ##OEROOT##/meta-test \
  "

# meta-test/conf/layer.conf
BBPATH .=3D ":${LAYERDIR}"
BBFILES +=3D "${LAYERDIR}/recipes-core/*/*.bb"
BBFILE_COLLECTIONS +=3D "test"
BBFILE_PATTERN_test =3D "^${LAYERDIR}/"
BBFILE_PRIORITY_test =3D "7"
LAYERDEPENDS_test =3D "core"

# meta-test/conf/local.conf.sample
CONF_VERSION =3D "1"
MACHINE =3D "qemux86-64"

# meta-test/recipes-core/images/test-image.bb
inherit core-image
IMAGE_INSTALL =3D "test-app"

# recipes-core/test-app/files/configure
#!/bin/sh
if [ -f "${PKG_CONFIG_SYSROOT_DIR:-}${libdir:-/usr/lib}/test-lib" ]; then=

  echo "test-lib found."
else
  echo >&2 "test-lib not found!"
  exit 1
fi

# meta-test/recipes-core/test-app/test-app.bb
LICENSE =3D "PD"
LIC_FILES_CHKSUM =3D
"file://${COREBASE}/meta/files/common-licenses/PD;md5=3Db3597d12946881e13=
cb3b548d1173851"
DEPENDS =3D "test-lib"
SRC_URI =3D "file://configure;subdir=3D${BPN}-${PV}"
do_configure () {
    sh configure
}

# meta-test/recipes-core/test-lib/test-lib.bb
LICENSE =3D "PD"
do_install () {
    install -d "${D}${libdir}"
    touch "${D}${libdir}/test-lib"
}
FILES_${PN} =3D "${libdir}/test-lib"


Thank you for any suggestions,
Olaf
--=20
Olaf Mandel



--7MuUhITNxtnGjdDCTCxqiMQDWrQbKVl1u--

--nomLwR0pELjGTLlAiRTPT4Td5pdVeLNwJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZuRHSAAoJEFS9nbRiUh3/5wsH/0sLX0tOq+lk2HXlEI9RZZwd
39sw2jR817PVOc72VZXfURBkSln5A4XXF1M5u9ZaesMEaxRXBa7PdiO3lpg4bHKi
O2Upuq/ewI+R+5PnasmagRn6DKE1o6JSnsWVZVnGxe6z9Fayr7sTau9/al5wPXne
6RabBE80HRdse9T0paNdl8Yyf18+VteBgr1HLinjq0q9hMd8nrWb2tDkJiQVwbBU
aVF7y/dE/DHMnAQ66FydWIXOlrhZXs+GjRAOWYJmPT2F9QuxWDEhvogVF769BXSx
EKmD2NxL+W8z7MJJK0CaZjjcPUVfEJgtiDmTm8rEt7Z8hkkYLR4rreA2maRfpBI=
=CCK5
-----END PGP SIGNATURE-----

--nomLwR0pELjGTLlAiRTPT4Td5pdVeLNwJ--
