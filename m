Return-Path: <shubham.kumar4@wipro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B87CE00C8F; Wed,  3 Feb 2016 22:43:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [203.91.208.14 listed in list.dnswl.org]
Received: from wipro-chn-out01.wipro.com (wipro-chn-out01.wipro.com
	[203.91.208.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42ADCE00C88
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 22:43:39 -0800 (PST)
X-AuditID: cb5bdd88-f79ee6d000001534-ae-56b2f3196085
X-Invalid-Recipients: 
Received: from BLR-OUT-EDG02.wipro.com ( [203.91.201.88])
	by wipro-chn-out01.wipro.com (Symantec Mail Security) with SMTP id
	70.F5.05428.913F2B65; Thu,  4 Feb 2016 12:13:38 +0530 (IST)
Received: from BLR-EC-MBX3.wipro.com (10.208.51.113) by
	BLR-OUT-EDG02.wipro.com (203.91.193.32) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Thu, 4 Feb 2016 12:13:21 +0530
Received: from wipro-blr-tls01.wipro.com (203.91.193.39) by
	BLR-EC-MBX3.wipro.com (10.208.51.113) with Microsoft SMTP Server (TLS)
	id 14.3.266.1; Thu, 4 Feb 2016 12:13:23 +0530
Received: from APC01-HK2-obe.outbound.protection.outlook.com (65.55.88.208) by
	wipro-blr-tls01.wipro.com (203.91.193.39) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Thu, 4 Feb 2016 12:13:21 +0530
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) by
	SIXPR03MB0671.apcprd03.prod.outlook.com (10.160.238.141) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Thu, 4 Feb 2016 06:43:18 +0000
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) by
	SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) with mapi id
	15.01.0396.020; Thu, 4 Feb 2016 06:43:18 +0000
From: <shubham.kumar4@wipro.com>
To: <yocto@yoctoproject.org>, <maciej.borzecki@open-rnd.pl>
Thread-Topic: [yocto] [meta-intel]:Quark not accepting "root" username at
	login prompt
Thread-Index: AQHRXne6BvZjGpKKWUqs+vIN6ugpkp8aVidlgAARJ4CAAAEaD4AAK4sAgADU8W0=
Date: Thu, 4 Feb 2016 06:43:18 +0000
Message-ID: <SIXPR03MB06725C3D253D8E985C10B753D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>,
	<1454510985.3990.8.camel@open-rnd.pl>
	<SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>,
	<1036585921.17607.1454520572537.JavaMail.open-xchange@ox13.netart.com.pl>
In-Reply-To: <1036585921.17607.1454520572537.JavaMail.open-xchange@ox13.netart.com.pl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=wipro.com; 
x-originating-ip: [192.55.79.168]
x-microsoft-exchange-diagnostics: 1; SIXPR03MB0671;
	5:axZLFb8JrEXgAtY3cB4vXjYfmWYvmPeFOrVrh8tqznmsXtUoEiMtCHco14dURY714/1HcFk1ku0E2sPFIbYdr5PtLvn/V2USXMX+ZwgahCB6n6anAsPuWxSu2LZyeeU4yrCHc2N2ARbxAd5V/lI0SQ==;
	24:EcXWB99U9rnSNT7d9dufaZnOMUkp9LYbSdW+DgvP9sbnrFCLacB8PwUXU1yjSFvDhqv0TNS34EkHxcPcu+/pdm63jHlbea0LG2k+Ew1bhgY=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR03MB0671;
x-ms-office365-filtering-correlation-id: d10fde4a-1a79-480a-5a7b-08d32d2e77b0
x-microsoft-antispam-prvs: <SIXPR03MB067100048E477A6D3E1DE922D4D10@SIXPR03MB0671.apcprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(62627912741753);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(61425038)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(61426038)(61427038);
	SRVR:SIXPR03MB0671; BCL:0; PCL:0; RULEID:; SRVR:SIXPR03MB0671; 
x-forefront-prvs: 084285FC5C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(164054003)(377454003)(102836003)(3846002)(10400500002)(74316001)(1220700001)(15974865002)(54356999)(93886004)(6116002)(2501003)(2950100001)(3660700001)(5890100001)(40100003)(3900700001)(5004730100002)(77096005)(76576001)(106116001)(5002640100001)(5008740100001)(586003)(33656002)(2906002)(92566002)(122556002)(5003600100002)(11100500001)(5001960100002)(107886002)(551544002)(66066001)(50986999)(2900100001)(3280700002)(5001770100001)(1096002)(189998001)(19580405001)(19580395003)(86362001)(76176999)(87936001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SIXPR03MB0671;
	H:SIXPR03MB0672.apcprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2016 06:43:18.7288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 258ac4e4-146a-411e-9dc8-79a9e12fd6da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR03MB0671
X-OrganizationHeadersPreserved: SIXPR03MB0671.apcprd03.prod.outlook.com
X-CrossPremisesHeadersPromoted: BLR-HES-EDG02.wipro.com
X-CrossPremisesHeadersFiltered: BLR-HES-EDG02.wipro.com
X-CFilter-Loop: Reflected
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Thu, 04 Feb 2016 06:43:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi Maciej,


I did "bitbake -r core-image-sato" and redirected the output to a file. Fro=
m that I found that IMAGE_FEATURES is assigned in image.bblass. A few of th=
e contents in the file were as follows:-

# IMAGE_FEATURES may contain any available package group
IMAGE_FEATURES ?=3D ""
IMAGE_FEATURES[type] =3D "list"
IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs empty-root-p=
assword allow-empty-password post-install-logging"

I thought of modifying the last entry and made it as follows:-

IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs"

Then I rebuilt the images using "bitbake core-image-sato" and then wic tool=
.But still same issue persists.The Galileo is booting , but not accepting "=
root"  as username and again asking for password.


.
.
.
I also checked for IMAGE_ROOTFS in "image.bbclass" file and got the path to=
 the rootfs as follows:-
IMAGE_ROOTFS=3D"/home/yogesh/myYocto/poky/final_build/tmp/work/intel_quark-=
poky-linux/core-image-sato/1.0-r0/rootfs"

In etc/shadow, proper entry is present with ----  root:*:16834:0:99999:7:::

Thanks for your co-operation, Maciej. Looking forward to reaolving this iss=
ue asap.


Thanks,
Shubham_K



________________________________________
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Sent: Wednesday, February 3, 2016 10:59 PM
To: Shubham Kumar (Product Engineering Service); yocto@yoctoproject.org
Subject: Re: [yocto] [meta-intel]:Quark not accepting "root" username at lo=
gin prompt

> Dnia 3 luty 2016 o 15:55 shubham.kumar4@wipro.com napisa=B3(a):
>
>
> In "final_build/conf/local.conf" , EXTRA_IMAGE_FEATURES =3D "debug-tweaks=
".
>
> So, yes "debug-tweaks" is present.
>

Try running bitbake -e <yourimagename> and check the value of
IMAGE_FEATURES (and where it gets assigned).

You may also want to check if /etc/shadow in the rootfs contains proper
entry. It should look like this:

       root:*:16834:0:99999:7:::

When inspecting the output of bitbake -e, look for IMAGE_ROOTFS, this
will point to the location of the rootfs for your image.

--
Maciej Borz=EAcki
Senior Software Engineer at Open-RnD Sp. z o.o.
www.open-rnd.pl, Facebook, Twitter

Niniejsza wiadomo=B6=E6 wraz z za=B3=B1cznikami mo=BFe zawiera=E6 chronione=
 prawem
lub poufne informacje i zosta=B3a wys=B3ana wy=B3=B1cznie do wiadomo=B6ci i
u=BFytku os=F3b, do kt=F3rych zosta=B3a zaadresowana. Je=B6li wiadomo=B6=E6=
 zosta=B3a
otrzymana przypadkowo zabrania si=EA jej kopiowania lub rozsy=B3ania do
os=F3b trzecich. W takim przypadku uprasza si=EA o natychmiastowe
zniszczenie wiadomo=B6ci oraz poinformowanie nadawcy o zaistnia=B3ej
sytuacji za pomoc=B1 wiadomo=B6ci zwrotnej. Dzi=EAkujemy.

This message, including any attachments hereto, may contain privileged
or confidential information and is sent solely for the attention and
use of the intended addressee(s). If you are not an intended
addressee, you may neither use this message nor copy or deliver it to
anyone. In such case, you should immediately destroy this message and
kindly notify the sender by reply email. Thank you.
The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should not disseminate, distribute or copy t=
his e-mail. Please notify the sender immediately and destroy all copies of =
this message and any attachments. WARNING: Computer viruses can be transmit=
ted via email. The recipient should check this email and any attachments fo=
r the presence of viruses. The company accepts no liability for any damage =
caused by any virus transmitted by this email. www.wipro.com

