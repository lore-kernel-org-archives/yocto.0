Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D454BE00924; Sun,  2 Oct 2016 16:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E67AE0089B
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 16:32:04 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id 190so2025916pfv.1
	for <yocto@yoctoproject.org>; Sun, 02 Oct 2016 16:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=C5JDPhS1rTl4PnHDbkdWk2cD90K02rXESh2ciyhPBhg=;
	b=c5dUw+iOwQF/qOHDbtHi+2KSadFINxbIdpDZvWg7DTDl78K/iKz2ZukWxl3V1O5Z5l
	3AcplhLgMoeR7W5r5RrWyjTJJUsR2vWZaFkiL8bfaBAk9Gn/0wccaaDnrkGZJAMKEmDa
	9zmGwDuLRpuB3++61jT+zclbBbQKQvzymi9HWUkXMjUder4LqXwfHppccGur+DvCZoNU
	Zh85Y4116Y/muPxqcawuekFA1P6TIMmHriGGf/ZPSe6LKG0pz4OEEbXRw9wz+9q6E5jS
	UvoRNHCwFeK3XcrgYvoIVdPsFIgYK22wPWjfXv0NN+jimbEVJYuUB/WQHYPl3VS13xDT
	/qEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=C5JDPhS1rTl4PnHDbkdWk2cD90K02rXESh2ciyhPBhg=;
	b=LcJEzxqnaCWv44duOpZqRB1YCYokqjubtmo3wNXtmLBCBc5LrgI1b//7ogkM8icyY/
	hJgcSiaV7PycJkHBx736JPic52uum7woBzRrl1DD5Z9q9ocS70qxAVI7wOYr3MxgUfJI
	OYxw8Fp8+9dCpI9xV8ajtYV+nWkMq8Em9RvLUGUXGb7MXMc2ceuv6oduPel45Y0ESXXj
	nc3U8vzceqayalThLAxTVdo5ATyFctfNdTCfufo4jiyEnzsgroSK+MRDGRfrsiAx8XfX
	6wCtJfVh07HTJsHeKy/R8q4iY/vIFghso8G83Pu1S0O4xfJsP4ueDVaRLjvhFHTyBFMY
	nJxQ==
X-Gm-Message-State: AA6/9Rnf4X7N2QFKMUFb7npjfAXT0oY5aSDHfEHlarKF1ulSfPNN9v0KpNROCR6vfptulA==
X-Received: by 10.98.157.80 with SMTP id i77mr16385062pfd.11.1475451123863;
	Sun, 02 Oct 2016 16:32:03 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:4b8:204d:45de:e844?
	([2601:646:8882:b8c:4b8:204d:45de:e844])
	by smtp.gmail.com with ESMTPSA id
	x66sm42234530pfb.86.2016.10.02.16.32.02
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Oct 2016 16:32:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <MWHPR04MB033786FC8518966C1FD3EC5BC1F30@MWHPR04MB0337.namprd04.prod.outlook.com>
Date: Sun, 2 Oct 2016 16:31:58 -0700
Message-Id: <D9E3CF59-0D15-418D-947F-D70510BAA768@gmail.com>
References: <MWHPR04MB033786FC8518966C1FD3EC5BC1F30@MWHPR04MB0337.namprd04.prod.outlook.com>
To: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build an SDK toolchain for native x86_64
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
X-List-Received-Date: Sun, 02 Oct 2016 23:32:06 -0000
X-Groupsio-MsgNum: 32159
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A08662B0-A98C-4A78-95CE-028835490D1E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A08662B0-A98C-4A78-95CE-028835490D1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 15, 2016, at 10:04 PM, Josias Inacio da Silva Filho =
<josiasinacio@hotmail.com> wrote:
>=20
> Hi folks,
>=20
> Here=E2=80=99s my current setup and current situation:
>=20
> Host: x86_64
> Target: aarch64
>=20
> Build core-image-base for aarch64 - OK
> populate_sdk for aarch64 - OK
>=20
> My application and it unit tests also gets compiled to aarch64.
>=20
> What I wanted now would be something like run populate_sdk for =
=E2=80=9Ccore-image-base-native=E2=80=9D. The reason for that is because =
I want to compile and run my unit tests using my host machine only =
(x86_64). This makes application development much easier, since I =
don=E2=80=99t need the target nor QEMU to run the unit tests. And I =
still want the toolchain to be generated by Yocto since it solves all =
package dependencies for me.
>=20
> What I attempted:
>=20
> 1) Create a new =E2=80=9Ccore-image-toolchain-native=E2=80=9D similar =
to core-image-base, but tweaking to be able to build for native. That =
does not seem to be the right way, I spent a lot of time doing this and =
got nowhere since many of the image's recipes do not support building =
with native support.
>=20
> 2) Change my machine type to be qemux86_64, then call =E2=80=9Cbitbake =
core-image-base -c populate_sdk=E2=80=9D. That would generate a =
toolchain for x86-64 right? Well it did, and I was able to use this =
toolchain to compile my unit tests for x86_64. But the problem is that =
this still assumes that I=E2=80=99ll be running those unit tests on the =
target machine ( QEMU x86_64), so if I try to run it in my host machine, =
it complains about some missing dynamic libraries that are only found in =
the sysroot of the target qemux86_64.
>=20
> Is there any proper solution for this case?

This is not a usecase which SDK is meant for, the SDK is generally meant =
for doing cross development as you have also
seen above, and why the native case it not covered is also due to fact =
you explained above where you see some missing
libraries. Can this be fixed, sure it can, but its a new feature that =
would require additional considerations if we
have to provide SDK host and cross SDK, this may have usecases but its =
not so common.

Ideally, you should use the gcc toolchain as installed on your SDK host =
( one from ubuntu/debian/fedora whatever distro you use )
and use that for native verification.

You are welcome to file an enhancement request in bugzilla for SDK =
support for SDK host.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A08662B0-A98C-4A78-95CE-028835490D1E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfxmPIACgkQuwUzVZGdMxQiuQCePkBgvLCvZAALikfW9jRqWD9t
aO8AnRNXZ/mvDELoHNJuQMiern0ozvRp
=Wl8N
-----END PGP SIGNATURE-----

--Apple-Mail=_A08662B0-A98C-4A78-95CE-028835490D1E--
