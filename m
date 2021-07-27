Received: from esa18.fujitsucc.c3s2.iphmx.com (esa18.fujitsucc.c3s2.iphmx.com [216.71.158.38])
 by mx.groups.io with SMTP id smtpd.web12.8162.1627370841194546102
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 00:27:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=h2OgEJqM;
 spf=pass (domain: fujitsu.com, ip: 216.71.158.38, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1627370842; x=1658906842;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=gid5YTaoWZVESKuOtAXagd2J/P6cOIUU2mW4yGAQq/Q=;
  b=h2OgEJqMmgV/HCDsTs98leuTEeqYW8Ok86qVoXbdFC1JfgaDFspQAtVz
   00S3wdTtFIV3lV4s3QYaCNSSe1NSuGqe0tnaw6j2X5FlhSMlsKIDhBOtf
   QflVNF+/ByjL10neKnP2stkwuNd7Q9LLrawzeSX74dcxqn51QrGKIn0G5
   Xz+4lIHKgNX9oPZIRy4rpLLw85XWCm+i4TwjQS0/JylWDldo6G6bC66Aw
   JfuPTbps8BSoWJ9/ZnmcDBkTEVMXP2XYQ+f9wGZsAVp8cAsxr9fR+83U+
   pxsTpS7ofXCFNIEZK47xx8F+pQ0b8NBhRdqPKmLTStASQA3wkNmLYkef2
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="36203943"
X-IronPort-AV: E=Sophos;i="5.84,272,1620658800"; 
   d="scan'208";a="36203943"
Received: from mail-ty1jpn01lp2057.outbound.protection.outlook.com (HELO JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.57])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 16:27:18 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJzjVhsfKBcPXJ4zLBAJpN5fwdteNOpWOcTpcFPjoFnxgxVh6/Zd8ZV74U/nXsjnu3c4F8aRLt0vizhKj/+dRXxEUaUgsDT2yI6Kx9v61D2k2MgxIa36eR8M2iC9ru+5RlpQf4JnB6FzgUNlvHluQ1EUuk/Gx+SSjEkTghsDBgJetIb55BrDETFud1wzDoRhazRUlkekXp+9NGnyA7bLZpInFb0s/p3QJWkQdvut8EitAF3yw7eHFz9nj3DmtPwhj9T8N/souxXbBsfeu+EiZrGx2QYHMXhyN6vCDYBejyJDzODrJiSzbtL2S44/rUjxB4TjYUzJVpGzaLb2gofcRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gid5YTaoWZVESKuOtAXagd2J/P6cOIUU2mW4yGAQq/Q=;
 b=ivQzhmuEuVlJ04IjCo46vYYcXk2TbiM+9iKMvWaQuBrF2iPIYQxjcGCxzc+hoHxUuH6rt6Z59w8Q9fqEJe4R/U4ZCUMuVGMSN0Kazxc7ah7N4Vq/Zv/o81bz9eO5ZwOf68HZzF3Y98lfjBQsbAmuqqnswK50sMfS1nXf5VhTmwdbuvXveUEAW8/NmZWlJusJiLX4UiRPtNByQThTkY3013bwJoNyBLGq+uJSHXzk7IEwS9jGy6+M6WYs+ZgY4KKedGgeR5U4iGMi/uP/eGiNmCwrjJ2C42WsUKGQkcQIHyygB9ztWqtBY4YVLtYo2/rsz6cj3tm01/dEsBwIgxEDlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gid5YTaoWZVESKuOtAXagd2J/P6cOIUU2mW4yGAQq/Q=;
 b=QbajJb/TuKcP34odcoHq4eFxiuM3QPnvTifBQMB5OZWmYKVEXQM9mh6s5wJ1i7BYy1YSogx8xuWIRQdde1TlSHgNxRCKRRzg4eCLSxYar/E2U7XZsChECcvbVO7JtQzRvwif56Xv1KXwN8DUmE09HVZ3ZPos8NN2DXQaADLX8m0=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OSZPR01MB6581.jpnprd01.prod.outlook.com (2603:1096:604:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Tue, 27 Jul
 2021 07:27:14 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0%3]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 07:27:14 +0000
From: "leimaohui" <leimaohui@fujitsu.com>
To: "koansoftware@gmail.com" <koansoftware@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Marco Cavallini <m.cavallini@koansoftware.com>
Subject: Re: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved check if spdx already exists out of the task
Thread-Topic: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved
 check if spdx already exists out of the task
Thread-Index: AQHXfvpruumRrGdwV0ShrZDoOmtH46tWCe7QgABfwYCAAAYSYA==
Date: Tue, 27 Jul 2021 07:27:14 +0000
Message-ID: 
 <OS0PR01MB61781B8046F68D205CD1755DA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <20210722130623.30388-1-koansoftware@gmail.com>
 <OS0PR01MB617873FAB04E7A2F07A309AEA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
 <beee77ab-64f4-8c6c-0d1d-e6679a9cf558@gmail.com>
In-Reply-To: <beee77ab-64f4-8c6c-0d1d-e6679a9cf558@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8fedc51-f53b-4cdd-a008-08d950cff50d
x-ms-traffictypediagnostic: OSZPR01MB6581:
x-microsoft-antispam-prvs: 
 <OSZPR01MB65810C7941EB3EF3581D33A3A0E99@OSZPR01MB6581.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Re6RPBBL1s0QEn5Ic/+Z2kQF87W1Dx6S/JUir+71wW0BiBTCTZyFqwLZbzhFfliJwD3Nr3xKoeA1TWMLQuQg1Gtn5KarjEuWDhC5qlA3qufTyEzPNwLzuX6Q5jEodmy77yNtGVb7vrN+fihSABoTfaVMla13Vm+QRm6bIVaGd0T56EwYCeCgoKOaRc08+rzDPTloI1uQ/5jvDn3pBVagSq/e7rA19EJVb6aZopte0ibn7G1ZrmaHP0FlfkQxZjgVot1HmXDGQMMQAhumnoU1tPLbrUMarRDoM7ZPYPyJw6TpQ/FUpBsVb/pFZZpEQrjN6pR/c8Ohre8vCJqYn65DMj9L7gs6deRv0XQittT9YRDTz+o2jVu4FkRKQN3bZg+tCtAeUs/KROtbb3TndwEpVFXIQSO9lecS84f2uzxSjNlbJvX4xAPpoWl1zLHg0VRBmjj6HsFjsaH+xluwbkgX2jmgLgYKWBjUrNCe7nYWh4Ldw8ga9U+w1iv5zC3E4q+slDb9hNDw+uBcwafeV6YtFc8Zy3UbUW/80m6gzvkyc18TgKu0+m1l9g7gwS1AK/Clv0xxjM7lbbTuMusdd8Wrj9P4By18KO+ANLxfDtNd+kO8wtMJjLExy/3F56Kv885YeHjgFoZ74SyjQSHzTTUvNJg4KOODcT8td+BX5Lu9NMIw19DtsxWcDJW4/ES3PpOXj8xFceVSWr8JSU8HtsleBIXDaR7jtlh0HRTyU3H4OqreXIDo9c+Z0L/rq2jq/Yk3F3YJN+MMeN/jnwHw2FV6ddi9ZDfDK5aG+NBL/V2Glsw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(376002)(39860400002)(136003)(346002)(66446008)(316002)(52536014)(478600001)(110136005)(26005)(66946007)(64756008)(2906002)(83380400001)(71200400001)(86362001)(76116006)(9686003)(5660300002)(122000001)(186003)(966005)(38100700002)(55016002)(4326008)(85182001)(8676002)(53546011)(7696005)(6506007)(66556008)(66476007)(33656002)(8936002)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?YVI0TWFYQnR3L2ZRODRzS2s2Q2pLMCtVOGxyQnpNSm9WeDVubVhXL1Qv?=
 =?shift_jis?B?azl3T1d1ZVJVZmRKVDcwSm03UXRhQW1CTkoxRWVkQjRLeWxjek9SYnRy?=
 =?shift_jis?B?RUhZME5Rb3Rydmp4R2t5cm9xOG95K1RvOHlWSkRSRVp0UjZBZy8rdm5T?=
 =?shift_jis?B?cWIvN2I5UTc2RitpdTJ1bk5hYzdmOTRaYjJmL3ZZTXdoT0JPdUhWTFRn?=
 =?shift_jis?B?K0ZwZ0RQQy9ZdVJxdjhwMWpaK21GWDExR0lKc2ZMaTZXK1VtRmgwSks3?=
 =?shift_jis?B?Y01tSzdTcTRQUjlVS2VkTFVKTUdkMjNxaG5yeXJ6YkNmU2w4V1EzRC9G?=
 =?shift_jis?B?SEZUMzZzc0szZUNsU1Q1WDdDdS8ydEFjSG5tT1lyWlVsZTRkdTlIWG5S?=
 =?shift_jis?B?MEEweTFyWC8xWHhOY1k4bkxZUW81MDdOQnNJRVJ2Y3hpVTFyMzNDenJa?=
 =?shift_jis?B?aDVJRDdCYi93TmdFUStKaFFlVmFLeGE0TjhKUDJmSEp0RXRZVm5JZG9E?=
 =?shift_jis?B?NmlEZktIcWFSd3BkTXZWMGFFUWs3L1pSUnNKcmFxOWFvS0ZvSUtmckUx?=
 =?shift_jis?B?WlpRZkViWXhPUFBrS2dFZndvVzBWbHJhTEFXOXhUTXNJQVNoaDR1NTNy?=
 =?shift_jis?B?QnhpeW1iY2dpNkUwUXNYZm92cUUyUzJKbzVQTnMxc2x1U3hrbGoyays3?=
 =?shift_jis?B?VWZpUm1jd2dXREZ0M3F4WTdrVnRZTWdXSXJ1S1pjRHJSakNpckJpN1RY?=
 =?shift_jis?B?YTlrMEdKeENIOXphZzI2TWE5ZTZZUEZBeTlQdEh1cUk1a2p2MjVIV0M1?=
 =?shift_jis?B?enZFZjRPNnVIVlVubzJ6Q0ZDU2dpNzl0WWZNMUlyTEJVY3FPdVpQZmdP?=
 =?shift_jis?B?NG9sT3N5NjZMS0RrbTUrNGZwbHRjWXBIcGJYSWlaOEJ2NXoxUk5kZGp6?=
 =?shift_jis?B?b0Z0NFFGcnZ3ZXFjTWNVOWZpc2xYOXJHNG5qS1F6eVcvVmZSTTBNYUpP?=
 =?shift_jis?B?QTRJVUIvS0tvUmEzbDVVeXNldDFnNGNOcFFYNzBxOVdoTUduaXgzNFVZ?=
 =?shift_jis?B?VHdCcEsvS20zTS9KZ3dNa2txZVh3d1NZKzdOZFl3ZnpLR2ZEUU5uT2Zt?=
 =?shift_jis?B?SnVXOVhtSE1TaTZyNlZSaGxCODF5OHk3bjlaZzJRTjNkOEU1a2t0ejR3?=
 =?shift_jis?B?NHFjcGVpR1l2VG1rajVTRnNkbjJTdDBNQ2FxMUZ5cWZrbE1pbWxsdkt6?=
 =?shift_jis?B?RjFTMnMzUXlSQTVJZ0V1YTVGYXFOWGh5Vk5ma05vUUd1ZG40bW1DdS8w?=
 =?shift_jis?B?c0JBWXRuSEhhRWkvcUVLejZ2OFN4WFJobGlQVWVSazF4SUpZUUV2c2RG?=
 =?shift_jis?B?eUd5eHNNNEFoNXJEdFB4S2psOUI5bi9lSTlNSStCSzNPZ1dwejlCaFBZ?=
 =?shift_jis?B?b1RyNVE0TEFTeDM3cTdNNER0TC95M21HdmQ4Y0RlTVBSQ2hrMlAvVEtr?=
 =?shift_jis?B?cFRTN0xTMWdDR1B4QXFDQnB1VzQzcDBFMmt1TUdsMzJobDNjblc0Kzhk?=
 =?shift_jis?B?b0JKYVBlYURKTTZ6R01KT0pVSGJmWHZWY3YrZXJJenNacFVJSXJneEVx?=
 =?shift_jis?B?Zm1aSytlQjhMWVJ1S2lwZ2Ztak8zOFRQTFBrazNVWnJYUXB2MHMzUkk2?=
 =?shift_jis?B?Z3J3KzE5Yk05akRyZFlja3BaZ1lyVWIzQTVoaUJVTDBFdW5OM2Mwa1pl?=
 =?shift_jis?B?dmlmYWpKK0JadFo0RURYTFNueGtHdUZNcTEzdnlkQ3haRlBGaW43cnZp?=
 =?shift_jis?B?SENFRW03RUtHY3M3WnBocWp6MVhUQ1o1aXREcjdqNFY2dXRZcVpHOVda?=
 =?shift_jis?Q?AcXR/deh1oB/1BuX2HsjgxIVkw+QD5tTfAp2vYGd96?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8fedc51-f53b-4cdd-a008-08d950cff50d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 07:27:14.8184
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bwU7zAgtkfxZamn9rIrLzdOz1l1UXs/eGtszlqwSFrKU5oGFnJHuYsw0LIIQKpyL8Kzr7/DR5xmLg2MvgWsS8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB6581
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksIE1hcmNvDQoNCkkgZ290IHdoYXQgeW91IG1lYW4sIGJ1dCBJIHRoaW5rIHlvdXIgcGF0Y2gg
c2hvdWxkIGJlIG1vZGlmaWVkIGFzIHRoZSBmb2xsb3dpbmcsIGp1c3QgbWFrZSBkb19nZXRfcmVw
b3J0IG5vdCBjaGVjayBzcGR4IGZpbGUgYWdhaW4sIGlzIGl0ID8NCg0KJCBnaXQgZGlmZiBjbGFz
c2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MNCmRpZmYgLS1naXQgYS9jbGFzc2VzL2Zvc3NvbG9n
eS1yZXN0LmJiY2xhc3MgYi9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MNCmluZGV4IDM2
OTQ0NDAuLmMyOWU1N2YgMTAwNjQ0DQotLS0gYS9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xh
c3MNCisrKyBiL2NsYXNzZXMvZm9zc29sb2d5LXJlc3QuYmJjbGFzcw0KQEAgLTE1NywxNSArMTU3
LDYgQEAgcHl0aG9uIGRvX2dldF9yZXBvcnQgKCkgew0KICAgICBpbmZvWydvdXRmaWxlJ10gPSBv
cy5wYXRoLmpvaW4obWFuaWZlc3RfZGlyLCBpbmZvWydwbiddICsgIi0iICsgaW5mb1sncHYnXSAr
ICIuc3BkeCIgKQ0KICAgICBzc3RhdGVmaWxlID0gb3MucGF0aC5qb2luKHNwZHhfb3V0ZGlyLCBp
bmZvWydwbiddICsgIi0iICsgaW5mb1sncHYnXSArICIuc3BkeCIgKQ0KDQotICAgICMgaWYgc3Bk
eCBoYXMgYmVlbiBleGlzdA0KLSAgICBpZiBvcy5wYXRoLmV4aXN0cyhpbmZvWydvdXRmaWxlJ10p
Og0KLSAgICAgICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMgYmVlbiBleGlz
dCwgZG8gbm90aGluZyIpDQotICAgICAgICByZXR1cm4NCi0gICAgaWYgb3MucGF0aC5leGlzdHMo
IHNzdGF0ZWZpbGUgKToNCi0gICAgICAgIGJiLm5vdGUoaW5mb1sncG4nXSArICJzcGR4IGZpbGUg
aGFzIGJlZW4gZXhpc3QsIGRvIG5vdGhpbmciKQ0KLSAgICAgICAgY3JlYXRlX21hbmlmZXN0KGlu
Zm8sc3N0YXRlZmlsZSkNCi0gICAgICAgIHJldHVybg0KLQ0KICAgICBzcGR4X2dldF9zcmMoZCkN
Cg0KICAgICBiYi5ub3RlKCdTUERYOiBBcmNoaXZpbmcgdGhlIHBhdGNoZWQgc291cmNlLi4uJykN
Cg0KVGhlcmUgaXMgbm8gbmVjZXNzYXJ5IHRvIGFkZCBjaGVjayBpbiBsaW5lIDg3LCBiZWNhdXNl
IGxpbmUgNzl+ODUgaGFzIGNoZWNrZWQgd2hldGhlciB0aGUgc3BkeCBmaWxlcyBleGlzdC4NCj4g
QEAgLTg0LDYgKzg0LDE1IEBAIHB5dGhvbiAoKSB7DQo+ICAgICAgICAgY3JlYXRlX21hbmlmZXN0
KGluZm8sc3N0YXRlZmlsZSkNCj4gICAgICAgICByZXR1cm4NCj4gDQo+KyAgICAjIGlmIHNwZHgg
YWxyZWFkeSBleGlzdHMNCj4rICAgIGlmIG9zLnBhdGguZXhpc3RzKGluZm9bJ291dGZpbGUnXSk6
DQo+KyAgICAgICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMgYmVlbiBleGlz
dCwgZG8gbm90aGluZyIpDQo+KyAgICAgICAgcmV0dXJuDQo+KyAgICBpZiBvcy5wYXRoLmV4aXN0
cyggc3N0YXRlZmlsZSApOg0KPisgICAgICAgIGJiLm5vdGUoaW5mb1sncG4nXSArICJzcGR4IGZp
bGUgaGFzIGJlZW4gZXhpc3QsIGRvIG5vdGhpbmciKQ0KPisgICAgICAgIGNyZWF0ZV9tYW5pZmVz
dChpbmZvLHNzdGF0ZWZpbGUpDQo+KyAgICAgICAgcmV0dXJuDQo+Kw0KDQpCZXN0IHJlZ2FyZHMN
CkxlaQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmNvIDxrb2Fu
c29mdHdhcmVAZ21haWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDI3LCAyMDIxIDI6NTEg
UE0NCj4gVG86IExlaSwgTWFvaHVpIDxsZWltYW9odWlAZnVqaXRzdS5jb20+Ow0KPiB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBNYXJjbyBDYXZhbGxpbmkgPG0uY2F2YWxsaW5p
QGtvYW5zb2Z0d2FyZS5jb20+DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLXNwZHhzY2Fu
bmVyXVtQQVRDSF0gZm9zc29sb2d5LXJlc3QuYmJjbGFzczogTW92ZWQNCj4gY2hlY2sgaWYgc3Bk
eCBhbHJlYWR5IGV4aXN0cyBvdXQgb2YgdGhlIHRhc2sNCj4gDQo+IEhpIExlaSwNCj4gbXkgcGF0
Y2hlcyBhcmUgYmFzZWQgb24gYnJhbmNoIE1BU1RFUiB0aGVyZWZvcmUgdGhleSBhcmUgYmFzZWQg
b24gdGhlIGxhdGVzdA0KPiBzb3VyY2UgY29kZS4NCj4gDQo+IFdvdWxkIHlvdSBtaW5kIHRvIGFw
cGx5IHRoaXMgb25lIHNvIHdpbGwgYmUgcG9zc2libGUgdG8gY2FsbCAiYml0YmFrZSAtYw0KPiBn
ZXRfcmVwb3J0IiA/DQo+IA0KPiBUaGFuayB5b3UNCj4gDQo+IC0tDQo+IE1hcmNvDQo+IA0KPiAN
Cj4gDQo+IE9uIDI3LzA3LzIxIDAzOjExLCBsZWltYW9odWlAZnVqaXRzdS5jb20gd3JvdGU6DQo+
ID4gSGkgTWFyY28NCj4gPg0KPiA+IEknbSBzb3JyeSwgYnV0IHlvdXIgcGF0Y2ggc2VlbXMgbm90
IGJhc2Ugb24gdGhlIGxhdGVzdCBzb3VyY2UgY29kZS4NCj4gPiBodHRwczovL2dpdC55b2N0b3By
b2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kvbWV0YS1zcGR4c2Nhbm5lci90cmVlL2NsYXNzDQo+ID4g
ZXMvZm9zc29sb2d5LXJlc3QuYmJjbGFzcw0KPiA+DQo+ID4gQmVzdCByZWdhcmRzDQo+ID4gTGVp
DQo+ID4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiBPbg0KPiA+PiBCZWhhbGYgT2YgTWFyY28gQ2F2YWxsaW5pDQo+ID4+IFNlbnQ6IFRodXJzZGF5
LCBKdWx5IDIyLCAyMDIxIDk6MDYgUE0NCj4gPj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcNCj4gPj4gQ2M6IE1hcmNvIENhdmFsbGluaSA8bS5jYXZhbGxpbmlAa29hbnNvZnR3YXJl
LmNvbT47IE1hcmNvIENhdmFsbGluaQ0KPiA+PiA8a29hbnNvZnR3YXJlQGdtYWlsLmNvbT4NCj4g
Pj4gU3ViamVjdDogW3lvY3RvXSBbbWV0YS1zcGR4c2Nhbm5lcl1bUEFUQ0hdIGZvc3NvbG9neS1y
ZXN0LmJiY2xhc3M6DQo+ID4+IE1vdmVkIGNoZWNrIGlmIHNwZHggYWxyZWFkeSBleGlzdHMgb3V0
IG9mIHRoZSB0YXNrDQo+ID4+DQo+ID4+IEZyb206IE1hcmNvIENhdmFsbGluaSA8bS5jYXZhbGxp
bmlAa29hbnNvZnR3YXJlLmNvbT4NCj4gPj4NCj4gPj4gICBXaXRoIHRoZSBwcmV2aW91cyBjb2Rl
IHdhcyBpbXBvc3NpYmxlIHRvIHJ1biB0aGUgZG9fZ2V0X3JlcG9ydA0KPiA+PiB0YXNrIHdoZW5l
dmVyIGEgY29ycmVzcG9uZGVudCAuc3BkeCBmaWxlIHdhcyBhbHJlYWR5IHByZXNlbnQgIGluDQo+
ID4+IHRtcC9kZXBsb3kvc3BkeC4NCj4gPj4gICBOb3cgdGhlIGNoZWNrIGlmIHNwZHggYWxyZWFk
eSBleGlzdHMgaXMgYXQgYSBoaWdoZXIgbGV2ZWwNCj4gPj4gdGhlcmVmb3JlIGlzIHBvc3NpYmxl
IHRvIHJ1biA6IGJpdGJha2UgLWMgZ2V0X3JlcG9ydA0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5
OiBNYXJjbyBDYXZhbGxpbmkgPGtvYW5zb2Z0d2FyZUBnbWFpbC5jb20+DQo+ID4+IC0tLQ0KPiA+
PiAgIGNsYXNzZXMvZm9zc29sb2d5LXJlc3QuYmJjbGFzcyB8IDE4ICsrKysrKysrKy0tLS0tLS0t
LQ0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
DQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MN
Cj4gPj4gYi9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MgaW5kZXgNCj4gPj4gMzY5NDQ0
MC4uZTU1ZTg1OSAxMDA2NDQNCj4gPj4gLS0tIGEvY2xhc3Nlcy9mb3Nzb2xvZ3ktcmVzdC5iYmNs
YXNzDQo+ID4+ICsrKyBiL2NsYXNzZXMvZm9zc29sb2d5LXJlc3QuYmJjbGFzcw0KPiA+PiBAQCAt
ODQsNiArODQsMTUgQEAgcHl0aG9uICgpIHsNCj4gPj4gICAgICAgICAgIGNyZWF0ZV9tYW5pZmVz
dChpbmZvLHNzdGF0ZWZpbGUpDQo+ID4+ICAgICAgICAgICByZXR1cm4NCj4gPj4NCj4gPj4gKyAg
ICAjIGlmIHNwZHggYWxyZWFkeSBleGlzdHMNCj4gPj4gKyAgICBpZiBvcy5wYXRoLmV4aXN0cyhp
bmZvWydvdXRmaWxlJ10pOg0KPiA+PiArICAgICAgICBiYi5ub3RlKGluZm9bJ3BuJ10gKyAic3Bk
eCBmaWxlIGhhcyBiZWVuIGV4aXN0LCBkbyBub3RoaW5nIikNCj4gPj4gKyAgICAgICAgcmV0dXJu
DQo+ID4+ICsgICAgaWYgb3MucGF0aC5leGlzdHMoIHNzdGF0ZWZpbGUgKToNCj4gPj4gKyAgICAg
ICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMgYmVlbiBleGlzdCwgZG8gbm90
aGluZyIpDQo+ID4+ICsgICAgICAgIGNyZWF0ZV9tYW5pZmVzdChpbmZvLHNzdGF0ZWZpbGUpDQo+
ID4+ICsgICAgICAgIHJldHVybg0KPiA+PiArDQo+ID4+ICAgICAgIGQuYXBwZW5kVmFyRmxhZygn
ZG9fc3BkeCcsICdkZXBlbmRzJywgJyAlczpkb19nZXRfcmVwb3J0JyAlIHBuKQ0KPiA+PiAgICAg
ICBiYi5idWlsZC5hZGR0YXNrKCdkb19nZXRfcmVwb3J0JywgJ2RvX2NvbmZpZ3VyZScsICdkb19w
YXRjaCcgLCBkKQ0KPiA+PiAgICAgICBiYi5idWlsZC5hZGR0YXNrKCdkb19zcGR4JywgJ2RvX2Nv
bmZpZ3VyZScsICdkb19nZXRfcmVwb3J0JywgZCkNCj4gPj4gQEANCj4gPj4gLTE1NywxNSArMTY2
LDYgQEAgcHl0aG9uIGRvX2dldF9yZXBvcnQgKCkgew0KPiA+PiAgICAgICBpbmZvWydvdXRmaWxl
J10gPSBvcy5wYXRoLmpvaW4obWFuaWZlc3RfZGlyLCBpbmZvWydwbiddICsgIi0iICsNCj4gPj4g
aW5mb1sncHYnXSArICIuc3BkeCIgKQ0KPiA+PiAgICAgICBzc3RhdGVmaWxlID0gb3MucGF0aC5q
b2luKHNwZHhfb3V0ZGlyLCBpbmZvWydwbiddICsgIi0iICsNCj4gPj4gaW5mb1sncHYnXSArICIu
c3BkeCIgKQ0KPiA+Pg0KPiA+PiAtICAgICMgaWYgc3BkeCBoYXMgYmVlbiBleGlzdA0KPiA+PiAt
ICAgIGlmIG9zLnBhdGguZXhpc3RzKGluZm9bJ291dGZpbGUnXSk6DQo+ID4+IC0gICAgICAgIGJi
Lm5vdGUoaW5mb1sncG4nXSArICJzcGR4IGZpbGUgaGFzIGJlZW4gZXhpc3QsIGRvIG5vdGhpbmci
KQ0KPiA+PiAtICAgICAgICByZXR1cm4NCj4gPj4gLSAgICBpZiBvcy5wYXRoLmV4aXN0cyggc3N0
YXRlZmlsZSApOg0KPiA+PiAtICAgICAgICBiYi5ub3RlKGluZm9bJ3BuJ10gKyAic3BkeCBmaWxl
IGhhcyBiZWVuIGV4aXN0LCBkbyBub3RoaW5nIikNCj4gPj4gLSAgICAgICAgY3JlYXRlX21hbmlm
ZXN0KGluZm8sc3N0YXRlZmlsZSkNCj4gPj4gLSAgICAgICAgcmV0dXJuDQo+ID4+IC0NCj4gPj4g
ICAgICAgc3BkeF9nZXRfc3JjKGQpDQo+ID4+DQo+ID4+ICAgICAgIGJiLm5vdGUoJ1NQRFg6IEFy
Y2hpdmluZyB0aGUgcGF0Y2hlZCBzb3VyY2UuLi4nKQ0KPiA+PiAtLQ0KPiA+PiAyLjE3LjENCj4g
Pg0KDQo=
