Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1387E00D01; Tue, 26 Feb 2019 16:12:46 -0800 (PST)
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
	*      [40.92.64.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 27680 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Feb 2019 16:12:44 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064074.outbound.protection.outlook.com [40.92.64.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98810E00C43
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 16:12:44 -0800 (PST)
Received: from DB5EUR01HT046.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e1a::305) by
	VE1EUR01HT043.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e19::268) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1643.21;
	Tue, 26 Feb 2019 21:41:24 +0000
Received: from VE1EUR01HT046.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e19::164) by
	DB5EUR01HT046.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e1a::305) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1643.21;
	Tue, 26 Feb 2019 21:28:59 +0000
Received: from DB5EUR01HT041.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e1a::397) by
	VE1EUR01HT046.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e19::164) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1580.10;
	Tue, 26 Feb 2019 20:34:35 +0000
Received: from VE1EUR01HT045.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e19::295) by
	DB5EUR01HT041.eop-EUR01.prod.protection.outlook.com
	(2a01:111:e400:7e1a::397) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1643.21;
	Tue, 26 Feb 2019 11:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=SYDmCs7yOV5dLhIyg8hE3enfMV2jArEaUPBL6ysaX+Y=;
	b=qOlCztLuKxPw8Jwjj6jCpRSa67ofNFR20jLkWqyLk6TSydTfrATWKwptX0W5gJIZ9imkmsfTXEQQQDoiOn38hZND5m72x65XOUYtyrJqFIGYhVYES2fK0TQQQnRa77mPYN07/5+AFwd2Wd9VTIDV/pw0Iu2cd5bA5OVUHDnl3APXthLNkCTLySLWwfYg8FeB2ZBIWMFAyE5TwRqqb3VgMuuF59GNBRCH5c21dGcdVfpNhBTsLOODSnZLAuJapnlUxa8MXvX7tGitwtf+GSa4zHAZaAg9lj212dYlywPshoIOzz2pSOd1X40G13txYRxaywAULqv/uGcBdDS8yLubOQ==
Received: from VE1EUR01FT034.eop-EUR01.prod.protection.outlook.com
	(10.152.2.57) by VE1EUR01HT045.eop-EUR01.prod.protection.outlook.com
	(10.152.3.39) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1580.10;
	Tue, 26 Feb 2019 08:19:36 +0000
Received: from DB6PR0701MB2629.eurprd07.prod.outlook.com (10.152.2.56) by
	VE1EUR01FT034.mail.protection.outlook.com (10.152.2.235) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.21 via Frontend Transport; Tue, 26 Feb 2019 08:19:36 +0000
Received: from DB6PR0701MB2629.eurprd07.prod.outlook.com
	([fe80::144e:b63:a36e:e218]) by
	DB6PR0701MB2629.eurprd07.prod.outlook.com
	([fe80::144e:b63:a36e:e218%10]) with mapi id 15.20.1665.012;
	Tue, 26 Feb 2019 08:19:36 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: Yocto discussion list <yocto@yoctoproject.org>, Timothy Froehlich
	<tfroehlich@archsys.io>
Thread-Topic: [yocto] Storing Sstate in S3 success stories?
Thread-Index: AQHUzXUAQQ7HSlFyPEyURFFJbazRL6XxvREA
Date: Tue, 26 Feb 2019 08:19:36 +0000
Message-ID: <DB6PR0701MB2629CC6C1069B27F94037DF7957B0@DB6PR0701MB2629.eurprd07.prod.outlook.com>
References: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
In-Reply-To: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0502CA0055.eurprd05.prod.outlook.com
	(2603:10a6:20b:56::32) To DB6PR0701MB2629.eurprd07.prod.outlook.com
	(2603:10a6:4:22::17)
x-incomingtopheadermarker: OriginalChecksum:F7A1E7028DA571941FAC20740FF85D5608091F30652329DFA163E65A9886F1D0;
	UpperCasedChecksum:01A25045ACBA6D23FD7F8AFC4BEB6229223F41CD56EC13509842773A990F63D1;
	SizeAsReceived:7602; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-readdle-message-id: 7b0948b1-8724-489a-addc-af7843439d4a@Spark
x-tmn: [C69mjOWJ1LxYSz2pN/Cg1Xj7KbP9qQEW]
x-microsoft-original-message-id: <7b0948b1-8724-489a-addc-af7843439d4a@Spark>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:VE1EUR01HT045; 
X-MS-TrafficTypeDiagnostic: VE1EUR01HT045:|VE1EUR01HT045:|DB5EUR01HT041:|DB5EUR01HT041:|VE1EUR01HT046:|VE1EUR01HT046:|DB5EUR01HT046:|DB5EUR01HT046:|VE1EUR01HT043:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR01HT045; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT045; 
x-microsoft-antispam-message-info: qZ0fp2hr65bgVQA48f/GMt7t8l+YXKw4Oaby+LzXx8LQXF4Ag7sShgdnimZJTNPl
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-Network-Message-Id: da1a41f3-6a6d-444c-6cf7-08d69bc3241e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2019 08:19:36.1468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT045
X-OriginatorOrg: outlook.com
Subject: Re: Storing Sstate in S3 success stories?
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
X-List-Received-Date: Wed, 27 Feb 2019 00:12:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB2629CC6C1069B27F94037DF7957B0DB6PR0701MB2629_"

--_000_DB6PR0701MB2629CC6C1069B27F94037DF7957B0DB6PR0701MB2629_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVGltb3RoeSwNCg0KVGhlIFMzIHByb3RvY29sIGlzIEhUVFAoUykgYmFzZWQsIHRoZSBvdmVy
aGVhZCBwZXIgb2JqZWN0IGlzIHF1aXRlIHNpZ25pZmljYW50LiBUaGlzIGlzIG5vdCBtdWNoIG9m
IGEgcHJvYmxlbSBmb3IgbGFyZ2UgZmlsZXMgYnV0IHRoZSBzc3RhdGVfY2FjaGUgY29udGFpbnMg
bW9zdGx5IGxvdHMgb2YgcmVhbGx5IHNtYWxsIGZpbGVzLiBJIHRoaW5rIGluIHRoaXMgY2FzZSB5
b3XigJlyZSBiZXR0ZXIgb2Ygc3RvcmluZyB0aGUgY2FjaGUgb24gYSBzZWNvbmRhcnkgRUJTIHZv
bHVtZSB0aGF0IHlvdSBjYW4gYXR0YWNoIGFzIGEgcmVndWxhciBibG9jayBkZXZpY2UgdG8gdGhl
IEVDMiBpbnN0YW5jZS4gWW91IGNhbiBzd3RpY2ggb24gZGVsZXRpb24gcHJvdGVjdGlvbiB0byBt
YWtlIGl0IHN1cnZpdmUgRUMyIHRlcm1pbmF0aW9uLg0KDQpTaW5jZSBFQlMgdm9sdW1lcyBhcmUg
cXVpdGUgYSBiaXQgbW9yZSBleHBlbnNpdmUgdGhhbiBTMyBidWNrZXRzICB5b3UgY291bGQgbWFr
ZSBzbmFwc2hvdHMgdG8gdHJhbnNmZXIgdGhlIHN0YXRlIGJldHdlZW4gYnVpbGQgcnVucyBpbiBz
dGVhZCB0aGVuIHlvdSBjYW4gZGVzdHJveSB0aGUgRUJTIHZvbHVtZSB3aGVuIG5vdGhpbmcgaXMg
cnVubmluZy4NCg0KQWxscyB0aGUgZG9jdW1lbnRhdGlvbiBhYm91dCBFQlMgaXMgaGVyZSBodHRw
czovL2RvY3MuYXdzLmFtYXpvbi5jb20vQVdTRUMyL2xhdGVzdC9Vc2VyR3VpZGUvQW1hem9uRUJT
Lmh0bWwNCg0KQ2hlZXJzLA0KRXJpaw0KT24gMjYgRmViIDIwMTksIDAyOjQ1ICswMTAwLCBUaW1v
dGh5IEZyb2VobGljaCA8dGZyb2VobGljaEBhcmNoc3lzLmlvPiwgd3JvdGU6DQpJJ3ZlIGJlZW4g
c3BlbmRpbmcgYSBiaXQgdG9vIGxvbmcgdGhpcyBwYXN0IHdlZWsgdHJ5aW5nIHRvIGJ1aWxkIHVw
IGEgcmVwcm9kdWNhYmxlIGJ1aWxkIGluZnJhc3RydWN0dXJlIGluIEFXUyBhbmQgSSd2ZSBnb3Qg
dmVyeSBsaXR0bGUgZXhwZXJpZW5jZSB3aXRoIGNsb3VkIGluZnJhc3R1Y3R1cmUgYW5kIEknbSB3
b25kZXJpbmcgaWYgSSdtIGdvaW5nIGluIHRoZSB3cm9uZyBkaXJlY3Rpb24uIEknbSBhdHRlbXB0
aW5nIHRvIGhvc3QgbXkgc3N0YXRlX2NhY2hlIGFzIGEgbWlycm9yIGluIGEgcHJpdmF0ZSBTMyBi
dWNrZXQsIGFuZCBJIGJlbGlldmUgSSBoYXZlIGV2ZXJ5dGhpbmcgY29uZmlndXJlZCBwcm9wZXJs
eSwgaW5jbHVkaW5nIGV4cG9zaW5nIHRoZSBidWNrZXQgdG8gaHR0cCByZXF1ZXN0cywgc2luY2Ug
SSBjYW4gd2dldCBmaWxlcyB0aGF0IEkndmUgcHJldmlvdXNseSBzeW5jZWQgdXAgdG8gdGhlIGJ1
Y2tldC4gSG93ZXZlciBpZiBJIGFkZCBpbiB0aGUgU1NUQVRFX01JUlJPUlMgdG8gbXkgYnVpbGQs
IGJpdGJha2Ugc2xvd3MgdG8gYSBjcmF3bCAoaXQncyBhIHBvd2VyZnVsIFZNKSBhbmQgYmFyZWx5
IHNlZW1zIHRvIGdldCBhbnl0aGluZy4gVGhlIEVDMiBpbnN0YW5jZSBpcyBpbiB0aGUgc2FtZSBy
ZWdpb24gYXMgdGhlIFMzIGJ1Y2tldCwgcm9sZXMgaGF2ZSBiZWVuIGNvbmZpZ3VyZWQgcHJvcGVy
bHkgdG8gYWxsb3cgYWNjZXNzLCBldGMuDQoNCkknbSBub3QgbG9va2luZyBmb3IgaGVscCBkZWJ1
Z2dpbmcgdGhpcywgSSBqdXN0IHdhbnQgdG8ga25vdyB3aGV0aGVyIEknbSByaWdodCB0aGF0IGhv
c3RpbmcgbXkgc3N0YXRlIGluIGFuIFMzIGJ1Y2tldCBzaG91bGQgd29yay4gSSd2ZSBvbmx5IGJl
ZW4gYWJsZSB0byBmaW5kIG9uZSBtZW50aW9uIG9mIGl0IGJlaW5nIGRvbmUgd2l0aCBubyByZXBy
b2R1Y3Rpb24gaGludHMuDQoNCi0tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KeW9jdG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQpodHRwczovL25hbTA0LnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cHMlM0ElMkYlMkZsaXN0cy55b2N0b3Byb2plY3Qub3JnJTJGbGlzdGluZm8lMkZ5b2N0byZhbXA7
ZGF0YT0wMiU3QzAxJTdDJTdDZGM2NmMyYWI5ZGE0NDI3MjIyMGIwOGQ2OWI4YzIyNjIlN0M4NGRm
OWU3ZmU5ZjY0MGFmYjQzNWFhYWFhYWFhYWFhYSU3QzElN0MwJTdDNjM2ODY3NDIzNTA2MTc4MTQ2
JmFtcDtzZGF0YT1UandjbmFGYVpRcGs5aXV4TDE2JTJGb3NqdXFFSDJTN2FYQjE2SmpCSURHa28l
M0QmYW1wO3Jlc2VydmVkPTANCg==

--_000_DB6PR0701MB2629CC6C1069B27F94037DF7957B0DB6PR0701MB2629_
Content-Type: text/html; charset="utf-8"
Content-ID: <AE2E99957E42BA43B560C81CCACFBD09@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAtYXBw
bGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsIHNhbnMtc2VyaWY7Ij4NCkhpIFRpbW90aHks
DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5UaGUgUzMgcHJvdG9jb2wgaXMgSFRUUChTKSBiYXNl
ZCwgdGhlIG92ZXJoZWFkIHBlciBvYmplY3QgaXMgcXVpdGUgc2lnbmlmaWNhbnQuIFRoaXMgaXMg
bm90IG11Y2ggb2YgYSBwcm9ibGVtIGZvciBsYXJnZSBmaWxlcyBidXQgdGhlIHNzdGF0ZV9jYWNo
ZSBjb250YWlucyBtb3N0bHkgbG90cyBvZiByZWFsbHkgc21hbGwgZmlsZXMuIEkgdGhpbmsgaW4g
dGhpcyBjYXNlIHlvdeKAmXJlIGJldHRlciBvZiBzdG9yaW5nIHRoZSBjYWNoZSBvbiBhDQogc2Vj
b25kYXJ5IEVCUyB2b2x1bWUgdGhhdCB5b3UgY2FuIGF0dGFjaCBhcyBhIHJlZ3VsYXIgYmxvY2sg
ZGV2aWNlIHRvIHRoZSBFQzIgaW5zdGFuY2UuIFlvdSBjYW4gc3d0aWNoIG9uIGRlbGV0aW9uIHBy
b3RlY3Rpb24gdG8gbWFrZSBpdCBzdXJ2aXZlIEVDMiB0ZXJtaW5hdGlvbi4mbmJzcDs8L2Rpdj4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlNpbmNlIEVCUyB2b2x1bWVzIGFyZSBxdWl0ZSBhIGJp
dCBtb3JlIGV4cGVuc2l2ZSB0aGFuIFMzIGJ1Y2tldHMgJm5ic3A7eW91IGNvdWxkIG1ha2Ugc25h
cHNob3RzIHRvIHRyYW5zZmVyIHRoZSBzdGF0ZSBiZXR3ZWVuIGJ1aWxkIHJ1bnMgaW4gc3RlYWQg
dGhlbiB5b3UgY2FuIGRlc3Ryb3kgdGhlIEVCUyB2b2x1bWUgd2hlbiBub3RoaW5nIGlzIHJ1bm5p
bmcuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5BbGxzIHRoZSBkb2N1bWVudGF0aW9u
IGFib3V0IEVCUyBpcyBoZXJlJm5ic3A7PGEgaHJlZj0iaHR0cHM6Ly9kb2NzLmF3cy5hbWF6b24u
Y29tL0FXU0VDMi9sYXRlc3QvVXNlckd1aWRlL0FtYXpvbkVCUy5odG1sIj5odHRwczovL2RvY3Mu
YXdzLmFtYXpvbi5jb20vQVdTRUMyL2xhdGVzdC9Vc2VyR3VpZGUvQW1hem9uRUJTLmh0bWw8L2E+
Jm5ic3A7PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5DaGVlcnMsPC9kaXY+DQo8ZGl2
PkVyaWs8L2Rpdj4NCjwvZGl2Pg0KPGRpdiBuYW1lPSJtZXNzYWdlUmVwbHlTZWN0aW9uIiBzdHls
ZT0iZm9udC1zaXplOiAxNHB4OyBmb250LWZhbWlseTogLWFwcGxlLXN5c3RlbSwgQmxpbmtNYWNT
eXN0ZW1Gb250LCBzYW5zLXNlcmlmOyI+DQpPbiAyNiBGZWIgMjAxOSwgMDI6NDUgJiM0MzswMTAw
LCBUaW1vdGh5IEZyb2VobGljaCAmbHQ7dGZyb2VobGljaEBhcmNoc3lzLmlvJmd0Oywgd3JvdGU6
PGJyPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjogNXB4IDVweDsgcGFk
ZGluZy1sZWZ0OiAxMHB4OyBib3JkZXItbGVmdDogdGhpbiBzb2xpZCAjMWFiYzljOyI+DQo8ZGl2
IGRpcj0ibHRyIj5JJ3ZlIGJlZW4gc3BlbmRpbmcgYSBiaXQgdG9vIGxvbmcgdGhpcyBwYXN0IHdl
ZWsgdHJ5aW5nIHRvIGJ1aWxkIHVwIGEgcmVwcm9kdWNhYmxlIGJ1aWxkIGluZnJhc3RydWN0dXJl
IGluIEFXUyBhbmQgSSd2ZSBnb3QgdmVyeSBsaXR0bGUgZXhwZXJpZW5jZSB3aXRoIGNsb3VkIGlu
ZnJhc3R1Y3R1cmUgYW5kIEknbSB3b25kZXJpbmcgaWYgSSdtIGdvaW5nIGluIHRoZSB3cm9uZyBk
aXJlY3Rpb24uIEknbSBhdHRlbXB0aW5nDQogdG8gaG9zdCBteSBzc3RhdGVfY2FjaGUgYXMgYSBt
aXJyb3IgaW4gYSBwcml2YXRlIFMzIGJ1Y2tldCwgYW5kIEkgYmVsaWV2ZSBJIGhhdmUgZXZlcnl0
aGluZyBjb25maWd1cmVkIHByb3Blcmx5LCBpbmNsdWRpbmcgZXhwb3NpbmcgdGhlIGJ1Y2tldCB0
byBodHRwIHJlcXVlc3RzLCBzaW5jZSBJIGNhbiB3Z2V0IGZpbGVzIHRoYXQgSSd2ZSBwcmV2aW91
c2x5IHN5bmNlZCB1cCB0byB0aGUgYnVja2V0LiBIb3dldmVyIGlmIEkgYWRkIGluIHRoZSBTU1RB
VEVfTUlSUk9SUw0KIHRvIG15IGJ1aWxkLCBiaXRiYWtlIHNsb3dzIHRvIGEgY3Jhd2wgKGl0J3Mg
YSBwb3dlcmZ1bCBWTSkgYW5kIGJhcmVseSBzZWVtcyB0byBnZXQgYW55dGhpbmcuIFRoZSBFQzIg
aW5zdGFuY2UgaXMgaW4gdGhlIHNhbWUgcmVnaW9uIGFzIHRoZSBTMyBidWNrZXQsIHJvbGVzIGhh
dmUgYmVlbiBjb25maWd1cmVkIHByb3Blcmx5IHRvIGFsbG93IGFjY2VzcywgZXRjLg0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+SSdtIG5vdCBsb29raW5nIGZvciBoZWxwIGRlYnVnZ2luZyB0aGlz
LCBJIGp1c3Qgd2FudCB0byBrbm93IHdoZXRoZXIgSSdtIHJpZ2h0IHRoYXQgaG9zdGluZyBteSBz
c3RhdGUgaW4gYW4gUzMgYnVja2V0IHNob3VsZCB3b3JrLiBJJ3ZlIG9ubHkgYmVlbiBhYmxlIHRv
IGZpbmQgb25lIG1lbnRpb24gb2YgaXQgYmVpbmcgZG9uZSB3aXRoIG5vIHJlcHJvZHVjdGlvbiBo
aW50cy4NCjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9zaWduYXR1cmUiIGRhdGEtc21hcnRt
YWlsPSJnbWFpbF9zaWduYXR1cmUiPg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2Pjxicj4NCjwvZGl2
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQotLTxicj4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KeW9jdG8gbWFpbGluZyBsaXN0
PGJyPg0KeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxicj4NCmh0dHBzOi8vbmFtMDQuc2FmZWxpbmtz
LnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLnlvY3RvcHJv
amVjdC5vcmclMkZsaXN0aW5mbyUyRnlvY3RvJmFtcDthbXA7ZGF0YT0wMiU3QzAxJTdDJTdDZGM2
NmMyYWI5ZGE0NDI3MjIyMGIwOGQ2OWI4YzIyNjIlN0M4NGRmOWU3ZmU5ZjY0MGFmYjQzNWFhYWFh
YWFhYWFhYSU3QzElN0MwJTdDNjM2ODY3NDIzNTA2MTc4MTQ2JmFtcDthbXA7c2RhdGE9VGp3Y25h
RmFaUXBrOWl1eEwxNiUyRm9zanVxRUgyUzdhWEIxNkpqQklER2tvJTNEJmFtcDthbXA7cmVzZXJ2
ZWQ9MDxicj4NCjwvYmxvY2txdW90ZT4NCjxkaXY+PC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_DB6PR0701MB2629CC6C1069B27F94037DF7957B0DB6PR0701MB2629_--
