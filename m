Received: from EUR02-VE1-obe.outbound.protection.outlook.com (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.69])
 by mx.groups.io with SMTP id smtpd.web11.1612.1575278899210327859
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 01:28:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=ilivhQM1;
 spf=pass (domain: topicproducts.com, ip: 40.107.2.69, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeeNwEjEBVbIBIPUFnV9jxmYLDZ8oe0Jx0UWIxtVlEc=;
 b=ilivhQM1roijFbefJSdnmoin02M04eMx4wT7AC0mP+jcf2YJH7BOLyhM6bgqxdEqBFonZiRZnhpO3bNmhvhYBNg2lTvP0TWiANm1a8pi7BTvC1MS8P6h9c8/uMGC09Rw88OyZRSIFy73lfODoP9+i1Es+xQAlFfXpDyestjrsxA=
Received: from VI1PR04CA0079.eurprd04.prod.outlook.com (2603:10a6:803:64::14)
 by HE1PR0401MB2283.eurprd04.prod.outlook.com (2603:10a6:3:27::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Mon, 2 Dec
 2019 09:28:15 +0000
Received: from DB5EUR01FT062.eop-EUR01.prod.protection.outlook.com
 (2a01:111:f400:7e02::200) by VI1PR04CA0079.outlook.office365.com
 (2603:10a6:803:64::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16 via Frontend
 Transport; Mon, 2 Dec 2019 09:28:14 +0000
Authentication-Results: spf=pass (sender IP is 40.68.112.65)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=pass (signature
 was verified) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 40.68.112.65 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.68.112.65; helo=westeu12-emailsignatures-cloud.codetwo.com;
Received: from westeu12-emailsignatures-cloud.codetwo.com (40.68.112.65) by
 DB5EUR01FT062.mail.protection.outlook.com (10.152.5.167) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Mon, 2 Dec 2019 09:28:14 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (104.47.6.50) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Mon, 02 Dec 2019 09:28:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JL+NFR86DFOeKHh78ErfaA2mkib6K27Neml7EhiqV0gPXAebBMQ0F8Vlucceh456T00+Pfr2E1jFrkeTrhPm3Qv0GymeJgdRQiBmqOckZ0AcESPmSimn+w6GtK98hLUCMBbEErEdmvbfd6llDJrsoIJTuFqB3FYyS8t6h3ue6poCYkjQRLVbW7SkVTaogUimjIqORW6hCD/ytmxTvQWgHndR+lyle1j3GyXwNrUosNbe+69PBNJIt8DTBXk1bUL4MDJfNaRaiN+JV3k1KA5qpGC82fAs1DM1w+zGnybcbddqN6l1GxCudmC+mmkrcVxOatoQqb/C+eDy35yzX6yBFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeeNwEjEBVbIBIPUFnV9jxmYLDZ8oe0Jx0UWIxtVlEc=;
 b=DQCX/qB1KoheH+7Hz+ydvEu8MJdddN7i5qsV6OrMVBUM8mNO2uXHrz34TKFGStZ+5uxAueSUx8Se7qjY/JctoAxB6WfcYmWylJfsVicKS+qKUnyX6TA8Vagt8xqgxk36RP18QsowsrWWBeNDECG3wc3lP+cPw7ixqa+liFyc3DarSqh4zHbLYHIEDLQDySN7+oDlK5lDRCQgAK2e7aKEUlqNqn3UuqG9nsQQZwOgQ3FjM9RKxchA79gw3ABgX/cQxzFnzbRcWURMVOBaXKN8vnHtBZdyYSQJFvqWP8NadUW8fqoaWJRegBEbq7+nHTvqugZZ1+fX/UpwPtoHmnging==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeeNwEjEBVbIBIPUFnV9jxmYLDZ8oe0Jx0UWIxtVlEc=;
 b=ilivhQM1roijFbefJSdnmoin02M04eMx4wT7AC0mP+jcf2YJH7BOLyhM6bgqxdEqBFonZiRZnhpO3bNmhvhYBNg2lTvP0TWiANm1a8pi7BTvC1MS8P6h9c8/uMGC09Rw88OyZRSIFy73lfODoP9+i1Es+xQAlFfXpDyestjrsxA=
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com (10.141.174.88) by
 AM7PR04MB7143.eurprd04.prod.outlook.com (10.255.191.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.17; Mon, 2 Dec 2019 09:28:03 +0000
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com
 ([fe80::81d1:90db:da68:3643]) by AM7PR04MB6934.eurprd04.prod.outlook.com
 ([fe80::81d1:90db:da68:3643%6]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 09:28:03 +0000
From: "Mike Looijmans" <mike.looijmans@topic.nl>
To: "Mikko.Rapeli@bmw.de" <Mikko.Rapeli@bmw.de>
CC: "peter@berginkonsult.se" <peter@berginkonsult.se>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Topic: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Index: AQHVqJJSdvZ7L0ZCr02vDN+wSm7qfaemkHaAgAABpwCAAAJUAA==
Date: Mon, 2 Dec 2019 09:28:03 +0000
Message-ID: <aa713358-4ec7-5215-25f6-ef13f513c97f@topic.nl>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
 <20191202091942.GF3527@hiutale>
In-Reply-To: <20191202091942.GF3527@hiutale>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-clientproxiedby: AM0PR01CA0091.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::32) To AM7PR04MB6934.eurprd04.prod.outlook.com
 (2603:10a6:20b:10d::24)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 74ddecb0-2f93-4193-83d8-08d77709f50e
X-MS-TrafficTypeDiagnostic: AM7PR04MB7143:|HE1PR0401MB2283:
X-Microsoft-Antispam-PRVS: 
	<HE1PR0401MB228333CA629EE92F92E63B7B96430@HE1PR0401MB2283.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 0239D46DB6
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(396003)(136003)(346002)(376002)(39830400003)(366004)(189003)(199004)(54906003)(3846002)(6116002)(6246003)(2351001)(186003)(42882007)(36756003)(305945005)(76176011)(25786009)(6916009)(66066001)(65956001)(65806001)(386003)(6506007)(99286004)(52116002)(5660300002)(26005)(4326008)(64756008)(53546011)(66946007)(66476007)(66556008)(66446008)(31686004)(31696002)(102836004)(256004)(14444005)(966005)(58126008)(316002)(2616005)(2501003)(6486002)(6436002)(11346002)(446003)(14454004)(6306002)(6512007)(2906002)(71200400001)(71190400001)(44832011)(229853002)(81166006)(81156014)(508600001)(7736002)(8676002)(8936002)(5640700003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM7PR04MB7143;H:AM7PR04MB6934.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:3;A:1;
received-spf: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Uo9FAcoXs53vFPL7hLaXTN8X02bDL5GD9l+1odggZ14IXW/AI8GK+tohSRnPww9+AGPaQlrRDJNfO00xQEslZtJiBCG9Zbu/FUJH6biqYqBF7P1KQXgkldWhBEowTlclMzFHQrINaxr1Aa4A6CzG0E08A6RdST8EZBQjtQYCKOwfpqFVx1+d24fDnTsKl2Q5LRwNJtWMweC2/i3t9vy1EL6VLnxLa+ia9Cgu84K+5ZQTC+VMjzuAVEUMTtWqkIy67OibzrrRQqrTLsH61QmxDz6lBsoNyp/mWZb1YYC6wwnm6IZV8AARatc6abln0AAfWD+2n4l272FU2tzU4q8Xbhl7JPE37L7NP71VFHW6FT3VBa6XQ651G+j88rJCtKbGudxCuQucdkZaHcfd46C77wMsovo2cANp1HlO6GOlO+qh7Z/MG8Q14xlx2ZtFbyKCC46RmrFRIbwa8PyIboIbdxoMxFYWQC7cDU64S4Ig2Sg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7143
X-CodeTwo-MessageID: a1d18251-8cb7-456b-aea8-18b991331c9b.20191202092805@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
Return-Path: mike.looijmans@topicproducts.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT062.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:40.68.112.65;IPV:NLI;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(396003)(39830400003)(136003)(346002)(376002)(199004)(189003)(5640700003)(53546011)(336012)(6512007)(6506007)(356004)(36756003)(386003)(8936002)(8676002)(76176011)(44832011)(6486002)(508600001)(65956001)(65806001)(66066001)(2616005)(7596002)(7636002)(7736002)(11346002)(446003)(5660300002)(31696002)(31686004)(305945005)(2351001)(2501003)(2486003)(58126008)(47776003)(106002)(23676004)(229853002)(14454004)(246002)(14444005)(966005)(2906002)(4326008)(102836004)(186003)(50466002)(6916009)(6246003)(99286004)(26005)(25786009)(54906003)(70206006)(6306002)(436003)(316002)(42882007)(70586007)(3846002)(6116002);DIR:OUT;SFP:1101;SCL:1;SRVR:HE1PR0401MB2283;H:westeu12-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu12-emailsignatures-cloud.codetwo.com;A:1;MX:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	71528e7f-fbc0-451d-176b-08d77709ee37
X-Forefront-PRVS: 0239D46DB6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	88qXOBirWDFXOAiIGNSiZjYGJigPEGF+uZ+ma1VYPONhwkAas2sJvcF1jyCw46MS1ILi29BRJQ9NFhl4RKzJRggy9gpGYeoqq9mLnJiDUe2xZ5RJ4r7Ft2qGQc3n7GmXWaRAZ41JXUMw3FpI/Z8Jv1J1ybxI/Y36oscXf2ix8CVxD4w0e0kjRpIRyOmM5Vd7SXCFLtUsKIb2lLuvDA1zemPlCjuSqFDQRQi5uFtAHVDfASiwG2lIiiCsOJceMEX9WIZX10j/R/vX0YTHnKnLSvJqdLoygqnPKiw2wCc01OIdC97PUtRSxOpiRJVQuHDDQ1rCQcfFLwNL2eRKnx2MdNAJ8JvbziG5MZBjLT0xETOdxrQBxy9mca/CVMHKNABeChZolyFOlYRDX0+uGzpq+yZHkF0FAFhxorz1ltkVg7x2b1AnVBCOKK7NQlFr0q74kg/C2tdD37h62+GCP7I1L17q0dXAC7HYe0f6V8JIF3s=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2019 09:28:14.5083
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ddecb0-2f93-4193-83d8-08d77709f50e
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[40.68.112.65];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0401MB2283
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <17EA12F77B450E44ABFF070BB4FF1AFB@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMDItMTItMTkgMTA6MTksIE1pa2tvLlJhcGVsaUBibXcuZGUgd3JvdGU6DQo+IEhpLA0KPiAN
Cj4gT24gTW9uLCBEZWMgMDIsIDIwMTkgYXQgMDk6MTM6NDdBTSArMDAwMCwgTWlrZSBMb29pam1h
bnMgd3JvdGU6DQo+PiBPbiAwMS0xMi0xOSAyMjo1NywgUGV0ZXIgQmVyZ2luIHZpYSBMaXN0cy5Z
b2N0b3Byb2plY3QuT3JnIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gSSdtIGN1cnJlbnRseSB3
b3JraW5nIGluIGEgcHJvamVjdCB1c2luZyBZb2N0byAyLjYgKHRodWQpIHJlbGVhc2UuIEl0IGhh
cw0KPj4+IGRlZmF1bHQga2VybmVsIHY0LjE4IGFuZCBhbHNvIGxpbnV4LWxpYmMtaGVhZGVycyBm
cm9tIGtlcm5lbCB2NC4xOC4gSW4gbXkNCj4+PiBwcm9qZWN0IHdlIHdpbGwgdXNlIGtlcm5lbCB2
NC4xLiBJIHdvdWxkIGxpa2UgYWR2aWNlIGhvdyB0byBoYW5kbGUgdGhlDQo+Pj4gbGludXgtbGli
Yy1oZWFkZXJzIHBhY2thZ2UgZm9yIG15IHByb2plY3QsIHNob3VsZCBJIHVzZSB0aGUgdjQuMTgg
aGVhZGVycyBvcg0KPj4+IHNob3VsZCBJIHVzZSB0aGUgdjQuMSBoZWFkZXIgZmlsZXMgd2hpY2gg
bWF0Y2hlcyB0aGUgcnVubmluZyBrZXJuZWw/DQo+Pj4NCj4+PiAgIEZyb20gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3Qva2J1aWxkL2hlYWRlcnNfaW5zdGFsbC5odG1sOg0K
Pj4+ICJLZXJuZWwgaGVhZGVycyBhcmUgYmFja3dhcmRzIGNvbXBhdGlibGUsIGJ1dCBub3QgZm9y
d2FyZHMgY29tcGF0aWJsZS4gVGhpcw0KPj4+IG1lYW5zIHRoYXQgYSBwcm9ncmFtIGJ1aWx0IGFn
YWluc3QgYSBDIGxpYnJhcnkgdXNpbmcgb2xkZXIga2VybmVsIGhlYWRlcnMNCj4+PiBzaG91bGQg
cnVuIG9uIGEgbmV3ZXIga2VybmVsIChhbHRob3VnaCBpdCBtYXkgbm90IGhhdmUgYWNjZXNzIHRv
IG5ldw0KPj4+IGZlYXR1cmVzKSwgYnV0IGEgcHJvZ3JhbSBidWlsdCBhZ2FpbnN0IG5ld2VyIGtl
cm5lbCBoZWFkZXJzIG1heSBub3Qgd29yayBvbiBhbg0KPj4+IG9sZGVyIGtlcm5lbC4iDQo+Pj4N
Cj4+PiBXaXRoIHRoZSBpbmZvcm1hdGlvbiBmcm9tIHRoZSBxdW90ZSBhYm92ZSBJIHdvdWxkIGRp
cmVjdGx5IHVzZSB2NC4xIGhlYWRlcnMgYXMNCj4+PiBteSBsaW51eC1saWJjLWhlYWRlcnMuIEJ1
dCB0aGVuIHJlYWRpbmcgdGhlIGluZm9ybWF0aW9uIGluIHRoZSBmaWxlDQo+Pj4gbWV0YS9yZWNp
cGVzLWtlcm5lbC9saW51eC1saWJjLWhlYWRlcnMvbGludXgtbGliYy1oZWFkZXJzLmluYyBtYWtl
cyBtZSB0aGluaw0KPj4+IGFub3RoZXIgcm91bmQuIEl0IHN0YXRlczoNCj4+Pg0KPj4+ICINCj4+
PiAjIFlvdSdyZSBwcm9iYWJseSBsb29raW5nIGhlcmUgdGhpbmtpbmcgeW91IG5lZWQgdG8gY3Jl
YXRlIHNvbWUgbmV3IGNvcHkNCj4+PiAjIG9mIGxpbnV4LWxpYmMtaGVhZGVycyBzaW5jZSB5b3Ug
aGF2ZSB5b3VyIG93biBjdXN0b20ga2VybmVsLiBUbyBwdXQNCj4+PiAjIHRoaXMgc2ltcGx5LCB5
b3UgRE8gTk9ULg0KPj4+IC4uLg0KPj4+ICMgVGhlcmUgY2FuIGFsc28gYmUgYSBjYXNlIHdoZXJl
IHlvdXIga2VybmVsIGV4dHJlbWVseSBvbGQgYW5kIHlvdSB3YW50DQo+Pj4gIyBhbiBvbGRlciBs
aWJjIEFCSSBmb3IgdGhhdCBvbGQga2VybmVsLiBUaGUgaGVhZGVycyBpbnN0YWxsZWQgYnkgdGhp
cw0KPj4+ICMgcmVjaXBlIHNob3VsZCBzdGlsbCBiZSBhIHN0YW5kYXJkIG1haW5saW5lIGtlcm5l
bCwgbm90IHlvdXIgb3duIGN1c3RvbQ0KPj4+ICMgb25lLg0KPj4+ICINCj4+Pg0KPj4+IFRoZSBm
aXJzdCBwYXJ0IHN0YXRlcyB0aGF0IEkgc2hvdWxkIG5vdCBjaGFuZ2UgbGludXgtbGliYy1oZWFk
ZXJzLiBCdXQgd2hlbiBJDQo+Pj4gcmVhZCB0aGUgbGFzdCBwYXJ0IEknbSBub3Qgc3VyZSBhYm91
dCB0aGUgaW50ZXJwcmV0YXRpb24gYW5kIGl0IGNvdWxkIGJlIGZvcg0KPj4+IG15IGNhc2UuIEp1
c3QgYSBtYXR0ZXIgb2YgZGVmaW5pdGlvbiBpZiB2NC4xIGlzIGV4dHJlbWVseSBvbGQgY29tcGFy
ZWQgdG8gdjQuMTguDQo+Pj4NCj4+PiBUaGVuIGFub3RoZXIgdGhpbmcgY29tZXMgaW4gdG8gdGhl
IGVxdWF0aW9uOyB0aGUgTElCQyBBQkkuIFdoZW4gSSBsb29rIGludG8NCj4+PiB0aGUgY29uZmln
dXJhdGlvbiBvZiB0aGUgZ2xpYmMgcGFja2FnZSBpdCB1c2VzIHRoZSBjb25maWd1cmUgc3dpdGNo
DQo+Pj4gIi0tZW5hYmxlLWtlcm5lbD0zLjIiIHdoaWNoIG1lYW5zIGl0IHNoYWxsIGJlIGNvbXBh
dGlibGUgd2l0aCBhbGwga2VybmVsIG5ld2VyDQo+Pj4gdGhhbiB2My4yLiBUaGVuIHByb2JhYmx5
IGdsaWJjIGlzIGZpbmUgaWYgaXQgaXMgY29tcGlsZWQgd2l0aCB2NC4xOCBhbmQgcnVuIG9uDQo+
Pj4gdjQuMT8NCj4+Pg0KPj4+IElmIGJ1aWxkaW5nIGFsbCBhcHBsaWNhdGlvbnMgYWdhaW5zdCB2
NC4xOCBoZWFkZXJzIGJ1dCBydW4gb24gdjQuMSBrZXJuZWwuIEkNCj4+PiBoYXZlIGEgZmVlbGlu
ZyB0aGF0IHRoZXJlIHBvdGVudGlhbGx5IGNhbiBiZSBwcm9ibGVtcyBoZXJlLg0KPj4+DQo+Pj4g
UGxlYXNlIGhlbHAgbWUgd2l0aCBzb21lIGluZm9ybWF0aW9uIGFib3V0IHRoaXMgYW5kIHNoYXJl
IHlvdXIgb3BpbmlvbnM/IEFyZQ0KPj4+IHRoZXJlIGFueSByaXNrcyBhdCBhbGwgdG8gdXNlIHY0
LjEgYXMgbGludXgtbGliYy1oZWFkZXJzIGluIG15IFlvY3RvIGJ1aWxkPw0KPj4+IFRoZSBvbmx5
IGRyYXdiYWNrIEkgc2VlIGlzIHRoYXQgaXQgd2lsbCBiZSBhIG5ldyBjb25maWd1cmF0aW9uIG5v
dCB3ZWxsIHRlc3RlZA0KPj4+IGJ5IHRoZSBjb21tdW5pdHkuIEFyZSB0aGVyZSBvdGhlciByaXNr
cyBvciBkcmF3YmFja3MgdXNpbmcgeW91ciBvd24gdmVyc2lvbiBvZg0KPj4+IGxpbnV4LWxpYmMt
aGVhZGVycz8NCj4+DQo+Pg0KPj4gSXQgaXMgbm90IGJyb2tlbiwgc28gcGxlYXNlIGRvbid0IGZp
eCBpdC4NCj4+DQo+PiBPcGVuUExpIGhhcyBiZWVuIHVzaW5nIGtlcm5lbHMgd2F5IG9sZGVyIHRo
YW4gNC4xIHdpdGggdGhlIGtlcm5lbC1oZWFkZXJzDQo+PiBnZW5lcmF0ZWQgYnkgT0UveW9jdG8g
YW5kIGRpZCBub3QgZXhwZXJpZW5jZSBhbnkgcHJvYmxlbXMgd2l0aCB0aGF0LiBUaGVyZSdzDQo+
PiBhYm91dCA1MCsgbWFjaGluZXMgaW4gdGhlcmUgdGhhdCBoYXZlIHByZS1idWlsdCBiaW5hcnkg
ZHJpdmVycyB0aGF0IG9ubHkgd29yaw0KPj4gd2l0aCBhIHBhcnRpY3VsYXIga2VybmVsIGNvbmZp
ZyBhbmQgaGVuY2UgdGhlIG9sZCBzdHVmZi4NCj4+DQo+PiBUaGVyZSBhcmUgc29tZSBjb3JuZXIt
Y2FzZXMgd2l0aCBleG90aWMga2VybmVscyBhbmQgZXhvdGljIGV4cG9ydHMgYW5kIGV4b3RpYw0K
Pj4gYm9vdCBleGVjdXRhYmxlcyB0aGF0IHVzZSB0aGUga2VybmVsIGNvbXBpbGVyLCBidXQgSSBk
b3VidCB0aGF0IHlvdSdyZSBpbiB0aGVyZS4uLg0KPj4NCj4+IElmIHlvdSBoYXZlIGEga2VybmVs
IHRoYXQgZXhwb3J0cyBzb21ldGhpbmcgdGhhdCdzIG5vdCBpbiB0aGUgcmVndWxhciBoZWFkZXJz
LA0KPj4gaXQncyB3YXkgYmV0dGVyIHRvIHNvbHZlIHRoYXQgdXNpbmcgYSBzeXNjYWxsIHRoYW4g
dHJ5aW5nIHRvIHBva2UgaW4gbG93IGxldmVsDQo+PiBsaWJjIHN0dWZmLg0KPj4NCj4+IFNvIGFn
YWluLCBpZiB5b3UgZG9uJ3QgZXhwZXJpZW5jZSBwcm9ibGVtcywgcGxlYXNlIGRvbid0IHRyeSB0
byBmaXggaXQuLi4NCj4gDQo+IEhvdyB0byBmaW5kIGEgTGludXgga2VybmVsIHVhcGkgaGVhZGVy
IGZpbGUgd2l0aCBjdXN0b20gaW9jdGwoKSBldGMgZGVmaW5pdGlvbnMgd2hpY2gNCj4gYXJlIG1p
c3NpbmcgZm9ybSB0aGUgZGVmYXVsdCBsaW51eC1saWJjLWhlYWRlcnM/DQo+IA0KPiBPdGhlciBy
ZWNpcGVzIGFuZCBTREsgYnVpbGRzIG5lZWQgdGhlc2UuDQo+IA0KPiBDb3B5aW5nIHRoZSBuZWVk
ZWQgaGVhZGVyIGZpbGVzIGludG8gdGhlIHJlY2lwZXMgd2hvIG5lZWRzIHRoZW0gaXMgbm90IG9r
Lg0KDQpPbmUgc29sdXRpb24gSSBjYW4gdGhpbmsgb2YgaXMgdG8gcHV0IHRoZSBoZWFkZXIgaW50
byBpdCdzIG93biANCnJlY2lwZS9yZXBvc2l0b3J5IGFuZCB0aGVuIHJlZmVyIHRvIGl0IGxpa2Ug
YW55IG90aGVyIGxpYnJhcnkgd291bGQuIFJlZmVyIHRvIA0KdGhhdCByZWNpcGUgZnJvbSB0aGUg
bW9kdWxlIChvciBrZXJuZWwpIHJlY2lwZSB0aGF0IG5lZWRzIGl0LiBUaGlzIHdheSB5b3UgDQpo
YXZlIHlvdXIgaGVhZGVyIGluIGEgc2luZ2xlIG1haW50YWluYWJsZSBsb2NhdGlvbiBhbmQgZGVw
ZW5kZW5jaWVzIHByb3Blcmx5IA0KdGFrZW4gY2FyZSBvZi4NCg0KSWYgdGhhdCdzIG5vdCBzb21l
dGhpbmcgeW91IGNvdWxkIGxpdmUgd2l0aCwgc2hhcmUgeW91ciByZWNpcGVzLCBzaW5jZSB2YWd1
ZSANCnByb2JsZW0gZGVzY3JpcHRpb25zIHdpbGwgb25seSBnZXQgeW91IHZhZ3VlIHNvbHV0aW9u
cy4uLg0KDQoNCg0K
