Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DFEE004A1
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 03:59:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jul 2012 03:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="184880105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jul 2012 03:59:03 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 24 Jul 2012 03:59:02 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.44]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.231]) with mapi id
	14.01.0355.002; Tue, 24 Jul 2012 03:59:02 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "bruce.ashfield@windriver.com"
	<bruce.ashfield@windriver.com>, "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [yocto] [PATCH 1/6] emgd-driver-bin: upgrade from 1.10 to 1.14
Thread-Index: AQHNaYQyeSSzT4YDcUmWrExw2OJp+Zc4Q1lA
Date: Tue, 24 Jul 2012 10:59:01 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0318D61B@ORSMSX106.amr.corp.intel.com>
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
	<c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH 1/6] emgd-driver-bin: upgrade from 1.10 to 1.14
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
X-List-Received-Date: Tue, 24 Jul 2012 10:59:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This commit needs latest poky master to get the bitbake wget fetcher enhanc=
ement needed for the SRC_URI.

Thanks,
Nitin


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of nitin.a.kamble@intel.com
> Sent: Monday, July 23, 2012 3:36 PM
> To: yocto@yoctoproject.org; bruce.ashfield@windriver.com; Zanussi, Tom
> Subject: [yocto] [PATCH 1/6] emgd-driver-bin: upgrade from 1.10 to 1.14
>=20
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>=20
> 1.14 is the latest released driver for emgd. This change is tested on cro=
wnbay
> machine.
>=20
> Add runtime dependency to libxcb-dri2
>=20
> Otherwise the libxcb-dri2.so is not getting installed, and video accelera=
tion of
> emgd does not work. It is dynamic dependency of emgd_drv_video.so
>=20
> emgd-driver-bin: add downloadfilename param to SRC_URI
>=20
> As the url does not have the filename of the tarball, specify it here so =
that
> updated wget bitbake fetcher can save the downloaded file accordingly.
>=20
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  ...-driver-bin_1.10.bb =3D> emgd-driver-bin_1.14.bb} |   17 +++++++++---=
-----
>  1 files changed, 9 insertions(+), 8 deletions(-)  rename common/recipes-
> graphics/xorg-xserver/{emgd-driver-bin_1.10.bb =3D> emgd-driver-
> bin_1.14.bb} (88%)
>=20
> diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
> b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> similarity index 88%
> rename from common/recipes-graphics/xorg-xserver/emgd-driver-
> bin_1.10.bb
> rename to common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> index 5779e5d..b1ba1b8 100644
> --- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
> +++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> @@ -1,9 +1,9 @@
> -SUMMARY =3D "EMGD 1.10 xserver binaries"
> -DESCRIPTION =3D "EMGD 1.10 includes some userspace binaries that use non=
-
> free \
> +SUMMARY =3D "EMGD 1.14 xserver binaries"
> +DESCRIPTION =3D "EMGD 1.14 includes some userspace binaries that use
> +non-free \
>  licensing, which are now available via a non-click-through downloadable =
\
> tarball, and is what this recipe now uses.  Since it is a non-free licens=
e, \ -this
> recipe is marked as 'License_emgd-driver-bin_1.10' and you need to add \ =
-to
> LICENSE_FLAGS_WHITELIST +=3D \"License_emgd-driver-bin_1.10\" to your \
> +this recipe is marked as 'License_emgd-driver-bin_1.14' and you need to
> +add \ to LICENSE_FLAGS_WHITELIST +=3D \"License_emgd-driver-bin_1.14\"
> to
> +your \
>  local.conf in order to enable it in a build."
>  LICENSE =3D "Intel-binary-only"
>  LICENSE_FLAGS =3D "license_${PN}_${PV}"
> @@ -16,17 +16,18 @@ EMGD_VIDEO_PLUGIN_DIR =3D
> "../common/video_plugin"
>  LIC_FILES_CHKSUM =3D
> "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=3Db54f01caaf8483b3cb
> 60c0c40f2bf22d"
>=20
>  DEPENDS =3D "rpm-native xz-native"
> +RDEPENDS =3D "libxcb-dri2"
>=20
> -SRC_URI =3D
> "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.
> tgz"
> +SRC_URI =3D
> "https://edc.intel.com/Download.aspx?id=3D6190;downloadfilename=3DLIN_IEM
> GD_1_14_GOLD_2443.tgz"
>=20
> -SRC_URI[md5sum] =3D "e4a38d9efa0b086ae21b68145c4db4e9"
> -SRC_URI[sha256sum] =3D
> "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
> +SRC_URI[md5sum] =3D "733a7f237ffce21238ce2c9956df4fd6"
> +SRC_URI[sha256sum] =3D
> "bcdc333b5edbda7c746a83ef821ded4a0ca55ead30980e4e3680cdb6469f45a2"
>=20
>  # These are closed binaries generated elsewhere so don't check ldflags
> INSANE_SKIP_${PN} =3D "ldflags"
>=20
>  FILES_${PN} +=3D "${libdir}/dri ${libdir}/gstreamer-0.10
> ${libdir}/xorg/modules/drivers"
> -FILES_${PN}-dbg +=3D "${libdir}/xorg/modules/drivers/.debug
> ${libdir}/dri/.debug"
> +FILES_${PN}-dbg +=3D "${libdir}/xorg/modules/drivers/.debug
> ${libdir}/dri/.debug ${libdir}/gstreamer-0.10/.debug"
>=20
>  S =3D "${WORKDIR}/${EMGD_RPM_DIR}"
>=20
> --
> 1.7.3.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

