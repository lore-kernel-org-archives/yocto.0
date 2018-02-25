Return-Path: <josiasinacio@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF22BE00EB4; Sun, 25 Feb 2018 10:53:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josiasinacio[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.10.62 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 18142 seconds by postgrey-1.32 at yocto-www;
	Sun, 25 Feb 2018 10:53:48 PST
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092010062.outbound.protection.outlook.com [40.92.10.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55A14E00D91
	for <yocto@yoctoproject.org>; Sun, 25 Feb 2018 10:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=HIVzGjEeYvBjvuLD6JubrzIxSf3RfNr1K2mT6NeHUac=;
	b=K5noEYMKXOTKtO+7UEMXnv8U9kq/k7f3oFKNRlE16vSN4Tqarfm9xdFZV5/kKe0av7VazsYWyXREAYU5zIe2S/mZbujIR47Wkv6zpw1jR22yII3oWM0vcez1mX3OXwcy9dl0eL8AAYZE/tpu1Wt48mmCbR6UKxvXykZeVh84gEFtRxEKJSEair+ldqS2GvVy3GT7rp72rWYGO2YVEx3GML+fU5UwAEi+m4fnw50AdhEw7N6f2HsteB0C5DkANoQhmIGo1zS8whdfMCuOBIuswMyjgx42rq/M3MJsj5H7YuoRlrl32JnXeDoQC0X+Mk1cKjmn5FNjXzz2w1tjoMoilw==
Received: from SN1NAM04FT029.eop-NAM04.prod.protection.outlook.com
	(10.152.88.58) by SN1NAM04HT248.eop-NAM04.prod.protection.outlook.com
	(10.152.89.100) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.506.19;
	Sun, 25 Feb 2018 08:19:35 +0000
Received: from RO1P152MB1051.LAMP152.PROD.OUTLOOK.COM (10.152.88.55) by
	SN1NAM04FT029.mail.protection.outlook.com (10.152.88.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.506.19 via Frontend Transport; Sun, 25 Feb 2018 08:19:35 +0000
Received: from RO1P152MB1051.LAMP152.PROD.OUTLOOK.COM
	([fe80::38dd:d068:dd4a:8643]) by RO1P152MB1051.LAMP152.PROD.OUTLOOK.COM
	([fe80::38dd:d068:dd4a:8643%13]) with mapi id 15.20.0527.021;
	Sun, 25 Feb 2018 08:19:35 +0000
From: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Are environment variables specified in BB_ENV_EXTRAWHITE passed
	down to scripts called by recipies?
Thread-Index: AQHTrhFeuaBwmmtEHUe3PBIMtO+GrA==
Date: Sun, 25 Feb 2018 08:19:35 +0000
Message-ID: <RO1P152MB105195FB477718485619D864C1C20@RO1P152MB1051.LAMP152.PROD.OUTLOOK.COM>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E1290B9E5237053E05262825CAB635501BEAEF311B32BCE55098BEB3A7209752;
	UpperCasedChecksum:7B8A888512A0841108E801C96FBD3E3FEA2F6CF0FE24562CEF54EC4E909004EE;
	SizeAsReceived:7032; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [NFxw03gUib767BMYJ/ggudXZAgVMVCKi]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM04HT248;
	6:gBUrL2+QWZlj9F/UJIQoCduZNqvGq2vE0ry6Yo45CVej+VUEw9I+4l1xwMuouqgXxE8l+O/nl3jAf6gONrn245gatNi5H/U9pnTvzj9pxn/9T/7NxU6ecCfU56F8XM48TIExHAA9u28labew/n9ePcWe7LM1jZ+pRG55ag+eP5DaO58WVCiNldUMG6/38fUqKeqfoGvyVD+sT5fEfjNAGIuFKV7HHZ7BN3g/2EkrweE3DlJyzj6kEQ1Eu7AuUgPMN0NIg44naPYZIieu1Yw+963piSMN0Nuy0YSPTXzXOKseuepxGD6gsmOzmVcErwFzM/nHQZ3raIgcmO31GH4eIFpfE+0BtqHeU1hVp/4NyHM=;
	5:4Tjmb9Yrt62ixQF/MZdBsvp+H/KgwnycVsczdhLejM7K+Dv0spkY4wq/QA1VgQ27CJu8nLmz3KTY7hS9cllhbqsh94V83Gvi+MPc5nKRBFMLP96pp3BjORc5i6r4LueJBymgmtw1gbgvjGxuktTZSXVlcR8+O0yt0aeSVrASUpg=;
	24:65a8S4xk7nd/35WFeQjaYSRX6OMlT3VF8UXdn1vc6TIQuTgSBP6MQZ4Rbr59RiBFdvqTVqNAjAdWtoNZMwWZNGVQRPJ2JanQdUWHKT5ZzJ4=;
	7:hIBxcvjktktszLMX9GCm6aenZnvAUwzS3CWEThTLPg1RRHLPlh47e7OVian7hZROJvaJ8nPHhfT0EoccLY93addYEGQVXYImwwHuAG0PgCXjDOGzsdNMjlZc2GZ2eVpeiiAwEUFAxY+r2Cs1i72gCTXm5mPhCqOeFijBA0mgwWAsErsfnNfisLTPAII/lh7kx5K+UoLPXekJm+okpIjDXprvownK0bhbwEdc2lpXUMd8y9N0917hiiQ8QCc4OnST
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:SN1NAM04HT248; 
x-ms-traffictypediagnostic: SN1NAM04HT248:
x-ms-office365-filtering-correlation-id: b963914c-b31d-42e5-c81d-08d57c2880d6
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM04HT248; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM04HT248; 
x-forefront-prvs: 05947791E4
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SN1NAM04HT248;
	H:RO1P152MB1051.LAMP152.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b963914c-b31d-42e5-c81d-08d57c2880d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2018 08:19:35.1138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT248
Subject: Are environment variables specified in BB_ENV_EXTRAWHITE passed down to scripts called by recipies?
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
X-List-Received-Date: Sun, 25 Feb 2018 18:53:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_RO1P152MB105195FB477718485619D864C1C20RO1P152MB1051LAMP_"

--_000_RO1P152MB105195FB477718485619D864C1C20RO1P152MB1051LAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZm9sa3MsDQoNCkkgaGF2ZW7igJl0IGZvdW5kIG11Y2ggZG9jdW1lbnRhdGlvbiBvbiB0aGlz
IGJlaGF2aW91ci4gTm90ZSB0aGF0IHRoaXMgaXMgZm9yIFlvY3RvIHJlbGVhc2UgMi40IFJvY2tv
Lg0KDQpMZXTigJlzIHNheSBJIGhhdmUgYSAuYmIgcmVjaXBlIHdpdGggdGhlIGZvbGxvd2luZyB0
YXNrOg0KDQpkb19zb21ldGhpbmcoKSB7DQogICBjZCAke1N9DQogICAuL215X3NjcmlwdC5zaA0K
fQ0KDQpBbmQgdGhhdCDigJxteV9zY3JpcHQuc2jigJ0gaXMgZG9pbmcgYSBnaXQgY2xvbmUuIEkg
aGF2ZSBub3RpY2VkIHRoYXQgdGhlIGNsb25lIGlzIGZhaWxpbmcgZHVlIHRvIFNTSF9BVVRIX1NP
Q0sgbm90IGJlaW5nIHNldCwgZXZlbiB0aG91Z2ggaXQgaXMgcGFydCBvZiBCQl9FTlZfRVhUUkFX
SElURS4gSWYgSSBlY2hvICRTU0hfQVVUSF9TT0NLIGFuZCAkQkJfRU5WX0VYVFJBV0hJVEUgdmFs
dWVzIGluIOKAnG15X3NjcmlwdC5zaOKAnSwgdGhleSBhcmUgYm90aCBlbXB0eS4NCg0KSG93ZXZl
ciBpZiBJIGFkZCB0aGlzIGxpbmUgaW4gdGhlIHJlY2lwZSwgZXZlcnl0aGluZyB3b3JrcyBmaW5l
IGFuZCB0aGUgZWNob2VkIHZhbHVlIG9mICRTU0hfQVVUSF9TT0NLIHNob3dzIHVwIGNvcnJlY3Rs
eSBpbiDigJxteV9zY3JpcHQuc2giOg0KDQpleHBvcnQgU1NIX0FVVEhfU09DSw0KDQpUaGF0IHNh
bWUgcmVjaXBlIHdpdGhvdXQgdGhlIGV4cG9ydCBsaW5lIHVzZWQgdG8gd29yayBmaW5lIGJlZm9y
ZSBmb3IgYSBkaWZmZXJlbnQgcHJvamVjdCB0aGF0IHVzZXMgYW4gb2xkZXIgdmVyc2lvbiBvZiBZ
b2N0byAoTW9ydHkgMi4yIEkgYmVsaWV2ZSkuDQoNClNvOiBCeSBkZWZhdWx0LCBzaG91bGQg4oCc
bXlfc2NyaXB0LnNo4oCdIGJlIHNlZWluZyB0aGF0IGtleSB2YWx1ZSB3aXRob3V0IHRoZSBuZWVk
IG9mIHRoZSBleHBvcnQgbGluZSBtZW50aW9uZWQgYWJvdmU/IElmIG5vdCwgdGhlbiB3YXMgdGhh
dCBhIHJlY2VudCBjaGFuZ2Ugc2luY2UgaXQgd29ya2VkIG9uIHByZXZpb3VzIFlvY3RvIHJlbGVh
c2VzPw0KDQpUaGFua3MNCg==

--_000_RO1P152MB105195FB477718485619D864C1C20RO1P152MB1051LAMP_
Content-Type: text/html; charset="utf-8"
Content-ID: <89C32586FD2DD149A7470466BF2709A6@LAMP152.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsiIGNsYXNzPSIiPg0KPGRpdiBjbGFzcz0iIj5IaSBmb2xr
cyw8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNz
PSIiPkkgaGF2ZW7igJl0IGZvdW5kIG11Y2ggZG9jdW1lbnRhdGlvbiBvbiB0aGlzIGJlaGF2aW91
ci4gTm90ZSB0aGF0IHRoaXMgaXMgZm9yIFlvY3RvIHJlbGVhc2UgMi40IFJvY2tvLjwvZGl2Pg0K
PGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+TGV04oCZ
cyBzYXkgSSBoYXZlIGEgLmJiIHJlY2lwZSB3aXRoIHRoZSBmb2xsb3dpbmcgdGFzazo8L2Rpdj4N
CjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiIGNs
YXNzPSIiPjxpIGNsYXNzPSIiPmRvX3NvbWV0aGluZygpIHs8L2k+PC9iPjwvZGl2Pg0KPGRpdiBj
bGFzcz0iIj48YiBjbGFzcz0iIj48aSBjbGFzcz0iIj4mbmJzcDsgJm5ic3A7Y2QgJHtTfTwvaT48
L2I+PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiIGNsYXNzPSIiPjxpIGNsYXNzPSIiPiZuYnNwOyAm
bmJzcDsuL215X3NjcmlwdC5zaDwvaT48L2I+PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiIGNsYXNz
PSIiPjxpIGNsYXNzPSIiPn08L2k+PC9iPjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9
IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+QW5kIHRoYXQg4oCcbXlfc2NyaXB0LnNo4oCdIGlz
IGRvaW5nIGEgZ2l0IGNsb25lLiBJIGhhdmUgbm90aWNlZCB0aGF0IHRoZSBjbG9uZSBpcyBmYWls
aW5nIGR1ZSB0byBTU0hfQVVUSF9TT0NLIG5vdCBiZWluZyBzZXQsIGV2ZW4gdGhvdWdoIGl0IGlz
IHBhcnQgb2YgQkJfRU5WX0VYVFJBV0hJVEUuIElmIEkgZWNobyAkU1NIX0FVVEhfU09DSyBhbmQg
JEJCX0VOVl9FWFRSQVdISVRFIHZhbHVlcyBpbiDigJxteV9zY3JpcHQuc2jigJ0sIHRoZXkNCiBh
cmUgYm90aCBlbXB0eS48L2Rpdj4NCjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+
DQo8ZGl2IGNsYXNzPSIiPkhvd2V2ZXIgaWYgSSBhZGQgdGhpcyBsaW5lIGluIHRoZSByZWNpcGUs
IGV2ZXJ5dGhpbmcgd29ya3MgZmluZSBhbmQgdGhlIGVjaG9lZCB2YWx1ZSBvZiAkU1NIX0FVVEhf
U09DSyBzaG93cyB1cCBjb3JyZWN0bHkgaW4g4oCcbXlfc2NyaXB0LnNoJnF1b3Q7OjwvZGl2Pg0K
PGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+PGIgY2xh
c3M9IiI+PGkgY2xhc3M9IiI+ZXhwb3J0IFNTSF9BVVRIX1NPQ0s8L2k+PC9iPjwvZGl2Pg0KPGRp
diBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+VGhhdCBzYW1l
IHJlY2lwZSB3aXRob3V0IHRoZSBleHBvcnQgbGluZSB1c2VkIHRvIHdvcmsgZmluZSBiZWZvcmUg
Zm9yIGEgZGlmZmVyZW50IHByb2plY3QgdGhhdCB1c2VzIGFuIG9sZGVyIHZlcnNpb24gb2YgWW9j
dG8gKE1vcnR5IDIuMiBJIGJlbGlldmUpLjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9
IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+U286IEJ5IGRlZmF1bHQsIHNob3VsZCDigJxteV9z
Y3JpcHQuc2jigJ0gYmUgc2VlaW5nIHRoYXQga2V5IHZhbHVlIHdpdGhvdXQgdGhlIG5lZWQgb2Yg
dGhlIGV4cG9ydCBsaW5lIG1lbnRpb25lZCBhYm92ZT8gSWYgbm90LCB0aGVuIHdhcyB0aGF0IGEg
cmVjZW50IGNoYW5nZSBzaW5jZSBpdCB3b3JrZWQgb24gcHJldmlvdXMgWW9jdG8gcmVsZWFzZXM/
PC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxiciBjbGFzcz0iIj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0i
Ij5UaGFua3M8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_RO1P152MB105195FB477718485619D864C1C20RO1P152MB1051LAMP_--
