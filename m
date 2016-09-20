Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97600E00B95; Tue, 20 Sep 2016 10:11:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.40 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0040.outbound.protection.outlook.com [104.47.2.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14C8E00B74
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 10:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=x4qwvmDixpTm2jPVzeB7hBwP11tNhGtNJ6+52DbLBjc=;
	b=wPpuiRhvxtwNqbLmZ/NGJQGI2lNslyfkB71MpjgCXwvd5neBjO5GERxK5vVR2l/AfKNc66WH7Zwyrb6Ecow5DWR1ySR2f1fq2mBaK5tI86nunLeYzAEqO1JElhLFaCBA02HzWlAMfg1/4SNqIQwlRVnLWMm6S6yaiqr6duJWne8=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2629.eurprd04.prod.outlook.com (10.169.225.138) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.639.2;
	Tue, 20 Sep 2016 14:39:04 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0639.005; Tue, 20 Sep 2016 14:39:04 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Trevor Woerner <twoerner@gmail.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Cortex-M4 build support
Thread-Index: AdIKb7GAmo83mHHiRt+SgpS1CJ5BJQAN/xcAAILtPRAAE7yhAAA4mBoAAAW6IIAAZEhRgADv8zOQ
Date: Tue, 20 Sep 2016 14:39:04 +0000
Message-ID: <DB6PR0401MB2630746035CC5851C1B64BE6EEF70@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
	<DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
	<140dc7c6-d500-11a2-026f-54bdc5a7dc0c@reliableembeddedsystems.com>
	<88AA93DF-A9F2-4C96-A2BD-8B8C781F6172@gmail.com>
	<20160915200713.GA19012@openSUSE-i7.site>
In-Reply-To: <20160915200713.GA19012@openSUSE-i7.site>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [123.151.195.53]
x-ms-office365-filtering-correlation-id: 840f1c39-60f2-43ae-be88-08d3e163dec5
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2629;
	6:+ic1ku8j0PHV8SuyZsQNfFqYcQ9X+/8bjno/9FNEi9bneQjR9Sg/R/JgrywJUDKIsEldQr2+3zhs38OoKGY3u4rm2d3PbPpVRNZW4W3ihnMT1D8wRNK7f0MBWRU9qbgpYjHOYZ9sK7Xl75Z8JYdwGU4RPOjhTlalVCT9EtnE6cp8JgkVqKfs/0ZWeuzGyDYDIZNqVB/9o8kKvXr8F1qlPF8tvGzGZxPiRq2PPF1H701x7VMKzW+hJQIXrPAMQgxsGPsIyToSJ1OwsrWNyjNxUOkkfO/0f3IwOXUhg6d4K9dHpXuutAN8k2CGk8b7mGZSeUHorsJBJl7rH+zUr+xbaQ==;
	5:vYZvQ/1SxZv9aN8RaCyWJE9kEBVVQuM/4s3w89Ox96zJ7LVL8nYV8ChhmVsKPdN7SC0bWR0d8nJIuxYIPFd4ERLpXXodArHDyEXphjzuhlwMIr+424n9gh21nd1god2fHwPW2c/mhbQSTjfBya5RUQ==;
	24:8FHkRCKV+jJwy8UXKqO6KtsezSVS0lonYwO+db9OgwEpk7QhlGTTcSXFSahDuiBRV3pq60COZphbiuPRZM/EVkyXIDoL2OmOUqH26RUCKNc=;
	7:WPLMDSx1bGiL48K5W+w8b8RWLQFDEyJx5cIJP7pS2AGAHr+nrDUrfa2pjvHZOhW3Z4lS0AD4zClEbc/8HeUAZhtTYv+bVVRF9vcrCSlACqT4gjH6xd1vHe5539c01PPMPXKmCPtZVWjtcF+bvuIwfVia+Ac24sOH74Oh0mEKjtf+9VBPS3Z0ilcsjxcEx4gMtYTujy9HOxV2miJTXlLOvA/hsDWQobMFniyCwRr6PICm4Ejl8plDxmjcRawsU/DYP9YUeoiNdUe72KTKAJOdeAyB2+XqhTmcdA8Yse2SYBvpdiWKuo8R/kdOQEVVlzSh
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2629;
x-microsoft-antispam-prvs: <DB6PR0401MB262991E0B915B9F64F2D3481EEF70@DB6PR0401MB2629.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0401MB2629; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2629; 
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(24454002)(377424004)(13464003)(377454003)(199003)(189998001)(1720100001)(19580405001)(5001770100001)(97736004)(92566002)(68736007)(7696004)(77096005)(2950100001)(2900100001)(15975445007)(106356001)(105586002)(87936001)(122556002)(19580395003)(93886004)(5660300001)(33656002)(8676002)(86362001)(54356999)(50986999)(76176999)(81166006)(81156014)(586003)(3846002)(305945005)(74316002)(102836003)(8936002)(101416001)(6116002)(76576001)(66066001)(5002640100001)(3660700001)(2906002)(9686002)(11100500001)(10400500002)(7736002)(7846002)(3280700002)(4326007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2629;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2016 14:39:04.2773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2629
Cc: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Cortex-M4 build support
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
X-List-Received-Date: Tue, 20 Sep 2016 17:11:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you so much for your suggestion, Trevor.=20


Best Regards,=20

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Trevor Woerner
> Sent: Friday, September 16, 2016 4:07 AM
> To: Khem Raj <raj.khem@gmail.com>
> Cc: robert.berger@gmane <gmane@reliableembeddedsystems.com>;
> yocto@yoctoproject.org; yocto-
> EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org <public-yocto-
> EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
> Subject: Re: [yocto] Cortex-M4 build support
>=20
> On Tue 2016-09-13 @ 01:15:49 PM, Khem Raj wrote:
> >
> > > On Sep 13, 2016, at 10:31 AM, robert.berger@gmane
> <gmane@reliableembeddedsystems.com> wrote:
> > >
> > > Hi,
> > >
> > > Shouldn't it be possible to build a bare-metal Cortex-M4 compiler wit=
h the YP
> and build a small RTOS like FreeRTOS with this compiler?
> > >
> >
> > yes it should be possible. you can also look into meta-ti where I
> > think they try to have their DSP toolchain build some code using OE
> > recipe model
>=20
> Perhaps other things to consider (I'm not entirely sure if these apply, b=
ut maybe
> worth investigating?)
>=20
> The ROS project has a meta layer:
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-ros/
>=20
> If your CortexM board has enough RAM (e.g. http://www.emcraft.com/) you
> can run (a version of) Linux (uClinux) right on your CortexM target:
> https://github.com/EmcraftSystems/linux-emcraft
>=20
> The Emcraft website appears to provide Linux support for NXP-based Cortex=
M
> boards too: http://www.emcraft.com/products/456
> http://www.emcraft.com/products/88
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

