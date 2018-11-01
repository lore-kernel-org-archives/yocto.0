Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 656C2E00C09; Thu,  1 Nov 2018 18:16:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.68.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 40600 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Nov 2018 18:16:42 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068063.outbound.protection.outlook.com [40.92.68.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41B14E00901
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 18:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=QlILxR5My5PgWYNWCQF2ZXZXlibuSLHxcqqNMlu66uI=;
	b=SSeJsgpkSYH3ie8rgq9yqRX+4vgQC478cd/aU4vYoqDXlO4onkYNE9Ofoh9byC6FJDlwaoTbpQT69+lART+ZhnpGcfeVW5Fd+hC5dKihg512P77RptcOJw5ryzjGpYNGpuohiWmB6uI9FyxDRVz1f/zRqUh7SlmeJPCe8nneJpZ9SZf8sLqVfp5YrnzpqNXlP2XtbfGqSCQbz0cCZy5au6Ztyq+NIZzzxJF8OAxVAku0WVkF9x98ygIAWMkGQKjb/n6bF5agRLeqxf2p8O1nj9OF3e/+z7dYIxqIaSWi46V+5twcRbmZqX0SkLI1y/4KRyY9ZMnQDoR3Mo3pUh2jEQ==
Received: from VE1EUR02FT035.eop-EUR02.prod.protection.outlook.com
	(10.152.12.60) by VE1EUR02HT021.eop-EUR02.prod.protection.outlook.com
	(10.152.13.91) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1294.14;
	Thu, 1 Nov 2018 13:26:30 +0000
Received: from DB6PR0901MB1589.eurprd09.prod.outlook.com (10.152.12.53) by
	VE1EUR02FT035.mail.protection.outlook.com (10.152.12.86) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1294.14 via Frontend Transport; Thu, 1 Nov 2018 13:26:30 +0000
Received: from DB6PR0901MB1589.eurprd09.prod.outlook.com
	([fe80::b46a:24a6:f158:34d]) by
	DB6PR0901MB1589.eurprd09.prod.outlook.com
	([fe80::b46a:24a6:f158:34d%9]) with mapi id 15.20.1273.030;
	Thu, 1 Nov 2018 13:26:30 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Where to look when literally nothing happens?
Thread-Index: AQHUcRj+CNOE7DSGV0i3hYieZgdqgKU60A4AgAAatQA=
Date: Thu, 1 Nov 2018 13:26:30 +0000
Message-ID: <DB6PR0901MB1589D91BFEEDC04C430394E995CE0@DB6PR0901MB1589.eurprd09.prod.outlook.com>
References: <E4920534-5A63-4F4D-A2AD-FD31D32139CC@outlook.com>
	<CAKYr3zyeFWNEKCZXVDGo7LKn6OjcuXO1BMPF=ksEOMU6LDZCZw@mail.gmail.com>
In-Reply-To: <CAKYr3zyeFWNEKCZXVDGo7LKn6OjcuXO1BMPF=ksEOMU6LDZCZw@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0202CA0031.eurprd02.prod.outlook.com
	(2603:10a6:209:15::44) To DB6PR0901MB1589.eurprd09.prod.outlook.com
	(2603:10a6:4:6d::23)
x-incomingtopheadermarker: OriginalChecksum:B5614811CBBE44EC4D26D9A915CBE6871098E5B39AF83EB6568723994A1A526E;
	UpperCasedChecksum:5197F627DD6F07114F898E00135CBE7CB44AB740E22F8C0A4D7C57595D884300;
	SizeAsReceived:7554; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bBZPDpENJ94Vx8qmQ5PA5pbMmMnz4iPc]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT021;
	6:KgZWlknW5mVRGXOBVsq7byUy7awFrjdW+7uh81cUVhAzsMrwoGVcAdFlSkFZxc7Vf1JMsBbvY2t5kxr156F5brUrKYNkQW9A0ZzgSFP1Xa3N42GGKBsQDZq86YHrfyWEDtnIhltnzYk5Pd3fkpTO/ZBHHyKbjl/iCHORk6hEEScX6Tv/LgMaoZ9bWD4ezEKHVSyyGG8nNtUu7LiQ1+p8OhCCIAWF1+JALF50ldKwz5PEr9pY0piVzfQ6zzdklsSf4b63C8oOkoDnQQ0c6reohzylsCSV/14pPBC3fH0TFuMvohVVdnVQNpm/naQqKJSPfYHkEY/gXi49XI43+oLzJjwKTmc9XbESb69LselCa1hpHZGYGBkNFslti+H50uZqybTyNS8DSY/eJAzceP94+slZRsKYTo61iCZf9fVjmmRundY/tZoYrPAG2xm2B3hDUImGiVEQvMXTaxXmNVZuCw==;
	5:6Axo+BuYkee1cvxfgi9+zl7yJd4DneySrynipd9wIpVApJiwGO9YHskmj7IRfLcCSSzBKBK2ZlxDoecQ7FsqmPc4BOt0sODf0+zTqPwSo3d2R/iRL0/OQbqu3IusJv5IBwX9oCtmy1O3QqnJ3+WJ/F9iZ6ZWn+XfTqdsKSwxkRc=;
	7:HjwwHXBdMf1D2eufh9sKV6tf44pcQe7tyySSGPzULruEYCrXBUhI453xy4LNMhlpQoXjKd3sBrMj2kSLWkBj0GMi0x2f7w7Q9A0GbOdJHiPT8aaLUVXdDa0M1nuQqKXxzY4KOdySCKzVqJPcEHq4Yg==
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:VE1EUR02HT021; 
X-MS-TrafficTypeDiagnostic: VE1EUR02HT021:|VE1EUR02HT021:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR02HT021; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT021; 
x-microsoft-antispam-message-info: 7KfbpNeG3J723D4+ArKl91ml3u3LH+x9/VOCaCbsHw6G6xtjWZ7Wt5JkEEE3TcxR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-Network-Message-Id: df532485-167a-466d-66c0-08d63ffda218
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2018 13:26:30.3992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT021
X-OriginatorOrg: outlook.com
Subject: Re: Where to look when literally nothing happens?
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
X-List-Received-Date: Fri, 02 Nov 2018 01:16:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0901MB1589D91BFEEDC04C430394E995CE0DB6PR0901MB1589_"

--_000_DB6PR0901MB1589D91BFEEDC04C430394E995CE0DB6PR0901MB1589_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB0aGUgdGlwIE91dGJhY2suDQoNClNpbmNlIHNlbmRpbmcgbXkgZW1haWwg
SeKAmXZlIGFjdHVhbGx5IHRyaWVkIGV4YWN0bHkgdGhhdCwgSSBidWlsdCBhIGZyZXNoIGltYWdl
IHdpdGggdGFyZ2V0IHJhc3BiZXJyeXBpLWNtMy4NCkFuZCB0aGUgZnVubnkgdGhpbmcgaXMsIGl0
IGRvZXMgdGhlIGV4YWN0IHNhbWUgdGhpbmcuIEl0IHdvcmtzIGZpbmUgb24gdGhlIHJlZ3VsYXIg
cGksIGFuZCBub3RoaW5nIHdpdGggbXkgY20zIGxpdGUuDQoNCk15IGN1cnJlbnQgc3VzcGljaW9u
IGlzIHRoYXQgdGhpcyBpcyByZWxhdGVkIHRvIHUtYm9vdCBzb21laG93LiBJIG5lZWQgdS1ib290
IGJlY2F1c2UgSeKAmWQgbGlrZSB0byB1c2UgTWVuZGVyIGZvciB0aGUgT1RBIHVwZGF0aW5nIG9m
IG15IGRldmljZXMuDQoNCknigJltIGdvaW5nIHRvIHNlZSBpZiBJIGNhbiBnZXQgYSBzdHJpcHBl
ZCBkb3duIHZlcnNpb24gd2l0aCBqdXN0IHUtYm9vdCBidXQgd2l0aG91dCBNZW5kZXIgZ29pbmcg
Zmlyc3QuIFRoZW4gbWF5YmUgSSBjYW4gdGFrZSBpdCBmcm9tIHRoZXJlLg0KDQpJbiB0aGUgbWVh
biB0aW1lIGFsbCB0aXBzIGFuZCB0cmlja3MgeW91IGNvdWxkIGdpdmUgbWUgYXJlIHZlcnkgbXVj
aCBhcHByZWNpYXRlZC4NCg0KS2luZCByZWdhcmRzLA0KRXJpaw0KT24gMSBOb3YgMjAxOCwgMTI6
NTEgKzAxMDAsIE91dGJhY2sgRGluZ28gPG91dGJhY2tkaW5nb0BnbWFpbC5jb20+LCB3cm90ZToN
Ck9uIFRodSwgTm92IDEsIDIwMTggYXQgNjozMyBQTSBFcmlrIEhvb2dldmVlbg0KPGVyaWsuaG9v
Z2V2ZWVuQG91dGxvb2suY29tPiB3cm90ZToNCg0KSGVsbG8sDQoNCknigJltIHJhdGhlciBuZXcg
dG8gZW1iZWRkZWQgc29mdHdhcmUgYW5kIFlvY3RvLiBJIGhvcGUgdGhpcyBpcyB0aGUgcmlnaHQg
cGxhY2UgdG8gYXNrLiBJZiBub3QgSeKAmWQgYXBwcmVjaWF0ZSBpdCBpZiBzb21lb25lIGNvdWxk
IHBvaW50IG1lIHRoZSByaWdodCB3YXkgdG8gZG8gc28uDQoNCknigJltIHRyeWluZyB0byBtYWtl
IGEgWW9jdG8gYnVpbGQgZm9yIGEgcmFzcGJlcnJ5IHBpIDMuIEnigJl2ZSBnb3QgaXQgYm9vdGlu
ZyBhbmQgZG9pbmcgdGhpbmdzIG9uIGEgcmVndWxhciBwbGFpbiB2YW5pbGxhIFJhc3BiZXJyeSBw
aSAzIGJvYXJkLiBJdCBib290cyBhbmQgb3ZlciBzZXJpYWwgY29uc29sZSBJIGNhbiBsb2cgaW4g
YW5kIGRvIHRoaW5ncy4NCkJ1dCB0aGUgdWx0aW1hdGUgdGFyZ2V0IGlzIHRvIHJ1biB0aGlzIGlt
YWdlIG9uIG15IG93biBib2FyZCB3aGljaCBpcyBidWlsdCBhcm91bmQgYSBSYXNwYmVycnkgUGkg
Q29tcHV0ZSBNb2R1bGUgMyBMaXRlLiBTaW5jZSByZWd1bGFyIFJhc3BiaWFuICh3aGF04oCZIEni
gJl2ZSB1c2VkIHNvIGZhcikgd29ya3MgZmluZSBvbiBib3RoIGJvYXJkcyB3aXRob3V0IG1vZGlm
aWNhdGlvbiBJIGFzc3VtZWQgdGhhdCB0aGlzIHdvdWxkIGJlIHRoZSBjYXNlIGFzIHdlbGwgd2l0
aCB0aGlzIGltYWdlIEkgbWFkZSBteXNlbGYuIEJ1dCBpdCB0dXJucyBvdXQgSSB3YXMgd3Jvbmcu
DQoNCldoZW4gSSB0YWtlIHRoZSBpbWFnZSBmcm9tIHRoZSBidWlsZCBhbmQgc3RpY2sgaXQgaW4g
bXkgY29tcHV0ZSBtb2R1bGUgYm9hcmQsIGxpdGVyYWxseSBub3RoaW5nIGhhcHBlbnMuIFRoZSBi
b290IHNlcXVlbmNlIGRvZXNu4oCZdCBzZWVtIHRvIGV2ZW4gYmVnaW4sIEkgZ2V0IG5vdGhpbmcg
b24gdGhlIHNlcmlhbCBjb25zb2xlLCBhbmQgbm9uZSBvZiB0aGUgcGVyaXBoZXJhbHMgbGlrZSB0
aGUgZXRoZXJuZXQgZXZlciBjb21lIHRvIGxpZmUgZWl0aGVyLg0KDQpBbmQgc2luY2Ugbm90aGlu
ZyBoYXBwZW5zIEkgcmVhbGx5IGhhdmUgbm8gaWRlYSB3aGVyZSB0byBsb29rIGZvciBhIHNvbHV0
aW9uLiBJ4oCZbSBndWVzc2luZyB0aGlzIGlzIGEgYml0IG9mIGEgbm9vYiBpc3N1ZT8gSXQgd291
bGQgYmUgZ3JlYXQgaWYgc29tZW9uZSBjb3VsZCBwb2ludCBtZSBpbiBhIGRpcmVjdGlvbiB0byBs
b29rIGF0Lg0KDQp5b3UgcHJvYmFibHkgYnVpbHQgZm9yIGEgcmFzcGJlcnJ5cGkzIG9yIHJhc3Bi
ZXJyeXBpMy02NCBmZm9yIHRoZSA2NGJpdA0KDQppIGJlbGlldmUgdGhlIGNvbXB1dGUgbW9kdWxl
IDMgdGFyZ2V0IGlzIHJhc3BiZXJyeXBpLWNtMw0KDQp5b3UgY291bGQgcHJldHR5IG11dWNoaCBk
byBhIGRpZmYgdXVuZGVyIHRoZSBtZXRhLXJhc3BiZXJyeXlwaSBmZm9yDQp0aGUgZGlmZmVyZW5j
ZXMgaW4gd2hhdHMgYnVpbHQNCg0KDQpLaW5kIHJlZ2FyZHMsDQpFcmlrIEhvb2dldmVlbi4NCi0t
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9jdG8g
bWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpodHRwczovL25hbTAzLnNhZmVs
aW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsaXN0cy55b2N0
b3Byb2plY3Qub3JnJTJGbGlzdGluZm8lMkZ5b2N0byZhbXA7ZGF0YT0wMiU3QzAxJTdDJTdDMGJk
N2U3ZmVlODM1NDI5YjYyYjgwOGQ2M2ZmMDU5NWUlN0M4NGRmOWU3ZmU5ZjY0MGFmYjQzNWFhYWFh
YWFhYWFhYSU3QzElN0MwJTdDNjM2NzY2Njk4ODUxMjY4Njk2JmFtcDtzZGF0YT03YWlVdkZodk5i
V3ZNTjhWTXklMkJucWxVaDlWQ0FRcG5DVE1vaFZwWW5tS3MlM0QmYW1wO3Jlc2VydmVkPTANCg==

--_000_DB6PR0901MB1589D91BFEEDC04C430394E995CE0DB6PR0901MB1589_
Content-Type: text/html; charset="utf-8"
Content-ID: <574CB2A36E8D2F4584BF3A2E23F51CE6@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAtYXBw
bGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsIHNhbnMtc2VyaWY7Ij4NCjxkaXY+VGhhbmsg
eW91IGZvciB0aGUgdGlwIE91dGJhY2suPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KU2luY2Ug
c2VuZGluZyBteSBlbWFpbCBJ4oCZdmUgYWN0dWFsbHkgdHJpZWQgZXhhY3RseSB0aGF0LCBJIGJ1
aWx0IGEgZnJlc2ggaW1hZ2Ugd2l0aCB0YXJnZXQgcmFzcGJlcnJ5cGktY20zLg0KPGRpdj5BbmQg
dGhlIGZ1bm55IHRoaW5nIGlzLCBpdCBkb2VzIHRoZSBleGFjdCBzYW1lIHRoaW5nLiBJdCB3b3Jr
cyBmaW5lIG9uIHRoZSByZWd1bGFyIHBpLCBhbmQgbm90aGluZyB3aXRoIG15IGNtMyBsaXRlLjwv
ZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+TXkgY3VycmVudCBzdXNwaWNpb24gaXMgdGhh
dCB0aGlzIGlzIHJlbGF0ZWQgdG8gdS1ib290IHNvbWVob3cuIEkgbmVlZCB1LWJvb3QgYmVjYXVz
ZSBJ4oCZZCBsaWtlIHRvIHVzZSBNZW5kZXIgZm9yIHRoZSBPVEEgdXBkYXRpbmcgb2YgbXkgZGV2
aWNlcy4mbmJzcDs8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PknigJltIGdvaW5nIHRv
IHNlZSBpZiBJIGNhbiBnZXQgYSBzdHJpcHBlZCBkb3duIHZlcnNpb24gd2l0aCBqdXN0IHUtYm9v
dCBidXQgd2l0aG91dCBNZW5kZXIgZ29pbmcgZmlyc3QuIFRoZW4gbWF5YmUgSSBjYW4gdGFrZSBp
dCBmcm9tIHRoZXJlLjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SW4gdGhlIG1lYW4g
dGltZSBhbGwgdGlwcyBhbmQgdHJpY2tzIHlvdSBjb3VsZCBnaXZlIG1lIGFyZSB2ZXJ5IG11Y2gg
YXBwcmVjaWF0ZWQuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5LaW5kIHJlZ2FyZHMs
PC9kaXY+DQo8ZGl2PkVyaWs8L2Rpdj4NCjwvZGl2Pg0KPGRpdiBuYW1lPSJtZXNzYWdlUmVwbHlT
ZWN0aW9uIiBzdHlsZT0iZm9udC1zaXplOiAxNHB4OyBmb250LWZhbWlseTogLWFwcGxlLXN5c3Rl
bSwgQmxpbmtNYWNTeXN0ZW1Gb250LCBzYW5zLXNlcmlmOyI+DQpPbiAxIE5vdiAyMDE4LCAxMjo1
MSAmIzQzOzAxMDAsIE91dGJhY2sgRGluZ28gJmx0O291dGJhY2tkaW5nb0BnbWFpbC5jb20mZ3Q7
LCB3cm90ZTo8YnI+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOiA1cHgg
NXB4OyBwYWRkaW5nLWxlZnQ6IDEwcHg7IGJvcmRlci1sZWZ0OiB0aGluIHNvbGlkICMxYWJjOWM7
Ij4NCk9uIFRodSwgTm92IDEsIDIwMTggYXQgNjozMyBQTSBFcmlrIEhvb2dldmVlbjxicj4NCiZs
dDtlcmlrLmhvb2dldmVlbkBvdXRsb29rLmNvbSZndDsgd3JvdGU6PGJyPg0KPGJsb2NrcXVvdGUg
dHlwZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjogNXB4IDVweDsgcGFkZGluZy1sZWZ0OiAxMHB4OyBi
b3JkZXItbGVmdDogdGhpbiBzb2xpZCAjZTY3ZTIyOyI+DQo8YnI+DQpIZWxsbyw8YnI+DQo8YnI+
DQpJ4oCZbSByYXRoZXIgbmV3IHRvIGVtYmVkZGVkIHNvZnR3YXJlIGFuZCBZb2N0by4gSSBob3Bl
IHRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNlIHRvIGFzay4gSWYgbm90IEnigJlkIGFwcHJlY2lhdGUg
aXQgaWYgc29tZW9uZSBjb3VsZCBwb2ludCBtZSB0aGUgcmlnaHQgd2F5IHRvIGRvIHNvLjxicj4N
Cjxicj4NCknigJltIHRyeWluZyB0byBtYWtlIGEgWW9jdG8gYnVpbGQgZm9yIGEgcmFzcGJlcnJ5
IHBpIDMuIEnigJl2ZSBnb3QgaXQgYm9vdGluZyBhbmQgZG9pbmcgdGhpbmdzIG9uIGEgcmVndWxh
ciBwbGFpbiB2YW5pbGxhIFJhc3BiZXJyeSBwaSAzIGJvYXJkLiBJdCBib290cyBhbmQgb3ZlciBz
ZXJpYWwgY29uc29sZSBJIGNhbiBsb2cgaW4gYW5kIGRvIHRoaW5ncy48YnI+DQpCdXQgdGhlIHVs
dGltYXRlIHRhcmdldCBpcyB0byBydW4gdGhpcyBpbWFnZSBvbiBteSBvd24gYm9hcmQgd2hpY2gg
aXMgYnVpbHQgYXJvdW5kIGEgUmFzcGJlcnJ5IFBpIENvbXB1dGUgTW9kdWxlIDMgTGl0ZS4gU2lu
Y2UgcmVndWxhciBSYXNwYmlhbiAod2hhdOKAmSBJ4oCZdmUgdXNlZCBzbyBmYXIpIHdvcmtzIGZp
bmUgb24gYm90aCBib2FyZHMgd2l0aG91dCBtb2RpZmljYXRpb24gSSBhc3N1bWVkIHRoYXQgdGhp
cyB3b3VsZCBiZSB0aGUgY2FzZSBhcw0KIHdlbGwgd2l0aCB0aGlzIGltYWdlIEkgbWFkZSBteXNl
bGYuIEJ1dCBpdCB0dXJucyBvdXQgSSB3YXMgd3JvbmcuPGJyPg0KPGJyPg0KV2hlbiBJIHRha2Ug
dGhlIGltYWdlIGZyb20gdGhlIGJ1aWxkIGFuZCBzdGljayBpdCBpbiBteSBjb21wdXRlIG1vZHVs
ZSBib2FyZCwgbGl0ZXJhbGx5IG5vdGhpbmcgaGFwcGVucy4gVGhlIGJvb3Qgc2VxdWVuY2UgZG9l
c27igJl0IHNlZW0gdG8gZXZlbiBiZWdpbiwgSSBnZXQgbm90aGluZyBvbiB0aGUgc2VyaWFsIGNv
bnNvbGUsIGFuZCBub25lIG9mIHRoZSBwZXJpcGhlcmFscyBsaWtlIHRoZSBldGhlcm5ldCBldmVy
IGNvbWUgdG8gbGlmZSBlaXRoZXIuPGJyPg0KPGJyPg0KQW5kIHNpbmNlIG5vdGhpbmcgaGFwcGVu
cyBJIHJlYWxseSBoYXZlIG5vIGlkZWEgd2hlcmUgdG8gbG9vayBmb3IgYSBzb2x1dGlvbi4gSeKA
mW0gZ3Vlc3NpbmcgdGhpcyBpcyBhIGJpdCBvZiBhIG5vb2IgaXNzdWU/IEl0IHdvdWxkIGJlIGdy
ZWF0IGlmIHNvbWVvbmUgY291bGQgcG9pbnQgbWUgaW4gYSBkaXJlY3Rpb24gdG8gbG9vayBhdC48
YnI+DQo8L2Jsb2NrcXVvdGU+DQo8YnI+DQp5b3UgcHJvYmFibHkgYnVpbHQgZm9yIGEgcmFzcGJl
cnJ5cGkzIG9yIHJhc3BiZXJyeXBpMy02NCBmZm9yIHRoZSA2NGJpdDxicj4NCjxicj4NCmkgYmVs
aWV2ZSB0aGUgY29tcHV0ZSBtb2R1bGUgMyB0YXJnZXQgaXMgcmFzcGJlcnJ5cGktY20zPGJyPg0K
PGJyPg0KeW91IGNvdWxkIHByZXR0eSBtdXVjaGggZG8gYSBkaWZmIHV1bmRlciB0aGUgbWV0YS1y
YXNwYmVycnl5cGkgZmZvcjxicj4NCnRoZSBkaWZmZXJlbmNlcyBpbiB3aGF0cyBidWlsdDxicj4N
Cjxicj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJtYXJnaW46IDVweCA1cHg7IHBh
ZGRpbmctbGVmdDogMTBweDsgYm9yZGVyLWxlZnQ6IHRoaW4gc29saWQgI2U2N2UyMjsiPg0KPGJy
Pg0KS2luZCByZWdhcmRzLDxicj4NCkVyaWsgSG9vZ2V2ZWVuLjxicj4NCi0tPGJyPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQp5b2N0byBtYWls
aW5nIGxpc3Q8YnI+DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KaHR0cHM6Ly9uYW0wMy5z
YWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyUyRmxpc3RpbmZvJTJGeW9jdG8mYW1wO2FtcDtkYXRhPTAyJTdDMDEl
N0MlN0MwYmQ3ZTdmZWU4MzU0MjliNjJiODA4ZDYzZmYwNTk1ZSU3Qzg0ZGY5ZTdmZTlmNjQwYWZi
NDM1YWFhYWFhYWFhYWFhJTdDMSU3QzAlN0M2MzY3NjY2OTg4NTEyNjg2OTYmYW1wO2FtcDtzZGF0
YT03YWlVdkZodk5iV3ZNTjhWTXklMkJucWxVaDlWQ0FRcG5DVE1vaFZwWW5tS3MlM0QmYW1wO2Ft
cDtyZXNlcnZlZD0wPGJyPg0KPC9ibG9ja3F1b3RlPg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8
L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DB6PR0901MB1589D91BFEEDC04C430394E995CE0DB6PR0901MB1589_--
