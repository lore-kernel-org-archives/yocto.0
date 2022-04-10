Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01F97C4167D
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.66])
 by mx.groups.io with SMTP id smtpd.web10.18111.1649604612330345951
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 08:30:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=cK1onWar;
 spf=pass (domain: advantech.cz, ip: 40.107.117.66,
 mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mVyrlttCBQ8vF7EvurbWYelVrrZkN1Dp33MOuyq5am51t1H73zkXjHkLLy4BKQrCiQ3MZYtPIBkfwNje8YO9aFJhf9tLEw1rt/APWnblTwFK6MSL5cUigB4oRi9/J1iNl2QaDo32i7UiI8DHmHbhDHBjIOaWdu41E4z+wcZSfsW9Im0dSlLG1mUlEMuWocrZDXuw3mobV9UHTliEx3ixxMWqZgRFEs7nrFn5Crp+h7W2IaSfLYkP0VOScKTKUJToZYEKKyF03Wkk4d2gZfIBptSVJbL0KrlEd3p3XwI/z8DXre14BQIvRcN7emzq+dJ/zX/Vqt8rg0safsVQH+86jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QgnUitnUXxKVKhpfhRITjn6OePNDjGQBHOYRgd3WVQk=;
 b=DsV5bY0GmUJGOdFtlMKMWh7yPsDJO0lcLhovV8QuIWHLgo+GBtAVZr8WcinIwJ+60VeJELutLooFNpTUjncYxN23YWdtObt71Uk8wFWRTSAMOTABSU2NBdN8Kbmy1YzWcW6aXAHGmCzwQ5sby3n5taqylR+N44Cv+I1j3DJ+hbVa+dTrPgREzA/U2oCK9lAupJZGfcNfmaaJ0pTvthan0Al9GhkrSX0DhwhOGmbBFLm2XXjo2f5gSnlttnGAIinxgpiGIviNwetREmy+ttgYvbTKB+5Y9AxttaW7JtMSpxvQgxZU0vxqUcEAsmqLJiGMv4b9mZyOQq+xVbEJC6yKmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgnUitnUXxKVKhpfhRITjn6OePNDjGQBHOYRgd3WVQk=;
 b=cK1onWarr3+xCsaEDgv5Qu2EUiNhFSrjEQwp5XhxdV56gr/dku3rU6m0znqHvJOYbTW+TtNvjA1og0Dnzofi/vZvPM6HWP6Rb5BFOJ86/t3CRnMUhmJyw4WpKPEvO+Y6mJRENwgO5Za8bM4NOdXoK3kbzmV3QGOWwC1nzlX970d51atXCS7UflPwnqIExg/y291E23hIjKE8evFkuiHJlP0YBEgHOyBJPlykPspx/1bKPSqnAsposc8Az8ZqNbQTA5/VtOGjaPuX9gPekXTObIJ1fNVSgdADChCiwmJYndnlrakDXVMXiyworobU3xuj3Qs7Hg9cDxZfaEP2/Kf5Lg==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by SEYPR02MB5965.apcprd02.prod.outlook.com (2603:1096:101:84::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Sun, 10 Apr
 2022 15:30:09 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff%6]) with mapi id 15.20.5144.029; Sun, 10 Apr 2022
 15:30:08 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 1/6] tpm2-tools: fix missing version number
Thread-Topic: [meta-security][PATCH 1/6] tpm2-tools: fix missing version
 number
Thread-Index: AdhM7PqYnBlkdDehSdCCp3k6aPgjvQ==
Date: Sun, 10 Apr 2022 15:30:08 +0000
Message-ID: 
 <TY2PR02MB367874688F7BC483F7E6E0E281EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 800da465-f780-44e7-eb9c-08da1b06ff15
x-ms-traffictypediagnostic: SEYPR02MB5965:EE_
x-microsoft-antispam-prvs: 
 <SEYPR02MB596522F52F1F59759CFD6BDE81EB9@SEYPR02MB5965.apcprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LF8wJi1en3ZgiA2jKnBMpbjobuixxlbaBEvD+kpd9QlU37zmax3OfgfaxrlMKENfg50YhmsCzkJMkJ01URnPKLtLdAthG6QoO4vCIb/kBD1PhgurTux1m0J2ZaTf3bo9KmIL5v25Hc2Bkfx4SS6AQC1iT2spBZYtRZmdS+8JDD9zJQUeuS+ZU3S+RGpblab5D/q8Gr+fddNzDmUD0k7VjuL8xTOa+4BNqF1uEm23P+cujMapHWYHcr3EyMnaETAdg0iBl6TEDgB2XUFytwbyTM14iuIQTi+YVUoRstT/PAZ5m45eIuYafriHH17dakIuvTq+p4LrJvtZLyakLORtlMhuCclTD8oH+VBn8FPHMMsAnymwqa8C5AIT6i21bC2HSIfSY1zU4OM5eBkftt7JtFmbIWgHqfDN1kBbfqog9u8Ofab6hhCMsLeJO3fPkMirKSBx4mhs2JAyHUHvuL38/rpZUPve7DbCgsjVfT+e6q5tBL8wzTQnJGDuIfn9hvFFHjgp1Pp9x8ascXjKc1TOTG76HpK3LkIJQ4AmgRSpD+iSHZbkAJsjJIHECrvHIdOyFVN9xgIwgAVDsNBF3F/OUVtMPX8JnkaZ/q+82Q58kF1a7fUoxMpXf3xnwrLzeste6oAP/N+WHm/eThYxRObu6gGbI2O65+oBc2zomLAePQ4zcxvmSwYIURsofeJrDtE1pxxefS3AwNW+uzv+zOVsPO2gpUC8mLsGqc/aGZHI6V4YJGs95v2z/8RbxzDnn3URvI+OjQJOS2ypoZ9/n8D0GCY0A9er/ZO+iJMmN6xI4F0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(83380400001)(86362001)(26005)(52536014)(8936002)(9686003)(7696005)(6506007)(508600001)(2906002)(55016003)(5660300002)(8676002)(38070700005)(71200400001)(33656002)(66946007)(4744005)(66446008)(76116006)(122000001)(38100700002)(44832011)(316002)(66476007)(66556008)(64756008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MmVFb0dTUHZTRmJOb2VhVGd0R3NzcXYzeURhUVF5S1dkRHVRS0g4OVFVNXFP?=
 =?utf-8?B?OVpmZU5lWWZUMXVsRGF4WmQ5ZDJybWgrbUZtaVNHQmwvNGg2d0doUmVmVjFI?=
 =?utf-8?B?ZFdYNmVRN3RnTllUUEl1cG5yeHhHL2xwNUhmQWo0eUVZdStHZDZmWVhMK2dT?=
 =?utf-8?B?TU1jL3JqQkU1UG5WK2ZNTjFoZEUzOXd1SS82Uk5qbzZtajBmZE8xU0FLTi81?=
 =?utf-8?B?OVJtb3BBbUxYQ1Q5aURodk1CWU5oM2REUnBRQWZVRHptM2Z0ZWhHMmJCdjBh?=
 =?utf-8?B?ZUNxL04zQ0IxRkMwdmpnaEtiZFVLeG5kY1dRK0pJNUdzQlJDMUluWU50UDNW?=
 =?utf-8?B?Tzh4QlBFa3RRSnhuMGovcXhaZnUrUHk3WFVoV0N6U2IvMmJKTDNYbVZoZnJu?=
 =?utf-8?B?bEkzdElhL2lMdXFCTURhcWg2MVNVUjVseWVTaG52NjBNSGUxZjIvbXgwSmwr?=
 =?utf-8?B?ajJjRlhTNmExRWcvVy9PbmwyQUMvVHlWbjBZa0p4ekFlMVIvcDVtdlNpaitF?=
 =?utf-8?B?K2V5dVJ4WWo3Smd6eTZvL0wrMjVGeE1yRDJIdFJtcEsvaHFnNFNXT2N1eWVY?=
 =?utf-8?B?TkVyd2I4eU5Bejh0c2FER2QwOUlDUGczZWlPU29Bc2xNOGFWYnBCVVV2ZGdt?=
 =?utf-8?B?MjgzaXJPbnB4UGtsQmk0V0pjbytOQ1M5TjV2enJKQWErUWJkUG5XeUxPRkhx?=
 =?utf-8?B?WUg2cllybmF3ZklnSnF0TGhidGlxMWU5c0hhZVBSbVBPWHgxYmtrTlY3WkZz?=
 =?utf-8?B?cEVQVCt0R0tqZnB0RVA4L2VtcjlGTEhxUlBhZ0svSXJHRVY2Qk1vOUplbjZG?=
 =?utf-8?B?MGdBdlp5cHNZS1RyS1NpTEJVRXVuRzgyNjNGVUw3ODFwbXlMejNFYis5OWM1?=
 =?utf-8?B?UFFuZUY3dUNyYjlrN2NWdEo4VFhDUUJyckk1SGJrSGFuVG5QL0QvR3p3SDFY?=
 =?utf-8?B?Z1VMMGlrR0VwaTVNdzg3UEFYZk0wSWYwL0JaZkJpOXlFVEhtMFZ1TFd3Z2dZ?=
 =?utf-8?B?OEp0Q09MSGVYZTl3eGdWSnF0VUJNVXZxalpvSmZ1K0p0alluNTJ1V1JsNDkv?=
 =?utf-8?B?M2pETkovNUFEOVY0ZXc0TEFjL3hVcm1UMFBlTWNNN0xacFIzRWlpWHZsTVV4?=
 =?utf-8?B?YjhaTUh6aDBhK01PM2xhVmhkUWtNOFRFSU9NV0h3L0Y0UlljYVlrcnJ6ZHNl?=
 =?utf-8?B?ZDZVdjRpcG5rVVU5VDFxT2M5VGx1dkd6R09KRkFYdmhLZklsQWlISWQ4cEFN?=
 =?utf-8?B?dGNpZ1pRTWJySkRWMlR3WXpkMmUxaXVDdElzREM4dFo5L004R1dYcHAvNzBD?=
 =?utf-8?B?cDNKcVhVK01vUDFDQU4vcjEwUUxiUm5zMk9ZMG13R29MMGNCSTQyTysvYWJh?=
 =?utf-8?B?dU84OGJlblVQNElxMEJxOG5GaGlmenJMYUQrdnE0TWl3cWkxcCtTQkFHT25C?=
 =?utf-8?B?cXFvY0RNUlpJaGl3eHdldXlDNjJ2TXl5SW9Cc2tDR2tZMDN5eGs1WkI5LzlV?=
 =?utf-8?B?T2wySjROQ2dNMk9IN283UERZWkNXSHllNnR6bzdwQ0JaRGkyalVnQ2xMTnd2?=
 =?utf-8?B?K2twV0JTZEpOY2xtSXBOcEFHWDlJNkZBMUwzS2JTVjMvWFNsWUI4cFZ4ZjJp?=
 =?utf-8?B?REthSTNSRlFHR2lxakN3QmtFNDZHU2hYOFZJd3JnL0Rwa3RJRTNTaGV5N3FF?=
 =?utf-8?B?c3pnc1A5UjA3clR0cXE5akM0RTZCdU42YXRCRGtHT0t4cTU1YUxOLzhZaDRL?=
 =?utf-8?B?Y2ZmcXovKzJiMWhaZ1g4OC9ScGR5U0dEbWdhSWw0c2wxdGYrWHdYOGVURmFU?=
 =?utf-8?B?cE93OHRISVpzZ2dnTFhTekYyeWIvcWNlRnUyVVNybkxYMS9IY0tlMGpyeW1M?=
 =?utf-8?B?VGwwRTJhdEkyKzNOY2ZTc0dTUDFGVVNtOXlwU1BpcXFnd1Y4bzJJQnVsdldq?=
 =?utf-8?B?VmlLcVVSTkt1b0NlR0xGUGh2M2w4SFl4VmFSNnFkSFdaVTBzN0xmbW4rQnZN?=
 =?utf-8?B?RXo2Y3JrMDFzNTcrclJTU1JlV1VoZjhTMjAyS1VTdlV1c2txRWxzR0g1M2ZX?=
 =?utf-8?B?MUNCQXNyZEJNS2t5Q3FyKzVDKzJFM3hQZ1JpWUJlSXpzZmpvR1dyY1NBMEI0?=
 =?utf-8?B?a2RoSjBzTnViOWlCWTY2bmVyWXl3VWRVZThjSkR1QkQ3N25jUXltT21jRzU1?=
 =?utf-8?B?cmpFdTB1YUFFcXk2cXVYRTBQaDdSRE9nN3dVOHFTSVV3TFpjOFdqRWpaemVq?=
 =?utf-8?B?Wlh6RDNWeW01U0RhdURQRW5KS3NwaW80WkhYQlQyWVpYeldZbUJ5bG5NNUZ4?=
 =?utf-8?B?ZElubXVpM0lJeFcwTC9CRGxTaUFnQ3JIMDJDdllKcUgyYUU2T2lpdGpsSzNi?=
 =?utf-8?Q?TAhmRLpdxLtdHUdU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 800da465-f780-44e7-eb9c-08da1b06ff15
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2022 15:30:08.9258
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 gOJA1cTkZ6f/T9Gmc7DSk9vU0kcU+mNHXg8lXU9noJyF4v7fMyse5QveWmhmCR38RUvfJz82j6qEVhdLHjuLP9K5uyxzCZiLm9Alenk/2jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR02MB5965
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56704

Q2FsbGluZyBhdXRvcmVjb25mIG91dHNpZGUgZ2l0IHJlcG8gY2F1c2VzIHRoZSB2ZXJzaW9uIG51
bWJlciB0bw0KYmUgbnVsbC4gVGhpcyBwYXRjaCBtYWtlcyB0aGUgdmVyc2lvbiBudW1iZXIgZml4
ZWQuDQoNClNpZ25lZC1vZmYtYnk6IFBldHIgR290dGhhcmQgPHBldHIuZ290dGhhcmRAYWR2YW50
ZWNoLmN6Pg0KLS0tDQogbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdG9vbHMvdHBtMi10b29s
c181LjIuYmIgfCA1ICsrKysrDQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdG9vbHMvdHBtMi10b29sc181
LjIuYmIgYi9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10b29scy90cG0yLXRvb2xzXzUuMi5i
Yg0KaW5kZXggNmU5NWEwZS4uZjkyNDAzOCAxMDA2NDQNCi0tLSBhL21ldGEtdHBtL3JlY2lwZXMt
dHBtMi90cG0yLXRvb2xzL3RwbTItdG9vbHNfNS4yLmJiDQorKysgYi9tZXRhLXRwbS9yZWNpcGVz
LXRwbTIvdHBtMi10b29scy90cG0yLXRvb2xzXzUuMi5iYg0KQEAgLTExLDMgKzExLDggQEAgU1JD
X1VSSSA9ICJodHRwczovL2dpdGh1Yi5jb20vdHBtMi1zb2Z0d2FyZS8ke0JQTn0vcmVsZWFzZXMv
ZG93bmxvYWQvJHtQVn0vJHtCUE4NCiBTUkNfVVJJW3NoYTI1NnN1bV0gPSAiYzBiNDAyZjZhN2Iz
NDU2ZThlYjI0NDUyMTFlMmQ0MWM0NmM3ZTc2OWUwNWZlNGQ4OTA5ZmY2NDExOWY3YTYzMCINCiAN
CiBpbmhlcml0IGF1dG90b29scyBwa2djb25maWcgYmFzaC1jb21wbGV0aW9uDQorDQorZG9fY29u
ZmlndXJlOnByZXBlbmQoKSB7DQorICAgICMgZG8gbm90IGV4dHJhY3QgdGhlIHZlcnNpb24gbnVt
YmVyIGZyb20gZ2l0DQorICAgIHNlZCAtaSAtZSAncy9tNF9lc3lzY21kX3MoXFtnaXQgZGVzY3Jp
YmUgLS10YWdzIC0tYWx3YXlzIC0tZGlydHlcXSkvJHtQVn0vJyAke1N9L2NvbmZpZ3VyZS5hYw0K
K30NCi0tIA0KMi4yNS4xDQoNCg==

