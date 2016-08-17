Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8999E00F91; Wed, 17 Aug 2016 15:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45965E00E34
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 15:11:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 17 Aug 2016 15:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,535,1464678000"; 
	d="asc'?scan'208";a="1043062945"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.36]) ([10.219.5.36])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2016 15:11:08 -0700
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
References: <1471389033-946-1-git-send-email-william.c.randle@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57B4E102.3050706@linux.intel.com>
Date: Wed, 17 Aug 2016 17:11:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1471389033-946-1-git-send-email-william.c.randle@intel.com>
Subject: Re: [yocto-autobuilder][PATCH] enable use of kvm with qemux86*
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
X-List-Received-Date: Wed, 17 Aug 2016 22:11:13 -0000
X-Groupsio-MsgNum: 31536
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="gJ7ErbUj20EuUjBEM42Lg83QiuL65dMJw"

--gJ7ErbUj20EuUjBEM42Lg83QiuL65dMJw
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 08/16/2016 06:10 PM, Bill Randle wrote:
> When used with corresponding oe-core patch, this will enable the use
> of kvm when running qemux86* images on a x86* host that supports kvm.
> On the same build machine, for an x86_64 testimage run, the with and
> without times are:
>   without kvm:
>     core-image-sato-1.0-r0 do_testimage: Ran 43 tests in 728.726s
>     core-image-sato-sdk-1.0-r0 do_testimage: Ran 52 tests in 1090.838s
>   with kvm:
>     core-image-sato-1.0-r0 do_testimage: Ran 43 tests in 60.255s
>     core-image-sato-sdk-1.0-r0 do_testimage: Ran 52 tests in 71.719s
>=20
> [YOCTO #9298]
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
Acked-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  config/autobuilder.conf.example | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/config/autobuilder.conf.example b/config/autobuilder.conf.=
example
> index 9179d14..96bc4c6 100644
> --- a/config/autobuilder.conf.example
> +++ b/config/autobuilder.conf.example
> @@ -60,6 +60,9 @@ RESOLVE_TRIGGERED_HEAD =3D True
>  DEVKERNEL_MUT_REPO =3D "{'git://git.yoctoproject.org/poky-contrib':['s=
tage/master_under_test', 'sgw/mut']}"
>  DEVKERNEL =3D "linux-yocto-dev"
> =20
> +[TestSettings]
> +QEMU_USE_KVM =3D "True"
> +
>  [ADTREPO Settings]
>  ADTREPO_POPULATE =3D False
>  ADTREPO_DEV_POPULATE =3D True
>=20


--gJ7ErbUj20EuUjBEM42Lg83QiuL65dMJw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXtOEIAAoJEGJqcE9h3glgcuMP/3mG7MJ0lnQSTJQvtswlRrXJ
4Qyls72bDNCK/tO39jyaIUwYtD9OOoPRM959XQhdQyNv570V2R4gEi7ni0vuQvyJ
JsLncaslJd/sA+skyLMDcynvFYSoZRN3hsOzuC2egtJmNOaiJvzRmzvk99PNotRQ
BX9iBBWrHy3aJut1Zg2s3Tl9oLgcXp4hdNJ538Nmm95/RYdHZjTr1yi0Gl0rqsDv
2LeoTIqjviLl62Gut5ByaAZTpiEfTxCAFLmyStIjY/I09vJegGzkT51iZNt8CrWG
XFb7rAUKLBdIy5vULaOIWBFISqXT3Yg0r/z/yCdmsBCC2Bsk8kNuTbsXI85GBRAj
84uSjBDayrFNeiSovKHGPC5ut1WMVH+DXYXilTBh2M4qGZMR3dMimTzWL5r4GAkN
44jwVCo4iUN6AJSDO/dxIZHsHKNwLYJHFab4F1yqOx9p6cOqFj7iBheqBcw0RdaR
ZbFFKRb5kPBJfrx7M+IcXfGpx2ZOE/AyyX+4FVF3JQ8JRqcDJLNA4vcg4hR3l/Ot
Xv0Q7ALXDkUConmZazWCp9XV+/YxCpqykpGTXMSgDv867D5JC6M3E/3t/ZzTvDgy
n0D5iflGLkH8bapQCio7qDX88CJ2y+PgzVA3GmEC2zYT80iZggLQkA9AhDyIPGRp
r1oUq7n0Hik/Ko7oL4YH
=Wto8
-----END PGP SIGNATURE-----

--gJ7ErbUj20EuUjBEM42Lg83QiuL65dMJw--
