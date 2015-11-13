Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70010E00A4F; Fri, 13 Nov 2015 12:50:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9355AE008D2
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 12:50:43 -0800 (PST)
Received: by padhx2 with SMTP id hx2so110479783pad.1
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 12:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=sEK5nPK1UJjOc1WUdhLffbYKLONseURyH0XCfKUmRhc=;
	b=ok3gN9rQLVxWDgN4qowJyT2I7nxxjXkGIuEMuZT7i0UaDxqMo3BwQn2Ga1jC8RvjNh
	LR30+tJvZFAonIHscZtkrWqFERztWfPbLn1+odyhcXE80LRZeW48iEnf5IY//7sbAYmx
	k1vqaTJjBjgMob+wZAGI5/QjWgiedth1Y38At8Jbb+S50QFsowzWQt741w2m8Hwhe7zd
	ZSRWQhyJ4CdtzlAYEElvJCbtvjqWk4DKItBcL/qfQlNK0r1WdlLLpZnO4+Kp3Un/d4h7
	xpXJVK2KnN+rhzc+wi0Fh+szRMKv+5OR79/2RiCWUyvo6NoJQ7UeUeYoRGOG8tAjmgll
	OTGQ==
X-Received: by 10.68.221.230 with SMTP id qh6mr34942196pbc.32.1447447843186;
	Fri, 13 Nov 2015 12:50:43 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:75e8:34a4:b27c:d575?
	([2601:646:8802:5d5c:75e8:34a4:b27c:d575])
	by smtp.gmail.com with ESMTPSA id
	ju7sm22050207pbc.83.2015.11.13.12.50.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Nov 2015 12:50:42 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3111\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5644C66D.4030408@windriver.com>
Date: Fri, 13 Nov 2015 12:50:46 -0800
Message-Id: <D48D3106-670B-45DE-AD5F-7A75F7FAE23F@gmail.com>
References: <5644591F.1090703@smartacoustics.co.uk>
	<5644C66D.4030408@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.3111)
Cc: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>,
	yocto@yoctoproject.org
Subject: Re: Building yocto with hard float support
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
X-List-Received-Date: Fri, 13 Nov 2015 20:50:53 -0000
X-Groupsio-MsgNum: 27314
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F7695EDB-B8F1-4598-B5F9-0E79040C4554";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F7695EDB-B8F1-4598-B5F9-0E79040C4554
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 12, 2015, at 9:03 AM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>=20
> On 11/12/15 3:17 AM, Toby Gomersall wrote:
>> Hi,
>>=20
>> I want to build yocto with hard float support. I understand that I =
can
>> point the EXTERNAL_TOOLCHAIN variable at the appropriate external =
hard
>> float compiler (gcc-5-arm-linux-gnueabihf). However, I was wondering =
if
>> there was anything within the yocto project to do this?
>=20
> I'm going to be pedantic for a second.. bear with me.
>=20
> ARM has two ABIs, the standard EABI which passes floating point values =
via
> integer registers and EABIHF that passes floating point values via =
floating
> point registers.
>=20
> EABI allows hardware floating point along with neon or any other core =
specific
> optimizations.
>=20
> EABIHF requires a specific set and size of VFP registers.
>=20
> The Yocto Project is capable of building for both ABIs with whatever
> combinations of optimizations you need.
>=20
> The ABI and default processor optimization is configured by the =
'DEFAULTTUNE'
> parameter.  This is typically defined in your machine configuration =
file, either
> explicitly or implicitly via the including of the tune files.
>=20
>=20
> So for example, if you have an ARMv5 CPU you would likely use:
>=20
> DEFAULTTUNE=3D"armv5e"
>=20
> This would select ARM EABI, no VFP.
>=20
> alternatively you could do:
>=20
> DEFAULTTUNE=3D"armv5e-vfp"
>=20
> This would select ARM EABI w/ VFP floating point.
>=20
> OR
>=20
> (what I think you are actually trying to ask)
>=20
> DEFAULTTUNE=3D"armv5ehf-vfp"
>=20
> This would select ARM EABIHF w/ VFP floating point.
>=20

all is fine except armv5 here will confuse people thinking that hf ABI =
works on armv5 as well
would have been better explained with armv7 example.

>=20
> So start with your machine and determine which defaulttune (bitbake =
-e) you have
> selected.  Adjust it to a compatible setting for the ABI and processor
> optimizations that you wish to use.
>=20
>> I'm concerned that future updates to an external compiler might =
affect
>> my build and I would prefer to use a method from within the yocto =
project.
>=20
> Unless you have a specific need, I don't recommend external compilers. =
 The
> Yocto Project compilers and configurations are well tested and high =
quality.
> While using an external compiler is support by some vendors, it adds =
complexity
> that may not be beneficial.  (Sometimes support and other aspects of =
commercial
> offerings outweigh the complexity..)
>=20
>> Thank you,
>> Toby
>>=20
>>=20
>>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F7695EDB-B8F1-4598-B5F9-0E79040C4554
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZGTSYACgkQuwUzVZGdMxRQygCfQIBzW/qkihZdO/uvCgH8M1TU
Fv8AoIOxNj/wxZBX800h1O6QPDrKPWiV
=9IBP
-----END PGP SIGNATURE-----

--Apple-Mail=_F7695EDB-B8F1-4598-B5F9-0E79040C4554--
