Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B7F8E00C45; Sun, 24 Feb 2019 10:03:31 -0800 (PST)
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
	*      [40.107.70.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 32540 seconds by postgrey-1.32 at yocto-www;
	Sun, 24 Feb 2019 10:03:30 PST
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700089.outbound.protection.outlook.com [40.107.70.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E98CE00A0C
	for <yocto@yoctoproject.org>; Sun, 24 Feb 2019 10:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Uyf2qIIP0mx2FCJQ6RErC/SkMMMgHtRcpFhRKz//0SY=;
	b=zElebs3jpzptGTLN5wG/sWnROD21xG67xmVgz7fiiI/c8m5D39zVfx0PYtCZOJmIzMVqtuQaoAqv74aooS6eKJNIO4aXPsFTTyGmq04eH6av7mv+iSxrVGiB8iCImKwQXnMRDcDQPo43ksw33r5eJNyb/Kg1jApoxpvzSnIQ1HQ=
Received: from BYAPR02MB6005.namprd02.prod.outlook.com (20.179.89.140) by
	BYAPR02MB4984.namprd02.prod.outlook.com (20.176.253.205) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1622.19; Fri, 22 Feb 2019 20:49:58 +0000
Received: from BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::618e:ed5f:30ab:ad8b]) by
	BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::618e:ed5f:30ab:ad8b%3]) with mapi id 15.20.1643.014;
	Fri, 22 Feb 2019 20:49:58 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: Stephen Lawrence <stephen.lawrence@renesas.com>, Hongxu Jia
	<hongxu.jia@windriver.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "mhalstead@linuxfoundation.org"
	<mhalstead@linuxfoundation.org>, "ross.burton@intel.com"
	<ross.burton@intel.com>, "raj.khem@gmail.com" <raj.khem@gmail.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Review request 0/13: Contribute meta-tensorflow to Yocto
Thread-Index: AQHUydnkAnlyzhtMkEaDg+zNYdI/gKXsCgyAgABAV0A=
Date: Fri, 22 Feb 2019 20:49:57 +0000
Message-ID: <BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecdc9425-c747-4b75-3df1-08d699074e7c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605104)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB4984; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4984:|BYAPR02MB4984:
x-ms-exchange-purlcount: 2
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; BYAPR02MB4984;
	23:8kjIIvVqcAHT9YSgHAz9ehi+6AxQ3xkF3H3Bpm1cq?=
	=?us-ascii?Q?XqgTK5+yxGZ5mQcS+YJQMBQP/wmDjwWRqunDUTvkh6iu7PiAzxeLwrLtUazu?=
	=?us-ascii?Q?ashd9/wmN7QTxndVCw/dNghopBMWYACsg+0calNLQoHw2FUFeCxryGNt+zy2?=
	=?us-ascii?Q?WqYcI5afoJbADPAoN4l+afCEGx6/0oyHFtLZTDIZTaofJExKbuntaiPH9QhR?=
	=?us-ascii?Q?3iWSpAw2IjEb/FmEPlRMCn25W5WnFK8p7SLPOiDzcKJh/hRoBrqs83L7oOQo?=
	=?us-ascii?Q?fr6uw/d+iXrKmeCdRVwtZuonTk6q26X8ogsS49i6pkTbercOhNcbDdjYU147?=
	=?us-ascii?Q?voSLeoB1MAdHyR+vsLQ0RHjcJxwuSnBxxlLhiRumg1djEcwNIf6vWSssuZAT?=
	=?us-ascii?Q?Q2J3e5FBkhIunCAKfAI2GBjhFcaqnCR2uRgL5DeeCBb1i2rbAREYWGXpo6p4?=
	=?us-ascii?Q?gt9x1LO02VSJ8eksuAN2+v3EjXos5g3D+Hk1yhhqTmYft/fdRGWacBcfl79B?=
	=?us-ascii?Q?vmmtWLLndecByoCS+8XfYc7+xytT6mkEyZQbPfKekKz9Z/AOUo0Q83lmIPm9?=
	=?us-ascii?Q?NwQTmG/9pNYc+m98bcFfq3T6wFcgvQ311nB0IGaDB5Cta2szv3H3r9pkTTEB?=
	=?us-ascii?Q?9a/fVZWXSqsZ/wV0TV8kL5l8df/eucOVupL/F4fIP9aacoO0lp/tg8K67D+g?=
	=?us-ascii?Q?aR8VfzQJQXBOwgXm4HrqZTxbITnYYwnoqI7LTNvjh6ZwjpEMJPLyAqcFzrFO?=
	=?us-ascii?Q?Zn3DZQyc/o84nfgom6yqUK3bVJMRazqYKdaA03hnT9M0fFplUzIS3zVO9RMa?=
	=?us-ascii?Q?hO/cpOsx8a4cKAjW7Ca/aqDQQlFM2MxYz1UYm9yKHkU1YLJeUGVBettD3Qwd?=
	=?us-ascii?Q?ZSaO7J/04zPlgPDF7WcoSSAFoGuzDX7lb1iNlvdPWycUIIgvm/gYFBpoIqDq?=
	=?us-ascii?Q?OsFFHNSmdq157rVF2NE7aKJ04uLX6DhjftVqQxoYWoJSlv4DAf/VAr7DP1+H?=
	=?us-ascii?Q?Tm9Q1VdI3MvD66kz5wEhOCjDmU7BVvXhNkSKhFPZZhL5mCCd/snMO9WLxWdz?=
	=?us-ascii?Q?4za9quOi9jABuQ5SLu14dhvq3lqdPAh7QIdRtTCkT8VpYoGCw6L25PhsoZ4M?=
	=?us-ascii?Q?MrI8XEYy2I8w5HNfyz2aL20ccKtnEbvSCWmMmnSVAPcrW+j6yeRm8v4n8ALL?=
	=?us-ascii?Q?VjTjT00LdLKy1SVC06ga+qZi4pzBfNLeqDVobOvJsIExBg+gbZ2Ea6n9iu54?=
	=?us-ascii?Q?rBzDXgnVC0t+GldQ5K1M8v8aSrBnZssn86HSrZLiksk2owVGdaVQq24/4bom?=
	=?us-ascii?Q?E0SJ3sxd9s2+poPThWQI7HpE75hGw/L/EcieIuYcMrQiY7uRxOSCdE0yodV7?=
	=?us-ascii?Q?xJAjJ3s45T1LIvAng5M7O5PKc81+Q7A8Y/8fBPol44cavd+Wx1fJqUw9fz9u?=
	=?us-ascii?Q?6LzDSpqIw=3D=3D?=
x-microsoft-antispam-prvs: <BYAPR02MB4984BB116711D19475EA9C9BB97F0@BYAPR02MB4984.namprd02.prod.outlook.com>
x-forefront-prvs: 09565527D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(136003)(346002)(366004)(396003)(376002)(13464003)(189003)(199004)(51914003)(66066001)(106356001)(6116002)(3846002)(4326008)(7416002)(33656002)(53936002)(476003)(256004)(7736002)(11346002)(74316002)(8676002)(97736004)(71190400001)(486006)(14444005)(81156014)(5660300002)(305945005)(446003)(52536013)(6436002)(6246003)(9686003)(8936002)(105586002)(6306002)(71200400001)(2906002)(81166006)(86362001)(53546011)(76176011)(54906003)(55016002)(2201001)(316002)(99286004)(14454004)(68736007)(7696005)(25786009)(102836004)(2501003)(186003)(110136005)(966005)(229853002)(478600001)(6506007)(26005)(72206003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4984;
	H:BYAPR02MB6005.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SlwcBytlErnr0p4Q3nqYFMzMPnDj38Oi2EDjLXRMD0vYvVfeBpnlalDj2Q0CX5CFPxdkD0Kv0TM67nV43vp8VjfDI4pjWsoQPUCYHu3eudVAbTC83QgQC8e5BL9p8kp8GdrX1X7FSFJsDOpvKo8uSWi3wJyRnsLyNA39pKvy4XfAO38vNqQBiSIupNJlodhqjyRjiaT1bcmrqO7crktp/z2WMuEgzCdm/ZyRBH23BxufNTB3gqmDPDsmVwa3oZG3It5yJFwbfQsoD0puU7vYlstC397CRtt0VS1ikhZw/8ostUjnWKRjtm5Ttb12WOyQiOuMR4XJ9O+i3EIHsBNmENcsyei3CAydY9WDeduYQEuISpGf06nX7LQhnUqQCecUgD9ERsEUlfQQN8tac5a601Ptf1h4+TuNc6IZaSUvdw0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ecdc9425-c747-4b75-3df1-08d699074e7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2019 20:49:57.9089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4984
X-Microsoft-Exchange-Diagnostics: 1; BYAPR02MB4984;
	23:fKRLLS5eksi/TJVePO/D6+P1wRWSzJITvWLgXH0rdBJrs7xzQN8xOTp30HWVXcjngiiqIRFJd5Hp56MVCCZxuwvvu3uyqBvMdjmahewTXtaAUz3y+cPTbLOgKxl4fxJWhDBGY+7cu0+B1BWRhzvtOw==
X-OriginatorOrg: xilinx.com
Cc: "lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Sun, 24 Feb 2019 18:03:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Hongxu,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Stephen Lawrence
> Sent: Friday, February 22, 2019 8:52 AM
> To: Hongxu Jia <hongxu.jia@windriver.com>; richard.purdie@linuxfoundation=
.org;
> mhalstead@linuxfoundation.org; ross.burton@intel.com; raj.khem@gmail.com;
> paul.eggleton@linux.intel.com; yocto@yoctoproject.org
> Cc: lpd-cdc-core-dev@windriver.com; Zhangle.Yang@windriver.com
> Subject: Re: [yocto] Review request 0/13: Contribute meta-tensorflow to Y=
octo
>=20
> Hi Hongxu,
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> > On Behalf Of Hongxu Jia
> > Sent: 21 February 2019 11:37
> > To: richard.purdie@linuxfoundation.org; mhalstead@linuxfoundation.org;
> > ross.burton@intel.com; raj.khem@gmail.com;
> > paul.eggleton@linux.intel.com; yocto@yoctoproject.org
> > Cc: lpd-cdc-core-dev@windriver.com; Zhangle.Yang@windriver.com
> > Subject: [yocto] Review request 0/13: Contribute meta-tensorflow to
> > Yocto
> >
> > Hi RP and Yocto folks,
> >
> > Currently AI on IoT edge becomes more and more popular, but there is
> > no machine learning framework in Yocto/OE. With the support of Eric
> > <Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com> and
> > Randy <randy.macleod@windriver.com>, after two months effort, I've
> > integrated TensorFlow to Yocto.
>=20
> Good work.
>=20
> You might be interested in the yocto layers for tensorflow, tensorflow-li=
te and
> caffe2 on github here [1]. I'm not part of the team that developed that w=
ork but I
> forwarded your announcement to them. Perhaps there is the opportunity for=
 some
> collaboration on the platform independent parts. The maintainer details a=
re in the
> readme.
>=20

Thanks for the layer Hongxu. I agree with Steve, it would be good if you co=
uld collaborate with meta-renesas-ai and introduce the layer as meta-ai und=
er meta-openembedded.=20

Thanks,
Manju

> [1] https://github.com/renesas-rz/meta-renesas-ai
>=20
> The layers were developed for the industrial focused Renesas RZ/G1 platfo=
rms.
>=20
> Regards
>=20
> Steve
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

