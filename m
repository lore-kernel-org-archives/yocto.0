Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED28AE00C5F; Wed, 16 Jan 2019 12:07:30 -0800 (PST)
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
	*      [40.107.130.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 16315 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Jan 2019 12:07:28 PST
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-eopbgr1300125.outbound.protection.outlook.com [40.107.130.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A594E00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 12:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=TzMOiW09l+XapwKOEG+JDLAKBbEk8+hDsWq0SjWpwKI=;
	b=arvMNmNkFfKnog9w00xOITl7cGPoxPMODIRggKPb30Ah2c//4E0+G9fAbkDtJgiLOJLdCBoOtFZRAWQ9bt/oM6taRLcNekabqS1zpLQPrWdAX2pRRKvavyFR7ppQ/oY/ZY9WzGgaTV+Gajmk6lHZZ761I8LYhgm+KkXzosDbX3I=
Received: from TY2PR01MB2025.jpnprd01.prod.outlook.com (52.133.182.143) by
	TY2PR01MB3723.jpnprd01.prod.outlook.com (20.178.132.204) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1516.18; Wed, 16 Jan 2019 15:35:29 +0000
Received: from TY2PR01MB2025.jpnprd01.prod.outlook.com
	([fe80::94a3:4e44:302b:8ade]) by
	TY2PR01MB2025.jpnprd01.prod.outlook.com
	([fe80::94a3:4e44:302b:8ade%3]) with mapi id 15.20.1516.019;
	Wed, 16 Jan 2019 15:35:29 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Thread-Topic: [yocto] How to share buildhistory?
Thread-Index: AQHUrbB7hGzPZ2HGx06fJjGUmVpI0KWyBVFg
Date: Wed, 16 Jan 2019 15:35:29 +0000
Message-ID: <TY2PR01MB20257B8B6D324D3C9A1DF5D992820@TY2PR01MB2025.jpnprd01.prod.outlook.com>
References: <1977383e-cd49-c7a4-0c4f-4a73cb2f701e@faresoftware.it>
In-Reply-To: <1977383e-cd49-c7a4-0c4f-4a73cb2f701e@faresoftware.it>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TY2PR01MB3723;
	20:h8VecoMqg4Hk0ahl8ocg/vk2FK3Da+3p5PswQUYKnjbz9MEIeBVvV9CJ7UXHpTXJ0pHdYbtHlOrxtzRk6OStsbmvBjNI9L1TZbqNu32p0VfSnJoM5oKTz/b2nfARJ9zdE/jgHwFQkXornpBkwuovJroL5Ntv6BvmwjbZI1Q+pTE=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 06255432-b975-4565-16be-08d67bc83e8c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:TY2PR01MB3723; 
x-ms-traffictypediagnostic: TY2PR01MB3723:
x-microsoft-antispam-prvs: <TY2PR01MB372312B6969615A05772AD0892820@TY2PR01MB3723.jpnprd01.prod.outlook.com>
x-forefront-prvs: 091949432C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39860400002)(346002)(136003)(366004)(376002)(13464003)(199004)(189003)(33656002)(486006)(74316002)(6436002)(476003)(102836004)(11346002)(6506007)(66066001)(81166006)(81156014)(7736002)(305945005)(25786009)(966005)(8676002)(6246003)(446003)(26005)(53546011)(5660300001)(6916009)(4326008)(14454004)(478600001)(7696005)(53936002)(186003)(8936002)(9686003)(6306002)(76176011)(229853002)(99286004)(86362001)(68736007)(105586002)(256004)(2906002)(71190400001)(316002)(97736004)(71200400001)(3846002)(6116002)(106356001)(44832011)(55016002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TY2PR01MB3723;
	H:TY2PR01MB2025.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eknLp41KPx8L19ARdeWFo4fa9WxlNmqR2DZllyDzlL4ZJ9EushzfajZopi29Rn3b3v/oulPggHYZ6kuOsd691DDFnAigFBmzn/QV28bJmiJKi2t0WB/gXlszfKueveiD9impdJcinHlGzCMr0WlEo2caP1wpxL6Xy6q4+4OaeziKGyACTaqJX0NUh6wv+FeaLd3RqNFX8ORtXr8+mjcN2xlWJo51Y1rcQPPt+mgI5pOKBDynVSD4GoQwKPBBVYM2hba8DVej5ZUvmLmn6uEijjV1wvsxAzdgNfhuROAVPg3y+vSrbV5CRHmCRof7wrlgilR9bRTpmnEtb0umuMmXIeiXk3rrY6Xby2icy4SoGqLqupDmjMDEIEA7wLtDtyENSNYUqfQmOQfjcRp81MbLTJlobk70FAqWxaAQI3TIoKs=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06255432-b975-4565-16be-08d67bc83e8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2019 15:35:29.0956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB3723
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to share buildhistory?
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
X-List-Received-Date: Wed, 16 Jan 2019 20:07:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On =
Behalf
> Of Mauro Ziliani
> Sent: 16 January 2019 15:31
> To: yocto@yoctoproject.org
> Subject: [yocto] How to share buildhistory?

[snip]

>=20
> Is it possible to do that?
>=20
>=20
> Often I work with PC1 placed in my office, sometimes I need to keep on
> the development with PC2, placed in my customer's office.
>=20
> But I need to continue on PC2 where I stopped with PC1
>=20

It is not quite what you describe but you can use SSTATE_MIRRORS [1] to use=
 cached data
objects on the other PC. So if you pointed the mirror on PC2 at PC1, PC2 wo=
uld check
the cache on PC1 before building it locally.

[1] https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-SS=
TATE_MIRRORS

Regards

Steve

