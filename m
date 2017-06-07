Return-Path: <geoffroy.vancutsem@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9632E00BD6; Wed,  7 Jun 2017 03:00:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17039E00BC1
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 03:00:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP; 07 Jun 2017 03:00:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,310,1493708400"; d="scan'208";a="1157584664"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2017 02:59:59 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.26]) by
	irsmsx110.ger.corp.intel.com ([163.33.3.25]) with mapi id
	14.03.0319.002; Wed, 7 Jun 2017 10:59:58 +0100
From: "VanCutsem, Geoffroy" <geoffroy.vancutsem@intel.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>, Yocto List
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Building boost-python
Thread-Index: AQHS33NWGxyJJ+VTnkigqUIMANkKPaIZKoKg
Date: Wed, 7 Jun 2017 09:59:58 +0000
Message-ID: <B23DE4404747DE4181D616A0059CCECE7C30D8BB@IRSMSX104.ger.corp.intel.com>
References: <a35f0a1e-369d-2868-c785-d044e5436e0a@smart-home-technology.ch>
In-Reply-To: <a35f0a1e-369d-2868-c785-d044e5436e0a@smart-home-technology.ch>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: Building boost-python
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
X-List-Received-Date: Wed, 07 Jun 2017 10:00:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Jakob Hasse
> Sent: Wednesday, June 7, 2017 11:48 AM
> To: Yocto List <yocto@yoctoproject.org>
> Subject: [yocto] Building boost-python
>=20
> Hello,
>=20
> One of my layers needs boost-python.
> When I try to build boost-python with bitbake, it complains:
>=20
> ERROR: Nothing PROVIDES 'boost-python'
>=20
> How can I fix this?
> Boost itself builds and I also included
> PACKAGECONFIG_pn_boost =3D "python"
> without any effect.

I believe the correct spelling is:
PACKAGECONFIG_pn-boost =3D "python"
(note the hyphen instead of underscore)

>=20
> My bblayers.conf is here:
>=20
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf #
> changes incompatibly LCONF_VERSION =3D "6"
>=20
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>=20
> BBLAYERS ?=3D " \
>    /usr/local/dey-2.0/sources/poky/meta \
>    /usr/local/dey-2.0/sources/poky/meta-yocto \
>    /usr/local/dey-2.0/sources/poky/meta-yocto-bsp \
>    /usr/local/dey-2.0/sources/meta-openembedded/meta-oe \
>    /usr/local/dey-2.0/sources/meta-openembedded/meta-python \
> /usr/local/dey-2.0/sources/meta-openembedded/meta-networking \
> /usr/local/dey-2.0/sources/meta-openembedded/meta-webserver \
>    /usr/local/dey-2.0/sources/meta-qt5 \
>    /usr/local/dey-2.0/sources/meta-swupdate \
>    /usr/local/dey-2.0/sources/meta-fsl-arm \
>    /usr/local/dey-2.0/sources/meta-fsl-demos \
>    /usr/local/dey-2.0/sources/meta-digi/meta-digi-arm \
>    /usr/local/dey-2.0/sources/meta-digi/meta-digi-dey \
>    /usr/local/dey-2.0/sources/meta-java/ \
>    /usr/local/dey-2.0/sources/meta-iot-cloud/ \
>=20
>    "
> BBLAYERS_NON_REMOVABLE ?=3D " \
>    /usr/local/dey-2.0/sources/poky/meta \
>    /usr/local/dey-2.0/sources/poky/meta-yocto \
>    "
>=20
> Any help is welcome!
> Jakob
>=20
> --
> Jakob Hasse
> Software Developement
>=20
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
>=20
> Smart Home Technology GmbH
> www.smart-home-technology.ch
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

