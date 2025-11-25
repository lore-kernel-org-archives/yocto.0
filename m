Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4D5CFD364
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 07:52:27 +0000 (UTC)
Received: from GVXPR05CU001.outbound.protection.outlook.com (GVXPR05CU001.outbound.protection.outlook.com [52.101.83.24])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12322.1764057137264650349
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 23:52:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=J2o3N50/;
 spf=pass (domain: siemens.com, ip: 52.101.83.24, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCeF6B1XGsYHIZVbzy1QulbVLkUzKi47R5yUUuTFinRGBJhzIYTPIPO4fJ1RZB0M8LNnEuUFmIbHAPmZYa3dC4yEpcSpAb1jucz8InCFnzzHm4Pb0CjgKD8TwIEogfJPOJAlNFh0GTT2qEG3lpbhtswqRxYkhr7X/nRbVPaNECLg6cl6fy8IyaWemRNy8rsXP9vIRWNCGItXUwQwASgMvYDYqhkNyqkCS4LE1lvOiSw5WCg1DRi4vkaOuXbNmhb9hcvOdDtQQ08aEdiJCEeBooYx0G/OznipXXAkG/5UCLOqLrxHwEyrVTgTGwwzxqOeohp0sPZrAYQ4XYLzdQpyFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0eBzCLbshncIeRW44ys3BzE4MHR2ubX91nIxN0wsee4=;
 b=MoNprRFz2KWPgMWUPsL6cCrZi8Ge4w2siI+JxdYxudU8ro5IhJFUeZPnGk5HniGR33f8/l/0tweQRU60PqYex0KTrCB4+hqpvXQzvTypnyuhFsutRFJFzHLuVCGK9bjbKl0bybdDAyrz3zy5s8VQ7mNNCuu8y0GDYbpQ9xEi2mxAZuZ3eSWHBEIyGLEzv5n9KywfKjUHB5sgO544HVJzA4IwMWB5JZ8Z8+Nmfj/XSyFb2CYPGy0lFxqyM5toz1jFydoMqUdtHY51/FGx8c56xDvLFzwRUx/A67fORdLUzH2gH7Bn0WbPQ8yfi1DCuh/0o9M1RSqTAxj39tznwwQrdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eBzCLbshncIeRW44ys3BzE4MHR2ubX91nIxN0wsee4=;
 b=J2o3N50/WODFlZu3c1vL//eBWFdC1xrzmHXnoCP3CJDQ950eDVCd90GJnwHSYswsWu4b8Q7kb24k4sw1x1PaMdZpUI5SXecFMMQ2snFxvEU/0TPXEnoGIG7Ab4GnKHwmNJ3VYC8QYCxRTra024dE5XL4NLeA8+9aI6ZPBhvftjyEyPIN6Q9Ghm1QHtivGjebROVbd2rtmgzF+C9fOQnK9ZuAPTzTojMTlKbhruBV/cxpO419S4Sv8CJoqL1DUrnwa8pB3ZD7eW4dTVrWMtKFSoMKo7Zc+CI0+ZjdYXjbEI+V56GrdTizWnvgnbP/iB9ZRbQr7oztZcMcDt0CIueH1w==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by PRAPR10MB5250.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:290::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 07:52:12 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 07:52:12 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mwen@ambarella.com" <mwen@ambarella.com>
Subject: RE: [yocto] [Poky-Scarthgap][OpenSSL] Whether upgrade OpenSSL to
 3.5.x for Scarthgap.
Thread-Topic: [yocto] [Poky-Scarthgap][OpenSSL] Whether upgrade OpenSSL to
 3.5.x for Scarthgap.
Thread-Index: AQHcXd344JPoLI7VEUuIfdInOIheLbUDBHhw
Date: Tue, 25 Nov 2025 07:52:12 +0000
Message-ID: 
 <AS1PR10MB5697FC319CCD9A0BD7D549C9FDD1A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <iRKs.1764055991245768371.SmVd@lists.yoctoproject.org>
In-Reply-To: <iRKs.1764055991245768371.SmVd@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d12732af-0609-4d4f-8594-1301e9a02994;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-11-25T07:50:00Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|PRAPR10MB5250:EE_
x-ms-office365-filtering-correlation-id: ddcc35d7-d3bf-4eda-0cf9-08de2bf78b09
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|7053199007|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?aGRpaXN0UXlRUldJU2tHU3FHTFFsWHRBaWlpNlVqdWllUDJhK2ZpSGZKVWYx?=
 =?utf-8?B?OGswb25NblpJTlZqUXBzanRRSDllWkk0Sy95Ti9xSUpMUXFCRmtZSDZEbVRS?=
 =?utf-8?B?ZVhiYnIzb1h3S2k0a01iU1o2Z0pLcWtiQ2VvMkRjT1hBWTNWNnIwQ2FXdE9V?=
 =?utf-8?B?R3RpNFB4NVozZTZ6Zm9ORjdob1BZYmNQb1JSS2t4VmdpREp2djVtcEJPMkt6?=
 =?utf-8?B?a3JUUDExN01aNmlBUjhUVTVTL0VvaEF0dUJqWks0L0dhb1g1UnBqSytOSU83?=
 =?utf-8?B?V1luY2VyUDRiS2FjRUZabDMzYklUVGhOc3pJdXlVOUFqTlVYK2x4Sm5wM0t4?=
 =?utf-8?B?bzVBck9GTXVZRmlKVVNJUlpQbmc5N0FmNno5bllMcjd4cjlWb05aNnhRUSty?=
 =?utf-8?B?cFZtWUYxSVhFZHM3S28yMUF4SVBDYVBWalZqWDlnaGZXdmd2VkdnRGJqMUJV?=
 =?utf-8?B?eHF1UkZZSXFnWFZFTEtab2xObXFJS3VZWlFEdzJORHQ0Nk1pZS9acVFWK0Vo?=
 =?utf-8?B?TXNXN0ZWT21hN212aFdJQTZmbXUraUVNM2JrbG9kZTBFUW5ZNXZPZWk5Zmpy?=
 =?utf-8?B?ZVpDWDUyY2paTjFxcTAxS1hXU0FnOXhvb3kzQmQ3R2JocnZ2REg3NnVsd0Ix?=
 =?utf-8?B?L011djRpMUlBZkplSS84NkJmUy9NZittdmRsbis4MGlJcDU3TTlUZHF0VHFT?=
 =?utf-8?B?d1YvcEF4R2lHNzVpUDVDcVFraVFFL0lHL2FjN1BwSFJ1Sk0rN3VFcDJVWjND?=
 =?utf-8?B?Z1g1czBmeUswNjJlekhaN1ladkdQNkFlWXh3bFBSUzV0UnFVUHNNODQ5OGRo?=
 =?utf-8?B?dWdSMWlQYkpKc0JCb3RQemZ2eFJvMTV2U2dLNWhkalplcnVIVlZqZlBuSEJP?=
 =?utf-8?B?TTNNY2pUOUh4UGdGeHBQYmdKMDJwc2JSOWFGWUJiOHlwZDN2cjY4M2RlSkdq?=
 =?utf-8?B?ZFVRbWhWK2IyQjQyaU1VSlNjc0twWlNWbVk3MU9abUFPclNHKy9pTFNwL3Fp?=
 =?utf-8?B?YjY2U2xHSW5mVkx3bjVya05IdzE1cWtxdkFNcS90RXM0ZlQ4aVFEcEwrR3hj?=
 =?utf-8?B?aUZ1SUttTHkvNnk0TEw0RHpSYkoxSkJJR0lzNTlMNnV2WUZKSGdqcXlDRW5O?=
 =?utf-8?B?aUVKcUpMbXVtcU1SbXF4SmhyUFI5V1RZaFAyZ0M5ZVNicGV1bm5jSE1wTWxz?=
 =?utf-8?B?ZG5yMXJsc1BKSktndWNReHE5aFgzeWpZdGFyaytWNkFpZjJNS0NLcUwzRHZF?=
 =?utf-8?B?Unhrb2dCMDlYbHo0d0RjNEhZYkdoUVV2YnhJQXpPSEd1dlZBMzRJZzd2MXZ4?=
 =?utf-8?B?dnVhZ3VlVmI4RUg4MnJxbmhwLzR3eTVWQzc3Z2RPNitzQUhwcm9DZDVoMWRx?=
 =?utf-8?B?aU9WWW5xbDRscXhPdGV6bTBXczZnaUdXYm1QVkFpUGFteUs2UlBndDE3UnZG?=
 =?utf-8?B?SlgwbTdyUzZBdGU4cWFrSDR5bEtUR082M0x6Yy9ScHNUL3JzdmJTRFN3TklT?=
 =?utf-8?B?K3hmcWxRbjZUVUN5STdhdGpQRVd1Uk1oM2Y5TGlETGVUSThmYk93WkliNUtQ?=
 =?utf-8?B?Wml6dFRXVFN5aVQ4RS9pTlcvL3ErbVdYS0U1UDdiSnlDSWUvQjVJZ2xNUXMv?=
 =?utf-8?B?Qm5RZ1hKdHQySnZ3eC9oNnNlMHNOUVBUQmZBOFBDOXNqZkJZc3o5b2RrdVcy?=
 =?utf-8?B?cXpHZGNiV1cyMGdXOEltNEMzb2J0TnVFUGNqZnUvSDYvdXZCRzI5eFBVZGMw?=
 =?utf-8?B?UENtbXVXR3Rzclh5RUo4cVl4cGZSS1p5cDZTemtoVjZJWDlHUG9ZT2pPOGdU?=
 =?utf-8?B?QlYxeVlpQUVvUFYreW8xSnUxbzMxakd3RzNPdndMWHIrOTBXNjVrOUpBb2d3?=
 =?utf-8?B?ZjlkcCtIcFJVKzJmQ0g2TWlhQWdTbmYxWm1KT1M5M3o1MmlVUGhSSm5nSElW?=
 =?utf-8?B?TFc3dTdLa1ZKd3VKZjhYWGk1NHMwOFh6QW9neUZpY2RqeCtrdnkwU2kydHpB?=
 =?utf-8?B?ZTlYSFptS0FNWHg3dHRIMHdHNnJxQUNjVkhKaE1sYWkrYUk0RmxrNkNKRlJI?=
 =?utf-8?Q?5CDDxd?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UkFCMkhIdHgrUzJNbWhzUURCQ1hkNjdLZ2VWQm9JYitQc3d6STlDTUhXTEl6?=
 =?utf-8?B?RlZiOGlPeEdkc25HT0lTV01RQWZ5SGNjTzgwc0JSOGNyYzV2bzdyQzRlbVZU?=
 =?utf-8?B?ZDNneUZENlJkMHdRV0tSSjQ3QnF1Q2VKbzR0eXNycFZjdjljM293cmNIZTZj?=
 =?utf-8?B?UnVpd1EyelZrMStzay9zZEVxQTdsenV4N0NHSFZORWgzbjI5YWxGNkZLVlUy?=
 =?utf-8?B?WUpkeFhHM1VzcHNlRXFUQU5pdE5YNDZvQmw5MmswNDc3aWY1TzJVMVlMWXRL?=
 =?utf-8?B?YnFKN3JzdkNuRE11WFh6YXdHb3BCL0RjbXNNUTNwM0QwQzdweldKYUovc3c0?=
 =?utf-8?B?WWRmQW5UYlMxSTloU0o1NmsxTjVLNllJL1VYb2F6TGExUGVKTk1wN3VtMGNv?=
 =?utf-8?B?YVFPRjFZVGVtNnFlK2ROS3VUS0h2aUZLWnJsQjdqdDhNeVlSOGFhUlRibDZX?=
 =?utf-8?B?UENnQzZ5RmZlQlNqelJVY2ZCTWJpRGkva1N0WkN0RUFlUlIycFFOd1VFWU5D?=
 =?utf-8?B?aXhJRTNDalN5dlVYWnpDQUc1MmlTVk9KeXo1cnFkeXdKSUlUTk44a2c3SkNp?=
 =?utf-8?B?U1gxVVU1L1JKMWlERDl3SGR3b3JzV0c1MGx1MjI3UUJqcWhQYWxuREdnSWhN?=
 =?utf-8?B?UHVVTWtHU2dXdGliT0J5WkpoK3B3OXVXUzFZYTl3eHpBTXpTa2FiaU5HQkR5?=
 =?utf-8?B?dFJXWnY4eUlzem02S25iTFNoSCs3K3p5a0Q1Z3o1c1AzWGJhS1E0VStBZUxN?=
 =?utf-8?B?Z21QUmlHQ1dFeG11bVhvR1hvWFhxY2xqNU13TGlTTGwvQm0yY1RObk1ud1Zz?=
 =?utf-8?B?SFRwY2JYRjBLRTlEdzIwZHJvTWpTa1N3REJNNGtyMGl4aFp2VERTT05vY2lS?=
 =?utf-8?B?VUd4UmxqeUJlRDBRdVNvcE5wYW1jR0NLaDBqSkJzYUw1eTNwQ092MmlPMUdE?=
 =?utf-8?B?TXFvU0x5bVM4UzY1bnZKZnJsRU1CTTYwUzZ2N3ZaNWlRczBZTmNpdEdWT1hy?=
 =?utf-8?B?MEZNWjluZW5kVmNiTFk0UnlRdThJSFJDN0kzNW9yem9BdU1ITlJpSVVNMHB3?=
 =?utf-8?B?MnhHdWFtdlpBRmtDTGhMOERKUjJpUlFLSW1WNjFZcTd4aGNhUm5JdWdhSGRW?=
 =?utf-8?B?ZVg4WEUvWThNSnF6Z0R6bXdnWHhvTnRtRTZNK1RuQ1ZSWHJZaTBxNGVub1NB?=
 =?utf-8?B?NkxJdUJMMzhLSW1uQmFza29xWUFReDhEZWQ0SklPM0duaEV6Wk5lcWtuNlV6?=
 =?utf-8?B?c0UvdGw5T1Q5OGNoUHI2VUIrbHQ2UVJLZ1d1OTFrU25HVnp2UHpaQUVFZFFp?=
 =?utf-8?B?aVFTNUFzeG9kV1VPYm9PaVM2NW1hdEhJdzNINjJGRHVzUWVxQkFQdTJKZ0w0?=
 =?utf-8?B?OUdwTFJSOHNpdk9RcVZpS3p6ZHBITGpobEdjcGdzQm14Q2hqQWRWSGl0QlIr?=
 =?utf-8?B?OWpUTjFjQzJWdlhyQzFoUGxBQ3pzUldsWlRPam9HTWVjTG5BVGw1VmNaZUl0?=
 =?utf-8?B?KzVLSGREb0tEaGpwK3h4OFFGdVdJdDdzVE5VUFNqdlNpTkQ2b2paQVJEU3lh?=
 =?utf-8?B?NTVaS2k5cWp3L2s5TW9tQXFveUJaaVlBN2xjYWF2YTc1K1pmS1hzRnVTRVJs?=
 =?utf-8?B?OSthWlh0NFZ3bFgwYkVxZG4rdGp2T3AyNW1xMWdwVDdKaTlLY09JVjRiSERC?=
 =?utf-8?B?cXJ2alVaNkpxSktqb1BVMGU5Z0tTekJUTTdZUDdVZWdKZ1liZjVPcWUrMjVY?=
 =?utf-8?B?dkRPQjlRNDhiYU9ZTk5abDJERzR2WmcxT1E5Y3BBZURlUDlEWHU2R20rSk1V?=
 =?utf-8?B?eVRIYTA1ZXVUWkZjMUluWUk3VktoUWdkN1g5WDR6N25jdlI4cWhJd3h2T1hi?=
 =?utf-8?B?R25IOWZ0TGNzNVFxbEI1blAyMERDbU9LdnBOSHFXcCtoY0xaTENZWmlVRnlO?=
 =?utf-8?B?eXBENCtmQzE3cXk1Mk4zV2QxdkUwc05FMjZySTNremp1S0NzRzVnRzRXa2Jv?=
 =?utf-8?B?TDBIeVh6aWNZVmE3dXZiWVRwd2lWN1FwMGxBVml5NndmbW1COVo4SlJkZmp2?=
 =?utf-8?B?OVBRYURaUjZnUFpnQlhDUElrTGhwd3o2bDRQZnhMV1gzblRia2l0am5Scnox?=
 =?utf-8?Q?ztIbQwnuAhzeOdz0ZLuiWtK1m?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ddcc35d7-d3bf-4eda-0cf9-08de2bf78b09
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 07:52:12.2656
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2M6zc25r88QTo3SMRddY3M9SD7d5EP9F7xxpfYIquwxiTm4V7wNBkCJqRgioitS8qtcDJm0wVamsEiNjirRB4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PRAPR10MB5250
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 07:52:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66053

VGhpcyBxdWVzdGlvbiB3YXMgYWxyZWFkeSBhc2tlZCBjb3VwbGUgdGltZXMuDQpQbGVhc2UgY2hl
Y2sgdGhpcyBtZXNzYWdlIGZyb20gWWVzdGVyZGF5Og0KaHR0cHM6Ly9saXN0cy5vcGVuZW1iZWRk
ZWQub3JnL2cvb3BlbmVtYmVkZGVkLWNvcmUvbWVzc2FnZS8yMjY3NDINCg0KUGV0ZXINCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YNCj4gTWlu
ZyBXZW4gdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU2VudDogVHVlc2RheSwgTm92ZW1i
ZXIgMjUsIDIwMjUgODozMw0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBT
dWJqZWN0OiBbeW9jdG9dIFtQb2t5LVNjYXJ0aGdhcF1bT3BlblNTTF0gV2hldGhlciB1cGdyYWRl
IE9wZW5TU0wgdG8gMy41LngNCj4gZm9yIFNjYXJ0aGdhcC4NCj4gDQo+IEhpIFlvY3RvIENvbW11
bml0eToNCj4gDQo+IEFzIHlvdSBrbm93LCBPcGVuU1NMIDMuMi54IGlzIGdvaW5nIHRvIEVPTCBi
eSB0aGUgZW5kIG9mIDIwMjUuIERvIHlvdSBoYXZlIGENCj4gcGxhbiB0byB1cGdyYWRlIGl0IHRv
IE9wZW5TU0wgMy41LnggZm9yIFNjYXJ0aGdhcCBhcyB5b3UgZGlkIGZvciBQb2t5IG1hc3Rlcg0K
PiBicmFuY2g/DQo+IA0KPiBCZXN0IFJlZ2FyZHMNCj4gTWluZyBXZW4NCg==

