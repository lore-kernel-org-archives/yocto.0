Return-Path: <Yair.Itzhaki@docusign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF6E5E00E12; Wed, 13 Nov 2019 10:06:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.73.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
	(mail-eopbgr730131.outbound.protection.outlook.com [40.107.73.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D067E00DAF
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 10:06:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=c0SmEgqEh3ipln9m92ZjQBpOPeWkJi7truNdCEpWrmHI2xqrewzK17O8GPwu3aScCS0GyWMrrzLGoZ543TLB8Viy6v5Ls0RFFJTlLxyT4ytUxhaXzd1BoYcKN3dVxFoyTfNmzOSFUT2S/PECmRyJu3oiYOiTYm+1wjhG+SZ/ojSTrCm+FHl9szLXp2hx7K+605mfwKww+PgzLkvYDZ6Nv9+RIIWW1rBQVpAsU9PBm6bGVCIpKwXuczTASvrNTPi5+fLfp6QyCCs6r6OGudMH3Y1aotcWZBkJGz6mnjE261f+DO/h0RE6YZb8UgZS2LwkiMD4621wFYEmI2LpQvsdag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=2RYVIfbXAGTeM0e8GLhNLlMhqGAwzCJuyc1OW8UYst4=;
	b=C35nXduho28ybM1DuZvZBW3cFdvErxd7Ierh8ERJ2fhtFYB/XXHaMC38qSj17TvqIZhOuTihOurQrVCSrSlOqVd6z/tpdlNI2Zer6Fq2if/TVq1vC7bbHEY3LwtCyf/ixXFJP02LmAybQWLWTO66Pgj36SpRa5ZbQ1i3O3+89Zpd1VH+SE204FRtml3jwK3Kr6n2i2AVR/iwJznDgf/j7Iz3SyHK3w23otJvw3jPgN8+kxhE6+V5oYN7KfF/eshMYK+vE8QDaIKz7im7d54MUd/rb8xZ2xm1NkyXJ7TBjKNS5pIRDyFvztcrdtVDF1Y0DwBn1J/S+kBLUZKZKVrH+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=docusign.com;
	dmarc=pass action=none header.from=docusign.com; 
	dkim=pass header.d=docusign.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=docusign.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=2RYVIfbXAGTeM0e8GLhNLlMhqGAwzCJuyc1OW8UYst4=;
	b=Re7V1dQZM3k3VRlvHvaZkYys20rGkYE1J8J32yciR36vREoVEpnEHmyEWhbVyNoHI3SmmXtpXyrTmzQMWFxOG+T3GYR6tKRs9qdbHR4tK334yopypEM/tdllQ96GQTxnR3v9TIK0VDKYOT0ZJ92yMb3lKNwR1ijL0ltyXD6jjNQ=
Received: from MN2PR04MB5487.namprd04.prod.outlook.com (20.178.245.76) by
	MN2PR04MB6111.namprd04.prod.outlook.com (20.178.245.145) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2430.24; Wed, 13 Nov 2019 18:06:12 +0000
Received: from MN2PR04MB5487.namprd04.prod.outlook.com
	([fe80::e9e2:44f6:e894:f884]) by
	MN2PR04MB5487.namprd04.prod.outlook.com
	([fe80::e9e2:44f6:e894:f884%3]) with mapi id 15.20.2430.027;
	Wed, 13 Nov 2019 18:06:12 +0000
From: Yair Itzhaki <Yair.Itzhaki@docusign.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: busybox + SELinux (warrior) - reboot issue
Thread-Index: AdWaTKs3acXyJWzBSh68HKMYHqUqZQ==
Date: Wed, 13 Nov 2019 18:06:12 +0000
Message-ID: <MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Yair.Itzhaki@docusign.com; 
x-originating-ip: [212.25.66.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bad49a9-0ad2-42f7-4830-08d768642b3f
x-ms-traffictypediagnostic: MN2PR04MB6111:
x-microsoft-antispam-prvs: <MN2PR04MB6111130583379FF8A100BCD5FA760@MN2PR04MB6111.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(396003)(136003)(376002)(39860400002)(346002)(199004)(189003)(2501003)(102836004)(7736002)(66946007)(6916009)(7696005)(6506007)(64756008)(66476007)(66446008)(66556008)(76116006)(26005)(186003)(86362001)(74316002)(478600001)(8936002)(6436002)(71190400001)(71200400001)(6306002)(5640700003)(52536014)(81166006)(54896002)(8676002)(14444005)(256004)(2351001)(66066001)(9686003)(25786009)(55016002)(1730700003)(4744005)(5660300002)(99286004)(14454004)(476003)(33656002)(3846002)(6116002)(81156014)(486006)(316002)(2906002)(790700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6111;
	H:MN2PR04MB5487.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: docusign.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /w2m5St2iHBjuPMhV22lmfU9MVfBiFVfibjcpGkOksE9H/16eWGxhtsHczbc7ekkIrXOrl1604NmoA0HxdDVtivDzJF2QRzDP2fek5982GFvd+Cb6yiQVf/a7A/CpU6GSgOfHjpPGHKpy67cI8SFzLZLLy5ylzLoyxfkYdsyr1N2SvM+HIUfSWtQM0K1lY3SZ/zXwdAQzd/UXIbOU3n/ElKls+aqjg7AXCDQ76008x/et6Ek0Ma13FcCVM6Ik9bACVsWAKcXzBVTqelTC2PlfJNTJKTkSswILp5CJfh/gCJ58thSz+sB7QnXz1lsHvtaJYlmv6y/i1Ptr9bErtgDeF2hMvcgx8bCgmWGWKlxZdErIsUfcOeVErKPn6/163+77M3Z4vlwU60FoZvfEqUksbLzH5ycOJdLvh9OvYRdNUo5oJq7Ve3odrPoso6+hhcf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: docusign.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bad49a9-0ad2-42f7-4830-08d768642b3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 18:06:12.5951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 237e701c-327f-4cad-a5a1-dda2412d89d9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r2DICTbLAhotfCmHEbGDLM6aPB+k2KxikR+72x6GOa6eXrmRH432y9X/K6ny6RteGL0vPCPrYgu5c7xeDMfR32BPZJJTHGZxgBawWdtF1pI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6111
Subject: busybox + SELinux (warrior) - reboot issue
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
X-List-Received-Date: Wed, 13 Nov 2019 18:06:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR04MB54874D8403DA4845FB08BF26FA760MN2PR04MB5487namp_"

--_000_MN2PR04MB54874D8403DA4845FB08BF26FA760MN2PR04MB5487namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgLA0KSSdtIHVzaW5nIFBva3kgKFdhcnJpb3IpLCB3aXRoIGJ1c3lib3ggKGFpbWluZyBhdCBh
IGxpZ2h0d2VpZ2h0IHN5c3RlbSkuDQpSZWNlbnRseSwgYWRkZWQgU0VMaW51eCB0byBteSBwcm9q
ZWN0IChieSBhZGRpbmcgInBhY2thZ2Vncm91cC1jb3JlLXNlbGludXgiIHRvIG15IGxvY2FsLmNv
bmYsIHdpdGggbWxzIHBvbGljeSkuDQoNCkJvb3RlZCB3aXRoICJzZWxpbnV4PTEgZW5mb3Jpbmc9
MCIuDQpUaGUgYXV0by1yZWxhYmVsaW5nIHJlcG9ydGVkIGFuIGVycm9yLCBzaW5jZSB0aGUgcm9v
dCBpcyBtb3VudGVkIFJPLg0KU28sIHBhdGNoZWQgc2xlbGludXgtYXV0b3JlbGFiZWwgc2NyaXB0
IHRvIG1vdW50ICIvIiBSVyBiZWZvcmUgcmVsYWJlbGluZy4NCg0KQm9vdGVkIGFnYWluLg0KVGhp
cyB0aW1lLCBzZWxpbnV4LWluaXQgaGFkIHRoZSBzYW1lIGlzc3VlICggLyBtb3VudGVkIFJPKS4N
ClBhdGNoZWQgdGhpcyBvbmUgYXMgd2VsbCwgYnV0IHRoZSBzeXN0ZW0ga2VlcHMgcmVib290aW5n
Og0KSXQgc2VlbXMgdGhhdCB0aGUgaW5pdCBwcm9jZXNzIGtlZXBzIGl0J3Mga2VybmVsX3QgY29u
dGV4dCwgd2hpY2ggZm9yY2VzIHJlLWxhYmVsaW5nLCByZWJvb3QgYW5kIHNvIG9u4oCmLiAocGVy
IHRoZSBzZWxpbnV4LWluaXQgc2NyaXB0KQ0KDQpRMTogSXMgU0VMaW51eCtidXN5Ym94IGEgdmFs
aWQgY29tYmluYXRpb24sIG9yIHNob3VsZCBJIHN3aXRjaCB0byBzeXN0ZW1kPw0KUTI6IFdoaWNo
IGNvbnRleHQgc2hvdWxkIHRoZSBpbml0IHByb2Nlc3MgZW5kIHVwIGFzPw0KDQpCVFcg4oCTIHRo
ZSBidWlsZCBvZiAiY29yZS1pbWFnZS1zZWxpbnV4IiBmYWlscywgd2l0aCB0aGUgZm9sbG93aW5n
IGVycm9yDQogICBDb3B5aW5nIGZpbGVzIGludG8gdGhlIGRldmljZTogc2V0X2lub2RlX3hhdHRy
OiBObyBkYXRhIGF2YWlsYWJsZSB3aGlsZSByZWFkaW5nIGF0dHJpYnV0ZSAic2VjdXJpdHkuc2Vs
aW51eCIgb2YgIm5ldHdvcmsiDQpBbnkgaWRlYT8NCg0KVGhhbmtzLA0KWWFpcg0KDQoNCg==

--_000_MN2PR04MB54874D8403DA4845FB08BF26FA760MN2PR04MB5487namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6eD0idXJuOnNjaGVtYXMtbWljcm9z
b2Z0LWNvbTpvZmZpY2U6ZXhjZWwiIHhtbG5zOm09Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5j
b20vb2ZmaWNlLzIwMDQvMTIvb21tbCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnL1RSL1JFQy1o
dG1sNDAiPg0KPGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9
InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQo8bWV0YSBuYW1lPSJHZW5lcmF0b3IiIGNvbnRl
bnQ9Ik1pY3Jvc29mdCBXb3JkIDE1IChmaWx0ZXJlZCBtZWRpdW0pIj4NCjxzdHlsZT48IS0tDQov
KiBGb250IERlZmluaXRpb25zICovDQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJDYW1icmlh
IE1hdGgiOw0KCXBhbm9zZS0xOjIgNCA1IDMgNSA0IDYgMyAyIDQ7fQ0KQGZvbnQtZmFjZQ0KCXtm
b250LWZhbWlseTpDYWxpYnJpOw0KCXBhbm9zZS0xOjIgMTUgNSAyIDIgMiA0IDMgMiA0O30NCi8q
IFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYuTXNv
Tm9ybWFsDQoJe21hcmdpbjowaW47DQoJbWFyZ2luLWJvdHRvbTouMDAwMXB0Ow0KCWZvbnQtc2l6
ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KYTpsaW5rLCBz
cGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6IzA1NjND
MTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29IeXBl
cmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Izk1NEY3MjsN
Cgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTE3DQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkFyaWFsIixzYW5zLXNl
cmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5
cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBh
Z2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjI1
aW4gMS4waW4gMS4yNWluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7
fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMg
djpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lm
IGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFw
IHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlm
XS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIj
OTU0RjcyIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+
SGkgLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5JJ20gdXNpbmcg
UG9reSAoV2FycmlvciksIHdpdGggYnVzeWJveCAoYWltaW5nIGF0IGEgbGlnaHR3ZWlnaHQgc3lz
dGVtKS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBz
dHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+UmVjZW50bHks
IGFkZGVkIFNFTGludXggdG8gbXkgcHJvamVjdCAoYnkgYWRkaW5nICZxdW90O3BhY2thZ2Vncm91
cC1jb3JlLXNlbGludXgmcXVvdDsgdG8gbXkgbG9jYWwuY29uZiwgd2l0aCBtbHMgcG9saWN5KS48
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+PG86cD4mbmJzcDs8L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPkJvb3RlZCB3aXRoICZxdW90O3NlbGlu
dXg9MSBlbmZvcmluZz0wJnF1b3Q7LjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5z
LXNlcmlmIj5UaGUgYXV0by1yZWxhYmVsaW5nIHJlcG9ydGVkIGFuIGVycm9yLCBzaW5jZSB0aGUg
cm9vdCBpcyBtb3VudGVkIFJPLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNl
cmlmIj5TbywgcGF0Y2hlZCBzbGVsaW51eC1hdXRvcmVsYWJlbCBzY3JpcHQgdG8gbW91bnQgJnF1
b3Q7LyZxdW90OyBSVyBiZWZvcmUgcmVsYWJlbGluZy48YnI+DQo8YnI+DQpCb290ZWQgYWdhaW4u
PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlRoaXMgdGltZSwgc2Vs
aW51eC1pbml0IGhhZCB0aGUgc2FtZSBpc3N1ZSAoIC8gbW91bnRlZCBSTykuPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5
OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlBhdGNoZWQgdGhpcyBvbmUgYXMgd2VsbCwg
YnV0IHRoZSBzeXN0ZW0ga2VlcHMgcmVib290aW5nOjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZx
dW90OyxzYW5zLXNlcmlmIj5JdCBzZWVtcyB0aGF0IHRoZSBpbml0IHByb2Nlc3Mga2VlcHMgaXQn
cyBrZXJuZWxfdCBjb250ZXh0LCB3aGljaCBmb3JjZXMgcmUtbGFiZWxpbmcsIHJlYm9vdCBhbmQg
c28gb27igKYuIChwZXIgdGhlIHNlbGludXgtaW5pdCBzY3JpcHQpPG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90
O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZx
dW90OyxzYW5zLXNlcmlmIj5RMTogSXMgU0VMaW51eCYjNDM7YnVzeWJveCBhIHZhbGlkIGNvbWJp
bmF0aW9uLCBvciBzaG91bGQgSSBzd2l0Y2ggdG8gc3lzdGVtZD88bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7
QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+UTI6IFdoaWNoIGNvbnRleHQgc2hvdWxkIHRoZSBpbml0
IHByb2Nlc3MgZW5kIHVwIGFzPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNl
cmlmIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+QlRX
IOKAkyB0aGUgYnVpbGQgb2YgJnF1b3Q7Y29yZS1pbWFnZS1zZWxpbnV4JnF1b3Q7IGZhaWxzLCB3
aXRoIHRoZSBmb2xsb3dpbmcgZXJyb3I8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj4mbmJzcDsgJm5ic3A7PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0Fy
aWFsJnF1b3Q7LHNhbnMtc2VyaWYiPkNvcHlpbmcgZmlsZXMgaW50byB0aGUgZGV2aWNlOiBzZXRf
aW5vZGVfeGF0dHI6IE5vIGRhdGEgYXZhaWxhYmxlIHdoaWxlIHJlYWRpbmcgYXR0cmlidXRlICZx
dW90O3NlY3VyaXR5LnNlbGludXgmcXVvdDsgb2YgJnF1b3Q7bmV0d29yayZxdW90OzxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZh
bWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5BbnkgaWRlYT88bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6
JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0Fy
aWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlRoYW5rcyw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVv
dDssc2Fucy1zZXJpZiI+WWFpcjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_MN2PR04MB54874D8403DA4845FB08BF26FA760MN2PR04MB5487namp_--
