Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2776DE00839; Mon, 13 Mar 2017 13:35:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8AECE0077F
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 13:35:16 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 13:35:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,160,1486454400"; 
	d="asc'?scan'208";a="74961447"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.128.117])
	([10.219.128.117])
	by orsmga005.jf.intel.com with ESMTP; 13 Mar 2017 13:35:15 -0700
To: yocto@yoctoproject.org
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484777982-7168-2-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <02120cfb-c133-2b1d-54b6-5054cd047a19@linux.intel.com>
Date: Mon, 13 Mar 2017 14:35:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1484777982-7168-2-git-send-email-jose.a.lamego@linux.intel.com>
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	Alex Franco <alejandro.franco@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 1/2] views.py: Redirect to recipe details for single results
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
X-List-Received-Date: Mon, 13 Mar 2017 20:35:19 -0000
X-Groupsio-MsgNum: 35025
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="RPPdO5XJdQlKdD1993u87pirKuqh1LEN2"

--RPPdO5XJdQlKdD1993u87pirKuqh1LEN2
Content-Type: multipart/mixed; boundary="pAx9Pep8agPPL6tSbxwWpvPmqAJmf8lAs";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Cc: Alex Franco <alejandro.franco@linux.intel.com>,
 "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
Message-ID: <02120cfb-c133-2b1d-54b6-5054cd047a19@linux.intel.com>
Subject: Re: [yocto][layerindex-web][PATCH 1/2] views.py: Redirect to recipe
 details for single results
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1484777982-7168-2-git-send-email-jose.a.lamego@linux.intel.com>
In-Reply-To: <1484777982-7168-2-git-send-email-jose.a.lamego@linux.intel.com>

--pAx9Pep8agPPL6tSbxwWpvPmqAJmf8lAs
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Ping.

On 01/18/2017 04:19 PM, Jose Lamego wrote:
> From: Alex Franco <alejandro.franco@linux.intel.com>
>=20
> When a recipe search returns only one result, clicking the single
> result at the results view is still required to view further
> recipe detail.
>=20
> This change automatically redirects to the recipe details view
> when the recipe search returns a single result.
>=20
> [YOCTO #6618]
>=20
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  layerindex/views.py | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 0f73e93..03fadbb 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -372,6 +372,14 @@ class RecipeSearchView(ListView):
>      context_object_name =3D 'recipe_list'
>      paginate_by =3D 50
> =20
> +    def render_to_response(self, context, **kwargs):
> +        if len(self.object_list) =3D=3D 1:
> +            return HttpResponseRedirect("/layerindex/recipe/%s/"
> +                                        % self.object_list[0].id)
> +        else:
> +            return super(ListView, self).render_to_response(context,
> +                                                            **kwargs)
> +
>      def get_queryset(self):
>          _check_url_branch(self.kwargs)
>          query_string =3D self.request.GET.get('q', '')
>=20

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--pAx9Pep8agPPL6tSbxwWpvPmqAJmf8lAs--

--RPPdO5XJdQlKdD1993u87pirKuqh1LEN2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYxwKEAAoJEFJAtowlSEbntbMH/j38zj2BYCrcFHnDjKFnp737
LaTIDOY+4FFPBKtY12q6fYAnOHrCZNXde/EsWOEXWfIY1nHiIU4kok7Bz2VvqQA0
DiaoDi8sBn82nzPd2kIcXTdJDBWPBhIMRyWgFinVcqiIrkhZBVLJMTPAlYBGlNz8
oDTn3YwyfsY94CwCT75bast0SGANbb+67LpmqnFTj7aE2oFaQz/nxDvP5r8/IsVT
koqIDrwiXtgKMQ6p2QKO77hRK+mjElkphEBJoWVlIISwHGKUpT1BzDBYQpjusqDE
VbXPqT8BboG2jSZbQ2S2t9dwpWxPudS8Em1UtmOV7UJT8Yk/hF3nEpQWK+I7pHk=
=x3pF
-----END PGP SIGNATURE-----

--RPPdO5XJdQlKdD1993u87pirKuqh1LEN2--
