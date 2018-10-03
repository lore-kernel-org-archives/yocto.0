Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B09BE00B23; Wed,  3 Oct 2018 16:39:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.8.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 42840 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Oct 2018 16:39:33 PDT
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80049.outbound.protection.outlook.com [40.107.8.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D40DDE00ADD
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2018 16:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=XTL+9W5iuEa/XN2eB65R3XqE68LeypeOS77viFC0u+g=;
	b=BgDZzfXn//o935S0DpUwo0ds/0pq0lnZyUXlZzz2/lZSckqGPdvM5ceGK4DZGQR7KgYTslNk7o0004aAMZHBwIAhlFS7UiyVneqgDqq1CjQrCWYkrYuBMEjq0Sk++Nx4pZbVNRxK8hlpAKkX9D224G0xDn2yNa9djO1XlERLobI=
Received: from VI1P192MB0477.EURP192.PROD.OUTLOOK.COM (52.134.27.10) by
	VI1P192MB0285.EURP192.PROD.OUTLOOK.COM (52.134.23.156) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1207.18; Wed, 3 Oct 2018 07:03:32 +0000
Received: from VI1P192MB0477.EURP192.PROD.OUTLOOK.COM
	([fe80::5866:beb6:770a:1549]) by VI1P192MB0477.EURP192.PROD.OUTLOOK.COM
	([fe80::5866:beb6:770a:1549%5]) with mapi id 15.20.1185.024;
	Wed, 3 Oct 2018 07:03:32 +0000
From: Jakob Hasse <jakob.hasse@qiio.com>
To: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
Thread-Topic: [yocto] git works standalone, but not within yocto for weird
	Azure Devops ssh uri
Thread-Index: AQHUUOde5epY33GY40asLvpTMNYQK6T5Lgx0gBP+h4A=
Date: Wed, 3 Oct 2018 07:03:32 +0000
Message-ID: <7640d655-3c25-15e8-8484-7f8f9fbe2c73@qiio.com>
References: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
	<2EE3E45FEAD8944697CC29BFE83DD70F289B9403@VitalExchange.vitalograph.local>
In-Reply-To: <2EE3E45FEAD8944697CC29BFE83DD70F289B9403@VitalExchange.vitalograph.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2a02:168:6955:1:34f6:f27d:74f0:2495]
x-clientproxiedby: AM4PR08CA0072.eurprd08.prod.outlook.com
	(2603:10a6:205:2::43) To VI1P192MB0477.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:803:36::10)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0285;
	6:Wn/O7p7JBguMCEfJzxcbbWSp7XbhDwis9FLqVmdqRba4ryCKo3mlhn14exUFDp3PEJZre2s6TfV2dxwgoxOtv/KjyWIi5hoM9XOU+2fwMYCjbwIDravVSZQbwFe/6tWedjT8LKvCHR7c24FM6m9WVe07bzeeA3SXa6LwpKFH+5Es615iaV8vJoreb4Npc3ZyxyoE08OKt7ENELJgQ6Sx4j8lbVoObTwq9f4ZPaiIeu5NUZKLcXhFfq6TwMA0ejsvb0j7OS8Pc3WzaICf9Hg3SwumU2EH0h9mwQU5CCyYZYdIM0wzsXPA0aizFUMtPrwbkbPVa+klr5vxbF4E1lBfM7eeg+tEe2kaCjSvuNoZNaHiLaUip75D8oBkHM0qSAJAfWTYiCz6DGRK2U/djVIS1Z7o0/l56OtD9yfzqRqTyVPWcawrz3sMBS752los2VTyzdimcn91J+wQ0WQxgFEa3g==;
	5:KPLEMizU0CfAWR67+UlWBFFwSsV2gO25xbDt1L5EVVAjY4mvt4PuCqZrqhGsP0KIYSeCNIRzh2VH8Syu/FPKJi+JEvTrgzWk4kHjFzh6wxfHaziu5EKgDmDqVGToe+Fi/pasYOms0phwyvi1s4AtVqEHehG9fEltfjaAZOtaRM8=;
	7:wwmPk2pVMzqgS17QeR5dCC6yH23yVB+V2ieq80Zy79cO3AiW4fdOZUxTwEhWyiS1PJ+yri+Vo+lDvnRe/w9NlT3rTMAQ/WNmivKgk9O13xDfDZ1gc+ALltpnvhKU4iary2DvV5L4OoHl6ADq4+Ppf0YUpa1W1VXcxxm1cRTYKd9g5uz6snHNxMtRAgha7ARbj2830YWWtOb54rf1vW61pQreCGXx4yFDrK/0kWcNCnIEEdvgVbNsRnaTJv9DF956
x-ms-office365-filtering-correlation-id: 3b92e6b4-a622-48d6-642d-08d628fe5490
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0285; 
x-ms-traffictypediagnostic: VI1P192MB0285:
x-microsoft-antispam-prvs: <VI1P192MB0285DC02998FE4AD2BCAF5D784E90@VI1P192MB0285.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(5213294742642)(209352067349851)(17755550239193)(217918111141313)(163750095850)(158342451672863);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231355)(944501410)(52105095)(149066)(150057)(6041310)(2016111802025)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6043046)(201708071742011)(7699051);
	SRVR:VI1P192MB0285; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0285; 
x-forefront-prvs: 0814A2C7A3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(39830400003)(346002)(136003)(366004)(396003)(189003)(199004)(129404003)(46003)(31686004)(81156014)(81166006)(8676002)(8936002)(105586002)(54906003)(6916009)(106356001)(2616005)(446003)(11346002)(5660300001)(44832011)(5250100002)(486006)(476003)(6306002)(6512007)(508600001)(25786009)(229853002)(305945005)(14454004)(6486002)(6436002)(7736002)(6246003)(2900100001)(4326008)(97736004)(102836004)(15974865002)(6116002)(186003)(53936002)(68736007)(86362001)(99286004)(6506007)(386003)(53546011)(52116002)(71200400001)(71190400001)(316002)(36756003)(14444005)(76176011)(256004)(31696002)(2906002)(47583001)(21314002)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1P192MB0285;
	H:VI1P192MB0477.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: sxVWrODU/G0FiHmLglYZ6Wbhg0fYPETytZlXg8H+DtB3jLEhWQkAhyMOUA+BvgktwVJX/8ffhheAmim8HYgHwB8pVtSgX984gwdJssX6IBocVGyJuoqocm02qZErUXnSAxT1T754cxMYP1BZJvw6p+aJ+pn8accCMnMDQKp3ES+xYxgj+wo+6SDRGK19wK6z6n+ooioM87gJKwcKY/FADjUGg6okCjX3L88oep026prarwqx+5j9/37//aj8xaPvG2iNC9byACfi29S+chFP2Jgb1urgJW1V0ZiYgVmHW/bKugHArt/UmYyyvMN+wHSlcdewhHDnUfuSkbhTErTz16lgZbhFHUGGGLF9QSl8cNE=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b92e6b4-a622-48d6-642d-08d628fe5490
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2018 07:03:32.7929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0285
Cc: Yocto List <yocto@yoctoproject.org>,
	Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Re: git works standalone, but not within yocto for weird Azure Devops ssh uri
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
X-List-Received-Date: Wed, 03 Oct 2018 23:39:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FBBA7C27DDA5D244B314CFF365A22F09@EURP192.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

SGkgRXZhbiwNCg0KVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhlIGFuc3dlciENCkkgdHJpZWQg
eW91ciBmb3JtYXQgYXMgd2VsbCwgdW5mb3J0dW5hdGVseSBzdGlsbCBoYWQgdGhlIHNhbWUgcHJv
YmxlbS4gDQpJdCBsb29rcyB0byBtZSBhIGJpdCBsaWtlIGEgYnVnIGluIHRoZSBiaXRiYWtlL1lv
Y3RvIGNvZGUgcHJvY2Vzc2luZyB0aGUgDQpmZXRjaCBVUkwuDQoNCkJ1dCBJJ2xsIGludmVzdGln
YXRlIGZ1cnRoZXIgbGF0ZXIuDQoNCkFsbCB0aGUgQmVzdCwNCkpha29iDQoNCk9uIDIwLjA5LjIw
MTggMTU6NDksIEV2YW4gTydMb3VnaGxpbiB3cm90ZToNCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5v
cmcgW3lvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gb24gYmVoYWxmIG9mIEpha29iIEhh
c3NlIFtqYWtvYi5oYXNzZUBxaWlvLmNvbV0NCj4gU2VudDogMTkgU2VwdGVtYmVyIDIwMTggMTA6
MDUNCj4gVG86IFlvY3RvIExpc3QNCj4gQ2M6IEFuZHJpaSBWb2xvc2h5bg0KPiBTdWJqZWN0OiBb
eW9jdG9dIGdpdCB3b3JrcyBzdGFuZGFsb25lLCBidXQgbm90IHdpdGhpbiB5b2N0byBmb3Igd2Vp
cmQgQXp1cmUgRGV2b3BzIHNzaCB1cmkNCj4NCj4gSGVsbG8sDQo+DQo+IEkgaGF2ZSBzZXZlcmFs
IHByb2plY3RzIGhvc3RlZCBpbiBBenVyZSBEZXBPcyAoZm9ybWVyIFZpc3VhbCBTdHVkaW8gb25s
aW5lKS4NCj4gV2hlbiBJIGdsb25lIHRoZW0gd2l0aCBnaXQgaW5zaWRlIG15IGhvc3QgbWFjaGlu
ZSBvciB0aGUgVWJ1bnR1IDE2LjA0IGNvbnRhaW5lciwgZXZlcnl0aGluZyB3b3JrcyBmaW5lLiBX
aGVuIEkgdXNlIGJpdGJha2UgdG8gYnVpbGQgdGhlIHJlY2lwZSB3aXRoIHRoZSBzYW1lIHNzaCB1
cmksIGl0IGZhaWxzICh5b2N0byBpbnNpZGUgVWJ1bnR1IDE2LjA0IGNvbnRhaW5lcikuDQo+DQo+
IFRoZSBTQ1JfVVJJIGluIG15IHJlY2lwZSBsb29rcyBsaWtlIHRoaXM6DQo+DQo+IFNSQ19VUkkg
PSAiZ2l0c206Ly9YWFhAdnMtc3NoLnZpc3VhbHN0dWRpby5jb206djMvWFhYLWFwcCI8bWFpbHRv
OmdpdHNtOi8vWFhYQHZzLXNzaC52aXN1YWxzdHVkaW8uY29tOnYzL1hYWC1hcHA+DQo+DQo+IFdo
YXQgc3RyaWtlcyBtZSBpcyB0aGUgd2VpcmQgInYzIiBpbiB0aGUgYXBwIHVyaSwgd2l0aCB0aGUg
b3RoZXIgc3NoIHVyaXMgbm90IGNvbnRhaW5pbmcgdGhpcyBidXQgdGhlIHNzaCBwb3J0ICgyMikg
aW5zdGVhZCwgSSBkaWRuJ3QgaGF2ZSBhbnkgcHJvYmxlbSBzbyBmYXIuDQo+IEkgYWxzbyB1cGdy
YWRlZCBnaXQgdG8gdmVyc2lvbiAyLjE3IG9yIDIuMTkgb3Igc28gYWxyZWFkeS4NCj4NCj4gRG9l
cyBhbnlvbmUgaGF2ZSBhIHNvbHV0aW9uIGZvciB0aGlzPw0KPiBUaGUgYWN0dWFsIHJlY2lwZSBs
b29rcyBsaWtlIHRoaXM6DQo+DQo+IERFU0NSSVBUSU9OID0gIk15IGFwcCINCj4gTElDRU5TRSA9
ICJDTE9TRUQiDQo+IFNFQ1RJT04gPSAiYXBwIg0KPg0KPiAjIHV0aWwtbGludXggaXMgZm9yIHNv
bWUgdXVpZCBoZWFkZXJzDQo+IERFUEVORFMgPSAib3BlbnNzbCBjdXJsIHUtYm9vdC1mdy11dGls
cyByZXN0YXJ0LW1lIHV0aWwtbGludXgiDQo+DQo+IFNSQ19VUkkgPSAiZ2l0c206Ly9teS1jb21w
YW55QHZzLXNzaC52aXN1YWxzdHVkaW8uY29tOnYzL215LWNvbXBhbnkvSW9UU29sdXRpb25zL215
LWFwcCI8bWFpbHRvOmdpdHNtOi8vbXktY29tcGFueUB2cy1zc2gudmlzdWFsc3R1ZGlvLmNvbTp2
My9teS1jb21wYW55L0lvVFNvbHV0aW9ucy9teS1hcHA+DQo+IFNSQ19VUklfYXBwZW5kID0gImZp
bGU6Ly9zdGFydF9teS1hcHAuc2giPGZpbGU6Ly9zdGFydF9teS1hcHAuc2g+DQo+DQo+IFNSQ1JF
Vl9wbi1teS1hcHAgPSAiMzU2ZGZiMDk1ZDRiMTYyMTIwZjQzNzY5Y2Q1YjIzYzdmNWExNWJkMCIN
Cj4gI1NSQ1JFVl9wbi1zd2lzc2NvbS1hcHAgPSAiJHtBVVRPUkVWfSINCj4gUyA9ICIke1dPUktE
SVJ9L2dpdCINCj4NCj4gaW5oZXJpdCBjbWFrZSB1cGRhdGUtcmMuZA0KPg0KPiBJTklUU0NSSVBU
X05BTUUgPSAic3RhcnRfbXktYXBwLnNoIg0KPiBJTklUU0NSSVBUX1BBUkFNUyA9ICJzdGFydCAy
MyAzIDUgLiINCj4NCj4gRVhUUkFfT0VDTUFLRSA9ICIiDQo+DQo+IGRvX2luc3RhbGwoKSB7DQo+
ICAgICAgaW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9DQo+ICAgICAgaW5zdGFsbCAtbSAwNzU1ICR7
U30vYmluL215LWFwcCAke0R9JHtiaW5kaXJ9L215LWFwcA0KPiAgICAgIGNocnBhdGggLWQgJHtE
fSR7YmluZGlyfS9teS1hcHANCj4NCj4gICAgICBpbnN0YWxsIC1kICR7RH0ke3N5c2NvbmZkaXJ9
L2luaXQuZA0KPg0KPiAgICAgIGluc3RhbGwgLWMgLW0gNzU1ICR7V09SS0RJUn0vJHtJTklUU0NS
SVBUX05BTUV9ICR7RH0ke3N5c2NvbmZkaXJ9L2luaXQuZC8ke0lOSVRTQ1JJUFRfTkFNRX0NCj4g
fQ0KPg0KPiBBbGwgdGhlIEJlc3QNCj4gSmFrb2INCj4NCj4NCj4gLS0NCj4gSmFrb2IgSGFzc2UN
Cj4gU29mdHdhcmUgRGV2ZWxvcGVtZW50DQo+DQo+IEU6IGpha29iLmhhc3NlQHFpaW8uY2g8bWFp
bHRvOmpha29iLmhhc3NlQHFpaW8uY2g+DQo+IFQ6ICs0MSA0NCA1NTIgMDIgNjYNCj4NCj4gUWlp
byBHbWJIDQo+IHd3dy5xaWlvLmNvbTxodHRwOi8vd3d3LnFpaW8uY29tPg0KPg0KPg0KPiBIaSBK
YWNvYiwNCj4NCj4gSSBoYWQgYSBzaW1pbGFyIGlzc3VlIHNldHRpbmctdXAgbXkgcmVjaXBlIHJl
Y2VudGx5Lg0KPg0KPiBPdXIgZ2l0IHNlcnZlciB1c2VzIHNzaCBrZXkgYXV0aGVudGljYXRpb24g
YW5kIGkgZmluYWxseSBnb3QgaXQgd29ya2luZyB1c2luZyB0aGUgZm9sbG93aW5nIFNSQ19VUkkg
aW4gbXkgcmVjaXBlOg0KPiBTUkNfVVJJID0gImdpdDovL3VzZXJAc2VydmVyOlByb2plY3ROYW1l
O3Byb3RvY29sPWZpbGU7YnJhbmNoPURldkJyYW5jaCINCj4NCj4NCj4gSG9wZSB0aGlzIGhlbHBz
LA0KPg0KPiBSZWdhcmRzLA0KPiBFdmFuDQo+DQo+IC4NCj4NCg0KLS0gDQpKYWtvYiBIYXNzZQ0K
U29mdHdhcmUgRGV2ZWxvcGVtZW50DQoNCkU6IGpha29iLmhhc3NlQHFpaW8uY2gNClQ6ICs0MSA0
NCA1NTIgMDIgNjYNCg0KUWlpbyBHbWJIDQp3d3cucWlpby5jb20NCg0K

