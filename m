Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.92.66.108])
 by mx.groups.io with SMTP id smtpd.web11.17687.1579635642614803982
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 11:40:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=CCw3KS5Z;
 spf=pass (domain: outlook.com, ip: 40.92.66.108, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Br0FngeN9ipFa/IOR7zpRxnJ9PXZqUU1BdCNHckkHBGK1LoLujjaHWC8RUZ+LNObVZkzju/d3lo+bVFQqswnt6RCCj5wFdItxOQ7gUg/KdTy84/M+hy4+gi+ITx1Pp7lZqEThOdKwuHWIE9xlHhmOzSJ3XLZkFcO1P5YfBXLL93iW/7f/fuynPPuiizyTRAxGPlev+AlJM8gZV+2AwuKO10/8HyGxuSRj7KUN7/O/8GLRhNOHsUrRbo8KJe130Tt4BlZC9CjSOHqaqQa9i6oVi01KqYeig2wW+Jq1DwxAr8+iGSdUNsPMr85wvs2/m1bjM1XCvfD7L4uP5Nkmj3k3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zXkkN2cZfWxHsp6CsPme9EZ5wV/EexFIBwQiFPIGpRM=;
 b=RY4DN4SNxhYosPmROrT5ZDvHjlX0dYMFKT/eaUur6sz5H6buzudKt7BYGFruEDxG7FajF+7Vv2mlHLw/Q4VJ07UsfYaTbGfqHoZABA+dnIOsUiYJMjAewAOMZSASyH5FYVTKDcy4COz6qJd4ypckblD4PEvsK5B/23UoWNAprKXHJP3RwFcShY1qlTMT0JEy3pEnwA+vU1OvbGbXngSSCy4QrROMH/p5p58jcEcB/+gwLxcPEQwLFeCYTqqhVqLy3NXPS/qcO0GFLGZWG7KrTlgSjzCPgRja2c0r9IH9gb8DjC4MYUo0uqEiw6jHtxNcxKRQLVJjNOa+p26NPyBXhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zXkkN2cZfWxHsp6CsPme9EZ5wV/EexFIBwQiFPIGpRM=;
 b=CCw3KS5Zktg1glp8kfcJdjQjrHubD8S9fPwGpl3HQh43qVzgP8Trdq/hBObU4NdtNRTR61fUX+AalMY1/GXP7iPAqabtTH5FM34lr9C+p5QoVZcGTHcMTUiPK4twA9fMFksB8W18PSkMENnr9D48J03ax8/yw6LMT3s1olM05S7lF8gSA8sFZYfUdMjtQpY3PZ69FQOLQcYV7eoMJPvD74vrhxXxnZ7MvQUktutKP0WjFdj8V3gPex+QrlhaWdvLPhs6SCK4WaHhRCQwfr6q1lXO9qux7QbvfVut4lb6crOapKpvOYM/5ogA9YQJVXnJzUi5PLdS0BXPnkYQb0rPag==
Received: from DB5EUR01FT016.eop-EUR01.prod.protection.outlook.com
 (10.152.4.52) by DB5EUR01HT231.eop-EUR01.prod.protection.outlook.com
 (10.152.4.192) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19; Tue, 21 Jan
 2020 19:40:40 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com (10.152.4.51) by
 DB5EUR01FT016.mail.protection.outlook.com (10.152.4.255) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Tue, 21 Jan 2020 19:40:40 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::89e1:157a:73d3:f5f1]) by AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::89e1:157a:73d3:f5f1%3]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 19:40:40 +0000
Received: from [192.168.188.20] (87.141.94.16) by AM6PR04CA0066.eurprd04.prod.outlook.com (2603:10a6:20b:f0::43) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend Transport; Tue, 21 Jan 2020 19:40:39 +0000
From: "Konrad Weihmann" <kweihmann@outlook.com>
To: Martin Jansa <martin.jansa@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
Thread-Topic: [yocto] [RFC PATCH] python: remove Python 2 and all supporting
 classes
Thread-Index: 
 AQHVzUDNMepRc/0m+EWpXucxKj1UM6fvLyGAgAAb/oCAAAHCAIAACaKAgAQWz4CAAfNJAIAABSGAgAAlEgA=
Date: Tue, 21 Jan 2020 19:40:39 +0000
Message-ID: 
 <AM4PR05MB33807AFEE9B9EA6595E177C7A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org>
 <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
 <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com>
 <AM4PR05MB33802E8CAA38C64493DC3584A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
 <CA+chaQfwiwur0AbMz1sEee5Q7f3PziRxec6QRzBN37HqUd1Rww@mail.gmail.com>
In-Reply-To: 
 <CA+chaQfwiwur0AbMz1sEee5Q7f3PziRxec6QRzBN37HqUd1Rww@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR04CA0066.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::43) To AM4PR05MB3380.eurprd05.prod.outlook.com
 (2603:10a6:205:e::10)
x-incomingtopheadermarker: 
 OriginalChecksum:AB6F6E4E40366E7F68ED94BBDF9B39315BA74FD5766B0AFFB3571569C1B1CC7E;UpperCasedChecksum:A683746BCD4FBC9B0466CA0DBC85A47610C3E97E3F404BE908B65675F5733359;SizeAsReceived:8106;Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [SwkKfHQzd2AOJRh7E5+AYjjMGnl0fHle]
x-microsoft-original-message-id: 
 <c951c9b2-7ab8-1087-52d1-3e8b3814d233@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 239c46f5-2ea8-444d-9de0-08d79ea9cb85
x-ms-traffictypediagnostic: DB5EUR01HT231:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cfWrfBDEtR3vpwMsu5C02XRmoEcg3KqgQo0kocKI/01m1LHZTwAYNQERuk6VPdtZiNDwyz5DlAOQ5lzViFaJKvavVcerUSZZnEn4ZEBcTVfX6+GuaIq4OTbmeSLm2ePohdjES3GeWZXnhTr0OIm0vRKA9ouHNRad+a8O0gci4fvg6i1ioLg1izKRJ3UbgvWDqmpPXQ8Gh4gvGUkIYzI3Tnh1GW7qUL2AG5Cte2t4ipE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 239c46f5-2ea8-444d-9de0-08d79ea9cb85
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 19:40:39.9846
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT231
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4PR05MB33807AFEE9B9EA6595E177C7A80D0AM4PR05MB3380eurp_"

--_000_AM4PR05MB33807AFEE9B9EA6595E177C7A80D0AM4PR05MB3380eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBwb2ludGluZyBtZSB0byB0aGF0IC0gSSBqdXN0IHRlc3RlZCBpdCBhbmQgaXQg
ZXZlbiB3b3Jrcywgd2hlbiBhbGwgcHl0aG9uMi1zdHVmZiBpcyByZXBsYWNlZCBieSBweXRob24z
Lg0KU28gb25lIHRoaW5nIHRvIHN0b3Agd29ycnlpbmcgYWJvdXQuLi4NCg0KT24gMjEuMDEuMjAg
MTg6MjcsIE1hcnRpbiBKYW5zYSB3cm90ZToNClRoZXJlIGlzIG5vZGVqcyB1cGdyYWRlIHRvIDEy
Lnggb24gb2UtZGV2ZWwgTUw6DQpodHRwOi8vbGlzdHMub3BlbmVtYmVkZGVkLm9yZy9waXBlcm1h
aWwvb3BlbmVtYmVkZGVkLWRldmVsLzIwMjAtSmFudWFyeS8yMDQzNjMuaHRtbA0Kc28gd2Ugd29u
J3QgYmUgc3RheWluZyBvbiAxMC54LCBidXQgaWYgMTIueCBpc24ndCBlbm91Z2ggdG8gYnVpbGQg
d2l0aG91dCBtZXRhLXB5dGhvbjIsIHRoZW4gd2UgbWlnaHQgbmVlZCAxMy54IDovLg0KDQpPbiBU
dWUsIEphbiAyMSwgMjAyMCBhdCA2OjA5IFBNIEtvbnJhZCBXZWlobWFubiA8a3dlaWhtYW5uQG91
dGxvb2suY29tPG1haWx0bzprd2VpaG1hbm5Ab3V0bG9vay5jb20+PiB3cm90ZToNCg0KT24gMjAu
MDEuMjAgMTI6MjIsIFJvc3MgQnVydG9uIHdyb3RlOg0KPiBucG0gbmVlZGluZyBQeTIgaXMganVz
dCBkaXNhcHBvaW50aW5nLiAgU3VyZWx5IHNvbWVvbmUgaGFzIHBvcnRlZCBpdA0KPiB0byBweTMg
Ynkgbm93Pw0KPg0KDQpBbnkgbmV3cyBvbiB0aGF0PyBGcm9tIHdoYXQgSSBzZWUgbm9kZWpzIGlz
IGZ1bGx5IHN1cHBvcnRpbmcgcHl0aG9uMyBvbg0KYnVpbGQgaG9zdCwgb25seSBpbiAxMy54IGJy
YW5jaCAoaW4gMTEueCBhbmQgMTIueCBpdCdzIG1hcmtlZA0KJ2V4cGVyaW1lbnRhbCcsIHdoYXRl
dmVyIHRoYXQgbWVhbnMpLg0KSGF2ZSBoZWFyZCBmcm9tIGEgZmV3IHBlb3BsZSB0aGF0IGNyb3Nz
IGNvbXBpbGluZyBuZXdlciB2ZXJzaW9uIGlzIGENCnRyaWNreSB0aGluZyB0byBkby4NCg0KU28g
d2hhdCdzIHRoZSBwbGFuLCBzdGF5IG9uIDEwLnggYnJhbmNoICh3aGljaCBzb29uIHdpbGwgYmUg
b3V0ZGF0ZWQNCmFueXdheSkgb3IgZ28gdG8gMTMueD8NCg0KUmVnYXJkcw0KDQpLb25yYWQNCg0K
DQo=

--_000_AM4PR05MB33807AFEE9B9EA6595E177C7A80D0AM4PR05MB3380eurp_
Content-Type: text/html; charset="utf-8"
Content-ID: <E8F9593C8CB147408879DC6A25940C3C@eurprd05.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPHA+VGhhbmtzIGZv
ciBwb2ludGluZyBtZSB0byB0aGF0IC0gSSBqdXN0IHRlc3RlZCBpdCBhbmQgaXQgZXZlbiB3b3Jr
cywgd2hlbiBhbGwgcHl0aG9uMi1zdHVmZiBpcyByZXBsYWNlZCBieSBweXRob24zLjxicj4NClNv
IG9uZSB0aGluZyB0byBzdG9wIHdvcnJ5aW5nIGFib3V0Li4uIDxicj4NCjwvcD4NCjxkaXYgY2xh
c3M9Im1vei1jaXRlLXByZWZpeCI+T24gMjEuMDEuMjAgMTg6MjcsIE1hcnRpbiBKYW5zYSB3cm90
ZTo8YnI+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDpDQSYjNDM7
Y2hhUWZ3aXd1cjBBYk16MXNFZWU1UTdmM1B6aVJ4ZWM2UVJ6Qk4zN0hxVWQxUnd3QG1haWwuZ21h
aWwuY29tIj4NCjxkaXYgZGlyPSJsdHIiPlRoZXJlIGlzIG5vZGVqcyB1cGdyYWRlIHRvIDEyLngg
b24gb2UtZGV2ZWwgTUw6DQo8ZGl2PjxhIGhyZWY9Imh0dHA6Ly9saXN0cy5vcGVuZW1iZWRkZWQu
b3JnL3BpcGVybWFpbC9vcGVuZW1iZWRkZWQtZGV2ZWwvMjAyMC1KYW51YXJ5LzIwNDM2My5odG1s
IiBtb3otZG8tbm90LXNlbmQ9InRydWUiPmh0dHA6Ly9saXN0cy5vcGVuZW1iZWRkZWQub3JnL3Bp
cGVybWFpbC9vcGVuZW1iZWRkZWQtZGV2ZWwvMjAyMC1KYW51YXJ5LzIwNDM2My5odG1sPC9hPjxi
cj4NCjwvZGl2Pg0KPGRpdj5zbyB3ZSB3b24ndCBiZSBzdGF5aW5nIG9uIDEwLngsIGJ1dCBpZiAx
Mi54IGlzbid0IGVub3VnaCB0byBidWlsZCB3aXRob3V0IG1ldGEtcHl0aG9uMiwgdGhlbiB3ZSBt
aWdodCBuZWVkIDEzLnggOi8uPC9kaXY+DQo8L2Rpdj4NCjxicj4NCjxkaXYgY2xhc3M9ImdtYWls
X3F1b3RlIj4NCjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBUdWUsIEphbiAy
MSwgMjAyMCBhdCA2OjA5IFBNIEtvbnJhZCBXZWlobWFubiAmbHQ7PGEgaHJlZj0ibWFpbHRvOmt3
ZWlobWFubkBvdXRsb29rLmNvbSIgbW96LWRvLW5vdC1zZW5kPSJ0cnVlIj5rd2VpaG1hbm5Ab3V0
bG9vay5jb208L2E+Jmd0OyB3cm90ZTo8YnI+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIGNsYXNzPSJn
bWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweA0KICAgICAgICAgIDAuOGV4O2Jv
cmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPg0K
PGJyPg0KT24gMjAuMDEuMjAgMTI6MjIsIFJvc3MgQnVydG9uIHdyb3RlOjxicj4NCiZndDsgbnBt
IG5lZWRpbmcgUHkyIGlzIGp1c3QgZGlzYXBwb2ludGluZy4mbmJzcDsgU3VyZWx5IHNvbWVvbmUg
aGFzIHBvcnRlZCBpdCA8YnI+DQomZ3Q7IHRvIHB5MyBieSBub3c/PGJyPg0KJmd0Ozxicj4NCjxi
cj4NCkFueSBuZXdzIG9uIHRoYXQ/IEZyb20gd2hhdCBJIHNlZSBub2RlanMgaXMgZnVsbHkgc3Vw
cG9ydGluZyBweXRob24zIG9uIDxicj4NCmJ1aWxkIGhvc3QsIG9ubHkgaW4gMTMueCBicmFuY2gg
KGluIDExLnggYW5kIDEyLnggaXQncyBtYXJrZWQgPGJyPg0KJ2V4cGVyaW1lbnRhbCcsIHdoYXRl
dmVyIHRoYXQgbWVhbnMpLjxicj4NCkhhdmUgaGVhcmQgZnJvbSBhIGZldyBwZW9wbGUgdGhhdCBj
cm9zcyBjb21waWxpbmcgbmV3ZXIgdmVyc2lvbiBpcyBhIDxicj4NCnRyaWNreSB0aGluZyB0byBk
by48YnI+DQo8YnI+DQpTbyB3aGF0J3MgdGhlIHBsYW4sIHN0YXkgb24gMTAueCBicmFuY2ggKHdo
aWNoIHNvb24gd2lsbCBiZSBvdXRkYXRlZCA8YnI+DQphbnl3YXkpIG9yIGdvIHRvIDEzLng/PGJy
Pg0KPGJyPg0KUmVnYXJkczxicj4NCjxicj4NCktvbnJhZDxicj4NCjxicj4NCjxicj4NCjwvYmxv
Y2txdW90ZT4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_AM4PR05MB33807AFEE9B9EA6595E177C7A80D0AM4PR05MB3380eurp_--
