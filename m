Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADF57E0095C; Thu, 13 Aug 2015 09:41:40 -0700 (PDT)
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
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF56E0095C
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 09:41:37 -0700 (PDT)
Received: by pdrg1 with SMTP id g1so21441051pdr.2
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 09:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=xH1HdPZ0pc7WbYjb1zaxK0zsDA8gXTdiYlfWuxmXBLk=;
	b=dqI/jBiPBo4195yn0Gm7P7HrNhqgbo4MSuSr+kwT7rHkFLCnRwjByYGVzKhlMBTLjP
	dDpqcLCpQ1gHcHIsQr4XAdAi/dD7Yx6nfHRYgTP5YV1uFpylpCLknU83z4TUAHWZvvNK
	pq3Hw1o+JlC8tl4cwo5VdqQwX3P4yCtIpGQPGmHYVr5Fqzb/ZebGCWJwUz1wCV3VFZfC
	lcko5XCRWzfIQZXyo4XykVJQC2TwrHs4qO+J7pUswOgQDEhM0MvzAqJVW8DrsKTu7eyR
	rQN8l3YeZdKnuhkLuxNo4WB7t+j0OHFtTRsjRV32tusTBRtH+SVicDb1s2kbuqy9UtP6
	wlfQ==
X-Received: by 10.70.108.137 with SMTP id hk9mr79938784pdb.105.1439484097466; 
	Thu, 13 Aug 2015 09:41:37 -0700 (PDT)
Received: from ?IPv6:2601:647:4c02:370d:91a9:55b7:6f3a:6b82?
	([2601:647:4c02:370d:91a9:55b7:6f3a:6b82])
	by smtp.gmail.com with ESMTPSA id
	iw2sm3213096pbb.67.2015.08.13.09.41.36
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Aug 2015 09:41:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CADF5PPEzdXYmU8u3ee4cQF9KAW0zLO_zXEM7EvwQhRuXCbwhGw@mail.gmail.com>
Date: Thu, 13 Aug 2015 09:41:26 -0700
Message-Id: <8334F1AA-1C94-4555-A582-BE6AADFCA103@gmail.com>
References: <CADF5PPEzdXYmU8u3ee4cQF9KAW0zLO_zXEM7EvwQhRuXCbwhGw@mail.gmail.com>
To: paul grant <home.paul.grant@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain uclibc issue
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
X-List-Received-Date: Thu, 13 Aug 2015 16:41:40 -0000
X-Groupsio-MsgNum: 26080
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0900E2A7-0ABA-4FE7-BDB0-2DF60A39953E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0900E2A7-0ABA-4FE7-BDB0-2DF60A39953E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 16, 2015, at 8:56 AM, paul grant <home.paul.grant@gmail.com> =
wrote:
>=20
> Hello All,
>=20
> I'm trying to build a cross compiler toolchain for PowerPC (mpc8544).
>=20
> I'm able to successfully bitbake the meta-toolchain target
> for glibc, when I check inside the sysroot directory of the sdk,
> I find the following directories:
>=20
> ppce500v2-poky-linux-gnuspe
> x86_64-pokysdk-linux
>=20
> The directory ppce500v2-poky-linux-gnuspe, contains root filesystem
> for target (ppc500v2).
> The directory x86_64-pokysdk-linux, contains the cross development =
tools,
> for my host, particularly gcc (powerpc-poky-linux-gnuspe-gcc)
>=20
> If I execute:
>=20
> powerpc-poky-linux-gnuspe-gcc -v
>=20
> the target is set to: powerpc-poky-linux
>=20
> which I interpret to mean a powerpc based target with glibc&linux
>=20
> I want to build a uclibc toolchain:
>=20
> to this I understand you need to add the following line to my =
local.conf:
>=20
> TCLIBC =3D "uclibc"
>=20
> After doing so, I am again able successfully build the target =
meta-toolchain.
> Again if I look inside the sysroot directory two directories have been =
created:
>=20
> ppce500v2-poky-linux-uclibcspe
> x86_64-pokysdk-linux
>=20
> ppce500v2-poky-linux-uclibcspe, this time the root filesystem is based =
on
> uclibc and this is refelected in the name.
> x86_64-pokysdk-linux, again a directory to hold the host tools has =
been created.
> The gcc tools are located in under directory =
./usr/bin/powerpc-poky-linux-gnuspe
> as before,
>=20
> If I execute:
>=20
> powerpc-poky-linux-gnuspe-gcc -v
>=20
> the target is set to: powerpc-poky-linux
>=20
> However given that I've selected uclibc, I was expecting the gcc tools =
to be located
> under a directory: ./usr/bin/powerpc-poky-linux-uclibcspe
> to reflect the fact that the tools are targeting uclibc.

so where are they found instead ?

>=20
> If I look inside the environment script created by the meta-toolchain =
target
> it shares this expectation as is reflected by the extract for CC =
envvar:
>=20
> export CC=3D"powerpc-poky-linux-uclibcspe-gcc  -m32 -mcpu=3D8548 =
-mabi=3Dspe -mspe -mfloat-gprs=3Ddouble --sysroot=3D$SDKTARGETSYSROOT"
>=20
> If I search the files created by the target meta-toolchain, it has =
actually created
> an apprpriate gcc located deeply nested under the work diretcory, a =
gcc toolset
> of the correct form has been created, namely:
>=20
> powerpc-poky-linux-uclibcspe-g++
>=20
> Just to confirm when I run with the -v option it shows its target as:
>=20
> powerpc-poky-linux-uclibcspe
>=20
> Can someone clarify what's happening here?!?
>=20
> 1. Are my expectations correct?
> 2. If so, why is the correct toolchain created, but not put in the =
correct place
> by the populate-sdk target?

-cpopulate_sdk would generate a self installer which will be a shell =
script inside your deploy area
you can install it on a machine and use it outside yocto/OE build env, =
for using internal toolchain
from native sysroot as you have been trying you don=E2=80=99t need to =
build sdk

and meta-toolchain is supposed to be replace with image specific SDKs, =
use -cpopulate_sdk <imagename> to generate SDKs


>=20
> Thanks in advance for any help you can provide!
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0900E2A7-0ABA-4FE7-BDB0-2DF60A39953E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXMyL4ACgkQuwUzVZGdMxSs7wCgiwBV8s9O3B+yMxixlRuhZueJ
puYAn0x2vhojXsS7d4ZRJ/TS820M7pJV
=rajV
-----END PGP SIGNATURE-----

--Apple-Mail=_0900E2A7-0ABA-4FE7-BDB0-2DF60A39953E--
