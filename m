Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6BBDE00D72; Fri, 29 Jul 2016 11:46:26 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64A3CE00D63
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 11:46:23 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i6so5859759pfe.0
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 11:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=JDMGou5s9w51AWc99fBTx8tBF/Ur5R308xT5rX0GB3g=;
	b=pu7MYH21V6yewaswgxZWmcUyloLIwtaJtPErwXbhSXi0qp0nfzPQbpsl3DihGveG+c
	FAzIDna3xXCLd8/YpLoRifiQ7fa2TJL2ZiXoSr293DAcQP+/bOcSPmweLol9Z38sNGHx
	759MS87rexU8UZ4zo4Cw7D9aMha0/2UxxDZRWjN8mhsdAIvPhWQWIhzpmahkQGZC56ki
	4byNGrNHosw6Kht5Ck055sMhvS9Ny8nCXYU5gMniYDj6do8MZ2wHe7patyXAeM6mcwMd
	HdO6huLp5hpfhP4MOYABka09b1ktfz4BbZ9KY0bTde/nnnTJgXmh5h06lVL59sAQc6AZ
	h2tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=JDMGou5s9w51AWc99fBTx8tBF/Ur5R308xT5rX0GB3g=;
	b=EBtTr8xrCv3rVVnINUXMdcheWZ9H9cXtUneSC5VXPtT20TGCB+NAirA5gElRnysZvd
	1zqG2IPBWUQsq4sa879lAUphZgXPifVOrGqP/WKkoQcOGMhQGMwviTPKGAlungJZimuD
	RbFa1W9/RKjI94bL4UTIDjnbrlCwRP3v0tysCMLWX2qNGanUukVpJKpKgyH1e0d2oaAG
	yZcF7SWzR5ZTdUPBm0ZoGzNEWVc/Ch9Jl/vtWukQ5JWftw83xu9hxybCvXtwZpjOFuZa
	8WA9u6AwHYHhZS/0K/JY5r+bOwlp/FvvWChpdXdL7KddcEwQz9LSRcU3ZrRxtS8+UusU
	SoAg==
X-Gm-Message-State: AEkoousSaUWCWSxNxJkfWEWbBhWEaMx9Vzbfv7io0Ko0p8oFuZddIOU3igIlB7NvxXCtTw==
X-Received: by 10.98.79.27 with SMTP id d27mr71513256pfb.127.1469817983550;
	Fri, 29 Jul 2016 11:46:23 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99bc:2711:d44c:7b33?
	([2601:647:4c00:3edf:99bc:2711:d44c:7b33])
	by smtp.gmail.com with ESMTPSA id
	f6sm26817219pfa.17.2016.07.29.11.46.22
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 11:46:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <f6b417b9e59c4208bf7bc9e42b48cfbd@DEBEMAIL001.kostal.int>
Date: Fri, 29 Jul 2016 11:46:17 -0700
Message-Id: <B692FAD6-991B-491A-9B8C-F0ECECA6C1A1@gmail.com>
References: <f6b417b9e59c4208bf7bc9e42b48cfbd@DEBEMAIL001.kostal.int>
To: "Hartwig, Guido" <g.hartwig@kostal.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble with yocto sdk in collaboration with eclipse and cmake
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
X-List-Received-Date: Fri, 29 Jul 2016 18:46:26 -0000
X-Groupsio-MsgNum: 31309
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8B82D999-1B96-43AE-BA00-12C64DD11B2B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8B82D999-1B96-43AE-BA00-12C64DD11B2B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Jul 29, 2016, at 1:27 AM, Hartwig, Guido <g.hartwig@kostal.com> =
wrote:
>=20
> Hi,
> I have some trouble with the yocto sdk in collaboration with eclipse =
and yocto CMake project. I have install all necessary eclipse plugins =
and linked my sdk with the yocto-plugin as described in the manual. When =
I try to build the "Hello World" yocto cmake project it fails with =
following message:
>=20
> ..
> CMake Error at =
/usr/share/cmake-2.8/Modules/CMakeTestCCompiler.cmake:61 (message): The =
C compiler
> =
"/opt/puck/1.0.0/sysroots/x86_64-pucksdk-linux/usr/bin/arm-kostal-linux-gn=
ueabi/arm-kostal-linux-gnueabi-gcc"
>  is not able to compile a simple test program
> ...
>=20
> This error occurs because the compiler is called with the wrong flags.
> The SDK environment-setup script export the following environment =
variables
> export CC=3D"arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -marm =
-mfpu=3Dneon  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 =
--sysroot=3D$SDKTARGETSYSROOT"
> export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types =
-fdebug-prefix-map=3D/home/hartwig02/Workspace/build-puck/build/tmp/work/x=
86_64-nativesdk-pucksdk-linux/meta-environment-scb/1.0-r8=3D/usr/src/debug=
/meta-environment-scb/1.0-r8 =
-fdebug-prefix-map=3D/home/hartwig02/Workspace/build-puck/build/tmp/sysroo=
ts/x86_64-linux=3D =
-fdebug-prefix-map=3D/home/hartwig02/Workspace/build-puck/build/tmp/sysroo=
ts/x86_64-nativesdk-pucksdk-linux=3D "
>=20
> The eclipse environment (set by the yocto plugin) shows the following =
environment:
> CC =3D arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -marm -mfpu=3Dneon=
  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 =
--sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueabi
> CFLAGS =3D  =
--sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueabi
> OECMAKE_C_COMPILER =3D arm-kostal-linux-gnueabi-gcc
> OECMAKE_C_FLAGS =3D    =
--sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueabi
>=20
> I assume that yocto cmake uses the OECMAKE* variables to build the =
program.
> The error occurs because the following compiler options (Tunes) are =
missing "-march=3Darmv7-a -marm -mfpu=3Dneon  -mfloat-abi=3Dhard =
-mcpu=3Dcortex-a8"
>=20
> Now my questions
> 1.	Is it right that the yocto plugin cuts off the tunes from the =
OECMAKE_C_COMPILER?
> 2.	Is there a reason that this compiler options are not appended to =
the CFLAGS?

CFLAGS should be passed down to cmake build system. That seems to be the =
problem you
are seeing. Have you tried to append CFLAGS to OECMAKE_C_FLAGS ?

>=20
> Thank you for your help
>=20
>=20
>=20
> Mit freundlichen Gr=FC=DFen / Kind regards
>=20
> KOSTAL Industrie Elektrik GmbH
>=20
> Dipl.-Ing.
> Guido Hartwig
> IE1 Entwicklung Elektronik
> R & D Electronics
>=20
> Lange Eck 11, 58099 Hagen
> Deutschland / Germany
> Telefon: +49 2331 8040 - 688
> Telefax: +49 2331 8040 - 4660
> E-Mail: g.hartwig@kostal.com
>=20
> Internet: http://www.kostal.com/industrie
>=20
>=20
>=20
> KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht =
Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
> Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: =
+49  2351 16-0 * Telefax: +49  2351 16-2400
> Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * =
Fax +49 2331 8040-602
> Gesch=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, =
Dipl.-Oec. Andreas Kostal
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8B82D999-1B96-43AE-BA00-12C64DD11B2B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlebpH0ACgkQuwUzVZGdMxR3yQCfZBEkn/e5cEno83QkLy++MJP6
K1EAn0IuuX818/QbtxvJCozkCvKbMwfU
=GoTa
-----END PGP SIGNATURE-----

--Apple-Mail=_8B82D999-1B96-43AE-BA00-12C64DD11B2B--
