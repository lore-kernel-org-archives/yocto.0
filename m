Return-Path: <g.hartwig@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 502C3E01017; Fri, 29 Jul 2016 01:32:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Jul 2016 01:32:24 PDT
Received: from securemail.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7F10E00D20
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 01:32:24 -0700 (PDT)
Received: from debesgmg001.de.kostal.int ([193.22.205.239]) by 
	securemail.kostal.com (8.14.7/8.14.7) with ESMTP id u6T8SSbv020133 
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO) 
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 10:28:29 +0200
Received: from debesgmg001.de.kostal.int 
	(debesgmg001.de.kostal.int [127.0.0.1]) by debesgmg001.de.kostal.int 
	(Postfix) with ESMTP id 9242C398042 for <yocto@yoctoproject.org>; Fri,
	29 Jul 2016 10:27:13 +0200 (CEST)
From: "Hartwig, Guido" <g.hartwig@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trouble with yocto sdk in collaboration with eclipse and cmake
Thread-Index: AdHpcvzurMqwDL3qTduUd0vVPxPs0g==
Date: Fri, 29 Jul 2016 08:27:09 +0000
Message-ID: <f6b417b9e59c4208bf7bc9e42b48cfbd@DEBEMAIL001.kostal.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
X-SafeGuard_MailGateway: Version: 5.80.2.12968 SGMG_SOPHOS Date: 
	20160729082713Z
X-OriginalId: qfu6T8NtW8011306
x-msw-jemd-spam: not checked
Subject: Trouble with yocto sdk in collaboration with eclipse and cmake
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
X-List-Received-Date: Fri, 29 Jul 2016 08:32:28 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I have some trouble with the yocto sdk in collaboration with eclipse and yo=
cto CMake project. I have install all necessary eclipse plugins and linked =
my sdk with the yocto-plugin as described in the manual. When I try to buil=
d the "Hello World" yocto cmake project it fails with following message:

..
CMake Error at /usr/share/cmake-2.8/Modules/CMakeTestCCompiler.cmake:61 (me=
ssage): The C compiler
 "/opt/puck/1.0.0/sysroots/x86_64-pucksdk-linux/usr/bin/arm-kostal-linux-gn=
ueabi/arm-kostal-linux-gnueabi-gcc"
  is not able to compile a simple test program
...

This error occurs because the compiler is called with the wrong flags.
The SDK environment-setup script export the following environment variables
export CC=3D"arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -marm -mfpu=3Dn=
eon  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D$SDKTARGETSYSROOT"
export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefi=
x-map=3D/home/hartwig02/Workspace/build-puck/build/tmp/work/x86_64-nativesd=
k-pucksdk-linux/meta-environment-scb/1.0-r8=3D/usr/src/debug/meta-environme=
nt-scb/1.0-r8 -fdebug-prefix-map=3D/home/hartwig02/Workspace/build-puck/bui=
ld/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/hartwig02/Worksp=
ace/build-puck/build/tmp/sysroots/x86_64-nativesdk-pucksdk-linux=3D "

The eclipse environment (set by the yocto plugin) shows the following envir=
onment:
CC =3D arm-kostal-linux-gnueabi-gcc  -march=3Darmv7-a -marm -mfpu=3Dneon  -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a8 --sysroot=3D/opt/puck/1.0.0/sysroots/co=
rtexa8hf-neon-kostal-linux-gnueabi
CFLAGS =3D  --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon-kostal-lin=
ux-gnueabi
OECMAKE_C_COMPILER =3D arm-kostal-linux-gnueabi-gcc
OECMAKE_C_FLAGS =3D    --sysroot=3D/opt/puck/1.0.0/sysroots/cortexa8hf-neon=
-kostal-linux-gnueabi

I assume that yocto cmake uses the OECMAKE* variables to build the program.=
=20
The error occurs because the following compiler options (Tunes) are missing=
 "-march=3Darmv7-a -marm -mfpu=3Dneon  -mfloat-abi=3Dhard -mcpu=3Dcortex-a8"

Now my questions
1.	Is it right that the yocto plugin cuts off the tunes from the OECMAKE_C_=
COMPILER?
2.	Is there a reason that this compiler options are not appended to the CFL=
AGS?

Thank you for your help



Mit freundlichen Gr=FC=DFen / Kind regards

KOSTAL Industrie Elektrik GmbH=20

Dipl.-Ing.
Guido Hartwig=20
IE1 Entwicklung Elektronik
R & D Electronics

Lange Eck 11, 58099 Hagen
Deutschland / Germany
Telefon: +49 2331 8040 - 688
Telefax: +49 2331 8040 - 4660
E-Mail: g.hartwig@kostal.com

Internet: http://www.kostal.com/industrie



KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec. =
Andreas Kostal


