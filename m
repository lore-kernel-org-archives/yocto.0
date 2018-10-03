Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62995E00B47; Thu,  4 Oct 2018 02:45:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.8.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 68453 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Oct 2018 02:45:06 PDT
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80082.outbound.protection.outlook.com [40.107.8.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 425B1E00ADD
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 02:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=nKDtyHGDVTSdb+7uYefXVyowrM/21rYOV1C0JVvpL5I=;
	b=ZfyiFXF2KbpqrhSnU+xQIsoVXvvLZGbSkfp4d3jv0zNzGDqIez2Hnn9YedrypS4z/A279qt3tR3I9Sx5fVj/NJrR8NloX/AA0h6ck4dpFoY7gW+gNwD+CfUsfPzsqK6i0EQg6Tfw7sjUAiuKvxOfXDvYsLiIqftiOsRBlpFTOiw=
Received: from VI1P192MB0477.EURP192.PROD.OUTLOOK.COM (52.134.27.10) by
	VI1P192MB0351.EURP192.PROD.OUTLOOK.COM (52.134.21.149) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.22; Wed, 3 Oct 2018 06:14:26 +0000
Received: from VI1P192MB0477.EURP192.PROD.OUTLOOK.COM
	([fe80::5866:beb6:770a:1549]) by VI1P192MB0477.EURP192.PROD.OUTLOOK.COM
	([fe80::5866:beb6:770a:1549%5]) with mapi id 15.20.1185.024;
	Wed, 3 Oct 2018 06:14:26 +0000
From: Jakob Hasse <jakob.hasse@qiio.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: git works standalone, but not within yocto for certain ssh uri
	format
Thread-Index: AQHUWuBWySPiPnldU0mpd2WwYmnagA==
Date: Wed, 3 Oct 2018 06:14:26 +0000
Message-ID: <bc248826-1929-09f6-f91d-9f16e8a4bc68@qiio.com>
References: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
In-Reply-To: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2a02:168:6955:1:34f6:f27d:74f0:2495]
x-clientproxiedby: HE1PR0502CA0001.eurprd05.prod.outlook.com
	(2603:10a6:3:e3::11) To VI1P192MB0477.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:803:36::10)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0351;
	6:kf0F/BPaAKnwUBT4jU9h6xAZ7YjPIl8FiTlJ5dCdzD304vme8l1dy62ocwGV6yCswxB1qScu/F3ZtLDJOoWcZAHaduDOfDkmMfibR3IJNLE856YC/cG1dNTqQ9Ct2bHpBr93xM9xqMt5leGJyelEzMlFyVq6m+W/YlmAJTwrQVtl9jNZhYEzYmwrdd4uTnc4El5HnqDOE2BOsj1SW6m+sGrFBYpMhGkofRbWXEppBctIHZpedCYrQuSx3WE65WykuzQUszY/tFlqfn31I+EcG4OsxlOWjL+lAa+ZMbTosR6QF1WQIxIu/ZfSxiWuV8Chmj+GoqY6k9F4xOak4fP/lXPLpXTi7fA591GUgmkQwRL1IBlR+1rB42OTKU0ANMvo2hmyvhu0tqNEaBhn0IV+u+KDQtFqrpH5pJIE/K4WVqsL96+MblTguls6Z5BkOV4d4zxs1LXaGuy47m0V3g1nMA==;
	5:KmGJrhPcBUGFOY7JSynEdO6fkkLyHigJSHKtAwtFNq7cKT4wmm8Z0P4qSfwZnoZtgA3OvZ5W/7DDnPlObWtvHfe8Qo5cnhE4P2LDjY6//Py4yumhPLcI9zun9rvBRzqRzUvtpz05oWc3/Ou032DxukqKu6eLyiKWJ5t08/38sEk=;
	7:cPjWn06j480WrC4Z/Xv73TJL0yetzaRclcXcCjZ9kiQ8cVc/DQcD7bd2pCi0MJC7FGh3xYiZSPWpCA7ea6e13ofJk7nWuQHjEjIUJe/3QZnecrCrOKGDcY0DLo5VERWW/zL2MgaZEwBskUAgA8CSwCnLQde48hOxKeKYnxCqGFkG7olk98CSULzoa/KJ+3j4NOBFnuYaVWIAvTkt6Wld3sIWKJyVldLPEN08by4qWWD7l0UkV2j9EochhgbMlbtD
x-ms-office365-filtering-correlation-id: 8fb7b6f7-794f-4456-6647-08d628f7786b
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0351; 
x-ms-traffictypediagnostic: VI1P192MB0351:
x-microsoft-antispam-prvs: <VI1P192MB03511585E20AEEF2F58D65BD84E90@VI1P192MB0351.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(217918111141313)(5213294742642)(209352067349851)(17755550239193)(163750095850);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(3231355)(944501410)(52105095)(149066)(150057)(6041310)(20161123564045)(20161123560045)(20161123562045)(2016111802025)(20161123558120)(6043046)(201708071742011)(7699051);
	SRVR:VI1P192MB0351; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0351; 
x-forefront-prvs: 0814A2C7A3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(39830400003)(366004)(396003)(376002)(136003)(189003)(199004)(53546011)(25786009)(6116002)(2900100001)(86362001)(486006)(31686004)(52116002)(2616005)(31696002)(76176011)(6436002)(8676002)(316002)(71200400001)(71190400001)(5660300001)(2906002)(5250100002)(4326008)(53386004)(106356001)(81156014)(36756003)(81166006)(6486002)(102836004)(386003)(6306002)(54896002)(46003)(186003)(6506007)(105586002)(97736004)(107886003)(7736002)(6916009)(446003)(11346002)(53936002)(68736007)(476003)(6512007)(99286004)(236005)(44832011)(508600001)(8936002)(14454004)(256004)(14444005)(606006)(47583001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1P192MB0351;
	H:VI1P192MB0477.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 7y3x0AVSy7I6gM731DOptzYWf3cukpKf0tyslyRoX41EtgcCNEk2R8mVZ4SO9ZMf1407TfHCdzeFOO/3/UMtaC9K2d0QujSUPgH6wSDuCxR2HndN7DWJl6f9bRDk9/MJ+2EW4UDQbe3kwJAfjQCJnMXl/JKj+KqVJs27Xncx0QISCKJozvzZZERwPAajRLD1r0Oc4e80j3QEFsJHtH8BsmstkF6H0pJtpOEI87k7bwnlSwW56JZk+DHgZYWcUUcTeyh8+FMvv4gQjx3UI0W5rWVwl+REaLl1ZnOUuRrW7/u0n2qg2aVfYQ3C6aoE3DtnWHJOkxp7NmGeLzHTlBHBEnY/pmhT76hVilcskdk9WLU=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fb7b6f7-794f-4456-6647-08d628f7786b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2018 06:14:26.6845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0351
Cc: Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: git works standalone, but not within yocto for certain ssh uri format
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
X-List-Received-Date: Thu, 04 Oct 2018 09:45:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bc248826192909f6f91d9f16e8a4bc68qiiocom_"

--_000_bc248826192909f6f91d9f16e8a4bc68qiiocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gYWdhaW4sDQoNCkkgbG9va2VkIHVwIHRoZSBnaXQgbWFuIHBhZ2UgYW5kIGNvbmZpcm1l
ZCB0aGF0IHRoZSBnaXZlbiBTU0ggVVJJIGlzIHZhbGlkLCBpbiBmYWN0LCB0aGUgInYzIiBpcyBq
dXN0IHBhcnQgb2YgdGhlIHBhdGguIE5vIG5lZWQgdG8gZXhwbGljaXRseSBzcGVjaWZ5IGEgcG9y
dCBudW1iZXIuIEFzIGFscmVhZHkgbWVudGlvbmVkLCBnaXQgd29ya3MgZmluZSB3aGVuIGNsb25p
bmcgc3RhbmRhbG9uZS4NCkZ1cnRoZXJtb3JlLCBpZiBJIGFkZCBhIHNsYXNoIGFmdGVyIHRoZSBj
b2xvbiwgdGhlIFlvY3RvIGZldGNoZXIgd29ya3MgZmluZToNCg0KU1JDX1VSSSA9ICJnaXRzbTov
L215LWNvbXBhbnlAdnMtc3NoLnZpc3VhbHN0dWRpby5jb206L3YzL215LWNvbXBhbnkvSW9UU29s
dXRpb25zL215LWFwcCI8bWFpbHRvOmdpdHNtOi8vbXktY29tcGFueUB2cy1zc2gudmlzdWFsc3R1
ZGlvLmNvbTp2My9teS1jb21wYW55L0lvVFNvbHV0aW9ucy9teS1hcHA+DQoNCklzIHRoZXJlIGEg
d29ya2Fyb3VuZCBmb3IgdGhpcyBwcm9ibGVtPyBIYXMgYW55b25lIGV4cGVyaWVuY2VkIHRoaXMg
YmVmb3JlPw0KDQpBbGwgdGhlIEJlc3QsDQpKYWtvYg0KDQpPbiAxOS4wOS4yMDE4IDExOjA1LCBK
YWtvYiBIYXNzZSB3cm90ZToNCkhlbGxvLA0KDQpJIGhhdmUgc2V2ZXJhbCBwcm9qZWN0cyBob3N0
ZWQgaW4gQXp1cmUgRGVwT3MgKGZvcm1lciBWaXN1YWwgU3R1ZGlvIG9ubGluZSkuDQpXaGVuIEkg
Z2xvbmUgdGhlbSB3aXRoIGdpdCBpbnNpZGUgbXkgaG9zdCBtYWNoaW5lIG9yIHRoZSBVYnVudHUg
MTYuMDQgY29udGFpbmVyLCBldmVyeXRoaW5nIHdvcmtzIGZpbmUuIFdoZW4gSSB1c2UgYml0YmFr
ZSB0byBidWlsZCB0aGUgcmVjaXBlIHdpdGggdGhlIHNhbWUgc3NoIHVyaSwgaXQgZmFpbHMgKHlv
Y3RvIGluc2lkZSBVYnVudHUgMTYuMDQgY29udGFpbmVyKS4NCg0KVGhlIFNDUl9VUkkgaW4gbXkg
cmVjaXBlIGxvb2tzIGxpa2UgdGhpczoNCg0KU1JDX1VSSSA9ICJnaXRzbTovL1hYWEB2cy1zc2gu
dmlzdWFsc3R1ZGlvLmNvbTp2My9YWFgtYXBwIjxtYWlsdG86Z2l0c206Ly9YWFhAdnMtc3NoLnZp
c3VhbHN0dWRpby5jb206djMvWFhYLWFwcD4NCg0KV2hhdCBzdHJpa2VzIG1lIGlzIHRoZSB3ZWly
ZCAidjMiIGluIHRoZSBhcHAgdXJpLCB3aXRoIHRoZSBvdGhlciBzc2ggdXJpcyBub3QgY29udGFp
bmluZyB0aGlzIGJ1dCB0aGUgc3NoIHBvcnQgKDIyKSBpbnN0ZWFkLCBJIGRpZG4ndCBoYXZlIGFu
eSBwcm9ibGVtIHNvIGZhci4NCkkgYWxzbyB1cGdyYWRlZCBnaXQgdG8gdmVyc2lvbiAyLjE3IG9y
IDIuMTkgb3Igc28gYWxyZWFkeS4NCg0KRG9lcyBhbnlvbmUgaGF2ZSBhIHNvbHV0aW9uIGZvciB0
aGlzPw0KVGhlIGFjdHVhbCByZWNpcGUgbG9va3MgbGlrZSB0aGlzOg0KDQpERVNDUklQVElPTiA9
ICJNeSBhcHAiDQpMSUNFTlNFID0gIkNMT1NFRCINClNFQ1RJT04gPSAiYXBwIg0KDQojIHV0aWwt
bGludXggaXMgZm9yIHNvbWUgdXVpZCBoZWFkZXJzDQpERVBFTkRTID0gIm9wZW5zc2wgY3VybCB1
LWJvb3QtZnctdXRpbHMgcmVzdGFydC1tZSB1dGlsLWxpbnV4Ig0KDQpTUkNfVVJJID0gImdpdHNt
Oi8vbXktY29tcGFueUB2cy1zc2gudmlzdWFsc3R1ZGlvLmNvbTp2My9teS1jb21wYW55L0lvVFNv
bHV0aW9ucy9teS1hcHAiPG1haWx0bzpnaXRzbTovL215LWNvbXBhbnlAdnMtc3NoLnZpc3VhbHN0
dWRpby5jb206djMvbXktY29tcGFueS9Jb1RTb2x1dGlvbnMvbXktYXBwPg0KU1JDX1VSSV9hcHBl
bmQgPSAiZmlsZTovL3N0YXJ0X215LWFwcC5zaCI8ZmlsZTovL3N0YXJ0X215LWFwcC5zaD4NCg0K
U1JDUkVWX3BuLW15LWFwcCA9ICIzNTZkZmIwOTVkNGIxNjIxMjBmNDM3NjljZDViMjNjN2Y1YTE1
YmQwIg0KI1NSQ1JFVl9wbi1zd2lzc2NvbS1hcHAgPSAiJHtBVVRPUkVWfSINClMgPSAiJHtXT1JL
RElSfS9naXQiDQoNCmluaGVyaXQgY21ha2UgdXBkYXRlLXJjLmQNCg0KSU5JVFNDUklQVF9OQU1F
ID0gInN0YXJ0X215LWFwcC5zaCINCklOSVRTQ1JJUFRfUEFSQU1TID0gInN0YXJ0IDIzIDMgNSAu
Ig0KDQpFWFRSQV9PRUNNQUtFID0gIiINCg0KZG9faW5zdGFsbCgpIHsNCiAgICBpbnN0YWxsIC1k
ICR7RH0ke2JpbmRpcn0NCiAgICBpbnN0YWxsIC1tIDA3NTUgJHtTfS9iaW4vbXktYXBwICR7RH0k
e2JpbmRpcn0vbXktYXBwDQogICAgY2hycGF0aCAtZCAke0R9JHtiaW5kaXJ9L215LWFwcA0KDQog
ICAgaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfS9pbml0LmQNCg0KICAgIGluc3RhbGwgLWMg
LW0gNzU1ICR7V09SS0RJUn0vJHtJTklUU0NSSVBUX05BTUV9ICR7RH0ke3N5c2NvbmZkaXJ9L2lu
aXQuZC8ke0lOSVRTQ1JJUFRfTkFNRX0NCn0NCg0KQWxsIHRoZSBCZXN0DQpKYWtvYg0KDQoNCi0t
DQpKYWtvYiBIYXNzZQ0KU29mdHdhcmUgRGV2ZWxvcGVtZW50DQoNCkU6IGpha29iLmhhc3NlQHFp
aW8uY2g8bWFpbHRvOmpha29iLmhhc3NlQHFpaW8uY2g+DQpUOiArNDEgNDQgNTUyIDAyIDY2DQoN
ClFpaW8gR21iSA0Kd3d3LnFpaW8uY29tPGh0dHA6Ly93d3cucWlpby5jb20+DQoNCg0KLS0NCkph
a29iIEhhc3NlDQpTb2Z0d2FyZSBEZXZlbG9wZW1lbnQNCg0KRTogamFrb2IuaGFzc2VAcWlpby5j
aDxtYWlsdG86amFrb2IuaGFzc2VAcWlpby5jaD4NClQ6ICs0MSA0NCA1NTIgMDIgNjYNCg0KUWlp
byBHbWJIDQp3d3cucWlpby5jb208aHR0cDovL3d3dy5xaWlvLmNvbT4NCg==

--_000_bc248826192909f6f91d9f16e8a4bc68qiiocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <2E9C738A926453478CDC8AD81228C401@EURP192.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHRleHQ9IiMwMDAwMDAi
IGJnY29sb3I9IiNGRkZGRkYiPg0KSGVsbG8gYWdhaW4sPGJyPg0KPGJyPg0KSSBsb29rZWQgdXAg
dGhlIGdpdCBtYW4gcGFnZSBhbmQgY29uZmlybWVkIHRoYXQgdGhlIGdpdmVuIFNTSCBVUkkgaXMg
dmFsaWQsIGluIGZhY3QsIHRoZSAmcXVvdDt2MyZxdW90OyBpcyBqdXN0IHBhcnQgb2YgdGhlIHBh
dGguIE5vIG5lZWQgdG8gZXhwbGljaXRseSBzcGVjaWZ5IGEgcG9ydCBudW1iZXIuIEFzIGFscmVh
ZHkgbWVudGlvbmVkLCBnaXQgd29ya3MgZmluZSB3aGVuIGNsb25pbmcgc3RhbmRhbG9uZS48YnI+
DQpGdXJ0aGVybW9yZSwgaWYgSSBhZGQgYSBzbGFzaCBhZnRlciB0aGUgY29sb24sIHRoZSBZb2N0
byBmZXRjaGVyIHdvcmtzIGZpbmU6PGJyPg0KPGJyPg0KU1JDX1VSSSA9IDxhIGNsYXNzPSJtb3ot
dHh0LWxpbmstcmZjMjM5NkUiIGhyZWY9Im1haWx0bzpnaXRzbTovL215LWNvbXBhbnlAdnMtc3No
LnZpc3VhbHN0dWRpby5jb206djMvbXktY29tcGFueS9Jb1RTb2x1dGlvbnMvbXktYXBwIj4NCiZx
dW90O2dpdHNtOi8vbXktY29tcGFueUB2cy1zc2gudmlzdWFsc3R1ZGlvLmNvbTovdjMvbXktY29t
cGFueS9Jb1RTb2x1dGlvbnMvbXktYXBwJnF1b3Q7PC9hPjxicj4NCjxicj4NCklzIHRoZXJlIGEg
d29ya2Fyb3VuZCBmb3IgdGhpcyBwcm9ibGVtPyBIYXMgYW55b25lIGV4cGVyaWVuY2VkIHRoaXMg
YmVmb3JlPzxicj4NCjxicj4NCkFsbCB0aGUgQmVzdCw8YnI+DQpKYWtvYjxicj4NCjxicj4NCjxk
aXYgY2xhc3M9Im1vei1jaXRlLXByZWZpeCI+T24gMTkuMDkuMjAxOCAxMTowNSwgSmFrb2IgSGFz
c2Ugd3JvdGU6PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJtaWQ6
NTAwZmIyNDgtYTM3OC1mYmM2LTZmYTktZTFkNjU4MzIwNjUxQHFpaW8uY29tIj4NCkhlbGxvLCA8
YnI+DQo8YnI+DQpJIGhhdmUgc2V2ZXJhbCBwcm9qZWN0cyBob3N0ZWQgaW4gQXp1cmUgRGVwT3Mg
KGZvcm1lciBWaXN1YWwgU3R1ZGlvIG9ubGluZSkuPGJyPg0KV2hlbiBJIGdsb25lIHRoZW0gd2l0
aCBnaXQgaW5zaWRlIG15IGhvc3QgbWFjaGluZSBvciB0aGUgVWJ1bnR1IDE2LjA0IGNvbnRhaW5l
ciwgZXZlcnl0aGluZyB3b3JrcyBmaW5lLiBXaGVuIEkgdXNlIGJpdGJha2UgdG8gYnVpbGQgdGhl
IHJlY2lwZSB3aXRoIHRoZSBzYW1lIHNzaCB1cmksIGl0IGZhaWxzICh5b2N0byBpbnNpZGUgVWJ1
bnR1IDE2LjA0IGNvbnRhaW5lcikuPGJyPg0KPGJyPg0KVGhlIFNDUl9VUkkgaW4gbXkgcmVjaXBl
IGxvb2tzIGxpa2UgdGhpczo8YnI+DQo8YnI+DQpTUkNfVVJJID0gPGEgY2xhc3M9Im1vei10eHQt
bGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmdpdHNtOi8vWFhYQHZzLXNzaC52aXN1YWxzdHVk
aW8uY29tOnYzL1hYWC1hcHAiIG1vei1kby1ub3Qtc2VuZD0idHJ1ZSI+DQomcXVvdDtnaXRzbTov
L1hYWEB2cy1zc2gudmlzdWFsc3R1ZGlvLmNvbTp2My9YWFgtYXBwJnF1b3Q7PC9hPjxicj4NCjxi
cj4NCldoYXQgc3RyaWtlcyBtZSBpcyB0aGUgd2VpcmQgJnF1b3Q7djMmcXVvdDsgaW4gdGhlIGFw
cCB1cmksIHdpdGggdGhlIG90aGVyIHNzaCB1cmlzIG5vdCBjb250YWluaW5nIHRoaXMgYnV0IHRo
ZSBzc2ggcG9ydCAoMjIpIGluc3RlYWQsIEkgZGlkbid0IGhhdmUgYW55IHByb2JsZW0gc28gZmFy
Ljxicj4NCkkgYWxzbyB1cGdyYWRlZCBnaXQgdG8gdmVyc2lvbiAyLjE3IG9yIDIuMTkgb3Igc28g
YWxyZWFkeS48YnI+DQo8YnI+DQpEb2VzIGFueW9uZSBoYXZlIGEgc29sdXRpb24gZm9yIHRoaXM/
PGJyPg0KVGhlIGFjdHVhbCByZWNpcGUgbG9va3MgbGlrZSB0aGlzOjxicj4NCjxicj4NCjxibG9j
a3F1b3RlPkRFU0NSSVBUSU9OID0gJnF1b3Q7TXkgYXBwJnF1b3Q7PGJyPg0KTElDRU5TRSA9ICZx
dW90O0NMT1NFRCZxdW90Ozxicj4NClNFQ1RJT04gPSAmcXVvdDthcHAmcXVvdDs8YnI+DQo8YnI+
DQojIHV0aWwtbGludXggaXMgZm9yIHNvbWUgdXVpZCBoZWFkZXJzPGJyPg0KREVQRU5EUyA9ICZx
dW90O29wZW5zc2wgY3VybCB1LWJvb3QtZnctdXRpbHMgcmVzdGFydC1tZSB1dGlsLWxpbnV4JnF1
b3Q7PGJyPg0KPGJyPg0KU1JDX1VSSSA9IDxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUi
IGhyZWY9Im1haWx0bzpnaXRzbTovL215LWNvbXBhbnlAdnMtc3NoLnZpc3VhbHN0dWRpby5jb206
djMvbXktY29tcGFueS9Jb1RTb2x1dGlvbnMvbXktYXBwIiBtb3otZG8tbm90LXNlbmQ9InRydWUi
Pg0KJnF1b3Q7Z2l0c206Ly9teS1jb21wYW55QHZzLXNzaC52aXN1YWxzdHVkaW8uY29tOnYzL215
LWNvbXBhbnkvSW9UU29sdXRpb25zL215LWFwcCZxdW90OzwvYT48YnI+DQpTUkNfVVJJX2FwcGVu
ZCA9IDxhIGNsYXNzPSJtb3otdHh0LWxpbmstcmZjMjM5NkUiIGhyZWY9ImZpbGU6Ly9zdGFydF9t
eS1hcHAuc2giIG1vei1kby1ub3Qtc2VuZD0idHJ1ZSI+DQomcXVvdDtmaWxlOi8vc3RhcnRfbXkt
YXBwLnNoJnF1b3Q7PC9hPjxicj4NCjxicj4NClNSQ1JFVl9wbi1teS1hcHAgPSAmcXVvdDszNTZk
ZmIwOTVkNGIxNjIxMjBmNDM3NjljZDViMjNjN2Y1YTE1YmQwJnF1b3Q7PGJyPg0KI1NSQ1JFVl9w
bi1zd2lzc2NvbS1hcHAgPSAmcXVvdDske0FVVE9SRVZ9JnF1b3Q7PGJyPg0KUyA9ICZxdW90OyR7
V09SS0RJUn0vZ2l0JnF1b3Q7PGJyPg0KPGJyPg0KaW5oZXJpdCBjbWFrZSB1cGRhdGUtcmMuZDxi
cj4NCjxicj4NCklOSVRTQ1JJUFRfTkFNRSA9ICZxdW90O3N0YXJ0X215LWFwcC5zaCZxdW90Ozxi
cj4NCklOSVRTQ1JJUFRfUEFSQU1TID0gJnF1b3Q7c3RhcnQgMjMgMyA1IC4mcXVvdDs8YnI+DQo8
YnI+DQpFWFRSQV9PRUNNQUtFID0gJnF1b3Q7JnF1b3Q7PGJyPg0KPGJyPg0KZG9faW5zdGFsbCgp
IHs8YnI+DQombmJzcDsmbmJzcDsmbmJzcDsgaW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9PGJyPg0K
Jm5ic3A7Jm5ic3A7Jm5ic3A7IGluc3RhbGwgLW0gMDc1NSAke1N9L2Jpbi9teS1hcHAgJHtEfSR7
YmluZGlyfS9teS1hcHA8YnI+DQombmJzcDsmbmJzcDsmbmJzcDsgY2hycGF0aCAtZCAke0R9JHti
aW5kaXJ9L215LWFwcDxicj4NCjxicj4NCiZuYnNwOyZuYnNwOyZuYnNwOyBpbnN0YWxsIC1kICR7
RH0ke3N5c2NvbmZkaXJ9L2luaXQuZDxicj4NCjxicj4NCiZuYnNwOyZuYnNwOyZuYnNwOyBpbnN0
YWxsIC1jIC1tIDc1NSAke1dPUktESVJ9LyR7SU5JVFNDUklQVF9OQU1FfSAke0R9JHtzeXNjb25m
ZGlyfS9pbml0LmQvJHtJTklUU0NSSVBUX05BTUV9PGJyPg0KfTxicj4NCjwvYmxvY2txdW90ZT4N
Cjxicj4NCkFsbCB0aGUgQmVzdDxicj4NCkpha29iPGJyPg0KPGJyPg0KPHByZSBjbGFzcz0ibW96
LXNpZ25hdHVyZSIgY29scz0iNzIiPi0tIA0KSmFrb2IgSGFzc2UNClNvZnR3YXJlIERldmVsb3Bl
bWVudA0KDQpFOiA8YSBjbGFzcz0ibW96LXR4dC1saW5rLWFiYnJldmlhdGVkIiBocmVmPSJtYWls
dG86amFrb2IuaGFzc2VAcWlpby5jaCIgbW96LWRvLW5vdC1zZW5kPSJ0cnVlIj5qYWtvYi5oYXNz
ZUBxaWlvLmNoPC9hPg0KVDogJiM0Mzs0MSA0NCA1NTIgMDIgNjYgDQoNClFpaW8gR21iSA0KPGEg
Y2xhc3M9Im1vei10eHQtbGluay1hYmJyZXZpYXRlZCIgaHJlZj0iaHR0cDovL3d3dy5xaWlvLmNv
bSIgbW96LWRvLW5vdC1zZW5kPSJ0cnVlIj53d3cucWlpby5jb208L2E+PC9wcmU+DQo8L2Jsb2Nr
cXVvdGU+DQo8YnI+DQo8cHJlIGNsYXNzPSJtb3otc2lnbmF0dXJlIiBjb2xzPSI3MiI+LS0gDQpK
YWtvYiBIYXNzZQ0KU29mdHdhcmUgRGV2ZWxvcGVtZW50DQoNCkU6IDxhIGNsYXNzPSJtb3otdHh0
LWxpbmstYWJicmV2aWF0ZWQiIGhyZWY9Im1haWx0bzpqYWtvYi5oYXNzZUBxaWlvLmNoIj5qYWtv
Yi5oYXNzZUBxaWlvLmNoPC9hPg0KVDogJiM0Mzs0MSA0NCA1NTIgMDIgNjYgDQoNClFpaW8gR21i
SA0KPGEgY2xhc3M9Im1vei10eHQtbGluay1hYmJyZXZpYXRlZCIgaHJlZj0iaHR0cDovL3d3dy5x
aWlvLmNvbSI+d3d3LnFpaW8uY29tPC9hPjwvcHJlPg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_bc248826192909f6f91d9f16e8a4bc68qiiocom_--
