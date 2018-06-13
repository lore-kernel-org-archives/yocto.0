Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22F04E01CC2; Wed, 13 Jun 2018 10:10:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0096.outbound.protection.outlook.com [104.47.36.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC32E00A4C
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 10:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=0k8hpf4Ez062WniOC/S6gPyeoXgdGv0jemfMTm5MzEM=;
	b=UPbs9voBeiiw8UQNwM+Gavybz6F5ZHFSgigpSdlK0iya/4Mq6Ywq5KfFakBqMCoHxKIU2X6Kh6cIertdV6cIjM5U4hSFk/QdVnQkE1b6Fzj64LiVXSEztI9RzTo4JviorIjTAmyFIaukOch8bCmec93RmZb4sDZAuKdVso0fOgY=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2258.namprd11.prod.outlook.com (10.174.113.22) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.16; Wed, 13 Jun 2018 17:10:26 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f%4]) with mapi id 15.20.0863.016;
	Wed, 13 Jun 2018 17:10:25 +0000
From: =?iso-8859-1?Q?Mathieu_Alexandre-T=E9treault?= <alexandretm@amotus.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue yocto strip the kernel module signature during packaging
Thread-Index: AdQDOVVi/02C62t1R3S1vqeO7pZP1A==
Date: Wed, 13 Jun 2018 17:10:25 +0000
Message-ID: <BN6PR1101MB2356F068A4BE5B55E09BF089B27E0@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2258;
	7:IkNvq1BL671Xq0G1ujWrqyyOPcADUnGN4k3970jL2YkwwYVRUtmhAt3wF14BsaMRnzx99ConGgcodbKSSy1adQulWaw1P/gEdz1UL2liGWd+SYLXo2v3udKxvgSK/f1vaH1VujjA7h18mdP6LR3JVwDH5dVrvHXeAdIrfHfd4GffGr6ypPMfu9rBrZj0PXaTkANChHKGBQ8AlZ6tiy+PH1dwn3fPNISzSu/qdwXi50F6TAB6J1HYRSzaJNfgTFSA
x-ms-exchange-antispam-srfa-diagnostics: SOS;
X-MS-Office365-Filtering-Correlation-Id: d9f43ec7-b059-4d4e-eb0a-08d5d1508e6b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(711020)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2258; 
x-ms-traffictypediagnostic: BN6PR1101MB2258:
x-microsoft-antispam-prvs: <BN6PR1101MB22587445FAB06D24B16258C2B27E0@BN6PR1101MB2258.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231254)(944501410)(52105095)(149027)(150027)(6041310)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(2016111802025)(6043046)(6072148)(201708071742011)(7699016);
	SRVR:BN6PR1101MB2258; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2258; 
x-forefront-prvs: 07025866F6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(39380400002)(39830400003)(346002)(366004)(199004)(189003)(486006)(59450400001)(2501003)(26005)(102836004)(7696005)(74482002)(6506007)(2351001)(68736007)(99286004)(478600001)(5250100002)(2906002)(6116002)(3660700001)(14454004)(186003)(2900100001)(476003)(316002)(97736004)(3280700002)(3846002)(55016002)(6916009)(6436002)(5640700003)(53936002)(66066001)(5660300001)(305945005)(105586002)(106356001)(7736002)(74316002)(25786009)(8676002)(81166006)(8936002)(1730700003)(81156014)(33656002)(86362001)(9686003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2258;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 1NNJi+7fjqSQwwIGgh/sArXuwmo3Q1I/33rYK++ET05xhbM4tm8zW0nXdCtaurFW9tIgGutAL1CnsAWTqnxc9QmrJwLDgzVV9gJ4TSmnqgJlag3RCB8HFobig/GKTas7h18opt6OkO9lbXHb49EOgP5idzR1qEA72BJ9uBrMfZVMMLxB/+0h5pcApj/hkanJ
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: amotus.ca
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f43ec7-b059-4d4e-eb0a-08d5d1508e6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2018 17:10:25.7737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2258
Subject: Issue yocto strip the kernel module signature during packaging
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
X-List-Received-Date: Wed, 13 Jun 2018 17:10:29 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am working to activate the kernel module signature for in-tree and out-of=
-tree packages.
While I was debugging the cause of the kernel complaining about unsigned mo=
dules.
I noticed that yocto was stripping the signature information from the binar=
y, therefore I've
set INHIBIT_PACKAGE_STRIP =3D "1" for all of my out-of-tree module. Then I =
had to  set the flag
for the kernel recipe to fix the issue for my in-tree kernel module.

My question is:
   - is there any issue with turning off the stripping for the linux recipe=
? I'd like to be sure I haven't overlooked anything about this.
   - Would there be a better way to achieve this?

Cheers,

Mathieu

