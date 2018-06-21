Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40DA9E00C4D; Thu, 21 Jun 2018 12:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [210.160.252.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jun 2018 12:10:32 PDT
Received: from relmlie2.idc.renesas.com (relmlor3.renesas.com
	[210.160.252.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF817E00942
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 12:10:32 -0700 (PDT)
Received: from unknown (HELO relmlir3.idc.renesas.com) ([10.200.68.153])
	by relmlie2.idc.renesas.com with ESMTP; 22 Jun 2018 04:05:28 +0900
Received: from relmlii2.idc.renesas.com (relmlii2.idc.renesas.com
	[10.200.68.66])
	by relmlir3.idc.renesas.com (Postfix) with ESMTP id 600214532B;
	Fri, 22 Jun 2018 04:05:28 +0900 (JST)
X-IronPort-AV: E=Sophos;i="5.51,253,1526310000"; d="scan'208";a="284686573"
Received: from mail-hk2apc01lp0214.outbound.protection.outlook.com (HELO
	APC01-HK2-obe.outbound.protection.outlook.com) ([65.55.88.214])
	by relmlii2.idc.renesas.com with ESMTP/TLS/AES256-SHA256;
	22 Jun 2018 04:05:27 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ibkCZU2BNpRxec9mdaQM/JdsgiEPBOf86+7RceksnTk=;
	b=Sigo+PLTX2R2EgcxhrDW+e9xqCy4gnSgrh0PgcAFALqfr2/+3iDX2EiZBPZxztTQYrLaqfRCji9z/EvkxVVHPSIKjIOh+OWQn36z4SJG/ksszzueIt9eupcqt2+Kl2kYynwBqj3zJ+K/zEtqd+tSIiZb+vhjW76fd3S31ZUCKLY=
Received: from TY2PR01MB2025.jpnprd01.prod.outlook.com (52.133.182.143) by
	TY2PR01MB2570.jpnprd01.prod.outlook.com (20.177.98.140) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.19; Thu, 21 Jun 2018 19:05:21 +0000
Received: from TY2PR01MB2025.jpnprd01.prod.outlook.com
	([fe80::4841:f5ec:31b2:4058]) by
	TY2PR01MB2025.jpnprd01.prod.outlook.com
	([fe80::4841:f5ec:31b2:4058%2]) with mapi id 15.20.0863.016;
	Thu, 21 Jun 2018 19:05:21 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Thread-Topic: [yocto] porting gRPC into Yocto
Thread-Index: AQHUCYvnk8RX9nU2YEOTR0D23Ky7mKRrCJuAgAAFmYCAAAGZUA==
Date: Thu, 21 Jun 2018 19:05:21 +0000
Message-ID: <TY2PR01MB2025185F752EC4EB810AE88192760@TY2PR01MB2025.jpnprd01.prod.outlook.com>
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
	<CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
	<8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
	<CANmTPBYvf2etEnYgjUtZMUSvUy4uEU_oynRxQ2cHzT8eQVuQ3g@mail.gmail.com>
In-Reply-To: <CANmTPBYvf2etEnYgjUtZMUSvUy4uEU_oynRxQ2cHzT8eQVuQ3g@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TY2PR01MB2570;
	7:kuAKRqocnySNPuFJmLrNu5XqBrXImzbcBF2uNQPkYuCw2VDJnLKAs+bLtQyJUr6Ut2C7AEwpb1/9w9QJoW0c+qd92ouD9dWKQR3/3QIVm3lq8JrVUmNPAmjZPxRVKAl52oEX9P2k0geJUKWNsWBgWEt0QoMifSeDu2gr7HReDzSCfMdmTOx476Tkeuw2noo+XZzsOKdqthBxMit5d8Ocdt4V47gCtPuo3VTpYxSvOa50cBC3VmTl2isq+ILhC5Ve;
	20:0iZA7m+iEx15ctJYuJktBi/1uE7A7yGepbcyWd6qpEAhwCzq85EG/BWjq4BWpDZSPOAUt8kxATJymLZLMtvGrhJrmang509YSYGouD5YsruFJfk6hJfUoNcklI7l565WrZEjHQT7N8nFf13RVl4kdZB+9vTmcHIOfK7vJ0NcbaU=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e896f2a5-31c1-46ab-89a7-08d5d7a9efd9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:TY2PR01MB2570; 
x-ms-traffictypediagnostic: TY2PR01MB2570:
x-microsoft-antispam-prvs: <TY2PR01MB2570655D4CBA28B3B866673192760@TY2PR01MB2570.jpnprd01.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(209352067349851)(85827821059158);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231254)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(20161123562045)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:TY2PR01MB2570; BCL:0; PCL:0; RULEID:; SRVR:TY2PR01MB2570; 
x-forefront-prvs: 07106EF9B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39860400002)(366004)(396003)(346002)(376002)(189003)(199004)(105586002)(6916009)(966005)(3660700001)(14454004)(8676002)(3280700002)(106356001)(81156014)(53936002)(93886005)(6246003)(229853002)(3846002)(6116002)(4326008)(81166006)(7736002)(74316002)(305945005)(25786009)(478600001)(86362001)(68736007)(55016002)(44832011)(6506007)(6306002)(5250100002)(7696005)(76176011)(446003)(33656002)(476003)(102836004)(2900100001)(11346002)(186003)(26005)(9686003)(5660300001)(6436002)(97736004)(316002)(99286004)(8936002)(2906002)(66066001)(486006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TY2PR01MB2570;
	H:TY2PR01MB2025.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: clpoa5RERWxadpeiyB3PxgGKlhL1aKtZZ9VNpV02y6JC8+lpZsz/KoL+Onoj4jWVIWnL+GPf+rv59KNd9+zaUludPNyiAPvGNldhhbTpSDC+y9mTc6oR7G7g2fJpoOCJUpXq4OrDeH+r32Antm4qoVANOCmOOYVahv6n64PE6017A7ZplxiVaWyDk+bSayd3D/RNuzVgW/pH+OAvNTRGG4HI6ofyuiPbB22o/6nJgH4BTep2DMmWdBmxHtHH0dtcvXVU+RU14BM+Lg61GPtOCtlJjSi7DEFm4pdlSvKEdGcAIHmj18vCikVqOSkBK/t6l0/apd3nDBQlAOqZpRvdTw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e896f2a5-31c1-46ab-89a7-08d5d7a9efd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2018 19:05:21.4317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB2570
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 21 Jun 2018 19:10:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5j
ZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIFNpbW9uIENoYW1saWFuDQo+U2VudDog
MjEgSnVuZSAyMDE4IDE5OjUwDQo+VG86IFJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBn
bWFpbC5jb20+DQo+Q2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj5TdWJqZWN0OiBSZTogW3lv
Y3RvXSBwb3J0aW5nIGdSUEMgaW50byBZb2N0bw0KPg0KPlRoYW5rIHlvdSBldmVyeW9uZSBmb3Ig
c3VjaCBhIHByb21wdCByZXNwb25zZS4NCj4NCj5XaGF0IGRvIEkgZG8gd2l0aCB0aGUgaHR0cDov
L2NnaXQub3BlbmVtYmVkZGVkLm9yZy9tZXRhLW9wZW5lbWJlZGRlZC90cmVlL21ldGEtbmV0d29y
a2luZy9yZWNpcGVzLWRldnRvb2xzL2dycGMvZ3JwY18xLjguNS5iYj9oPW1hc3RlciByZWNpcGUg
ZmlsZSAoc29ycnkgPmZvciBteSBpZ25vcmFuY2UsIGl0IGhhcyBiZWVuIDEgZGF5IEkgYW0gdXNp
bmcgWW9jdG8pPw0KPg0KPlNpbW9uDQoNCkhpIFNpbW9uLA0KDQpUaGUgWW9jdG8gUHJvamVjdCBv
bmxpbmUgZG9jdW1lbnRhdGlvbiBzZXQgWzFdIGNvbnRhaW5zIHNvbWUgdXNlZnVsIGRldmVsb3Bt
ZW50IG1hbnVhbHMgdGhhdCBndWlkZSB5b3UgdGhyb3VnaCBzb21lDQpjb21tb24gdXNlIGNhc2Vz
IGZvciB1c2luZyBZb2N0by4gU3VjaCBhcyBhZGRpbmcgYSBwYWNrYWdlIHRvIGFuIGV4aXN0aW5n
IGltYWdlLg0KDQpUaGVyZSBoYXZlIGFsc28gYmVlbiBzb21lIGdvb2QgYm9va3Mgd3JpdHRlbiBv
biBlbWJlZGRlZCBkZXZlbG9wbWVudCB3aXRoIFlvY3RvLiBBIG1vcmUgcmVjZW50IG9uZSBpcyAN
CiJFbWJlZGRlZCBMaW51eCBTeXN0ZW1zIHdpdGggdGhlIFlvY3RvIFByb2plY3QiIGJ5IFJ1ZG9s
ZiBKLiBTdHJlaWYgZnJvbSBQcmVudGljZSBIYWxsLiBZb3UnbGwgZWFzaWx5IGdldCBhIHJldHVy
biBvbiB0aGUNCmludmVzdG1lbnQuDQoNClsxXSBodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3Jn
L2RvY3MvDQoNClJlZ2FyZHMNCg0KU3RldmUNCg==

