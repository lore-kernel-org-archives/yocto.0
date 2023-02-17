Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2982C05027
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 19:02:44 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.66])
 by mx.groups.io with SMTP id smtpd.web11.2979.1676660545803165385
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 11:02:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=edSL1iik;
 spf=pass (domain: advantech.cz, ip: 40.107.117.66, mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DEi32UB1sRMEnzEma4CfPvi+FNHujERElEDVAP6P+2T8MJ4+YEedZRj56h50d3HsQBg78VmGkJQ9+E7np8hT5QBf9JL7/iAULzQOUXBIHvnF9dtbdMS0jCj8FtR7oQCfi34zcPzC7oMqYx4qnlV88hS4peOaMlvjYkrVBghxTbRmQGEWFs6tQSTyai/4Jz/RiSASda6m/lhiXi/W2IwtprN/NB0iBk8XEayq5qRnCB00rH4MmkGpV8pZRMXW8hCHa5uxi3czwGOmH3Sf+5kVvAEo4T+YcncAurQGUogwApUtdYCgHNLgSDDUSIlD8WTHNiHk5xBiwbYqq6/qWfv/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DlqW8b4PYmwUveQAjI5vGbpbHit1uDTMkXm+Bgcc27c=;
 b=hCyn0U6IVULKboRcj2zRXV+YIEbNB+WlYVTqVnkliIcje6WaCbXhoWQAL9R3qnP2ucQu1QqNd+NCbtCthcSmrU/XuOtFjovhaeCtaQPQ6hiBtvWGnaSniFM5AnlM2BhLbffHLMAISct0tSCIa1orgTGRRBbySyWXWlMudWTMsl01gyAO3YQQ6hHGKU7GMH5zTsEviiJdhKVhu8u83/U0K/yJfUVpz5KcSZtU4f2GgJ5KOXP09Iz1cD5r/zS11J1iB8c00sptTUFmlw0Dr8/GuHiyq/0hWJYW3iSQNy2h7Wg4ysNDaVrcRPBmla6pLp/EDILsEom0Fz7YcYBKRScLFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DlqW8b4PYmwUveQAjI5vGbpbHit1uDTMkXm+Bgcc27c=;
 b=edSL1iikbUhRoOrkCa2YPLNHwNtCQhFL/uttGMOeAQHYCljbQ28tvX1AgDiV00+nqGWVbnDzgbdPjJEMW7MNoLlioFK6DdhpceA4a58bmENU5HL7nN+2lRtrKt3Qp5KGaPDMb46YJXhH/NYDceXYs+655sSIzLdYHa0R2KRgiW2CdhV5vRTyms+eKGRgohJqjJVe34pxfSJDygPkCYo74CvmYL+fq/mfsIy9lRafNGp6TT5haw1dXF7XWK+kgZtWY/nSZwdU9G46jJ04k0QQU0FCx++0E7NEeNs72D3li5PfpouiacbwDtLRvK3q51SXmat4uYpH3EXGjX3TkCFceQ==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by PSAPR02MB5128.apcprd02.prod.outlook.com (2603:1096:301:8e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.17; Fri, 17 Feb
 2023 19:02:28 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 19:02:28 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] tpm2-abrmd: upgrade 2.4.1 -> 3.0.0
Thread-Topic: [meta-security][PATCH] tpm2-abrmd: upgrade 2.4.1 -> 3.0.0
Thread-Index: AdlDAYkF9TYy7LEpSISlA6lJ+bu8Ag==
Date: Fri, 17 Feb 2023 19:02:28 +0000
Message-ID: 
 <TY2PR02MB36787BF0376E086AD591847481A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PR02MB3678:EE_|PSAPR02MB5128:EE_
x-ms-office365-filtering-correlation-id: e968dc65-6ae9-41e6-2655-08db111983e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4GvD4uxRrNRGITOCitgB1qXZsHxg4s2qek43xzTQIlF/Z7dPaYmsCQlRyzKKLW7L0QxsKjP0vJB0zjgIHPgYfF6BFTKoqrDl5cgvOgKGZCWr8IyW1uwFb1T5Y3gSEGkjLy91cvxMM5/YG5fFNRaq5MxD7ikbRBZEYrD6nRblfkohYBA2cdb0NXH7GjQRJftgcMPuBsYOSlTSJIApyHoUa+xNdKxdfMdu6ROEli6Ez0j0E2mkHGban1jWyl0tGpZv3HAMI6z4YWDSIJCaSm5fH5pg6TPPJ2VhuRY/ZVrsT3yvkuGnsX/NxeR0wpwtOz9nL81vWC2FTOECiozn+QvUzdXantSLZl1pA4pW2IMi/dbGeSE+XypgetN5LXEGw71otQ2F21yE1UXGs7KZMqi6k8xVA/QYL5/Y8ZPGynG8tBKCctfB25f9MWk/319zmAGSsOqhVmQuVGp3PzcPeHwMagh4++Nix10u11joacONl3L25BwYvnQ6ijBWP/0KZWzrcOPpXO7+16ThdRfYhql6OYYzyLeWaXqmqlxL1X6nF9O+vcun5/3vMeg1MD7maKa9QE+czdpTT1c/dJ8BF4ktChQRGTcLn0yNEsmjY2o595VxUmtgVRH0mI0/69Xc0bbia4QHfe3swXzHH64xda1apjt8lAeUYB9K7MtsHHxPpqwptddtSG5H/S0yZJSuphcD
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199018)(186003)(26005)(9686003)(316002)(5660300002)(38070700005)(122000001)(86362001)(55016003)(478600001)(44832011)(38100700002)(41300700001)(6916009)(76116006)(66946007)(64756008)(66556008)(8676002)(66476007)(66446008)(52536014)(33656002)(8936002)(6506007)(71200400001)(83380400001)(2906002)(966005)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SkZpZElpKzBHWlhqOFZXR3ljSUVyZ04yRUl4VUVGWGwvUC8yU2owVU1MQVlE?=
 =?utf-8?B?anpNTWVNbnhnRVBUZVh4bWR3ZW5oQk1kaE0wcnVtWUFkb0NTd3Z4M0dFSS9R?=
 =?utf-8?B?YjMxa2xZYUk3RUtuRnVGa1FyR3NSbURtNjl3RTRmZCtpeElnTXI4MHpFdDZC?=
 =?utf-8?B?NTBLSEs2VTE2S3VueVZUMGlrdmNOazRZNzBxbGlJcE43aG1aVEVoUTNkZGRK?=
 =?utf-8?B?Z2RsRkI4em4vV3NEakVQeThyNDZTYXFjLzQzRkJoTmNMQXl3QlEvWCtuYnY1?=
 =?utf-8?B?azBkVVk5cjhoR05pQ0tweXdNakxnYUdHdGpMZ0QwSDdpem11ZVUwcnhGOERh?=
 =?utf-8?B?NENLMFpDS1h6Mi9jQUNnRkxFNEduUjZqVXIrTnFaQU9jRXlqYXdwNXRUUmIz?=
 =?utf-8?B?ei9ZclBtTXByY01wbUlrL1kzYks0VUlodGNwTXQxbHBXay84UVJHV25MQ2FL?=
 =?utf-8?B?WklQVkpOcFNoQjFyUnFoamZpT0tmb3Z6SVAyYndoY3NFKyt1MjdIYTV5eDMz?=
 =?utf-8?B?ejVuaGE4RHdBN3Z6bDFRRGRWOE5VQnhyeENjcDFqbTNHdkpNUWF0MlVqb2sz?=
 =?utf-8?B?MlpTWGlVNVVMWXJzRSsxTEVWR2hla1J0Q2ZJNXJzSEQrQXhsa25KRXVnelVO?=
 =?utf-8?B?QTg2SE5QL3pVaWNSQXZ5bjFTYlMzcDlzbklJTlB6STdKT1FHSEJocHRwWDRl?=
 =?utf-8?B?Y21WQkxYSVBoWU1OWFZHajlyQXVjbmdBbjBrU2VRaWdpMG54VUI4NkRtTkRN?=
 =?utf-8?B?WTVRMmlmYzdudXFKalVNMWt6TVdHdWNtUnhPZ1pzUzRySjQyRUt3ZmRiekNu?=
 =?utf-8?B?RFBXOGszY2prampJS2lGV3FNT3VjNmk3ZmFjNEZabjlSaXlmZjh6dnJpMDhM?=
 =?utf-8?B?akF2V1dVUGFrYkRBVHZhc2VhWFU5SzhTQXo3UEQwV0R5bEdrcDZpZWZ3QnQx?=
 =?utf-8?B?ZUR5QmQ4Z1ZaRXFOeG4rNTc4bXZGS1Z4c1pDeGNOallJUC92ZjVBcGJsWnlp?=
 =?utf-8?B?YmZheDZoNmdhNEx2T1hRcWp5OUczeU5iOS9jellNVzdtb09jSkhmdXBYeUtD?=
 =?utf-8?B?UTVQTDJOODNoSjJJemE2VHpjZ3ZPaytZbCtBeE5tWjJmb0UzZE5RRDhNQWVU?=
 =?utf-8?B?MUZuQlU5ZUN1VlBKMnNidTR5ZVMraE5RakFwb0owOEFqajBrd3dSTEpFRHRS?=
 =?utf-8?B?RjIvbVdXeW9uSXgrM3hUSUxDTldFazRDdHJJUVZzTmI5Nmo4ZzdxRTY1R1FJ?=
 =?utf-8?B?S0MzSGYxelp5L1RJcXh1S2FubENZa0NzWkxTUWxZYUtNbWR0Vm9vL2I5OERP?=
 =?utf-8?B?UzU0a0NPWmpYN0lpS3ZUS05mampCVUt1NThpQ3k0NFVyZ2NnaHFiT1dDc2xa?=
 =?utf-8?B?Vy9HZGk2SXIwMDVudkdDQWRzVU5zM29IVnlSZlo1YjB4eXpnckdIR1FDai8v?=
 =?utf-8?B?OHA2bi9kei9BSm5QN3pRc1RNRTVXSXF5ck5Va0lpOXp0SDdKM0lBL21sdDdx?=
 =?utf-8?B?RGQzTWNVWG1ha2xMWjVBL1FJQVcveGhxZVJHVm10WmVvQUxyUDMzT1RqcW1o?=
 =?utf-8?B?MXhyUXhxdWtNTUtXK2szMjhaT0ZGV1Q5UmNpdG5Nc0FEMndSbDh0Mnh5RGpt?=
 =?utf-8?B?UmdzRWh5UlF0UzM2a3ZudUdjV0RldnQxanlnN1ZhRk9oL2xJZUE0V1hXVTNq?=
 =?utf-8?B?aE5lUEtlZDVua2RjaG1vZk5mdlE3TVFScjlwdXhwQkxxbVJXa25UVytCNVZL?=
 =?utf-8?B?Vk9VaGx2U1NMc0JjQzBBVHp5T1RxaDIyVDduSEl0bmRQZDNEL0JnQWpYaUF4?=
 =?utf-8?B?Vmo5cFQrUEhnb3RRQ3A1eFhPT05Va1lZQ0h3SXYzMXM5L2ltMFJYTW5NWXhV?=
 =?utf-8?B?ayswb2dsQldVRk0vVS9pMndYUk13OGZwZWUzeHFuTEZZTTJQckxkRmdnZzMw?=
 =?utf-8?B?ejY4YmUrUW9iR1I4YmZGL25yRjhrKzJET1hvWmJMUlN4bzZZRG1pYUZiMmxa?=
 =?utf-8?B?NllVTThidXlINlkveE5yVXV5OW4vdVloVHV0Zk5jZ0ZwR1ZzeERaL1krVHVz?=
 =?utf-8?B?S3ZtZ25HbTBBNlFQQUxYbFBlU1h1L2lkeDdTSUhMOGJjeVovWkcxSWhDUkhO?=
 =?utf-8?B?b3doZmV5RFhPVUtyWlZlY0M2bHpFZGVkSDdYdzZLbnJ3MnRHTHdPWmtGd0FH?=
 =?utf-8?B?R0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e968dc65-6ae9-41e6-2655-08db111983e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 19:02:28.7588
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZEEwSVmMvi9LVvnVM6uB3h4QZxj2DazqACh1r7uLdDnyGgP0Dbr3+7zF8Ur47zMYkvQS/pEp3PyxX4CA5q4dkP97fKDNI3cP5h0I8xbSIA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR02MB5128
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 19:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59247

Q2hhbmdlbG9nOg0KaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvdHBtMi1hYnJtZC9i
bG9iLzMuMC4wL0NIQU5HRUxPRy5tZA0KDQpTaWduZWQtb2ZmLWJ5OiBQZXRyIEdvdHRoYXJkIDxw
ZXRyLmdvdHRoYXJkQGFkdmFudGVjaC5jej4NCi0tLQ0KIC4uLi90cG0yLWFicm1kL3t0cG0yLWFi
cm1kXzIuNC4xLmJiID0+IHRwbTItYWJybWRfMy4wLjAuYmJ9ICAgICB8IDIgKy0NCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCiByZW5hbWUgbWV0YS10cG0v
cmVjaXBlcy10cG0yL3RwbTItYWJybWQve3RwbTItYWJybWRfMi40LjEuYmIgPT4gdHBtMi1hYnJt
ZF8zLjAuMC5iYn0gKDk1JSkNCg0KZGlmZiAtLWdpdCBhL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90
cG0yLWFicm1kL3RwbTItYWJybWRfMi40LjEuYmIgYi9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBt
Mi1hYnJtZC90cG0yLWFicm1kXzMuMC4wLmJiDQpzaW1pbGFyaXR5IGluZGV4IDk1JQ0KcmVuYW1l
IGZyb20gbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItYWJybWQvdHBtMi1hYnJtZF8yLjQuMS5i
Yg0KcmVuYW1lIHRvIG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLWFicm1kL3RwbTItYWJybWRf
My4wLjAuYmINCmluZGV4IDc1ZTk1ODguLmVhMjQzM2MgMTAwNjQ0DQotLS0gYS9tZXRhLXRwbS9y
ZWNpcGVzLXRwbTIvdHBtMi1hYnJtZC90cG0yLWFicm1kXzIuNC4xLmJiDQorKysgYi9tZXRhLXRw
bS9yZWNpcGVzLXRwbTIvdHBtMi1hYnJtZC90cG0yLWFicm1kXzMuMC4wLmJiDQpAQCAtMTgsNyAr
MTgsNyBAQCBTUkNfVVJJID0gIlwNCiAgICAgZmlsZTovL3RwbTItYWJybWQuZGVmYXVsdCBcDQog
Ig0KIA0KLVNSQ19VUklbc2hhMjU2c3VtXSA9ICJhNzg0NGEyNTdlYWY1MTc2ZjYxMmZlOTYyMDAx
OGVkYzA4ODBjY2E3MDM2NDY1YWQyNTkzZjgzYWUwYWQ2NjczIg0KK1NSQ19VUklbc2hhMjU2c3Vt
XSA9ICJkNTlhZmYzNDE2NGFhNzA1YjA1MTU1Yjg2NjA3ZjZiNjY5MThhNDMzMTA0Zjc1NGEzZmNm
NzYyMTZkZDlmNDY1Ig0KIA0KIFVQU1RSRUFNX0NIRUNLX1VSSSA9ICJodHRwczovL2dpdGh1Yi5j
b20vdHBtMi1zb2Z0d2FyZS8ke0JQTn0vcmVsZWFzZXMiDQogDQotLSANCjIuMzQuMQ0KDQo=

