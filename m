Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FF65E00D43; Wed, 30 Sep 2015 04:16:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 850 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Sep 2015 04:16:37 PDT
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0099.outbound.protection.outlook.com [104.47.125.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB098E00B4F
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 04:16:37 -0700 (PDT)
Received: from HK2PR04MB1188.apcprd04.prod.outlook.com (10.165.60.14) by
	HK2PR04MB1185.apcprd04.prod.outlook.com (10.165.60.11) with Microsoft
	SMTP Server (TLS) id 15.1.280.20; Wed, 30 Sep 2015 11:02:24 +0000
Received: from HK2PR04MB1188.apcprd04.prod.outlook.com ([10.165.60.14]) by
	HK2PR04MB1188.apcprd04.prod.outlook.com ([10.165.60.14]) with mapi id
	15.01.0280.017; Wed, 30 Sep 2015 11:02:25 +0000
From: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
To: Khem Raj <raj.khem@gmail.com>, Vivek Per <pervivek@gmail.com>
Thread-Topic: [yocto] How can i invoke a "particular recipe(.bb)" while
	building "image recipe(.bb)" without modifying the "image recipe(.bb)"
	. i only wanted to change "particular recipe(.bb)"
Thread-Index: AQHQ+19ga84IAdFB0EyCS3xtfHElDZ5U2p2AgAAFnv4=
Date: Wed, 30 Sep 2015 11:02:24 +0000
Message-ID: <HK2PR04MB118899833CEA422F39D5C9BEEC4D0@HK2PR04MB1188.apcprd04.prod.outlook.com>
References: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>,
	<CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
In-Reply-To: <CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yukatharsanij@tataelxsi.co.in; 
x-originating-ip: [132.245.69.37]
x-microsoft-exchange-diagnostics: 1; HK2PR04MB1185;
	5:fDyk/KbitXHjo/M50ct3LKy1lBWA+vvBLivMeyrWPwr+tcGT07t1kf88bSicDnJdkqzu6BZsxf0cjukJXOYMSvPXb0QLg9djB6kVmlcoBBX+EY1+3WTiAxxhWA26ojorGixgeTdzBqyIp8RBMQJ02Q==;
	24:yDfvpBiC+Y0UA2icU6FXPBuGL0ynqygKmGCRzGeCsaLA8F90CToIs+5vSybahoBi8KzisirakSWnMhYaoUZWEqYUADswiBB9fbP7kEDeBQo=;
	20:OQToNfyViU1WXy53CcO/G0gtNUbfZRs5Cb0gioqynWKdBTmvzYY71E6i7ejgd5njggWqBqQ8L5kOSKaTug/UGA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HK2PR04MB1185;
x-microsoft-antispam-prvs: <HK2PR04MB11855DD999082DA5242E4C78EC4D0@HK2PR04MB1185.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(3002001);
	SRVR:HK2PR04MB1185; BCL:0; PCL:0; RULEID:; SRVR:HK2PR04MB1185; 
x-forefront-prvs: 071518EF63
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(377454003)(51874003)(199003)(24454002)(74482002)(5007970100001)(5001960100002)(5003600100002)(54356999)(19580395003)(19580405001)(77096005)(77156002)(50986999)(2900100001)(46102003)(15975445007)(2950100001)(101416001)(5008740100001)(86362001)(68736005)(62966003)(40100003)(66066001)(76176999)(450100001)(33656002)(64706001)(102836002)(92566002)(5001830100001)(106356001)(5001770100001)(74316001)(97736004)(5004730100002)(81156007)(5002640100001)(10400500002)(189998001)(105586002)(76576001)(4001540100001)(5001860100001)(87936001)(4001450100002)(122556002)(106116001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB1185;
	H:HK2PR04MB1188.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:0; LANG:en; 
received-spf: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2015 11:02:24.5015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB1185
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How can i invoke a "particular recipe(.bb)" while building "image recipe(.bb)" without modifying the "image recipe(.bb)" . i only wanted to change "particular recipe(.bb)"
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
X-List-Received-Date: Wed, 30 Sep 2015 11:16:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

1) Create packagegroup-debug-extra"x recipe name".bb file inside the meta-x=
/recipes-core/packagegroups layer.
Inside the recipe, add the x recipe name like below:-

inherit packagegroup

PACKAGES =3D "\
    packagegroup-debug-extra"x recipename" \
    "

RDEPENDS_packagegroup-extra"x recipename =3D "x recipe name"

2) Add IMAGE_INSTALL_append =3D "x recipe name" in build/conf/local.conf fi=
le.

Please try this and let me know if it works.

Thanks and Regards,
Yukatharsani J.

________________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Khem Raj <raj.khem@gmail.com>
Sent: Wednesday, September 30, 2015 3:43 PM
To: Vivek Per
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How can i invoke a "particular recipe(.bb)" while buil=
ding "image recipe(.bb)" without modifying the "image recipe(.bb)" . i only=
 wanted to change "particular recipe(.bb)"

On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per <pervivek@gmail.com> wrote:
> hi,
>    i want to create a "x" recipe that should automatically get invoke whe=
n
> "image" recipe( that produces image) is built. How can i modify the "x"
> recipe that should be invoked while building image recipe.
>
> I don't want to do any modifications to the image recipe, i only wanted t=
o
> do changes in "x" recipe.
> Can any one help on this . thanks in advance

add one of output package its producing ( ipk)  to IMAGE_INSTALL
inside the image recipe.

>
> Thanks and regards
> vivek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

