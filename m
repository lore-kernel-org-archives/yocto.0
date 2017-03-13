Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2135E00A81; Mon, 13 Mar 2017 13:35:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C92C7E00887
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 13:35:34 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 13:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,160,1486454400"; 
	d="asc'?scan'208";a="74961559"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.128.117])
	([10.219.128.117])
	by orsmga005.jf.intel.com with ESMTP; 13 Mar 2017 13:35:32 -0700
To: yocto@yoctoproject.org
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <af345555-3ff8-e443-cd51-6686a676cb3d@linux.intel.com>
Date: Mon, 13 Mar 2017 14:35:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	Alex Franco <alejandro.franco@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 2/2] views.py: Consider layer name in recipe search
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
X-List-Received-Date: Mon, 13 Mar 2017 20:35:46 -0000
X-Groupsio-MsgNum: 35026
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="pSf9tTh1AgQWJCRBnrkRUJAtHX4GKfc2A"

--pSf9tTh1AgQWJCRBnrkRUJAtHX4GKfc2A
Content-Type: multipart/mixed; boundary="2EBPusmx1R30tmbPKpVo8cVF7qmNkupCV";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Cc: Alex Franco <alejandro.franco@linux.intel.com>,
 "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
Message-ID: <af345555-3ff8-e443-cd51-6686a676cb3d@linux.intel.com>
Subject: Re: [yocto][layerindex-web][PATCH 2/2] views.py: Consider layer name
 in recipe search
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>
In-Reply-To: <1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>

--2EBPusmx1R30tmbPKpVo8cVF7qmNkupCV
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Ping.

On 01/18/2017 04:19 PM, Jose Lamego wrote:
> From: Alex Franco <alejandro.franco@linux.intel.com>
>=20
> Recipe search cannot be narrowed to a specific layer, producing
> unnecessary results.
>=20
> This change allows including a layers name when searching for recipes t=
o
> narrow the yielded results by adding a layer name to the simplesearch.g=
etquery
> call in the recipe search view.
>=20
> [YOCTO #6618]
>=20
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  layerindex/views.py | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 03fadbb..5db6fbc 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -406,7 +406,8 @@ class RecipeSearchView(ListView):
>              qs0 =3D init_qs.filter(pn=3Dquery_string).order_by(*order_=
by)
>              qs0 =3D recipes_preferred_count(qs0)
> =20
> -            entry_query =3D simplesearch.get_query(query_string, ['pn'=
])
> +            entry_query =3D simplesearch.get_query(
> +                query_string, ['pn', 'layerbranch__layer__name'])
>              qs1 =3D init_qs.filter(entry_query).order_by(*order_by)
>              qs1 =3D recipes_preferred_count(qs1)
> =20
>=20

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--2EBPusmx1R30tmbPKpVo8cVF7qmNkupCV--

--pSf9tTh1AgQWJCRBnrkRUJAtHX4GKfc2A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYxwKWAAoJEFJAtowlSEbnLVAH+wdbMy7ct9cc/z9lL61DISA1
vkWBCRzAq2ZSz1DfzP9FTlnHTa4pS1EPg1+i9ghy+21kK95Av30KhjiTBV0igIBl
3/fop5cT8hHC5Kk+GhkUt/xrnbdYkalPT3S/n/bOMdUlzrBzYhZN4LqpNbNTLbfn
ZA4hYpaqQ9T+xCAF5olZTMIPRhKHDKWMpmqodr9tqbguW7aSXdDk6Ed2hSMENhkB
NW/oJNeKVBGxVq5kCbOiXUk6PLpogRx9krfbD5l38vwNcqS13lIYG/TYSY890S87
4E4o5uvzPEETytr33EBWlLZR7WN8CPCxty+uv4RXV81MJ/ALYF/9IXEaTIDCis0=
=IspV
-----END PGP SIGNATURE-----

--pSf9tTh1AgQWJCRBnrkRUJAtHX4GKfc2A--
