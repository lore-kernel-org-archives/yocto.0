Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD820E02F46; Tue, 12 Jun 2018 13:51:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.93 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3634 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jun 2018 13:51:34 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0093.outbound.protection.outlook.com [104.47.36.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6463DE01A0E
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 13:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=orLi88AqHbIh9mDQlH6o/u+YgB3XT4ufmtaKPrHUKuw=;
	b=U9x9kd2eIjpfDhJHEJpcu6T6UKnGpccfORtwLxyk6mZCdd0UM2lVNsdb3vy3vWE8Xo3xAxTNbZjTx8mYQn0plvB5f5btNpToGeIslgRHa+uKDPs6r8Yinvu4Qfron1RQwjn5Z9UFLsNBoTi8/AqLv17NEWBz/jDAmaQgjePN52Y=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2193.namprd11.prod.outlook.com (10.174.112.150) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.14; Tue, 12 Jun 2018 17:15:24 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f%4]) with mapi id 15.20.0841.019;
	Tue, 12 Jun 2018 17:15:24 +0000
From: =?iso-8859-1?Q?Mathieu_Alexandre-T=E9treault?= <alexandretm@amotus.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding package's license to the final image
Thread-Index: AdQCcO/PJHDXRYhVSsC+/zSFXJsC+Q==
Date: Tue, 12 Jun 2018 17:15:24 +0000
Message-ID: <BN6PR1101MB2356E469AF7873B3675F1E06B27F0@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2193;
	7:F5TBAkBxcG83sT7RdAeOPxhEC+r5riMuHDu6zhm6kKXXHXmIVJTAF2L4xhVnXIiyzDTX1pvvUQFgV5hM9BlqIppU8d/GkTExv97rG0QYl9kXtvF0h9UbVYmZRnF5DuVV4PmiAwClQT5pS8ulegfRCn5Rj23MSqx8AUD7Sw/uZAH4Ufx9pDUWHzDUPWc0Lrs2SisMNGLjXMbZ2gTp4e9QkrOn9K4H75JhsftpPJTsDwhGKcxuPbgu14JS4ObRTiCE
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2193; 
x-ms-traffictypediagnostic: BN6PR1101MB2193:
x-microsoft-antispam-prvs: <BN6PR1101MB21935CB6BDA8CD0CF3750202B27F0@BN6PR1101MB2193.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(10201501046)(93006095)(93001095)(3002001)(149027)(150027)(6041310)(20161123562045)(2016111802025)(20161123564045)(20161123558120)(20161123560045)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:BN6PR1101MB2193; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2193; 
x-forefront-prvs: 07013D7479
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(39380400002)(366004)(39830400003)(396003)(376002)(189003)(199004)(14454004)(9686003)(316002)(2501003)(53936002)(1730700003)(81156014)(81166006)(3660700001)(305945005)(3846002)(2906002)(6116002)(8676002)(6436002)(8936002)(7736002)(99286004)(86362001)(97736004)(3280700002)(5250100002)(5640700003)(74316002)(55016002)(5660300001)(486006)(476003)(6916009)(2351001)(478600001)(2900100001)(106356001)(33656002)(105586002)(7696005)(74482002)(26005)(68736007)(6506007)(25786009)(102836004)(66066001)(186003)(21314002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2193;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: M+akNMmrNcJkvsRWYLlRtWArFFZNWJ0eogd9wiQtGpI94adZoaXCaLXPQic4cqOrIduMu/x1ur0gRcrL36QGi/V/0Th7g2OosB1IJThyO3aUoT/OC4GZPUAnH7So1yx3FdRjC7eAibYpjqVvhdO3S2eFE+lbA97g5tEft8SCLeT61qpm9We+ypjz/FWi+YOT
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 3c76b438-97d8-4a55-1036-08d5d088161f
X-OriginatorOrg: amotus.ca
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c76b438-97d8-4a55-1036-08d5d088161f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2018 17:15:24.5905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2193
Subject: Adding package's license to the final image
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
X-List-Received-Date: Tue, 12 Jun 2018 20:51:35 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Howdy,

I am working on a project that requires the final image to contain a licens=
e manifest for all the packaged installed on the image.

At first I though about using the tmp/deploy/licenses/xxx/license.manifest =
but this file is deployed by the IMAGE_POSTPROCESS_COMMAND_prepend which ha=
ppens after the rootfs is done.

Would anyone have a suggestion on how to this properly without using any we=
ird hack?

Cheers,
Mathieu

