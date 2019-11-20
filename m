Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28456E00E27; Wed, 20 Nov 2019 00:00:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.4.58 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr40058.outbound.protection.outlook.com [40.107.4.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E7C2E00E24
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 00:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=+X17mYFIynAaWmmXWPWeksMxGgzj4yVtKUjKDS3tt60=;
	b=omCc7uFeqCTxvTtFxepR9SZ7fgzxUlqBkQputy1cFFMpk7pKh/lELWgEFTzIvlGYBOajcXdtiqiFLwbjpmQ7MJsaWKq+BlI+VjQJzknN94/VU3NNCLSGTEyaPt07zXuln9MfQYJoB2NBtCivhCJLvhOIFlcUmQYGnpxzf53pxUs=
Received: from AM0PR0402CA0022.eurprd04.prod.outlook.com
	(2603:10a6:208:15::35) by DB8PR04MB6841.eurprd04.prod.outlook.com
	(2603:10a6:10:116::21) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23;
	Wed, 20 Nov 2019 08:00:14 +0000
Received: from HE1EUR01FT052.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::207) by AM0PR0402CA0022.outlook.office365.com
	(2603:10a6:208:15::35) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via
	Frontend Transport; Wed, 20 Nov 2019 08:00:14 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; streamunlimited.com;
	dkim=pass (signature
	was verified) header.d=topicbv.onmicrosoft.com;streamunlimited.com;
	dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	HE1EUR01FT052.mail.protection.outlook.com (10.152.1.94) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2474.17 via Frontend Transport; Wed, 20 Nov 2019 08:00:13 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.58) by
	westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Wed, 20 Nov 2019 08:00:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=gKAgY39huCdZ9vqj6pe/XeFaKHZWHeBN+7m3k0R8e089TmAkowf9Ji1cpVKAqpb6tYrsL0SLO/z2ELKhmCkcqNKDkpdIMmSA8b6Msd0UoZdyFp6eiaTsk2o+uIS271gCjvx5ko/tjLUqiUdPHOqmMRZs3C1NBrVDyGB3oKXpDibxJGkTpfJ2Brl2+M1ICi7hUbnq48mR1cHFZy6q22wVIuAOYcu2IhyFFUT4oLVHG+3HsSGsKMrwig0wO+555B1vwH+iPevHO4RjnsXBTHpCkPkEnonJx75GwzhiP3nFIccWa+0vHZGeQz+GkZEYRbFx6BwcbEZgpLzLw5y3oEyrmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=+X17mYFIynAaWmmXWPWeksMxGgzj4yVtKUjKDS3tt60=;
	b=nibXs66Lvfuq7ICWVAN3z+9UYQEDLVOp5Wqv3XnOcfXTcx33GT2ZwBklePwlJn6gvfGDLs1+Oi0ZjNKV1ER9qHWIaQCmtf7UAJjfUroWdnGwT9xYQCnbph9eLkxmJUvvisZiS+5I0vcbHq0YSWTnhDjRWu9ywtxbfIg/lOI/vRbOAa3Lod+cNPvGcTYPl2hVYDRd+zqXX7MzAXFn230KRN2n93mSi61QlZMJ4Mdj0WzC6+6ZLuEW0AKvRMGdUprCASj0gHYKM9G4FIVX8ote7LOPoMwu8CprZXe3Tru8zqawQBXNZBLSMersdfs2uqr8aZrB7HbJN3kvZAXK60cERg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=topicproducts.com;
	dmarc=pass action=none header.from=topic.nl; 
	dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=+X17mYFIynAaWmmXWPWeksMxGgzj4yVtKUjKDS3tt60=;
	b=omCc7uFeqCTxvTtFxepR9SZ7fgzxUlqBkQputy1cFFMpk7pKh/lELWgEFTzIvlGYBOajcXdtiqiFLwbjpmQ7MJsaWKq+BlI+VjQJzknN94/VU3NNCLSGTEyaPt07zXuln9MfQYJoB2NBtCivhCJLvhOIFlcUmQYGnpxzf53pxUs=
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com (10.141.174.88) by
	AM7PR04MB7126.eurprd04.prod.outlook.com (52.135.57.11) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2474.17; Wed, 20 Nov 2019 08:00:10 +0000
Received: from AM7PR04MB6934.eurprd04.prod.outlook.com
	([fe80::81d1:90db:da68:3643]) by
	AM7PR04MB6934.eurprd04.prod.outlook.com
	([fe80::81d1:90db:da68:3643%6]) with mapi id 15.20.2474.015;
	Wed, 20 Nov 2019 08:00:10 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [warrior] [meta-qt4] 3rdparty: javascriptcore:
	JITStubs.cpp: allow builds of JavaScriptCore with gcc v8
Thread-Index: AQHVn3iHGopNr2o+mEWVaNcZQJOa6g==
Date: Wed, 20 Nov 2019 08:00:10 +0000
Message-ID: <6a6629bc-00c4-7229-1c38-0096c3a5b0c3@topic.nl>
References: <20191119123755.2526-1-quentin.schulz@streamunlimited.com>
In-Reply-To: <20191119123755.2526-1-quentin.schulz@streamunlimited.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
x-clientproxiedby: AM0PR04CA0025.eurprd04.prod.outlook.com
	(2603:10a6:208:122::38) To AM7PR04MB6934.eurprd04.prod.outlook.com
	(2603:10a6:20b:10d::24)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 2bfcb502-1141-4d25-db77-08d76d8fac51
X-MS-TrafficTypeDiagnostic: AM7PR04MB7126:|DB8PR04MB6841:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <DB8PR04MB684157FB581E639C21B2293F964F0@DB8PR04MB6841.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:346;OLM:346;
x-forefront-prvs: 02272225C5
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(136003)(39840400004)(366004)(396003)(346002)(376002)(189003)(199004)(102836004)(316002)(71200400001)(71190400001)(54906003)(110136005)(58126008)(31686004)(7736002)(6246003)(31696002)(305945005)(76176011)(52116002)(6506007)(386003)(36756003)(53546011)(99286004)(4326008)(229853002)(8936002)(446003)(6486002)(44832011)(2616005)(11346002)(476003)(486006)(966005)(508600001)(14454004)(42882007)(66946007)(66446008)(64756008)(66556008)(65806001)(65956001)(66066001)(66476007)(6436002)(2501003)(81166006)(26005)(186003)(5660300002)(8676002)(6512007)(2906002)(6306002)(81156014)(25786009)(3846002)(256004)(6116002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB7126;
	H:AM7PR04MB6934.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: rPIAdl54PYfxYdAJL8l/C0reIdXEBPG10c4waFu/Gw8ZSCigWmTtNOr0OguzHAsu50HBqRAeoVP6UkLmxIrKX82RUX5TxtaF3HFV3SfSw0uwpS3skzepnSBUkMwgWXnjm+TiBs+WZZGTAMBhnykpU9hJpJWpFIee2LXFYu58Nt2KJkr25+4UdSGYDrV/C07FQJDIidUrEeWkfX8hqXj4c4uv4WwLZS2puWecc+10nDR0mdhZ/cOgImwkkuqkrJPoPYYcbTjAsS8UpiPLvD2Bo0mTrGCqNaBlTVzCCdfjTBUv9bHg6mEbUG2PLDCfASNATUqVbDZ34A62jn6v+tCCRBAwuGjMVANp+hVPY+IQcHCTwAhEE/X0yTgbSnx9RLknzrXwQ6A/iZthghN4BcdU/EXj9SlNVjHWRwSCyp+sIdugQFMcC8VTyMwegv2Sb85a7tQ0h7i/zU2wuGRBuO80BxcHWHgwSkTJLvsvrZbhVrw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7126
X-CodeTwo-MessageID: 6c001287-b25f-49d3-a01a-215fdffb681f.20191120080012@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT052.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:NL; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(346002)(376002)(136003)(396003)(39840400004)(199004)(189003)(8936002)(110136005)(246002)(31696002)(70206006)(966005)(66066001)(44832011)(47776003)(2906002)(6486002)(14454004)(65956001)(6246003)(99286004)(356004)(25786009)(50466002)(6306002)(508600001)(6512007)(186003)(31686004)(26005)(102836004)(229853002)(65806001)(6506007)(76176011)(23676004)(2486003)(386003)(53546011)(2501003)(7736002)(446003)(7636002)(305945005)(8676002)(11346002)(106002)(5660300002)(6116002)(4326008)(3846002)(126002)(486006)(436003)(2616005)(7596002)(54906003)(476003)(316002)(336012)(36756003)(70586007)(42882007)(58126008);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6841;
	H:westeu11-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu11-emailsignatures-cloud.codetwo.com; A:1;
	MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2564fa8a-60fe-4b45-d3ba-08d76d8faa30
X-Forefront-PRVS: 02272225C5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /eFqTiAeowJKnTYAc5RTKbNN4h5teHI67cIYlHINrP4xVnZQz73A6h9gT7Ne4vnGt0F3hJYNa8/Sn9EbVsdnvDa4il5xfVaUqVfDCIdep9qTPnlyJlrOvOBqrHQIxLmvVE6ZZML7vUxxBWCGsG85DNLCCRh8sjSd5nfDrSJdsAJU7uXlMjM80nKr+0MKMfo9FsYr0xbZ0MlGz+AUsdDZqPgmWMdJ77hvCTLS4tBb2RTLDKbP1yjMZj/H025TeLL9q8y0Vei5aS3q1hEis9pAfz4E3BC0WU+EmDdqPoV0KBp/QQsmRhRihVGOiyC3pLlePYyOQdtUq0j+PpWYqMn8c9rUqBQjpxvPKTCX4/qLQEhg5BhlAzKdKmHbHCdEVMcbGBnXLOZwAxrIjBCZ/jMng6XgrcxRTmniSxemoYsR6dpLsgPhtfVdoWN3I+Q2MUmfZWE+p8I8KUdYN3P0aXnNLapuk32iFnTGjSu7aCBOGFg=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 08:00:13.2399 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bfcb502-1141-4d25-db77-08d76d8fac51
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6841
Cc: "radek.dostal@streamunlimited.com" <radek.dostal@streamunlimited.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"andriy.danylovskyy@streamunlimited.com"
	<andriy.danylovskyy@streamunlimited.com>
Subject: Re: [warrior] [meta-qt4] 3rdparty: javascriptcore: JITStubs.cpp: allow builds of JavaScriptCore with gcc v8
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
X-List-Received-Date: Wed, 20 Nov 2019 08:00:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <37FC83E753C3E14B844E46A87365BEC4@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

SSByYW4gaW50byB0aGlzIGlzc3VlIHllc3RlcmRheSwgYW5kIHRoaXMgcGF0Y2ggc29sdmVzIHRo
ZSBjb21waWxhdGlvbiBvbiANCndhcnJpb3IuIEhvd2V2ZXIsIGl0J3MgYSBwYXRjaCBmb3IgUXQg
aXRzZWxmLCBhbmQgbm90IGZvciBPRS4NCg0KSXMgdGhlcmUgYWxyZWFkeSBhIHdhcnJpb3IgcGF0
Y2ggaW4gdGhlIG1ha2luZywgb3Igc2hvdWxkIEkgc3VibWl0IG9uZT8NCg0KDQpPbiAxOS0xMS0x
OSAxMzozNywgUXVlbnRpbiBTY2h1bHogd3JvdGU6DQo+IEF0IGxlYXN0IHNpbmNlIGdjYyB2OCwg
c291cmNlIGNvZGUgd2l0aCBhc20gdm9sYXRpbGUgd29uJ3QgY29tcGlsZQ0KPiBhbnltb3JlLg0K
PiANCj4gVGhlIHZvbGF0aWxlIHF1YWxpZmllciBhbnl3YXkgaXMgYSBuby1vcCBzaW5jZSBhc20g
YmxvY2tzIGFyZSBpbXBsaWNpdGx5DQo+IHZvbGF0aWxlIGFzIHdyaXR0ZW4gaW4gdGhlIGRvY3Vt
ZW50YXRpb25bMV0uDQo+IA0KPiBMZXQncyBnZXQgcmlkIG9mIHRoaXMgcmVkdW5kYW50IHF1YWxp
ZmllciBzbyB3ZSBjYW4gYnVpbGQgd2l0aCBuZXdlcg0KPiBHQ0NzLg0KPiANCj4gVGhlIHJlc3Vs
dGluZyBlcnJvciBtZXNzYWdlIGlzIHRoZSBmb2xsb3dpbmcgKG5vdGUgdGhhdCB0aGVyZSBpcyBh
DQo+IGJ1bmNoIG9mIHRoZW0pOg0KPiAuLi8zcmRwYXJ0eS9qYXZhc2NyaXB0Y29yZS9KYXZhU2Ny
aXB0Q29yZS9qaXQvSklUU3R1YnMuY3BwOjYxNzo1OiBlcnJvcjogZXhwZWN0ZWQgJygnIGJlZm9y
ZSAndm9sYXRpbGUnDQo+IGFzbSB2b2xhdGlsZSAoDQo+ICAgXn5+fn5+fn4NCj4gICAoDQo+IC4u
LzNyZHBhcnR5L2phdmFzY3JpcHRjb3JlL0phdmFTY3JpcHRDb3JlL2ppdC9KSVRTdHVicy5jcHA6
NjE4OjE6IGVycm9yOiBleHBlY3RlZCB1bnF1YWxpZmllZC1pZCBiZWZvcmUgc3RyaW5nIGNvbnN0
YW50DQo+ICIudGV4dFxuIg0KPiBefn5+fn5+fn4NCj4gLi4vM3JkcGFydHkvamF2YXNjcmlwdGNv
cmUvSmF2YVNjcmlwdENvcmUvaml0L0pJVFN0dWJzLmNwcDo2MTc6MTU6IGVycm9yOiBleHBlY3Rl
ZCAnKScgYmVmb3JlIHN0cmluZyBjb25zdGFudA0KPiBhc20gdm9sYXRpbGUgKA0KPiAJICB+Xg0K
PiAJICAgKQ0KPiAiLnRleHRcbiINCj4gfn5+fn5+fn5+DQo+IA0KPiBbMV0gaHR0cHM6Ly9nY2Mu
Z251Lm9yZy9vbmxpbmVkb2NzL2djYy9CYXNpYy1Bc20uaHRtbCNCYXNpYy1Bc20NCj4gDQo+IFVw
c3RyZWFtLVN0YXR1czogSW5hcHByb3ByaWF0ZQ0KPiBTaWduZWQtb2ZmLWJ5OiBRdWVudGluIFNj
aHVseiA8cXVlbnRpbi5zY2h1bHpAc3RyZWFtdW5saW1pdGVkLmNvbT4NCj4gLS0tDQo+ICAgLi4u
L0phdmFTY3JpcHRDb3JlL2ppdC9KSVRTdHVicy5jcHAgICAgICAgICAgIHwgNDggKysrKysrKysr
LS0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAyNCBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9zcmMvM3JkcGFydHkvamF2YXNjcmlwdGNvcmUv
SmF2YVNjcmlwdENvcmUvaml0L0pJVFN0dWJzLmNwcCBiL3NyYy8zcmRwYXJ0eS9qYXZhc2NyaXB0
Y29yZS9KYXZhU2NyaXB0Q29yZS9qaXQvSklUU3R1YnMuY3BwDQo+IGluZGV4IGQ4MDI3ZmYyLi5k
Y2VhZDZkMCAxMDA2NDQNCj4gLS0tIGEvc3JjLzNyZHBhcnR5L2phdmFzY3JpcHRjb3JlL0phdmFT
Y3JpcHRDb3JlL2ppdC9KSVRTdHVicy5jcHANCj4gKysrIGIvc3JjLzNyZHBhcnR5L2phdmFzY3Jp
cHRjb3JlL0phdmFTY3JpcHRDb3JlL2ppdC9KSVRTdHVicy5jcHANCj4gQEAgLTExNiw3ICsxMTYs
NyBAQCBDT01QSUxFX0FTU0VSVChvZmZzZXRvZihzdHJ1Y3QgSklUU3RhY2tGcmFtZSwgc2F2ZWRF
QlgpID09IDB4M2MsIEpJVFN0YWNrRnJhbWVfcw0KPiAgIENPTVBJTEVfQVNTRVJUKG9mZnNldG9m
KHN0cnVjdCBKSVRTdGFja0ZyYW1lLCBjYWxsRnJhbWUpID09IDB4NTgsIEpJVFN0YWNrRnJhbWVf
Y2FsbEZyYW1lX29mZnNldF9tYXRjaGVzX2N0aVRyYW1wb2xpbmUpOw0KPiAgIENPTVBJTEVfQVNT
RVJUKG9mZnNldG9mKHN0cnVjdCBKSVRTdGFja0ZyYW1lLCBjb2RlKSA9PSAweDUwLCBKSVRTdGFj
a0ZyYW1lX2NvZGVfb2Zmc2V0X21hdGNoZXNfY3RpVHJhbXBvbGluZSk7DQo+ICAgDQo+IC1hc20g
dm9sYXRpbGUgKA0KPiArYXNtICgNCj4gICAiLnRleHRcbiINCj4gICAiLmdsb2JsICIgU1lNQk9M
X1NUUklORyhjdGlUcmFtcG9saW5lKSAiXG4iDQo+ICAgSElERV9TWU1CT0woY3RpVHJhbXBvbGlu
ZSkgIlxuIg0KPiBAQCAtMTM4LDcgKzEzOCw3IEBAIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGlu
ZSkgIjoiICJcbiINCj4gICAgICAgInJldCIgIlxuIg0KPiAgICk7DQo+ICAgDQo+IC1hc20gdm9s
YXRpbGUgKA0KPiArYXNtICgNCj4gICAiLmdsb2JsICIgU1lNQk9MX1NUUklORyhjdGlWTVRocm93
VHJhbXBvbGluZSkgIlxuIg0KPiAgIEhJREVfU1lNQk9MKGN0aVZNVGhyb3dUcmFtcG9saW5lKSAi
XG4iDQo+ICAgU1lNQk9MX1NUUklORyhjdGlWTVRocm93VHJhbXBvbGluZSkgIjoiICJcbiINCj4g
QEAgLTE1NCw3ICsxNTQsNyBAQCBTWU1CT0xfU1RSSU5HKGN0aVZNVGhyb3dUcmFtcG9saW5lKSAi
OiIgIlxuIg0KPiAgICAgICAicmV0IiAiXG4iDQo+ICAgKTsNCj4gICAgICAgDQo+IC1hc20gdm9s
YXRpbGUgKA0KPiArYXNtICgNCj4gICAiLmdsb2JsICIgU1lNQk9MX1NUUklORyhjdGlPcFRocm93
Tm90Q2F1Z2h0KSAiXG4iDQo+ICAgSElERV9TWU1CT0woY3RpT3BUaHJvd05vdENhdWdodCkgIlxu
Ig0KPiAgIFNZTUJPTF9TVFJJTkcoY3RpT3BUaHJvd05vdENhdWdodCkgIjoiICJcbiINCj4gQEAg
LTE3OSw3ICsxNzksNyBAQCBDT01QSUxFX0FTU0VSVChvZmZzZXRvZihzdHJ1Y3QgSklUU3RhY2tG
cmFtZSwgc2F2ZWRSQlgpID09IDB4NDgsIEpJVFN0YWNrRnJhbWVfcw0KPiAgIENPTVBJTEVfQVNT
RVJUKG9mZnNldG9mKHN0cnVjdCBKSVRTdGFja0ZyYW1lLCBjYWxsRnJhbWUpID09IDB4OTAsIEpJ
VFN0YWNrRnJhbWVfY2FsbEZyYW1lX29mZnNldF9tYXRjaGVzX2N0aVRyYW1wb2xpbmUpOw0KPiAg
IENPTVBJTEVfQVNTRVJUKG9mZnNldG9mKHN0cnVjdCBKSVRTdGFja0ZyYW1lLCBjb2RlKSA9PSAw
eDgwLCBKSVRTdGFja0ZyYW1lX2NvZGVfb2Zmc2V0X21hdGNoZXNfY3RpVHJhbXBvbGluZSk7DQo+
ICAgDQo+IC1hc20gdm9sYXRpbGUgKA0KPiArYXNtICgNCj4gICAiLmdsb2JsICIgU1lNQk9MX1NU
UklORyhjdGlUcmFtcG9saW5lKSAiXG4iDQo+ICAgSElERV9TWU1CT0woY3RpVHJhbXBvbGluZSkg
IlxuIg0KPiAgIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGluZSkgIjoiICJcbiINCj4gQEAgLTIw
Niw3ICsyMDYsNyBAQCBTWU1CT0xfU1RSSU5HKGN0aVRyYW1wb2xpbmUpICI6IiAiXG4iDQo+ICAg
ICAgICJyZXQiICJcbiINCj4gICApOw0KPiAgIA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAo
DQo+ICAgIi5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpVk1UaHJvd1RyYW1wb2xpbmUpICJcbiIN
Cj4gICBISURFX1NZTUJPTChjdGlWTVRocm93VHJhbXBvbGluZSkgIlxuIg0KPiAgIFNZTUJPTF9T
VFJJTkcoY3RpVk1UaHJvd1RyYW1wb2xpbmUpICI6IiAiXG4iDQo+IEBAIC0yMjIsNyArMjIyLDcg
QEAgU1lNQk9MX1NUUklORyhjdGlWTVRocm93VHJhbXBvbGluZSkgIjoiICJcbiINCj4gICAgICAg
InJldCIgIlxuIg0KPiAgICk7DQo+ICAgDQo+IC1hc20gdm9sYXRpbGUgKA0KPiArYXNtICgNCj4g
ICAiLmdsb2JsICIgU1lNQk9MX1NUUklORyhjdGlPcFRocm93Tm90Q2F1Z2h0KSAiXG4iDQo+ICAg
SElERV9TWU1CT0woY3RpT3BUaHJvd05vdENhdWdodCkgIlxuIg0KPiAgIFNZTUJPTF9TVFJJTkco
Y3RpT3BUaHJvd05vdENhdWdodCkgIjoiICJcbiINCj4gQEAgLTI0Miw3ICsyNDIsNyBAQCBTWU1C
T0xfU1RSSU5HKGN0aU9wVGhyb3dOb3RDYXVnaHQpICI6IiAiXG4iDQo+ICAgI2Vycm9yICJKSVRf
U1RVQl9BUkdVTUVOVF9WQV9MSVNUIG5vdCBzdXBwb3J0ZWQgb24gQVJNdjcuIg0KPiAgICNlbmRp
Zg0KPiAgIA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAoDQo+ICAgIi50ZXh0IiAiXG4iDQo+
ICAgIi5hbGlnbiAyIiAiXG4iDQo+ICAgIi5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBv
bGluZSkgIlxuIg0KPiBAQCAtMjY5LDcgKzI2OSw3IEBAIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBv
bGluZSkgIjoiICJcbiINCj4gICAgICAgImJ4IGxyIiAiXG4iDQo+ICAgKTsNCj4gICANCj4gLWFz
bSB2b2xhdGlsZSAoDQo+ICthc20gKA0KPiAgICIudGV4dCIgIlxuIg0KPiAgICIuYWxpZ24gMiIg
IlxuIg0KPiAgICIuZ2xvYmwgIiBTWU1CT0xfU1RSSU5HKGN0aVZNVGhyb3dUcmFtcG9saW5lKSAi
XG4iDQo+IEBAIC0yODcsNyArMjg3LDcgQEAgU1lNQk9MX1NUUklORyhjdGlWTVRocm93VHJhbXBv
bGluZSkgIjoiICJcbiINCj4gICAgICAgImJ4IGxyIiAiXG4iDQo+ICAgKTsNCj4gICANCj4gLWFz
bSB2b2xhdGlsZSAoDQo+ICthc20gKA0KPiAgICIudGV4dCIgIlxuIg0KPiAgICIuYWxpZ24gMiIg
IlxuIg0KPiAgICIuZ2xvYmwgIiBTWU1CT0xfU1RSSU5HKGN0aU9wVGhyb3dOb3RDYXVnaHQpICJc
biINCj4gQEAgLTMwNSw3ICszMDUsNyBAQCBTWU1CT0xfU1RSSU5HKGN0aU9wVGhyb3dOb3RDYXVn
aHQpICI6IiAiXG4iDQo+ICAgDQo+ICAgI2VsaWYgQ09NUElMRVIoR0NDKSAmJiBDUFUoQVJNX1RS
QURJVElPTkFMKQ0KPiAgIA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAoDQo+ICAgIi5nbG9i
bCAiIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGluZSkgIlxuIg0KPiAgIEhJREVfU1lNQk9MKGN0
aVRyYW1wb2xpbmUpICJcbiINCj4gICBTWU1CT0xfU1RSSU5HKGN0aVRyYW1wb2xpbmUpICI6IiAi
XG4iDQo+IEBAIC0zMjMsNyArMzIzLDcgQEAgU1lNQk9MX1NUUklORyhjdGlUcmFtcG9saW5lKSAi
OiIgIlxuIg0KPiAgICAgICAibW92IHBjLCBsciIgIlxuIg0KPiAgICk7DQo+ICAgDQo+IC1hc20g
dm9sYXRpbGUgKA0KPiArYXNtICgNCj4gICAiLmdsb2JsICIgU1lNQk9MX1NUUklORyhjdGlWTVRo
cm93VHJhbXBvbGluZSkgIlxuIg0KPiAgIEhJREVfU1lNQk9MKGN0aVZNVGhyb3dUcmFtcG9saW5l
KSAiXG4iDQo+ICAgU1lNQk9MX1NUUklORyhjdGlWTVRocm93VHJhbXBvbGluZSkgIjoiICJcbiIN
Cj4gQEAgLTQxOCw3ICs0MTgsNyBAQCBDT01QSUxFX0FTU0VSVChvZmZzZXRvZihzdHJ1Y3QgSklU
U3RhY2tGcmFtZSwgY2FsbEZyYW1lKSA9PSAweDM4LCBKSVRTdGFja0ZyYW1lXw0KPiAgIENPTVBJ
TEVfQVNTRVJUKG9mZnNldG9mKHN0cnVjdCBKSVRTdGFja0ZyYW1lLCBjb2RlKSA9PSAweDMwLCBK
SVRTdGFja0ZyYW1lX2NvZGVfb2Zmc2V0X21hdGNoZXNfY3RpVHJhbXBvbGluZSk7DQo+ICAgQ09N
UElMRV9BU1NFUlQob2Zmc2V0b2Yoc3RydWN0IEpJVFN0YWNrRnJhbWUsIHNhdmVkRUJYKSA9PSAw
eDFjLCBKSVRTdGFja0ZyYW1lX3N0dWJfYXJndW1lbnRfc3BhY2VfbWF0Y2hlc19jdGlUcmFtcG9s
aW5lKTsNCj4gICANCj4gLWFzbSB2b2xhdGlsZSAoDQo+ICthc20gKA0KPiAgICIudGV4dFxuIg0K
PiAgICIuZ2xvYmwgIiBTWU1CT0xfU1RSSU5HKGN0aVRyYW1wb2xpbmUpICJcbiINCj4gICBISURF
X1NZTUJPTChjdGlUcmFtcG9saW5lKSAiXG4iDQo+IEBAIC00NDAsNyArNDQwLDcgQEAgU1lNQk9M
X1NUUklORyhjdGlUcmFtcG9saW5lKSAiOiIgIlxuIg0KPiAgICAgICAicmV0IiAiXG4iDQo+ICAg
KTsNCj4gICANCj4gLWFzbSB2b2xhdGlsZSAoDQo+ICthc20gKA0KPiAgICIuZ2xvYmwgIiBTWU1C
T0xfU1RSSU5HKGN0aVZNVGhyb3dUcmFtcG9saW5lKSAiXG4iDQo+ICAgSElERV9TWU1CT0woY3Rp
Vk1UaHJvd1RyYW1wb2xpbmUpICJcbiINCj4gICBTWU1CT0xfU1RSSU5HKGN0aVZNVGhyb3dUcmFt
cG9saW5lKSAiOiIgIlxuIg0KPiBAQCAtNDU2LDcgKzQ1Niw3IEBAIFNZTUJPTF9TVFJJTkcoY3Rp
Vk1UaHJvd1RyYW1wb2xpbmUpICI6IiAiXG4iDQo+ICAgICAgICJyZXQiICJcbiINCj4gICApOw0K
PiAgICAgICANCj4gLWFzbSB2b2xhdGlsZSAoDQo+ICthc20gKA0KPiAgICIuZ2xvYmwgIiBTWU1C
T0xfU1RSSU5HKGN0aU9wVGhyb3dOb3RDYXVnaHQpICJcbiINCj4gICBISURFX1NZTUJPTChjdGlP
cFRocm93Tm90Q2F1Z2h0KSAiXG4iDQo+ICAgU1lNQk9MX1NUUklORyhjdGlPcFRocm93Tm90Q2F1
Z2h0KSAiOiIgIlxuIg0KPiBAQCAtNDgwLDcgKzQ4MCw3IEBAIENPTVBJTEVfQVNTRVJUKG9mZnNl
dG9mKHN0cnVjdCBKSVRTdGFja0ZyYW1lLCBjYWxsRnJhbWUpID09IDB4NTgsIEpJVFN0YWNrRnJh
bWVfDQo+ICAgQ09NUElMRV9BU1NFUlQob2Zmc2V0b2Yoc3RydWN0IEpJVFN0YWNrRnJhbWUsIGNv
ZGUpID09IDB4NDgsIEpJVFN0YWNrRnJhbWVfY29kZV9vZmZzZXRfbWF0Y2hlc19jdGlUcmFtcG9s
aW5lKTsNCj4gICBDT01QSUxFX0FTU0VSVChvZmZzZXRvZihzdHJ1Y3QgSklUU3RhY2tGcmFtZSwg
c2F2ZWRSQlgpID09IDB4NzgsIEpJVFN0YWNrRnJhbWVfc3R1Yl9hcmd1bWVudF9zcGFjZV9tYXRj
aGVzX2N0aVRyYW1wb2xpbmUpOw0KPiAgIA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAoDQo+
ICAgIi50ZXh0XG4iDQo+ICAgIi5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGluZSkg
IlxuIg0KPiAgIEhJREVfU1lNQk9MKGN0aVRyYW1wb2xpbmUpICJcbiINCj4gQEAgLTUxNSw3ICs1
MTUsNyBAQCBTWU1CT0xfU1RSSU5HKGN0aVRyYW1wb2xpbmUpICI6IiAiXG4iDQo+ICAgICAgICJy
ZXQiICJcbiINCj4gICApOw0KPiAgIA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAoDQo+ICAg
Ii5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpVk1UaHJvd1RyYW1wb2xpbmUpICJcbiINCj4gICBI
SURFX1NZTUJPTChjdGlWTVRocm93VHJhbXBvbGluZSkgIlxuIg0KPiAgIFNZTUJPTF9TVFJJTkco
Y3RpVk1UaHJvd1RyYW1wb2xpbmUpICI6IiAiXG4iDQo+IEBAIC01MzEsNyArNTMxLDcgQEAgU1lN
Qk9MX1NUUklORyhjdGlWTVRocm93VHJhbXBvbGluZSkgIjoiICJcbiINCj4gICAgICAgInJldCIg
IlxuIg0KPiAgICk7DQo+ICAgDQo+IC1hc20gdm9sYXRpbGUgKA0KPiArYXNtICgNCj4gICAiLmds
b2JsICIgU1lNQk9MX1NUUklORyhjdGlPcFRocm93Tm90Q2F1Z2h0KSAiXG4iDQo+ICAgSElERV9T
WU1CT0woY3RpT3BUaHJvd05vdENhdWdodCkgIlxuIg0KPiAgIFNZTUJPTF9TVFJJTkcoY3RpT3BU
aHJvd05vdENhdWdodCkgIjoiICJcbiINCj4gQEAgLTU1MSw3ICs1NTEsNyBAQCBTWU1CT0xfU1RS
SU5HKGN0aU9wVGhyb3dOb3RDYXVnaHQpICI6IiAiXG4iDQo+ICAgI2Vycm9yICJKSVRfU1RVQl9B
UkdVTUVOVF9WQV9MSVNUIG5vdCBzdXBwb3J0ZWQgb24gQVJNdjcuIg0KPiAgICNlbmRpZg0KPiAg
IA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAoDQo+ICAgIi50ZXh0IiAiXG4iDQo+ICAgIi5h
bGlnbiAyIiAiXG4iDQo+ICAgIi5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGluZSkg
IlxuIg0KPiBAQCAtNTc4LDcgKzU3OCw3IEBAIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGluZSkg
IjoiICJcbiINCj4gICAgICAgImJ4IGxyIiAiXG4iDQo+ICAgKTsNCj4gICANCj4gLWFzbSB2b2xh
dGlsZSAoDQo+ICthc20gKA0KPiAgICIudGV4dCIgIlxuIg0KPiAgICIuYWxpZ24gMiIgIlxuIg0K
PiAgICIuZ2xvYmwgIiBTWU1CT0xfU1RSSU5HKGN0aVZNVGhyb3dUcmFtcG9saW5lKSAiXG4iDQo+
IEBAIC01OTYsNyArNTk2LDcgQEAgU1lNQk9MX1NUUklORyhjdGlWTVRocm93VHJhbXBvbGluZSkg
IjoiICJcbiINCj4gICAgICAgImJ4IGxyIiAiXG4iDQo+ICAgKTsNCj4gICANCj4gLWFzbSB2b2xh
dGlsZSAoDQo+ICthc20gKA0KPiAgICIudGV4dCIgIlxuIg0KPiAgICIuYWxpZ24gMiIgIlxuIg0K
PiAgICIuZ2xvYmwgIiBTWU1CT0xfU1RSSU5HKGN0aU9wVGhyb3dOb3RDYXVnaHQpICJcbiINCj4g
QEAgLTYxNCw3ICs2MTQsNyBAQCBTWU1CT0xfU1RSSU5HKGN0aU9wVGhyb3dOb3RDYXVnaHQpICI6
IiAiXG4iDQo+ICAgDQo+ICAgI2VsaWYgQ09NUElMRVIoR0NDKSAmJiBDUFUoQVJNX1RSQURJVElP
TkFMKQ0KPiAgIA0KPiAtYXNtIHZvbGF0aWxlICgNCj4gK2FzbSAoDQo+ICAgIi50ZXh0XG4iDQo+
ICAgIi5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpVHJhbXBvbGluZSkgIlxuIg0KPiAgIEhJREVf
U1lNQk9MKGN0aVRyYW1wb2xpbmUpICJcbiINCj4gQEAgLTYzMiw3ICs2MzIsNyBAQCBTWU1CT0xf
U1RSSU5HKGN0aVRyYW1wb2xpbmUpICI6IiAiXG4iDQo+ICAgICAgICJtb3YgcGMsIGxyIiAiXG4i
DQo+ICAgKTsNCj4gICANCj4gLWFzbSB2b2xhdGlsZSAoDQo+ICthc20gKA0KPiAgICIuZ2xvYmwg
IiBTWU1CT0xfU1RSSU5HKGN0aVZNVGhyb3dUcmFtcG9saW5lKSAiXG4iDQo+ICAgSElERV9TWU1C
T0woY3RpVk1UaHJvd1RyYW1wb2xpbmUpICJcbiINCj4gICBTWU1CT0xfU1RSSU5HKGN0aVZNVGhy
b3dUcmFtcG9saW5lKSAiOiIgIlxuIg0KPiBAQCAtMTAyNCw3ICsxMDI0LDcgQEAgc3RhdGljIE5F
VkVSX0lOTElORSB2b2lkIHRocm93U3RhY2tPdmVyZmxvd0Vycm9yKENhbGxGcmFtZSogY2FsbEZy
YW1lLCBKU0dsb2JhbEQNCj4gICAgICAgZXh0ZXJuICJDIiB7IFwNCj4gICAgICAgICAgIHJ0eXBl
IEpJVFN0dWJUaHVua2VkXyMjb3AoU1RVQl9BUkdTX0RFQ0xBUkFUSU9OKTsgXA0KPiAgICAgICB9
OyBcDQo+IC0gICAgYXNtIHZvbGF0aWxlICggXA0KPiArICAgIGFzbSAoIFwNCj4gICAgICAgICAg
ICIudGV4dCIgIlxuIiBcDQo+ICAgICAgICAgICAiLmFsaWduIDIiICJcbiIgXA0KPiAgICAgICAg
ICAgIi5nbG9ibCAiIFNZTUJPTF9TVFJJTkcoY3RpXyMjb3ApICJcbiIgXA0KPiBAQCAtMTA1Myw3
ICsxMDUzLDcgQEAgQ09NUElMRV9BU1NFUlQob2Zmc2V0b2Yoc3RydWN0IEpJVFN0YWNrRnJhbWUs
IHRodW5rUmV0dXJuQWRkcmVzcykgPT0gVEhVTktfUkVUVVINCj4gICAgICAgZXh0ZXJuICJDIiB7
IFwNCj4gICAgICAgICAgIHJ0eXBlIEpJVFN0dWJUaHVua2VkXyMjb3AoU1RVQl9BUkdTX0RFQ0xB
UkFUSU9OKTsgXA0KPiAgICAgICB9OyBcDQo+IC0gICAgYXNtIHZvbGF0aWxlICggXA0KPiArICAg
IGFzbSAoIFwNCj4gICAgICAgICAgICIuZ2xvYmwgIiBTWU1CT0xfU1RSSU5HKGN0aV8jI29wKSAi
XG4iIFwNCj4gICAgICAgICAgIEhJREVfU1lNQk9MKGN0aV8jI29wKSAiXG4iICAgICAgICAgICAg
IFwNCj4gICAgICAgICAgIFNZTUJPTF9TVFJJTkcoY3RpXyMjb3ApICI6IiAiXG4iIFwNCj4gDQoN
Cg==

