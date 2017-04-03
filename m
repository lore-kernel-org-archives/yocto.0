Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DFCAE0052B; Mon,  3 Apr 2017 12:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA651E00349
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 12:41:18 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 03 Apr 2017 12:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,271,1486454400"; 
	d="asc'?scan'208";a="82401763"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.128.121])
	([10.219.128.121])
	by orsmga005.jf.intel.com with ESMTP; 03 Apr 2017 12:41:17 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>
	<af345555-3ff8-e443-cd51-6686a676cb3d@linux.intel.com>
	<1547728.gaXEvVxRZb@peggleto-mobl.ger.corp.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <1369a0eb-a785-0c08-cebe-57851fa1b3a8@linux.intel.com>
Date: Mon, 3 Apr 2017 14:41:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1547728.gaXEvVxRZb@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 03 Apr 2017 19:41:19 -0000
X-Groupsio-MsgNum: 35379
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="dhpOUfdKobvuA4apr7KFUsQ6Q9hjC3UQs"

--dhpOUfdKobvuA4apr7KFUsQ6Q9hjC3UQs
Content-Type: multipart/mixed; boundary="FvJga5PK1Mq1JgWsr4FOTLD37i5iiC42I";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Message-ID: <1369a0eb-a785-0c08-cebe-57851fa1b3a8@linux.intel.com>
Subject: Re: [yocto] [layerindex-web][PATCH 2/2] views.py: Consider layer name
 in recipe search
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>
 <af345555-3ff8-e443-cd51-6686a676cb3d@linux.intel.com>
 <1547728.gaXEvVxRZb@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1547728.gaXEvVxRZb@peggleto-mobl.ger.corp.intel.com>

--FvJga5PK1Mq1JgWsr4FOTLD37i5iiC42I
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 03/13/2017 08:01 PM, Paul Eggleton wrote:
> Hi Jose,
>=20
> Sorry for the delay in responding to this.
>=20
> I'd prefer if this were implemented like the recently added "inherits:"=
 where=20
> we have a special prefix e.g. "layer:" in order to search for things in=
 a=20
> particular layer. Then it's much clearer as to what's going on.
>=20
I've submitted a new patch following this approach:
https://lists.yoctoproject.org/pipermail/yocto/2017-April/035451.html

> Cheers,
> Paul
>=20
> On Tuesday, 14 March 2017 9:35:34 AM NZDT Jose Lamego wrote:
>> Ping.
>>
>> On 01/18/2017 04:19 PM, Jose Lamego wrote:
>>> From: Alex Franco <alejandro.franco@linux.intel.com>
>>>
>>> Recipe search cannot be narrowed to a specific layer, producing
>>> unnecessary results.
>>>
>>> This change allows including a layers name when searching for recipes=
 to
>>> narrow the yielded results by adding a layer name to the
>>> simplesearch.getquery call in the recipe search view.
>>>
>>> [YOCTO #6618]
>>>
>>> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
>>> ---
>>>
>>>  layerindex/views.py | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/layerindex/views.py b/layerindex/views.py
>>> index 03fadbb..5db6fbc 100644
>>> --- a/layerindex/views.py
>>> +++ b/layerindex/views.py
>>>
>>> @@ -406,7 +406,8 @@ class RecipeSearchView(ListView):
>>>              qs0 =3D init_qs.filter(pn=3Dquery_string).order_by(*orde=
r_by)
>>>              qs0 =3D recipes_preferred_count(qs0)
>>>
>>> -            entry_query =3D simplesearch.get_query(query_string, ['p=
n'])
>>> +            entry_query =3D simplesearch.get_query(
>>> +                query_string, ['pn', 'layerbranch__layer__name'])
>>>
>>>              qs1 =3D init_qs.filter(entry_query).order_by(*order_by)
>>>              qs1 =3D recipes_preferred_count(qs1)
>=20
>=20

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--FvJga5PK1Mq1JgWsr4FOTLD37i5iiC42I--

--dhpOUfdKobvuA4apr7KFUsQ6Q9hjC3UQs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJY4qVeAAoJEFJAtowlSEbn/BcH/0oC8kd51WZUoMQfvtHgcVh6
Gsk+MNJF8Eo1pzPbKMOwIsgpcj2vPBvUQBOCPTbzid5L5YJ+DZTzINWIPgo4yB4L
piNayipE4HJAMrF/bZrrRDB2R0Buzm62VN9QoEkDBH+GkRuID/QJg8C2G5YdjuxA
xERneYqYc/QPQM9VqpiCBriKAsjyz4YR0VLt78J/tjwKXv4EU4GESelgBDF+QnOD
GDRMGXITr1PmBqtj/AvbU2AJg9KLE4J0jFyFUWqKct+n/CtosmsI/c4bSahAutKr
nk4O+FG0QU4wQ7Rp9eOLdFe3hZcanReJ9/goYN591x11woKskuO4HMzXpvG4tcs=
=pV3R
-----END PGP SIGNATURE-----

--dhpOUfdKobvuA4apr7KFUsQ6Q9hjC3UQs--
