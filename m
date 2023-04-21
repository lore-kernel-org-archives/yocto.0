Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF555C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 18:18:13 +0000 (UTC)
Received: from APC01-SG2-obe.outbound.protection.outlook.com (APC01-SG2-obe.outbound.protection.outlook.com [40.107.215.50])
 by mx.groups.io with SMTP id smtpd.web10.20124.1682101085183061004
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 11:18:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=BmFlQBY9;
 spf=pass (domain: advantech.cz, ip: 40.107.215.50, mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vx6hKy9VdeyHztfIjNwCfEDY/5Yvsf8+yKoff2bazpQzskv/uZNuY9eCBeHEuOLeWM4xCiGVIXTV7MAJPMq7SMFbfs8WIHxpgk7HVI5hbrFgAXnnNardE2mdSX6OoceVqaIORPmqguIrGmvi2Pcst/+eqhB/80HVVoIPbbjLyNxuAiAXxSBN0L30uwAVoPsXWZBVDFe+ZRcokRFBpEpeOSmw2KVBNVF4XGOPnBoO5eZ1in047k3+HEpZmlHfEpLdSNiEMSm5CzixyNnqQAL+oOBMLVDWduxliHQRd0G5C22nztvNcptOFf2UFa2u1LvVBe+Mgih0V9ptM6JeX7yZ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8BUEwlCp3rP9MNPgIHYlsEg3zlyrLbge8pl581MJlA=;
 b=M5UDvBvdheRJgPaL8jg/4+Rf6vZWoIIBiQG8LlpBA12WY7VLWxEO82BfPFvxB5KbRKQ52T5SV0ImrbkggseLrOSif3Yzr2h9j2w1s73pxIlTMt19+h1UvZmr2gw1B6GSHLUA2rM+DawrXKRkR+q7jvhSz3pyW8wOF1qqdsXJrv2QQvRkCjjRYzEZ2DOmfeA0i8eji1qhQiY4Wy1CHL8fwVahbeCVo4z+GqezJnK2ROM+lFE/f3TezdVBvUyEte0HBVQ1JGu6L/tg0hP7lqr6/V2DYK+CMLSaNxFVIjFIELONjn7QiU9FGzKSKuPLv/qst8rjh6Op9axixxsXqr0Q2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q8BUEwlCp3rP9MNPgIHYlsEg3zlyrLbge8pl581MJlA=;
 b=BmFlQBY9UUa5XF2yEJRDGmEATaQsyxvAkFSiV0CxiqVnsipMnGuH6acWoGrJ6KAQCE50NNlCHJ6Kt767W1+VB/SwDtrTEpLXbpcO8uoKIbhhfUdw/iQrwGT2pU1wdAKOR/+Bqxf7VtmAW6Vp6FFMQQEY0V8tTnfrKVJXsNqXs2gHwXMebweSV9ZQlEe44lMU55keVCTHaMoQ75EWO55lsJj1LpJ97zKktrLISORx1PVqAE31jslKBi1xptQvmBbemuikZu1AZjHrMjs3Mp0RyFjJtWKcn3a12nkco7KOvS28EMabyGfqQrpvZ6eIekS9UB6ySfEIzQZbSEGQtM/sdA==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by TYZPR02MB5101.apcprd02.prod.outlook.com (2603:1096:400:8f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 18:18:00 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::624d:2113:5376:e9b2]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::624d:2113:5376:e9b2%7]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 18:18:00 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [meta-security][PATCH] tpm2-tss: upgrade 3.2.0 -> 4.0.1
Thread-Topic: [meta-security][PATCH] tpm2-tss: upgrade 3.2.0 -> 4.0.1
Thread-Index: AdlDAe8E5qn+5u8KQEKhiKEZ3CNQbgxeDgUAAACh0IA=
Date: Fri, 21 Apr 2023 18:17:59 +0000
Message-ID: 
 <TY2PR02MB3678D0D1F780E67A2F7F254981609@TY2PR02MB3678.apcprd02.prod.outlook.com>
References: 
 <TY2PR02MB36783697BB0D07ECA91365F581A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
 <DB5PR02MB1021323D8BFB6E35FF6B5C2B8EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: 
 <DB5PR02MB1021323D8BFB6E35FF6B5C2B8EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PR02MB3678:EE_|TYZPR02MB5101:EE_
x-ms-office365-filtering-correlation-id: 951dc300-bf35-4896-bcff-08db4294bd32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 o15vwTJn5321jCSSZBHrVhslDVfhaf+MiaMq2DjgSNbCENN3xlfDqCgHPEjQYXp1KBR58KF229mZ9Hl5RkwaFZpgR3DdUrRwWrHawe2r4OFIaGpEIe0MLRMQqxgJmcI5aJvs7lneRYTdgVXoAtgMGum/VJqCWidIhqAejYp6RgJo3GY3lnlI0fHdcelxdr2GFYlBxaP6illIdu3reV1Ah37zYZY+R1IXSG71mcDMuM16KkV1xxLkiQAZwtptWi+SDsdNgTf0RoqnOEyS1Nev+aurZjosTblN4pCxqFAev0e+BZjl/BQbIg7b8nSEL+Li9GbmpDH0kDRnT+QNOu/DXWFAO77EN0SSAbty52I3N3XEE5OyH0esrQFGOZRjKmf0IFdwOAS+IqeUILRyt82hDgjHGPcriLKyk3ZvqPS6UmgA5A/Y+P1VGKgw5H3dXBL/Um1awpLszqRhj2mp+YbELDlcjtICT7j5wKDBNwzXwWy+jHXgTrP/nRdWGDduppDdGZLKSj3O47ql7MCSh81H3SdYFWh1Vy7WxNFRXdWnYxiaIRsM+cZk8p9cE2p75yMWtym8Vg4SydwYWWSWD/cNjHE2t9O7Z2OCCPuBLcWWVwA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199021)(38100700002)(38070700005)(15650500001)(4744005)(8676002)(8936002)(2906002)(44832011)(5660300002)(52536014)(33656002)(86362001)(83380400001)(7696005)(55016003)(71200400001)(966005)(26005)(6506007)(9686003)(478600001)(66946007)(53546011)(186003)(76116006)(122000001)(316002)(41300700001)(4326008)(66556008)(6916009)(66446008)(64756008)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?RHpiTFZZUFZRNHpkcjVyb29hTnk0MnZjVEVCSU5vYXA4QWhUTWU5VFZTOGFh?=
 =?utf-8?B?VTZUVW41ZVJicGI2bGh4VmswNi9kc0d0dzBEMUlqZkNNa0pJMExwSkRiYUFI?=
 =?utf-8?B?RlRWd2xVYnpXZWx5U2I0RllCZk5xbWl1dFRjVlVFNmZWWm9FeE1ERGQ3UzBy?=
 =?utf-8?B?SmZCSVJ6V001NFVHNlZZOFdYSStaUGprME1LcFkwQzQ4RHdabm54VkN2UVZD?=
 =?utf-8?B?Q1NSSjVUVXZDWTVaZnpBS1JUZVFMcTFqOG5rdVlON3BrVVAyQTJBOStXS3Vz?=
 =?utf-8?B?NDdIT1o2VXJocm9iMTJST0NEMTBEamxSMVVsM0Y1NllrVmZQeFUxVThPK2ZK?=
 =?utf-8?B?V0o3TXB1Tjc1TXJ6a29ST1orWVplL0FicVVHTU15YW5RNVZ1bVZGM1VSc051?=
 =?utf-8?B?clMzcE01S0ZYcis3NkNIb0hndy9FaFhXWHhZM3N3NkpZd09HV0tWQTNEOGZj?=
 =?utf-8?B?dmNieWdjUVc1bjZzS2VrcVNtMDVHWmxVRm9sM2lXSUc0STlEMkpaOVJPYWFQ?=
 =?utf-8?B?cFZKS1VwV3JaTWtWR2JIZm5uNEpIaWVlZjlxclVpSk01MUUwcUNUSzU0VkFW?=
 =?utf-8?B?UnA4ZTJhQmllc1llZXlyR3lrcHcwUlEwYU1MUFh2R2pueXlBSlZNTTNOMVJU?=
 =?utf-8?B?YVp0cGNRQzE4RTFEWUg3WUxKdXUvVC84em45RG0wLzhXQ3duMFM0Y1VNMU9U?=
 =?utf-8?B?cXI2bktOeE1BU1RqTWI5MDloNmxSdTRBR3NIa2EwUVdmalBwdXh3dDJKLytH?=
 =?utf-8?B?WkJFS2xnSEhrYVluWEUyT1lRUjJ4Ri9VeTBpcFVFemZpUFBTNEFqZHRnQkdC?=
 =?utf-8?B?S0FXRXk2cFF1d0RsRFp1dlAvUWU4b0Z6WUpyNjBTeWJUM2UyWkhYN3dRVmRR?=
 =?utf-8?B?eVF5dTdzaGxIVnlkRDJ3VW5XckU4OVg4RUY4S2ZzeVN5bHhYbWxjTHNidTFX?=
 =?utf-8?B?eFVRU0RkenJ6RVhoN0Q2WjRPSm1oZzJwTDNNNDJ1Zzk3RFYyazV2eG5VWEdC?=
 =?utf-8?B?LzRSekxhVzFpVmE2b2hlVlhnQk8wazlkcDNiMW9GZVB5dXA1aUJRZ2VLUTV4?=
 =?utf-8?B?TjNrTGJGMkdpWUI1ZFlUZit6WE9XUUpKZzZxVjl6YVpRRHl2UjlUaXdER3cw?=
 =?utf-8?B?dS9vNUhWT1BTZVA1U1FpV05tcitVT3pGTHRaYlhXTnZYN2JYYUNVOUpROUkw?=
 =?utf-8?B?NVBsczhzVE5xeDJLY0wvbWpid0szM1EyTmQ2MkxQYWRrVWVUSkJHT2FEbGxG?=
 =?utf-8?B?OUI0NEtzTUN3eWEyMUVZeis4eVgya1FudlRtNyt0T3BzVEZCa3o3RGhWdXd6?=
 =?utf-8?B?Q2VmUGF0RitHcVAwTlludzZRUG9vM1JWUlFzelo0REQ1cmVadkZObnNkNGhy?=
 =?utf-8?B?R1FMbVU3VlJPcURWYTFRdDBKbnBkcWhRQ2x4OGdIaWlaWkNnVmdBQjJ2bDJD?=
 =?utf-8?B?YnZCOFIzUkd1cEt4TGJySjl5Mm1kT1VqUWdtcldtYmFYSTkzSkdPKzk2Rk8x?=
 =?utf-8?B?cXVwbXNkYjdLOTRoUXNiempUcnVqZ0tQbWhQQVQrZU5hWEhSdkRLdkhybU40?=
 =?utf-8?B?bGlodDFqWUg0TWNBaHllb0VyRzNuN3ZoWHRZQkc4V1FXQk9QTFlCZ3I0TVUr?=
 =?utf-8?B?eHBXL2o3L2QwNG4vSU5xM3QrOERnNGE2RXRvLzBqUTJCOXcyWWtZS3VKUEFB?=
 =?utf-8?B?YjM2NzVqM2szbUJpRTVHTTVyak9OWC9vNXlTZ2t2TERBNG1FV05KcURMKzNa?=
 =?utf-8?B?R3NnamlHeDZvL1pPZzkxVFZhSHA5SkNxUmtJdllBMTl0bVBIbDhmK2pzQlBu?=
 =?utf-8?B?YSs5eTRLNnBabFBYV0JSOTlUNjE5TjUyamlnMXVBS08rY1g4NlNwb0tPTkNi?=
 =?utf-8?B?dWdiaGtXMEpCamlPTlp3RGR4R2NTb1hmRzk1VlJSdWNHYU9QMG56WURxcGtU?=
 =?utf-8?B?MitSdU9KS2ZqMCtSM3o5U1VDQ2lscDc1NFp2ZURlc2d2V3lMdUpnM1YyTitK?=
 =?utf-8?B?WmVHZDB3K0hpa0U1NmdZMzBHQzNCMzhMZU5tNU1qcXcwYjYxN0ptOGpPanow?=
 =?utf-8?B?bFNNQ3ZQM1V6N29jSWlpNE9xWWZydUVYYmptRDdKZTBiWFFaT0IxMkI0K0h2?=
 =?utf-8?B?ZjZtRE93S3ltMTZXWDZtVnNZYnd6QnJ1U2dtb0xIUmpSQ2d4SjNReGlGenZa?=
 =?utf-8?B?ZWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 951dc300-bf35-4896-bcff-08db4294bd32
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 18:17:59.9603
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b8hT/NBhNZ6zfJSS7lWAWo907/7u1lTrurgKhs08zCkgjvTz/EdgNi9H+2cdsm0q59TOYR3Yq7CwZ/SVsOUtWxCMuztfsnwWz6YSxTkQc7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR02MB5101
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 18:18:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59757

WWVhaCwgSSBhbSBzb3JyeSBmb3IgdGhhdC4gSXQgd2FzIGludGVudGlvbmFsLCBidXQgSSBkaXNj
b3ZlcmVkIHRoZXJlIGlzIGEgYnVnIGluIHRoZSB1cHN0cmVhbSB0aGF0IHByZXZlbnRzIG1lIGZy
b20gdXNpbmcgdGhpcyBmZWF0dXJlIHByb3Blcmx5Lg0KaHR0cHM6Ly9naXRodWIuY29tL3RwbTIt
c29mdHdhcmUvdHBtMi10c3MvaXNzdWVzLzI1NzENCg0KSSB0aG91Z2h0IGl0IHdpbGwgYmUgZml4
ZWQgcXVpY2tseSwgYnV0IGl0IHdhc24ndC4gTGV0IG1lIGZpeCB0aGlzLg0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVy
c3RlZHRAYXhpcy5jb20+IA0KU2VudDogRnJpZGF5LCBBcHJpbCAyMSwgMjAyMyA4OjA3IFBNDQpU
bzogUGV0ciBHb3R0aGFyZCA8cGV0ci5nb3R0aGFyZEBhZHZhbnRlY2guY3o+DQpDYzogeW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUkU6IFttZXRhLXNlY3VyaXR5XVtQQVRD
SF0gdHBtMi10c3M6IHVwZ3JhZGUgMy4yLjAgLT4gNC4wLjENCg0KWW91IGludHJvZHVjZSBhIG5l
dyBmZWF0dXJlICJwb2xpY3kiLCBidXQgdGhlbiB5b3Ugc2V0IHRoZSBkZWZhdWx0IGZvciBQQUNL
QUdFQ09ORklHIHRvICJ2ZW5kb3IiLCB3aGljaCBkb2VzIG5vdCBleGlzdC4gV2FzIHRoaXMgaW50
ZW50aW9uYWw/IElmIHNvIGl0IHNob3VsZCBoYXZlIGJlZW4gbWVudGlvbmVkIGluIHRoZSBjb21t
aXQgbWVzc2FnZSBhcyBpdCBjYXVzZXMgYSB3YXJuaW5nIHVubGVzcyB5b3Ugb3ZlcnJpZGUgdGhl
IGRlZmF1bHQgUEFDS0FHRUNPTkZJRzoNCg0KICBXQVJOSU5HOiB0cG0yLXRzcy00LjAuMS1yMCBk
b19jb25maWd1cmU6IFFBIElzc3VlOiB0cG0yLXRzczogaW52YWxpZA0KICBQQUNLQUdFQ09ORklH
OiB2ZW5kb3IgW2ludmFsaWQtcGFja2FnZWNvbmZpZ10NCg0KDQovL1BldGVyDQo=

