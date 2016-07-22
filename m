Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3533BE00EF2; Thu, 21 Jul 2016 20:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C7BE00EB0
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 20:20:40 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id h186so6458885pfg.2
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 20:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=uC1tW7O9QO3xWoltU92B/VfcEQf5raBqI+I8qJGYuaE=;
	b=xi740h/c95B08NFCSj4JP9xWhAC9hBtmcb5NP4SIXJVE5RrT08DVWcNX6CnqJ5RCu9
	b5zjYI/T+EmlILRDXpVjN7EMjJs/TDJgTSFHhSQVuyEdsQsMDZBpoc8VoNFV2HxxB5o1
	gtoaOv7PLAT6l3U2EMmmyR2lqVbKn30T2MfvGos9C5q9JvsLHiIreV/iADnpEgk5UFeh
	dOPBlg9YFafKBkGxkbdpalovkKQTGYNVG+o8VsS5939J/buqLL1OIi2p0IDY8kJe9s1X
	g4hTpJ8TXjHi4jVFFSgI1CzOu5zIJn3RN+hkST/p95v7zdft7TPmIyYcUF9UbGq7gYWc
	RfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=uC1tW7O9QO3xWoltU92B/VfcEQf5raBqI+I8qJGYuaE=;
	b=eS3X2xmA6W/xYL+87h0vh9HXODDoD6a5HrwEqh6MVYTQy8Bu1G/K371WlfHpofQwfX
	CVHkYuIkWiCIJHT1pPWO1lmbt5krTywnoNhDW1ydkDuLg+0Tu4d0PcboBs30Ynfjmc1U
	Rk7WGQ7rZEkTHbb1HZX+Ay+j8H9B673+FJxdIqgse/RLiGBBmrd1vhgkIu5IjhwTieDn
	p7+h/8vIgjbjfiTQtZIT6QI60ZRY7vx2pmSDnwdQ0GddZgj5291vG2R4xmChW4ci7roD
	clHYx+gbfgq7oM8C+wFcjadSieIbd/W5pIHbM43BYGw4LzwRfOor56TKjLB9bGx7VdmJ
	wknw==
X-Gm-Message-State: AEkoouv7091+l+BrH7X7g8D5KGqpPg0Gga1jX1ni6BjnToqY8GNgdzuVNXs//56epc+qmA==
X-Received: by 10.98.83.1 with SMTP id h1mr2590018pfb.78.1469157640088;
	Thu, 21 Jul 2016 20:20:40 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:3c4d:dddf:359e:d5c?
	([2601:646:8882:b8c:3c4d:dddf:359e:d5c])
	by smtp.gmail.com with ESMTPSA id
	ps2sm15484704pab.10.2016.07.21.20.20.39
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 21 Jul 2016 20:20:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <2059857.6fejhZ6HEk@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 21 Jul 2016 20:20:33 -0700
Message-Id: <28035851-E0F1-4D8A-8EB2-6918D61CB11A@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
	<2059857.6fejhZ6HEk@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Fri, 22 Jul 2016 03:20:44 -0000
X-Groupsio-MsgNum: 31173
Content-Type: multipart/signed;
	boundary="Apple-Mail=_02F6E165-2F51-444A-B664-780D5FC94DC3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_02F6E165-2F51-444A-B664-780D5FC94DC3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 21, 2016, at 6:45 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> On Thu, 21 Jul 2016 18:35:25 Khem Raj wrote:
>> On Thu, Jul 21, 2016 at 6:32 PM, Paul Eggleton
>>=20
>> <paul.eggleton@linux.intel.com> wrote:
>>> On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
>>>>> On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger
>>>>> <vijayakumarmb@gmail.com>
>>>>> wrote:
>>>>>=20
>>>>> The sync driver is already ported in the kernel.  I just need to =
get
>>>>> this
>>>>> compilation error fixed. I tried adding below change to kernel bb =
file
>>>>> but still I get that same error.
>>>>>=20
>>>>> PACKAGES =3D+ "kernel-headers"
>>>>> FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
>>>>=20
>>>> there is a different recipe for headers linux-libc-headers that =
also
>>>> needs
>>>> to be patched and then hopefully kernel build system is exporting =
this
>>>> header for userspace automatically and you will be set.
>>>=20
>>> I thought we weren't supposed to be encouraging modifying
>>> linux-libc-headers - especially as this isn't for the libc - it's =
for
>>> other userspace code...?
>>=20
>> Yes thats correct thats why
>> I am not asking for submitting this patch upstream.
>=20
> Sure, but this question comes up a lot. We ought to be telling people =
the
> correct mechanism for introducing extra headers such as this if it =
isn't to
> modify linux-libc-headers.

Thats possible for external kernel modules. This is a kernel patch. =
There is no other elegant way
of solving this. They could write another recipe just to stage this =
header. but thats equally ugly.

>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


--Apple-Mail=_02F6E165-2F51-444A-B664-780D5FC94DC3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleRkQYACgkQuwUzVZGdMxQCQgCeJ3r4/FV+3uo7EmJl6WwS1jWc
QyYAn1SPs1yVURjx5zF8xGZ+LtBvniDD
=SVM6
-----END PGP SIGNATURE-----

--Apple-Mail=_02F6E165-2F51-444A-B664-780D5FC94DC3--
