Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A7FE008D9; Mon, 18 Nov 2019 03:06:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.2.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.4 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20056.outbound.protection.outlook.com [40.107.2.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E1D7E00852
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 03:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zIxxTil/yilBgZhoJtw5SYhjjlR365yeGrLkmO5H7Kc=;
	b=svqIJNRXTjPx3A82Q6JRSjx1LNqT4qflKirgHEj+E2IIEdnav/jMG+DeXDJGICGD/XV6Em5YmnA+MeegkF3Dks5IfEryEXxx+uXBKgmFsBcUisxaQb5igVi5k9PCsemRKUwjcjh0wahS2wOpLZ5l5u9gb8is5+Fuj0hqBP9gY20=
Received: from AM5PR0402CA0001.eurprd04.prod.outlook.com
	(2603:10a6:203:90::11) by VI1PR0402MB3359.eurprd04.prod.outlook.com
	(2603:10a6:803:3::28) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23;
	Mon, 18 Nov 2019 11:05:56 +0000
Received: from HE1EUR01FT031.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::208) by AM5PR0402CA0001.outlook.office365.com
	(2603:10a6:203:90::11) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via
	Frontend Transport; Mon, 18 Nov 2019 11:05:56 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=none (message not
	signed) header.d=none; yoctoproject.org; dmarc=bestguesspass action=none
	header.from=topicproducts.com;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	HE1EUR01FT031.mail.protection.outlook.com (10.152.0.177) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.23 via Frontend Transport; Mon, 18 Nov 2019 11:05:56 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.59) by
	westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Mon, 18 Nov 2019 11:05:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=ElrD61N+OVOv4+XZeWhnHYsWrckzkazE39TG5ipWBLPXM9ql7AWEasOhynN0YN2271E7R10K2Pw9lXZUH9yu/vQhdC8d443f8Po3BtVjwkt4gKK45o1/ua1tg8vpfYik/UUPmKu7RhqKsBGMs0qERZIlKjpCi2bPHzcx4luiC/uquIqANTfUWJprFtiWYQbENXsMtip+LCPxi9g/+S07F3yDNjCxfrjxFCcVjACnNyJiFQ2xSc3M6HVNwAnB1Gj+rhunxYeWliO7KJ5vtZtsEZI15H+9JDZwH3xiMO72fh45M6EjB6XftiT00AiLLCm9pLdxmd+mfV9Uk3GM4oC0qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=rY1g7sXU8lJJ65k8Uhro62i00Ql2krGbHllDdfWsrzY=;
	b=H9BmAncnqHF13SqzXwn5RY/C1fZ/dp5Ow0iqJdTtrs2R10e5H+Oo5jt1zzR5zzXzzlPQnr3aHKrM7NsRIT/pFB9KG+tTsZ086/oWT+YJw+w7NLeaR5+aoUZyFCzNXAjnWn9O4q19HABgZgZBrlCABkUpWH7EwSq0QptPbK2UPplv6NZHaTcZZYegbObiJDFKDsbgyzxQL4iOXAtC+bIFmVIJemwnEiiaDzCrs6gH3gAiBKogh3nCDbrKAwEgYON6SevfuwzFr9yhMcAqW6f80rU8ZtIjOgaOkWLLOyppkrkRmhsDfWONP0G2rNpIcmgNcAnjCybBLukuZ0NeYK9hDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=topicproducts.com; dmarc=pass action=none
	header.from=topicproducts.com; dkim=pass header.d=topicproducts.com;
	arc=none
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com (10.141.174.88) by
	AM7PR04MB6792.eurprd04.prod.outlook.com (10.141.175.8) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.23; Mon, 18 Nov 2019 11:05:52 +0000
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com
	([fe80::81d1:90db:da68:3643]) by
	AM7PR04MB6934.eurprd04.prod.outlook.com
	([fe80::81d1:90db:da68:3643%6]) with mapi id 15.20.2451.029;
	Mon, 18 Nov 2019 11:05:52 +0000
From: Mike Looijmans <mike.looijmans@topicproducts.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] :how to solve the basehash value changed from 'xxx' to
	'aaaa' ?
Thread-Index: AQHVnfRuh2gyIZthXEacYbZKU8xO0KeQxF6A
Date: Mon, 18 Nov 2019 11:05:52 +0000
Message-ID: <bfe41df9-ccaf-dbf0-0250-d76d04f4b92f@topicproducts.com>
References: <1f16aed3.34f0.16e62bc914f.Coremail.ouyangxuan10@163.com>
	<1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.937f51ed-079c-466a-ad63-84b226977b38@emailsignatures365.codetwo.com>
	<1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.a7a4e13e-2941-4bd4-89d1-e2bfc50e1d1a@emailsignatures365.codetwo.com>
In-Reply-To: <1f16aed3.34f0.16e62bc914f.Coremail.ouyangxuan10@163.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
x-clientproxiedby: AM3PR04CA0132.eurprd04.prod.outlook.com (2603:10a6:207::16)
	To AM7PR04MB6934.eurprd04.prod.outlook.com
	(2603:10a6:20b:10d::24)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 909bf8a4-e393-4c46-c195-08d76c17492f
X-MS-TrafficTypeDiagnostic: AM7PR04MB6792:|VI1PR0402MB3359:
X-Microsoft-Antispam-PRVS: <VI1PR0402MB33596F65D5EA7BB50EA8BCFB964D0@VI1PR0402MB3359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;OLM:6430;
x-forefront-prvs: 0225B0D5BC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(396003)(39840400004)(136003)(366004)(199004)(189003)(31696002)(2616005)(476003)(86362001)(3846002)(53546011)(8936002)(6512007)(446003)(36756003)(64756008)(66476007)(66556008)(65956001)(65806001)(25786009)(52116002)(81156014)(6436002)(186003)(229853002)(2501003)(14454004)(2906002)(508600001)(26005)(6246003)(44832011)(386003)(76176011)(8676002)(102836004)(11346002)(6116002)(5640700003)(6506007)(486006)(6486002)(2351001)(256004)(1730700003)(81166006)(99286004)(14444005)(66066001)(31686004)(71190400001)(305945005)(5660300002)(316002)(58126008)(6916009)(66946007)(71200400001)(7736002)(66446008)(13513002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB6792;
	H:AM7PR04MB6934.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: r2yeKfGb0W8mEOfaLjL7Vr9zuEEtcC1RNzB7uM/fc9Aw68x8m6Whwj4noyMs0LqvvKLTefDhBkFGOiNjXxM2kyn0ebZv6sY0nlks+ZZe5REiW/PFwqxrtZ5Tg5bhKbHiHLuP2TRB6axBySZrSaVMb53U3sxIt27d1S2rZVzwEKAuFi8kXADM5KIHaW1DTQXnIcJ8CP7Z7NpFe6+7Z0sNu/+jEc4NAQEOUtpy32QeWKH9HOLUZzsUdloSZl02WC2h+FGqJVvWiNg89CQSwm2egnAR6bpZpupgjbwU0/VuvFQJQq1cwSVE75pfhi/gVHGr8sPR9ZgiPpURolfbmV0lkhJluhVRjbt+JRhhVfRHBpW8LdNfsjh0emH633ez6B2B0+fFCJo13UKPOsMZYp7sd2yXNJF+nG0vjyHYt2B/3ngRzg5uhmkyF9lCemDv/wj4
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6792
X-CodeTwo-MessageID: 12be955e-11e3-4d9c-9a4a-6af2bef33e44.20191118110554@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT031.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:NL; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(396003)(136003)(39840400004)(376002)(346002)(199004)(189003)(65956001)(246002)(5640700003)(31696002)(7636002)(11346002)(186003)(6916009)(99286004)(14454004)(8676002)(58126008)(436003)(106002)(6116002)(2906002)(102836004)(65806001)(44832011)(8936002)(14444005)(25786009)(316002)(36756003)(508600001)(6246003)(6512007)(476003)(2616005)(126002)(26005)(486006)(446003)(86362001)(336012)(2351001)(70586007)(2501003)(66066001)(6486002)(3846002)(50466002)(70206006)(5660300002)(31686004)(15974865002)(356004)(47776003)(2486003)(23676004)(76176011)(7736002)(386003)(305945005)(7596002)(6506007)(1730700003)(53546011)(229853002)(13513002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3359;
	H:westeu11-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu11-emailsignatures-cloud.codetwo.com; A:1;
	MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d15f95aa-1d77-4b69-636b-08d76c1746ac
X-MS-Exchange-PUrlCount: 1
X-Forefront-PRVS: 0225B0D5BC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3SaouGLdVeNg381ugl2gMNPn82t17ukGU3d+rUx9Nob1BMCoGGoH/qWAPfSYSUl00blU78ky+I76ttDIO65nL1uZt5T7n9XcOrp0/1z9Y4CqUh3N7OC5MSteA13/h+pa3yRei6Ux14lMXxzV9wFqs2fL65HqptLd7ZMROKmX4NwDrDmfD+i3363WaEKULUw60r2hihcOye0IYnUAYgPQb5jaa6C3K7N0uxA+puRc4Ae+cwKB6DhnOvGczmgFxTTvNd4CRoKtf2daP4aVSW/dkagmnKZWGAYabnpvtneocm9kZ69GObHM/gOcHnJbD+q97QQltMfMpd17mdPcgyRTDBfJvUboAsqhnOTnBGWHS2t6TXOW2B7EzOipD24QJcQPr3a4Uw2/xxGiPSAUuWunv5imBozWoNB7UYChSA6OLZwN4Mq5Z2mMfrLpYLnauI8HPyCpD2/c21aaF8/Jdmx7wva9skkomPuzkU8sSyOUWgs=
X-OriginatorOrg: TopicProducts.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2019 11:05:56.3658 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 909bf8a4-e393-4c46-c195-08d76c17492f
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3359
X-Mailman-Approved-At: Thu, 21 Nov 2019 01:12:37 -0800
Subject: Re: :how to solve the basehash value changed from 'xxx' to 'aaaa' ?
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
X-List-Received-Date: Mon, 18 Nov 2019 11:06:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <135BDBA2B08CD64697AA21A7FB8E4F37@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

V2l0aG91dCB5b3VyIHJlY2lwZSBzb3VyY2UgY29kZSwgbm8gb25lIGNhbiB0ZWxsIGZvciBzdXJl
LCBidXQgSSBzdXNwZWN0IHlvdSANCmhhdmUgc29tZXRoaW5nIGxpa2UgYSAiREFURSIgaW4gdGhl
cmUgdGhhdCBldmF1bGF0ZXMgdG8gYSBkaWZmZXJlbnQgdmFsdWUgaWYgDQp5b3UgcnVuIGl0IGEg
c2Vjb25kIGxhdGVyLg0KDQoNCk1ldCB2cmllbmRlbGlqa2UgZ3JvZXQgLyBraW5kIHJlZ2FyZHMs
CgpNaWtlIExvb2lqbWFucwpTeXN0ZW0gRXhwZXJ0CgoKVE9QSUMgRW1iZWRkZWQgUHJvZHVjdHMg
Qi5WLgpNYXRlcmlhYWx3ZWcgNCwgNTY4MSBSSiBCZXN0ClBvc3RidXMgNDQwLCA1NjgwIEFLIEJl
c3QKVGhlIE5ldGhlcmxhbmRzCgpUOiArMzEgKDApIDQ5OSAzMyA2OSA2OQpFOiBtaWtlLmxvb2lq
bWFuc0B0b3BpY3Byb2R1Y3RzLmNvbQpXOiB3d3cudG9waWNwcm9kdWN0cy5jb20KClBsZWFzZSBj
b25zaWRlciB0aGUgZW52aXJvbm1lbnQgYmVmb3JlIHByaW50aW5nIHRoaXMgZS1tYWlsCk9uIDEz
LTExLTE5IDA0OjA5LCB3d3cgd3JvdGU6DQo+IERlYXIgYWxsLA0KPiANCj4gV2hlbiBJIG1vZGlm
eSB0aGUgb3MtcmVsZWFzZSBmaWxlIGluIG15IHlvY3RvIHByb2plY3QsIGl0IGFwcGVhciBzb21l
IGVycm9yLCANCj4gYW5kIGhvdyBjYW4gSSBzb2x2ZSBpdCA/wqBXaG8gY2FuIGdpdmUgbWUgc29t
ZSBoZWxwIG9yIGFkdmljZT8gVGhhbmsgeW9177yBDQo+IEkgY2FycmllZCBvdXQgdGhlIHJlY29t
bWVuZGVkIG9yZGVyIGFuZCBpdCBkaWRuJ3Qgd29yay4NCj4gDQo+IC9FUlJPUjogb3MtcmVsZWFz
ZS0xLjAtcjAgZG9fY29tcGlsZTogVGFza2hhc2ggbWlzbWF0Y2ggDQo+IGNlMTMzZjA0NTg2MDhl
MDNhYTU1MjI0ZGYyODE1NmU1MjNlNTQ5MDMxMTVlZmJiY2Q2Mjk0NmY4NGE4NjcyMDEgdmVyc3Vz
IA0KPiA3MjY5ODgxZjBlYjE3NTllZDQyMGEyZGI0YzA0ZmI0NzdjZDhjMTI4OGJjNWY4MmRmNWM4
MTYxYmI5MjZlYTFmIGZvciANCj4gL2hvbWUvdGVtcC93YW5naHAvd3NwL2dpdF9zL2xvY2FsLXNv
dXJjZS9vYm1jLXN1Z29uL2VudGl0eV9mcnV1L21ldGEvcmVjaXBlcy1jb3JlL29zLXJlbGVhc2Uv
b3MtcmVsZWFzZS5iYi5kb19jb21waWxlLw0KPiAvRVJST1I6IFRhc2toYXNoIG1pc21hdGNoIA0K
PiBjZTEzM2YwNDU4NjA4ZTAzYWE1NTIyNGRmMjgxNTZlNTIzZTU0OTAzMTE1ZWZiYmNkNjI5NDZm
ODRhODY3MjAxIHZlcnN1cyANCj4gNzI2OTg4MWYwZWIxNzU5ZWQ0MjBhMmRiNGMwNGZiNDc3Y2Q4
YzEyODhiYzVmODJkZjVjODE2MWJiOTI2ZWExZiBmb3IgDQo+IC9ob21lL3RlbXAvd2FuZ2hwL3dz
cC9naXRfcy9sb2NhbC1zb3VyY2Uvb2JtYy1zdWdvbi9lbnRpdHlfZnJ1dS9tZXRhL3JlY2lwZXMt
Y29yZS9vcy1yZWxlYXNlL29zLXJlbGVhc2UuYmIuZG9fY29tcGlsZS8NCj4gL0VSUk9SOiBXaGVu
IHJlcGFyc2luZyANCj4gL2hvbWUvdGVtcC93YW5naHAvd3NwL2dpdF9zL2xvY2FsLXNvdXJjZS9v
Ym1jLXN1Z29uL2VudGl0eV9mcnV1L21ldGEvcmVjaXBlcy1jb3JlL29zLXJlbGVhc2Uvb3MtcmVs
ZWFzZS5iYi5kb19jb21waWxlLCANCj4gLy90aGUgYmFzZWhhc2ggdmFsdWUgY2hhbmdlZCBmcm9t
IA0KPiA5OWE0MmExYTNiMWExNTFkZTYwNDI2N2IxNTk1NThlY2FmMTAzMWEzYmVjODkxN2RmMTMy
YzgxMzAyZTcyOWE1IHRvIA0KPiA0ZjMyODhhODc2M2UyZTFhZjc4ZTRiM2NkZDljMGMwY2NiM2Iw
ZDVjNzhhMzA3M2MxODhiMjIyMDBkZjJhOWIwLiAvL1RoZSANCj4gbWV0YWRhdGEgaXMgbm90IGRl
dGVybWluaXN0aWMgYW5kIHRoaXMgbmVlZHMgdG8gYmUgZml4ZWQuLw0KPiAvRVJST1I6IFRoZSBm
b2xsb3dpbmcgY29tbWFuZHMgbWF5IGhlbHA6Lw0KPiAvRVJST1I6ICQgYml0YmFrZSBvcy1yZWxl
YXNlIC1jZG9fY29tcGlsZSAtU25vbmUvDQo+IC9FUlJPUjogVGhlbjovDQo+IC9FUlJPUjogJCBi
aXRiYWtlIG9zLXJlbGVhc2UgLWNkb19jb21waWxlIC1TcHJpbnRkaWZmLw0KPiANCj4gL0VSUk9S
OiBXaGVuIHJlcGFyc2luZyANCj4gL2hvbWUvdGVtcC93YW5naHAvd3NwL2dpdF9zL2xvY2FsLXNv
dXJjZS9vYm1jLXN1Z29uL2VudGl0eV9mcnV1L21ldGEvcmVjaXBlcy1jb3JlL29zLXJlbGVhc2Uv
b3MtcmVsZWFzZS5iYi5kb19jb21waWxlLCANCj4gLy90aGUgYmFzZWhhc2ggdmFsdWUgY2hhbmdl
ZCBmcm9tIA0KPiA5OWE0MmExYTNiMWExNTFkZTYwNDI2N2IxNTk1NThlY2FmMTAzMWEzYmVjODkx
N2RmMTMyYzgxMzAyZTcyOWE1IHRvIA0KPiA0N2MzMDAxMmRhYTZhYTc3YmUwOWE5M2ZlMjFlNjY5
OTUzNjFlZjI2YjQ0ODcxMTEwMDU2MTdkYjhjYjRkZTU5LiBUaGUgbWV0YWRhdGEgDQo+IGlzIG5v
dCBkZXRlcm1pbmlzdGljIGFuZCB0aGlzIG5lZWRzIHRvIGJlIGZpeGVkLi8NCj4gL0VSUk9SOiBU
aGUgZm9sbG93aW5nIGNvbW1hbmRzIG1heSBoZWxwOi8NCj4gL0VSUk9SOiAkIGJpdGJha2Ugb3Mt
cmVsZWFzZSAtY2RvX2NvbXBpbGUgLVNub25lLw0KPiAvRVJST1I6IFRoZW46Lw0KPiAvRVJST1I6
ICQgYml0YmFrZSBvcy1yZWxlYXNlIC1jZG9fY29tcGlsZSAtU3ByaW50ZGlmZi8NCj4gDQo+IHRo
YW5rcywNCj4gQnlyb24NCj4gDQo+IA0KPiANCg0K

