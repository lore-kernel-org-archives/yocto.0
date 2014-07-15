Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEBE4E00572; Tue, 15 Jul 2014 03:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [207.46.163.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 883 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Jul 2014 03:29:39 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2lp0206.outbound.protection.outlook.com [207.46.163.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D7C0E002AA
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 03:29:39 -0700 (PDT)
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0716.namprd03.prod.outlook.com (25.160.159.146) with
	Microsoft
	SMTP Server (TLS) id 15.0.985.8; Tue, 15 Jul 2014 10:14:54 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.00.0985.008; Tue, 15 Jul 2014 10:14:54 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Query about the kernel version supported by Yocto
Thread-Index: Ac+gFZ2Cs4x6/dKtQGircmHrgK47Gg==
Date: Tue, 15 Jul 2014 10:14:53 +0000
Message-ID: <4c2985c7070540f08bd68ba8a7c25331@CY1PR0301MB0715.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.211]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 027367F73D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(53754006)(199002)(189002)(229853001)(110136001)(558084003)(76482001)(101416001)(77096002)(4396001)(46102001)(85306003)(74316001)(83322001)(107046002)(85852003)(107886001)(21056001)(2656002)(2351001)(54356999)(99396002)(95666004)(80022001)(66066001)(50986999)(105586002)(86362001)(64706001)(74502001)(83072002)(76576001)(74662001)(87936001)(81542001)(31966008)(92566001)(79102001)(81342001)(106356001)(20776003)(77982001)(33646002)(108616002)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:CY1PR0301MB0716;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Query about the kernel version supported by Yocto
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
X-List-Received-Date: Tue, 15 Jul 2014 10:29:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,=20

The git tree of several kernel version is maintained in the Yocto official =
git repository, 3.4, 3,8, 3.10 and 3.14, is there any reason to skip kernel=
 3.12 which is a LTS version?=20

What's the policy of kernel selection of kernel that is supported by Yocto?=
=20


Best Regards,

Zhenhua

