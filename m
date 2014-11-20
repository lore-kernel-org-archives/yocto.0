Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE0F9E0087D; Wed, 19 Nov 2014 23:59:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.169.139 listed in list.dnswl.org]
X-Greylist: delayed 79239 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Nov 2014 23:58:59 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0139.outbound.protection.outlook.com [65.55.169.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE468E007B9
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 23:58:59 -0800 (PST)
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) with
	Microsoft
	SMTP Server (TLS) id 15.1.16.15; Thu, 20 Nov 2014 07:58:56 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.01.0016.006; Thu, 20 Nov 2014 07:58:56 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] How to build the uclibc toolchain by Yocto
Thread-Index: AdAD3MIh8jj8XWfCRVeF5TXkDkOnfwAC3U+AACvkWsA=
Date: Thu, 20 Nov 2014 07:58:56 +0000
Message-ID: <0dbf18f091ab46968aeedc2b48871c14@CY1PR0301MB0715.namprd03.prod.outlook.com>
References: <bf6dc5f38cdd4e6a987eafbaa5473656@CY1PR0301MB0715.namprd03.prod.outlook.com>
	<3081951.VfOphKHqS7@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3081951.VfOphKHqS7@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.211]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0715;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB0715; 
x-forefront-prvs: 0401647B7F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(377454003)(24454002)(51704005)(13464003)(199003)(101416001)(20776003)(110136001)(64706001)(76576001)(76176999)(50986999)(54356999)(31966008)(97736003)(86362001)(19580405001)(19580395003)(92566001)(77156002)(77096003)(62966003)(122556002)(40100003)(66066001)(99396003)(120916001)(87936001)(2656002)(33646002)(106356001)(4396001)(107046002)(108616004)(105586002)(74316001)(95666004)(99286002)(21056001)(46102003)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB0715;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build the uclibc toolchain by Yocto
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
X-List-Received-Date: Thu, 20 Nov 2014 07:59:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks a lot, Paul.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Wednesday, November 19, 2014 7:02 PM
> To: Luo Zhenhua-B19537
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to build the uclibc toolchain by Yocto
>=20
> Hi Zhenhua,
>=20
> On Wednesday 19 November 2014 09:43:59 zhenhua.luo@freescale.com wrote:
> > The eglibc is used for meta-toolchain build in Yocto, may I know how
> > to build the uclibc meta-toolchain in Yocto?
>=20
> It should be as easy as setting TCLIBC =3D "uclibc" in your custom distro=
 config.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

