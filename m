Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 046B1E00B83; Thu, 15 Jun 2017 06:19:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 288B3E00B57
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 06:19:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 15 Jun 2017 06:19:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,343,1493708400"; 
	d="asc'?scan'208";a="1141566658"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.128.123])
	([10.219.128.123])
	by orsmga001.jf.intel.com with ESMTP; 15 Jun 2017 06:19:48 -0700
To: yocto@yoctoproject.org,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
References: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1496263644-16202-1-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <aa0d77b0-ed15-40ba-393f-f3a805533d4f@linux.intel.com>
Date: Thu, 15 Jun 2017 08:19:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1496263644-16202-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: Re: [layerindex-web][PATCH v2] layerindex/views: support querying by layer name
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
X-List-Received-Date: Thu, 15 Jun 2017 13:19:53 -0000
X-Groupsio-MsgNum: 36584
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="6A8a533CIJ0fjnX5uEeAF2a8R9SIkj3B7"

--6A8a533CIJ0fjnX5uEeAF2a8R9SIkj3B7
Content-Type: multipart/mixed; boundary="lHLQppGKh6AbEKLQ5nRkIASAb3UJLOvRa";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org,
 "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
Message-ID: <aa0d77b0-ed15-40ba-393f-f3a805533d4f@linux.intel.com>
Subject: Re: [yocto] [layerindex-web][PATCH v2] layerindex/views: support
 querying by layer name
References: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1496263644-16202-1-git-send-email-jose.a.lamego@linux.intel.com>
In-Reply-To: <1496263644-16202-1-git-send-email-jose.a.lamego@linux.intel.com>

--lHLQppGKh6AbEKLQ5nRkIASAb3UJLOvRa
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

ping

On 05/31/2017 03:47 PM, Jose Lamego wrote:
> This change supports querying recipes that belong to a specific layer
> by using the prefix "layer:" + the desired layer name, for example:
> "layer: openembedded-core" and this string can be used by itself or
> combined with other supported options.
>=20
> A descriptive error message is displayed when the query string has an
> unexpected formatting or a non-valid layer name is searched.
>=20
> [YOCTO #6618]
>=20
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  layerindex/views.py | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 65a536a..3eac3ac 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -390,13 +390,28 @@ class RecipeSearchView(ListView):
>          for item in query_items:
>              if item.startswith('inherits:'):
>                  inherits.append(item.split(':')[1])
> +            # support searches by layer name
> +            elif item.startswith('layer:'):
> +                query_layername =3D item.split(':')[1].strip().lower()=

> +                if not query_layername:
> +                    messages.add_message(self.request, messages.ERROR,=
 'The \
> +layer name is expected to follow the \"layer:\" prefix without any spa=
ces.')
> +                query_layer =3D LayerBranch.objects.filter(
> +                    layer__name=3Dquery_layername)
> +                if query_layer:
> +                    init_qs =3D init_qs.filter(
> +                        layerbranch__layer__id=3Dquery_layer[0].id)
> +                else:
> +                    messages.add_message(self.request, messages.ERROR,=

> +                                         'No layer \"%s\" was found.'
> +                                         % query_layername)
>              else:
>                  query_terms.append(item)
>          if inherits:
>              # FIXME This is a bit ugly, perhaps we should consider hav=
ing this as a one-many relationship instead
>              for inherit in inherits:
>                  init_qs =3D init_qs.filter(Q(inherits=3Dinherit) | Q(i=
nherits__startswith=3Dinherit + ' ') | Q(inherits__endswith=3D' ' + inher=
it) | Q(inherits__contains=3D' %s ' % inherit))
> -            query_string =3D ' '.join(query_terms)
> +        query_string =3D ' '.join(query_terms)
> =20
>          if query_string.strip():
>              order_by =3D ('pn', 'layerbranch__layer')
>=20

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--lHLQppGKh6AbEKLQ5nRkIASAb3UJLOvRa--

--6A8a533CIJ0fjnX5uEeAF2a8R9SIkj3B7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZQol0AAoJEFJAtowlSEbnSykH/2dCDuHuKWYdvghltYqt0BKJ
osMZrCnG+TJL7H1hniFp9CNwjudPOMwXsV1wFEC81MIY9zJizyL/tDjahfJJ59yI
AUy+rsJ/zJDNqyTa5gZvi+9sMvmosFWhW5WYjCImBh/WgBHu8oFwDTwV0NIykFYl
T2c+0AunkjMYzVJrkNbwJycBnuBsAt6MG2S8Uz5m8LV4okYMQRj3tDIoFORkj+4D
vza7D8aLCCP9wvwsevjT40k4uxcy/PJ1mwdDLR2AInHY1L5ZmT9wVuglgVjEVvFG
8PAFEUkQKtHbriZvPWW6gGxRVUd9Bxuu+qkqOfgwiv2a3nKtNIHLofRdxDcdd1Q=
=LEnG
-----END PGP SIGNATURE-----

--6A8a533CIJ0fjnX5uEeAF2a8R9SIkj3B7--
