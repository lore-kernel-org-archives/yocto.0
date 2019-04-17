Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F364E00D2F; Thu, 18 Apr 2019 19:00:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.70.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 71935 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Apr 2019 19:00:47 PDT
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700084.outbound.protection.outlook.com [40.107.70.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7182DE00B5C;
	Thu, 18 Apr 2019 19:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=onkzg/nF+bYJEFCn8PVHnQf6JX5F9FB44L/3oYojClc=;
	b=XDPQ6EnApqARq4Og9v7JAf4JWHHriAu3qJ/F/mCQZ4PaLvQ+HpcP7uWyJJecFSxIQsqVk1lFL160Z9JtsW0ixHon/HO0+I3wyw5C5bnZuu/+CQLZU8awh2fHWI9krEoVCOy8x9kLX8q6lq1xs+eP75KZxgypd8CpGlbIEVcAOFc=
Received: from BYAPR02MB6005.namprd02.prod.outlook.com (20.179.89.140) by
	BYAPR02MB4743.namprd02.prod.outlook.com (52.135.232.32) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1813.12; Wed, 17 Apr 2019 20:28:10 +0000
Received: from BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::6d45:e408:261d:838c]) by
	BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::6d45:e408:261d:838c%2]) with mapi id 15.20.1813.011;
	Wed, 17 Apr 2019 20:28:10 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: Tracy Graydon <tracy.graydon@intel.com>, "yocto-announce@yoctoproject.org"
	<yocto-announce@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2 (thud
	20.0.2)	Released
Thread-Index: AQHU9VvP+3ztAT/uq0ycf/TIaCUhcaZAzT+g
Date: Wed, 17 Apr 2019 20:28:10 +0000
Message-ID: <BYAPR02MB60055D9DE1AD3A765C241855B9250@BYAPR02MB6005.namprd02.prod.outlook.com>
References: <0720978d-2fdd-3084-3217-dc93470040e1@intel.com>
In-Reply-To: <0720978d-2fdd-3084-3217-dc93470040e1@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3a30ed1-c5bc-4e70-2ddb-08d6c373355c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600141)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:BYAPR02MB4743; 
x-ms-traffictypediagnostic: BYAPR02MB4743:
x-ms-exchange-purlcount: 7
x-microsoft-antispam-prvs: <BYAPR02MB4743B054D0DA99AABCDCE4CAB9250@BYAPR02MB4743.namprd02.prod.outlook.com>
x-forefront-prvs: 0010D93EFE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(396003)(136003)(376002)(39860400002)(366004)(199004)(13464003)(189003)(76176011)(25786009)(9686003)(2201001)(14444005)(66066001)(110136005)(478600001)(6246003)(316002)(6306002)(229853002)(256004)(81166006)(476003)(2501003)(68736007)(55016002)(446003)(81156014)(6506007)(53936002)(53546011)(99286004)(11346002)(26005)(7696005)(105586002)(74316002)(305945005)(186003)(106356001)(7736002)(52536014)(486006)(72206003)(102836004)(8936002)(71200400001)(966005)(14454004)(71190400001)(97736004)(6116002)(3846002)(86362001)(33656002)(5660300002)(6436002)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4743;
	H:BYAPR02MB6005.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r8ahDV8V1Xs4DejHwIh+zwUZO5gO5vplJyQc6HRNve+HEPAxlxwHiS3RQefZDmey17rAm87UoOCJMH/zUa3edB+kA+pB/GoWWeZQ0KC+gSQhh96eWiqyrYjCGq54fcfQLMBoKdMjBc5jYvkMXzFv3+X1YSexmEjUm3LOtTjch7/xB72cd4IiElUwiJZ71Oz/EIZ2bIGFToHk7ZJ86JKF5o9BFb/41CRffh9F5TC4rdQC1qaRPDQ9nd3b60Exdm6ORtldNOOEDDgmpl1vKBbAkhz/3uOqt+Gi9wt7g0yOV/YYndLfiBlbZqk0D/rRuQoU6CmtzPCcXeYS46iZkGxsR34kcz3tV8NdLn+5YER40x8nGvQeRVx5Vls1p3rJNOAus6OuRFbACPlLFdx2U3Mp3dlQytpGxCq9Xj1ofLYtD2A=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a30ed1-c5bc-4e70-2ddb-08d6c373355c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2019 20:28:10.2532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4743
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2 (thud 20.0.2)	Released
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
X-List-Received-Date: Fri, 19 Apr 2019 02:00:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Tracy,

> -----Original Message-----
> From: yocto-announce-bounces@yoctoproject.org [mailto:yocto-announce-
> bounces@yoctoproject.org] On Behalf Of Tracy Graydon
> Sent: Wednesday, April 17, 2019 1:25 PM
> To: yocto-announce@yoctoproject.org; yocto@yoctoproject.org
> Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2 (thud 20.0.2=
)
> Released
>=20
> We are pleased to announce the latest release of the Yocto Project 2.6.2 =
(thud-
> 20.0.2) is now available for download:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.2/poky-thud-
> 20.0.2.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.6.2/poky-thud-20.0.2.tar.bz=
2
>=20
> A gpg signed version of these release notes is available at:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.2/RELEASENOTES
>=20
> Yocto 2.6.2 QA reporting:
>=20
> Summary: https://lists.yoctoproject.org/pipermail/yocto/2019-
> April/044827.html
> Results: https://autobuilder.yocto.io/pub/releases/yocto-2.6.2.rc3/testre=
sults/
>=20

I am not able to access this results page. It says "No Such Resource
File not found."


Thanks,
Manju


> Build log:
> hhttps://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/122
>=20
> Release Criteria:
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Yocto_Projec=
t_2
> .6.2_release
>=20
>=20
> Thank you for everyone's contributions to this release.
>=20
> Sincerely,
>=20
> Tracy Graydon
> Yocto Project Build and Release
> tracy.graydon@intel.com
> --
> _______________________________________________
> yocto-announce mailing list
> yocto-announce@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto-announce

