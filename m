Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B876510F3DE9
	for <webhook@archiver.kernel.org>; Sat, 28 Mar 2026 15:18:22 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.57])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12638.1774711099031793267
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2026 08:18:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=Q1qyu62L;
 spf=pass (domain: axis.com, ip: 52.101.66.57, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G6c3+qawPw4uS6LEwCDXQ7qAmg8ruOha8xR5sXMs60u6SdTaAdg0JsAD3Z0RGv24kUZ9ZaY6ygj23K/XU1ggp9i8jKzVAZemLl/+heLECal8yCYYL5ULjBJRQUHEoGZTseQ6GJzf1gx7ULpGtI0zkV8q4jE74TNwE3tocZmZE5r1QefZlblvpd+YK4MQjUvbD5xwc4jaRt/R/BM7T6ieJAWmUkqAUUjD0owTCCDRJrcewqodcRN3Xxcnv3fUaRT3GqwFLJoXP031HYq6Nu2W0o2k2yb3GwTOFNUNqM44MrLPAJPgsSKASwNPTMYAasCqs5avxjisZBbaRoNUBw2gpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55W8hat3felCkif2mz0lIpSSj+J2uzAKpNAQOqWvJeo=;
 b=HyN/A2/8Z0R2qvqllp/bk6S9hcPItImM8/3zkbDoDOcvdjb+vode8U2tEi2iZOHTjArsEsInVjJj4297oxmDYGnpgNtTYYN0xZC7AjStuY64t3nN56MmmeFqWt531vpnvdPtXTbbctW62c3PHzjaawWoqqRP3OPYk6QR7V7dN9Gq72JMK99vT3NjwlK5YTLCFvrFR0qsLX4riaSssHSNYgHMBoxES7YAuG2GZdwSYie8GzIZGYub1vqV7jkTliowYcAwEIW+gXGyMX4RH6d/NAzzaULJp2OAeoWjESUQ3vzJHz0IueJaGlLBWoiVw2sgx5IM6iPCAceTnX5BOCAKFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=55W8hat3felCkif2mz0lIpSSj+J2uzAKpNAQOqWvJeo=;
 b=Q1qyu62LKwLA5jjDXsvu62BQfIRLyeob6Z0CSx5EX/ovpKKMlaptJVOEuqfTZ1LHrau6jlrIkKF6/NopCvZEclJ1v9qSzfenUSI5qj8DITNxaeo/BVkIWYAJBPCk7rH0PHxxfhg/ffHbKWl19sObzhzEPalKjEEKiK5QoVI/JtM=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by PAVPR02MB10011.eurprd02.prod.outlook.com (2603:10a6:102:31e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.24; Sat, 28 Mar
 2026 15:18:14 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::e5b6:b9a8:2a5d:e0cd]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::e5b6:b9a8:2a5d:e0cd%5]) with mapi id 15.20.9745.024; Sat, 28 Mar 2026
 15:18:14 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
CC: "Lee, Chee Yang" <chee.yang.lee@intel.com>
Subject: RE: [Openembedded-architecture] Yocto Project Release Tagging Changes
Thread-Topic: [Openembedded-architecture] Yocto Project Release Tagging
 Changes
Thread-Index: AQHcvjvMDigR2785OUi9zfzbm+CCMbXECrIA
Date: Sat, 28 Mar 2026 15:18:14 +0000
Message-ID: 
 <DB5PR02MB10213399C3597AFB6451DBB21EF54A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: 
 <CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
In-Reply-To: 
 <CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|PAVPR02MB10011:EE_
x-ms-office365-filtering-correlation-id: 1340c1db-4b69-49b3-ae23-08de8cdd3b25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 
 BeqjRO/7mQfe90gWcmCBZxTj8NYt0p/Yu4xm+oD1FxKqJZILYS7sGx9ur1erDYjaJL4PMCIs3VG/ZHofEg2BaFNXoblIkQM8i67ABgxX5bM1SC7w1MfSd6UBdS4nBtiqutXJiODtv1e1bOp9B2xOzd6aY/Ef3z5P0AxbR1DiFGTl4tdZ71QgEwp1hYamE1ZR9yIBx3hBJwqsYyEN9/7Wbv1RBS+SjRzz7YwffZx31nwa3ih6uhL5ZqR9fQ/tzM4nqj1CtMaC7jFkA718/GioLLkboAjDPv/ECQsiq/oN/W+enleaXj0MRf2uef8czB/NmZ4Cw+JpcfD9yPqTvDbALT3E+s/0z7TVwNOE15SWQzIHseLCKpahFVaGyccr0N0Zov7a7GmDow8b3hYFiLpEcXNpE6otmpr6TlMYjQ5hxASb0NDuGXyLzYqrEMf0UrDnMB9QzpdzK/9MBfxR3f3u9ICzyWmR5Uznue4/heidpO8XnXFkfoupNI84n4rSoUHXGYvyiGz8aOJ6L8qaDBlMX2xiT7b8zNOEeeZhVNTUmpd/MxrQo6w4dsc1rV+0UyuaVIQLDPMcKgSrmZRG4Uf1g6FlpvZYTB2SXyjYcuVa9Y3SqxdCaIgtd0D4y0Bw0FbQ8FePWe+XV7lbmFWoBdO8Jprx/YMvlBTCeJZBP2uxsOCYCuqmMG4dW8RD64XakrkcP1HVA9eh65F+Y7R79GURyTud3u7dn5II++tgCMjPcswmDnMa98X29MkNX9dPuIz8BTA2/VQ8se432DA+QOjur0I+lHpmyLbPhnfKhxLQKTw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aHowZzJyWnpzb1Z6TUcrSU5HMjR4K2ZTUDZvaWRnMGxHQ0JxYkdWUzhQeVpx?=
 =?utf-8?B?NjJpdzV1SEZYcldLdWw2cXpFTTdxa0hoR2krdHgrNDBmVmxoWmRycXZkRGly?=
 =?utf-8?B?aDJmdGUwdHpicC84RDBvV1ZsWW92UEFXM0dJcTRaeDZZc2x3dFNmL3N2Smt2?=
 =?utf-8?B?VjAzc2t1azY4VzZRVHFqc0NEUTRrMnRtMGF3R28yOWlYZ3VnaU1ERW02Z1RP?=
 =?utf-8?B?Rm5ibHZicVRpdFowZmFhQlVkSnloc0FKMlNPYkYzdWZZSGpoeGh3OWQxeldp?=
 =?utf-8?B?VHVURnpRVnZ3TXd3T2N4VkNPSXpIMktYNkZzb0pTbjg5WE44SVMxcGdEL2Qv?=
 =?utf-8?B?ZUpNOFZmbHdjS3JoTFUwWW8ySFp4ODRRVXh5Y3BHU0J0T1c2Nm91amhqWEc4?=
 =?utf-8?B?TTcwbFU5alAvdEphZ0lOdjlKRm1EN1VSaDRTekY2dzFlaUR3b3kyaEp0djAw?=
 =?utf-8?B?a2RpNjBsbndJMmRseG9ZZjh4dG9ZSjQ0enduZHVsWTBYbWc1U2FRSUpScVNp?=
 =?utf-8?B?TVRwMW1kR0tSUld4K2MwS05seTIrNCtNRVMrSU11UkNoTjRLSDJKZGJpUDVl?=
 =?utf-8?B?Z1NoMHp0SFFDc3g2Nyt6eHVrVTZwRGtudFI4RnBYbWNxUzAySDJiOXE3SnFm?=
 =?utf-8?B?UzBOakRwMVBiWEdiZFhnNHZMWkM5alVkNGR4eVVQcXE3R0Ewcm54Q3hnQ3p6?=
 =?utf-8?B?MmRJcWRudVJ0OUlvU2YvYzNFWEtxd2tqMG9EbFc1VmxKTzBwN2pBUytNTzEz?=
 =?utf-8?B?SEVhck9SWWJUQ1NGM2xrbGNKdWwrTHdreUI3eUEwT2tCSlJuS1F2dG5CbHVI?=
 =?utf-8?B?bDVBRlBIRjM4OGtaVXppZmpFMmg0alFqK0U2STVXTjlDeVFtOE03T2xrOGp1?=
 =?utf-8?B?VTNvbUprZ0FiOVJMU2RRTk1VekZkNFFhbDAxbHhKcE1tUGlUcUFyYUVvTWVH?=
 =?utf-8?B?ZmxGTEtJem50Q3RYRnBKQmY4REFLSk9RNmhEVytTWktObnZWdlRCOGR3U01I?=
 =?utf-8?B?RjNhaTgxTWsvemUvQzdUMXRydmZPYXRtOS95MjZvSWxtNWNyUDNBaEh4Umo3?=
 =?utf-8?B?blI0U3RWRXRON0c4WUNMblhPV0NCSzl0T0RDM3JYM0hKZEp1SW9VUU9EVHhN?=
 =?utf-8?B?ZmtVSEhqeS9iZVFPczdGS01kUnhNVnRmaXpFTlhTUkZvdFNQV1VHNnpoMEFR?=
 =?utf-8?B?b3RxSVRXd09YN01vbzNIbG13TXlvTTQvc05HeDNVQjJ4dkNtQ1pCWURBZG9r?=
 =?utf-8?B?cEtJT01HekVYQWFIVzhLRkp0NFl3MjFZMHdHNVA4MWVSUldHRmpEZHk5NWFi?=
 =?utf-8?B?WWdUa1MxTVFNZEJ5MHl2U29JUnpuSWZKdFFqWm9BU29YN2lvWmhqME1sQ2tL?=
 =?utf-8?B?S2VMekNjZXk0UHd4TEluakZ3akNsR21YSE15dkNwaG1JaENBcXdjOUQ0WWJO?=
 =?utf-8?B?VmJkYmVxNm5jSEFaSUtWUGdUbjJUbit6V2FLbnl3SEtwVmdpbEU1MVlEZ0FH?=
 =?utf-8?B?SmJyZDQ3WXFvS3NYTHM4QndyYk1raDRJR2k5Y2UybENpVzRtc0NRVENBMlBn?=
 =?utf-8?B?QnBySkRFMUx2ajNLRmZrcFdQbnNLeEZtM2FOZyt5MzlSUFArNXFjeXVwY0lw?=
 =?utf-8?B?T2w3TG9XR1Y1cWtpVnVWUTVxcVU2SHVJM0tYWkRWRm1HNzRRRUxtZVdsV1hU?=
 =?utf-8?B?MWhtYmJSdUw0N1JRSGo0K3h5dWpBWUJKS3o4MTlyZGZWMmZrWnF0akpoSzR2?=
 =?utf-8?B?eERGSzJkS2JieXNNSFdXYlBmNXlJT29HUW1kUWJ6Y2FzcUhUYi94WDJQSHBJ?=
 =?utf-8?B?ZXQwVDEwQkJaU2JTaVBjamIvRVgycnhHRkN3MkZyQWtHdzl3c0R4TkZ1ZXBM?=
 =?utf-8?B?WUd0MXpBSjF6dTNveGdqN2VVNVlEaWlDWnBaMkg0QmtaWG1veDBnQllNUldC?=
 =?utf-8?B?U05CSUE3eFNhVzNDT09DanEvNHdZd29Oc3poUTVVTmFRc3VzUmtrSWxuM2FY?=
 =?utf-8?B?QVI2YlBmNFVHODJSMk5sRFRnb08xcExRNjdzdzhTQ2laMW5qck1RaEVhQ1ZH?=
 =?utf-8?B?U3JEc3B2RFQzeGxzdHUrRGNUR0ZrdmsvcXVaNm1jUlAyQ0RkWnBlUmlWeExK?=
 =?utf-8?B?aWNkdTJqYXQzb20yaE83dkdLdFVuUXFZbnc3K1dEWXlZdFd4TVFGK0tGWHpT?=
 =?utf-8?B?cEZFcWVsdjAza1RyNXRMM2xTWnpZNzlFSGtpdVRhQlkvYUJkdExEUGIwcnhR?=
 =?utf-8?Q?UUWLUsp0WhPUJZHWgjV0H9iovatxtglRutT3IPBmqY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1340c1db-4b69-49b3-ae23-08de8cdd3b25
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2026 15:18:14.0537
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OfKz/9FhGxTpYeM59LcmD9F859w8eS4mlwVYUFzS1FvVRStCEyoQdPyaV8tLx/ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR02MB10011
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Mar 2026 15:18:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66361

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogb3BlbmVtYmVkZGVkLWFy
Y2hpdGVjdHVyZUBsaXN0cy5vcGVuZW1iZWRkZWQub3JnIDxvcGVuZW1iZWRkZWQtDQo+IGFyY2hp
dGVjdHVyZUBsaXN0cy5vcGVuZW1iZWRkZWQub3JnPiBPbiBCZWhhbGYgT2YgTWljaGFlbCBIYWxz
dGVhZCB2aWENCj4gbGlzdHMub3BlbmVtYmVkZGVkLm9yZw0KPiBTZW50OiBkZW4gMjcgbWFycyAy
MDI2IDIzOjQ4DQo+IFRvOiBvcGVuZW1iZWRkZWQtYXJjaGl0ZWN0dXJlIDxvcGVuZW1iZWRkZWQt
DQo+IGFyY2hpdGVjdHVyZUBsaXN0cy5vcGVuZW1iZWRkZWQub3JnPjsgWW9jdG8tbWFpbGluZy1s
aXN0DQo+IDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KPiBDYzogTGVlLCBDaGVlIFlh
bmcgPGNoZWUueWFuZy5sZWVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbT3BlbmVtYmVkZGVkLWFy
Y2hpdGVjdHVyZV0gWW9jdG8gUHJvamVjdCBSZWxlYXNlIFRhZ2dpbmcgQ2hhbmdlcw0KPiANCj4g
Rm9sbG93aW5nIGRpc2N1c3Npb25zIGluIHRoZSBZb2N0byBQcm9qZWN0IGFuZCBPcGVuRW1iZWRk
ZWQgVFNDcyB3ZQ0KPiBoYXZlIGJlZ3VuIHN0YW5kYXJkaXppbmcgZ2l0IHJlcG9zaXRvcnkgdGFn
cyBhY3Jvc3MgdGhlIFlvY3RvIFByb2plY3QuDQo+IFRoaXMgaXMgYmVpbmcgaW1wbGVtZW50ZWQg
dG8gZW5zdXJlIGNvbnNpc3RlbmN5IGFuZCBzaW1wbGlmeSBvdXINCj4gYXV0b21hdGlvbiBhcm91
bmQgcmVsZWFzZXMuDQo+IA0KPiBHb2luZyBmb3J3YXJkLCB0aGUgZm9sbG93aW5nIHRhZ2dpbmcg
c3RhbmRhcmRzIHdpbGwgYmUgZW5mb3JjZWQ6DQo+IA0KPiBZb2N0byBQcm9qZWN0IFJlbGVhc2Ug
VGFnczogQWxsIG9mZmljaWFsIFlvY3RvIFByb2plY3QgcmVsZWFzZSB0YWdzDQo+IHdpbGwgY29u
c2lzdGVudGx5IG1hdGNoIHRoZSB5b2N0by12LnYudiBmb3JtYXQuDQoNCkRvZXMgdGhhdCBtZWFu
IHRoZSBuZXh0IHJlbGVhc2Ugd2lsbCBiZSB5b2N0by02LjAuMCwgcmF0aGVyIHRoYW4gdGhlIA0K
ZXhwZWN0ZWQgeW9jdG8tNi4wIChhcyBwcmV2aW91cyBtYWpvciByZWxlYXNlcyBoYXZlIGJlZW4g
bmFtZWQpPw0KSWYgc28sIEknbSBhbGwgZm9yIGl0Lg0KDQo+IEJyYW5jaC1TcGVjaWZpYyBUYWdz
OiBUYWdzIHRoYXQgaW5jbHVkZSB0aGUgYnJhbmNoIG5hbWUgKGUuZy4sDQo+IGtpcmtzdG9uZS00
LjAuMzQpIHRoYXQgZHVwbGljYXRlIHRoZSBvZmZpY2lhbCB5b2N0by0qIHRhZ3Mgd2lsbCBiZQ0K
PiByZW1vdmVkIGZyb20gYWxsIHJlcG9zaXRvcmllcy4NCg0KTk8hIEFCU09MVVRFTFkgTk9UISBS
ZW1vdmluZyBvZmZpY2lhbCByZWxlYXNlIHRhZ3MgaXMgYSB3YXksIHdheSB3b3JzZSANCmlkZWEg
dGhhbiwgZS5nLiwgcmVtb3ZpbmcgdGhlIG1hc3RlciBicmFuY2ggd2hlbiBzdGFydGluZyB0byB1
c2UgbWFpbi4NCg0KQWxsIG91ciBtYW5pZmVzdHMgZm9yIHJlbGVhc2VzIHVzaW5nIHRoZSBwb2t5
IHJlcG9zaXRvcnkgdXNlIHRoZXNlIHRhZ3MgDQp0byBmZXRjaCBhbmQgdGhlbiB1c2UgdGhlIFNI
QS0xIHRvIHZlcmlmeSBjb25zaXN0ZW5jeSwgbXVjaCBsaWtlIGhvdyANCmJpdGJha2UgcmVjaXBl
cyBkbyBub3dhZGF5cy4gUmVtb3ZpbmcgdGhlc2UgdGFncyB3aWxsIGJyZWFrIHRob3NlIA0KbWFu
aWZlc3RzLCBtYWtpbmcgaXQgYSBsb3QgbW9yZSBjdW1iZXJzb21lIHdoZW4gb25lIGhhcyB0byBn
byBiYWNrIGFuZCANCmJ1aWxkIGFuIG9sZCByZWxlYXNlLg0KDQo+IE1pbGVzdG9uZSBUYWdzOiBF
eGlzdGluZyBtaWxlc3RvbmUgdGFncyB3aWxsIGJlIHJlcGxhY2VkIG9yIGNvbnZlcnRlZA0KPiB0
byBhbGlnbiB3aXRoIHRoZSBuZXcgc3RhbmRhcmQgZm9ybWF0LCBlbnN1cmluZyBjb25zaXN0ZW5j
eSB3aXRoIG91cg0KPiB2ZXJzaW9uaW5nIHNjaGVtZS4gRm9yIGV4YW1wbGUsIDYuMF9NMiB3aWxs
IGJlIHJlcGxhY2VkIHdpdGgNCj4geW9jdG8tNi4wX00yLg0KPiANCj4gUGxlYXNlIGFkanVzdCBh
bnkgbG9jYWwgc2NyaXB0cyBvciB3b3JrZmxvd3MgdGhhdCByZWx5IG9uIHRoZSBvbGRlcg0KPiB0
YWcgZm9ybWF0cy4gTGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IHF1ZXN0aW9ucyBvciBjb25j
ZXJucw0KPiByZWdhcmRpbmcgdGhpcyBjaGFuZ2UuDQo+IA0KPiBUaGFuayB5b3UsDQo+IA0KPiAt
LQ0KPiBNaWNoYWVsIEhhbHN0ZWFkDQo+IExpbnV4IEZvdW5kYXRpb24gLyBZb2N0byBQcm9qZWN0
DQo+IFN0YWZmIElUIEVuZ2luZWVyDQoNCkl0IGlzIGZpbmUgdG8gdXNlIHRoZSBuZXcgc2NoZW1l
cyBmb3IgbmV3IHRhZ3MgZ29pbmcgZm9yd2FyZCwgYnV0IHlvdSANCnJlYWxseSBzaG91bGQgbm90
IGNvbnNpZGVyIHJlbW92aW5nIGV4aXN0aW5nIG9mZmljaWFsIHJlbGVhc2UgdGFncy4NClllcywg
aXQgbWVhbnMgdGhlcmUgd2lsbCBiZSBhbiBpbmNvbnNpc3RlbmN5IHdpdGggdGhlIHBhc3QgaGlz
dG9yeSwgDQpidXQgdGhhdCBpcyB0aGUgd2F5IHRoaW5ncyB3ZXJlIHRoZW4uIERvIG5vdCB0cnkg
dG8gcmV0cm9maXQgaXQuDQoNCi8vUGV0ZXINCg0K

