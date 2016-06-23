Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2730DE00CA3; Thu, 23 Jun 2016 08:27:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BFDE00C9E
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 08:27:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 23 Jun 2016 08:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,517,1459839600"; 
	d="asc'?scan'208";a="1008254902"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.159])
	([10.219.5.159])
	by fmsmga002.fm.intel.com with ESMTP; 23 Jun 2016 08:27:22 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
	<1466581487.3278.17.camel@toganlabs.com>
	<576AF245.4000400@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <576BFFDD.2090500@linux.intel.com>
Date: Thu, 23 Jun 2016 10:27:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <576AF245.4000400@linux.intel.com>
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
X-List-Received-Date: Thu, 23 Jun 2016 15:27:26 -0000
X-Groupsio-MsgNum: 30727
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="dS7B3BqU064N2ttAp3frlGurKsaKkN5lk"

--dS7B3BqU064N2ttAp3frlGurKsaKkN5lk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 06/22/2016 03:17 PM, An=C3=ADbal Lim=C3=B3n wrote:
>=20
>=20
> On 06/22/2016 02:44 AM, Beth 'pidge' Flanagan wrote:
>> On Tue, 2016-06-21 at 18:07 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>>> This v2 adds support for generate also oe-selftest reports this is
>>> almost
>>> the previous version with changes requested in review [1], the next
>>> patches
>>> starts from patch,
>>>
>>> 	autobuilder/lib/{ABtools,builsteps}.py: Create
>>> save_error_report func
>>
>> A few comments.
>>
>> - Please rebase the last two commits. They can be merged into prior
>> commits.=20
>>
>> Example: 0eb495d93eefa9ead8f4b1242f251f1a2288db68 should be squashed
>> into 83b6707622128436b4ece9d4c2a89311b000c209
>>
>> We shouldn't need rename commits for a pull request that created the
>> original thing we're renaming.
>>
>> - Please fix the title for 83b6707622128436b4ece9d4c2a89311b000c209
>> 's/buiidsets/buildsets/'
>=20
> I squashed the changes now at,
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3Dco=
ntrib/alimon/devel2
>=20
> 	alimon

Hi,

The Error report web needed changes are now integrated [1], if you
ack'ed the changes we could proceed to integrate/deploy these changes to
enable send Bitbake/OE-seltest errors to ERW.

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7583#c14

Cheers,
	alimon

>>
>>
>> -b
>>
>=20


--dS7B3BqU064N2ttAp3frlGurKsaKkN5lk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXa//gAAoJEGJqcE9h3glgVFMQAJc0keV2ls4TczniRkXCnPxS
B+kHKX9baeaEJEFhUeFQ9ZIb2hStzYG+fE1563sPWXognuIAbzic3j9q3Ad8JM9h
W/RVEhdCS3sBwDQYu6201zqdswMs0Sm8jX70dXqZ99HmSV0PlPS+gKplPskWu/EC
OpoHwPV+aAr6X2zArb/mfVZYiZGy875OrYKTLraOl6WRZprd9crjR5AjxEQH4jJo
q1jmwtsCK0t63arWLlIWeTXegTSQtlgpOGyeINXfOURQk40fWMnL0AhdYy2ckILp
OztsESohPp2NuqHDs6fhV938npqKDGToPVx6i+mgkwqycCBbTA6q4oC+Ekx7qzYg
hg2gcVgTIfKpDmGYtzug7pG2Ug/Ul62lRA3cg2MpJ54uebhXmVJ2tXeShrVqRCrD
xk0gNjCNgLKMjNzHkT5KNA1ibN72ZliHqwAr9hEjZsfuW042qQSC+qpqfl7F7MKi
k76OEx6sWUbYWE1PYOo7ogrS4aktD6b/2VN5yNj3ylySXwhoqbEpF5s5OtLLmJ6Z
sBfeQx4DXEBAAkGB6S8PqV5H4Lyh6XARktFue5daybabZSsAjfNC/oelPAGfDeFy
WyVtsEZhHA8PjmcM+GUfIO5tLhwCzsYK2rN+wREyrknMjOOu5g7p7wcNXSTlY+gb
zyXLWRkErZpn5bdmvy9q
=kSvn
-----END PGP SIGNATURE-----

--dS7B3BqU064N2ttAp3frlGurKsaKkN5lk--
