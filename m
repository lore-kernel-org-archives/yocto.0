Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4035EE00A38; Thu, 13 Jul 2017 23:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8D7CE00944;
	Thu, 13 Jul 2017 23:45:03 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 13 Jul 2017 23:45:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,357,1496127600"; d="scan'208";a="286766921"
Received: from samhenry-mobl2.amr.corp.intel.com ([10.252.200.245])
	by fmsmga004.fm.intel.com with ESMTP; 13 Jul 2017 23:45:02 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <29844a74085e4efd9f279dfea9054c09@bowex36c.micron.com>
Date: Thu, 13 Jul 2017 23:45:02 -0700
Message-Id: <CC972D51-93E5-4DDA-9638-2F968C123AFC@linux.intel.com>
References: <29844a74085e4efd9f279dfea9054c09@bowex36c.micron.com>
To: "Francesco Camarda (fcamarda)" <fcamarda@micron.com>
X-Mailer: Apple Mail (2.3273)
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-intel] How to build module iasImage from bzImage outside yocto
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
X-List-Received-Date: Fri, 14 Jul 2017 06:45:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Jul 13, 2017, at 5:59 AM, Francesco Camarda (fcamarda) =
<fcamarda@micron.com> wrote:
>=20
> Hello,
> Starting from a yocto build (details below):
> =20
> $ bitbake ias-kc-pf-image
> Loading cache: 100% =
|#########################################################################=
###################| ETA:  00:00:00
> Loaded 2536 entries from dependency cache.
> Parsing recipes: 100% =
|#########################################################################=
#################| Time: 00:00:00
> Parsing of 1964 .bb files complete (1963 cached, 1 parsed). 2536 =
targets, 322 skipped, 2 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> =20
> Build Configuration:
> BB_VERSION        =3D "1.28.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-16.04"
> TARGET_SYS        =3D "x86_64-poky-linux"
> MACHINE           =3D "gr-mrb-64"
> DISTRO            =3D "poky-ivi-systemd"
> DISTRO_VERSION    =3D "10.0+snapshot-20170713"
> TUNE_FEATURES     =3D "m64 corei7"
> TARGET_FPU        =3D ""
> meta             =20
> meta-yocto

This should be meta-poky now. How old is the metadata (version of poky / =
Yocto Project release) your distro is based on?

>       =20
> meta-yocto-bsp    =3D =
"first_build:dade0e68c645473d94e1b05020b064df40677e81=E2=80=9D

This hash shows you are using a local branch, so I can=E2=80=99t guess =
at which version of poky you are using.

> meta-ias-audio   =20
> meta-ias-boot    =20
> meta-ias-core    =20
> meta-ias-devtools=20
> meta-ias-earlyapplication=20
> meta-ias-graphics=20
> meta-ias-gr-mrb-bsp=20
> meta-ias-ivi-adapt=20
> meta-ias-kc-reference=20
> meta-ias-lifecycle=20
> meta-ias-mediasdk=20
> meta-ias-mediatransport=20
> meta-ias-oss     =20
> meta-ias-security=20
> meta-ias-setup   =20
> meta-ias-systembus=20
> meta-ias-targetutilities=20
> meta-ias-vehiclebus =3D =
"master:89811f29229764d65db9b577252e9016083b8699=E2=80=9D

I can find no references to meta-ias on layers.openembedded.org or in a =
Google search, so no idea how to help you with respect to your =
=E2=80=9CiasImage=E2=80=9D question.

> meta-intel       =20
> meta-valleyisland =3D =
"first_build:8c15de8dbaa1414ffd0f69bea7227e7285816f85"
> meta-ivi          =3D =
"first_build:e42777ef74b476ed6702b036818bcffd4fe0d768"
> meta-filesystems =20
> meta-networking  =20
> meta-oe          =20
> meta-python       =3D =
"first_build:dc5634968b270dde250690609f0015f881db81f2"
> meta-oracle-java  =3D =
"first_build:f7c98706f80a2488ad2628e5b0c6d3f9f80c24fd"
> =20
> After building the bzImage from an external toolchain is it possible =
to build (outside yocto) the iasImage necessary to boot the Gordon peak =
(Intel Apollo lake SoC).
> =20

> Also I am trying to build a sato image but:
> =20
> $ bitbake core-image-sato
> Loading cache: 100% =
|#########################################################################=
###################| ETA:  00:00:00
> Loaded 2536 entries from dependency cache.
> Parsing recipes: 100% =
|#########################################################################=
#################| Time: 00:00:00
> Parsing of 1964 .bb files complete (1963 cached, 1 parsed). 2536 =
targets, 322 skipped, 2 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'packagegroup-core-x11-sato-games' (but =
/home/rah/workspace/intel_GP_APL/GR_Yocto/poky/meta/recipes-sato/images/co=
re-image-sato.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'packagegroup-core-x11-sato-games' is =
unbuildable, removing...
> Missing or unbuildable dependency chain was: =
['packagegroup-core-x11-sato-games']
> ERROR: Required build target 'core-image-sato' has no buildable =
providers.
> Missing or unbuildable dependency chain was: ['core-image-sato', =
'packagegroup-core-x11-sato-games']
> =20

You are missing the following commit from either poky or oe-core:
=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-sato/im=
ages/core-image-sato.bb?id=3D3afed1549a623d2a4921883319ff96bf3e6edc54

> Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.
> =20
> =20
> Regards,
> Francesco
> =20
> <image001.png>
> Francesco Camarda | EBU=20
> Automotive Sr. System AE
> desk +39.095.7483536 | mobile +39.346.7897221
> =20
> --=20
> _______________________________________________
> meta-intel mailing list
> meta-intel@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-intel


