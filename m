Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.84])
 by mx.groups.io with SMTP id smtpd.web11.7662.1607697045023602286
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 06:30:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@digisens.onmicrosoft.com header.s=selector2-digisens-onmicrosoft-com header.b=ItF3OFqH;
 spf=pass (domain: digisens.ch, ip: 40.107.15.84, mailfrom: romain.crausaz@digisens.ch)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=digisens.onmicrosoft.com; s=selector2-digisens-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFus31fGlWHMrezFIb1+NA5CorCBx0G5g4al0oDN2bY=;
 b=ItF3OFqH9Idcwy3WjUXfkUIVIHYAApmXErMIlZREOE9IUSiot5JWktP2u3509lGot8j2pt7hM8AaQPDdxcXHXNAbH8reAJnu6X15969ae2425pr/MLzLUof8LbrRTHOKCaWrdtu/WS5SQhztGX/xX62DsVKvswSYTr1/Tegq6Vc=
Received: from AM6PR01CA0058.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::35) by DB6PR0301MB2517.eurprd03.prod.outlook.com
 (2603:10a6:4:5a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Fri, 11 Dec
 2020 14:30:41 +0000
Received: from HE1EUR01FT054.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:20b:e0:cafe::9e) by AM6PR01CA0058.outlook.office365.com
 (2603:10a6:20b:e0::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend
 Transport; Fri, 11 Dec 2020 14:30:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 51.116.232.68)
 smtp.mailfrom=digisens.ch; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=bestguesspass action=none
 header.from=digisens.ch;
Received-SPF: Pass (protection.outlook.com: domain of digisens.ch designates
 51.116.232.68 as permitted sender) receiver=protection.outlook.com;
 client-ip=51.116.232.68; helo=de2-emailsignatures-cloud.codetwo.com;
Received: from de2-emailsignatures-cloud.codetwo.com (51.116.232.68) by
 HE1EUR01FT054.mail.protection.outlook.com (10.152.1.61) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 14:30:40 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (104.47.8.52) by de2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Fri, 11 Dec 2020 14:30:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJ+sAK9+tHEOyMH4cEjfKBfGIatoM2uVjeUc8ehCTfcPv01HhzFQBFRVJ6PnDXbeyFIjZ+Y1WeS4sOA06DZRRliloGNOhvys2Pjm0WLS33l0fZvDQuGQEJ8rAnYAUdW5aSfG+GJsOpkhVFdFPAvllYZoFxbtIDG6j/Y4IDbBUiCq/4s24ycroQgQxVsZa+EXmZ2Km9KEbpyhD3eIGFrkM8rSriygaNEbWJlAMecdavHdWZM5fKWSOUcPV+JsDHa56/zRUAgJfcerU7bTdIQwavwR5+DI8xh/C4DA8VHupi1dvKksqby7UVKIwTMEXkTCcZWZORJTXI3dWnvikujlSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aTY3gbbRMUuIBGTX+XhD+sWXfdkBe2+hr5esAqUnV3Y=;
 b=fNB5X7qscMTBT1IS9hGHM7kspXqDjeHyCdjKhiIducV7/RQEvYxq6PmLbZD/+WtWRaRzaCtfpoUzYTBmTFMYhc5Y5+Jex8P9wgAruoUCqNeFZQ1h5clodohaRSn+FoMTrMXC/gvYwt31GUWsijizcAx71mFwQ4mwPFCfxIt/ni6+9b9tJB7U00q8eT7NPSryIbWWYNEG55njOgA1ARiAXG6gXe+WjbxTcEHWUNNnaBPIrT+EjJZDnZlJPlZrgJCuVe3Jn2fTynKdBpC4YPy/JsptEaDGQr17ovZAJ0Ob8FCoN+ZFQthWQTdVfxOexhu7QhgdQV27xs281y9xGK/vqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digisens.ch; dmarc=pass action=none header.from=digisens.ch;
 dkim=pass header.d=digisens.ch; arc=none
Received: from VI1PR03MB6269.eurprd03.prod.outlook.com (2603:10a6:800:13c::21)
 by VE1PR03MB5584.eurprd03.prod.outlook.com (2603:10a6:803:11c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.23; Fri, 11 Dec
 2020 14:30:36 +0000
Received: from VI1PR03MB6269.eurprd03.prod.outlook.com
 ([fe80::b560:ed23:1611:c7e0]) by VI1PR03MB6269.eurprd03.prod.outlook.com
 ([fe80::b560:ed23:1611:c7e0%5]) with mapi id 15.20.3654.017; Fri, 11 Dec 2020
 14:30:36 +0000
From: "Romain Crausaz" <romain.crausaz@digisens.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-raspberrypi] error with sc16is752-spi0 overlay
Thread-Topic: [meta-raspberrypi] error with sc16is752-spi0 overlay
Thread-Index: AQHWz8mZEyaUTCuTPEOqWptKSWuXYw==
Date: Fri, 11 Dec 2020 14:30:36 +0000
Message-ID: <VI1PR03MB626929E955F2C659ABCB212382CA0@VI1PR03MB6269.eurprd03.prod.outlook.com>
Accept-Language: fr-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=digisens.ch;
x-originating-ip: [83.150.5.145]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5e42a967-ee94-44f6-18ed-08d89de155ac
x-ms-traffictypediagnostic: VE1PR03MB5584:|DB6PR0301MB2517:
X-Microsoft-Antispam-PRVS: 
	<DB6PR0301MB2517D848BF0901E6E32AA2F682CA0@DB6PR0301MB2517.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 TEHMu43EQhsb2UiYItBkM5vWptvPCj4I2BtSfWwMykweM5TKkXr0jMkVdlkoEz6Sw7YORB9h915nhkcAtlGWGVX2jsq7MITBDtw+wKcHE3QLQdl79dTcW2xYmGmpbVZGGlhqpG5iUxli51O3HnnURcWIU26QER+t6LAQmMoyE1RcVEG8aOL4+zOQ/3n6p3PazQ+IXvYvOUAQLx0gfoNOk2Lk8zN3kx12jp5o/W7TR24Nbtq3MPVsJn3wGnvXFwifE0HjK3TF1pMW80Rb6P1b5n8DfT6/M/pCNhlkpJsXdppKg6GtEUW95EIAjZ2j2TP9
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR03MB6269.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(396003)(136003)(366004)(346002)(376002)(2906002)(8936002)(83380400001)(7696005)(71200400001)(478600001)(55016002)(316002)(4744005)(9686003)(44832011)(64756008)(66946007)(5660300002)(66476007)(33656002)(66446008)(6916009)(19627405001)(8676002)(66556008)(52536014)(186003)(86362001)(76116006)(6506007)(91956017)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?aVRZcWdzbGZoaWJKZmpzOWRvSFV5VnFFQklnUmdVSzd0WVpURXNZbDkvQVZy?=
 =?utf-8?B?ZEQ4cFVCZkhPcHRqRHBxY0ovVXUxcEUyZXlIby8zUXhwdXVUUHR4bjY2akRE?=
 =?utf-8?B?eXg0eXU1dGphL1QrUUNPVzNMODZQa0t0L1pjMUY0bEhhazdXZGluSnROamlq?=
 =?utf-8?B?a1Vpd3BSb1lFKzNNQ0Q2RHFmTHFhbGpLdTZEWURoODJTWDdqWmRwa2kyNHk3?=
 =?utf-8?B?RXhBZnBDMmdMSlY1OW9mTkhWanlFK0lyNlBCMjlldytQWTBxUlJLWXZUa01h?=
 =?utf-8?B?MTlqY1ZMNmg4V0srM0VUK3Nnb01FL3N3c0FiMnFGeU5rWjY0OXpHQ3RQM1hN?=
 =?utf-8?B?VXlxMGEySWo0YitsWkR4dWdEc2VGNS9lYTJnMm96aW84NVErTG1DbFBsK0t4?=
 =?utf-8?B?Zi84TFoxNUQrSG1hTWhyODMwWEh0UnFEUWkrWTk1Sk82K3NDWW9lbEN1YW5v?=
 =?utf-8?B?dkhqakgvUk5oMWNLYXlMK3dsMU9GS1NKd0NUUldqb2lRM2JJZ1Bya0VHU3RU?=
 =?utf-8?B?VExOdTVvTXY1dEdtWitmQXpoUWd0RlJTekw1ajFMenNaYTlWZVJ6QUtkMi96?=
 =?utf-8?B?K3BpZ0JTQXRsZE9zT2hXaEZyMFVZV056OUJyeGduOXBUSmVKbVpRejdxcTlO?=
 =?utf-8?B?YmtlQlhZOVo5djA2VE1zMjNTM3pLOXFDRWt0K2pDWU5hT21Ia1ZUc0ZCNFdr?=
 =?utf-8?B?RTh3b2ViVDdmR0xGSS9WcFNjMm4zb3EzYWJPWnRMMlhiUVFBWG9UUjBRckRW?=
 =?utf-8?B?Wnd4VUFCQXVFbnBDK2VOYXhkbDEwZ3kxbGtCSWs3UVBZWlZTRzhyc2QwTWpY?=
 =?utf-8?B?QVpjQVYyNWdmcDZKdWxPanNUbjdyRzh5VUhLQ3kwRC80S0VkMnhiTkQzeVBK?=
 =?utf-8?B?K1ZmUjN3UzduUm9HY3E4N3dkdnlnMkdHVlpzbUxsam9mdndjUnRYR1h3amRp?=
 =?utf-8?B?WkoyTWs3YUNaYjVpeDAyTnlBd3ZnYWQ5NGJRd1dNVXQvNEhoRzJjRUFNdTFt?=
 =?utf-8?B?Zk5sVHlqeHFkeFlkTnJ1MWE0SEJlNDBqYWV6UTV3OTdwOENBSTk5Qno4QzRE?=
 =?utf-8?B?aTBDWkZCSFI4UDBZbURqUWkzQ1ZicmpkRjY5cTArNmNnMUdLcENSa3hvSXBH?=
 =?utf-8?B?Z0RDclNkZVM0MWx5WDdTL2dmUURSckI2dy9LczhvTkppVFFKNWtmeUwrV2V1?=
 =?utf-8?B?dStqWjMyR0dxQ0dGUUs5L3J4bVB5QkNqRFR0MU5nWGtRcUtvd0Jtc1BDRTZa?=
 =?utf-8?B?VVI4QTBtYmZJTmExTDF5aGZVZ0FFODhQN2RDaFpaOXo0UHBBbUJlY0xSRk9z?=
 =?utf-8?Q?2BnoO/fZxGIyU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR03MB5584
X-CodeTwo-MessageID: f1e4f10c-eef6-43bf-961a-d449e7c879d4.20201211143038@de2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: <09ef7c03-335e-4596-b111-ee02557c114a.c57bb193-1d0d-455a-be63-b304020ec04d.02a0b9f7-9802-493a-8cef-c57c0a003582@emailsignatures365.codetwo.com>
Return-Path: romain.crausaz@digisens.ch
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT054.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b7de8fe9-9c87-4399-13bb-08d89de15333
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OrT5Q1vFdBKBvZl5r8zQllS4V/JvPcNs9nLKmwexrQhFleWz/asQ+BKPECu8YmUUOE9DV5061xMXDdXAuA1rUH6H/qvVKDnuEkEHMX0SEscGem9dGGVKXGWGAzKRIYfaJJhjScju+miMPuBPXxjyZ58iPTqokMa90HQ86LbkTYYTUUOvw7KzWTMRdkocdFTrVB+uMU/+bJQH42VGrXaFIzLjFPLdPJzlJUpTdTj4RnABBd5oPbxiGBY5U9d0koxNCobBqDbQp84DR5HLZMoy7yumYtdGKR4l+eDtStZzcHtuAOgpmKxUcRAPzsrvdVr3jGYhT65oUeQPG0ppRiustx467cFFmCUAdgP6I9ZyhnfPkBS2wmjHaKRbMze6s6H1JmRQUiiI7uqJERAZqYq9G2VAgK6bgUUbXVKX9f2zIHAcqjidEtxts8odP/qfLslXdsTb8N7OILKsxyZGfpnr3GlVa0OHhb/YJ2QY5URr9BgJ0G7bi+bXvFPKEmVFZO3M
X-Forefront-Antispam-Report: 
	CIP:51.116.232.68;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de2-emailsignatures-cloud.codetwo.com;PTR:de2-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(396003)(39830400003)(376002)(346002)(136003)(46966005)(7696005)(6506007)(55016002)(52536014)(86362001)(478600001)(82310400003)(70586007)(33656002)(7596003)(15974865002)(70206006)(8676002)(316002)(8936002)(5660300002)(166002)(186003)(44832011)(6916009)(66616009)(47076004)(2906002)(33964004)(336012)(19627405001)(9686003)(356005)(83080400002)(26005)(7636003)(83380400001);DIR:OUT;SFP:1101;
X-OriginatorOrg: digisens.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 14:30:40.2899
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e42a967-ee94-44f6-18ed-08d89de155ac
X-MS-Exchange-CrossTenant-Id: 71c7bcad-4e9b-4f28-9756-02fbb342dcd7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=71c7bcad-4e9b-4f28-9756-02fbb342dcd7;Ip=[51.116.232.68];Helo=[de2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT054.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0301MB2517
X-Groupsio-MsgNum: 51716
Content-Type: multipart/alternative;
	boundary="_000_VI1PR03MB626929E955F2C659ABCB212382CA0VI1PR03MB6269eurp_"
Content-Language: fr-CH

--_000_VI1PR03MB626929E955F2C659ABCB212382CA0VI1PR03MB6269eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBhbGwsDQoNCldoZW4gSSB0cnkgdG8gYWRkIHRoZSBvdmVybGF5IGZvciB0aGUgc2MxNmlz
NzUyLXNwaTAgdG8gbXkgaW1hZ2UsIGl0IGZhaWxzIGF0IHRoZSB0YXNrIGRvX2ltYWdlX3dpYyB3
aXRoIHRoZSBmb2xsb3dpbmcgZXJyb3I6DQoNCnwgRVJST1I6IE1hbGZvcm1lZCBib290IGZpbGUg
ZW50cnk6IHNjMTZpczc1Mi1zcGkwLmR0Ym87DQoNCkkgYW0gdXNpbmcgdGhlIGtlcm5lbCBwcm92
aWRlZCBieSBtZXRhLXJhc3BiZXJyeXBpIGFuZCBhZGQgdGhlIGZvbGxvd2luZyB0byBteSBib2Fy
ZCBjb25maWd1cmF0aW9uOg0KDQpSUElfS0VSTkVMX0RFVklDRVRSRUVfT1ZFUkxBWVMgKz0gIiBc
DQogICAgb3ZlcmxheXMvdWFydDAuZHRibyBcDQogICAgb3ZlcmxheXMvc2MxNmlzNzUyLXNwaTAu
ZHRibyBcDQogICAgb3ZlcmxheXMvc2Rpby5kdGJvIFwNCiAgICBvdmVybGF5cy9pMmMtcnRjLmR0
Ym8gXA0KICAgICINCuKAi0kgd2FzIG5vdCBhYmxlIHRvIGZpbmQgYW55dGhpbmcgb24gdGhpcyBl
cnJvci4NCg0KVGhhbmsgeW91Lg0KDQpCZXN0IHJlZ2FyZHMNClJvbWFpbg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NClJvbWFpbiBDcmF1c2F6DQoNCkRldmVsb3BtZW50DQoNCkRJ
R0kgU0VOUyBTd2l0emVybGFuZCBBRw0KRnJlaWJ1cmdzdHIuIDY1DQpDSC0zMjgwIE11cnRlbg0K
DQpUZWxlZm9uOiArNDEgMjYgNjcyIDk4NzYNCkVtYWlsOiAgICAgcm9tYWluLmNyYXVzYXpAZGln
aXNlbnMuY2g8bWFpbHRvOnJvbWFpbi5jcmF1c2F6QGRpZ2lzZW5zLmNoPg0KDQpbY2lkOmRpZ2lz
ZW5zXzM0ZGY4ZGZlLTA2MzktNGFjYi05ZThkLTBlZmQ3NWU3YjNhOC5wbmddDQp3d3cuZGlnaXNl
bnMuY2g8aHR0cDovL3d3dy5kaWdpc2Vucy5jaD4NCg0KDQo=

--_000_VI1PR03MB626929E955F2C659ABCB212382CA0VI1PR03MB6269eurp_
Content-Type: multipart/related;
	boundary="_2b38b159-4476-47df-ba5b-e8ba9a318e21_"

--_2b38b159-4476-47df-ba5b-e8ba9a318e21_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCkRlYXIgYWxsLDwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1m
YW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTog
MTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJm
b250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1z
aXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpXaGVuIEkgdHJ5IHRvIGFkZCB0aGUg
b3ZlcmxheSBmb3IgdGhlIHNjMTZpczc1Mi1zcGkwIHRvIG15IGltYWdlLCBpdCBmYWlscyBhdCB0
aGUgdGFzayBkb19pbWFnZV93aWMgd2l0aCB0aGUgZm9sbG93aW5nIGVycm9yOjwvZGl2Pg0KPGRp
diBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+
DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fu
cy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YmxvY2tx
dW90ZSBpdGVtc2NvcGU9IiIgaXRlbXR5cGU9Imh0dHBzOi8vc2NoZW1hcy5taWNyb3NvZnQuY29t
L1F1b3RlZFRleHQiIHN0eWxlPSJib3JkZXItbGVmdDogM3B4IHNvbGlkIHJnYigyMDAsIDIwMCwg
MjAwKTsgYm9yZGVyLXRvcC1jb2xvcjogcmdiKDIwMCwgMjAwLCAyMDApOyBib3JkZXItcmlnaHQt
Y29sb3I6IHJnYigyMDAsIDIwMCwgMjAwKTsgYm9yZGVyLWJvdHRvbS1jb2xvcjogcmdiKDIwMCwg
MjAwLCAyMDApOyBwYWRkaW5nLWxlZnQ6IDFleDsgbWFyZ2luLWxlZnQ6IDAuOGV4OyBjb2xvcjog
cmdiKDEwMiwgMTAyLCAxMDIpOyI+DQp8IEVSUk9SOiBNYWxmb3JtZWQgYm9vdCBmaWxlIGVudHJ5
OiBzYzE2aXM3NTItc3BpMC5kdGJvOzxicj4NCjwvYmxvY2txdW90ZT4NCjxicj4NCjwvZGl2Pg0K
PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMt
c2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KSSBhbSB1c2lu
ZyB0aGUga2VybmVsIHByb3ZpZGVkIGJ5IG1ldGEtcmFzcGJlcnJ5cGkgYW5kIGFkZCB0aGUgZm9s
bG93aW5nIHRvIG15IGJvYXJkIGNvbmZpZ3VyYXRpb246PC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250
LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXpl
OiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9
ImZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJsb2NrcXVvdGUgaXRl
bXNjb3BlPSIiIGl0ZW10eXBlPSJodHRwczovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9RdW90ZWRU
ZXh0IiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMt
c2VyaWY7IGJvcmRlci1sZWZ0OiAzcHggc29saWQgcmdiKDIwMCwgMjAwLCAyMDApOyBib3JkZXIt
dG9wLWNvbG9yOiByZ2IoMjAwLCAyMDAsIDIwMCk7IGJvcmRlci1yaWdodC1jb2xvcjogcmdiKDIw
MCwgMjAwLCAyMDApOyBib3JkZXItYm90dG9tLWNvbG9yOiByZ2IoMjAwLCAyMDAsIDIwMCk7IHBh
ZGRpbmctbGVmdDogMWV4OyBtYXJnaW4tbGVmdDogMC44ZXg7IGNvbG9yOiByZ2IoMTAyLCAxMDIs
IDEwMik7Ij4NCjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogQ29uc29sYXMsIENvdXJpZXIsIG1v
bm9zcGFjZTsiPlJQSV9LRVJORUxfREVWSUNFVFJFRV9PVkVSTEFZUyArPSAmcXVvdDsgXDwvc3Bh
bj4NCjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBDb25zb2xhcywgQ291cmllciwgbW9u
b3NwYWNlOyI+Jm5ic3A7ICZuYnNwOyBvdmVybGF5cy91YXJ0MC5kdGJvIFw8L3NwYW4+PC9kaXY+
DQo8ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogQ29uc29sYXMsIENvdXJpZXIsIG1vbm9z
cGFjZTsiPiZuYnNwOyAmbmJzcDsgb3ZlcmxheXMvc2MxNmlzNzUyLXNwaTAuZHRibyBcPC9zcGFu
PjwvZGl2Pg0KPGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IENvbnNvbGFzLCBDb3VyaWVy
LCBtb25vc3BhY2U7Ij4mbmJzcDsgJm5ic3A7IG92ZXJsYXlzL3NkaW8uZHRibyBcPC9zcGFuPjwv
ZGl2Pg0KPGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IENvbnNvbGFzLCBDb3VyaWVyLCBt
b25vc3BhY2U7Ij4mbmJzcDsgJm5ic3A7IG92ZXJsYXlzL2kyYy1ydGMuZHRibyBcPC9zcGFuPjwv
ZGl2Pg0KPGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IENvbnNvbGFzLCBDb3VyaWVyLCBt
b25vc3BhY2U7Ij4mbmJzcDsgJm5ic3A7ICZxdW90Ozwvc3Bhbj48YnI+DQo8L2Rpdj4NCjwvYmxv
Y2txdW90ZT4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0
aWNhLCBzYW5zLXNlcmlmOyI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBIZWx2
ZXRpY2EsIHNhbnMtc2VyaWY7Ij7igItJIHdhcyBub3QgYWJsZSB0byBmaW5kIGFueXRoaW5nIG9u
IHRoaXMgZXJyb3IuJm5ic3A7PC9zcGFuPjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1m
YW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7Ij48c3BhbiBzdHls
ZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsiPjxicj4NCjwv
c3Bhbj48L2Rpdj4NCjxkaXYgc3R5bGU9IiI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgSGVsdmV0aWNh
LCBzYW5zLXNlcmlmIj5UaGFuayB5b3UuPC9mb250PjwvZGl2Pg0KPGRpdiBzdHlsZT0iIj48Zm9u
dCBmYWNlPSJDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWYiPjxicj4NCkJlc3QgcmVnYXJk
czwvZm9udD48L2Rpdj4NCjxkaXYgc3R5bGU9IiI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgSGVsdmV0
aWNhLCBzYW5zLXNlcmlmIj5Sb21haW48L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4NCjxGT05UIGZhY2U9
Q2FsaWJyaT48U1RST05HPgo8RElWPgo8RElWIGNsYXNzPU1zb05vcm1hbCBzdHlsZT0iVEVYVC1B
TElHTjogY2VudGVyIiBhbGlnbj1jZW50ZXI+PFNQQU4gCnN0eWxlPSdDT0xPUjogYmxhY2s7IG1z
by1mYXJlYXN0LWZvbnQtZmFtaWx5OiAiVGltZXMgTmV3IFJvbWFuIic+CjxIUiBhbGlnbj1jZW50
ZXIgU0laRT0yIHdpZHRoPSIxMDAlIj4KPC9TUEFOPjwvRElWPlJvbWFpbiBDcmF1c2F6PFNQQU4g
c3R5bGU9IkZPTlQtU0laRTogMTFwdCI+PC9TUEFOPjxTUEFOIApzdHlsZT0iRk9OVC1TSVpFOiAx
MHB0Ij48L1NQQU4+PC9ESVY+PC9TVFJPTkc+PEJSPkRldmVsb3BtZW50PC9GT05UPgo8UCBzdHls
ZT0iRk9OVC1TSVpFOiAxMHB0OyBGT05ULUZBTUlMWTogQ2FsaWJyaSI+RElHSSBTRU5TIFN3aXR6
ZXJsYW5kIApBRzxCUj5GcmVpYnVyZ3N0ci4gNjU8QlI+Q0gtMzI4MCBNdXJ0ZW48QlI+PEJSPlRl
bGVmb246ICs0MSAyNiA2NzIgOTg3NjxCUj5FbWFpbDombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsg
PEEgc3R5bGU9IkZPTlQtRkFNSUxZOiBDYWxpYnJpIiAKaHJlZj0ibWFpbHRvOnJvbWFpbi5jcmF1
c2F6QGRpZ2lzZW5zLmNoIj5yb21haW4uY3JhdXNhekBkaWdpc2Vucy5jaDwvQT48L1A+CjxQIHN0
eWxlPSJGT05ULVNJWkU6IDEwcHQ7IEZPTlQtRkFNSUxZOiBDYWxpYnJpIj48SU1HIApzdHlsZT0i
SEVJR0hUOiA5MnB4OyBXSURUSDogMTM4cHgiIGJvcmRlcj0wIApzcmM9ImNpZDpkaWdpc2Vuc18z
NGRmOGRmZS0wNjM5LTRhY2ItOWU4ZC0wZWZkNzVlN2IzYTgucG5nIiB3aWR0aD0xMzggCmhlaWdo
dD05Mj48QlI+PEEgaHJlZj0iaHR0cDovL3d3dy5kaWdpc2Vucy5jaCI+d3d3LmRpZ2lzZW5zLmNo
PC9BPiA8L1A+CjxQIHN0eWxlPSJGT05ULVNJWkU6IDEwcHQ7IEZPTlQtRkFNSUxZOiBDYWxpYnJp
Ij4mbmJzcDs8L1A+PC9ib2R5Pg0KPC9odG1sPg0K

--_2b38b159-4476-47df-ba5b-e8ba9a318e21_
Content-Description: digisens_34df8dfe-0639-4acb-9e8d-0efd75e7b3a8.png
Content-Type: image/png;
	name="digisens_34df8dfe-0639-4acb-9e8d-0efd75e7b3a8.png"
Content-Disposition: inline;
	filename="digisens_34df8dfe-0639-4acb-9e8d-0efd75e7b3a8.png"
Content-Transfer-Encoding: base64
Content-ID: <digisens_34df8dfe-0639-4acb-9e8d-0efd75e7b3a8.png>

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

--_2b38b159-4476-47df-ba5b-e8ba9a318e21_--

--_000_VI1PR03MB626929E955F2C659ABCB212382CA0VI1PR03MB6269eurp_--
