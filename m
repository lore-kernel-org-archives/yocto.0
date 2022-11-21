Return-Path: <johann.obermayr@sigmatek.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A341AC433FE
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 22:32:35 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.130])
 by mx.groups.io with SMTP id smtpd.web11.4479.1669069948326606757
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 14:32:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sigmatek.at header.s=selector2 header.b=Fkytcjle;
 spf=pass (domain: sigmatek.at, ip: 40.107.21.130, mailfrom: johann.obermayr@sigmatek.at)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fAGhQ3PnQ9Aga6YHlIy0UULwUkLmnQZjWQaO8+acJMgKljHgPh+8Oce7n+wgw+zQs5+OFnj33sW+wtRlQAvu9w6XnoeNH9/gEmXbYwaW757La0mtckre2dQNRnACFK1CHyxmBnY4HlxSTURRtBIIXBkZCoqI5Qh3v8cgZk7DJ2x5MWx6ET1vRqTgW7JF/ljNrLsLct8HIbXDPKGLt7XeuBpmUupA2m4YC5sRwUd7D7wxfVKN80nCJ6+uDbrg1BQ2S4pruxlTPH7Ra1MERRoaMXD671rBj+RWJuxsdRZZmJacm3exb3u7oLRSqxRoU80qurtgHGnfCPQNIoQVQuO1QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d2j8L1JTi9jtXclFZ5/EDLtXgjDF12x24fISowLjC8U=;
 b=mUfdKfltLLTmg5y95CPaqYuOWIhAMSZ7ij11Fh1ht1I1+CBjv57SotT4Sb8wPFOJwVc/s9kbAukAvG+RB7m8KPCVtaNplbRhDgGpjM8HQnz0OP6gD5TvJJYLCKzophh08pkLqJsnpLxHjTqRJiho069vozDIFrZrGcyGR0dd5VA/7aJq2oXqjGGUwHWHETn+N5Inas5Tc+pCViG8S7ttbJYxW7kFZ/8atdGRXJiVTsc13kKTU8ukHv8IByVDhsq7kPpiIzZYOdtpt0e55dlqRdQhMZOXiz/YHSX2NlgQMlkKRT9n8OH96tYoq9kmrCpzovWPH/3mPzLMkGhW0q6X3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sigmatek.at; dmarc=pass action=none header.from=sigmatek.at;
 dkim=pass header.d=sigmatek.at; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d2j8L1JTi9jtXclFZ5/EDLtXgjDF12x24fISowLjC8U=;
 b=Fkytcjlejwg7gG4ApZxsCsbwWwTPYHKTrL05Ohei2sOtt9QvlUtQmm+YKaee68RmUpUhUhr5bN0aruqb95Uwv+fQUg9Ncn+5agam+NmMSdIz2liH/MahuDDsGes2FeyzRxRK0X93IWHLJ8Dv7gNbK/OQ4rVXUgDwCRSXrebjRcQ=
Received: from DU2PR08MB7358.eurprd08.prod.outlook.com (2603:10a6:10:2f1::14)
 by DBBPR08MB6251.eurprd08.prod.outlook.com (2603:10a6:10:208::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.17; Mon, 21 Nov
 2022 22:32:23 +0000
Received: from DU2PR08MB7358.eurprd08.prod.outlook.com
 ([fe80::5bcc:73c1:669c:9578]) by DU2PR08MB7358.eurprd08.prod.outlook.com
 ([fe80::5bcc:73c1:669c:9578%3]) with mapi id 15.20.5857.008; Mon, 21 Nov 2022
 22:32:22 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] build 2 sdk toolchain
Thread-Topic: [yocto] build 2 sdk toolchain
Thread-Index: Adj46YHaq9Ft/rN5SPyh/TyHVKLingAASv+AAUOKLSA=
Date: Mon, 21 Nov 2022 22:32:22 +0000
Message-ID: 
 <DU2PR08MB7358824A6A70CD2CD1FC1D4DF50A9@DU2PR08MB7358.eurprd08.prod.outlook.com>
References: 
 <DU2PR08MB73581AF8D4EAE35ED17F2B03F5049@DU2PR08MB7358.eurprd08.prod.outlook.com>
 <CANNYZj_Q1oLun2hM6BnFN2L1QVHewzD-4627vARSOJU0V5U=vQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_Q1oLun2hM6BnFN2L1QVHewzD-4627vARSOJU0V5U=vQ@mail.gmail.com>
Accept-Language: de-AT, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sigmatek.at;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR08MB7358:EE_|DBBPR08MB6251:EE_
x-ms-office365-filtering-correlation-id: 6c1e3527-02b1-4be8-ca11-08dacc104237
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oinlQolgcwKCztnRrjlkca9fXVUi80peh3/yFfIWURafrOJjDkK+zRQjchZHfAgDJ1LSSIV5NUGGRJwjQtubsIMeP87ovSDQ7Fx9vwYq5Lc65azt9MwJrQdFGqZw0TtTvBqcud9fp0Ibz4Yj4SmeSz9TmsBa6A+tSTviSqbLcTx5ltYp4wqQpmQxshxCGoiwPUMKBjyEZYAvv0yB47PlKNqBE+b1JsuO1TTdnxZa4Bn+uGi4CAZT1tDcjelU+PnvI1ohh8IsQm9osk5XpULSemhlj/HQSPOMdDWKdvTvU918aNUcGQkXMcv6BmM+6zJB7r4HQeXky+MUoKBeVUFYqFhKZv+a9s/JdIEaM/pDmqTzV2RHDCWbJuIKPy5pXsGfmDXddbaQYbPPHK8Aioym08x3W2qVeNyrwDFCuHkj+NY8xMacqGiWQdmRHcAZGTyOjb3oDzTDkMrdqTCJTdcKjJV2txNnTu+IdUgzTtpqqZB94AWlS/0legorj9EKISxiQEFpVk42GefOtCXrPSHr4axiZ0NZWjUQDsxGjoU8aJPXVYP3Cxae2xqaoczomUHfaE74d/PhhkW/dCleRpOdjnnx4HpAW8E+dcEJT7fzS8OJpED5R9wtF3mCSWEsf9aqZf1ZMomoXoqmSysYk1/9rUgPaEY6agBMitNyRE6FSytsW4f1pBL4WLLq7+0KxEvZT0bTca3jivyfVl6hkVrMUaGs4JGqodPDOmrEfEMYGNi/W2ov2FrNgsxeN3/ksqkR
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB7358.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(346002)(366004)(376002)(136003)(396003)(451199015)(38100700002)(966005)(38070700005)(86362001)(122000001)(83380400001)(8936002)(2906002)(5660300002)(66556008)(66946007)(64756008)(44832011)(41300700001)(52536014)(66446008)(26005)(7696005)(55016003)(71200400001)(6506007)(9686003)(186003)(316002)(8676002)(6916009)(66476007)(66574015)(478600001)(76116006)(33656002)(66899015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TE03U0dHd0Y4cDBLekwyK2Vmb1IxY1Y1ZGlDa25oK1pPS1VoUjZHL2cwZHR6?=
 =?utf-8?B?ZWF5WmlIVm9wZ3gwL3JvdmMrUjJZSXpwa09rZnNMUXFoZFJWbGxpd2locTRX?=
 =?utf-8?B?TWxQcTRHRTdDZ1BhSURIOW0rRTd2Wm5idlBhWEZLRHdTYU5JYjVYNFpIbDkr?=
 =?utf-8?B?dUVBb1NLa3hnME5tcFVibjZUVVB0S2czT0grdHNTQVFCckJSVmdhVVh0QTRI?=
 =?utf-8?B?SzdwQVBCK2t6NXJmNVlvRlVabyt5Tk5HaWgwT043WWhPc2I1TDVGR29pa0JH?=
 =?utf-8?B?dHJnSGUxV1pPdU9FbStzL1JVSm1kSWZsbTJCdG51MXAwS1QyVDJOSGgwcWhw?=
 =?utf-8?B?N2NkdFV6VU1QaXRtejVwUFFOY1BBcHJXM1lhdVZITmI5Zi91TTByb2Jqd2U5?=
 =?utf-8?B?ZmJUSHJCdVpNUjhyM05odE1oYndCai82QWxURnJ2dWlSNWhabm9zN1JhbFdT?=
 =?utf-8?B?eVhVWEJWQjZIU1QwWUdtKzNhMytrME96YlJnNFpLMnJMYXhMRDl2VlZPZWwx?=
 =?utf-8?B?d2RpTko2cFFkbzh2cEZsMTB0YUR2T3luM1BSV2QvQ01YQWxMS29FemVzUmVT?=
 =?utf-8?B?eEliZ0dHaVJSenRKSXAzVExVM3Z5TUs2VHFRbzV2bGVXYklxbElmR3JpakVB?=
 =?utf-8?B?VXpaNnZmWjI0UllVZmg3RW1LZGJ1bWoyMFFpWWY5TkNHV2dpRjF2ZHZsQ2VL?=
 =?utf-8?B?cEMwdTZ4MHBYRE9haDIzQnNPMjk1SzV0MUp2MGdnbU15SU04N2VtYXlZV2JK?=
 =?utf-8?B?elp2SVhuUGRndDZtSXI1eERJSTBsdC92YndsVUxoc1ZsT1Z1MDRhaFQ0VE5R?=
 =?utf-8?B?eDhwOXNhOFVuWHAyNml4SURIcGVLcDhnNndYTktkWWJDMVd0ak5PMFYzY090?=
 =?utf-8?B?KytjN2VMRUI0ZlMzN3FOaE1PUUpGNmdMWGFGTTg0M25naUN3SmlpamFTVC9S?=
 =?utf-8?B?UkdoRFdVTFpmZW5LeDBnYmFrSllvU054ek1sTUVMUGJiR3dXZWF3VDIrMFh6?=
 =?utf-8?B?TnE4MUFFMDZaTVlxMUxoWGcvYVg3WTNCV091dlA4aGdvMmkxK0NpYkF0anhW?=
 =?utf-8?B?Nk96dWpzS0pFa2RFNGREOFRGcVZnWU5zRDZEOHVNVVZ4Znl4Rk1jbjBxajd2?=
 =?utf-8?B?Q2pyRUIxLzUwTXBUTnZwdGRNTHpQTUs3TkhHL01Tc2ZvRGdZVzVHbCtFYWpY?=
 =?utf-8?B?RjM1YU1LZGpDOU91eGt6eWNNZG1EMHduRGlXZ2NBdE42clNQbE5adElNUHpY?=
 =?utf-8?B?eVdjWEgvdUV4UHJ2TnI4N0JTTWppMVdDQW93SENWeTZxQlhoZWNVdHZUL1N6?=
 =?utf-8?B?dEtSZ29yUzBmakx5M2Mxc09mVko1RnUrL0FwbUc0SGlDVmIyVlBDWHdLbFhr?=
 =?utf-8?B?NmIzc053VGFNU1RSVllzRXhvbXNiTWs4R0tnOFV4ekhtR3RLSThvSlY5YjFH?=
 =?utf-8?B?cE50YW0yQ2llRjA2K2pyRWVYZG5pZ3hES1VQYW5kdkdvZU1JazFQdnFsYS9H?=
 =?utf-8?B?Slk2VWh6VDlMdWloTFFza0MyMTlOT1U1aTlTUTdLTXdxTEo2Zm9MajRWbG9o?=
 =?utf-8?B?UFBsM0NsU2NOeFFWOW1VZEFuc2djT2tFQzN1cVJtMkZHOGpWNE9JeTc0ZHg2?=
 =?utf-8?B?Vnk3S0g2bmxNckFxVlNsS0ROQjFmMExwdGYwSmNROUl1YWcvcjRQeUlyTFNR?=
 =?utf-8?B?bnp5MXZCb1h5eGNoQzJNdlNNZWtQelM4Sjh3RkRiV2RLTUVoUDBCc3FQWjE3?=
 =?utf-8?B?ZGJqcFBrVVZKeThsWFdWQ012MGdXQmpPbklReUd0Ym9wWXBsSS9JRXoxb1dN?=
 =?utf-8?B?QUVjY2o5YTdGTmtGRzdOZ1JLNUNob3lYenR0OEJPN3pTTnhPZ2dSVW5aYW5q?=
 =?utf-8?B?VUdxRlVOVGxNK3VzUGJyWTRnc2tyYmRjdHZvRzFITUkyZms5NFF6Y001dzJM?=
 =?utf-8?B?bHNUbnFjUnhPblFCTlhlOXRMdUEyY1YvZFRVMk52UjlWeGdMcWZET21uL3Zw?=
 =?utf-8?B?MzI3Y3VUUXJHRHRHRTFaUXpNSGtBNkkxUllwczhxRUhPYUo4ZjloazF0QmU2?=
 =?utf-8?B?V0hjbXN6TlZZSHAzWmhmSnprYWRSeU1QQXE3VzFmUEp5bVhyNE0wam9ZY0J3?=
 =?utf-8?B?bTJxelM4OHpxZDh6MEZPVGtwVVBYUTVLSGdncXRKRWlIVU1LVTNCK1hmQzRS?=
 =?utf-8?B?Nnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB7358.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c1e3527-02b1-4be8-ca11-08dacc104237
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 22:32:22.8217
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UiXeAQqZL49ONT9YY62ki4cUBj2Gp+Jim57qG/tPvdjuIzUVk9nOuBEXlVyS+nWYhJQ0oUTSTZqP5b8mfj+9OfEKLm6OVh1UYfJSXmnsPk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6251
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 22:32:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58610

SGVsbG8sDQoNCmJ1aWxkIG1pbmd3IHNkayBnZXQgZm9sbG93IGVycm9yOg0KDQpjb25maWd1cmU6
IGVycm9yOiBsaW51eC9jYXBhYmlsaXR5LmggaXMgcmVxdWlyZWQgaW4gb3JkZXIgdG8gYnVpbGQg
bGliY2FwLW5nDQoNCiQgU0RLTUFDSElORT14ODZfNjQtbWluZ3figJ0gYml0YmFrZSBteS1pbWFn
ZSAtYyBwb3B1bGF0ZV9zZGsNCg0KV2UgdXNlIGtlcm5lbCA1LjE1DQpBbnkgaWRlYSA/DQoNCkJl
c3QgcmVnYXJkcw0KICBKb2hhbm4NCg0KPiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0t
LS0tDQo+IFZvbjogQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2FuYXZpbkBnbWFpbC5jb20+DQo+
IEdlc2VuZGV0OiBEaWVuc3RhZywgMTUuIE5vdmVtYmVyIDIwMjIgMTM6MDYNCj4gQW46IEpvaGFu
biBPYmVybWF5ciA8am9oYW5uLm9iZXJtYXlyQHNpZ21hdGVrLmF0Pg0KPiBDYzogeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBCZXRyZWZmOiBSZTogW3lvY3RvXSBidWlsZCAyIHNkayB0
b29sY2hhaW4NCj4gDQo+IENBVVRJT046IEV4dGVybmFsIEUtTWFpbCAhDQo+IA0KPiBUaGlzIGlz
IHRoZSBjb3JyZWN0IHdheSwgeWVzLiBZb3UgY2FuIHB1dCBTREtNQUNISU5FIGludG8gbG9jYWwu
Y29uZiAoZGVmYXVsdA0KPiBpcyAnbGludXggc2RrJyksIG9yIHlvdSBjYW4gc3BlY2lmeSBpdCBv
biBjb21tYW5kIGxpbmUgKGluIHdoaWNoIGNhc2UgaXQgd2lsbA0KPiBvdmVycmlkZSB0aGUgbG9j
YWwuY29uZiBzZXR0aW5nKS4NCj4gDQo+IEFsZXgNCj4gDQo+IE9uIFR1ZSwgMTUgTm92IDIwMjIg
YXQgMTM6MDIsIEpvaGFubiBPYmVybWF5ciB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA8
am9oYW5uLm9iZXJtYXlyPXNpZ21hdGVrLmF0QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiA+DQo+ID4gSGVsbG8sDQo+ID4NCj4gPg0KPiA+DQo+ID4gd2UgdXNlIGtpcmtzdG9uZS4N
Cj4gPg0KPiA+IFdlIHdpbGwgYnVpbGQNCj4gPg0KPiA+IEltYWdlDQo+ID4gVG9vbGNoYWluIGZv
ciBsaW51eA0KPiA+IFRvb2xjaGFpbiBmb3Igd2luZG93cw0KPiA+DQo+ID4NCj4gPg0KPiA+IE5v
dyB3ZSBjYW4gYnVpbGQgYSBpbWFnZSArIGxpbnV4IHNkayB0b29sY2hhaW4uDQo+ID4NCj4gPiBU
aGF0IHdvcmsgY29ycmVjdC4NCj4gPg0KPiA+DQo+ID4NCj4gPiAkIGJpdGJha2UgbXktaW1hZ2UN
Cj4gPg0KPiA+ICQgYml0YmFrZSBteS1pbWFnZSAtYyBwb3B1bGF0ZV9zZGsNCj4gPg0KPiA+DQo+
ID4NCj4gPiBOb3cgd2Ugd2lsbCBidWlsZCBhIFRvb2xjaGFpbiBmb3Igd2luZG93cw0KPiA+DQo+
ID4gV2UgaGF2ZSBhZGQgbWV0YS1taW5ndw0KPiA+DQo+ID4NCj4gPg0KPiA+ICQgU0RLTUFDSElO
RT14ODZfNjQtbWluZ3figJ0gYml0YmFrZSBteS1pbWFnZSAtYyBwb3B1bGF0ZV9zZGsNCj4gPg0K
PiA+DQo+ID4NCj4gPiBJcyB0aGlzIHRoZSBjb3JyZWN0IHdheSA/DQo+ID4NCj4gPiBPciB3aGF0
IGlzIGEgYmV0dGVyIHNvbHV0aW9uIGZvciB0aGlzLg0KPiA+DQo+ID4NCj4gPg0KPiA+IEJlc3Qg
cmVnYXJkcw0KPiA+DQo+ID4gICBKb2hhbm4NCj4gPg0KPiA+DQo+ID4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4gPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhp
cyBncm91cC4NCj4gPiBWaWV3L1JlcGx5IE9ubGluZSAoIzU4NTY2KToNCj4gPiBodHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzU4NTY2DQo+ID4gTXV0ZSBUaGlz
IFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvOTUwNDA5MTEvMTY4NjQ4
OQ0KPiA+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+
ID4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vu
c3ViDQo+ID4gW2FsZXgua2FuYXZpbkBnbWFpbC5jb21dDQo+ID4gLT0tPS09LT0tPS09LT0tPS09
LT0tPS0NCj4gPg0K

