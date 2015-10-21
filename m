Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 932B1E009C3; Wed, 21 Oct 2015 02:02:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.134 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 885 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Oct 2015 02:02:22 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0134.outbound.protection.outlook.com [157.56.110.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0439EE008AE
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 02:02:22 -0700 (PDT)
Received: from BN3PR03MB1367.namprd03.prod.outlook.com (10.163.34.153) by
	BN3PR03MB1368.namprd03.prod.outlook.com (10.163.34.154) with Microsoft
	SMTP Server (TLS) id 15.1.300.14; Wed, 21 Oct 2015 08:47:35 +0000
Received: from BN3PR03MB1367.namprd03.prod.outlook.com ([10.163.34.153]) by
	BN3PR03MB1367.namprd03.prod.outlook.com ([10.163.34.153]) with mapi id
	15.01.0300.010; Wed, 21 Oct 2015 08:47:36 +0000
From: Luo Zhenhua <zhenhua.luo@freescale.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] multiple yocto-kernel-cache mirrors support in
	linux-yocto style recipe
Thread-Index: AdELNg4rKpiINEBpRpWudZIBQwyziQADwc6AACYARlA=
Date: Wed, 21 Oct 2015 08:47:35 +0000
Message-ID: <BN3PR03MB136760EEC372788B8A751466E4380@BN3PR03MB1367.namprd03.prod.outlook.com>
References: <BN3PR03MB1367AA0561777CD38E796C40E4390@BN3PR03MB1367.namprd03.prod.outlook.com>
	<5626520F.1070303@windriver.com>
In-Reply-To: <5626520F.1070303@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@freescale.com; 
x-originating-ip: [199.59.230.102]
x-microsoft-exchange-diagnostics: 1; BN3PR03MB1368;
	5:jBj5D4cV5N57jpaw702koWkpxpZ/3hQrNXMO9RJawuuhJQj9UQ11LPzEl8i6mfBh0bkvSFT8RXee247AgwAyuxtz8ZM2CVK/pK78wEnHmtrC6+Ueiiftc1gyX7Z1hrb2iYLjUsbt5IlXVTJ8WIoB5A==;
	24:UnSJuBBTTHOXdjZC5PODLECn2Oy1byN/a5LV5keBQyEvxFl7uyAVuoZ6ffRwRtH3W3C8wRiyMsyI2TvVEyUM9vupI+SgHjF+sbOS6q82xrg=;
	20:NVFNEAkjy86vjJLRuhSqIdftQd6O7sQn/X+isWMT8R4B2RXJLqXq+8Dx1NfFB7U/TADbNVOSHlsX2fdbw+F5Bg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR03MB1368;
x-microsoft-antispam-prvs: <BN3PR03MB1368EA2CEC49A03D13B6D0E5E4380@BN3PR03MB1368.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(101931422205132);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(3002001)(102115025);
	SRVR:BN3PR03MB1368; BCL:0; PCL:0; RULEID:; SRVR:BN3PR03MB1368; 
x-forefront-prvs: 073631BD3D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(13464003)(164054003)(24454002)(377454003)(189002)(377424004)(50986999)(107886002)(33656002)(2950100001)(2900100001)(5001960100002)(76176999)(76576001)(77096005)(54356999)(5007970100001)(2501003)(46102003)(86362001)(101416001)(87936001)(92566002)(5003600100002)(5004730100002)(64706001)(66066001)(19580395003)(19580405001)(230783001)(97736004)(10400500002)(5001770100001)(5001920100001)(102836002)(81156007)(5002640100001)(189998001)(5008740100001)(74316001)(105586002)(99286002)(40100003)(106356001)(122556002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR03MB1368;
	H:BN3PR03MB1367.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: freescale.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2015 08:47:35.9409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB1368
Subject: Re: multiple yocto-kernel-cache mirrors support in linux-yocto style recipe
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
X-List-Received-Date: Wed, 21 Oct 2015 09:02:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Bruce.=20

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Tuesday, October 20, 2015 10:39 PM
> To: Luo Zhenhua-B19537 <zhenhua.luo@freescale.com>;
> yocto@yoctoproject.org
> Subject: Re: [yocto] multiple yocto-kernel-cache mirrors support in linux=
-yocto
> style recipe
>=20
> On 15-10-20 09:01 AM, Luo Zhenhua wrote:
> > Hi,
> >
> > I created a bbappend for linux-yocto_4.1.bb to use our own kernel
> > source git url, a yocto-kernel-cache git tree is created to manage the
> > distro specific kernel fragments, I want to use both Yocto
> > yocto-kernel-cache and our own yocto-kernel-cache git, can this
> > multiple yocto-kernel-cache mirrors be supported by linux-yocto style
> > bb file? If no, what's the best method to handle such multiple kernel
> fragments mirrors case?
>=20
> Just add them into the SRC_URI, with their own name, destination and type=
 of
> kmeta (just like the yocto one).
>=20
> The system will pick them up as meta data sources and allow them to be us=
ed.
>=20
> Cheers,
>=20
> Bruce
>=20
> >
> > Best Regards,
> >
> > Zhenhua
> >
> >
> >


