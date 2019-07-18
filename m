Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB874E00D89; Thu, 18 Jul 2019 00:48:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.49.171 listed in list.dnswl.org]
X-Greylist: delayed 574 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Jul 2019 00:48:45 PDT
Received: from 4.mo178.mail-out.ovh.net (4.mo178.mail-out.ovh.net
	[46.105.49.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C144E009FA
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 00:48:45 -0700 (PDT)
Received: from player737.ha.ovh.net (unknown [10.108.57.72])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id 955156F2C0
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 09:39:09 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player737.ha.ovh.net (Postfix) with ESMTPSA id 2907682A0735;
	Thu, 18 Jul 2019 07:39:08 +0000 (UTC)
To: jaymin.dabhi@vivaldi.net
References: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
	<a5abd61c-39b6-6dd6-43b6-2344f6311b2c@3mdeb.com>
	<5c62f8aa593a2a37344471fe24f696c9@vivaldi.net>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <9e7de00f-3d7e-802f-281b-681ef8e97674@3mdeb.com>
Date: Thu, 18 Jul 2019 09:39:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <5c62f8aa593a2a37344471fe24f696c9@vivaldi.net>
X-Ovh-Tracer-Id: 2458120974244720297
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrieeggdduvdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Cc: yocto@yoctoproject.org
Subject: Re: List of Supported Python versions
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
X-List-Received-Date: Thu, 18 Jul 2019 07:48:46 -0000
X-Groupsio-MsgNum: 45990
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="JRX1TlqPAq6s7L3EvsjalOqVDB1hf5ChH"

--JRX1TlqPAq6s7L3EvsjalOqVDB1hf5ChH
Content-Type: multipart/mixed; boundary="H6irCbXN4CMFqn3ELzPA5E0M2G7Kn1h22";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: jaymin.dabhi@vivaldi.net
Cc: yocto@yoctoproject.org
Message-ID: <9e7de00f-3d7e-802f-281b-681ef8e97674@3mdeb.com>
Subject: Re: [yocto] List of Supported Python versions
References: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
 <a5abd61c-39b6-6dd6-43b6-2344f6311b2c@3mdeb.com>
 <5c62f8aa593a2a37344471fe24f696c9@vivaldi.net>
In-Reply-To: <5c62f8aa593a2a37344471fe24f696c9@vivaldi.net>

--H6irCbXN4CMFqn3ELzPA5E0M2G7Kn1h22
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 18.07.2019 09:34, jaymin.dabhi@vivaldi.net wrote:
> Hi Maciej,
>
> Thanks for the link.
> If I want to use different(updated) version of a particular function,
> e.g. Python, Is is possible?
> As per link Jethro is supporting Python version 2.7.9. I want to
> integrate Python version 2.7.16 and Python3 3.7.
> So, Do I need to use another branch which is supporting these versions
> or Is there any way to integrate these versions without changing
> current(Jethro) branch?
>
> In my case, I have limitation. Can't change to any other branch.
> I want to integrate Python3-Numpy, Python3-OpenCV, Python-Scipy and
> Python3-scipy modules in the build.
> Python3-Scipy is dependent on Python3-Numpy and Python3-Numpy is
> dependent on OpenBLAS, ATLAS and few other libraries. While these
> libraries are dependent on FORTRAN (libgfortran) compiler. Now, in my
> current (Jethro) branch, when I am trying to build libgfortran, it
> requires GCC version >=3D5. And, facing so many errors while building
> GCC 5.2 in the Yocto build. While GCC 5.2.0 is already supported in
> the Jethro.
Do you mind sharing the reason being tied to this old branch?
You could try to port newer recipes from more recent branches to the
Jehtro. But I believe
this may be more tedious and more time consuming than resolving the origi=
nal
isssue of yours (upgrading from Jethro to more recent branch).
>
> In simple,
> How can I integrate Python3-Numpy, Python-Scipy, Python3-Scipy and
> Python3-OpenCV packages without changing the branch?
> What is the simplest way to integrate above packages?
>
> Please suggest.
>
> Regards,
> Jaymin
>
> On 18-07-2019 12:24 PM, Maciej Pijanowski wrote:
>> The link to the search engine:
>> https://layers.openembedded.org/layerindex/branch/master/recipes/
>>
>> On 18.07.2019 07:41, jaymin.dabhi@vivaldi.net wrote:
>>> Hello Team,
>>>
>>> Which Python, Python-OpenCV, Python-Numpy, Python-Scipy and OpenCV
>>> (max)versions are supported in Yocto 2.0.3 (Jethro) distro version?
>>>
>>> Can I get list of notes in which version of all supported modules hav=
e
>>> been mentioned?
>>>
>>>
>>> Please let me know.
>>>
>>> Regards,
>>> Jaymin
>>
>> --=20
>> Maciej Pijanowski
>> Embedded Systems Engineer
>> https://3mdeb.com | @3mdeb_com
>>
>>
>>
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--H6irCbXN4CMFqn3ELzPA5E0M2G7Kn1h22--

--JRX1TlqPAq6s7L3EvsjalOqVDB1hf5ChH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdMCIbAAoJEPFAHS4cyxnvIPUP/3VKIHPCyQNj+vN4Lt4alBAb
ojG3Tv7ASRmXnw2wmvDCZAbblVIxCvHitBSVoA3iw6YyGzaEKUawUWJeFeWu9Bhh
jyzaRHQeGo0Zdl6gb3esvyzWI5ovdxnXFig47eNJ0lEqODfRtrsMQdePJWLbJ5qm
ohJa5T+O8kjbBttOUfU8jOhyfV3ZX1BmR4hMEXzotY7yHK4GiSIHkirzT6HRKuu0
QUJoyyz3wVOkYx4YZp/mjbgfUVSh4o85BVkObentRTLww0a2J/upg1k0p1eoB8iO
TlCjBhU2KVfndrzTqwVHnA4i8BbJ1K+C7xD5cZQgdz8uuUhmVJm7oinE9nKtVMUF
HsQHNX5SLHLgbydAPDO5qZDaYmWuXfq+m49XIBb63N6qY43ays/Zm/tPGyuoOV1k
2rB/g1R8h5fpNYpzsEuJV7AN712EvIPT6FVL1N1E4lfkMGDIlRl/M1jX5tKWB9lC
F/rE+9UtU7EMitbjABRMapx0yOChvQd2jdvaMJh43jc7XSyjdBQl7r3Z7jk9Tp4s
HtZaE27o66T9CkEebe2aTOuM1YkC183D/pwI4justYL03D8qVXJ9Ne33D/BbOEXf
QkOcMAc/pTaFinD/0S7nxu+u86UzXlGaT1wG9/NqwN6cCnhGjMgNJVjrD/hWi5a1
GoXpMwSVggtaHcL0SQNb
=uVFh
-----END PGP SIGNATURE-----

--JRX1TlqPAq6s7L3EvsjalOqVDB1hf5ChH--
