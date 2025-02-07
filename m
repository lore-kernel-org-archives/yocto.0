Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F909C02194
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 11:50:12 +0000 (UTC)
Received: from ZRAP278CU002.outbound.protection.outlook.com (ZRAP278CU002.outbound.protection.outlook.com [52.101.186.47])
 by mx.groups.io with SMTP id smtpd.web10.67613.1738929009684632321
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 03:50:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=nl/dsg9h;
 spf=pass (domain: vrag.ch, ip: 52.101.186.47, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vK1qKHjXRowW+7XHpShFmzks3id+wQaPNZlluXlZkbiXp2y+cnmRmpbdmXj7KMHe//WQNE3/bER7ASV2aC0tHBFnP7yDL99+cdhll3HquW8fbiXft3NjYiruYjOjmQ6P8n9MeQmxyM3KbmtiuUW9upKQPpH4opjQqvRgWEVsF7QfLbCnCJYFkpaCirZ0gpWIybWBadeQxvUkl9gU6iVWryPWDP7lkn+th3lgtI0FTS5ea0KcpdJvhFMf7QAe1H7yjvJQoiUNNo8maiV28vI50/SagKrUKAmH3Ev6uhmxPDKTJZHABkNcE0wRKZRddlhPwURx4pmh4Hhi/+/T5FJKww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F5qiPvkbgyIhpCBxta9MgWZ9rKmJccB01Th40L25FrM=;
 b=NKJOZkTbfN6k/cOKSX20amD6Nlb/OF+DcuExHG4atbeq7OOWnlSRPQXawrBv4bEjFQXUAmzF6FY9Mrsm9TLCdg99swBtzIpZLXX/BRoImf12NAUIbpQDF9j+g5tlrrKOSq6iHwDCXIacxNrGT1jjikY205cq+Ur0gdTb6AecPn7GyDx8PUgwHUD/luAa2VmXcViY9ISb9S0P50o0V7DSCR5aDKIktn1mG1SOT5pY8nu0wnWyxeRcJ+24or6E79DeTdx82f9Zod3gwwujATrfwFKg3suaEIgLRe4iLaxDWQlASdwQz2YgA5w4dT8xAj4+7nh+8xLfJqbMNf/ybwq7rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F5qiPvkbgyIhpCBxta9MgWZ9rKmJccB01Th40L25FrM=;
 b=nl/dsg9hKVIwUjNU4uHfzjZo5w/4e/R9nsj02U1fHhTomNlnJ5oKL09D2O3aiAryVrtG2c1MsHIuv6J726Yv3QSLXHR5qECeI/L5VQXxqCBmDTYLoShCObZXJvf6u2vnMNbr5kr0792Vdzg9hWy7wP0WKRCl8T19KTuA2Xwucv8=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR0P278MB1616.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:a5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.14; Fri, 7 Feb
 2025 11:50:05 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%7]) with mapi id 15.20.8422.012; Fri, 7 Feb 2025
 11:50:05 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: PROVIDES virtual/kernel but was skipped: incompatible with machine
Thread-Topic: PROVIDES virtual/kernel but was skipped: incompatible with
 machine
Thread-Index: AQHbeVZuZzzV9EOtakaySZKbKQo5Cw==
Date: Fri, 7 Feb 2025 11:50:05 +0000
Message-ID: <956382c4704a8585b90fa46b4e30f3644c10d131.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR0P278MB1616:EE_
x-ms-office365-filtering-correlation-id: a992a6b8-4c03-45b5-0209-08dd476d9087
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?WHp2SU5wWmJnV1JCRmMrYzN3R1lnclFlb205S2pKY1ZnUm8zRUJrTWQ5Wjdv?=
 =?utf-8?B?ajhrV0xVYmg4UHI0ck0rN012N2lNU3VLVkNYK21lQlpVVmJwSWh2ZmJrbXFw?=
 =?utf-8?B?cWQxWEJZazlqOERydWMwMTk0UTRzRzd0RjUzOE4zMXFGNGc1VkpodXdVQUVl?=
 =?utf-8?B?enNNc2I5OTk3VWRIMGRrRVljdS8wQmFlWE9TZHlxb2NiaHBQVW1UV1RiZ2R6?=
 =?utf-8?B?dFRMNHZvOUtXL2pmNzl5UGdWN0ZTeTNoRG5KSWxpUy9FZytTUW9MYmVuclBH?=
 =?utf-8?B?bGJUNTBVZ0FBL2M5NHpmYmNickdZUjVoY3k4eDFMaGVIQlNmZmZnZ3A0SUNl?=
 =?utf-8?B?VnNkQlJ4cWE5MjRQMUNpRS9zcGkvTDhiNmlUenRKR1VBR1luMW43RGtpNnpv?=
 =?utf-8?B?UUxvcmxyRGh6RXVHOWVQc2RNaVR1K1FTVDh3NVp5aUkvOXl4U1BnQUdZZDNZ?=
 =?utf-8?B?Q0l6dVVzVmlJYjJtRGI1aVJNcnl4eGE0dUpDdWc1dUJ5K1FDYkk1ZGxWRjRK?=
 =?utf-8?B?UTd6b2s4QU9wMldmdjl3UU84VVlIZkw1MnZLbDVzTE8wWFE2bDdwVU9tR3Yr?=
 =?utf-8?B?cFpiWDhMMlNLVUFvNjRna3J0Wmk0SzFPSkgva291WDIwUGt0Vy8xTkkvNFdv?=
 =?utf-8?B?ZitWcmdVdVRpQ0I3TGZkTFBadGxVTTk1RGY1YTVCeDFXT0tXTWdrSjQyQUhU?=
 =?utf-8?B?TVZ2OEF4SHdNU0Z1UVhBcFpHMmFNZU5iT0tZVnRob2U0eTBJNmcwdndLS014?=
 =?utf-8?B?U2I1bFdLVTB6KzZKc2ltOWphSGNUQXhhKzRHUUNVenB1b0cyRlJiM3lycVg4?=
 =?utf-8?B?emVrZVFSQklySUc2VWk3Z3k4TVZocEViMlhPSWFTQW05ZUFSWVJNVGoyU3Rr?=
 =?utf-8?B?UUo3emo5K0NLRGRIMm1rTHdLbFBqNE52Zmpia295ZWoxaUc2MUtQQkFIU2Q4?=
 =?utf-8?B?Vk8wV1dyZHFHUWt4NDhSNW9OTi9JUHZUQlN1Mkc3TlhNSUdrWDJSVERhZjhL?=
 =?utf-8?B?cjM2TXFCdXRnMXZYVHBoL09rWXdXTERYMlhGeWtiRjRVc1A1NHdnc0lVZG1k?=
 =?utf-8?B?Q3pnV3dFbjV4U3N4Z0JqMVZnVFZJM2tRVThLU2MzWnpBS3R0dzl2SXhkV2Zu?=
 =?utf-8?B?MzFmbnhVemdUcklpZXE1dDJiMUJNamppdE4reWRITmw4S0F0dkgxVW4reThY?=
 =?utf-8?B?TDFLNVFlazFmOFhCbXZocGhxaDdwUGdRdVp3UVVqR214QkV0MExDR2RaV1F3?=
 =?utf-8?B?SVFuM3BhSjZzNlpranc3Yms0b0lHb3VsZUl4UmdtckdUN0xRVHZjQ1U1TEtP?=
 =?utf-8?B?S2VhT05JdFBiNGh1RmRaVTNCbzlCNFBUNkNmYmErNkRuRS9kWnRKK3hKbjZZ?=
 =?utf-8?B?Q24xWFNqTlRzRGdkV3JXUnI3KzgyK3F0S0M2Sm90TFNjYTlLdENCdGdDY3Rm?=
 =?utf-8?B?cmgvYmdTZ0pCYk90bDVxQWh0UHRRb0VxTUp1VGU5bng0eGdhWFl2SnFBQWlL?=
 =?utf-8?B?QzdGY296UlhrUGpwc3VUM1cxY1d0cjZRdmZKRzBZeGRmS1FTdy9KU1RwMklN?=
 =?utf-8?B?UkhLOC9WQUpSaThGMkQwZHhWWDdBV0hWQy8vVVRZOEpnNEc3MTl3NjVEanRG?=
 =?utf-8?B?cEFZZDkrZVVPVFdVR3NCZnJlbUNLNE43R2d2R2srcjZoQWdSazg5ZTZVcCtE?=
 =?utf-8?B?NXN5NUk5NjhCL1ZQTGZadkIxd1BrbzZORXNmZVloTThBY2pLVzJleUJOQ3R1?=
 =?utf-8?B?RmRYK2RyR0dqK1gyUXZ3aUp5RGF6bXhRNkQvTHpvR1JOS1g0WDcweHhxMExK?=
 =?utf-8?B?YmxVM3FCSkRhbFRzUXNVeFpzTEV3dGdhc3BqVVFaYmIrdko3aGdkOHVvUThi?=
 =?utf-8?B?TzR3ZjdFNUJhV1JqNlJ5NndXZ1FSTzY1NndVREFPYzk3d0FYL0x4bTJiV0V6?=
 =?utf-8?Q?Gyx4Rp7DturOBr9/GN5bF8Q0UN8f2WcD?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dTlHWVJjdG9scmtGdzVYS3p5aWF2TnNZYm5yeitoQWo2VGFUTitYQzkvdTJG?=
 =?utf-8?B?THFGU1kzNTZNMEJTS0xQN0wwVVhmQVFvMWJwUER1bW9RMENDNUE3UzE4QzRl?=
 =?utf-8?B?anRDalBpeHpsckpRNHR3ZFlBNGpaS2pqejduY3BZZVZtQUhsYlJPOERYa3o2?=
 =?utf-8?B?aXc5Q0tUNnVYc1BremJhRE9kYVZIb3ZUTW5lOE41MjBLZEVWYmMzUlBCSHd2?=
 =?utf-8?B?eGFYOW9mSXd1YTI5enBGNWdWMHdmMWhmaWxJdmx4TkdsK2Zrdk5KWEtLUzJj?=
 =?utf-8?B?TWU2VDQ5bDFTYU5RU2FETE93RWZGNHYxcUE3NXY4cDNUUTNtSTRqdUZENmQ1?=
 =?utf-8?B?SjdnSXlIRk96aDNJSkk0cGhtSk5tSDBWdjlteVgycTAvQ1dhbWpZL3J2aHZw?=
 =?utf-8?B?dkR2V0VGaWRnTy9DT1M1bXZxUlhMUHc0eUpwa1c4cnBWYWdtN3NyY2JudmZm?=
 =?utf-8?B?Z0R1Tzdzck5qK2luYnJ3TFBDTCtOVjBPaUhuMnBUREd3a0tjZ1NDUjdhN0Mx?=
 =?utf-8?B?c2srQU1BQmlQcTVZeUcvOUpmV1FsKzdUcDdycjd3NWozWCtMN3JVZmlobWpS?=
 =?utf-8?B?cjRoYXBRSjNwWHR5TUNtMi95WVlFQWNOZFhWcWhiTFpiL0dya0tmWGlrVEVQ?=
 =?utf-8?B?cGcvbXBlU1FJMGRrK0t3Qk1lQWVWd1pJMnczdE15ZVdHM0NRYjUwUDZwU3pR?=
 =?utf-8?B?YXMwdUVjYmI2TnJuMi9uWTB0RzhrRVN0OHVWRTF2S2ROTXQvU3NnWnA2dXVI?=
 =?utf-8?B?bVhHdStkaWhRUmpRWmEwUjBORm1OM0p4cENidXlYSk1yZGI3NThGMWRLSXRx?=
 =?utf-8?B?ZUdzcDk0U016OUdDTXZXZkRiTDNSMnprN0JRZ3d0dDdDbmJNTnBWejFhYlll?=
 =?utf-8?B?M0VySW9WT29yTjEvRU5MRXkxMytVeVphcUVNSkNVTkJqeFQ2QVhhOFR1NjdW?=
 =?utf-8?B?aE12Q0hBeDdmVUpJNDQ0eU5waFJZREpUV3p2TGc2YStVR1hmaWgxM2FWd3Ji?=
 =?utf-8?B?NUZQb1ZudERsT3B3WHo4L01CUkpYRnoyM2RhTnR4YVFMS2pPNVZMWTAwOVhB?=
 =?utf-8?B?V2NhNlhtRjlDRTdXd0lzTmVqOSt6eUh0OStNbW5TTzE0MnFZbi9ZS0lRUFFV?=
 =?utf-8?B?dXl2WlVVTkt2SDM4MUp1VmZjN25XcnVXd2FEYzNvU2tYdlc2V3lQVXc2WVY1?=
 =?utf-8?B?S1hYRmtMMDhPcnd2UDYwSzh6SDZIUzNZN2Q1TWZMMFJSWGVsc0ZneUIzUGMz?=
 =?utf-8?B?OHVIcjZiMldpamU2NDlFcm5BTy9iSGFMcEM5Y1F0c1BYS3V3Y2xLVnVXVXU1?=
 =?utf-8?B?dmhZdEhQeDQ1VnhnSGs2emhFL3NWaDVaRVVTcHo1TUFpbFdvV1dJKy9PRlkx?=
 =?utf-8?B?K0RsWnBZNnBhbHkxV3VZQ3dhcnhBRWxmNUtZODU4aUx4eEFrcnE5SnJDQVFq?=
 =?utf-8?B?RGVOYzk3NGE3Rm1UTW1ESkEyVVJmdlhlWWhyNG0za2R6NDhERlJWYkwxTGkx?=
 =?utf-8?B?M1dNSk9MbXVQUFlXU2lHR09jcGhzMGMzR0FnZjVLdnZCaWp2ZlB1eHNkbVFp?=
 =?utf-8?B?K1VIMnlMSHpvakhXU3Y2WldTQUxyOEdKakNQa0QyL2JvaXp1SlA0TFhsUjRI?=
 =?utf-8?B?dUt5d1N3ckxTSFhmV0oyUWFBdXJBaGRPR29NQ0ZTWGtIdDZBazJqVzFJRG9F?=
 =?utf-8?B?dDdOdFQ0NlVreG9TbWRGK1ZzWlRDR01zRGl2NXJwNitpL21SQW1KcmNGTUN5?=
 =?utf-8?B?Q2pSNU9CNFZ2TVhPRjhtWmRKS0NjMEtOalE1TVBxbUx1NzBiSTFITzRoYmxx?=
 =?utf-8?B?REkvVUFlMzlUYS9ZQjRBNThVRmtWWUZXVTBLelB4TjRNeDBBR01MQjZmTlp0?=
 =?utf-8?B?ZUhwTkYvTUtFOE41am41UStEdlNSQmI4N01sQ3RsNFJOSWJ6T2lnMUI5S2hk?=
 =?utf-8?B?NU5CVkVKNGtoMmFIc09uRG9xdWgxb05rSmoxVzdBNWlkaGhPQmcxMk5GWlVB?=
 =?utf-8?B?TFE2cFFLS2MzZHA3YTlzS0lURmFhd2hXVXYrYldKWjFKQXZJQit0SThiemdV?=
 =?utf-8?B?YmtXalNFU1d5YlExbzJwSzlpOU8rZmpiSTRUblg4cTZ0NUFnZ1g0OHpDa3A5?=
 =?utf-8?Q?bjOjgAfeKKB7T/xB0rFHppruV?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2DCEAE7D353A044ADD78EEB28E7DF60@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a992a6b8-4c03-45b5-0209-08dd476d9087
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 11:50:05.8062
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5cnrgglOKcy9g/sbruOo1N9OE8v0xc24Jxpt69qQ0eNMUjUqvOvZ4FEaBRVIo9SuGxzkGkh3lyxroi+IzaVaFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB1616
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 11:50:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64748

SGkgYWxsDQpJIGhhdmUgYSB3ZWlyZCBwcm9ibGVtIHdpdGggbXkgaW1hZ2UgdGhhdCBqdXN0IHBv
cHBlZCB1cCAtIEkgaGF2ZSBhDQpjdXN0b20gbWFjaGluZSAoY2FsbGVkIGJmMTMzKSB0aGF0IHBy
b3ZpZGVzIHRoZSBrZXJuZWwgcmVjaXBlIChhcw0KbGludXgtYmYxMzMpIHdoZXJlaW4gSSBzcGVj
aWZ5IHRoZSB0aGUgbWFjaGluZSBhcyBjb21wYXRpYmxlLiBGb3Igc29tZQ0KcmVhc29uIHRob3Vn
aCBiaXRiYWtlIHNwaXRzIGFuIGVycm9yIHRoYXQgdGhlIGtlcm5lbCBpcyBpbmNvbXBhdGlibGUN
CndpdGggdGhhdCBtYWNoaW5lIC0gYnV0IEkgZGVmaW5lZCBpdCB0byBiZSBjb21wYXRpYmxlLiBU
aGlzIGlzIHRoZQ0Ka2VybmVsIHJlY2lwZToNCg0KcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgt
YmYxMzNfNi42LjY1LmJiOg0KDQogICAgaW5oZXJpdCBrZXJuZWwNCiAgICByZXF1aXJlIHJlY2lw
ZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvLmluYw0KICAgIA0KICAgIExJQ0VOU0UgPSAiR1BM
LTIuMC1vbmx5Ig0KICAgIExJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJQ0VO
U0VfRElSfS9HUEwtMi4wLW9ubHk7bWQ1PTgwMWY4MDk4MGQxNzFkZDY0MjU2MTA4MzNhMjJkYmU2
Ig0KICAgIA0KICAgIFNSQ19VUkkgPSAiXA0KICAgICAgICBnaXQ6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdDtwcm90b2NvbD1odHRwczti
cmFuY2g9bGludXgtNi42Lnk7bmFtZT1rZXJuIFwNCiAgICAgICAgZmlsZTovLzAwMDItZml4LW1p
c3NpbmctbXNyLWRlLWJpdC5wYXRjaDtzdWJkaXI9Z2l0O25hbWU9bXNycGF0Y2ggXA0KICAgICAg
ICBmaWxlOi8vZGVmY29uZmlnO25hbWU9Y29uZmlnIFwNCiAgICAgICAgZmlsZTovL2JmMTMzLmR0
cztuYW1lPWR0cztzdWJkaXI9Z2l0L2FyY2gvJHtBUkNIfS9ib290L2R0cy9mc2wgXA0KICAgICIN
CiAgICANCiAgICBLRVJORUxfREVWSUNFVFJFRSA9ICJmc2wvYmYxMzMuZHRiIg0KICAgIA0KICAg
IExJTlVYX1ZFUlNJT04gPSAiNi42LjY1Ig0KICAgIFBWID0gIjYuNi42NSINCiAgICANCiAgICBM
SU5VWF9LRVJORUxfVFlQRSA9ICJydCINCiAgICANCiAgICAjIE9uIHBvd2VycGM2NCB0aGUga2Vy
bmVsIGltYWdlIGNvbnRhaW5zIHJlbG9jYXRpb25zIGluIHRoZSB0ZXh0IHNlZ21lbnQuIFRoaXMN
CiAgICAjIGp1c3QgaGFwcGVucyB0byBoYXBwZW4sIHdlIGNhbm5vdCBkbyBhbnl0aGluZyBhYm91
dCB0aGlzIGFuZCBpbiBmYWN0IHdlIGRvbid0DQogICAgIyBjYXJlLCB0aGlzIHdpbGwgbm90IHNs
b3cgZG93biBhbnl0aGluZyAoZXhjZXB0IGZvciBhIG5hbm9zZWNvbmQgYXQgYm9vdHVwDQogICAg
IyBtYXliZSkuIFRoaXMgbWFrZXMgc3VyZSB0aGF0IFFBIGNoZWNrcyBkb24ndCBicmVhayBvdXIg
YnVpbGQgYmVjYXVzZSBvZiB0aGlzLg0KICAgICMgSU5TQU5FX1NLSVA6a2VybmVsLXZtbGludXg6
YmYxMzMgKz0gInRleHRyZWwiDQogICAgDQogICAgIyBNb2RpZnkgU1JDUkVWIHRvIGEgZGlmZmVy
ZW50IGNvbW1pdCBoYXNoIGluIGEgY29weSBvZiB0aGlzIHJlY2lwZSB0bw0KICAgICMgYnVpbGQg
YSBkaWZmZXJlbnQgcmVsZWFzZSBvZiB0aGUgTGludXgga2VybmVsLg0KICAgICMgdGFnIG5hbWUg
ICAgICB2Ni42LjY1IChiNGFjMmU5ZDU5OTExMTNhMDFhNjljYTkxYjJlOGVkN2Y4Y2M2NmFmKQ0K
ICAgIFNSQ1JFVl9rZXJuID0gImI0YWMyZTlkNTk5MTExM2EwMWE2OWNhOTFiMmU4ZWQ3ZjhjYzY2
YWYiDQogICAgDQogICAgIyBPdmVycmlkZSBDT01QQVRJQkxFX01BQ0hJTkUgdG8gaW5jbHVkZSB5
b3VyIG1hY2hpbmUgaW4gYSBjb3B5IG9mIHRoaXMgcmVjaXBlDQogICAgIyBmaWxlLiBMZWF2aW5n
IGl0IGVtcHR5IGhlcmUgZW5zdXJlcyBhbiBlYXJseSBleHBsaWNpdCBidWlsZCBmYWlsdXJlLg0K
ICAgIENPTVBBVElCTEVfTUFDSElORSA9ICIoYmYxMzMpIg0KDQoNCkluIG15IG1hY2hpbmUgY29u
ZmlndXJhdGlvbiBJIHNwZWNpZml5IHRoZSBwcm92aWRlciBvZiB0aGUga2VybmVsIHdpdGg6DQoN
CglQUkVGRVJSRURfUFJPVklERVJfdmlydHVhbC9rZXJuZWwgPSAibGludXgtYmYxMzMiDQoNCkJ1
dCBJIGdldA0KDQoJbGludXgtYmYxMzMgUFJPVklERVMgdmlydHVhbC9rZXJuZWwgYnV0IHdhcyBz
a2lwcGVkOiBpbmNvbXBhdGlibGUgd2l0aCBtYWNoaW5lIGJmMTMzIChub3QgaW4gQ09NUEFUSUJM
RV9NQUNISU5FKQ0KDQpXaGF0IGFtIEkgZG9pbmcgd3JvbmcgaGVyZT8NCg0K

