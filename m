Return-Path: <ronan.gaillard@live.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E17BCE00D35; Tue, 28 May 2019 05:29:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ronan.gaillard[at]live.fr)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.64.15 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 71969 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 May 2019 05:28:58 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064015.outbound.protection.outlook.com [40.92.64.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28733E00C37
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 05:28:58 -0700 (PDT)
Received: from HE1EUR01FT006.eop-EUR01.prod.protection.outlook.com
	(10.152.0.55) by HE1EUR01HT034.eop-EUR01.prod.protection.outlook.com
	(10.152.0.231) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16;
	Mon, 27 May 2019 15:56:26 +0000
Received: from AM5PR0402MB2851.eurprd04.prod.outlook.com (10.152.0.55) by
	HE1EUR01FT006.mail.protection.outlook.com (10.152.1.228) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1922.16 via Frontend Transport; Mon, 27 May 2019 15:56:26 +0000
Received: from AM5PR0402MB2851.eurprd04.prod.outlook.com
	([fe80::25d9:f870:c142:5298]) by
	AM5PR0402MB2851.eurprd04.prod.outlook.com
	([fe80::25d9:f870:c142:5298%4]) with mapi id 15.20.1922.021;
	Mon, 27 May 2019 15:56:26 +0000
From: Ronan GAILLARD <ronan.gaillard@live.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: monit lcrypt issue
Thread-Index: AQHVFKS91ltIxYj4tUaAi3FOVwZ93Q==
Date: Mon, 27 May 2019 15:56:25 +0000
Message-ID: <AM5PR0402MB2851C4E800E1F2D93A0C950B9C1D0@AM5PR0402MB2851.eurprd04.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6PR05CA0014.eurprd05.prod.outlook.com
	(2603:10a6:6:14::27) To AM5PR0402MB2851.eurprd04.prod.outlook.com
	(2603:10a6:203:99::18)
x-incomingtopheadermarker: OriginalChecksum:19644C015D015A6FD3F3AE9523888C5FBBEE897956AC305C0EB546E6F016FF31;
	UpperCasedChecksum:FC5C921CFBF605E6B862E6F90E30E242F4D170922C1E98F4F46CDF757FFAE21B;
	SizeAsReceived:7258; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Apple Mail (2.3445.102.3)
x-tmn: [xWvrlY6zfhmIZajEta2fXjCnRf/davtG]
x-microsoft-original-message-id: <5EDB9550-357C-467D-909C-90E3BAF53E98@live.fr>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:HE1EUR01HT034; 
x-ms-traffictypediagnostic: HE1EUR01HT034:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-message-info: CRgFMYE9E7m5bVN0VpQI+TauklVaxdwL9auUYCSEp51Aj5hlQUfgG+ys8qLKRbALRkaue2ZCkbSGjnm0tlnbZGfnaalm45Bs0/14/S3UUncm0rK4sh5KM6E8qD3iFb30ltPby9HkFvgZeuxlWT3DYKcSCSGYNnxKqSEAsSjG7fHMTXI7r3ATDY2cGclz8Cmv
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b8640f0e-823f-4422-baae-08d6e2bbdf19
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 15:56:25.9559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT034
Cc: "martin.hammerchmidt@gmail.com" <martin.hammerchmidt@gmail.com>
Subject: monit lcrypt issue
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
X-List-Received-Date: Tue, 28 May 2019 12:29:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0402MB2851C4E800E1F2D93A0C950B9C1D0AM5PR0402MB2851_"

--_000_AM5PR0402MB2851C4E800E1F2D93A0C950B9C1D0AM5PR0402MB2851_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

bW9uaXQgbGNyeXB0IGlzc3VlOiAgRXhwb3NlIGxjcnlwdCB3aGlsZSBidWlsZGluZyBtb25pdCB3
aXRoIFlvY3RvIFRodWQNCg0KV2hlbiBidWlsZGluZyBtb25pdCB1c2luZyBZb2N0byBUaHVkIHRo
ZSBmb2xsb3dpbmcgZXJyb3IgcG9wcyB3aGlsZSBidWlsZGluZyBtb25pdCA1LjI1LjIgOg0KL3Vz
ci9zcmMvZGVidWcvbW9uaXQvNS4yNS4yLXIwL21vbml0LTUuMjUuMi9zcmMvdXRpbC5jOjE2NzU6
IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGNyeXB04oCZDQoNCk9sZGVyIHZlcnNpb25zIG9mIGds
aWJjIHN1cHBsaWVkIGEgbGliY3J5cHQgbGlicmFyeSBmb3IgdGhpcyBwdXJwb3NlLCBhbmQgZGVj
bGFyZWQgdGhlIGZ1bmN0aW9uIGluIDx1bmlzdGQuaD4uDQpOZXdlciB2ZXJzaW9ucyBvZiBnbGli
YyBkb24ndCBzdXBwbHkgbGliY3J5cHQuIEluIG9yZGVyIHRvIHByZXZlbnQgdGhlIHVuZGVmaW5l
ZCBsY3J5cHQgZXJyb3Igd2UgbmVlZCB0byBhZGQgdmlydHVhbC9jcnlwdCB0byB0aGUgcmVjaXBl
4oCZcyBERVBFTkRTDQoNClNpZ25lZC1vZmYtYnk6IFJvbmFuIEdhaWxsYXJkIDxyb25hbi5nYWls
bGFyZEBsaXZlLmZyPG1haWx0bzpyb25hbi5nYWlsbGFyZEBsaXZlLmZyPj4NCuKAlA0KDQpkaWZm
IC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL21vbml0L21vbml0XzUuMjUuMi5i
YiBiL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9tb25pdC9tb25pdF81LjI1LjIuYmINCmlu
ZGV4IGFiOWU5MjIuLjdhOTY3MjIgMTAwNjQ0DQotLS0gYS9tZXRhLWNnbC1jb21tb24vcmVjaXBl
cy1jZ2wvbW9uaXQvbW9uaXRfNS4yNS4yLmJiDQorKysgYi9tZXRhLWNnbC1jb21tb24vcmVjaXBl
cy1jZ2wvbW9uaXQvbW9uaXRfNS4yNS4yLmJiDQpAQCAtOSw3ICs5LDcgQEAgSE9NRVBBR0UgPSAi
aHR0cDovL21tb25pdC5jb20vbW9uaXQvIg0KIExJQ0VOU0UgPSAiQUdQTHYzIg0KIExJQ19GSUxF
U19DSEtTVU0gPSAiZmlsZTovL0NPUFlJTkc7bWQ1PWVhMTE2YTdkZWZhZjBlOTNiM2JiNzNiMmEz
NGEzZjUxIg0KDQotREVQRU5EUyA9ICJvcGVuc3NsIHpsaWIiDQorREVQRU5EUyA9ICJvcGVuc3Ns
IHpsaWIgdmlydHVhbC9jcnlwdCINCg0KIFNSQ19VUkkgPSAiXA0KICAgICAgICBodHRwOi8vbW1v
bml0LmNvbS9tb25pdC9kaXN0LyR7QlB9LnRhci5neiBcDQoNCg==

--_000_AM5PR0402MB2851C4E800E1F2D93A0C950B9C1D0AM5PR0402MB2851_
Content-Type: text/html; charset="utf-8"
Content-ID: <6874448CEED516429E2ED0871D92AF2A@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgbGluZS1icmVhazogYWZ0
ZXItd2hpdGUtc3BhY2U7IiBjbGFzcz0iIj4NCm1vbml0IGxjcnlwdCBpc3N1ZTogJm5ic3A7RXhw
b3NlIGxjcnlwdCB3aGlsZSBidWlsZGluZyBtb25pdCB3aXRoIFlvY3RvIFRodWQ8YnIgY2xhc3M9
IiI+DQo8YnIgY2xhc3M9IiI+DQpXaGVuIGJ1aWxkaW5nIG1vbml0IHVzaW5nIFlvY3RvIFRodWQg
dGhlIGZvbGxvd2luZyBlcnJvciBwb3BzIHdoaWxlIGJ1aWxkaW5nIG1vbml0IDUuMjUuMiA6PGJy
IGNsYXNzPSIiPg0KL3Vzci9zcmMvZGVidWcvbW9uaXQvNS4yNS4yLXIwL21vbml0LTUuMjUuMi9z
cmMvdXRpbC5jOjE2NzU6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGNyeXB04oCZPGJyIGNsYXNz
PSIiPg0KPGJyIGNsYXNzPSIiPg0KT2xkZXIgdmVyc2lvbnMgb2YgZ2xpYmMgc3VwcGxpZWQgYSZu
YnNwO2xpYmNyeXB0Jm5ic3A7bGlicmFyeSBmb3IgdGhpcyBwdXJwb3NlLCBhbmQgZGVjbGFyZWQg
dGhlIGZ1bmN0aW9uIGluJm5ic3A7Jmx0O3VuaXN0ZC5oJmd0Oy48YnIgY2xhc3M9IiI+DQpOZXdl
ciB2ZXJzaW9ucyBvZiBnbGliYyBkb24ndCBzdXBwbHkmbmJzcDtsaWJjcnlwdC4gSW4gb3JkZXIg
dG8gcHJldmVudCB0aGUgdW5kZWZpbmVkIGxjcnlwdCBlcnJvciB3ZSBuZWVkIHRvIGFkZCB2aXJ0
dWFsL2NyeXB0IHRvIHRoZSByZWNpcGXigJlzIERFUEVORFMNCjxkaXYgY2xhc3M9IiI+PGJyIGNs
YXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPlNpZ25lZC1vZmYtYnk6IFJvbmFuIEdhaWxs
YXJkICZsdDs8YSBocmVmPSJtYWlsdG86cm9uYW4uZ2FpbGxhcmRAbGl2ZS5mciIgY2xhc3M9IiI+
cm9uYW4uZ2FpbGxhcmRAbGl2ZS5mcjwvYT4mZ3Q7PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPuKAlDwv
ZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+
DQo8ZGl2IGNsYXNzPSIiPmRpZmYgLS1naXQgYS9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wv
bW9uaXQvbW9uaXRfNS4yNS4yLmJiIGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL21vbml0
L21vbml0XzUuMjUuMi5iYjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj5pbmRleCBhYjllOTIyLi43YTk2
NzIyIDEwMDY0NDwvZGl2Pg0KPGRpdiBjbGFzcz0iIj4tLS0gYS9tZXRhLWNnbC1jb21tb24vcmVj
aXBlcy1jZ2wvbW9uaXQvbW9uaXRfNS4yNS4yLmJiPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPiYjNDM7
JiM0MzsmIzQzOyBiL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9tb25pdC9tb25pdF81LjI1
LjIuYmI8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+QEAgLTksNyAmIzQzOzksNyBAQCBIT01FUEFHRSA9
ICZxdW90OzxhIGhyZWY9Imh0dHA6Ly9tbW9uaXQuY29tL21vbml0LyIgY2xhc3M9IiI+aHR0cDov
L21tb25pdC5jb20vbW9uaXQvPC9hPiZxdW90OzwvZGl2Pg0KPGRpdiBjbGFzcz0iIj4mbmJzcDtM
SUNFTlNFID0gJnF1b3Q7QUdQTHYzJnF1b3Q7PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPiZuYnNwO0xJ
Q19GSUxFU19DSEtTVU0gPSAmcXVvdDs8YSBocmVmPSJmaWxlOi8vQ09QWUlORzttZDU9ZWExMTZh
N2RlZmFmMGU5M2IzYmI3M2IyYTM0YTNmNTEiIGNsYXNzPSIiPmZpbGU6Ly9DT1BZSU5HO21kNT1l
YTExNmE3ZGVmYWYwZTkzYjNiYjczYjJhMzRhM2Y1MTwvYT4mcXVvdDs8L2Rpdj4NCjxkaXYgY2xh
c3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPi1ERVBFTkRTID0gJnF1
b3Q7b3BlbnNzbCB6bGliJnF1b3Q7PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPiYjNDM7REVQRU5EUyA9
ICZxdW90O29wZW5zc2wgemxpYiB2aXJ0dWFsL2NyeXB0JnF1b3Q7PC9kaXY+DQo8ZGl2IGNsYXNz
PSIiPjxiciBjbGFzcz0iIj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj4mbmJzcDtTUkNfVVJJID0g
JnF1b3Q7XDwvZGl2Pg0KPGRpdiBjbGFzcz0iIj4mbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsg
PGEgaHJlZj0iaHR0cDovL21tb25pdC5jb20vbW9uaXQvZGlzdC8ke0JQfS50YXIuZ3oiIGNsYXNz
PSIiPg0KaHR0cDovL21tb25pdC5jb20vbW9uaXQvZGlzdC8ke0JQfS50YXIuZ3o8L2E+IFw8L2Rp
dj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_AM5PR0402MB2851C4E800E1F2D93A0C950B9C1D0AM5PR0402MB2851_--
