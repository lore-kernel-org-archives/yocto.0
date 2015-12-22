Return-Path: <mirela.rabulea@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CF3DE00CC3; Tue, 22 Dec 2015 03:50:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 924 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Dec 2015 03:50:32 PST
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0076.outbound.protection.outlook.com [157.55.234.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4860DE009B6;
	Tue, 22 Dec 2015 03:50:32 -0800 (PST)
Received: from DBXPR04MB416.eurprd04.prod.outlook.com (10.141.15.152) by
	HE1PR04MB0908.eurprd04.prod.outlook.com (10.162.23.21) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Tue, 22 Dec 2015 11:35:04 +0000
Received: from DBXPR04MB416.eurprd04.prod.outlook.com ([10.141.15.152]) by
	DBXPR04MB416.eurprd04.prod.outlook.com ([10.141.15.152]) with mapi id
	15.01.0361.006; Tue, 22 Dec 2015 11:35:04 +0000
From: Mirela Rabulea <mirela.rabulea@nxp.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, Mirela Rabulea
	<Mirela.Rabulea@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRO+JQkjs3VfaAnke6FvA1yts7QJ7W4STQ
Date: Tue, 22 Dec 2015 11:35:03 +0000
Message-ID: <DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
	<D29D8ACF.6DB8E%belen.barros.pena@intel.com>
In-Reply-To: <D29D8ACF.6DB8E%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mirela.rabulea@nxp.com; 
x-originating-ip: [192.88.146.1]
x-microsoft-exchange-diagnostics: 1; HE1PR04MB0908;
	5:tHt7/O4GfIJu+asfg/B+oJzB3266GYj0rDdCPCgXzU+St1v7BeG1K8EN1dekVgfQgNA55GsSOnHRJ6AoVRPw6Jkvlzh6Mr/enUzu0PtgaFWP2Q50hyFKpMNSXY1TEye38HA9pAnVRb+nLDQF71qpfQ==;
	24:2cOlR7K2yEomdmkqOoW9eIB8XRd9C0Rjf5YMo4AKCvOVfc62rWDtTyqSAaDJUxbDdKsyzajjU5A6lJx0e60aqS+VEqcapoHe8KYjoZqyNec=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR04MB0908;
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <HE1PR04MB0908756F1B95CE0BD31EFE498FE50@HE1PR04MB0908.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197)(101931422205132);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(3002001)(10201501046);
	SRVR:HE1PR04MB0908; BCL:0; PCL:0; RULEID:; SRVR:HE1PR04MB0908; 
x-forefront-prvs: 0798146F16
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(51914003)(377454003)(479174004)(24454002)(469094003)(164054003)(53484002)(13464003)(199003)(189002)(19580405001)(1096002)(33656002)(40100003)(50986999)(586003)(105586002)(102836003)(76176999)(66066001)(106116001)(6116002)(97736004)(106356001)(86362001)(87936001)(122556002)(1220700001)(74316001)(77096005)(3846002)(81156007)(2900100001)(5001770100001)(2950100001)(76576001)(5002640100001)(92566002)(19580395003)(2201001)(2501003)(5890100001)(11100500001)(189998001)(5004730100002)(10400500002)(5008740100001)(5001960100002)(54356999)(101416001)(5003600100002)(7059030);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR04MB0908;
	H:DBXPR04MB416.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2015 11:35:03.8675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB0908
Cc: Nicolae Manescu <nicu.manescu@nxp.com>
Subject: Re: using Hob to run images on a custom simulator, other than qemu
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
X-List-Received-Date: Tue, 22 Dec 2015 11:50:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bel=E9n,
Thanks for the answer. Is there a set of tests that would ensure there are =
no regressions? Where can it be found?

Thanks,
Mirela

-----Original Message-----
From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]=20
Sent: Monday, December 21, 2015 1:26 PM
To: Mirela Rabulea <Mirela.Rabulea@freescale.com>; yocto@yoctoproject.org; =
poky@yoctoproject.org
Cc: nicolae.manescu@nxp.com
Subject: Re: [yocto] using Hob to run images on a custom simulator, other t=
han qemu



On 18/12/2015 16:05, "yocto-bounces@yoctoproject.org on behalf of Mirela Ra=
bulea" <yocto-bounces@yoctoproject.org on behalf of Mirela.Rabulea@freescal=
e.com> wrote:

>
>
>Hello yocto world
>J
>
>=20
>
>This is my first message on any yocto list, I=B9m not sure which list to=20
>address, so I choose the ones which seemed the most generic and suited=20
>to my purpose. Please redirect me if a more specific list is better =20
>suited to ask this question.
>
>=20
>
>The problem I see at present is: there is one single button in Hob,=20
>=B3Run Image=B2, which is active only for qemu images, and it is triggerin=
g=20
>the execution of the =B3poky\scripts\runqemu=B2 script. Please scroll down=
 =20
>to the picture at end of this email to see what I=B9m talking about.
>
>=20
>
>The question I want to ask is if it would be acceptable to add more=20
>buttons to the =B3Image details=B2 dialog (or a new dialog to pop-up when=
=20
>=B3Run Image=B2 is clicked), in order to allow the customization of the =20
>simulator to be launched, basically to specify the location & command=20
>line of such custom simulator. Who may advise in this matter? I am=20
>willing to contribute with changes.

Hi Mirela,

I have asked a few people about this, because Hob is pretty much deprecated=
 at this point (it's being replaced by a web interface called Toaster). The=
y replied they would be willing to merge changes to Hob, as long as they ca=
n be sure they won't cause any regressions.

I hope this helps.

Cheers

Bel=E9n

>
>=20
>
>The changes I anticipate would be necessary are:
>
>1.     =20
>Changes in the GUI, somewhere in the python scripts from=20
>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,=20
>maybe in builder.py
>
>2.     =20
>Be more permissive with the types of images that are allowed to run.
>Currently, there are these restrictions related to the name and=20
>extension of the image in =B3poky\meta\classes\ image_types.bbclass=B2,=20
>these need to be extended/customized:
>
>RUNNABLE_IMAGE_TYPES ?=3D "ext2 ext3"
>
>RUNNABLE_MACHINE_PATTERNS ?=3D "qemu"
>
>
>=20
>
>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, see=
=20
>attached picture, note that the highlighted =B3Run Image=B2 button shows u=
p=20
>only for qemu images.
>=20
>
>Regards,
>
>Mirela
>
>=20
>
>


