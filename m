Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4947CE013DB
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 17:04:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2012 17:04:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,609,1344236400"; d="scan'208";a="157896591"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Oct 2012 17:04:45 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 18 Oct 2012 17:04:45 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.240]) with mapi id
	14.01.0355.002; Thu, 18 Oct 2012 17:04:44 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zanussi, Tom"
	<tom.zanussi@intel.com>, "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [PATCH 1/1] mesa-dri.bbappend: avoid buildtime warnings
Thread-Index: AQHNrYznNdLORLdfj02o+NR73Bzi9Je/vzVQ
Date: Fri, 19 Oct 2012 00:04:44 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D90B415@ORSMSX106.amr.corp.intel.com>
References: <cover.1350604720.git.nitin.a.kamble@intel.com>
	<15e1a3fc03990c5ff2a64c815f47001a01bb2c41.1350604720.git.nitin.a.kamble@intel.com>
In-Reply-To: <15e1a3fc03990c5ff2a64c815f47001a01bb2c41.1350604720.git.nitin.a.kamble@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] mesa-dri.bbappend: avoid buildtime warnings
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
X-List-Received-Date: Fri, 19 Oct 2012 00:04:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rahul,
   FYI, This commit will also avoid similar warnings for cedar-trail build.

Nitin

> -----Original Message-----
> From: Kamble, Nitin A
> Sent: Thursday, October 18, 2012 5:00 PM
> To: yocto@yoctoproject.org; Zanussi, Tom; Hart, Darren
> Cc: Kamble, Nitin A
> Subject: [PATCH 1/1] mesa-dri.bbappend: avoid buildtime warnings
>=20
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>=20
> Extend the mesa-dri recipe from oecore to avoid conflict with files gener=
ated
> by emgd-driver-bin recipe.
>=20
> This commits avoids these build warning
>=20
> WARNING: The recipe is trying to install files into a shared area when th=
ose
> files already exist. Those files are:
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/KHR/khrplatform.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/EGL/eglplatform.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/EGL/eglext.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/EGL/egl.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/GLES/glplatform.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/GLES/gl.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/GLES/glext.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/GLES2/gl2ext.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/GLES2/gl2.h
>    /srv/home/nitin/build-test-bsps/build-
> crownbay/tmp/sysroots/crownbay/usr/include/GLES2/gl2platform.h
>=20
> This resolves part of the issue reported on the bug:
> [Yocto #3238]
>=20
> This is a temporary fix, and will be fixed differently after 1.3 release.
>=20
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)  create mode 100644
> common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
>=20
> diff --git a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> new file mode 100644
> index 0000000..90e4394
> --- /dev/null
> +++ b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> @@ -0,0 +1,5 @@
> +# Temporary avoid warnings of duplicate files providers until #
> +mesa-dri & emgd-driver-bin recipes are fixed SSTATE_DUPWHITELIST +=3D
> +"${STAGING_INCDIR}/KHR ${STAGING_INCDIR}/EGL \
> +                        ${STAGING_INCDIR}/GLES ${STAGING_INCDIR}/GLES2"
> +
> --
> 1.7.3.4


