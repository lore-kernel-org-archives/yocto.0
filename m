Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 381964C80A5B
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 13:24:42 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 May 2011 11:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,275,1304319600"; 
   d="scan'208";a="8251073"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 26 May 2011 11:24:35 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Thu, 26 May 2011 11:24:31 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 26 May 2011 11:24:30 -0700
Thread-Topic: [PATCH 1/1] meta-sugarbay: Change build instructions in README
	to use BSP tarball
Thread-Index: AcwbzGTdKQfJrut/Rmal8+vUGWmbBQAByqrQ
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B26036C408E@orsmsx501.amr.corp.intel.com>
References: <cover.1306431293.git.tom.zanussi@intel.com>
	<fc719f0cd6530ce15148b4aa274f1644b461b298.1306431293.git.tom.zanussi@intel.com>
In-Reply-To: <fc719f0cd6530ce15148b4aa274f1644b461b298.1306431293.git.tom.zanussi@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] meta-sugarbay: Change build instructions in README to use BSP tarball
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
X-List-Received-Date: Thu, 26 May 2011 18:24:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Tom. :-)

> -----Original Message-----
> From: Zanussi, Tom
> Sent: Thursday, May 26, 2011 10:43 AM
> To: Rifenbark, Scott M; Stewart, David C; yocto@yoctoproject.org
> Cc: Zanussi, Tom
> Subject: [PATCH 1/1] meta-sugarbay: Change build instructions in README t=
o
> use BSP tarball
>=20
> From: Tom Zanussi <tom.zanussi@intel.com>
>=20
> Change the build instructions to use BSP tarballs instead of git clones. =
 The git
> clone info remains as a mentioned alternative.
>=20
> Fixes [YOCTO #1103].
>=20
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-sugarbay/README |   21 ++++++++++++---------
>  1 files changed, 12 insertions(+), 9 deletions(-)
>=20
> diff --git a/meta-sugarbay/README b/meta-sugarbay/README index
> bcc46c2..7899205 100644
> --- a/meta-sugarbay/README
> +++ b/meta-sugarbay/README
> @@ -17,17 +17,11 @@ III. Booting the images in /binary  I. Building the m=
eta-
> sugarbay BSP layer  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> -For each BSP in the 'meta-intel' repository, there are multiple -branche=
s,
> one corresponding to each major release starting with -'laverne' (0.90), =
in
> addition to the latest code which tracks the -current master.
> -
>  In order to build an image with BSP support for a given release, you -ne=
ed to
> check out the 'meta-intel' branch corresponding to the release -you're
> building against e.g. to build for laverne (0.90), check out -the 'lavern=
e'
> branch of both poky and 'meta-intel'.
> +need to download the corresponding BSP tarball from the 'Board Support
> +Package (BSP) Downloads' page of the Yocto Project website.
>=20
> -Having done that, and assuming you cloned the 'meta-intel' repository
> +Having done that, and assuming you extracted the BSP tarball contents
>  at the top-level of your yocto build tree, you can build a sugarbay  ima=
ge by
> adding the location of the meta-sugarbay layer to  bblayers.conf e.g.:
> @@ -47,6 +41,15 @@ At the end of a successful build, you should have a li=
ve
> image that  you can boot from a USB flash drive (see instructions on how =
to
> do  that below, in the section 'Booting the images from /binary').
>=20
> +As an alternative to downloading the BSP tarball, you can also work
> +directly from the meta-intel git repository.  For each BSP in the
> +'meta-intel' repository, there are multiple branches, one corresponding
> +to each major release starting with 'laverne' (0.90), in addition to
> +the latest code which tracks the current master.  Instead of extracting
> +a BSP tarball at the top level of your yocto build tree, you can
> +equivalently check out the appropriate branch from the meta-intel
> +repository at the same location.
> +
>=20
>  II. Booting the images in /binary
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --
> 1.7.0.4


