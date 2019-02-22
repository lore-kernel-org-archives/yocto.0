Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9308AE00CED; Fri, 22 Feb 2019 12:26:53 -0800 (PST)
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
	*      [40.107.140.122 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 11127 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Feb 2019 12:26:50 PST
Received: from JPN01-TY1-obe.outbound.protection.outlook.com
	(mail-eopbgr1400122.outbound.protection.outlook.com [40.107.140.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7E1E00994
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 12:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=l981J8GtVNH5T8kP7m2z7GG6KUlCs0DJEoVrF5I6gBI=;
	b=XF4+pQ+V+L3tZgWvYXIduUb9n6nJkDqOfCcAEbuRL+RIh/dQDib7ILgNujrAkURPikY2V7t2VBYfoKgd2pzQyyJkuDG9keUMurhknHb1HH2HfHUFOBKxvj9g1TQDYTfYaSze0rYv7Xp86LHLR5Vl5uoskgpqQwF7MHUdcVZgK1o=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.179.12) by
	TYAPR01MB4767.jpnprd01.prod.outlook.com (20.179.175.85) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.14; Fri, 22 Feb 2019 16:51:39 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7]) by
	TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7%2]) with mapi id 15.20.1643.018;
	Fri, 22 Feb 2019 16:51:38 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Hongxu Jia <hongxu.jia@windriver.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, 
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
	"ross.burton@intel.com" <ross.burton@intel.com>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, "paul.eggleton@linux.intel.com"
	<paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Review request 0/13: Contribute meta-tensorflow to Yocto
Thread-Index: AQHUydnrZH1wnn+sQE6uSkgVFEw6h6XsBGAg
Date: Fri, 22 Feb 2019 16:51:37 +0000
Message-ID: <TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bd3d851-228a-4ec0-2b67-08d698e6036c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600110)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:TYAPR01MB4767; 
x-ms-traffictypediagnostic: TYAPR01MB4767:
x-ms-exchange-purlcount: 1
x-microsoft-exchange-diagnostics: 1; TYAPR01MB4767;
	20:ZOER3egNztLJZUpvHUKEcj4k4mESPKg1HvHsK63QqO5omyKF+H3DdJBbeH3h1BeKmLJyDS1QABqUjVUHrpyp/lZjb3wMmkaxM2z22YR+aosa1vE+uQfLavpeDV0vbZEjBcjl3y9f6mN7z/1MT2cPheo5aw80aVl2fp4rkhFybak=
x-microsoft-antispam-prvs: <TYAPR01MB4767C802ADC536F69ADE101A927F0@TYAPR01MB4767.jpnprd01.prod.outlook.com>
x-forefront-prvs: 09565527D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39840400004)(366004)(346002)(376002)(136003)(199004)(189003)(13464003)(486006)(66066001)(2906002)(476003)(33656002)(11346002)(446003)(105586002)(6436002)(229853002)(106356001)(9686003)(44832011)(6306002)(97736004)(102836004)(6506007)(53546011)(55016002)(478600001)(26005)(2501003)(68736007)(3846002)(14454004)(6116002)(4326008)(110136005)(7736002)(305945005)(8936002)(25786009)(86362001)(81166006)(74316002)(81156014)(8676002)(2201001)(316002)(53936002)(99286004)(5660300002)(76176011)(256004)(71200400001)(14444005)(71190400001)(107886003)(6246003)(54906003)(7696005)(186003)(966005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB4767;
	H:TYAPR01MB2031.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QfNkzb13gRFNLwbNtwLGCnjXuZ1euxsDTbmOaKEjGtAq7VMwjSK85rmW7pJtwYTxM+I25QshuzGgRTmUiCb52phF1BIKQpQktrFq5yjLGugBDeacTk12Z255QvFNjbifwePPJG1gNxghVfz9LGPJWnxZ6szbQxnaKmcKFOkdsAe8qIJXX8vA1MZ6pQU8tFl/OJjDOMfSd1Fmv5i6MSyS78J+cM/VbeX+nv1okhpOD2inaspc9k93ZRwMMOUvDnzGQ8YgDzfnL13C9KVrHwleCCB6K2s1X+0XuuqG7hBJyEiCl8/otsWFhPMbW3es6H9WwKefy+b0fW30Svfp+4Jh4esMvxXcZUldn2jqiLrqSA1P7wkpLXDdYmjog5lSt1xys7xPsB9yuTmx2c4ZLQy7hKdTNsaIBKajRN6JEhmnQRk=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bd3d851-228a-4ec0-2b67-08d698e6036c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2019 16:51:37.9059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4767
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
X-List-Received-Date: Fri, 22 Feb 2019 20:26:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Hongxu,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On =
Behalf
> Of Hongxu Jia
> Sent: 21 February 2019 11:37
> To: richard.purdie@linuxfoundation.org; mhalstead@linuxfoundation.org;
> ross.burton@intel.com; raj.khem@gmail.com; paul.eggleton@linux.intel.com;
> yocto@yoctoproject.org
> Cc: lpd-cdc-core-dev@windriver.com; Zhangle.Yang@windriver.com
> Subject: [yocto] Review request 0/13: Contribute meta-tensorflow to Yocto
>=20
> Hi RP and Yocto folks,
>=20
> Currently AI on IoT edge becomes more and more popular, but there is no
> machine learning framework in Yocto/OE. With the support of Eric
> <Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com>
> and Randy <randy.macleod@windriver.com>, after two months effort, I've
> integrated TensorFlow to Yocto.

Good work.

You might be interested in the yocto layers for tensorflow, tensorflow-lite=
 and caffe2=20
on github here [1]. I'm not part of the team that developed that work but I=
 forwarded=20
your announcement to them. Perhaps there is the opportunity for some collab=
oration
on the platform independent parts. The maintainer details are in the readme=
.

[1] https://github.com/renesas-rz/meta-renesas-ai

The layers were developed for the industrial focused Renesas RZ/G1 platform=
s.

Regards

Steve

