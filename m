Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2821EE0089B; Mon, 24 Nov 2014 01:09:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emailsecurity.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4A99E00837
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 01:08:51 -0800 (PST)
Received: from emailsecurity.raylase.de (127.0.0.1) id hebqqk0171sr for
	<yocto@yoctoproject.org>;
	Mon, 24 Nov 2014 10:08:50 +0100 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by emailsecurity.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA
	bits=256/256)
	id 201411240908500076489; Mon, 24 Nov 2014 10:08:50 +0100
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.210.2;
	Mon, 24 Nov 2014 10:08:50 +0100
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0210.002; Mon, 24 Nov 2014 10:08:49 +0100
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [SOLVED] Newbie confusion: trying to use meta-mono on
	poky-socfpga (Arrow SoCKit)
Thread-Index: AQHQB8ZBPwjtWbf6DESsdv5yFT1BJQ==
Date: Mon, 24 Nov 2014 09:08:47 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC52003A97@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.255.1]
MIME-Version: 1.0
X-Mlf-Version: 8.0.5.2663
X-Mlf-UniqueId: o201411240908500076489
Subject: Re: [SOLVED] Newbie confusion: trying to use meta-mono on poky-socfpga (Arrow SoCKit)
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
X-List-Received-Date: Mon, 24 Nov 2014 09:09:02 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

answering my own question...

It is sufficient to add "x11" to the DISTRO_FEATURES variable in the machin=
e configuation file ( .../machine/socfpga_cyclone5.conf ).

Simple, really!
--
jim

________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Spriggs, Jim [J.Spriggs@raylase.de]
Sent: 21 November 2014 14:14
To: yocto@yoctoproject.org
Subject: [yocto] Newbie confusion: trying to use meta-mono on poky-socfpga =
(Arrow SoCKit)

Hi Guys,

[ yes, I've also posted this question on rocketboards list]

My goal is to run "console" .NET apps via Mono on the Arrow SoCKit with pok=
y-socfpga v14.0

My first steps were:
1) Add the meta-mono layer to bblayers.conf
2) Put "IMAGE_INSTALL_append =3D " mono"" in local.conf
3) Execute "bitbake altera-gsrd-image "...

-----------------------------------------------------------------

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "socfpga_cyclone5"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3"
TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto
meta-yocto-bsp
meta-altera
meta-linaro       =3D "acds14.0:83a01c4b2da664648d8ca0425ba6b98ff9a5b7ca"
meta-mono         =3D "master:802138721cc72e5f4fb9853b0552a117e677536e"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'libxft' (but /home/jim/Projects/poky-socfpga/meta-=
mono/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb DEPENDS on or otherwise r=
equires it)
ERROR: libxft was skipped: 'x11' not in DISTRO_FEATURES
NOTE: Runtime target 'mono' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mono', 'libgdiplus', 'libxft=
']
ERROR: Required build target 'altera-gsrd-image' has no buildable providers=
.
Missing or unbuildable dependency chain was: ['altera-gsrd-image', 'mono', =
'libgdiplus', 'libxft']

-----------------------------------------------------------------

Obviously, "x11 not in DISTRO_FEATURES" is a clue, but as a Newbie, I'm not=
 exactly sure what it's telling me.

After spending several hours trawling through the the other layers and reci=
pes in poky-socfpga,  I'm coming to the conclusion that the lack of x11 is =
somehow due to the machine configuration.

Would someone be kind enough confirm or deny my conclusion, and perhaps poi=
nt me in the right direction, if there is one?


Thanks!
--
jim

________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Peter von Jan (CEO)

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Peter von Jan (CEO)

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.

