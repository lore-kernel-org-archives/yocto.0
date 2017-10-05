Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A984E00D83; Wed,  4 Oct 2017 19:01:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB460E00D77
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 19:01:15 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Oct 2017 19:01:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,479,1500966000"; d="scan'208";a="906889855"
Received: from mhrasooi-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.159])
	by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2017 19:01:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Date: Thu, 05 Oct 2017 15:01:10 +1300
Message-ID: <3688235.HQgvHeQ0bO@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <2376f96acc0f4c3db9c3b40a3cfc98f3@sakuraus.com>
References: <2376f96acc0f4c3db9c3b40a3cfc98f3@sakuraus.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Having trouble getting recipe to run in proper directory
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
X-List-Received-Date: Thu, 05 Oct 2017 02:01:16 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Greg,

On Thursday, 5 October 2017 1:16:15 PM NZDT Greg Wilson-Lindberg wrote:
> I'm trying to create a new recipe for a package that has a version and no=
n-numeric rev
> in its name (canfestival-3-asc). I've gotten bitbake to unpack the packag=
e into a tree=20
> that looks ok, but it keeps trying to run the compile at least in the wro=
ng directory.=20
> Here is the recipe:
>=20
>=20
> SUMMARY =3D "Independent CANOpen=AE stack"
> DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform inde=
pendent \
>                CANOpen=AE stack that can be built as master or slave node=
s on PCs, \
>                Real-time IPCs, and Microcontrollers."
>=20
> HOMEPAGE =3D "http://www.canfestival.org/"
>=20
> SRCREV =3D "895:8973dd8be7e8"
>=20
> SRC_URI =3D "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestiv=
al-3-asc"
> SRC_URI[md5sum] =3D ""
> SRC_URI[sha256sum] =3D ""
>=20
> PN =3D "canfestival"
> PV =3D '3'
> PR =3D 'asc'
>=20
> LICENSE =3D "LGPL-2"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D \
>                     file://LICENCE;md5=3D"
>=20
> inherit autotools
>=20
> # Specify any options you want to pass to the configure script using EXTR=
A_OECONF:
> EXTRA_OECONF =3D "-can=3Dsocket -timers=3Dunix -SDO_MAX_SIMULTANEOUS_TRAN=
SFERS=3D25 \
>                 -SDO_MAX_LENGTH_TRANSFER=3D4096 -MAX_NB_TIMER=3D128 -SDO_=
TIMEOUT_MS=3D1000"
>=20
> PROVIDES =3D "canfestival"
>=20
> The directory structure that bitbake builds is:
>=20
>=20
> canfestival
>=20
>            3-asc
>=20
>                    build
>=20
>                    canfestival-3           # directory that bitbake is tr=
ying to compile in
>=20
>                    canfestival-3-asc       # directory that code was extr=
acted to
>=20
>                    temp
>=20
>=20
> I'm not getting any errors from the configure task, but the log file look=
s like=20
> it is trying to run from the canfestival-3 directory, not the canfestival=
=2D3-asc. What=20
> can I do to the recipe to get the build to run in the canfestival-3-asc d=
irectory?=20
> Or, i guess, get bitbake to unpack the source into the canfestival-3, or a
> different directory that it will actually run the tasks in.

So firstly the directory where the build system should expect to find the
source after do_unpack is specified by the S variable, whose default
is "${WORKDIR}/${BP}" where BP defaults to "${BPN}-${PV}" and BPN will be t=
he
same as PN in this case. However, you're setting the "asc" part in PR -
typically PR is left under the control of the build system and thus your PV
would typically be set to "3-asc" in which case S would default to the righ=
t value i.e.
"canfestival-3-asc" (but if it didn't, you would just set S to fix it).

To summarise, set PV =3D "3-asc" (or alternatively have it picked up from t=
he
file name, i.e. name it canfestival_3-asc.bb) and it should work as you
expect.

A couple of other notes:
* For LICENSE, LGPL-2 isn't a standard value - LGPLv2, LGPLv2.0, LGPLv2.1,=
=20
  LGPL-2.0, or LGPL-2.1 (with or without + at the end) would be understood
  by the build system
* You don't need SRC_URI md5sum/sha256sum for an hg:// URL.

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

