Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB701E00C5D; Wed,  5 Oct 2016 14:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D87E00855
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 14:06:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 05 Oct 2016 14:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,302,1473145200"; 
	d="asc'?scan'208";a="1060969223"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.33]) ([10.219.5.33])
	by orsmga002.jf.intel.com with ESMTP; 05 Oct 2016 14:06:10 -0700
To: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>,
	yocto@yoctoproject.org
References: <1475700859-14414-1-git-send-email-monserratx.sedeno.bustos@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57F56B7B.4040703@linux.intel.com>
Date: Wed, 5 Oct 2016 16:07:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1475700859-14414-1-git-send-email-monserratx.sedeno.bustos@intel.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv3]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 21:06:14 -0000
X-Groupsio-MsgNum: 32230
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="tM4ivtgLqrRskgKwGHbJwe0W6GXiOwrKf"

--tM4ivtgLqrRskgKwGHbJwe0W6GXiOwrKf
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 10/05/2016 03:54 PM, Monserrat Sedeno wrote:
> As part of the process to set new OS distribution as supported on Yocto=
c Project
> a new patch was created with the list of build sets that should be exec=
uted.
>=20
> Detailed information:
> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Se=
ts
>=20
> Fixes [YOCTO #9905]
>=20
> Note:In order to add a new distro as supported all the build sets shoul=
d be PASS
>=20
> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Acked-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  .../nightly-qa-distro.conf                         | 44 ++++++++++++++=
++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 buildset-config.autobuilder-qa/nightly-qa-distro.co=
nf
>=20
> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/bu=
ildset-config.autobuilder-qa/nightly-qa-distro.conf
> new file mode 100644
> index 0000000..6c02a91
> --- /dev/null
> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
> @@ -0,0 +1,44 @@
> +[nightly-qa-distro]
> +builders: 'example-worker'
> +repos: [{'poky':
> +            {'repourl':'git://git.yoctoproject.org/poky',
> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp=
', 'yocto':'meta-yocto', 'poky':'meta-poky'},
> +             'branch':'master'}},
> +        {'meta-qt4':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt4',
> +             'branch':'master'}},
> +        {'meta-qt3':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
> +             'branch':'master'}}]
> +props: [{'fp_date':{'prop_type':'StringParameter',
> +                       'size': 20,
> +                       'name': 'fp_date',
> +                       'label':'Full Pass date:'}}]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'RunPreamble': {}},
> +        {'TriggerBuilds': {'schedulerName': 'dist-build',=20
> +		           'waitForFinish': 'True',
> +                           'schedulerNames': {
> +			   	'nightly-oe-selftest': {},
> +			   	'nightly-rpm': {},
> +		           	'nightly-deb': {},
> +                           	'nightly-ipk': {},
> +                          	'nightly-world': {},=20
> +                           	'nightly-arm': {},=20
> +                           	'nightly-mips': {},
> +                           	'nightly-wic':{},
> +                           	'nightly-multilib': {},=20
> +                           	'nightly-x86-64': {},=20
> +                           	'nightly-x86-64-lsb': {},
> +                           	'nightly-x86': {},
> +                           	'poky-tiny': {},=20
> +                           	'nightly-qa-systemd': {},
> +                           	'nightly-qa-extras': {},=20
> +                           	'nightly-qa-targetbuilds': {},
> +				'nightly-qa-skeleton': {},
> +                           	'nightly-qa-logrotate': {},=20
> +                           	'nightly-qa-pam': {},
> +				'buildtools': {}},
> +                           'schedulerNames_nowait': {}}},]
> +
>=20


--tM4ivtgLqrRskgKwGHbJwe0W6GXiOwrKf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX9Wt9AAoJEGJqcE9h3glg2c0P/jvmpY0SdFFAxWNUPTYVPior
fa5sa45S6PBAYAT0lj93v5Xr9JkgngPOY9uaqTIbAZJNw79WaxWcFgBZ9DU6OO9r
Jatu4NeH2j4vS1bkUTs1f/LJWJdRog3IC519IoG+W/XvNbu79teAascn16cWp5Bs
0u5ha3IsiusD3K/DjazWPs+yTKwWbj/L70evhd5dRW1xF/ueQp3qy9ShD0Q+grPf
M1LmbcGqHwQ+/uRG/FpqPdkzro5iPR7ULvJlH2dI8Y1xBH8ID4R+etm0prOsk8TT
YfzxkpL/FH/SleFlQgpwuIAA/wBp/s8TRzMXcivY+LYDdK2YJRoWdeXKhLK8S+65
bcsM2HccueKjjlR+WR2a7hSKPoTjNcybJPmHWdtMWkCW/zTqPnNxs8LaAvQFmAm3
Eyp2EGgfJE3AtbWnuDMCH5ul49tSeV7tuWupeLJsTXY92HiTwlpcY9KuxV+dQx7L
ZZE+o/al+Q2qfkPBNmxXS3m83rT/OMzIWKvxpq2pLQRrYmt+vkCfxBGRsKW4NyUJ
J/vQ6T5X5xkdBDr40qfXIuXjpEbllID85TgCv42CYZQ8R0CINWB9Jc8mQMu/J4F6
bNC+/w57gmmr6a1xKzDJKlFbJKPkjRBYfaKvOX+dq9wCixfQLq6VlIFsx3F2o1M1
JysNFkfLOkpc0/+XbQeh
=LsLi
-----END PGP SIGNATURE-----

--tM4ivtgLqrRskgKwGHbJwe0W6GXiOwrKf--
