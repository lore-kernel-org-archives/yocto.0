Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0792CE00AB9; Fri, 26 Oct 2018 08:59:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.93.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1125 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Oct 2018 08:59:02 PDT
Received: from JPN01-TY1-obe.outbound.protection.outlook.com
	(mail-ty1jpn01on0099.outbound.protection.outlook.com [104.47.93.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC33E00A4F
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 08:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=M24+FLC2Y0I/AMz69J4Ip3Sc1K29lgBlDwBqvDbX0Eg=;
	b=UWKN+9jPb/x3UwMav8hgSprnJM5/dSG7UceRbqqiX9xACfLfIzPQv9BqqEppDjuHMUunBZUcdft8Fp+S9jv2YYWfIumqVLUMEknPun0q5cQumk5iiyE401B3UG9KQeYndPSoSzJ8pA8ur/3WJUiq96rBtGQeb10Q4+lpQkw6hhQ=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.179.12) by
	TYAPR01MB2798.jpnprd01.prod.outlook.com (20.177.102.143) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1273.24; Fri, 26 Oct 2018 15:25:10 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::8c31:669:478f:f8d1]) by TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::8c31:669:478f:f8d1%4]) with mapi id 15.20.1250.032;
	Fri, 26 Oct 2018 15:25:10 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: LIC_FILES_CHKSUM md5 case unexpected behaviour
Thread-Index: AdRtP/6V3QduqrHTSYemOFQ0R05eww==
Date: Fri, 26 Oct 2018 15:25:10 +0000
Message-ID: <TYAPR01MB20317799316BCF03BEC1BC5992F00@TYAPR01MB2031.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TYAPR01MB2798;
	20:NlMOB8548VG3+EPiT0OZNUevJK/rzpYrIs5O78GmMxPU95dBa23icBsGF7RvrYncXk8qy8mDKwwHAEuK5BsC2o/m83snWQfHk0vzIuIX7/hgA/YyEp2k58tmCskk2YewKvfEmsm5PWS517l9c8j20U6DW9GMjd97pHYQm8LXraY=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: f236702b-851b-48ed-fcb0-08d63b5737b8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:TYAPR01MB2798; 
x-ms-traffictypediagnostic: TYAPR01MB2798:
x-microsoft-antispam-prvs: <TYAPR01MB27983C53ED7780D533EEF1E692F00@TYAPR01MB2798.jpnprd01.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3231355)(944501410)(52105095)(3002001)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:TYAPR01MB2798; BCL:0; PCL:0; RULEID:; SRVR:TYAPR01MB2798; 
x-forefront-prvs: 083751FCA6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(366004)(376002)(136003)(39860400002)(396003)(199004)(189003)(174874002)(478600001)(53936002)(81166006)(81156014)(8676002)(1730700003)(8936002)(575784001)(86362001)(25786009)(71190400001)(71200400001)(68736007)(66574009)(966005)(5640700003)(14454004)(5250100002)(2501003)(97736004)(6436002)(9686003)(6306002)(55016002)(6916009)(66066001)(486006)(2900100001)(476003)(316002)(44832011)(26005)(6506007)(102836004)(256004)(186003)(5660300001)(105586002)(33656002)(6116002)(106356001)(2906002)(3846002)(305945005)(99286004)(7696005)(7736002)(74316002)(2351001)(554374003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2798;
	H:TYAPR01MB2031.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: c9eoALzctg4ZRL7YYDLSGYgFs54pWkDV5lDbnSW1LYq3q17e0wFPZCxIihieMTm27njSVrGkvBph6ORXlvAsacONMOYd4Fa3mZVZOpfxDCBVzad744GtIYS5eKnCsQ41RVay1U9FoPFsEQ9OdSi2hfCPeTHKXiHpcSX1iy4x7o2FeCG9LtEx+NpFBL50NjzAEo7c65k6TY0al31u2Z0pR2ziaZmXNxAg6Y/5RWkvuTvhTEfL+zUm408RhO9s+6uL3Tp7WCTm4qf/ZSWVk5XiWs6fzIR0fnT9urvh0O5guIjCYIoUI/CepyQKbDMs9ulxN5CnQqtdufmjEmAaev0eYTBprfR8Eejm5Y8ch8vs/38=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f236702b-851b-48ed-fcb0-08d63b5737b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2018 15:25:10.1056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2798
Subject: LIC_FILES_CHKSUM md5 case unexpected behaviour
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
X-List-Received-Date: Fri, 26 Oct 2018 15:59:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm not getting the deterministic behaviour I would expect for recipe licen=
se checksums and I just wanted to check expected behaviour.

Building this recipe [1] for rocko I get the following license checksum err=
or:
  ERROR: cannelloni-1.0-r0 do_populate_lic: QA Issue: cannelloni: The LIC_F=
ILES_CHKSUM does not match for file://gpl-2.0.txt;md5=3DB234EE4D69F5FCE4486=
A80FDAF4A4263
  cannelloni: The new md5 checksum is b234ee4d69f5fce4486a80fdaf4a4263

The checksums are the same but unusually the recipe has specified the licen=
se md5 in uppercase.
Looking at the check in insane.bbclass [2] the error is expected for a case=
 sensitive comparison and so the fix is straight forward.
Patch the recipe to use a lower case checksum.

So far so normal. The weird thing is that recipe has been around for some t=
ime and I wonder why it's not been reported.
Indeed in the same build environment, but different build trees, for one ma=
chine I get the error above, but for the other I don't.
I have no explanation for why the check isn't deterministic in the same env=
ironment, presumably running the same python.

Like I say it's a straight forward fix for the specific error but I just wa=
nted to flag the behaviour up before moving on in case this is some=20
kind of corner case that is an opportunity to improve the project.=20

[1] https://github.com/GENIVI/genivi-dev-platform/blob/14.0.x-rocko/meta-ge=
nivi-dev/meta-genivi-dev/recipes-extended/cannelloni/cannelloni.bb#L4
[2] https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/insan=
e.bbclass?h=3Drocko&id=3D66550feb26f091f645d9e25ad0febef6d3d8f2eb#n642

Host is ubuntu 16.04.5 LTS running python 2.7.12 and python3 3.5.2.

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "aarch64-poky-linux"
MACHINE              =3D "h3ulcb"
DISTRO               =3D "poky-ivi-systemd"
DISTRO_VERSION       =3D "14.0.0"
TUNE_FEATURES        =3D "aarch64 cortexa57-cortexa53"
TARGET_FPU           =3D ""
SOC_FAMILY           =3D "rcar-gen3:r8a7795"
meta                =20
meta-poky           =20
meta-yocto-bsp       =3D "HEAD:6b744113ad3e564d1cb05411816b103d99fd84dc"
meta-ivi            =20
meta-ivi-bsp         =3D "HEAD:0c7d8350caa9699cbdeed40caf2991503bdb2400"
meta-oe             =20
meta-filesystems    =20
meta-gnome          =20
meta-networking     =20
meta-python          =3D "HEAD:dacfa2b1920e285531bec55cd2f08743390aaf57"
meta-gplv2           =3D "HEAD:f875c60ecd6f30793b80a431a2423c4b98e51548"
meta-qt5             =3D "HEAD:fa73caf8b9466629bb044134d80294c1e5742f13"
meta-sdl             =3D "HEAD:60c9fe8a4a9c6ca95f222685f8d6248f16236f2a"
meta-erlang         =20
meta-genivi-dev     =20
meta-ivi            =20
meta-qt5            =20
meta-rvi            =20
meta-oe             =20
poky                 =3D "master:299e4aa5a0f961c367b66b327216527644cd695a"
meta-erlang          =3D "HEAD:cefeda63b04308fd740af5be2a628c513e387f6b"
meta-rvi             =3D "HEAD:de9d548fe35e2cee8688faaae910b4f6f7fea17e"
meta-flatpak         =3D "HEAD:f07b81d9561d391ee301184bd094d6417470a559"
meta-lgsvl-browser   =3D "HEAD:2d9a4507bc73214250173bbf12d8638f6bb64f96"
meta-rcar-gen3       =3D "HEAD:fd078b6ece537d986852cb827bd21e022a797b2f"
meta-rcar-gen3       =3D "master:299e4aa5a0f961c367b66b327216527644cd695a"
meta-optee           =3D "HEAD:75dfb67bbb14a70cd47afda9726e2e1c76731885"
meta-ivi-renesas     =3D "HEAD:e1e5223d7f3d36b65f45f7d4408271b622506082"

Regards

Steve

