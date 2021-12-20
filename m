Return-Path: <Jesper.Ahman@dasa.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75F08C433EF
	for <webhook@archiver.kernel.org>; Mon, 20 Dec 2021 07:44:37 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [104.47.12.52])
 by mx.groups.io with SMTP id smtpd.web09.2897.1639986274913286797
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Dec 2021 23:44:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dasaab.onmicrosoft.com
 header.s=selector2-dasaab-onmicrosoft-com header.b=FO/sFICt;
 spf=pass (domain: dasa.se, ip: 104.47.12.52, mailfrom: jesper.ahman@dasa.se)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSqfCohF+V1FrTWEyANS/ucLliDZYumhLx2Fzu3dUBNyj1NBFjFSfPN7eA0czmnWrqqx5AALa7BtMn6pRA6Bs7fFdT8uBVwn2h8H820ZsI8onL83cAoyvm1jPtntxybEn42TTvAtwZn85U8/SslR+GiJSlzk6vAnVySSU8amdxsIsL607bLTT7OJ/Mca6mgXxRlUSFGXxx7tgVA8zo0+zFYikOfar4YsPmYkrPDbhtHqfO25MeD9BOCVBn7mXZGLxsfw/BKkXhbVx0f/BjjFzdiSMHINF5kYSyUquJvmzWla9SahT3XWET2OMtNGEyVfU5Qt1nIMDPA+mjI6TZ/kVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9brgr8Pd2vLptH/MPG1Qdf4dC1NOk7Kg8RsBi0DQj+s=;
 b=MlsmRx93k8iv27qKx/fp78WsypUhVgWPR687GMQG6SRxT4kyjsnVL0mcKJe7JzJyOvSaxE0oI/BpFCJOs5c3K5Z1LCo/D7/l6pX+jCFaJ8nQ8w76eST53YJxySncO3IAonzZElSw1E44zmqAXN5zyKsBxAArrFVeophsifxsgBYlGlcQDO0+m8CLHVArjZ1qi+PdYKICwC4uTpmpIhwLoKnioMyGgIDbiOBzMvnO/Nro9CMFdF8Ov3sDgQnFAuFCc/BKhZhdFXHX8PgXClLjwu3+hYz1ajxLRvCkGJcUAha5LeRsxzzZLrKPKv+04KZRmRe/vH8wip97MgBwS3EukA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dasa.se; dmarc=pass action=none header.from=dasa.se; dkim=pass
 header.d=dasa.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dasaab.onmicrosoft.com; s=selector2-dasaab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9brgr8Pd2vLptH/MPG1Qdf4dC1NOk7Kg8RsBi0DQj+s=;
 b=FO/sFICtCmeD/WhOF4Mud7tf2UAktq3dPeSWzhpM4BSL/FiLVWyJmQsUiSDFsP1tuWspeefXckUyKaGc6skiMpp0uYumv0EE924L5doQSWTw764xKCp7wA/84NpIacMUAKlF9urwwL9cQu5DSIQvgztePrS5DgU+6L7Q54fJIbE=
Received: from HE1PR0702MB3657.eurprd07.prod.outlook.com (2603:10a6:7:7e::14)
 by AM0PR07MB4596.eurprd07.prod.outlook.com (2603:10a6:208:79::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.14; Mon, 20 Dec
 2021 07:44:31 +0000
Received: from HE1PR0702MB3657.eurprd07.prod.outlook.com
 ([fe80::410f:3afa:58:8dde]) by HE1PR0702MB3657.eurprd07.prod.outlook.com
 ([fe80::410f:3afa:58:8dde%7]) with mapi id 15.20.4823.014; Mon, 20 Dec 2021
 07:44:31 +0000
From: =?utf-8?B?SmVzcGVyIMOFaG1hbg==?= <jesper.ahman@dasa.se>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Sv: [yocto] do_rootfs: Taskhash mismatch due to BUILDNAME containing
 automatic date
Thread-Topic: [yocto] do_rootfs: Taskhash mismatch due to BUILDNAME containing
 automatic date
Thread-Index: AQHX8zHJAH/CeCFkh06K+mVCYDy6H6w2iW0AgARxYzA=
Date: Mon, 20 Dec 2021 07:44:31 +0000
Message-ID: 
 <HE1PR0702MB36577844D16E3D13FFC02FB08B7B9@HE1PR0702MB3657.eurprd07.prod.outlook.com>
References: <RtNV.1639737312168313422.77T4@lists.yoctoproject.org>
 <AM9PR09MB46428BD3406529CC249EF285A8789@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB46428BD3406529CC249EF285A8789@AM9PR09MB4642.eurprd09.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dasa.se;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b28066a-7e75-4d91-1175-08d9c38c8f2c
x-ms-traffictypediagnostic: AM0PR07MB4596:EE_
x-microsoft-antispam-prvs: 
 <AM0PR07MB4596C0CA302E855CBB63CCD88B7B9@AM0PR07MB4596.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7Txc+2engVmyR6Wf1kyRdmHUJeyoFgBxqeKfOeZDt4nD3cfMWkjRGdGYBYF6gh93+ku6s7XIkD1xnhAD/EFlbEclJ8M1KJxbByhdsgYw8eXiWEYuuzliz8UaUyQvcqsrqxKolMORuffJqqSqd/S2ZTmAVxbTnko4iS52HsZZnAb4OlExxPun+z9c7EUb4scEQElGj3I5dorPbcoFBhayCg+zig7S5f7Ac1BYgGK+2AdD9Xgsruli4bXjs0e69DMlrVOybjNgiLHJMqtrGFFBeHfj5wln2+F2eGxnQV/hI4JdMDhV2b9ynaq09dN5WLBOiA1cngzYRI8NUtA2XAq6ql/oauAhEW2qpH6vq0V5jF82vzGyUixVSvuCd/AiCYVEpaWhcGps1lWy/feZyaW/LlhcBp02WRUVLtXfJlbvOPvOve77rmOzGnDx1zvqOKi2bzZrJt0QQMYaV4lSYpjbSv7w0wCxCAmlYrcpI74U//AToa3P5SkR813sP+hCBz+6Nbh1Rj3xs1+EoX9GFLZjW16zOMOOj0K69FsPRxMS3cZtRQkZOGo1ki/RK4zQs4ql75mNTaykN5FXLzaqBQkNIl9sA984ds07lfgMZ1ylvhOB7/OLVDIcdcT/1Zr4XZIWc212wvkG2HuWCZb/gQIUbFbEzgmStpDCtQlbG0PE/lAdKJGNkya0g5hn4DqDDBVeFgIDw2wBMcVFYf/97KKqEnAQYKBBStrcC/pEEX81wMpZixMphpYaJeIh12fmwGpquJRAp9Nuzo3r2ZWrfImzFizMthKpimYqXWeSEyeJeBw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0702MB3657.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(396003)(366004)(39830400003)(346002)(136003)(376002)(2906002)(85202003)(186003)(9686003)(45080400002)(316002)(76116006)(966005)(85182001)(8936002)(8676002)(66446008)(64756008)(66556008)(66476007)(66946007)(53546011)(7696005)(6506007)(86362001)(83380400001)(26005)(508600001)(52536014)(110136005)(33656002)(38070700005)(38100700002)(122000001)(55016003)(66574015)(71200400001)(5660300002)(20210929001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bVQ3djhqQWViY09oanJFa2FWTTVKZXh2M3lrdm84QXNqRWs4ZndHNndBc3pE?=
 =?utf-8?B?K1JwQmFUM2pRemVlNHZSdWRpNnc1OWZtaTZiTUNSazJSeWtrN0I1SjZRd2RC?=
 =?utf-8?B?dGtmbWZ6NEFQTnE2SitXeEs4Z1FwcHZqSCtKeGxEUjBvamZ5SUNFZG5BTmwv?=
 =?utf-8?B?LzI1UEFyUXZ0b1V5d0ZTSG9PV1VNaWl1SkMxMjY3T1Nhcm5rQ0I2TjMwYU1h?=
 =?utf-8?B?b0hvTHFTRFo1TkNKcG1rR2hrSU5TZGE1UTFIbXRVK1A5bHpEekVLdnEwSm84?=
 =?utf-8?B?eUl3ZVhxdExyK1FKc0RZWU1TU0lUSFVQcXRCWFFOcHRodkhDTU16QUo0eWw0?=
 =?utf-8?B?eU5HbC9PdzI3d0ZGQjhyM1BhZGxXZ0dGU2E4cW5yVE5kc1JDRUduNnhUUmRD?=
 =?utf-8?B?Q05FMTVBdHFLWmpSWDNSOWxYN2h1RjFmQjNpVHUyalVQaWdnQTFxTHAwMkZa?=
 =?utf-8?B?RFIwOVhzbzN4MDVkYUxlanVleGVJV1ZDcXYybGwwdG5ZWUxYc0dTY2pYY2pw?=
 =?utf-8?B?UnNUK2NNQXhuc1ZIdDVCWDBwTHNpenREYURZNm5NTm5mQlI2anZlN3JueXQ5?=
 =?utf-8?B?dGt4SFBtNlg3bUhVbnlZZy92cG9NT3NOcUQ5anRUT0hja1k4SXo2b2g4c0Fp?=
 =?utf-8?B?bWdxOUc1YTFYOUw5eG81OEJIQUI4SnpsMnk1VkFHdjdqdU9xM1RSWHIrMUs5?=
 =?utf-8?B?Umh4Q2REVE5rREEwQkpTVGI4d3BxcThwUFV5S2U4VkNSaDFKeEJkWlZXa3A0?=
 =?utf-8?B?Z0pYTkV2ZTY5WU1taWdCaWJIK2tIYjFOc0lvQVlBaDJGbTR5elNiTkZXYXNx?=
 =?utf-8?B?aVRmT1AvaUozN0RmbHZxMFNic21vZjlLOTYxbU9tRnVrU3B5b3V3MHNrSEVt?=
 =?utf-8?B?TWswdnkwa2dMaDVZT2o2RXVNa1N0SlVmRHhEZ3V1bXFSZ252VWx0c1dqUWF1?=
 =?utf-8?B?K3FYK1o5MWorS2Y1NENBeWtFTFZlS1JhbXRDRDBad2xjTE8ydkJYZ2RpelRi?=
 =?utf-8?B?bmFLVE02M0VUa3pNV01nc0k1LytMM1czRUFCYWxhNVBuMjk5RDNGcVcwN1pB?=
 =?utf-8?B?SzJXMTRLMEViTEd5N2NyZ0F4Nm4rQlpnOXZEcTJGK3dkZnNQUTVtaWIxbjZL?=
 =?utf-8?B?UzVKS1FVQk1VU0lnVG4yZWxGV1hpbEEyVXpRYmlrRnBpSklhanhNZFI0ZkRE?=
 =?utf-8?B?c2lyQzdGZFZ2UExFWDJwZ2twV2FtUUwvdWg4YjVCOEo5K0lkSDN2QUFaMFVt?=
 =?utf-8?B?K2lwN3FVck9wbW1EeVV2OUpaM3dDMk9HK0J2eExsMXUyVmJqWXVKSjd3WW9u?=
 =?utf-8?B?NEhxRE9iRitEUnBHZ1NLZHFWS1krRFd5cWpjU0Mwc3ZnSlpxVUpwcDUzNXlC?=
 =?utf-8?B?am1Bay90ZnNGdnk5QXVrZkh3bzAva2xmbVpEY1lFWEtKM25rWmVka1dkcTVx?=
 =?utf-8?B?MUxkR0sxOTZuVDduMHh6N2hrbWhsVmlhV3EzVlhYenBBcFBMcDZDcGIySy9i?=
 =?utf-8?B?SVZQYTJWT2F6bTZyMVM0Q3hCNTJyL2hVUzI0K2JRNm5tMWJ1cTk2TnUvY2x0?=
 =?utf-8?B?N0N3SElndEdRVlh4RWdVMHRuLzJBSkhJMXZid2VIellHVGlLZTdYNllwcXNW?=
 =?utf-8?B?Tkt3RDBSaG1sSVBZdVl4Z0FEU0RWZi9JN3FxNko2eXV0dlRWWnQ1dVRQRFYy?=
 =?utf-8?B?cEU3bjJEQnEybTNLR2N2RTJyaUw4VE43ZGZWcHZ6RWkvdUJLMktydVgxVXpB?=
 =?utf-8?B?YThJOElLR1l4WTkyVStyNjFOR1VJdGgxYm5RVDQvMHZHd0lJTXF0Q3pKTFlG?=
 =?utf-8?B?dkp2MjQrUC9QTFNiZWtqRUl0WmF0dTF1ZnVxc0lzY2IrUlM1Q1hEYzB6TlRv?=
 =?utf-8?B?MGhwdmNiZU40d1E4UmJLMXJZV1Z5cFVJUUZHbGh6NjdEVHRDQ1ZnNW42MlVI?=
 =?utf-8?B?MWNjSFQxN29NdnFYVWt5NVA2R0plRGdjU1BZdGZNMmpEd2xUV0NPeGplSlQ0?=
 =?utf-8?B?bEtyZzZMTzBxTmVQNWJ3ODY4NVduZlk4VmpucW5vVnNOUzZHMlBLODNwYnVo?=
 =?utf-8?B?aTFJcUlBV2tRQS9iRDREOUZ4R3dOMk5pdFFJcEZmWXh0dEtNcG5EMG13TGRN?=
 =?utf-8?B?djRZd2JZUXZnbjBZN0ZTTktidTlBT1Npb3M1NFJaUXd6OEprNGpyend2c2Js?=
 =?utf-8?Q?cfJohvUECINvn1wxOBDw3lc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: dasa.se
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 HE1PR0702MB3657.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1b28066a-7e75-4d91-1175-08d9c38c8f2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2021 07:44:31.2894
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b4ecb7a-07b1-4ae1-95c9-bccf92f7f936
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 CByn9p1N4xwzWyLJUwS5rLzsL5ZQ8n2VafgziLEfTptwLimT6YK0oQz3CYwwDMzG5HVrasT9ZmNGEzOLF1MiyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4596
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Dec 2021 07:44:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55622

SGVsbG8gYW5kIHRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4NCg0KPiBhY2NvcmRpbmcgdG8gbXkg
dW5kZXJzdGFuZGluZyBCVUlMRE5BTUUgc2hvdWxkIG5vdCBiZSB1c2VkIGxpa2UgdGhhdCBzaW5j
ZSBmODVmMWVmMjRlNTljMGMwNThmOTZmMGRmYTgyZTUwOTY5ZmQ1ODBiIGluIGJpdGJha2UuDQpU
aGF0IGV4cGxhaW5zIHdoeSB0aGUgc2FtZSBhcHByb2FjaCB3b3JrcyBpbiBhbiBvbGRlciBZb2N0
byBwcm9qZWN0IHRoYXQgSSBoYXZlIGZvciBhbm90aGVyIG1hY2hpbmUuDQoNCj4gSnVkZ2luZyBm
cm9tIHRoYXQgaWYgeW91IHdvdWxkIHNldCAnQlVJTEROQU1FID0gIm15X0ltYWdlXzAuMC4xXyR7
REFURX0iJyB0aGUgd2FybmluZyBsaWtlbHkgd2lsbCBnbyBhd2F5Lg0KVW5mb3J0dW5hdGVseSwg
dGhhdCBkaWQgbm90IG1ha2UgYW55IGRpZmZlcmVuY2UuIFRoZSBzYW1lIGVycm9yIGlzIHN0aWxs
IHRoZXJlLg0KDQpUaGVyZSBtdXN0IGJlIHNvbWUgd2F5IG9mIGRvaW5nIHRoaXMsIHJpZ2h0Pw0K
T3IgYXJlIHRoZXJlIHNvbWUgb3RoZXIgYXBwcm9hY2ggYXZhaWxhYmxlLCB0byBkbyBhYm91dCB0
aGUgc2FtZSB0aGluZz8NCkkgbWFpbmx5IHdhbnQgdG8gc2V0IC9ldGMvdmVyc2lvbiB0byBzb21l
dGhpbmcgdXNlZnVsLg0KDQpCZXN0IHJlZ2FyZHMsDQoNCg0KLS0tLS1VcnNwcnVuZ2xpZ3QgbWVk
ZGVsYW5kZS0tLS0tDQpGcsOlbjogS29ucmFkIFdlaWhtYW5uIDxrd2VpaG1hbm5Ab3V0bG9vay5j
b20+IA0KU2tpY2thdDogZGVuIDE3IGRlY2VtYmVyIDIwMjEgMTI6MTkNClRpbGw6IEplc3BlciDD
hWhtYW4gPGplc3Blci5haG1hbkBkYXNhLnNlPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0Kw4RtbmU6IFJlOiBbeW9jdG9dIGRvX3Jvb3RmczogVGFza2hhc2ggbWlzbWF0Y2ggZHVlIHRv
IEJVSUxETkFNRSBjb250YWluaW5nIGF1dG9tYXRpYyBkYXRlDQoNCkhpLA0KDQphY2NvcmRpbmcg
dG8gbXkgdW5kZXJzdGFuZGluZyBCVUlMRE5BTUUgc2hvdWxkIG5vdCBiZSB1c2VkIGxpa2UgdGhh
dCBzaW5jZSBmODVmMWVmMjRlNTljMGMwNThmOTZmMGRmYTgyZTUwOTY5ZmQ1ODBiIGluIGJpdGJh
a2UuDQoNClRoZSB2YXJpYWJsZSBzaG91bGQgY29udGFpbiBvbmx5IHJlZmVyZW5jZXMgdG8gb3Ro
ZXIgYXV0b21hdGljYWxseSBkZXRlcm1pbmVkIHZhcmlhYmxlcyAoZGVmYXVsdCA9IGRzLnNldFZh
cigiQlVJTEROQU1FIiwgIiR7REFURX0ke1RJTUV9IikNCg0KSnVkZ2luZyBmcm9tIHRoYXQgaWYg
eW91IHdvdWxkIHNldCAnQlVJTEROQU1FID0gIm15X0ltYWdlXzAuMC4xXyR7REFURX0iJyB0aGUg
d2FybmluZyBsaWtlbHkgd2lsbCBnbyBhd2F5Lg0KDQpQbGVhc2Uga2VlcCBpbiBtaW5kIHRoYXQg
dGhlc2UgaW5saW5lIGZ1bmN0aW9ucyAoZXNwIGluIGVhcmx5IHN0YWdlcyBvZiB0aGUgcGFyc2lu
ZyBwcm9jZXNzLCBsaWtlIG1hY2hpbmUuY29uZikgYXJlIG5vdCBleHBhbmRlZC4NCldoaWNoIGV4
cGxhaW5zIHRoZSBzZWVuIGJlaGF2aW9yLg0KDQpPbiAxNy4xMi4yMSAxMTozNSwgSmVzcGVyLkFo
bWFuQGRhc2Euc2Ugd3JvdGU6DQo+IEhlbGxvLA0KPiANCj4gSW4gbXkgbWFjaGluZSBjb25maWcs
IEkgaGF2ZSBzZXQgYnVpbGRuYW1lIHVzaW5nOg0KPiBCVUlMRE5BTUUgPSAibXlfSW1hZ2VfMC4w
LjFfJHtAdGltZS5zdHJmdGltZSgnJVklbSVkJyx0aW1lLmdtdGltZSgpKX0iDQo+IEluIG9yZGVy
IHRvIGdldCBhIHRpbWVzdGFtcCAoZGF0ZSkgaW4gZWFjaCBidWlsZCBuYW1lLg0KPiANCj4gQWx0
aG91Z2gsIHRoaXMgY2F1c2VzIHNvbWUgZXJyb3IgbWVzc2FnZXMgd2hlbiBidWlsZGluZyB0aGUg
cm9vdGZzOg0KPiAvRVJST1I6IFdoZW4gcmVwYXJzaW5nDQo+IC9ob21lL2J1aWxkc2VydmVyL2Zz
bC9zb3VyY2VzL21ldGEtZnJlZXNjYWxlLWRpc3Ryby9yZWNpcGVzLWZzbC9pbWFnZXMNCj4gL2Zz
bC1pbWFnZS1tdWx0aW1lZGlhLWZ1bGwuYmI6ZG9fcm9vdGZzLA0KPiB0aGUgYmFzZWhhc2ggdmFs
dWUgY2hhbmdlZCBmcm9tDQo+IDZiMTIyNmE5ZmUxMGYwOGRkNGYyZmU2MzQ5NDRhNTNjZjAzZjc2
OTlhODU1M2E5Y2MzNDZjMDk3MDI3YjI0ZSB0byANCj4gY2JkNWRlNzliNzNhMWJjNGRkMDIwMjRi
YWZkMWU1YzI5ZDRiYWE4ZjQzNjE3YzM3ZWI4ZjVmYzU3ZWQ3MzhlZC4gVGhlIA0KPiBtZXRhZGF0
YSBpcyBub3QgZGV0ZXJtaW5pc3RpYyBhbmQgdGhpcyBuZWVkcyB0byBiZSBmaXhlZC4vDQo+IC9F
UlJPUjogVGhlIGZvbGxvd2luZyBjb21tYW5kcyBtYXkgaGVscDovDQo+IC9FUlJPUjogJCBiaXRi
YWtlIGZzbC1pbWFnZS1tdWx0aW1lZGlhLWZ1bGwgLWNkb19yb290ZnMgLVNub25lLw0KPiAvRVJS
T1I6IFRoZW46Lw0KPiAvRVJST1I6ICQgYml0YmFrZSBmc2wtaW1hZ2UtbXVsdGltZWRpYS1mdWxs
IC1jZG9fcm9vdGZzIC1TcHJpbnRkaWZmLw0KPiANCj4gSSByYW4gdGhlIHN1Z2dlc3RlZCBjb21t
YW5kcyBhbmQgZm91bmQgdGhlIGZvbGxvd2luZzoNCj4gL1Rhc2sgZnNsLWltYWdlLW11bHRpbWVk
aWEtZnVsbDpkb19yb290ZnMgY291bGRuJ3QgYmUgdXNlZCBmcm9tIHRoZSANCj4gY2FjaGUgYmVj
YXVzZTovIC/CoCBXZSBuZWVkIGhhc2ggDQo+IDA2NjE1M2UxYThkOGFkMGU4MDI1ZjY0MDlkYmFj
OTZjMjc3ZTYzMDA1NDEzNTZiMDc3ZjE4MjNmMTk1ZWYxOWMsDQo+IGNsb3Nlc3QgbWF0Y2hpbmcg
dGFzayB3YXMNCj4gMDQwMTQ3Y2QzNWQxNzY4ODY2OGM3NDM1NjMzZmQ4ZmYyNWQ4Y2Y3NDI1YTkz
ZDM1ZWZkZDc3OTlhNDdiZGM4NS8NCj4gL8KgIGJhc2VoYXNoIGNoYW5nZWQgZnJvbQ0KPiBjYmQ1
ZGU3OWI3M2ExYmM0ZGQwMjAyNGJhZmQxZTVjMjlkNGJhYThmNDM2MTdjMzdlYjhmNWZjNTdlZDcz
OGVkIHRvIA0KPiA2MWIxMjI2YTlmZTEwZjA4ZGQ0ZjJmZTYzNDk0NGE1M2NmMDNmNzY5OWE4NTUz
YTljYzM0NmMwOTcwMjdiMjRlLw0KPiAvwqAgVmFyaWFibGUgQlVJTEROQU1FIHZhbHVlIGNoYW5n
ZWQgZnJvbSAnbXlfSW1hZ2VfMC4wLjFfMjAyMTEyMTQnIHRvIA0KPiAnbXlfSW1hZ2VfMC4wLjFf
JHtAdGltZS5zdHJmdGltZSgnJVklbSVkJyx0aW1lLmdtdGltZSgpKX0nDQo+IC8NCj4gU28gd2hl
biAvJHtAdGltZS5zdHJmdGltZSgnJVklbSVkJyx0aW1lLmdtdGltZSgpKX0nIC9pcyBjb252ZXJ0
ZWQgdG8gDQo+IHRoZSBhY3R1YWwgZGF0ZSwgaXQgbWVzc2VzIHdpdGggWW9jdG8uDQo+IFRoZSBi
dWlsZCBzdWNjZWVkcyBhbnl3YXksIGJ1dCBpdCdzIHF1aXRlIGFubm95aW5nIGhhdmluZyBhIGxv
YWQgb2YgDQo+IGVycm9yIG1lc3NhZ2VzIG9uIGVhY2ggYnVpbGQuDQo+IA0KPiBIb3cgY2FuIHRo
ZXNlIGVycm9ycyBiZSBhdm9pZGVkPw0KPiANCj4gSSBmb3VuZCBpbiB0aGUgWW9jdG8gRkFROg0K
PiAvVGhpcyBpcyBvZnRlbiBzb21ldGhpbmcgdGltZS1yZWxhdGVkIGUuZy4gYSB0aW1lc3RhbXAg
d2hpY2ggaXMgDQo+IGNhbGN1bGF0ZWQgZXZlcnkgdGltZSBhbiBleHByZXNzaW9uIGlzIGV4cGFu
ZGVkLiBUaGUgc29sdXRpb24gaXMgdG8gDQo+IGVuc3VyZSB0aGUgdmFsdWUgaXMgY2FsY3VsYXRl
ZCBvbmNlIHBlciBidWlsZCBhbmQgdGhlbiB0aGUgZXhwcmVzc2lvbiANCj4gZXhwYW5kcyB0byB0
aGUgc2FtZSB2YWx1ZSBmb3IgdGhlIGR1cmF0aW9uIG9mIHRoZSBidWlsZC4NCj4gDQo+IC9XaGlj
aCBzb3VuZHMgc29tZXdoYXQgcmlnaHQsIGJ1dCB0aGUgaXNzdWUgaGVyZSBpcyBub3QgdGhhdCB0
aGUgdmFsdWUgDQo+IGlzIGNoYW5nZWQgZHVlIHRvIHJlY2FsY3VsYXRpb24gKHRoZSBkYXRlIHJh
cmVseSBjaGFuZ2VzIGR1cmluZyBhIA0KPiBidWlsZCkgYnV0IHRoZSBleHBhbnNpb24gb2YgdGhl
IGV4cHJlc3Npb24gaXRzZWxmIChmcm9tIFB5aHRvbiBjb2RlIA0KPiBpbnRvIGl0cyByZXN1bHQp
Lg0KPiANCj4gUnVubmluZyBZb2N0byBEdW5mZWxsLg0KPiANCj4gDQo+IC09LT0tPS09LT0tPS09
LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlz
IGdyb3VwLg0KPiBWaWV3L1JlcGx5IE9ubGluZSAoIzU1NjA4KTogDQo+IGh0dHBzOi8vbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTU2MDgNCj4gTXV0ZSBUaGlzIFRvcGlj
OiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvODc3ODY4NTIvMzY0NzQ3Ng0KPiBH
cm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNj
cmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWIgDQo+IFtr
d2VpaG1hbm5Ab3V0bG9vay5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IA0K

