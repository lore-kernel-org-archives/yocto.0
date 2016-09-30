Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D7B4E00DC3; Fri, 30 Sep 2016 09:19:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 777CFE00DA8
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 09:19:02 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 30 Sep 2016 09:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,273,1473145200"; 
	d="asc'?scan'208";a="885491746"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.35]) ([10.219.5.35])
	by orsmga003.jf.intel.com with ESMTP; 30 Sep 2016 09:19:00 -0700
To: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>,
	yocto@yoctoproject.org, "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"Perez Carranza, Jose" <jose.perez.carranza@intel.com>
References: <1475185458-16324-1-git-send-email-monserratx.sedeno.bustos@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57EE90A7.5070706@linux.intel.com>
Date: Fri, 30 Sep 2016 11:19:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1475185458-16324-1-git-send-email-monserratx.sedeno.bustos@intel.com>
Subject: Re: [PATCH] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Fri, 30 Sep 2016 16:19:12 -0000
X-Groupsio-MsgNum: 32140
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="epqPeHfMgEXSwuD9Q1wn8f9TmqblufEoA"

--epqPeHfMgEXSwuD9Q1wn8f9TmqblufEoA
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Monse,

Could you write an explanation about what is the purpose of this buildset=
?,

Also since the patch is for autobuilder you need to add
[yocto-autobuilder] in the subject and cc Joshua Lock.

Cheers,
	alimon


On 09/29/2016 04:44 PM, Monserrat Sedeno wrote:
> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
> ---
>  nightly-qa-distro.conf | 45 +++++++++++++++++++++---------------------=
---
>  1 file changed, 21 insertions(+), 24 deletions(-)
>=20
> diff --git a/nightly-qa-distro.conf b/nightly-qa-distro.conf
> index 2d2c828..8529345 100644
> --- a/nightly-qa-distro.conf
> +++ b/nightly-qa-distro.conf
> @@ -7,9 +7,6 @@ repos: [{'poky':
>          {'meta-qt4':
>              {'repourl':'git://git.yoctoproject.org/meta-qt4',
>               'branch':'master'}},
> -        {'meta-qt4':
> -            {'repourl':'git://git.yoctoproject.org/meta-qt4',
> -             'branch':'master'}},
>          {'meta-qt3':
>              {'repourl':'git://git.yoctoproject.org/meta-qt3',
>               'branch':'master'}}]
> @@ -20,28 +17,28 @@ props: [{'fp_date':{'prop_type':'StringParameter',
>  steps: [{'SetDest':{}},
>          {'CheckOutLayers': {}},
>          {'RunPreamble': {}},
> -        {'TriggerBuilds': {'schedulerName': 'main-build',=20
> +        {'TriggerBuilds': {'schedulerName': 'dist-build',=20
>  		           'waitForFinish': 'True',
>                             'schedulerNames': {
> -			   'nightly-oe-selftest': {},
> -			   'nightly-rpm': {}
> -		           'nightly-deb':{}
> -                           'nightly-ipk':{}
> -                           'nightly-world': {},=20
> -			   'buildtools': {},
> -                           'nightly-arm': {},=20
> -                           'nightly-mips': {},
> -                           'nightly-wic':{},
> -                           'nightly-multilib': {},=20
> -                           'nightly-x86-64': {},=20
> -                           'nightly-x86-64-lsb': {},
> -                           'nightly-x86': {},
> -                           'poky-tiny': {},=20
> -                           'nightly-qa-systemd': {},
> -                           'nightly-qa-extras': {},=20
> -                           'nightly-qa-targetbuilds': {},
> -                           'nightly-qa-logrotate': {},=20
> -                           'nightly-qa-pam': {},
> -                           'nightly-qa-skeleton': {}},
> +			   	'nightly-oe-selftest': {},
> +			   	'nightly-rpm': {},
> +		           	'nightly-deb': {},
> +                           	'nightly-ipk': {},
> +                          	'nightly-world': {},=20
> +			   	'buildtools': {},
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
> +                           	'nightly-qa-logrotate': {},=20
> +                           	'nightly-qa-pam': {},
> +                           	'nightly-qa-skeleton': {}},
>                             'schedulerNames_nowait': {}}},]
> =20
>=20


--epqPeHfMgEXSwuD9Q1wn8f9TmqblufEoA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX7pCpAAoJEGJqcE9h3glgAj8P/RhdIdx3OGcNdcIRxUmNcI4m
mGsVgtj/qJuXTcBMWw7EvWTzpK//6Qhu2rwbm48xppiTZ5AupRV6uVgEe6h4fYax
bK6SfApQn7CGEx5I4FWGlO0ufyvpjbT1xbNJFHOzML0Xfp3W0OxJWaaaTT8Vq03+
Iw7i7nmgT9tLQ/fSWsM7Tb7tm55eLMesBlQhGuoXuP7u6+/KoBGn5/FZVJXTRChe
QnhGPR6WssUhgY43o0AROOaDzlXaBIe0+6aCl2QNMqRKYEzz/h6LgSQskGLFjkkD
JxVh9Z1reEvWx7XzPt9YBTarFiIGZFqaRjw1MKp4IGb1s9MhzhGE8yNd6Ce5bOkx
yX688KfNgM7nLK69w16zjMmTLGeim5OivZX7SL34wmXffVEVEn7WLPdCbPZjfslj
q3/3FZiDrLJbwQsmH9HveHg2xYwJy7n+yczVoZbXwUqwzJz085ga03v9RirFgnz0
PFa9O1/8+gKwsp6iSx8nRGAcnV3bIBSWUelW4lN+SaoRVXsZ3zzSyz0k8UUhnbjK
/BRRyZNwkfNoupKp8g4Pwe2Jh1l2W+zOe/wbld1w91eefH+UZJ5YyNhheBA5xWyD
giMGnnwDqFfKYlGkQWKlgALujrKPNYzTF7dt+JsDQObxAvCKbb6nHpKr0ZWBKFvz
UEBqbrrVij7CxdBiRVL7
=8HJV
-----END PGP SIGNATURE-----

--epqPeHfMgEXSwuD9Q1wn8f9TmqblufEoA--
