Return-Path: <Yair.Itzhaki@docusign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CE14E00CD2; Mon,  5 Aug 2019 08:40:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.78.121 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr780121.outbound.protection.outlook.com [40.107.78.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F19A3E00A00
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2019 08:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=PZZyfI5nrVda++gXOViRqbsN9YQGsjJWgCtiobD1//3he4htRXcyCMA6znOlI9dNQQPsreH9lukoaXDYs5AMSRywCn+vlbt128hEU2ur5cK8nksdxMYBui3beLXI4a0MYpFVCpnbhcAq58aZTcuV90C+1HzU6IQHVyOLZBAG+EqtmBnbPIcOr7alpL8+585xnmiPERBHdVWkeJquKXWCSyH0lgONGYG+tiaS0edaNcNGyYqtrdyR+ICI47OPe9WzGN9fyGuocIElQ4ad6sfnpIRJViwrcC/8GpVf23F/TM8aL4XgUO69bL0JSrKmz/m0Ro3u+SrH8yGzPaKPM4WR2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=fKndf/bEjMgKUlOpY4yf3vHiF1O4kqEt7HOWNKoW/o4=;
	b=Eu8grsDXpECJvWcYgZsRYt4YmqvzS01/S4ScrLgK3MrNXcaveqOKlRDitWV2qwWK3lKjP4CnQJ6ac9TO+jF3341gfr0LW8mZRfFDmJg4PvmDFPvKHbHa1HRDVPJApgZzbdoCLw8pzZzjbgk/fD79ZkkLraH0hZARHyTuTZzYPrkWpCY+YRbeIaeWyOQB2dRRGo4fV0TlOQVTA2xJryxnD8WHjZEx0sZ5p7NrUvWD7tZSAPFQ1J9Aa3hsZ/tnynEcZWOyLOeU8+N4LOqvqAHRPNQJtW4w6EVi3uNZPyFAyJaesumt25DELQIihq16tzjkGwq9mjSmBFGKwi+f/01GHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=docusign.com;dmarc=pass action=none
	header.from=docusign.com;dkim=pass header.d=docusign.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=docusign.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=fKndf/bEjMgKUlOpY4yf3vHiF1O4kqEt7HOWNKoW/o4=;
	b=qaAS82J2o+BZO89VDZRzhO6MHwQkipoJqtsyGSdBPtb2NHtf1EWQJglqrZErp41HmYLJA5v2ELN88t9YkH0rPl1YFE5tavA/9k4U/1okspLXmxTh4/bgHIvQwjqRBr/n+n3UiCNeGE/dT2wmGsu0sBYXF2CFhoj4nE6spA/z/hE=
Received: from MN2PR04MB5487.namprd04.prod.outlook.com (20.178.245.76) by
	MN2PR04MB6686.namprd04.prod.outlook.com (10.186.147.208) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2136.16; Mon, 5 Aug 2019 15:40:44 +0000
Received: from MN2PR04MB5487.namprd04.prod.outlook.com
	([fe80::ed02:84cf:41f6:9cc3]) by
	MN2PR04MB5487.namprd04.prod.outlook.com
	([fe80::ed02:84cf:41f6:9cc3%5]) with mapi id 15.20.2136.018;
	Mon, 5 Aug 2019 15:40:44 +0000
From: Yair Itzhaki <Yair.Itzhaki@docusign.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Loading a Yocto kernel on Hyper-V hangs
Thread-Index: AdVLooJHSg0tmsC+Tkqp4Uj0VRUVkA==
Date: Mon, 5 Aug 2019 15:40:44 +0000
Message-ID: <MN2PR04MB5487E2DC52CC33F2DAD51E09FADA0@MN2PR04MB5487.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Yair.Itzhaki@docusign.com; 
x-originating-ip: [212.25.66.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c8d0d9a-708f-4438-4d97-08d719bb4794
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:MN2PR04MB6686; 
x-ms-traffictypediagnostic: MN2PR04MB6686:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MN2PR04MB66867C33F5442D36E0019EB5FADA0@MN2PR04MB6686.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(71200400001)(71190400001)(6916009)(186003)(2351001)(74316002)(76116006)(9686003)(6436002)(53936002)(5640700003)(86362001)(6306002)(52536014)(7696005)(54896002)(26005)(5660300002)(6506007)(55016002)(66066001)(2501003)(2906002)(8676002)(316002)(33656002)(102836004)(81156014)(81166006)(1730700003)(68736007)(14454004)(476003)(486006)(14444005)(966005)(66446008)(66476007)(478600001)(66946007)(4744005)(256004)(64756008)(25786009)(6116002)(99286004)(3846002)(8936002)(790700001)(7736002)(66556008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6686;
	H:MN2PR04MB5487.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: docusign.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HufDRPyNNRPH6/jNF0wbg+OmLTnKzxyHPj90mapiVBLIQEXuo4rcF7+B8cjYclAWk8TTnK1jq/Zi46BR4qcbPDovU6PiIs26uB/Tqd580avcEGXogDQuLxhz/rRjHlgLm/NZ76xUtlBb03dukFAqmi96zbpxiSyztjVbRV2ZfEVGYiBkSFOEKBv+RmwlvGYYuoZapeJoPj4CYSZxFMqDaTn71AgYoTE6JK5Kti/r1Vp1jHKwsiqTpBQuseucrepS4Duhn1VzHq4XMNVBLZW1kn+dqeJAhCMht6LnHtaDVZU5ID8dQ+nCESVQ11Jqde3XCUcPqneLRie9dSqPvaLNOfqofGB6JvFmo2onKHy/tBcNXIvsghG37uigceBO8bAT7VRzoAeW2d8CPfzxxYmctoWsShoC1A9Suu1kdTDJhkc=
MIME-Version: 1.0
X-OriginatorOrg: docusign.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c8d0d9a-708f-4438-4d97-08d719bb4794
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 15:40:44.5535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 237e701c-327f-4cad-a5a1-dda2412d89d9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yair.itzhaki@docusign.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6686
Subject: Loading a Yocto kernel on Hyper-V hangs
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
X-List-Received-Date: Mon, 05 Aug 2019 15:40:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR04MB5487E2DC52CC33F2DAD51E09FADA0MN2PR04MB5487namp_"

--_000_MN2PR04MB5487E2DC52CC33F2DAD51E09FADA0MN2PR04MB5487namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgLA0KSSdtIHVzaW5nIFBva3kgKFdhcnJpb3IpLg0KQnVpbHQgYSBQbGFpbiBWYW5pbGxhIHN5
c3RlbSBmb3IgYmFyZS1tZXRhbCB4NjQsIGFuZCBwdXQgaXQgb24gYSBoYXJkLWRyaXZlLg0KVGhl
IHN5c3RlbSBib290cyB3ZWxsIG9uIGFuIEludGVsIE1CLg0KDQpUaGVuLCBhZGRlZCBhIFdJQyBp
bWFnZSB0YXJnZXQsIGFuZCBjb252ZXJ0ZWQgdGhlIGRpc2sgaWFtZ2UgKHVzaW5nIHFlbXUtaW1n
KSBpbnRvIGEgVk1ESy4NClRoZSBpbWFnZSBib290cyB3ZWxsIChHcnViIHByb21wdCwgZm9sbG93
ZWQgYnkga2VybmVsIGxvYWRpbmcpIG9uIGEgV2luZG93cyBWbVdhcmUgKHRob3VnaCBJIGhhZCB0
byBhZGQgc29tZSBrZXJuZWwgZmVhdHVyZXMgdG8gbWFrZSB0aGUgcm9vdCBGUyBhdmFpbGFibGUp
Lg0KDQpOZXh0LCBJIGNvbnZlcnRlZCB0aGUgc2FtZSBpbWFnZSB0byBWSERYIHVzaW5nIHFlbXUt
aW1nLg0KQ29uZmlndXJlZCBhIEh5cGVyViBHZW4yIG1hY2hpbmUgKHRvIHVzZSBVRUZJKS4gU2Vj
dXJpdHkgaXMgdHVybmVkIG9mZi4NCkdydWIyIGxvYWRzIHdlbGw6DQpJIGdldCBhIEdydWIgcHJv
bXB0LCBzZWxlY3QgdGhlIGtlcm5lbCDigJMgYnV0IG9uY2Ugc2VsZWN0ZWQgLSB0aGUgc3lzdGVt
IGhhbmdzLg0KVHJpZWQgb24gZGlmZmVyZW50IFdpbmRvd3MgbWFjaGluZSAoV2luMTAsIFNlcnZl
ciAyMDE2KQ0KDQpXaGVuIHJlcGxhY2luZyB0aGUga2VybmVsIHdpdGggYSBzdG9jayBVYnVudHUg
a2VybmVsIOKAkyB0aGUga2VybmVsIGxvYWRzIHdlbGwuDQpUcmllZCBvdGhlciAocHJlLWJ1aWx0
KSBrZXJuZWxzIGZyb20gaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2Vz
L3lvY3RvL3lvY3RvLXgueS8uLi4uIOKAkyBzYW1lIG9kZCBiZWhhdmlvcjogR3J1YiBsb2Fkcywg
a2VybmVsIGRvZXMgbm90IGxvYWQuDQpUcmllZCBhIGRpZmZlcmVudCBjb21wcmVzc2lvbiAob3Ro
ZXIgdGhhbiBnemlwKSDigJMgc2FtZS4NCg0KQW55IGlkZWE/DQoNClRoYW5rcywNCllhaXINCg0K
DQo=

--_000_MN2PR04MB5487E2DC52CC33F2DAD51E09FADA0MN2PR04MB5487namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjoj
OTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcN
Cgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQXJpYWwi
LHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJp
Zjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEu
MGluIDEuMjVpbiAxLjBpbiAxLjI1aW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRT
ZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVk
ZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0t
PjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0K
PG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+
PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIg
dmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5z
LXNlcmlmIj5IaSAsPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPkkn
bSB1c2luZyBQb2t5IChXYXJyaW9yKS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fu
cy1zZXJpZiI+QnVpbHQgYSBQbGFpbiBWYW5pbGxhIHN5c3RlbSBmb3IgYmFyZS1tZXRhbCB4NjQs
IGFuZCBwdXQgaXQgb24gYSBoYXJkLWRyaXZlLjxicj4NClRoZSBzeXN0ZW0gYm9vdHMgd2VsbCBv
biBhbiBJbnRlbCBNQi48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlRoZW4sIGFk
ZGVkIGEgV0lDIGltYWdlIHRhcmdldCwgYW5kIGNvbnZlcnRlZCB0aGUgZGlzayBpYW1nZSAodXNp
bmcgcWVtdS1pbWcpIGludG8gYSBWTURLLjxicj4NClRoZSBpbWFnZSBib290cyB3ZWxsIChHcnVi
IHByb21wdCwgZm9sbG93ZWQgYnkga2VybmVsIGxvYWRpbmcpIG9uIGEgV2luZG93cyBWbVdhcmUg
KHRob3VnaCBJIGhhZCB0byBhZGQgc29tZSBrZXJuZWwgZmVhdHVyZXMgdG8gbWFrZSB0aGUgcm9v
dCBGUyBhdmFpbGFibGUpLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlm
Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+TmV4dCwg
SSBjb252ZXJ0ZWQgdGhlIHNhbWUgaW1hZ2UgdG8gVkhEWCB1c2luZyBxZW11LWltZy48YnI+DQpD
b25maWd1cmVkIGEgSHlwZXJWIEdlbjIgbWFjaGluZSAodG8gdXNlIFVFRkkpLiBTZWN1cml0eSBp
cyB0dXJuZWQgb2ZmLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5H
cnViMiBsb2FkcyB3ZWxsOjxicj4NCkkgZ2V0IGEgR3J1YiBwcm9tcHQsIHNlbGVjdCB0aGUga2Vy
bmVsIOKAkyBidXQgb25jZSBzZWxlY3RlZCAtIHRoZSBzeXN0ZW0gaGFuZ3MuPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5
OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlRyaWVkIG9uIGRpZmZlcmVudCBXaW5kb3dz
IG1hY2hpbmUgKFdpbjEwLCBTZXJ2ZXIgMjAxNik8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVv
dDssc2Fucy1zZXJpZiI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMt
c2VyaWYiPldoZW4gcmVwbGFjaW5nIHRoZSBrZXJuZWwgd2l0aCBhIHN0b2NrIFVidW50dSBrZXJu
ZWwg4oCTIHRoZSBrZXJuZWwgbG9hZHMgd2VsbC48YnI+DQpUcmllZCBvdGhlciAocHJlLWJ1aWx0
KSBrZXJuZWxzIGZyb20gaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2Vz
L3lvY3RvL3lvY3RvLXgueS8uLi4uIOKAkyBzYW1lIG9kZCBiZWhhdmlvcjogR3J1YiBsb2Fkcywg
a2VybmVsIGRvZXMgbm90IGxvYWQuPGJyPg0KVHJpZWQgYSBkaWZmZXJlbnQgY29tcHJlc3Npb24g
KG90aGVyIHRoYW4gZ3ppcCkg4oCTIHNhbWUuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7
LHNhbnMtc2VyaWYiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNl
cmlmIj5BbnkgaWRlYT88bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlRoYW5rcyw8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+WWFpcjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_MN2PR04MB5487E2DC52CC33F2DAD51E09FADA0MN2PR04MB5487namp_--
