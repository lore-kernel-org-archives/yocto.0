Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6272E00EA6; Tue, 29 Sep 2015 10:02:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7015E0086D
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 10:02:28 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so11437751pac.0
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 10:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Pzlo5/ovUkwpRf5PEnbhgvBmjBg7V1J+G+/TeL+85Uk=;
	b=Y+Q7ZJhbpxQ9L3zIU9qNj4RJAxM1ngThFhJFtai2GytGz8D0EacV00UWPCAOlPV/3T
	Kxojh1lQWAxamNAuFqQ/prl/1TKlKHCkdOfrRDITpr2ft5lWEen23HRNJdJA8N2Z5EJn
	jMphu/vgobYZ+2ZMfJJ+Ht3Tb98/Zk14FIlLcuxXnPl4AqJPg6PIMY8Mxf8y1zXFOmzd
	MzVQtwailXRr/QOIUs5X6uXKl4GpOJPViAu9v5qgIhgJ3EXan4DFPwjnPyQpf5vS7mn/
	8MDD6v6jze+EUdYtMs31Zsl81Bjuvr0VYB1P3ns/l252AFH1tYO9HzBF7PCczVo8L8JV
	Id4w==
X-Received: by 10.68.253.65 with SMTP id zy1mr34619000pbc.159.1443546147804;
	Tue, 29 Sep 2015 10:02:27 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:f90b:6fa0:21f7:85bc?
	([2601:646:8601:4580:f90b:6fa0:21f7:85bc])
	by smtp.gmail.com with ESMTPSA id
	fe8sm26793526pab.40.2015.09.29.10.02.26
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 29 Sep 2015 10:02:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <560AB7EA.4060200@ni.com>
Date: Tue, 29 Sep 2015 10:02:21 -0700
Message-Id: <79EB8AA3-69DF-46E4-BB60-34C34B004470@gmail.com>
References: <1432250850-25266-1-git-send-email-haris.okanovic@ni.com>
	<560AB7EA.4060200@ni.com>
To: Alejandro del Castillo <alejandro.delcastillo@ni.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org, opkg-devel@googlegroups.com
Subject: Re: [opkg-devel] [PATCH] opkg-utils: Fix crash on dependency error
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
X-List-Received-Date: Tue, 29 Sep 2015 17:02:32 -0000
X-Groupsio-MsgNum: 26606
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6AF49F2C-87C0-4FEA-8034-9666660CF03D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_6AF49F2C-87C0-4FEA-8034-9666660CF03D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 29, 2015, at 9:10 AM, Alejandro del Castillo =
<alejandro.delcastillo@ni.com> wrote:
>=20
> On 05/21/2015 06:27 PM, Haris Okanovic wrote:
>> Fix crash on exception in opkg-show-deps when generating an
>> 'unsatisfied dependency' error. process_dep() function was
>> referencing a missing parameter `pkg`.
>>=20
>> Signed-off-by: Haris Okanovic <haris.okanovic@ni.com>
>> Reviewed-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
>> Acked-by: Brad Mouring <brad.mouring@ni.com>
>> Cc: Alejandro del Castillo <alejandro.delcastillo@ni.com>
>> Cc: Paul Barker <paul@paulbarker.me.uk>
>> ---
>> opkg-show-deps | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/opkg-show-deps b/opkg-show-deps
>> index 3c3be6a..4694579 100755
>> --- a/opkg-show-deps
>> +++ b/opkg-show-deps
>> @@ -58,7 +58,7 @@ def find_package(name):
>>           return provider_hash[name]
>>      return None
>>=20
>> -def process_dep(dep):
>> +def process_dep(pkg, dep):
>>      # Add a provider of the given dependency to the list of required =
packages
>>      # unless a provider is already present in this list.
>>      dep =3D re.sub("\s*\(.*\)", "", dep)
>> @@ -83,7 +83,7 @@ def recurse(pkg):
>>      if pkg.depends:
>>           deps =3D split_list(pkg.depends)
>>           for dep in deps:
>> -               process_dep(dep)
>> +               process_dep(pkg, dep)
>>=20
>> for root in remaining_args:
>>      pkgs =3D find_package(root)
>>=20
>=20
> Pulled into master, apologies for the delay!


can you also pull in

=
http://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/o=
pkg/opkg/0001-libopkg-include-stdio.h-for-getting-FILE-defined.patch

>=20
> --
> Cheers,
>=20
> Alejandro
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_6AF49F2C-87C0-4FEA-8034-9666660CF03D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEUEARECAAYFAlYKxCEACgkQuwUzVZGdMxRgCACdExN9zMttexsWZ2PIqmn5FIKt
BsUAmKuG7zGqdi/JrdtKYgrsX8NBPN0=
=BsQ3
-----END PGP SIGNATURE-----

--Apple-Mail=_6AF49F2C-87C0-4FEA-8034-9666660CF03D--
