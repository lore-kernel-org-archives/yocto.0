Return-Path: <g.hartwig@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E57C1E00E1B; Sun, 31 Jul 2016 23:04:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from securemail.kostal.com (securemail.kostal.com [193.22.205.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6430AE00DF5
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 23:04:33 -0700 (PDT)
Received: from debesgmg001.de.kostal.int ([193.22.205.239])
	by securemail.kostal.com (8.14.7/8.14.7) with ESMTP id u7161C9Q008768
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 1 Aug 2016 08:01:12 +0200
Received: from debesgmg001.de.kostal.int (debesgmg001.de.kostal.int
	[127.0.0.1])
	by debesgmg001.de.kostal.int (Postfix) with ESMTP id 9D1C2398042
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 08:04:29 +0200 (CEST)
From: "Hartwig, Guido" <g.hartwig@kostal.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Trouble with yocto sdk in collaboration with eclipse and
	cmake
Thread-Index: AdHpcvzurMqwDL3qTduUd0vVPxPs0gARbzSAAIBWvuA=
Date: Mon, 1 Aug 2016 06:04:23 +0000
Message-ID: <73e7977df57b4fefb44dec4ef46e60b6@DEBEMAIL001.kostal.int>
References: <f6b417b9e59c4208bf7bc9e42b48cfbd@DEBEMAIL001.kostal.int>
	<B692FAD6-991B-491A-9B8C-F0ECECA6C1A1@gmail.com>
In-Reply-To: <B692FAD6-991B-491A-9B8C-F0ECECA6C1A1@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
X-SafeGuard_MailGateway: Version: 5.80.2.12968 SGMG_SOPHOS Date:
	20160801060429Z
X-OriginalId: qfu7165bjD026252
x-msw-jemd-spam: not checked
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
X-List-Received-Date: Mon, 01 Aug 2016 06:04:39 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have manually added the flags from CC (-march=3Darmv7-a -marm -mfpu=3Dneo=
n  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8) to the OECMAKE_C_FLAGS and then it=
 works. I try to find a way, where CMAKE works out of the Box with yocto-pl=
ugin. I think the plugin is the problem for this issue.

-----Urspr=FCngliche Nachricht-----
Von: Khem Raj [mailto:raj.khem@gmail.com]=20
Gesendet: Freitag, 29. Juli 2016 20:46
An: Hartwig, Guido <g.hartwig@kostal.com>
Cc: yocto@yoctoproject.org
Betreff: Re: [yocto] Trouble with yocto sdk in collaboration with eclipse a=
nd cmake


> On Jul 29, 2016, at 1:27 AM, Hartwig, Guido <g.hartwig@kostal.com> wrote:
>=20
> Hi,
> I have some trouble with the yocto sdk in collaboration with eclipse and =
yocto CMake project. I have install all necessary eclipse plugins and linke=
d my sdk with the yocto-plugin as described in the manual. When I try to bu=
ild the "Hello World" yocto cmake project it fails with following message:
>=20
> ..
> CMake Error at=20
> /usr/share/cmake-2.8/Modules/CMakeTestCCompiler.cmake:61 (message): The C=
 compiler "/opt/puck/1.0.0/sysroots/x86_64-pucksdk-linux/usr/bin/arm-kostal=
-linux-gnueabi/arm-kostal-linux-gnueabi-gcc"
>  is not able to compile a simple test program ...
>=20
> This error occurs because the compiler is called with the wrong flags.
> The SDK environment-setup script export the following environment=20
> variables export CC=3D"arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -ma=
rm -mfpu=3Dneon  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D$SDKTARGE=
TSYSROOT"
> export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types -fdebug-pre=
fix-map=3D/home/hartwig02/Workspace/build-puck/build/tmp/work/x86_64-native=
sdk-pucksdk-linux/meta-environment-scb/1.0-r8=3D/usr/src/debug/meta-environ=
ment-scb/1.0-r8 -fdebug-prefix-map=3D/home/hartwig02/Workspace/build-puck/b=
uild/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/hartwig02/Work=
space/build-puck/build/tmp/sysroots/x86_64-nativesdk-pucksdk-linux=3D "
>=20
> The eclipse environment (set by the yocto plugin) shows the following env=
ironment:
> CC =3D arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -marm -mfpu=3Dneon =
=20
> -mfloat-abi=3Dhard -mcpu=3Dcortex-a8=20
> --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueab
> i CFLAGS =3D =20
> --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-linux-gnueab
> i OECMAKE_C_COMPILER =3D arm-kostal-linux-gnueabi-gcc
> OECMAKE_C_FLAGS =3D    --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-ne=
on-kostal-linux-gnueabi
>=20
> I assume that yocto cmake uses the OECMAKE* variables to build the progra=
m.
> The error occurs because the following compiler options (Tunes) are missi=
ng "-march=3Darmv7-a -marm -mfpu=3Dneon  -mfloat-abi=3Dhard -mcpu=3Dcortex-=
a8"
>=20
> Now my questions
> 1.	Is it right that the yocto plugin cuts off the tunes from the OECMAKE_=
C_COMPILER?
> 2.	Is there a reason that this compiler options are not appended to the C=
FLAGS?

CFLAGS should be passed down to cmake build system. That seems to be the pr=
oblem you are seeing. Have you tried to append CFLAGS to OECMAKE_C_FLAGS ?

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
> KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht=20
> Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
> Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49 =
=20
> 2351 16-0 * Telefax: +49  2351 16-2400
> Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 *=20
> Fax +49 2331 8040-602
> Gesch=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec=
.=20
> Andreas Kostal
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto




