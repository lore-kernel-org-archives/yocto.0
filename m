Return-Path: <shubham.kumar4@wipro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20614E00C33; Wed,  3 Feb 2016 06:59:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [203.91.208.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wipro-chn-out01.wipro.com (wipro-chn-out01.wipro.com
	[203.91.208.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E04DE00948
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 06:59:41 -0800 (PST)
X-AuditID: cb5bdd88-f79ee6d000001534-d2-56b215db8695
X-Invalid-Recipients: 
Received: from CHN-OUT-EDG02.wipro.com ( [203.91.201.88])
	by wipro-chn-out01.wipro.com (Symantec Mail Security) with SMTP id
	B4.95.05428.BD512B65; Wed,  3 Feb 2016 20:29:40 +0530 (IST)
Received: from CHN-SNR-MBX-21.wipro.com (10.142.51.122) by
	CHN-OUT-EDG02.wipro.com (203.91.201.39) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Wed, 3 Feb 2016 20:28:12 +0530
Received: from wipro-blr-tls01.wipro.com (203.91.201.116) by
	CHN-SNR-MBX-21.wipro.com (10.142.51.122) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Wed, 3 Feb 2016 20:25:27 +0530
Received: from APC01-HK2-obe.outbound.protection.outlook.com (65.55.88.211) by
	wipro-blr-tls01.wipro.com (203.91.201.116) with Microsoft SMTP
	Server (TLS) id 15.0.1104.5; Wed, 3 Feb 2016 20:25:23 +0530
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) by
	SIXPR03MB0670.apcprd03.prod.outlook.com (10.160.238.140) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Wed, 3 Feb 2016 14:55:23 +0000
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) by
	SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) with mapi id
	15.01.0396.020; Wed, 3 Feb 2016 14:55:23 +0000
From: <shubham.kumar4@wipro.com>
To: <yocto@yoctoproject.org>, <maciej.borzecki@open-rnd.pl>
Thread-Topic: [yocto] [meta-intel]:Quark not accepting "root" username at
	login prompt
Thread-Index: AQHRXne6BvZjGpKKWUqs+vIN6ugpkp8aVidlgAARJ4CAAAEaDw==
Date: Wed, 3 Feb 2016 14:55:23 +0000
Message-ID: <SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>,
	<1454510985.3990.8.camel@open-rnd.pl>
In-Reply-To: <1454510985.3990.8.camel@open-rnd.pl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=wipro.com; 
x-originating-ip: [198.175.68.39]
x-microsoft-exchange-diagnostics: 1; SIXPR03MB0670;
	5:wHu9tzIk3/WGIsxW860MSTP47ACc6M/IPj0XhHNuPz++DaUCFQ5Jj1v9wzRyNDgazgZbnRu2DER03OPQmMpii7hLhhc0rUQzWTXN8k3ZNy3GBJPmngH64P7pDW1Ccg2lkiCEl4PA+fhlgwY6IJpVgw==;
	24:eQPNZlD1fbzOHQlNtk3Eg2ECXqI0c6q+TzhSPmZ3Iv7FG/O0lbUsOnCXhU5ka3RMfIRONelPikyZn3OiX8dGeFpP+MKCTVmlkP3xzuCkoKU=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR03MB0670;
x-ms-office365-filtering-correlation-id: 007e93af-803c-42ad-3668-08d32caa0b8a
x-microsoft-antispam-prvs: <SIXPR03MB067055AB5C08598CC3B7A646D4D00@SIXPR03MB0670.apcprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(62627912741753);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(61425038)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(61426038)(61427038);
	SRVR:SIXPR03MB0670; BCL:0; PCL:0; RULEID:; SRVR:SIXPR03MB0670; 
x-forefront-prvs: 08417837C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(377424004)(24454002)(164054003)(377454003)(53754006)(6116002)(102836003)(77096005)(76176999)(1096002)(1220700001)(5004730100002)(50986999)(10400500002)(54356999)(5008740100001)(5003600100002)(11100500001)(586003)(40100003)(66066001)(106116001)(86362001)(5002640100001)(33656002)(551544002)(87936001)(2900100001)(2501003)(19580405001)(19580395003)(122556002)(5890100001)(2950100001)(2906002)(5001960100002)(107886002)(74316001)(15974865002)(5001770100001)(92566002)(189998001)(3900700001)(76576001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SIXPR03MB0670;
	H:SIXPR03MB0672.apcprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2016 14:55:23.7947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 258ac4e4-146a-411e-9dc8-79a9e12fd6da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR03MB0670
X-OrganizationHeadersPreserved: SIXPR03MB0670.apcprd03.prod.outlook.com
X-CrossPremisesHeadersPromoted: CHN-HES-EDG03.wipro.com
X-CrossPremisesHeadersFiltered: CHN-HES-EDG03.wipro.com
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
X-List-Received-Date: Wed, 03 Feb 2016 14:59:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi Maciek,

In "final_build/conf/local.conf" , EXTRA_IMAGE_FEATURES =3D "debug-tweaks".

So, yes "debug-tweaks" is present.

Thanks,
Shubham_K

________________________________________
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
Sent: Wednesday, February 3, 2016 8:19 PM
To: Shubham Kumar (Product Engineering Service); yocto@yoctoproject.org
Subject: Re: [yocto] [meta-intel]:Quark not accepting "root" username at lo=
gin prompt

On =B6ro, 2016-02-03 at 14:00 +0000, shubham.kumar4@wipro.com wrote:
>
> Hi all,
>
> I would additionally like to mention that the same problem persists when =
trying to boot
> the Galileo with core-image-sato.
> The steps which I followed are as follows:-
> Inside the poky directory,
>
> 1.  source oe-init-build-env final_build/
> Now ,Inside the final_build/ directory
>
> 2. bitbake core-image-sato
>
> 3. wic create mkgalileodisk -e core-image-sato -o /<directory_path>/
>
> Now, in <directory_path>/build ,
>
> 4. sudo dd if=3Dmkgalileodisk-201602031847-mmcblk0.direct of=3D/dev/sdb
>
> Now when I tried to boot the Galileo with this SD card , it booted but at=
 the login
> prompt doesn't accept the "root". It says  "Login incorrect ".
>
> The observation is similar wit core-image-minimal as well.
>
> I'm definitely missing something. I would appreciate any help in this dir=
ection.
>
>
> Thanks,
> Shubham_K
>
> From: Shubham Kumar (Product Engineering Service)
> Sent: Wednesday, February 3, 2016 5:11 PM
> To: yocto@yoctoproject.org
> Subject: [meta-intel]:Quark not accepting "root" username at login prompt
>
> Hi all,
>
> I built a core-image-minimal with additions of a few packages like tools-=
sdk and tools-
> debug. With WIK tool and the kickstart file "mkgalileodisk", I created th=
e image. Then I
> dd'd the image to the SD card. The Galileo booted with the image, but it'=
s not accepting
> "root" as the username at the login terminal. It shows the message "Inval=
id username". I
> don't have any idea of why this happened. I even looked at the etc/passwd=
 file, but
> didn't get any idea.
> Please note that I have cloned the latest jethro meta-intel layer from th=
e Yocto git
> repository.
>
> Did I miss anything in the build process? Any help in this direction will=
 be
> appreciated.

Can you verify if debug-tweaks is present in IMAGE_FEATURES?

--
Maciej Borz=EAcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079

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
use of the intended addressee(s). If you are not an intended addressee,
you may neither use this message nor copy or deliver it to anyone. In
such case, you should immediately destroy this message and kindly notify
the sender by reply email. Thank you.



The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should not disseminate, distribute or copy t=
his e-mail. Please notify the sender immediately and destroy all copies of =
this message and any attachments. WARNING: Computer viruses can be transmit=
ted via email. The recipient should check this email and any attachments fo=
r the presence of viruses. The company accepts no liability for any damage =
caused by any virus transmitted by this email. www.wipro.com

