Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.43])
 by mx.groups.io with SMTP id smtpd.web12.1558.1575278038764960147
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 01:14:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=bAqOzLLT;
 spf=pass (domain: topicproducts.com, ip: 40.107.0.43, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZmkdmmZNiyiMRnY8m7eMhflnegKapDaQFyIBTcWoLo=;
 b=bAqOzLLTPGmOgADJD0u6cOvY2VfqOLcc9rJt6ngM1DJVaY+gLfPHWU8/kR4bG1xJa+x+2dXvSFG6Po50jI1uVSP50BDneGqR7pc3+6v2gTwqPpmPphZg6FsXp5anZC+K5vLNWnHE89wn754IYrSjX5jQJaLqoYcWgsiUQtzQC9U=
Received: from AM7PR04CA0021.eurprd04.prod.outlook.com (2603:10a6:20b:110::31)
 by DB6PR04MB3160.eurprd04.prod.outlook.com (2603:10a6:6:7::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Mon, 2 Dec 2019 09:13:53 +0000
Received: from HE1EUR01FT049.eop-EUR01.prod.protection.outlook.com
 (2a01:111:f400:7e1f::208) by AM7PR04CA0021.outlook.office365.com
 (2603:10a6:20b:110::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18 via Frontend
 Transport; Mon, 2 Dec 2019 09:13:52 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=pass (signature
 was verified) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 52.166.56.231 as permitted sender)
 receiver=protection.outlook.com; client-ip=52.166.56.231;
 helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (52.166.56.231) by
 HE1EUR01FT049.mail.protection.outlook.com (10.152.0.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Mon, 2 Dec 2019 09:13:52 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (104.47.0.51) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Mon, 02 Dec 2019 09:13:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VoihAod89bUpc2CsdgEgwgre7Apbmk81r/PWZ2Vr1CLCSZd3kW91JTOQFwLCkpqvPFW3dRBz9YDDVhKkSlMyR8fS14Ie9nNKWaJ2wZTD7DClzWbJcCWVq1MIVZq6LsnvBddvI2E2lPmu7EtK7Oi/8i/v2bjklQnpEVFdOBvETWjG4k1K+fVrln0kzkY2Ej94bkXmHPhVvtJ+zBOhtofjSSvfndhujWP1Skla+MgVbYzxoV6cIs9OM/m2tDoOgFvSTrMdK/QWVJa8ghTf2S8BNzuy9MW/TWPV0ypBNYr3tqpCIJJK5cVGhRivI2F9dt6pxP7tO36U+hhETy2E2m1E6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZmkdmmZNiyiMRnY8m7eMhflnegKapDaQFyIBTcWoLo=;
 b=DebwiDqQukKzpxNHWJoHXzR3rRpm5VhjC7aCrAucJ07cfv/vo+f9lbkqL77uhWKJgc81gvoNcb516GV3FiqXOc/cAiSnNMOP5K7Q6w/3lw7u3IOXjP5qqPX1uD8nbrYIv1H0zbssSS6AdvWJ9OgTQJigNjYP91I15NPmfS4TiEziyLMY6jLvfM7uf254b40cTgtO0M2rsDqzc1Otv8nLdFk+KIysxXyLuxn9c3adx2BbgP4vPKxPZIIMmcjsXhA4AoC8VdOedfJtukDAJqjR7zLziAOvxUNQMMcE8Jk2fb2JnG3qDHZOenuAUU8iCyjK4R5I9AS5bWgTKR39ulUdfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZmkdmmZNiyiMRnY8m7eMhflnegKapDaQFyIBTcWoLo=;
 b=bAqOzLLTPGmOgADJD0u6cOvY2VfqOLcc9rJt6ngM1DJVaY+gLfPHWU8/kR4bG1xJa+x+2dXvSFG6Po50jI1uVSP50BDneGqR7pc3+6v2gTwqPpmPphZg6FsXp5anZC+K5vLNWnHE89wn754IYrSjX5jQJaLqoYcWgsiUQtzQC9U=
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com (10.141.174.88) by
 AM7PR04MB6952.eurprd04.prod.outlook.com (10.141.172.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 09:13:48 +0000
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com
 ([fe80::81d1:90db:da68:3643]) by AM7PR04MB6934.eurprd04.prod.outlook.com
 ([fe80::81d1:90db:da68:3643%6]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 09:13:47 +0000
From: "Mike Looijmans" <mike.looijmans@topic.nl>
To: "peter@berginkonsult.se" <peter@berginkonsult.se>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Topic: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Index: AQHVqJJSdvZ7L0ZCr02vDN+wSm7qfaemkHaA
Date: Mon, 2 Dec 2019 09:13:47 +0000
Message-ID: <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
In-Reply-To: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-clientproxiedby: AM0PR01CA0067.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:e6::44) To AM7PR04MB6934.eurprd04.prod.outlook.com
 (2603:10a6:20b:10d::24)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 30b8fe65-9ae7-45d0-a821-08d77707f31e
X-MS-TrafficTypeDiagnostic: AM7PR04MB6952:|DB6PR04MB3160:
X-Microsoft-Antispam-PRVS: 
	<DB6PR04MB3160E8FA6E9F12697BF8CCA696430@DB6PR04MB3160.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0239D46DB6
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(346002)(136003)(396003)(39830400003)(366004)(376002)(189003)(199004)(386003)(966005)(66476007)(66556008)(110136005)(316002)(58126008)(229853002)(8676002)(81156014)(81166006)(8936002)(66066001)(65956001)(6436002)(99286004)(508600001)(65806001)(25786009)(14454004)(6486002)(6246003)(71190400001)(256004)(14444005)(6306002)(71200400001)(44832011)(6512007)(102836004)(2616005)(11346002)(446003)(31696002)(76176011)(64756008)(66446008)(66946007)(42882007)(31686004)(52116002)(6116002)(2906002)(3846002)(7736002)(305945005)(5660300002)(2501003)(36756003)(26005)(6506007)(53546011)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM7PR04MB6952;H:AM7PR04MB6934.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 mnK4JGAhw95CqP64djdBgjd4fmq4Q//otpcvSFEESo/EAMYbuJ6oqcUIu9jWJDO5R5bKqV05DEhJnr+n1KsVNiAjEAMVSdiKDvo/KX+S2sMnDGl4ggQQs2TYPaXRWWvryORCQTTXsP/Sei8C7aI4nFjlGKfeIaNJTg+l2K/SLrpAspaqGhOalMPZgehhbO/o+HfJFmPb8Ppy92xGFUvMXgGm823GnOOUy+R829mKTOm9Kk6K4g3P/1A4fFQeNMLLAA7BaU46TOwHgDhCecAtitaPA1DUPFHYWX2BhLcVt6jNBfACjvWr73MH7RVVzmBq7RyVaALcNOJZSWbWzqft/hH5lyOO7m8zmzTWcnO6zuUe6JE+KUAxjCXm5KfvwtwCFfkApSznBfzF5vg75me5De3h8ODQR4MtwwsC7+aVCoYEkHt8rF93IMRyHWKjFGllFGSwSGwYWGcC8bVerNW9j6RWDGa/ORlUW3EBSbGJsoY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6952
X-CodeTwo-MessageID: bc76c6b5-a0f8-4cc9-9ec6-8bbd4bc0323d.20191202091350@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
Return-Path: mike.looijmans@topicproducts.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT049.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:52.166.56.231;IPV:NLI;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(136003)(396003)(376002)(39830400003)(346002)(199004)(189003)(6306002)(6486002)(47776003)(6512007)(25786009)(8676002)(8936002)(186003)(50466002)(23676004)(2486003)(66066001)(3846002)(6116002)(14444005)(65956001)(2906002)(2501003)(65806001)(76176011)(102836004)(53546011)(386003)(6506007)(356004)(31686004)(5660300002)(36756003)(7636002)(42882007)(436003)(2616005)(508600001)(966005)(26005)(14454004)(246002)(7736002)(99286004)(44832011)(6246003)(229853002)(31696002)(11346002)(110136005)(316002)(446003)(7596002)(305945005)(58126008)(336012)(70206006)(70586007)(106002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB6PR04MB3160;H:westeu11-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu11-emailsignatures-cloud.codetwo.com;A:1;MX:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c4bdeebf-216d-463e-9ae9-08d77707f054
X-Forefront-PRVS: 0239D46DB6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nIanQdLxokz2CLvWTdii69Kem0l88XTx0T1g2s9fXAoiTUiLLPUJTVR1FmhdR+ffoHBVgEyo9/8+Y1TFJRi/SxS3FG7f2paCb7AB+tWcW32Fhwf43jrjedZEGIc4bZTKJai/aO6xAyuB24F0lnsa01AfWnVMuGNT3CatpT7lVGu1Ntl5Q07YLpVPO7YS4Ai/8SjoZy/eypHhzPdNY4BELq2d9O7VGP0upzbYWPP5Gm5pGiHZU3vK8qyVQt37K1QTYGYehA1cA6rwNINwnt3550zi8SExHQgHM5TQOYVJGzRQpfYDhTOfgr+EDaFa5scgVtSj+MyRTO8oqU7fxGneJkY1zPptmFS8MEOEU8R6jd9eMIE90LwBg0BJZl5DpWQ3M32GxMqLQwHJ9alrL8J76t0cfPE0K5LBIpu40yDgLStfwGQhxe+w9q5QVORQ/XvhjbTUsZ/Lhi4aeaik7b1qDK8262vY47crgmVTRJo/sZ8=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2019 09:13:52.2742
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b8fe65-9ae7-45d0-a821-08d77707f31e
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[52.166.56.231];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3160
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <4489754082996A49846CD478E9D96936@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMDEtMTItMTkgMjI6NTcsIFBldGVyIEJlcmdpbiB2aWEgTGlzdHMuWW9jdG9wcm9qZWN0Lk9y
ZyB3cm90ZToNCj4gSGksDQo+IA0KPiBJJ20gY3VycmVudGx5IHdvcmtpbmcgaW4gYSBwcm9qZWN0
IHVzaW5nIFlvY3RvIDIuNiAodGh1ZCkgcmVsZWFzZS4gSXQgaGFzIA0KPiBkZWZhdWx0IGtlcm5l
bCB2NC4xOCBhbmQgYWxzbyBsaW51eC1saWJjLWhlYWRlcnMgZnJvbSBrZXJuZWwgdjQuMTguIElu
IG15IA0KPiBwcm9qZWN0IHdlIHdpbGwgdXNlIGtlcm5lbCB2NC4xLiBJIHdvdWxkIGxpa2UgYWR2
aWNlIGhvdyB0byBoYW5kbGUgdGhlIA0KPiBsaW51eC1saWJjLWhlYWRlcnMgcGFja2FnZSBmb3Ig
bXkgcHJvamVjdCwgc2hvdWxkIEkgdXNlIHRoZSB2NC4xOCBoZWFkZXJzIG9yIA0KPiBzaG91bGQg
SSB1c2UgdGhlIHY0LjEgaGVhZGVyIGZpbGVzIHdoaWNoIG1hdGNoZXMgdGhlIHJ1bm5pbmcga2Vy
bmVsPw0KPiANCj4gIEZyb20gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3Qv
a2J1aWxkL2hlYWRlcnNfaW5zdGFsbC5odG1sOg0KPiAiS2VybmVsIGhlYWRlcnMgYXJlIGJhY2t3
YXJkcyBjb21wYXRpYmxlLCBidXQgbm90IGZvcndhcmRzIGNvbXBhdGlibGUuIFRoaXMgDQo+IG1l
YW5zIHRoYXQgYSBwcm9ncmFtIGJ1aWx0IGFnYWluc3QgYSBDIGxpYnJhcnkgdXNpbmcgb2xkZXIg
a2VybmVsIGhlYWRlcnMgDQo+IHNob3VsZCBydW4gb24gYSBuZXdlciBrZXJuZWwgKGFsdGhvdWdo
IGl0IG1heSBub3QgaGF2ZSBhY2Nlc3MgdG8gbmV3IA0KPiBmZWF0dXJlcyksIGJ1dCBhIHByb2dy
YW0gYnVpbHQgYWdhaW5zdCBuZXdlciBrZXJuZWwgaGVhZGVycyBtYXkgbm90IHdvcmsgb24gYW4g
DQo+IG9sZGVyIGtlcm5lbC4iDQo+IA0KPiBXaXRoIHRoZSBpbmZvcm1hdGlvbiBmcm9tIHRoZSBx
dW90ZSBhYm92ZSBJIHdvdWxkIGRpcmVjdGx5IHVzZSB2NC4xIGhlYWRlcnMgYXMgDQo+IG15IGxp
bnV4LWxpYmMtaGVhZGVycy4gQnV0IHRoZW4gcmVhZGluZyB0aGUgaW5mb3JtYXRpb24gaW4gdGhl
IGZpbGUgDQo+IG1ldGEvcmVjaXBlcy1rZXJuZWwvbGludXgtbGliYy1oZWFkZXJzL2xpbnV4LWxp
YmMtaGVhZGVycy5pbmMgbWFrZXMgbWUgdGhpbmsgDQo+IGFub3RoZXIgcm91bmQuIEl0IHN0YXRl
czoNCj4gDQo+ICINCj4gIyBZb3UncmUgcHJvYmFibHkgbG9va2luZyBoZXJlIHRoaW5raW5nIHlv
dSBuZWVkIHRvIGNyZWF0ZSBzb21lIG5ldyBjb3B5DQo+ICMgb2YgbGludXgtbGliYy1oZWFkZXJz
IHNpbmNlIHlvdSBoYXZlIHlvdXIgb3duIGN1c3RvbSBrZXJuZWwuIFRvIHB1dA0KPiAjIHRoaXMg
c2ltcGx5LCB5b3UgRE8gTk9ULg0KPiAuLi4NCj4gIyBUaGVyZSBjYW4gYWxzbyBiZSBhIGNhc2Ug
d2hlcmUgeW91ciBrZXJuZWwgZXh0cmVtZWx5IG9sZCBhbmQgeW91IHdhbnQNCj4gIyBhbiBvbGRl
ciBsaWJjIEFCSSBmb3IgdGhhdCBvbGQga2VybmVsLiBUaGUgaGVhZGVycyBpbnN0YWxsZWQgYnkg
dGhpcw0KPiAjIHJlY2lwZSBzaG91bGQgc3RpbGwgYmUgYSBzdGFuZGFyZCBtYWlubGluZSBrZXJu
ZWwsIG5vdCB5b3VyIG93biBjdXN0b20NCj4gIyBvbmUuDQo+ICINCj4gDQo+IFRoZSBmaXJzdCBw
YXJ0IHN0YXRlcyB0aGF0IEkgc2hvdWxkIG5vdCBjaGFuZ2UgbGludXgtbGliYy1oZWFkZXJzLiBC
dXQgd2hlbiBJIA0KPiByZWFkIHRoZSBsYXN0IHBhcnQgSSdtIG5vdCBzdXJlIGFib3V0IHRoZSBp
bnRlcnByZXRhdGlvbiBhbmQgaXQgY291bGQgYmUgZm9yIA0KPiBteSBjYXNlLiBKdXN0IGEgbWF0
dGVyIG9mIGRlZmluaXRpb24gaWYgdjQuMSBpcyBleHRyZW1lbHkgb2xkIGNvbXBhcmVkIHRvIHY0
LjE4Lg0KPiANCj4gVGhlbiBhbm90aGVyIHRoaW5nIGNvbWVzIGluIHRvIHRoZSBlcXVhdGlvbjsg
dGhlIExJQkMgQUJJLiBXaGVuIEkgbG9vayBpbnRvIA0KPiB0aGUgY29uZmlndXJhdGlvbiBvZiB0
aGUgZ2xpYmMgcGFja2FnZSBpdCB1c2VzIHRoZSBjb25maWd1cmUgc3dpdGNoIA0KPiAiLS1lbmFi
bGUta2VybmVsPTMuMiIgd2hpY2ggbWVhbnMgaXQgc2hhbGwgYmUgY29tcGF0aWJsZSB3aXRoIGFs
bCBrZXJuZWwgbmV3ZXIgDQo+IHRoYW4gdjMuMi4gVGhlbiBwcm9iYWJseSBnbGliYyBpcyBmaW5l
IGlmIGl0IGlzIGNvbXBpbGVkIHdpdGggdjQuMTggYW5kIHJ1biBvbiANCj4gdjQuMT8NCj4gDQo+
IElmIGJ1aWxkaW5nIGFsbCBhcHBsaWNhdGlvbnMgYWdhaW5zdCB2NC4xOCBoZWFkZXJzIGJ1dCBy
dW4gb24gdjQuMSBrZXJuZWwuIEkgDQo+IGhhdmUgYSBmZWVsaW5nIHRoYXQgdGhlcmUgcG90ZW50
aWFsbHkgY2FuIGJlIHByb2JsZW1zIGhlcmUuDQo+IA0KPiBQbGVhc2UgaGVscCBtZSB3aXRoIHNv
bWUgaW5mb3JtYXRpb24gYWJvdXQgdGhpcyBhbmQgc2hhcmUgeW91ciBvcGluaW9ucz8gQXJlIA0K
PiB0aGVyZSBhbnkgcmlza3MgYXQgYWxsIHRvIHVzZSB2NC4xIGFzIGxpbnV4LWxpYmMtaGVhZGVy
cyBpbiBteSBZb2N0byBidWlsZD8gDQo+IFRoZSBvbmx5IGRyYXdiYWNrIEkgc2VlIGlzIHRoYXQg
aXQgd2lsbCBiZSBhIG5ldyBjb25maWd1cmF0aW9uIG5vdCB3ZWxsIHRlc3RlZCANCj4gYnkgdGhl
IGNvbW11bml0eS4gQXJlIHRoZXJlIG90aGVyIHJpc2tzIG9yIGRyYXdiYWNrcyB1c2luZyB5b3Vy
IG93biB2ZXJzaW9uIG9mIA0KPiBsaW51eC1saWJjLWhlYWRlcnM/DQoNCg0KSXQgaXMgbm90IGJy
b2tlbiwgc28gcGxlYXNlIGRvbid0IGZpeCBpdC4NCg0KT3BlblBMaSBoYXMgYmVlbiB1c2luZyBr
ZXJuZWxzIHdheSBvbGRlciB0aGFuIDQuMSB3aXRoIHRoZSBrZXJuZWwtaGVhZGVycyANCmdlbmVy
YXRlZCBieSBPRS95b2N0byBhbmQgZGlkIG5vdCBleHBlcmllbmNlIGFueSBwcm9ibGVtcyB3aXRo
IHRoYXQuIFRoZXJlJ3MgDQphYm91dCA1MCsgbWFjaGluZXMgaW4gdGhlcmUgdGhhdCBoYXZlIHBy
ZS1idWlsdCBiaW5hcnkgZHJpdmVycyB0aGF0IG9ubHkgd29yayANCndpdGggYSBwYXJ0aWN1bGFy
IGtlcm5lbCBjb25maWcgYW5kIGhlbmNlIHRoZSBvbGQgc3R1ZmYuDQoNClRoZXJlIGFyZSBzb21l
IGNvcm5lci1jYXNlcyB3aXRoIGV4b3RpYyBrZXJuZWxzIGFuZCBleG90aWMgZXhwb3J0cyBhbmQg
ZXhvdGljIA0KYm9vdCBleGVjdXRhYmxlcyB0aGF0IHVzZSB0aGUga2VybmVsIGNvbXBpbGVyLCBi
dXQgSSBkb3VidCB0aGF0IHlvdSdyZSBpbiB0aGVyZS4uLg0KDQpJZiB5b3UgaGF2ZSBhIGtlcm5l
bCB0aGF0IGV4cG9ydHMgc29tZXRoaW5nIHRoYXQncyBub3QgaW4gdGhlIHJlZ3VsYXIgaGVhZGVy
cywgDQppdCdzIHdheSBiZXR0ZXIgdG8gc29sdmUgdGhhdCB1c2luZyBhIHN5c2NhbGwgdGhhbiB0
cnlpbmcgdG8gcG9rZSBpbiBsb3cgbGV2ZWwgDQpsaWJjIHN0dWZmLg0KDQpTbyBhZ2FpbiwgaWYg
eW91IGRvbid0IGV4cGVyaWVuY2UgcHJvYmxlbXMsIHBsZWFzZSBkb24ndCB0cnkgdG8gZml4IGl0
Li4uDQoNCg==
