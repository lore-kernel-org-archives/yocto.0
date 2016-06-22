Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AED3E00B7A; Wed, 22 Jun 2016 13:17:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26EA9E00B04
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:17:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 22 Jun 2016 13:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,509,1459839600"; 
	d="asc'?scan'208";a="981379212"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.159])
	([10.219.5.159])
	by orsmga001.jf.intel.com with ESMTP; 22 Jun 2016 13:17:08 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
	<1466581487.3278.17.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <576AF245.4000400@linux.intel.com>
Date: Wed, 22 Jun 2016 15:17:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1466581487.3278.17.camel@toganlabs.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv2] 00/15] Add support for generate bitbake/oe-selftest error reports
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
X-List-Received-Date: Wed, 22 Jun 2016 20:17:26 -0000
X-Groupsio-MsgNum: 30715
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="nhLoIuNdN7Fw29UrOebMnJBen5vLVj7tR"

--nhLoIuNdN7Fw29UrOebMnJBen5vLVj7tR
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 06/22/2016 02:44 AM, Beth 'pidge' Flanagan wrote:
> On Tue, 2016-06-21 at 18:07 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>> This v2 adds support for generate also oe-selftest reports this is
>> almost
>> the previous version with changes requested in review [1], the next
>> patches
>> starts from patch,
>>
>> 	autobuilder/lib/{ABtools,builsteps}.py: Create
>> save_error_report func
>=20
> A few comments.
>=20
> - Please rebase the last two commits. They can be merged into prior
> commits.=20
>=20
> Example: 0eb495d93eefa9ead8f4b1242f251f1a2288db68 should be squashed
> into 83b6707622128436b4ece9d4c2a89311b000c209
>=20
> We shouldn't need rename commits for a pull request that created the
> original thing we're renaming.
>=20
> - Please fix the title for 83b6707622128436b4ece9d4c2a89311b000c209
> 's/buiidsets/buildsets/'

I squashed the changes now at,

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3Dcont=
rib/alimon/devel2

	alimon
>=20
>=20
> -b
>=20


--nhLoIuNdN7Fw29UrOebMnJBen5vLVj7tR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXavJHAAoJEGJqcE9h3glgJbIP/AutwHmVuI/TI3r26D33dwXT
aoFPx9N2nkDWtMD7C/PqLrXeqPhcjbajMuN4/oNNXlFKi0xMSf1cYqO9njKzQoUz
1K3c3zTvnloz/ao8tvIKwTzVNu8ybPs1QZ+EjfvjiUSm4gPj0hvadv34LhO6G6ic
At5R6TLtjwteW0tKNLw8Ia5hQ+tSRXyvjp7xIUEdl/pVN2OoxYwqOrno6Rv/IBe0
p185Dbi55VDpebtPIR7yuL+kujcb68t+xa/NIMPL1qEN0WDPIXYPd6PUuPQSUF//
zEe4k72bZassC95yTQ1DT2nOM//jS4HBbHfqwTVgFIr4ulXEkFVyMeJKJ1Ng0WH4
Mzr/0KBatQ+UEv/n+Q0Ti6U4gWhlQg1t1f1w/lFfGM+yE06s/RSmzO++4eUaS/nA
rrWSfbtwpmyhrxSyGjt3O7lqbPcaS1gy678ieSC5u2Tef973ZWeEgCb1pQyLbgR5
irKZCzJDoJ0Uhb0nTb2O8egywYZ8qkUFhqICN7byYyUkP0W5aH0nZgvPgUrYgUV6
jLKk3gQToBAnpCkYKaWv6D3j8ztHuwOmXi8gAoR4p6CmBjgLGNPtLtY1wfAwt+ZD
vTL9jMYIpl5ROrcb4srlcQaVFIuSxEJUlAaFhe62yjvSGadvHe46Ctklas2hPoXU
6BzAyVU/dWJY/SNBk4zH
=O2W2
-----END PGP SIGNATURE-----

--nhLoIuNdN7Fw29UrOebMnJBen5vLVj7tR--
