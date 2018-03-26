Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A65E00B1E; Mon, 26 Mar 2018 19:30:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 19115 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Mar 2018 19:30:22 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0063.outbound.protection.outlook.com [104.47.40.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4DAEE00851
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 19:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uKRx79C3IZ0DBlmZNUgdlxjCQttTEJTpyc5xm08yKFA=;
	b=MLZQT8TQsZ1TOOyY9GtQ3oJDziAly4lZmUNp8QcJYN8TXBmnbRqngGj2KhKLiN62DqdDnEBT18wRlwlr47lHabUr/09xo2hbAc2Lknx4Se0Bgm2c1zNd6Jv5UrdFNCawCSGxMjE11VfllJdnQhU+hl8OvnXGfMpyvehpmYM8tBE=
Received: from BY2PR02MB347.namprd02.prod.outlook.com (10.141.140.149) by
	BY2PR02MB1672.namprd02.prod.outlook.com (10.163.27.22) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.609.10; Mon, 26 Mar 2018 20:56:16 +0000
Received: from BY2PR02MB347.namprd02.prod.outlook.com
	([fe80::fd3f:ad38:375:17af]) by BY2PR02MB347.namprd02.prod.outlook.com
	([fe80::fd3f:ad38:375:17af%13]) with mapi id 15.20.0609.012;
	Mon, 26 Mar 2018 20:56:16 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: =?iso-8859-1?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>,
	Peter Balazovic <balazovic.peter@gmail.com>, Yocto-mailing-list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] scipy recipe
Thread-Index: AQHTwo7JlA0dbJ6qLkWk9qPD1bJo3KPjBHMg
Date: Mon, 26 Mar 2018 20:56:16 +0000
Message-ID: <BY2PR02MB3478CD4565AE85F89F611FEB9AD0@BY2PR02MB347.namprd02.prod.outlook.com>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<CAFq4t4jerHvsYRmh41=nu01OK6cE0Vszn4Vs0VYFsFMDxN97pw@mail.gmail.com>
	<C44683C49AD51C4AB28DA746E48E35870101C9F0@SBS-IDENTPRO.intranet.identpro.net>
In-Reply-To: <C44683C49AD51C4AB28DA746E48E35870101C9F0@SBS-IDENTPRO.intranet.identpro.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2PR02MB1672;
	7:CwTOnj6XpqiYTrvpguAJ8wjWt0ccHmpn9w+AyqMyZbTGbh2IUoKrFyPuBM34vQytKvZoWB1Kalx3IxpZeVhoSn/fmyhd+jo5YsqObpVDj6W0IMEBP0Swj8cfQHIuDi/QudFw1GLqAYR5n2U4cuRYq+MZOW37tQGMgh9GtITOnr9B1lR7LmZqVIZgUlWCWRGuUOOK7WawiOKAuk0x54bpyNWPfdh60uKcwFtjE/0XO0LIzd7V+0JEIYUJUmu62coe
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 440a94d6-7d1b-46d2-cbe2-08d5935c0476
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:BY2PR02MB1672; 
x-ms-traffictypediagnostic: BY2PR02MB1672:
x-microsoft-antispam-prvs: <BY2PR02MB167207E35970958790900581B9AD0@BY2PR02MB1672.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231221)(944501327)(52105095)(93006095)(93001095)(10201501046)(3002001)(6055026)(6041310)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:BY2PR02MB1672; BCL:0; PCL:0; RULEID:; SRVR:BY2PR02MB1672; 
x-forefront-prvs: 06237E4555
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(346002)(376002)(39380400002)(396003)(39860400002)(189003)(199004)(13464003)(3280700002)(7696005)(76176011)(6436002)(99286004)(81166006)(5890100001)(25786009)(2906002)(8936002)(66066001)(8676002)(81156014)(97736004)(14454004)(11346002)(476003)(486005)(486005)(110136005)(6246003)(33656002)(229853002)(446003)(3660700001)(6116002)(106356001)(186003)(5250100002)(9686003)(5660300001)(2900100001)(86362001)(316002)(305945005)(39060400002)(478600001)(55016002)(26005)(7736002)(102836004)(53936002)(6506007)(53546011)(72206003)(105586002)(74316002)(3846002)(68736007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR02MB1672;
	H:BY2PR02MB347.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: mcCO6sA847VBUsvP3CyYGMhxl66LSZlIF3VS2Ah1xSJPhYkyHwnsL+pDAJLVOFKlQ8ljp4+/Ka5AXZrVAKRjurT1kmioiSB83uolr3gxmHKFQZsZeLqpb1clDgnDWDGqJSHY/VVvVGC1OkWv0lovNmnFpEQDKcJ1ONfkqc0Ct8JF+FEBKFeeEQc00LpNV/5C+naQJ8kbpq9j/5qFyoSLsQ484rXllPwMt6v7SQ/Lzv9iHBq0hd+HmLVMHJ0r6UL7NoICLMQ56caD2P5caRlOATa3P7Z39vmmhVW5oxQ5dXkcJBqnbZWp2KIlLO7VMQ6Bf1eDbJBcQscmJVepQOKLmQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 440a94d6-7d1b-46d2-cbe2-08d5935c0476
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2018 20:56:16.2868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR02MB1672
Subject: Re: scipy recipe
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
X-List-Received-Date: Tue, 27 Mar 2018 02:30:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Matthias Sch=F6pfer
> Sent: Friday, March 23, 2018 3:08 AM
> To: Peter Balazovic <balazovic.peter@gmail.com>; Yocto-mailing-list
> <yocto@yoctoproject.org>
> Subject: Re: [yocto] scipy recipe
>=20
> Hi Peter,
>=20
> I managed to get scipy to cross compile, since I was in a hurry, and have=
 no deeper
> understanding of python / distutils / setuptools, it turned out to be an =
ugly hack (but
> obviously I was not the first one to do ugly things there ;) )
>=20
> Maybe you have had some progress as well, and we can figure out a nicer s=
olution.
>=20
> See the attached files, involving openblas, a bbappend for python-numpy a=
nd
> python-scipy.
>=20

Thanks Matthias, will try this out

Thanks,
Manju

