Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDF05C636D6
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 19:02:24 +0000 (UTC)
Received: from APC01-PSA-obe.outbound.protection.outlook.com (APC01-PSA-obe.outbound.protection.outlook.com [40.107.255.74])
 by mx.groups.io with SMTP id smtpd.web10.3068.1676660530367641099
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 11:02:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=NcVxXs1o;
 spf=pass (domain: advantech.cz, ip: 40.107.255.74, mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WcRiA9AQzCR2zD0BPXzIHsxDQRaxw5ASCW+VeQefZd2xaDDVJiRAHc2bTfq/d6L18mpAjswAJk9/uX18hC6G+KhB5CIz+dulNSzsvbUH3Tcn1T1OOlcF4X2dRmiIKmUjgfzpu+uzMT34E5/d1OQusDt6TdNwuOen7a548W4U8XyAYQ0p4ZXaye38HMH56LWPoH2KmMv01pZ5Clja4nQQZR3V7pv1BVvOz2WvkdqDrHT/hQFR1nx/bxl/4ASQloxyWs55b7sZ8kKflKan3i59+6E8Q2PToplo+W7gx010Co5NIafs7sJdUtA8CV5Ml8/4OOtOn0nokIpQv6l5BUdrjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2cZIcizemHFEbRyBSirDWT6IMn0ePzrN3Mnk1vdfbxo=;
 b=W3F9r1cjQPo/+W78rpFzAo/LSBMypqTG3rT3jR161+1cIaplHPbz0WyzuWnSelsaEkRyopO3hZwNoSdhshxOiGzT6k9H1u+sH09IdNPqeHGSE9n1XBf3FfrIfNdo1nYpE7KzNhEdq2WHkk40PO3l0vBc0fXQRXCdbiByau1W8TEXYnYm2xltAz6MpNV9pm3FS59lErn95w+lFE9FAQnO+sA9lmvEAFgDqKx4W7Iqy0PEnXsN6KspZDNsvl80ovrcKH5B0o7Bxm+dV/d0ejkGnCB141/FA9uHa1o2pLtYCUzGBr84aXL6+zcHOvjYbOS7kVhd02oDfBmSutpW/xR3xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cZIcizemHFEbRyBSirDWT6IMn0ePzrN3Mnk1vdfbxo=;
 b=NcVxXs1oOTxFwCo8+8Pj1zoUtmiGsr7rvF7A8XWHxSrsB0w6/818iXk6e2WGatc7JVqJpIXfGGDWZ1unEtQWlVvx1/B7XRaG4sf/oj5Q3H18rJTWmCi3ucS9GFl/2Z4rly/lJzE8NUA8tbfTa1PNvTKtdQwC0NGmZSt+rmhwLAau9w4wdfKRfeMjOWM5TP3UZy1/rc82qa4HjTmMqEJpDUht9jdyiYFIor/8YoktSwTi8TzQ9TlafuBQ9LyK/P3OkApuVnjKwlBfwP5ufh0tgkdnktuCHFsaUAI7AhMsdS7XVzUY42pANuqWDGVU4+Q7AmSlztK/1jtSJr+OcPlAFQ==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by PSAPR02MB5128.apcprd02.prod.outlook.com (2603:1096:301:8e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.17; Fri, 17 Feb
 2023 19:02:13 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 19:02:13 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] tpm2-tools: upgrade 5.3 -> 5.5
Thread-Topic: [meta-security][PATCH] tpm2-tools: upgrade 5.3 -> 5.5
Thread-Index: AdlDAa/vDIV+N3CeTvqTUO9AAoRE2w==
Date: Fri, 17 Feb 2023 19:02:13 +0000
Message-ID: 
 <TY2PR02MB3678A28F91500243CF37CD9881A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PR02MB3678:EE_|PSAPR02MB5128:EE_
x-ms-office365-filtering-correlation-id: 0eb2eadd-7b3d-4d8c-0d17-08db11197adf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RsP7qm0C4f5V53Abv0mqkagNyOYpiK9fY6x4L51MYb8HaMfl4v5xZqTDXHYMD83qd3SO8zB7IOp0bkCZsy1uudjib+JY4J24Z/Qw9fSJ8JWkxwRsAn2JHQhgWsP6MfEQDg2LViCxtRy2bqyosQfbcsVRhPvVWKuK/PpRQsshjuqfd0TSmAL9a/iYOoqd+39uIxO4b2QL9h8Vr0wVn1e30Wt6isak7JaUb79P8YLlwCH5f1m+Sb4LqBZTSUp8kR0hSO4VkZQISHaBXKPc6ELVZmXgY4hO+gXrXCx8WsvC1qxzqHcI1ualjKFNsQzibl5+Jt7UMhB6vgSf5hSadg15CS2dH2JkKcI5vwRMAKAfR7tRoqhNDam7klrPipcI4shy4mrOdfX93uoVKlkPRVhDgS/lY1gBea+ZRqKfYsO3PJCFr1wl9kpj3uYlvqpY1Zl9zXolueHvcDUF356ls+RdDH90hIDI0v67tpQyuolNfBa6UxCe5INEl3heEGac+YadCGMrWikl1JUf0c3H9QUkrDnN+qNizvO5lMqpzH03xP3OdjD62RWGG2mM23rYaRSUrzoTA1+0RVAuvXJ5dbAaeIa279AuE9Y3yXlZ5p0FBah5Q/z2wqP/LY9bKPBdwSRFK8MBp+hzoWp2mdjvAbNcHYrgfRMszGNwQRr7hiavO/BUWs9ElhyNy1cuN7f1sRsL
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199018)(186003)(26005)(9686003)(316002)(5660300002)(38070700005)(122000001)(86362001)(55016003)(478600001)(44832011)(38100700002)(41300700001)(6916009)(76116006)(66946007)(64756008)(66556008)(8676002)(66476007)(66446008)(52536014)(33656002)(8936002)(6506007)(71200400001)(83380400001)(2906002)(966005)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UGo2VWo3YUx1VlprSGkvUEZNNlFJMEpOY0FHcVZtZVE5c1lVeFBUV3lIWGtr?=
 =?utf-8?B?TDdabUorRzBwN2lDRHVzbXRkTlZ1T0hWQ3NkUmZkb2YzYnFkYlB1LzROc1c3?=
 =?utf-8?B?dmYvRW05VUd1L3FWTVJWVS9WaE5kNStuY3VoTVptK3R0c0dKdnh2eXVFa1ds?=
 =?utf-8?B?UllPMFJoL2pSbEJMdVZQTHpKUWo5dEp6aWU1ZWczRVk1b0cyVytDazFsRjRI?=
 =?utf-8?B?VGIxenowUld2NWt4UWZCcDVXMDBheDRsd1FVSmdkK2xYUnAvMjhvTUZYOHFp?=
 =?utf-8?B?OVVIR08xVWl0dzhlKzU0THY2Zm9DeEc1M3pLUmlrbm1wSUNhTXVMaEE4Z3lL?=
 =?utf-8?B?WjdMcEdheGYzRHlWdUx3VDFtdWRKRkZlTkZLdHhZWWxrSjlnR0IrL3l5ck9V?=
 =?utf-8?B?bVJXTHo2dTQ0K0pxRGhsNHhoVUJLNmxGT3YzNFBiRUEyZnhIWDJyRkNZOTVl?=
 =?utf-8?B?dk9zREIrMm5ZUjhGS3VOV296STFkUzNKbFBIblVrbDdYTUsydjdVd1ZwNmto?=
 =?utf-8?B?N3RWdXNudE9ySXg1bTZLUW9MVEpIanhmeGR6QjdSOGloSFBlZDlBaitrREJl?=
 =?utf-8?B?eVhmZ2RsemtpRlFZMDN3WmZEdnZGNmwzeUVkOUV3R1NGaWRsa3NEeEZvcTdk?=
 =?utf-8?B?Rjc0cEtydmxxTldaUHBad1hkVW9ndWxUZlhDUzJRNGxrcjJ3TkIxcVFJOFl6?=
 =?utf-8?B?dWgvR3N5S1pXTnUxM0ZsTTh0UDJMc2E0U0VLWDR6bE5LQ2tPRUJVY3pkMWxn?=
 =?utf-8?B?L1pNK1RkTDRTUXViaDNkVFR5eGtwbkNEZEw1MHdBQmRKSzh6cE9aVmRrQmw4?=
 =?utf-8?B?TXoxWVB2bHd3NnYra3k0YlVUTDZPLzk0QW1sN2hGVElEL3ozbS9INSszMzB0?=
 =?utf-8?B?eVErQWtZd2FieUEyTXBvNWx5NUdZYkRqRVNnVWZkZW12Y0hNNk55cFVjZDNF?=
 =?utf-8?B?eTNpNVZ3UEZ6bGV5QldHbHRkNi9OZkt0ekVxSmRtT1dXNzh0OUtVMzRoRGhT?=
 =?utf-8?B?R0xlbkIrVHI2S1I0RXZPdkp1Sk5INmpGMnlVY0VrcG5DQXNXb2Nra1BOeGdS?=
 =?utf-8?B?UlgyWCtKOGxORy8rcEh6eUZhK1RxaVBwb3VzRVdpZCthNGxWdWVyQmI3ajds?=
 =?utf-8?B?RGNUU0doK2pyQVM0eFdPU0o4R0E0bkpScllndXI3Mm53VDVMZUJqb1dzeDdO?=
 =?utf-8?B?WFpCeTFCR0dFTmZpTy9iektpNXdOSGdCUndmTm9VOEF4dW5oM045WXV3Z2ZL?=
 =?utf-8?B?SFhodm0vdVJqWDVnYTJCRDh6bnZpMXQyb3MzVzlHMUZ4SFFHb2R2eGY4SUhZ?=
 =?utf-8?B?aitLdG9CK3NGOHZnSTlONVVHZmU3dEhwNnE1aGFVNmJUZ3A2UGMzNHBnUmtF?=
 =?utf-8?B?citLK2tqeGJ4TENlTDZzL3BGN1FuSE0rWFNPSjFzNzlSbXIwVmc2YitjaGlI?=
 =?utf-8?B?WDlxMlZYbTd3UkR5RDB2NExscmJGUGZvRWQ2aEJQaWJKMnJVaVhndzNEdExL?=
 =?utf-8?B?V0tob2ZkWFZhMUR6R2dxYkpWRTV4cjNKNkdTR010KzlHR2JqaXZGZnRIcWpp?=
 =?utf-8?B?UHRDNHBOeDRwOURmem1kbE1zaXlUbXMrbklrNGtEb21IRWFPWUNjWW8xVVI3?=
 =?utf-8?B?YzZsQnQ3OFlRMFc2NjRpdFhrT3lRVE5TajJPNlpSekRNQTRldjhWY2paSlYr?=
 =?utf-8?B?dzJZQm00M2tVRmZGTlgxVnN5WVorRThjajI2dTd6NytSWmwweHI0OG9PZ2R3?=
 =?utf-8?B?V054Vk05RzU1MDZTSGYzTkhDdE8yUWhmQktsOW5ISmpzZmV4UWx4Q3VkWHhI?=
 =?utf-8?B?bWlKaVF3MS9qV29oWjRybzFITHVjUklPblFXWXNwTExMZDFRQXY1ck1yZG9E?=
 =?utf-8?B?UVBkNmE2K0syUWtLb1FsNFlzbzNTS1VHa09Id29NOUlKYmRZYlk5Y2JycDVy?=
 =?utf-8?B?U3hTUDFQU2phTk9WcysvOGpPcVAxbFVyQ2hMUTI4MVlyV2pXNUVVaHlwNXVM?=
 =?utf-8?B?MGZYbWtTSnFqUWhRWGZLd0hHZlYrck4wcFpxcUVTWGsxbTFrcFJmbVcxaEVh?=
 =?utf-8?B?OWJETy92L3dWSDVrK3QxQTRrODlhSHZCRnRVeEtDMDRRc0VDNTF5aXN5SjIz?=
 =?utf-8?B?U2VhM2QzUkZ3RlJURWhLdUM1eUtsU0lFNFdYVUkwLzdmcmRoTWRkLzZVbWJC?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb2eadd-7b3d-4d8c-0d17-08db11197adf
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 19:02:13.6037
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u4kg1PcVKFRO+v5bypc5XpHv2aMISlzRArLgFaO894GL5M77IP1StpvT13xLzMMGAngBSL8INiGtKUyEwCDTY3+K719Fxd7X1x26roTF51o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR02MB5128
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 19:02:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59245

Q2hhbmdlbG9nOg0KaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvdHBtMi10b29scy9i
bG9iLzUuNS9kb2NzL0NIQU5HRUxPRy5tZA0KDQpTaWduZWQtb2ZmLWJ5OiBQZXRyIEdvdHRoYXJk
IDxwZXRyLmdvdHRoYXJkQGFkdmFudGVjaC5jej4NCi0tLQ0KIC4uLi90cG0yLXRvb2xzL3t0cG0y
LXRvb2xzXzUuMy5iYiA9PiB0cG0yLXRvb2xzXzUuNS5iYn0gICAgfCA3ICstLS0tLS0NCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDYgZGVsZXRpb25zKC0pDQogcmVuYW1lIG1ldGEt
dHBtL3JlY2lwZXMtdHBtMi90cG0yLXRvb2xzL3t0cG0yLXRvb2xzXzUuMy5iYiA9PiB0cG0yLXRv
b2xzXzUuNS5iYn0gKDY1JSkNCg0KZGlmZiAtLWdpdCBhL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90
cG0yLXRvb2xzL3RwbTItdG9vbHNfNS4zLmJiIGIvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTIt
dG9vbHMvdHBtMi10b29sc181LjUuYmINCnNpbWlsYXJpdHkgaW5kZXggNjUlDQpyZW5hbWUgZnJv
bSBtZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10b29scy90cG0yLXRvb2xzXzUuMy5iYg0KcmVu
YW1lIHRvIG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRvb2xzL3RwbTItdG9vbHNfNS41LmJi
DQppbmRleCA1M2Q1YWJiLi5lZjczMjM4IDEwMDY0NA0KLS0tIGEvbWV0YS10cG0vcmVjaXBlcy10
cG0yL3RwbTItdG9vbHMvdHBtMi10b29sc181LjMuYmINCisrKyBiL21ldGEtdHBtL3JlY2lwZXMt
dHBtMi90cG0yLXRvb2xzL3RwbTItdG9vbHNfNS41LmJiDQpAQCAtOCwxNiArOCwxMSBAQCBERVBF
TkRTID0gInRwbTItYWJybWQgdHBtMi10c3Mgb3BlbnNzbCBjdXJsIGF1dG9jb25mLWFyY2hpdmUi
DQogDQogU1JDX1VSSSA9ICJodHRwczovL2dpdGh1Yi5jb20vdHBtMi1zb2Z0d2FyZS8ke0JQTn0v
cmVsZWFzZXMvZG93bmxvYWQvJHtQVn0vJHtCUE59LSR7UFZ9LnRhci5neiINCiANCi1TUkNfVVJJ
W3NoYTI1NnN1bV0gPSAiZTdjZTJmZDM2ZWY1Y2RiZDc4NzJkODIzYTQ0MmU4NzU0YTRmMGNhN2M1
NGI2MGVmY2RiNzVjMTJhMWY5OGY4ZiINCitTUkNfVVJJW3NoYTI1NnN1bV0gPSAiMWZkYjQ5Yzcz
MDUzN2JmZGFlZDA4ODg4NDg4MWE2MWUzYmZkMTIxZTk1N2VjMGJkY2VlZWMwMjYxMjM2YzEyMyIN
CiANCiBVUFNUUkVBTV9DSEVDS19VUkkgPSAiaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdh
cmUvJHtCUE59L3JlbGVhc2VzIg0KIA0KIGluaGVyaXQgYXV0b3Rvb2xzIHBrZ2NvbmZpZyBiYXNo
LWNvbXBsZXRpb24NCiANCi1kb19jb25maWd1cmU6cHJlcGVuZCgpIHsNCi0gICAgIyBkbyBub3Qg
ZXh0cmFjdCB0aGUgdmVyc2lvbiBudW1iZXIgZnJvbSBnaXQNCi0gICAgc2VkIC1pIC1lICdzL200
X2VzeXNjbWRfcyhcW2dpdCBkZXNjcmliZSAtLXRhZ3MgLS1hbHdheXMgLS1kaXJ0eVxdKS8ke1BW
fS8nICR7U30vY29uZmlndXJlLmFjDQotfQ0KLQ0KICMgbmVlZCB0c3MtZXN5cw0KIFJERVBFTkRT
OiR7UE59ID0gImxpYnRzczIgdHBtMi1hYnJtZCINCi0tIA0KMi4zNC4xDQoNCg==

