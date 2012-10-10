Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7DAE00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 18:10:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Oct 2012 18:10:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="232761775"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 09 Oct 2012 18:10:52 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.159]) with mapi id
	14.01.0355.002; Tue, 9 Oct 2012 18:10:52 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Fix use of PRINC in meta-intel BSPs
Thread-Index: AQHNpnDmeszwJfZpYE+lTO8AmnO5bpexuy9g
Date: Wed, 10 Oct 2012 01:10:51 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C1573101E@ORSMSX106.amr.corp.intel.com>
References: <1349823186-29019-1-git-send-email-dvhart@linux.intel.com>
	<cb5383c6d2763769a5251d84b42056f5a621b79d.1349822052.git.dvhart@linux.intel.com>
In-Reply-To: <cb5383c6d2763769a5251d84b42056f5a621b79d.1349822052.git.dvhart@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Fix use of PRINC in meta-intel BSPs
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
X-List-Received-Date: Wed, 10 Oct 2012 01:10:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tested this for sugarbay BSP, and did not see any issues with it.

Nitin


> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com]
> Sent: Tuesday, October 09, 2012 3:53 PM
> To: Yocto Project
> Cc: Darren Hart; Saul Wold; Zanussi, Tom; Kamble, Nitin A
> Subject: [PATCH] Fix use of PRINC in meta-intel BSPs
>=20
> Replaces all uses of PRINC with the form:
>=20
> PRINC :=3D "${@int(PRINC) + N}"
>=20
> Where N is the previously assigned value plus one to ensure a monotonical=
ly
> increasing PRINC value.
>=20
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Saul Wold <sgw@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>
> CC: Nitin Kamble <nitin.a.kamble@intel.com>
> ---
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    4 ++--
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
>  meta-tlk/recipes-core/psplash/psplash_git.bbappend |    2 +-
>  meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc  |    2 +-
>  14 files changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git a/meta-cedartrail/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-cedartrail/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-chiefriver/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-chiefriver/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-crownbay/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-crownbay/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-crystalforest/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-crystalforest/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-emenlow/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-emenlow/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappen=
d
> b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..6644a84 100644
> --- a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> -
> -PRINC =3D "1"
> +
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
> b/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-jasperforest/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-jasperforest/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
> b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
> b/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-sugarbay/recipes-
> bsp/formfactor/formfactor_0.0.bbappend b/meta-sugarbay/recipes-
> bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
> b/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 54da0ff..2a3ee7a 100644
> --- a/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -PRINC =3D "1"
> +PRINC :=3D "${@int(PRINC) + 2}"
> diff --git a/meta-tlk/recipes-core/psplash/psplash_git.bbappend b/meta-
> tlk/recipes-core/psplash/psplash_git.bbappend
> index 6b5258e..c0bf3dc 100644
> --- a/meta-tlk/recipes-core/psplash/psplash_git.bbappend
> +++ b/meta-tlk/recipes-core/psplash/psplash_git.bbappend
> @@ -2,7 +2,7 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>=20
>  DEPENDS +=3D "gdk-pixbuf-native"
>=20
> -PRINC =3D "6"
> +PRINC :=3D "${@int(PRINC) + 7}"
>=20
>  # NB: this is only for the main logo image; if you add multiple images h=
ere,  #
> poky will build multiple psplash packages with 'outsuffix' in name for di=
ff --git
> a/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc b/meta-tlk/recipes-
> kernel/linux/linux-yocto_tlk.inc
> index b1cf883..47d6ffd 100644
> --- a/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
> @@ -1,3 +1,3 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>  SRC_URI_append =3D " file://time-limited-kernel.cfg"
> -PR .=3D ".2"
> +PRINC :=3D "${@int(PRINC) + 1}"
> --
> 1.7.5.4


