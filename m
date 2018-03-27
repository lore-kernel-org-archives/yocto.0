Return-Path: <Henrik.Jensen@prevas.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D915E00A1C; Tue, 27 Mar 2018 07:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10738 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Mar 2018 07:44:35 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0100.outbound.protection.outlook.com [104.47.2.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCDEDE008A2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prevasonline.onmicrosoft.com; s=selector1-prevas-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4EvHTibE6eD/uYh7dT9HwzGKvP0oVOaUUJUFE98HwX0=;
	b=miiGEI9oAC3hhhyK+dSU+xhm68rT/SMnHwob9+pR5iHXpUKPaZoGCENuvV1Vki45CfsaSaj5SSp5C1Ute8oz4GkDds3buAYcFVnv/j6sye0oDqHYTliXZXcWpBK7NUZGCPJ/5pd5/6x862QvolCV9/XVImk3cPYHgmn+jx2er5k=
Received: from HE1PR10MB0106.EURPRD10.PROD.OUTLOOK.COM (10.166.126.22) by
	HE1PR10MB0250.EURPRD10.PROD.OUTLOOK.COM (10.166.121.15) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.609.10; Tue, 27 Mar 2018 11:13:16 +0000
Received: from HE1PR10MB0106.EURPRD10.PROD.OUTLOOK.COM
	([fe80::d08e:3237:dc9e:876f]) by
	HE1PR10MB0106.EURPRD10.PROD.OUTLOOK.COM
	([fe80::d08e:3237:dc9e:876f%14]) with mapi id 15.20.0609.012;
	Tue, 27 Mar 2018 11:13:16 +0000
From: Henrik Jensen <Henrik.Jensen@prevas.se>
To: =?iso-8859-1?Q?M=E5ns_Zigher?= <mans.zigher@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto]  question on how to include package to the SDK
Thread-Index: AQHTxaMENzzuqu0oLEeI/7wBHziqrKPj7MlZ
Date: Tue, 27 Mar 2018 11:13:16 +0000
Message-ID: <HE1PR10MB0106C9E40BD3E4A6D81D8E34E5AC0@HE1PR10MB0106.EURPRD10.PROD.OUTLOOK.COM>
References: <CAEhQi8k=m6UtLiOZUqwB8+Zc4CtMyGOgR+whN5aaHWE4XZ7iNg@mail.gmail.com>
In-Reply-To: <CAEhQi8k=m6UtLiOZUqwB8+Zc4CtMyGOgR+whN5aaHWE4XZ7iNg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Henrik.Jensen@prevas.se; 
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR10MB0250;
	7:7m5AcNWeptIi4pN1wm/dLPkkpndZNe+VpzkJZ+9LKj1DrgstWKad0/VHJ2Y2C2PfAYtbpB03sB0OxS/mIW3g9rEvU+4x+tYqADxW07swalkpV2rCm0z0HE698+5bdujKJWKr7bhWxxDJkQeb5z+sEi9YWTuxvtoTCq8S02AqxGZqiZBwWBD37Ax7VzZc9VBbEDOMFkC76JO4gvfNSq5BAgodFQ8NyloQ6ra/QTgRisNHZPOAboiSBcigAk6RBMK7
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: d7596e85-7038-414b-b1ef-08d593d3bd0c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR10MB0250; 
x-ms-traffictypediagnostic: HE1PR10MB0250:
x-microsoft-antispam-prvs: <HE1PR10MB0250BD86CAD880F5528FFA20E5AC0@HE1PR10MB0250.EURPRD10.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231221)(944501327)(52105095)(10201501046)(3002001)(6041310)(20161123560045)(20161123564045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:HE1PR10MB0250; BCL:0; PCL:0; RULEID:; SRVR:HE1PR10MB0250; 
x-forefront-prvs: 0624A2429E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(396003)(39380400002)(39850400004)(346002)(376002)(199004)(189003)(501624003)(5250100002)(33656002)(26005)(478600001)(2501003)(72206003)(74316002)(316002)(9686003)(6506007)(53546011)(39060400002)(3660700001)(5660300001)(81166006)(8936002)(8676002)(7736002)(305945005)(81156014)(186003)(486005)(15974865002)(55016002)(486005)(14454004)(99286004)(102836004)(25786009)(6436002)(6306002)(110136005)(11346002)(53936002)(2906002)(74482002)(76176011)(106356001)(229853002)(105586002)(6116002)(3846002)(2900100001)(66066001)(446003)(97736004)(476003)(3280700002)(7696005)(68736007)(86362001)(6246003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR10MB0250;
	H:HE1PR10MB0106.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: prevas.se does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: /TR3hj+wizoTNl9MYO5ojhp6WXQdrWsVBAZyp0i4BI9tDPcYqoMNMdyM47cCVGt9xa9wgOswyq8OCJz34+k5JFRiD/ziyiO9ca0cux+r9VPwU8neInLqulHgr3d8XytIvJyetauP6tqLSbSc1KvTHkvs/u/NItAhziRWMHP12Q3ZLtzTvXoWbp5oYhdaCddsUAUuOYJ6NceShclxenaphpYDfLXCT66BDTqaTF9eroFTHchF/TeVwz7NM/lfmFe+vPUNSJ1fWWVxvNRvy1LZvRXdJSlvtcgh7Cp6l2AJiTTInriwzQJgR7i8+1KN7c8wqDgeb+N6L+/NpP/uzYxbrw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: prevas.se
X-MS-Exchange-CrossTenant-Network-Message-Id: d7596e85-7038-414b-b1ef-08d593d3bd0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2018 11:13:16.0651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR10MB0250
X-Mailman-Approved-At: Tue, 27 Mar 2018 09:15:13 -0700
Subject: Re: question on how to include package to the SDK
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
X-List-Received-Date: Tue, 27 Mar 2018 14:44:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If you are using protobuf from meta-oe, you need to add nativesdk-protobuf-=
compiler to the SDK.

--
Henrik Jensen, Software Developer, Prevas A/S
Visit: Hedeager 3, DK-8200 Aarhus N
Mobile: +45 2228 4065
Switchboard: +45 3315 9090
henrik.jensen@prevas.dk
www.prevas.com

________________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of M=E5ns Zigher <mans.zigher@gmail.com>
Sent: Tuesday, March 27, 2018 10:07:15 AM
To: yocto@yoctoproject.org
Subject: [yocto]  question on how to include package to the SDK

Hi,

I have package that require protobuf and the compiler protoc. I have includ=
ed the following

DEPENDS +=3D " protobuf protobuf-native"

and

RDEPENDS_${PN} +=3D " protobuf"

The build works as intended the problem now is that the protoc is not inclu=
ded in the SDK. In the Yocto ref manual I found the following description f=
or TOOLCHAIN_HOST_TASK

"This variable lists packages the OpenEmbedded build system uses when build=
ing an SDK, which contains a cross-development environment. The packages sp=
ecified by this variable are part of the toolchain set that runs on the SDK=
MACHINE<https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.htm=
l#var-SDKMACHINE>, and each package should usually have the prefix nativesd=
k-."

So I have also in by image bb-file included the following

TOOLCHAIN_HOST_TASK +=3D " nativesdk-protobuf"

The build passed without any errors but the protoc is still not included in=
 the native sdk is included in the target part. I would really appreciate i=
f you could en-light me on this topic on how to include a package in the sd=
k.

BR
Mans Zigher


