Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2767E00A85; Wed,  5 Oct 2016 12:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16049E00756
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 12:59:48 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 05 Oct 2016 12:59:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,302,1473145200"; 
	d="asc'?scan'208";a="176763189"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.33]) ([10.219.5.33])
	by fmsmga004.fm.intel.com with ESMTP; 05 Oct 2016 12:59:47 -0700
To: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>,
	yocto@yoctoproject.org
References: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
	<57F5156A.6050900@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57F55BED.1060204@linux.intel.com>
Date: Wed, 5 Oct 2016 15:00:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <57F5156A.6050900@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv2]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 19:59:49 -0000
X-Groupsio-MsgNum: 32225
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="BjDkQh6Flikc0rPgGtSx6wdODnnMvm9Lp"

--BjDkQh6Flikc0rPgGtSx6wdODnnMvm9Lp
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Oh, I didn't notice that this patch isn't applied to ab master branch.

Monse, could you send a new patch over master?

Cheers,
	alimon

On 10/05/2016 09:59 AM, An=EDbal Lim=F3n wrote:
>=20
>=20
> On 09/30/2016 03:29 PM, Monserrat Sedeno wrote:
>> As part of the process to set new OS distribution as supported on Yoct=
oc Project
>> a new patch was created with the list of build sets that should be exe=
cuted.
>>
>> Detailed information:
>> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_S=
ets
>>
>> Fixes [YOCTO #9905]
>>
>> Note:In order to add a new distro as supported all the build sets shou=
ld be PASS
>>
>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
> Acked-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
>> ---
>>  buildset-config.autobuilder-qa/nightly-qa-distro.conf | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/b=
uildset-config.autobuilder-qa/nightly-qa-distro.conf
>> index 0fcdbef..6c02a91 100644
>> --- a/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>> @@ -25,7 +25,6 @@ steps: [{'SetDest':{}},
>>  		           	'nightly-deb': {},
>>                             	'nightly-ipk': {},
>>                            	'nightly-world': {},=20
>> -			   	'buildtools': {},
>>                             	'nightly-arm': {},=20
>>                             	'nightly-mips': {},
>>                             	'nightly-wic':{},
>> @@ -37,8 +36,9 @@ steps: [{'SetDest':{}},
>>                             	'nightly-qa-systemd': {},
>>                             	'nightly-qa-extras': {},=20
>>                             	'nightly-qa-targetbuilds': {},
>> -				'nightly-qa-skeleton': {}},
>> +				'nightly-qa-skeleton': {},
>>                             	'nightly-qa-logrotate': {},=20
>>                             	'nightly-qa-pam': {},
>> +				'buildtools': {}},
>>                             'schedulerNames_nowait': {}}},]
>> =20
>>
>=20
>=20
>=20


--BjDkQh6Flikc0rPgGtSx6wdODnnMvm9Lp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX9VvvAAoJEGJqcE9h3glg+EwP/ioh4e+7mfQ7g4t4E1G4c8BC
aCBO09WHn0cQjyCAoKXtSp6OQQ4gjE5ktaSNbgv53cwH/to+PmH4VtYMUB9uwrAa
SgTSTtatKi5GRdS6RrUBnwlRdRNNLvhHEmUFxOZdjMAQLe7Cp5x482XaheLhKBMH
t6zzHAAryEapihNB992sg4DeAFxJ3fXhq551RtDHDiuqzZmIeOrSes73lZsHchOR
1/NdA3R/Cd3cogCPOR3a0u/A8K1aLYVBgzvKPSeHJw2tP132kGUbXhqsjheFjtmS
0LfhaV4Tykyx8klGTwh0TeW+m3Nz964woLTWd0KOSoR0CYLgYpw9F824G99ME3BD
0KfkpF/Mavt22veaC7Th9PUNfiJpDG9a7jBSR7U4AKL7iirdSUJqC59g03peNsPb
QpyDlRfz47mZDHI52Z1h0ZLHKKMZolKK18H7mmZ7uk8xK40dm+88Z44vSGzx0Pgx
JiS0xJQziR7gF7U4ireJBLOCuSL8ZycXhMX9FLO5JAs0kvufKBHpb0EueIj+nDDA
ZgfcAEqNXfk7dPzqplaSH/ISGFg5/yTkUuO1pJfczbfErhGAerEqliC/2+EGQhej
kVhZPQsAU/GTQblZvVjuyp/edm/tbPU+pJOZUPlFNjYVrQA79HvUeHBYM0ZgcOsL
TxyvxsvgYG8ccs4G2Eu/
=ihGj
-----END PGP SIGNATURE-----

--BjDkQh6Flikc0rPgGtSx6wdODnnMvm9Lp--
