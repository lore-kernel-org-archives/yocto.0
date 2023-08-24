Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A75C71145
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 08:34:24 +0000 (UTC)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com (CHE01-GV0-obe.outbound.protection.outlook.com [40.107.23.115])
 by mx.groups.io with SMTP id smtpd.web10.6566.1692866062238442380
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 01:34:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=elWIzmje;
 spf=pass (domain: vrag.ch, ip: 40.107.23.115, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MIlHdCmbh/nI/UYiL+CIsjLNQP7GfHhkZt1Hu9vDBBx30uP2aZfdYCh7pBpuz3jcCU544vkTXP23lVbQMg8TEa5ZmrkzGsSGUL+r2DEzq78FIXSwmh9uu5WXSZRXCL6H8DVIaC3KR/YeiaA9UThPQ/4fPGz5TikfbkORLa0Vgwhx2aeEznRZD1RWjG+Cbhz4RYRqnA7dzjxM1OIU7s/YUOls18t0v5p74hyYONqykXnh2YRUFeB0MvM8C5j2IJvjQ7zbThIeGGLv3nrXG/QHJYrXl3k6Hhnznts7/q8si0roru7nSal6ESzAIlIO7dohII6XlzbTF3ewOKbC3i+Scg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tt1xMAWtZ1RBZmfCJ2jl3h+bL5J0dMLn/YBVHEoRcTU=;
 b=cOim2CCpwIkT1+qrEfEesMsnnyugjLSW34+BkeqkEdPcUqGfUeoOeC1AA1ogVLvSXOze4VF0OEUMh3eNlmVfHBJwCH+5I7YTydhliDwd+EHxNnRetXtxQLRO5FgKA7IZPupgTrEe7kxRpgbDLnAd5pDdCxUeN/6KrbIMVUoSZUoyMhw658H3GUZFT67UJivJkTkOIcaTZBQDf5eWzeQ+a02nExRD8L78xPanuh57WsUyRzFGhQnp4TObQ41MJfweD7/GcPExrmLsyN6e80cHKQElYCfdqujl98/JOhJEgX0kHh92WXdfutAPf+ECznLjH4X+4NKvVjqlK1tpHaHqTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tt1xMAWtZ1RBZmfCJ2jl3h+bL5J0dMLn/YBVHEoRcTU=;
 b=elWIzmjeX8NN4i9GAv7BOrbtF46rxTHeih3aNqsnvDifgpWJiQ9fQjBzVYk8CcYvZmIolgqL9RvHCJhYGWTM6/B31wY0JMAwneEHZ2+u3t77wfTRabRLciN1W2VO55836r6mj/BePD3qX90xHq9E3I08bDbPIjBt013NKbew8TA=
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:49::5) by
 ZR1P278MB0980.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:58::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.27; Thu, 24 Aug 2023 08:34:18 +0000
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b]) by GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 08:34:18 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Asking for root password with debug-tweaks, empty-root-password and
 serial-autologin-root
Thread-Topic: Asking for root password with debug-tweaks, empty-root-password
 and serial-autologin-root
Thread-Index: AQHZ1mXG0uLsf4xhc0OpkwXSrI3d+w==
Date: Thu, 24 Aug 2023 08:34:18 +0000
Message-ID: <e1580496dfcd07e4cfb4b941abae40de82b6e792.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0550:EE_|ZR1P278MB0980:EE_
x-ms-office365-filtering-correlation-id: 65f46c67-3d15-4376-16b3-08dba47ce893
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KoC7MagQ37d5StdcvME6f4LNnVXxADpieq1NjBvfavcF9gDuXSVeyBiTZZXDaSEJ9kWeTdO00GtwpJ3XBNEKYPJE6KWYlQMx5yeJH+WYFr0G7VoJgI9prB/3vjLHo6ZcX9w0MP9laIRG582OHsMSfpmTz5OTzfq9OnXZ+qnu2pY2CNH19e3klJ9jAbtzP08G5rn+WlXNF1kjt+kH0+Db45vXBX/EA+zgergJO9S/uD80YjIwbBE66U2vjzHnhidMwXJDS6YN7AYXjgN8OHqnj7teS78i0HlfjQY2D8HumTVBREmuwX5gFeeLCkCz0Io3zlrRqXNOC6g4KK/kzE+uGwpWrbq3Fanyi8BgR4vrzgVX6txK3BYp74aN+TW58e1ZFHDlx8uZzlY68rsobJqpJQoZlvg2IeJ0leaM4i80SmFCVCm0jL1m0R2hpF/wiFlqBAWAHiDII1vdvr3c+A/oj/vrbCcPLLxaJdJbvLwkBbwizy9AnNh2R/HHDMTFZtSGZnIjKHod5cPheFwTd0e3PBlcZFiX8Kz3Lzln9+fcT8rnA2rQrPf79oUW+FiuRLxG0A0Ccl/FZ3Ptxi9zWbP0UiXgGQLp7YQcqRNyTSA3G4Y/TuYEy1MN+3V2/nw3ll2Z
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(39840400004)(346002)(136003)(366004)(1800799009)(186009)(451199024)(36756003)(38070700005)(122000001)(86362001)(38100700002)(71200400001)(478600001)(5660300002)(66946007)(6916009)(64756008)(66556008)(66476007)(66446008)(6506007)(6486002)(76116006)(316002)(91956017)(8676002)(41300700001)(8936002)(26005)(44832011)(2616005)(6512007)(83380400001)(4744005)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TURQcXVwYm9EMGE1NCtvS3FxblNVRmxCQ2ZKckU3c3JRNldOU0lZcCthQ0Y0?=
 =?utf-8?B?OHpLdmpZanVXZkdveHJoVGJYYndQUWlEZkNZZGlrM0FiTW9PU0c4RXh3NGk4?=
 =?utf-8?B?WGFMOVVPVFV5VDBlSCs5aWg3VVg3MkR4MjZTWS9JRnlsL0xieUg1S2tQRWZz?=
 =?utf-8?B?cC9PSzZRS1dsZG1qMDNBbG9udUMyNmtVaFdHdkpoNEdZWDIyUzViQUgzVjZJ?=
 =?utf-8?B?Q1NtbUoxT3dPZGY4dy9KV3RlNmRmTEtVM25ibjk2TnplbjJVd2V1Rjc2aTZR?=
 =?utf-8?B?clhCckFJenB4T0FkY3VQc3JjV1ptMDF5MEUyUXJub09Wb05CQUJYSkF2aFVi?=
 =?utf-8?B?c1NoWDdzamRWalNCbW8zOUlNTWFIVFZXUFo3MDJaa0pCaytodVJ4Ukl6MFps?=
 =?utf-8?B?Y3JrRmIzRmxReVAreFVJRkhONy9uWGYxcnNPdHBqZ3JWUDV2VURtazFZQW9Y?=
 =?utf-8?B?bXhXR3lxNGczZHRPbDFSS0JZRndxTEVNeW9PZkt0MTlKNTc5dWZwRWJCTmVQ?=
 =?utf-8?B?RSt3NjhZRFAyTDV0WmI4VFlrQ2VTVnhDakVYKzh1UGhFaWpJVVhYZkJuVDcz?=
 =?utf-8?B?bzFmRXYzNVQ0L1lnSE5BYzlUeXFkdEloQWwzUkg1ckZ2TXBpVWgwQ2pYRkNU?=
 =?utf-8?B?c21OQy9wNnA4U0o2NEJDUFdBa2RBcVhWd1FuSnk1d0hWR2kyVWRLeW1zTWZL?=
 =?utf-8?B?a2NnRlFLRGhpcmIyWXVhMHZiL1pVcytJREFndEhaMFVndkpucEhrU0FoeU11?=
 =?utf-8?B?UG5LRFcyTHJXUUxRMVdSNEE1aUVvQVVZUGxaYU4wY0ZXb1E4ZTlCbldGQTk4?=
 =?utf-8?B?WkFYR3FnWWd2Z1NKTlo2TEJzS29lZVprSVkzOG9ablFQN3pQS0ZKanV1UzB3?=
 =?utf-8?B?TFc1MDBWd3JnWjVHbUpVL2M3amhscDByb3VoN0NMU2Q0VE54Z21peEhxTXJo?=
 =?utf-8?B?QmhzU3h1S21TSGxqUkZoTGk5MjlSc1JWOHZzTTVId2FaTkN1Wm45MCtZSG9i?=
 =?utf-8?B?bUEzYytXeE9kM1lIY2MrVzhYUzkwYit1RlQvM1FrR0RXNytSVjVIK0ZDV2lD?=
 =?utf-8?B?c28wVlFrTG9pRzZQSWR3NHpDb3dzbHdwKzRFeU9NbXQyOHFBWWxUSzhBMndo?=
 =?utf-8?B?Znc1Q1F0M1NwQ0VhQ1l6TjI0cm8rVUkwZkYwdm14eEQvV0plaGQ0MHE5VGJV?=
 =?utf-8?B?T1lPZXhhNjNRWlRRblZCN1psblhldEJ2RFlEZXUwZTFsQUlkc2N2dmtWR0hP?=
 =?utf-8?B?QjhwVEk2UHpJNFM1dHFva2lvQjA1cUd3N3FBOHhrQlJKZXFCTDc1T1RBcnVx?=
 =?utf-8?B?YWpFME81TC8vUFdCMW5ndFZCdTNwV0tlTzNwZ28vSnVhTDB2OVkrbEwvY29O?=
 =?utf-8?B?TWVKSXZHeTY1bm1HdEUzaTZPZVJPb3hqK3FpVGpvSnNlTzlKNXg3Mkd5cmRs?=
 =?utf-8?B?VjQ3aGhadFFLbkNud3pxeWVSaHZ6U3RaRGJZaytyRnlvN09vc3cwMUgvcGVX?=
 =?utf-8?B?WUFOblVLeGp4N0ljNWxuOTEyRWZFNWc5bDdzYTcvN2VWaHdrNS9wTWVqQUt2?=
 =?utf-8?B?NmZwVE5nOTRYVTBJR3JleUhCYXVkVjlEYXpVNzRCZ09TZ0dNTnZ2M0NQc3lk?=
 =?utf-8?B?bHA4RmVpK2pFMWRETTR3Vzc0ZDl5R1ZtL2JkVGVGUzZjbkV4Qy9OeHRhR0pC?=
 =?utf-8?B?QWJCcWVXTVBtakh5NG5MdDE5UGJBZkVvcXl0bXExbGJGTkFzWXdqNlZLNmJD?=
 =?utf-8?B?c3pvcnhWNGFMZUtlT1AxREladHllaHNyOVpPa0hXa2U4RVZDelMxVVQ5SnJG?=
 =?utf-8?B?TUNyQ2ozbzl5OHJJWWJOOEN0eENGMHhvYWxTK2NOUlZybUQwaWVtZ2dUQ1Zv?=
 =?utf-8?B?R2dtRE5xNTZhd3YvV2pPNmNyVzFHVzErR09hMVhhRmJjQVMyQjdtNXJlT01q?=
 =?utf-8?B?UFpQQUtXRC9KbnNSc3loejY4RWtackYvWHVldCt5RGFjd1ZPZFJpZlYweWlk?=
 =?utf-8?B?aWdaNTB6WEI3eXRCN0lQbWlONGQ3elNaRmlpcTZRUHhUTFNwcjg3bDAvMVlH?=
 =?utf-8?B?R0NGelIzYnB4eVhiUnJHQlNXa1A1MnVJWlgwR0lSVkVBdmZSTUVuUEhacGUy?=
 =?utf-8?Q?EoawcdkhMiD5AHVT+p3pRElAg?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F6FDCD10B66114685837BF931612E31@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f46c67-3d15-4376-16b3-08dba47ce893
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 08:34:18.7763
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qe9Fc3ghK06Z0tp58/wCV31pasasBpQxv/7oznk3Z+GKBuvZF+faCrQLKJNsxfTC9Y6rITTGcManYhKz8vz5Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR1P278MB0980
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 08:34:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60878

SGVsbG8NCg0KSSBhbSBoYXZpbmcgYSBzdHJhbmdlIGlzc3VlIHdpdGggdGhlIGltYWdlIHRoYXQg
aXMgYXNraW5nIGZvciByb290DQpwYXNzd29yZCwgZXZlbiB0aG91Z2ggZGVidWctdHdlYWtzIGlz
IHNldC4NCg0KU2luY2UgdGhpcyBkaWQgc3RvcHBlZCB3b3JraW5nIEkgc3RhcnRlZCBzZXR0aW5n
IGVtcHR5LXJvb3QtcGFzc3dvcmQNCmFuZCBzZXJpYWwtYXV0b2xvZ2luLXJvb3QgaW4gZGVzcGFp
ciAtIGJ1dCBJIGFsd2F5cyBnZXQgYXNrZWQgZm9yIGENCnJvb3QgcGFzc3dvcmQgdGhhdCBpcyBu
b3Qgc2V0LCBzbyBJIGNhbiBuZXZlciBsb2dpbi4NCg0KV2hlbiBJIHJ1biBiaXRiYWtlIC1lIHwg
Z3JlcCAiXkVYVFJBX0lNQUdFX0ZFQVRVUkVTIg0KDQpJIGdldDoNCg0KRVhUUkFfSU1BR0VfRkVB
VFVSRVM9ImRlYnVnLXR3ZWFrcyB0b29scy1kZWJ1ZyB0b29scy1wcm9maWxlIHBhY2thZ2UtDQpt
YW5hZ2VtZW50IGVtcHR5LXJvb3QtcGFzc3dvcmQgc2VyaWFsLWF1dG9sb2dpbi1yb290Ig0KDQpB
bnkgaWRlYSBob3cgSSBjYW4gZmluZCBvdXQgd2hhdCBkaXN0dXJicyB0aGF0Pw0KDQpCUg0KRGF2
aWQNCg0KDQo=

