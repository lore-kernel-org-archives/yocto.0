Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7391AE00B81; Thu, 10 Dec 2015 17:31:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC87E0085A
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 17:31:52 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 10 Dec 2015 17:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,410,1444719600"; d="scan'208";a="11282216"
Received: from exxie-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.172.26])
	by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2015 17:31:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 11 Dec 2015 14:31:46 +1300
Message-ID: <2828300.Ks4bFI5QLI@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <1449007421-26206-5-git-send-email-anibal.limon@linux.intel.com>
References: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
	<1449007421-26206-5-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [[AUH] 4/6] testimage/ptest: Add require of ptest-pkgs in EXTRA_IMAGE_FEATURES.
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
X-List-Received-Date: Fri, 11 Dec 2015 01:31:54 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tue, 01 Dec 2015 16:03:39 An=EDbal Lim=F3n wrote:
> Instead of add manually the ptest packages use IMAGE_FEATURE to
> install ptest packages this save time validating if ptest pkg
> exist.
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  README               | 3 ++-
>  modules/testimage.py | 5 ++---
>  upgradehelper.py     | 5 +++++
>  3 files changed, 9 insertions(+), 4 deletions(-)
>=20
> diff --git a/README b/README
> index 1c8eba1..63c3b39 100644
> --- a/README
> +++ b/README
> @@ -108,7 +108,8 @@ file:
>  --------------- snip ---------------
>  INHERIT +=3D "testimage"
>=20
> -EXTRA_IMAGE_FEATURES =3D "debug-tweaks package-management"
> +DISTRO_FEATURES_append =3D " ptest"
> +EXTRA_IMAGE_FEATURES =3D "debug-tweaks package-management ptest-pkgs=
"
>  # testimage/ptest only work with rpm
>  PACKAGE_CLASSES =3D "package_rpm"
>  --------------- snip ---------------
> diff --git a/modules/testimage.py b/modules/testimage.py
> index e410111..52e2592 100644
> --- a/modules/testimage.py
> +++ b/modules/testimage.py
> @@ -60,11 +60,10 @@ class TestImage():
>          # for provide access to the target
>          if ptest:
>              pkgs_out.append("dropbear")
> +            pkgs_out.append("ptest-runner")
>=20
>          for c in pkgs:
>              pkgs_out.append(c['PN'])
> -            if ptest:
> -                pkgs_out.append("%s-ptest" % c['PN'])
>=20
>          return ' '.join(pkgs_out)
>=20
> @@ -122,7 +121,7 @@ class TestImage():
>          ptest_pkgs =3D self._get_ptest_pkgs()
>=20
>          os.environ['CORE_IMAGE_EXTRA_INSTALL'] =3D \
> -            self._get_pkgs_to_install(ptest_pkgs, True)
> +            self._get_pkgs_to_install(ptest_pkgs, ptest=3DTrue)
>          I( "   building core-image-minimal for %s ..." % machine)
>          self.bb.complete("core-image-minimal", machine)
>=20
> diff --git a/upgradehelper.py b/upgradehelper.py
> index db39601..5a2b844 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -242,6 +242,11 @@ class Updater(object):
>                        " please add to conf/local.conf.")
>                      exit(1)
>=20
> +                if not "ptest-pkgs" in
> self.base_env['EXTRA_IMAGE_FEATURES']:=20
> +                    E("
> testimage/ptest requires ptest-pkgs in EXTRA_IMAGE_FEATURES"\=20
> +           =20
>          " please add to conf/local.conf.")
> +                    exit(1)
> +

Strictly speaking this isn't really the proper test - the proper test i=
s that=20
ptest-pkgs is in IMAGE_FEATURES *for the image being built and tested* =
(not=20
necessarily the global configuration). We can deal with this at some po=
int in=20
the future though.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

