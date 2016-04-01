Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00E43E00BF4; Fri,  1 Apr 2016 07:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2BB7E00B45
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 07:50:09 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 01 Apr 2016 07:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,427,1455004800"; 
	d="asc'?scan'208";a="77331910"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.90]) ([10.219.5.90])
	by fmsmga004.fm.intel.com with ESMTP; 01 Apr 2016 07:50:10 -0700
To: Mike Looijmans <mike.looijmans@topic.nl>, yocto@yoctoproject.org
References: <1459459621-21610-1-git-send-email-anibal.limon@linux.intel.com>
	<56FE0680.9010700@topic.nl>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <56FE8AC9.2040605@linux.intel.com>
Date: Fri, 1 Apr 2016 08:50:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56FE0680.9010700@topic.nl>
Subject: Re: [PATCH][opkg-utils] opkg-build: Exit when fail to list files.
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
X-List-Received-Date: Fri, 01 Apr 2016 14:50:13 -0000
X-Groupsio-MsgNum: 29240
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="riDPTF5LgG6003JHMLP3s90FV1HToNDs7"

--riDPTF5LgG6003JHMLP3s90FV1HToNDs7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

Comments below,

	alimon


On 03/31/2016 11:26 PM, Mike Looijmans wrote:
> On 31-03-16 23:27, An=C3=ADbal Lim=C3=B3n wrote:
>> We have an issue when ls segfaults in some cases [1] so it's
>> better to detect the failure at this level instead of continue
>> the build process.
>>
>> [YOCTO #8926]
>>
>> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8926#c0
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>   opkg-build | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/opkg-build b/opkg-build
>> index 98008b6..a9ccad2 100755
>> --- a/opkg-build
>> +++ b/opkg-build
>> @@ -53,6 +53,10 @@ pkg_appears_sane() {
>>           echo "*** Warning: The following files have names ending in
>> '~'.
>>   You probably want to remove them: " >&2
>>           ls -ld $tilde_files
>> +        if [ $? -ne 0 ]; then
>=20
> Instead of using $? you could just use the result of "ls" directly, i.e=
=2E:

Do you have any specific reason for not use $? variable?, for me is more
simple to test the exit status in this way.

>=20
> if ! ls -ld $tilde_files; then
>=20
>=20
>> +            echo "*** Error: Fail to list files have names ending in
>> '~'."
>> +            exit 1
>> +        fi
>>           echo >&2
>>           else
>>           echo "*** Removing the following files: $tilde_files"
>> @@ -66,6 +70,10 @@ You probably want to remove them: " >&2
>>           echo "*** Warning: The following files have a UID greater
>> than 99.
>>   You probably want to chown these to a system user: " >&2
>>           ls -ld $large_uid_files
>> +        if [ $? -ne 0 ]; then
>> +            echo "*** Error: Fail to list files have a UID greater
>> than 99."
>> +            exit 1
>> +        fi
>>           echo >&2
>>       fi
>>     =20
>>
>=20
>=20
>=20
> Kind regards,
>=20
> Mike Looijmans
> System Expert
>=20
> TOPIC Embedded Products
> Eindhovenseweg 32-C, NL-5683 KH Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>=20
> Please consider the environment before printing this e-mail
>=20
>=20
>=20
>=20
>=20


--riDPTF5LgG6003JHMLP3s90FV1HToNDs7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJW/orLAAoJEGJqcE9h3glgMdYP/Ak3mU5hrTM8EOcScA2T+VIr
fJaYC/ZygO+lTtcpcr1yr2zwYLnXX15ajRehfK3Ni52JlJQ7A8s4WCfxZYXVXY4y
Xt0GIbmsChsSPpv02ha1wsfoYTRAm5QInRhmP+wyd5/Cydn4CH1KRGC/WJOI3dms
CsR9/3AwLW2jG83J8iuYqbAgY08XQXkPuk088QKjVEvh4pc9pPsfGfehDrHSb5ss
+1uemJql7VeVAe7a0lQHIa2UO5Jh1+E1+rKUW7idg+nf+vfcL8UOBTddY/qnAiyy
cIgMd0LMbDb3vWjozh7i/2MgYRtFtRJ1mU1ydX+t3d+bomuLDMecqWV/GU2sswav
Pw5OwEdXWQt472CGltiQNkeq24Y1w5BQGQThMSXa9WsMEubvXWh9ZHr3k0qECfBq
5KyLaF0Yw89NbE6iAft8btlTumPyoZr2aUfkKgZW/mSpAhZ+uswPRpItynUh8GKe
Sh5RgCyyHT6IS0IkxII9B3UF55Q23ylKI+M3obrWg/x9E6hMtYi85nyl5eAzRp6F
AQFg1iag/0QweZbUXipaR8uX8nDTxKTIqsdCVg/1oUqByjohX/Ru009Zr3D97Evv
F6Jse0btN6HRh3B/qooKPmWvMZr8FpWPavPE8ZsaoBIndLlFe3ynsdhHF4Dq4B29
4dQIR0cYa9AvplGMTFDq
=jfB5
-----END PGP SIGNATURE-----

--riDPTF5LgG6003JHMLP3s90FV1HToNDs7--
