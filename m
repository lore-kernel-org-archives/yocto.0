Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A172E025F3; Tue, 12 Jun 2018 10:43:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 11134 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jun 2018 10:43:11 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0097.outbound.protection.outlook.com [104.47.34.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71441E02B18
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 10:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=orLi88AqHbIh9mDQlH6o/u+YgB3XT4ufmtaKPrHUKuw=;
	b=2LcEFeVYgIFwXVGMYGpU5cz+4pk+cBJGcXpbNBK51uz1z+Kp6i/GXpmdnQWpQQ3y5ROUSqLInBQ2vQgTT7jQMrqbElmSW1nQMDGOUZO9/5GuYZP8+5IUTkkeZOQlno0+69rgt8C9rVNZB7fLipBWAnc8fhBMxs+uVAXDxQtegRc=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2210.namprd11.prod.outlook.com (10.174.113.10) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.15; Tue, 12 Jun 2018 17:28:28 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f%4]) with mapi id 15.20.0841.019;
	Tue, 12 Jun 2018 17:28:28 +0000
From: =?iso-8859-1?Q?Mathieu_Alexandre-T=E9treault?= <alexandretm@amotus.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding package's license to the final image
Thread-Index: AdQCcsWmQapRwQUATR2SqdWhZBio5A==
Date: Tue, 12 Jun 2018 17:28:28 +0000
Message-ID: <BN6PR1101MB23560CC2388A4D2F295E2454B27F0@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2210;
	7:+3tO2Q5zu5TJI53veaaeYTF85zmu9SrQJkMiz73nabZn9nOtSyxIGjJsDtDzqEhZENAOvNdyFvUa6BA70HxixvokgI81OgLvcmMF6cFr4clQTIftEU/6jy64C/87GARBQYeOQuo+PjKSYxjVilHJYBwVjZooQSfG+/M2MG9xHiamJGOASu2lGMhACc3diwVfya0k6IoaZr80cLwN66CtGeBleb/2USbQIKkx/6wgpRoBqPQLisCH5jGKKdoYwUNl
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2210; 
x-ms-traffictypediagnostic: BN6PR1101MB2210:
x-microsoft-antispam-prvs: <BN6PR1101MB2210A10ECA80B316EDAD4E5BB27F0@BN6PR1101MB2210.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(10201501046)(93006095)(93001095)(3002001)(149027)(150027)(6041310)(2016111802025)(20161123562045)(20161123564045)(20161123558120)(20161123560045)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:BN6PR1101MB2210; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2210; 
x-forefront-prvs: 07013D7479
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(366004)(39830400003)(39380400002)(396003)(376002)(189003)(199004)(6916009)(2501003)(305945005)(105586002)(26005)(7736002)(1730700003)(106356001)(55016002)(81166006)(74316002)(14454004)(2351001)(7696005)(9686003)(81156014)(476003)(86362001)(53936002)(486006)(5250100002)(99286004)(6506007)(5660300001)(6116002)(5640700003)(33656002)(3660700001)(66066001)(3280700002)(2900100001)(2906002)(186003)(478600001)(3846002)(74482002)(8676002)(97736004)(6436002)(68736007)(316002)(8936002)(25786009)(102836004)(21314002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2210;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: ULcTNa7G1e1Th+0pZOwVDTMz1IBr21jqFdxrKzDhOQHWfHX/ssxUxp0rq1St2QQPP5GhZ68i+a8l+MBToqw1/VC4ooCOq+I3z28K6h3PGjifShP2ZTO2kYU8uAFYqerZNb4RKXAvXD+vuLNMNfa7nQySzrMdUvSQjHZVU91P0zLsWHiooW1KtQLlYSBLcxE6
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 799c3bc1-ddd3-4ba0-9156-08d5d089e97c
X-OriginatorOrg: amotus.ca
X-MS-Exchange-CrossTenant-Network-Message-Id: 799c3bc1-ddd3-4ba0-9156-08d5d089e97c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2018 17:28:28.7073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2210
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
X-List-Received-Date: Tue, 12 Jun 2018 17:43:14 -0000
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

