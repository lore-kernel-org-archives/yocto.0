Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3545FE00EF4; Mon, 12 Sep 2016 00:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.2.55 listed in list.dnswl.org]
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0055.outbound.protection.outlook.com [104.47.2.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3CCE00EF0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 00:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=y8XdfA1M1N86eTk0w0kQxHNFK1nBRoQDt9Y3h8qrKTg=;
	b=Ih6QmVyYph1BEz09ikj3h4Z8wg/q5Z19FvNEMYUFw4GKh4dYeN3Ns36JMfy29VbWCdwAafM7YvUrm7JCqOZVtzybq8J2Bbx7nr15wzI/dSGVgxKUTx7LHqD7wZusgb19exd6ccNyrMP+osnzuZxjCtOXVpyR+gKX8jJqWTvLSY0=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2631.eurprd04.prod.outlook.com (10.169.225.140) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.609.3; Mon, 12 Sep 2016 05:07:42 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0609.018; Mon, 12 Sep 2016 05:07:42 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] Cortex-M4 build support
Thread-Index: AdIKb7GAmo83mHHiRt+SgpS1CJ5BJQAN/xcAAILtPRA=
Date: Mon, 12 Sep 2016 05:07:42 +0000
Message-ID: <DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
In-Reply-To: <1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
	header.d=none; windriver.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: ae67364a-edb5-45c0-a493-08d3dacab99a
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2631;
	6:uLYuDnGIul9mcvY3WbRW+/l539UEDYKIwZYXRgrntOl6o85gLZfpUm+QdmsjA6v07249wbX5KMw5uodbxnMfU1SahW6NyDKjqoTbpQJR5xAcgQAbSzVLweAMKsHAKR7MpJuOdmyT0Tre4iZ9gcW7qM8xEkHGXYkOZTItBtuU7nc/piae7lBuTubfirL16HJUjLnJjNSQtsu/RKt5yUpxXLNDGwrRgjdUUD/VuE5V08wp7eMsFWyQorKecEpNF2pPKV5so4yUuDzHo7xk40A3/qchzuidAxUn9i6kdLuQ0Z/FlLNvUHg9ffWRoZq12hIGkSsurAgyQHhMo4ZVKqMJYQ==;
	5:ToyXNQvhI3swxoJkolVenHvvOQwdwXyzEfhFqR+KWLtDyDBui71lnUtIf227tFct6WoqX8baFvVKKUVnU5lJLpsxm1PZ4LH+gfKDHP4/2JA6hINL8MAUyyaK77cV/zBcrAE73lKwfmpKKP2fbDh5YQ==;
	24:qIFjPkhkmOUgBR2h/DTxOWRcYJcsNSO+ZW6U7/vHSMNwqWEA2W2t2wEXKd09Vl7jyJwED6+VgB1Q/eOIDXZzIwC95ehF5UJBGxcR7Lpl2YA=;
	7:nxy6BSEdpTsCaP3QbX4oWYOmHwX60gqYAi19BDgjSvHcRtHD8KOGsF7p3ttP8rpTdG1qrY5CShn3gTPvwqYAY6Afk0qyWjwAcOZeOLiaRdpMHdwRYf8Cbi2Pv2aSTjG0BQIVkjDm0fEQsnxpzkKJvxd0QuRF5wx7C4Av7udUuHnyBu0XeC+ffeas8zkB/y3R1asc0HCExUdI3l6T0vFX98XUhHYlpAQ/enziONHAB2yqcnxLTP3ci9OhhBk40c1f
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2631;
x-microsoft-antispam-prvs: <DB6PR0401MB26314F6C6DBFF8828C03FE82EEFF0@DB6PR0401MB2631.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0401MB2631; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2631; 
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(377454003)(53754006)(24454002)(13464003)(33656002)(4326007)(3846002)(74316002)(6116002)(110136002)(189998001)(102836003)(586003)(9686002)(5002640100001)(19580395003)(3280700002)(54356999)(76176999)(10400500002)(76576001)(86362001)(19580405001)(50986999)(4001520100001)(5660300001)(7696004)(87386001)(3660700001)(305945005)(2950100001)(66066001)(7736002)(7846002)(11100500001)(2900100001)(87936001)(122556002)(77096005)(8936002)(8676002)(2906002)(81166006)(92566002)(5001760100003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2631;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2016 05:07:42.0603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2631
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 12 Sep 2016 07:42:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Mark,=20

Thanks a lot for your comments.=20

Is there plan to support non-MMU targets in Yocto?=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: Mark Hatle [mailto:mark.hatle@windriver.com]
> Sent: Friday, September 09, 2016 10:37 PM
> To: Zhenhua Luo <zhenhua.luo@nxp.com>; 'yocto@yoctoproject.org'
> <yocto@yoctoproject.org>
> Subject: Re: [yocto] Cortex-M4 build support
>=20
> On 9/9/16 2:58 AM, Zhenhua Luo wrote:
> > Hi all,
> >
> >
> >
> > Can Yocto support image build for Cortex-M4 targets? If no, does
> > somebody know if there is some distro/packaging tool which can support
> Cortex-M4?
> >
>=20
> The Cortex-M4 does not have an MMU.  The Yocto Project system, currently,
> only supports MMU based architectures.
>=20
> If Linux is a requirement for you, you will need to find a non-MMU based
> uClinux system to work with.
>=20
> Otherwise there are a number of other embedded OSs for MMU-less targets
> that may be more appropriate to the memory and system constraints of the =
M
> series CPUs.
>=20
> --Mark
>=20
> >
> >
> >
> > Best Regards,
> >
> >
> >
> > Zhenhua
> >
> >
> >


