Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50569E010E0; Wed,  6 Jun 2018 00:16:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1039 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jun 2018 00:16:05 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0086.outbound.protection.outlook.com [104.47.32.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF332E00BFB
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 00:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=01B7fh4zmXxZL7vxnsNEbEtUeV4LE6NgGkxmQHPc6Vk=;
	b=5T+fk1GxpU8AHPMro/WDtByuI5ID+ZMSv+/RJ87QAtFMKPiGrcM6IxY1X0WDLiiMdVotaJv0qu1ze9xYIonvVYhgRr5JHLsesIE1b1mFFYYLNu2JhE9hiU28G2TSQn6Kg2UmEvzVXkDX4FpdUebFTQlIvu0azHl8dOCs7Yrcdw0=
Received: from DM5PR02MB3863.namprd02.prod.outlook.com (52.132.139.146) by
	DM5PR02MB3276.namprd02.prod.outlook.com (10.164.148.30) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.820.13; Wed, 6 Jun 2018 06:44:08 +0000
Received: from DM5PR02MB3863.namprd02.prod.outlook.com
	([fe80::a980:cb7c:becd:294]) by DM5PR02MB3863.namprd02.prod.outlook.com
	([fe80::a980:cb7c:becd:294%5]) with mapi id 15.20.0820.015;
	Wed, 6 Jun 2018 06:44:08 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Gratitude
Thread-Index: AdP9YXdE0iV44Og9QeKXpEG+cRKPAgAAEDZg
Date: Wed, 6 Jun 2018 06:44:08 +0000
Message-ID: <DM5PR02MB38630736E323CBD5A91B7F18B9650@DM5PR02MB3863.namprd02.prod.outlook.com>
References: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
In-Reply-To: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [106.51.106.109]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR02MB3276;
	7:VjwucWa8Bf9XUk7ePRhCCS/bRDMrbeLaCmcLYxYeghV4q4BRRsgVjHpYEJILGM+jM75NNAAEy7EdSJ6gmqjypBG40WZXbH/MfFNbAOn/fkXuCGr4tRwodWUNIP89vFC7UDjXR6MFZcZakGxueW7hJP6EWA3QvvLC+MTsZdCJdhPQ6cbRMPpi/A6WNdhMYPuIqLD7foW3MNss4lKNvmv3CVgTfYKCsLxXdThhvgmi0KJzKGyLqdNCV7Fw9F6RjvdR
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(5600026)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR02MB3276; 
x-ms-traffictypediagnostic: DM5PR02MB3276:
x-microsoft-antispam-prvs: <DM5PR02MB32765B6AB5F2370399029B73B9650@DM5PR02MB3276.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(5213294742642);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(3231254)(944501410)(52105095)(10201501046)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(20161123564045)(20161123558120)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);
	SRVR:DM5PR02MB3276; BCL:0; PCL:0; RULEID:; SRVR:DM5PR02MB3276; 
x-forefront-prvs: 06952FC175
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39380400002)(39840400004)(396003)(376002)(346002)(366004)(69224002)(13464003)(199004)(189003)(81156014)(3480700004)(81166006)(2900100001)(7736002)(68736007)(966005)(478600001)(33656002)(8936002)(72206003)(97736004)(14454004)(8676002)(53936002)(6306002)(9686003)(55016002)(6246003)(3280700002)(3660700001)(6436002)(229853002)(6116002)(2906002)(3846002)(7116003)(5660300001)(106356001)(105586002)(25786009)(186003)(86362001)(9456002)(74316002)(66066001)(102836004)(7696005)(5250100002)(305945005)(99286004)(26005)(11346002)(2501003)(446003)(476003)(53546011)(6506007)(221733001)(110136005)(316002)(55236004)(486006)(76176011);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB3276;
	H:DM5PR02MB3863.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: EfjUs0ANK1JjiRZkerSdfzSMV8WCUEztF2b9Pc2WtzlhMObYbudEKJU49oAaqkyqfizRrhBcsmcAlJfR6NZR4JqVM0nfzs1xSGuDo746beSMx3hwwu5C+yqBAyZPbCL2eoUi7jUy1+OJFhaOpxFz4rOQUvPb2j59OwL7I7Tp2LQTdUFMbqb2adJN6qgT7yuF
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: cf63bd91-dba7-4a5f-51fa-08d5cb78e778
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf63bd91-dba7-4a5f-51fa-08d5cb78e778
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2018 06:44:08.2104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3276
Subject: Re: Gratitude
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
X-List-Received-Date: Wed, 06 Jun 2018 07:16:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for all the work Jefro

Thanks,
Manju

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Osier-mixon, Jeffrey
> Sent: Tuesday, June 05, 2018 11:42 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Gratitude
>=20
> I have been the Yocto Project community manager for over 7 years now, and=
 have
> had the pleasure of knowing or conversing individually with several hundr=
ed of
> you. It is with mixed feelings that I must announce that I am stepping do=
wn from
> my position as the YP community manager and the Advisory Board chair afte=
r 7
> years, as I am taking on a new role in my job.
>=20
> I am very proud of the progress that the project has made, growing from a=
 small
> set of build tools into an industry standard for building and working wit=
h
> embedded Linux-based operating systems, supporting upstream projects incl=
uding
> the Linux kernel, hosting projects like opkg, and inspiring many very suc=
cessful
> downstream projects, including AGL and OpenBMC among many others, and als=
o
> supporting countless configurations of hardware among seven different
> architectures. We have also seen the community of users grow from fewer t=
han
> 1000 in 2010 to a large city-sized community, estimated in the tens of th=
ousands
> of developers.
>=20
> Please continue to participate, collaborate, and come together as a commu=
nity!
> The Yocto Project is a success because every one of you participates.
>=20
> Jeffrey "Jefro" Osier-Mixon, Intel Corporation Open Source Community Ecos=
ystem
> Strategist
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

