Return-Path: <anibal.limon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CFA1E00995; Mon, 27 Mar 2017 09:49:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93B58E00867
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 09:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490633391; x=1522169391;
	h=subject:to:references:cc:from:message-id:date:
	mime-version:in-reply-to;
	bh=DZ9BlSTIFjLrq6r6nV8PSmG04Eom9GnbyUgpyvpiHN8=;
	b=t1on0n4uLbrd0oXHSYtMUidpZ85Jquz+Q2guTCFtRX4fO3jh8NClyaAM
	q62B4uqMzonnGLTR/l0PC7VeoEbo+g==;
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2017 09:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,232,1486454400"; 
	d="asc'?scan'208";a="1147517868"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.126])
	([10.219.128.126])
	by fmsmga002.fm.intel.com with ESMTP; 27 Mar 2017 09:49:48 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Alain Achkar <alain.achkar@triacta.com>
References: <CAGkf0HDQYKbKYYH=eQdrnBkcrPDXm0LsaQpC_3XWN1HSbnikWQ@mail.gmail.com>
	<3249600.c7qDm493qG@peggleto-mobl.ger.corp.intel.com>
From: Anibal Limon <anibal.limon@intel.com>
Message-ID: <58D94392.3020307@intel.com>
Date: Mon, 27 Mar 2017 10:53:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <3249600.c7qDm493qG@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to interpret the "Recipes reporting system" (e.g. for Python3 3.4, 3.5, 3.6)
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
X-List-Received-Date: Mon, 27 Mar 2017 16:49:53 -0000
X-Groupsio-MsgNum: 35241
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="0TPNFjek9MtgbxUOxVbuuwSuhXgFptpi0"

--0TPNFjek9MtgbxUOxVbuuwSuhXgFptpi0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 03/23/2017 02:52 PM, Paul Eggleton wrote:
> Hi Alain,
>=20
> On Friday, 24 March 2017 4:50:39 AM NZDT Alain Achkar wrote:
>> Is there any brief README or documentation about the "Recipe reporting=

>> system" ?
>>
>> For example: http://recipes.yoctoproject.org/rrs/recipedetail/297/
>>
>> Is it automatically generated or manually maintained? (If you look at =
the
>> field Source URI, it points to Python-3.4.3.tar.xz but the Recipe file=

>> points to python3_3.5.3.bb which contains:
>>
>> SRC_URI =3D "http://www.python.org/ftp/python/${PV}/Python-${PV}.tar.x=
z \
>=20
> Something is wrong there - the SRC_URI field must not be being updated.=
 For=20
> the most part the RRS is automatically populated. Anibal, any ideas?

There is a known issue in updating the SRC_URI [1], i guess there is
something wrong in the layerindex_update.py script may be we need to
make a full reload of the recipe database records..

I didn't have time to look into the bug but is targeted to fix pior 2.4
release.

	Anibal

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10899

>=20
>> I am trying to understand how/if I can use it. For example, if I am us=
ing
>> Jethro and I want Python 3.5 or 3.6, how can I use the "Recipe reporti=
ng
>> system" to achieve this? (I don't want to upgrade to Krogoth or Morty)=

>>
>> In Jethro, I have:
>>
>>
>> *poky/meta/recipes-devtools/python/python3_3.4.3.bb
>> <http://python3_3.4.3.bb>*
>>
>> which of course builds Python 3.4
>>
>> I know that if I download Morty, I get:
>>
>> *poky/meta/recipes-devtools/python/python3_3.5.2.bb
>> <http://python3_3.5.2.bb>*
>>
>> so, I tried copying this recipe into my Jethro source tree (at the sam=
e
>> location) but I got too many errors (I think there are several patches=
 that
>> are needed).
>=20
> Backporting will require changes, definitely. You'll have to work throu=
gh them=20
> - you may be able to use the migration information in the reference man=
ual (in=20
> reverse, of course) to provide hints - the 2.2 (morty) and 2.1 (krogoth=
)=20
> sections would be appropriate for your situation:
>=20
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#mig=
ration
>=20
> You may also find the git history for the recipes in question to be=20
> instructive in terms of what changes were made to bring them to their c=
urrent=20
> state in master.
>=20
>> So, is it possible to use the "Recipe reporting system" to see changes=
 in
>> another branch and bring them in to my branch?
>=20
> You'd do that by checking out the branch in git and copying the entire =

> directory, the RRS is just a reporting tool.
>=20
>> Moreover, if Python 3.6 is not available in Morty, how can I make a re=
cipe
>> for it?
>=20
> Since 3.6 isn't in master, there aren't any shortcuts I'm afraid, you w=
ould=20
> have to try manually updating it - probably the safest thing to do woul=
d be to=20
> copy the existing directory into your own custom layer and modify it th=
ere. I=20
> suspect starting at 3.5.2 is going to be fastest, but of course you'll =
need to=20
> backport that to jethro first.
>=20
> Cheers,
> Paul
>=20


--0TPNFjek9MtgbxUOxVbuuwSuhXgFptpi0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJY2UOZAAoJEGJqcE9h3glgZDsP/RUrBALicxD1+cHn+CsMAHhm
62lqo6ptszGMnYrCLnG7WP5fxyN5JMHGtLDEd8/hLiF6Mk1jojmJxeH0CddS0S0v
G4vWqzPiVbRoWnCwbIo+gieILqXJy572eDArotAlCnkSlWp1GhTl8DJcJGqEx39K
WlBN/AmEUXWH3gcupqnxJcfDaBArUhTeOoq4cIwYQ2WcDZ9NiAhQtgdZNijfqzQO
ear/iaKZ48RP2Mm6EnVwlo4PBjxXjrfLSKVGCSOOXosektsuKT1M16fT9I4q+atq
CADH3qICvpP4hDECdZomcxSWW2oryTGaXoV17Z+7cFQ3ZPgpUEWRE3X9MSXBo1uV
XnEmj8FxooQoUNtSnhddAell99wU4dD6PslSI7RoKZH8CCRouVK8uwdEsXkzKp28
dLDJKP/hVR27KzVCY5tb84TPC8522TO3UOnGVgsT1Aj6gql9J1l1BJNuScqadS4E
IZK23Z4ed9q6O1uVhRB5RdNwQTqqqwxXCEODWSkFGaFG+R7FMXLuR114rhrLAnNq
em/0pcrZXDcuJGTGddSmYBAiOv6+GCj5gk9PXu6eQsGW1FSf/DbkCdMIdr4R+XuE
c6aObwO2C+fpIx6wncVh/ecbHhGKdomx/Uss2xy+lnRPHLbRr7F+GG4Pa+vmfakY
4n7u+PbSvjhps7dyuzun
=ULQX
-----END PGP SIGNATURE-----

--0TPNFjek9MtgbxUOxVbuuwSuhXgFptpi0--
