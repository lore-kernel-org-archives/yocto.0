Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3957BD1CDC1
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 09:07:14 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.104])
 by mx.groups.io with SMTP id smtpd.web10.14199.1729588028033506104
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Oct 2024 02:07:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=TsXHJ5R8;
 spf=pass (domain: optimeas.de, ip: 40.107.20.104, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LivtJ7kB6P/zy/o4oZhiDtHXlba3aj4Fc4irnnlLA6UPII0KfBjIOTdsAgnFS3CbYVrsGey5PSC4XwtRSt7a22E+Ui9/ryX2N8kaVIJ9SKoqxTbViryN2oOhxckWpAWAzDpuLdU04BZgXKFpv0cCWzhELeG9O8fIhJrRIw+yTcMfDUAR1izTIjkh+aX9wVePZhyFdHRnKL1zXYWC47MbZmw7UjF1G0Ra4nvU2MfdvcrbscrA2gCxi88CJ+e03ho7o9Qh0rIgu5mNp0E34UZMj7tREtJld+61zXcQXeRmm5zjQw00pBdcnIgoLwzjs6sA8uOsoQzyDG9ui2U2hoDrMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z+3g8sM95ELbNiN1E+Mc9zf4k432is8fFdWjvh+4poU=;
 b=dZPNl/RiaHnToVnQLx1Djtx2GcbUQC2KuRZgUfrlYpF9ondwN1E/Br6r6dfcZsZ/8EXOqR7pgj7nHpG5D/7dCGF/BhOimrDTdnvYJN+Icre+FhMGtQ6i+rcoIagreKKYO+vulD4NgsYTWfOXnhSfqpcf+OUyka0CDy9DcYmhWjHOo/BaIpJ9VMk6tZbBkQFoatHUHcyPz6H7FbsfBznxWJLaqD4eWUuul1EgJHBdgZOd4wKm8qTWcaQnrqRcZ7lQ+arxVYxbW1at5njRR0fjN8IzGkjDJYkrLR7HH9unrVl6QF4Crd3UDeY62IvETh3F8qG2n5A25OV1/UHqL1cxLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z+3g8sM95ELbNiN1E+Mc9zf4k432is8fFdWjvh+4poU=;
 b=TsXHJ5R88GSQaBTrthUblv4jZhOrhLUcb1JSSCiP++i/CsiO6x7e56hsBfGZqDF0eEPNF8iRkKiZHXmSI+VZKxh844HlR3SV6bj4sAWJgSyyf54+7h7CDThAeOd4A8fUo1AUUz+FcNTtgOPMhFQjoIXMuQwJafdWcSl1Uw0HyNg=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by AS2PR10MB6774.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5f2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 09:07:03 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%7]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 09:07:03 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Strange problem when extending the linux-firmware package
Thread-Topic: [yocto] Strange problem when extending the linux-firmware
 package
Thread-Index: Adsjksk5+RykX+C8TzCTp1YZKHQvaQAD4AgAAC0nTfA=
Date: Tue, 22 Oct 2024 09:07:03 +0000
Message-ID: 
 <PAXPR10MB5277BD134A82CC1BBC53DF32994C2@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <PAXPR10MB52772C5FC76FBDCB1FF4341599432@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj83XvvQdzDWyHEL90PpYi1QbsfR1VMOT2BGgHsLWqtZXQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj83XvvQdzDWyHEL90PpYi1QbsfR1VMOT2BGgHsLWqtZXQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|AS2PR10MB6774:EE_
x-ms-office365-filtering-correlation-id: bdfd2a16-ea66-4ae1-5d00-08dcf278e521
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|366016|376014|1800799024|10070799003|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?SUJmRkluNzM3MGV4cU9VV2IwaHFmNThyNDFEY1JlbDBOYWQyTFhEZW04L09D?=
 =?utf-8?B?TGlQbEMwRW90R3VPemZMVnh5U29rUWorRStDSC9NazRMeHZ1dGcvS2VSSFBI?=
 =?utf-8?B?M04rLzlxTExYVkpOUUVHcUIwV1JueGorWFBWejlOWThKNFQvanJQaVR2bHgv?=
 =?utf-8?B?VW1EOHdRRkZIWEVJMVg1SE5YUXY5YzNTc0pVclo0aHNvRnZMS3kyUFVRR2lU?=
 =?utf-8?B?NysvanluS1pGVEtRZHdYeHlWbGtQeG9jNWV3eXpYa3ZlZnVTanJlclE0SnFU?=
 =?utf-8?B?WGttZDkrSjM3eVdpcU5QQkJTd2RHcktaTEZVRWltWnJ4VEFqTXdiemdKZmw2?=
 =?utf-8?B?YUorb09xZXdZUU9yNy9JRFB5a05qZFRDd29rTTU0YStyeEhBUjFaTkdZOGx5?=
 =?utf-8?B?cnJlUjc5S1FMbmpJczdQYlY4NjloSFhNeVVnd29JUmJnd25HQXlGcm1BMnhG?=
 =?utf-8?B?UFpYcm5WVzRPRUdEQ29VVngzcTdDWDNPSGE2ZHhxQTh4bjJiVmZGR3E3QzJG?=
 =?utf-8?B?alA5bHlrYmYzQ2JLWkpZQ0paenovcmZtWlFucVhZblZiNTFNc0d0VllyVlBm?=
 =?utf-8?B?MmVQdzR6dElNdnJPWXF5SVJqVWVab2JLY2Y5WDRQSWlXKzNUa2kraUszLzJr?=
 =?utf-8?B?MUptVEgzdEl4Wlkvdnpnd2NjUjJUUk1yQXowOHUxNGh2YjlQV2M1NEwxTFJv?=
 =?utf-8?B?QVAxdEdVbmhrblQ2TjFpVmM1bHFNQmQxcmJuRXN1RXNaRmlNNVZPbzVYUHlF?=
 =?utf-8?B?MU9KL2Z5aXpHVmdjanh5VDVmN0RPVDk4bzZYRWNxYnpsZ3BxSlVGYmFoQ1o5?=
 =?utf-8?B?Q1JpaEtTN2hzSDdYYUlhNHVmTmdCMlBBVUpOSFVpYVI2VFl3eW9zbXVCSGZs?=
 =?utf-8?B?WDdoZ0p5UjBYQUN0OWtxQ3JyQTB4c09BalBkMDdoMFUzbXlsY1BEOEk0bVNk?=
 =?utf-8?B?aXUxRjRGU0lMQ1hMdlc5MVZlM0p2dDVERWJCdXd5K2lPOG9TMEVxOHBFMmMz?=
 =?utf-8?B?YmRLRW5ad1FIT1FPUFFmejFmQ0FIMlN1YmMzbTYxKzJ3bXdmdmZ0YUZHYS9o?=
 =?utf-8?B?OWswN295L3paS3N6aWdBVzdTR2JqS2JMT3pIUzdKcXFPSmx0WXA3N3RRanNI?=
 =?utf-8?B?bzJHMHYzbEp0TzdONmcxQUdXU3lwNE5UaE5IMmloMUZkTlUxRkprb1c1TnZ6?=
 =?utf-8?B?TkpVUm0xNWJOcDZGRWlMdVpvWjFtOEJpWmlXV0hQUlZ5dlNSamovQUhtR1J0?=
 =?utf-8?B?R0E2QmRCdDZxVXp1VkZWS3RKV3NDZVZsRDdscnJIdkFzSWg4aHovT3I1Mjln?=
 =?utf-8?B?NUpGdVoxOHU0aGUzSVFQVFhoa2d5NktENWlpblZNNzBlRjh5VlBmQWdGZ08w?=
 =?utf-8?B?eTVlb1B6N3lhOHpnVkpQd3BHWTFaemYyOUdtRVJiTjQ1SWpTeWlTWlZhbTR4?=
 =?utf-8?B?ODd1cTkzUFp5M1Mzcm13SmRHZzY3T3VwRysyUTEwNXdrSDZqdjhyN0hjUldY?=
 =?utf-8?B?eGpkYXd3c2xCa3VQemlDUk9PR25HWjdWb1NXNzNvTDRKLzMzUFVldm1IaHFp?=
 =?utf-8?B?by9NaUVURWw5YmZnUnFERWp3aU93aWFZdmVKK1ZYV0ltTnN6OVNpZWpkc05p?=
 =?utf-8?B?QUx3cFc1V2lsMU5NRk9YZXkybllGUzVQZ3NpRFp5MXI0Q05RZUhtdG5CSE1L?=
 =?utf-8?B?Y1RDRCt2bTczQVMzNERHSlZocmRheEhuNks4ZlBLNTRzZ0lKdCtFOUQrckdR?=
 =?utf-8?Q?2S1zOwQHZQCzh79rj5KlXuif9EIA/MKlN+1C2yN?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(376014)(1800799024)(10070799003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UVpvRzBDTVF4bVkyQTVmM2xhVDd4VFZML0hTMXpvaXp1dENUcVhJRHNyTVpD?=
 =?utf-8?B?UmpZU3AvbFBzZ0lEN3pBM0VDdzQ2d2g2R2hwbmt4Vm0wUlhDQ1FoUHoxVjFk?=
 =?utf-8?B?cWw5OWhEMTQxY0wrZFNqdFlmOGJTSE9mM296UXJCTWtUaWtIeVB0M3ZLLytB?=
 =?utf-8?B?UkVOWGErNmg1ellGbWJ1VjlKcnZhZ0hMYno5KzEvY3hKQUtZaXFBL1JuMG05?=
 =?utf-8?B?Z0t6QWRpUU9HcFA4dWxja3NrbWV0d1FGMTRRa1pCUExHTjNLZUdDZFA5ZWkw?=
 =?utf-8?B?SDZDU2NvdnkwVTVPeUlKNzRVV0t1aGJMcGNob3BnaHVOUzJDUDFlUkRmcjhU?=
 =?utf-8?B?dkNQOW5tTkJaVDVkUDV2cGlBTDN3Tjl3K3NqOE5ISjduVnBUMEIyT244a3Ay?=
 =?utf-8?B?aldYSTRoenMxaUgvTi9mTWhORW9SMjFYQWVFZEI4SXhiUExPRk9zYktEQ1hR?=
 =?utf-8?B?eHJJbmNUQXFYdDlOd0hsZDN2cytnc3lyYllhYU5LaGlpTlhxbWw5UG1OUmV3?=
 =?utf-8?B?cjQzV3UxVktDQ2xnSkVHUDB3Rk5zb25JNURVeFdMQUROZEZ4KzJhZ3pINU5z?=
 =?utf-8?B?N01DbUxoeXBBTEFKZXZRV3g0OElwODN6bkNLbnRSUWUvbXhnWXVTa1ZkemZr?=
 =?utf-8?B?M3d4bzNsenpVYk84RjZsMnlXMGFHWkhKbkVvaStkaVVWR1dZVTE3S3V2WFFV?=
 =?utf-8?B?cVlqYlpJV3JqdW1LSnVNZUUrSTVNTWl1KzVRK3JlWFVGT1E5YXRmMXF4MVgy?=
 =?utf-8?B?a2I4VlVFTS9NZUl2Q09wa2Z3Y0JzRkpWVFBvTVJYQ1NjZlR4ZDJPTU1lVzVQ?=
 =?utf-8?B?Q25JSVFFNGZacFJkVEV4RXdXdzNGemgxdlBBQzFFQ3FvT0NjZkxCeGVJTllw?=
 =?utf-8?B?NkxKNUhlMCtoUkFhUkwzTDNEOFBLTkttUFFoK0VJbGpiQlZUUmRkampGVU9U?=
 =?utf-8?B?YmNUU1g0ZmNYbmlSbnhtdjRnSW1STEhENlozRkZHZ3JOdktkY1hNVjI2Ni9N?=
 =?utf-8?B?OG1MaXZHNmlsVFhjbjF3QmgrZHNmYjBkZHo2dExhRk42UHNHNWNTcURaWGR1?=
 =?utf-8?B?RU40clp5MkFNa0QxMWZ1dkpRSm5zQmVUL3M5ZWd1V3RjcmVKY1Y0SXUzZ2NU?=
 =?utf-8?B?bGc4NW4vZ1c4SWJ4WmpXZHhXeWJ4OWpWSnlXbEg2NElIS0RzVjlyTDZrUHFl?=
 =?utf-8?B?RFpCcDgrdGJLbk1VelpHZFdTV0tFLzVsTFQ4MURWcVhCdTZlUGlML210c3dZ?=
 =?utf-8?B?OUZKS3NiNWNvTHN2YjlWUnA2RVA4cE5yUExlTHhZSE4zT2Y4OWhsS3BiU01C?=
 =?utf-8?B?NDMrVUREUE5RZVJMZkU0YmE5d0F1eXJ0aGRtRWYvNDgrZHcrOC9ZUUJwaEEr?=
 =?utf-8?B?eUU2U2hjZm1nZlhrU01sNHQzR0JHOHJtdlFhanJULzFnbkhTNUtOcU1jUFZq?=
 =?utf-8?B?Nm45T1Y2cFA3UG5OU1RkaHAxV1drWDlIVVlxWXFXb05FUVV4bzlJdWsxSFFx?=
 =?utf-8?B?SjZ0b1hBa1pVcE1sRi9JcHJoSWR5SWN4Wms4NnlnZ21YVHFBZy9JeHhmRFhr?=
 =?utf-8?B?cnpZQ0JNd0w4aUIranFZUzV3T1RmYmg5UWNuc21uenRTYlg4aDNpL0xFQy9T?=
 =?utf-8?B?UkoyM3d6RngyNkVFQmtqQkdUa25adVFkUTg0dUJkNk9DR3A4MGE0Mlc3TEZQ?=
 =?utf-8?B?dTdibUlHWEdENytSdnQ1UnNWTFVOZGtXdHZQVWVHQWtOL1BLZXNNSlAwbkdj?=
 =?utf-8?B?UEFWdHRWTXRtZ2drbGRrNEZvRDU0VXMvcWFQZHlwSUlBVzF6OTAxMlphY3E5?=
 =?utf-8?B?ckpSK0pzRE9JRFZWMWZyVXVOQTU4ZUZ5STlCc0YvVFVuU3hycWIzTGxTeDZ0?=
 =?utf-8?B?OE9KOGs4M3N4UUdhNEE3N1c5UE9Odkl2OGc5SzE1em5kM003b21ybDhkMlFs?=
 =?utf-8?B?MDVvTDhCUmRnRnFUa0NBb0Ruanp4bHpDVE1rajdHK1hUOERqekg3T01kdnRi?=
 =?utf-8?B?ajNYMEZoS09mUVZrdDg3U1lXaDI2dWlzYW1YUlhvR0V3cENkRlhWUEt1QmV6?=
 =?utf-8?B?emVNT3VGeFVqRTcyTWpOQzRRRUp1QmtQT25uNDZLWUQyM3BFOHpnaVRHM1Ry?=
 =?utf-8?B?VU5LSEpkOWV6bng1SGR0L2I2bml6Q0pGWXhZWGtrNkkvbm80SjVBVFFuYUlW?=
 =?utf-8?B?VHlFYVlldmhkR0RTU2UyVTFsVUhNRE5odkdMVnljMFBkM1RmdFZVdG13b1Z4?=
 =?utf-8?B?WTBBbkdvMVNoZzFpWUxXQmx1WUh3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bdfd2a16-ea66-4ae1-5d00-08dcf278e521
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 09:07:03.3335
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Rf9UBBlhq0L4t2Qq/GV41+XWFKmVJpxU+05C/Y7RE2StTykkHuE9L8TFAvqTjEK/0a/5VJ0sGJHVREp63cef8GLB4CxhpMuOTKv8JOPQv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB6774
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 09:07:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64079

SGVsbG8gQWxleCwNCg0KSSBoYXZlIG1hZGUgYSBzbWFsbCBzdGVwIGZvcndhcmQuDQoNCkV2ZW4g
d2l0aG91dCBteSBjdXN0b21pemF0aW9uLCBzb21lIHBhY2thZ2VzIGFyZSDigJxicm9rZW7igJ0g
aW4gdGVybXMgb2YgZGVwZW5kZW5jaWVzLg0KVGhlIGNhdXNlIGxpZXMgaW4gZ2VuZXJhdGVkIGxp
bmtzIGZvciB3aGljaCBtZXNzYWdlcyBhcHBlYXIgaW4gbG9nLmRvX3BhY2thZ2U6DQoNCkRFQlVH
OiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIHBhY2thZ2VfZml4c3ltbGlua3MNCi4uLg0KREVC
VUc6IGxpbnV4LWZpcm13YXJlLXFjb20tdnB1LTEuMCBjb250YWlucyBkYW5nbGluZyBsaW5rIC91
c3IvbGliL2Zpcm13YXJlL3Fjb20vdnB1L3ZwdTIwX3A0Lm1ibg0KREVCVUc6IHRhcmdldCBmb3Vu
ZCBpbiBsaW51eC1maXJtd2FyZQ0KLi4uDQoNClRoaXMgY2hhbmdlcyB0aGUgZGVwZW5kZW5jaWVz
IGluIHRoZSBpcGsgZmlsZXM6DQpEZXBlbmRzOiBsaW51eC1maXJtd2FyZSwgbGludXgtZmlybXdh
cmUtcWNvbS1saWNlbnNlDQpTb3VyY2U6IGxpbnV4LWZpcm13YXJlXzIwMjQwOTA5LmJiDQoNCk5v
cm1hbCBwYWNrYWdlcyBoYXZlIG5vIGRlcGVuZGVuY3kgb24gbGludXgtZmlybXdhcmU6DQpEZXBl
bmRzOiBsaW51eC1maXJtd2FyZS1ydGwtbGljZW5zZQ0KU291cmNlOiBsaW51eC1maXJtd2FyZV8y
MDI0MDkwOS5iYg0KDQpJbiBhbiBvbGRlciBzY2FydGhnYXAgd2l0aCBsaW51eC1maXJtd2FyZSB2
ZXJzaW9uIDIwMjQwMzEyIG11Y2ggbGVzcyBvZiB0aGVzZSBsaW5rcyB3ZXJlIHJlY29nbml6ZWQg
YXMg4oCcZGFuZ2xpbmfigJ0uDQoNCkRvIHlvdSBoYXZlIGFueSBpZGVhIHdoeSB0aGUgbWVjaGFu
aXNtIHdpdGggdGhlIGxpbmtzIG5vIGxvbmdlciB3b3JrcyBwcm9wZXJseSBhbmQgbGVhZHMgdG8g
dGhlIGRlcGVuZGVuY2llcyBvbiBsaW51eC1maXJtd2FyZT8NCg0KQmVzdCByZWdhcmRzLA0KTWF0
dGhpYXMNCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KVm9uOiBBbGV4YW5k
ZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4gDQpHZXNlbmRldDogTW9udGFnLCAy
MS4gT2t0b2JlciAyMDI0IDEyOjE2DQpBbjogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzsg
TWF0dGhpYXMgS2xlaW4gPG1hdHRoaWFzLmtsZWluQG9wdGltZWFzLmRlPg0KQmV0cmVmZjogUmU6
IFt5b2N0b10gU3RyYW5nZSBwcm9ibGVtIHdoZW4gZXh0ZW5kaW5nIHRoZSBsaW51eC1maXJtd2Fy
ZSBwYWNrYWdlDQoNCllvdSBuZWVkIHRvIHJ1biAnYml0YmFrZSAtZSBsaW51eC1maXJtd2FyZScg
YW5kIGNoZWNrIGhvdyBSREVQRU5EUyBpcyBmb3JtZWQuDQoNCkFsZXgNCg0KT24gTW9uLCAyMSBP
Y3QgMjAyNCBhdCAxMDozMywgTWF0dGhpYXMgS2xlaW4gdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPG1hdHRoaWFzLmtsZWluPW9wdGltZWFzLmRlQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPg0KPiBIZWxsbywNCj4NCj4NCj4NCj4gYSBmZXcgbW9udGhzIGFnbyBJIGFkZGVkIEJs
dWV0b290aCBmaXJtd2FyZSB2aWEgYSBsaW51eC1maXJtd2FyZV8lLmJiYXBwZW5kIGZpbGUgd2l0
aCB0aGUgZm9sbG93aW5nIGxpbmU6DQo+DQo+DQo+DQo+IEZJTEVTOiR7UE59LXJ0bDg3MjMgKz0g
4oCcICR7bm9uYXJjaF9iYXNlX2xpYmRpcn0vZmlybXdhcmUvcnRsX2J0L3J0bDg3MjMqLmJpbuKA
nQ0KPg0KPg0KPg0KPiBJIGhhZCBhZGRlZCB0aGUgbGludXgtZmlybXdhcmUtcnRsODcyMyBwYWNr
YWdlIHRvIG15IGltYWdlLiBVbnRpbCBhIGZldyBkYXlzIGFnbywgdGhpcyB3b3JrZWQgd29uZGVy
ZnVsbHkuDQo+DQo+IFNpbmNlIGFib3V0IE9jdG9iZXIgMTggb3IgMTksIGFkZGluZyB0aGUgZmls
ZXMgJHtub25hcmNoX2Jhc2VfbGliZGlyfS9maXJtd2FyZS9ydGxfYnQvcnRsODcyMyouYmluIGNh
dXNlcyBhbGwgZmlybXdhcmUgcGFja2FnZXMgdG8gZW5kIHVwIGluIHRoZSBpbWFnZS4NCj4NCj4g
SW4gYSB3YXkgdGhhdCBpcyB1bmV4cGxhaW5hYmxlIHRvIG1lLCB0aGUgcGFja2FnZSBsaW51eC1m
aXJtd2FyZS1ydGw4NzIzIHNlZW1zIHRvIGdldCBhIGRlcGVuZGVuY3kgb24gbGludXgtZmlybXdh
cmUsIHdoaWNoIGNhdXNlcyBhbGwgZmlybXdhcmUgcGFja2FnZXMgdG8gZW5kIHVwIGluIHRoZSBp
bWFnZS4NCj4NCj4NCj4NCj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRlYSB3aGF0IGlzIGhhcHBl
bmluZyBoZXJlPw0KPg0KPg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+DQo+IE1hdHRoaWFzDQo+DQo+
DQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVz
c2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBWaWV3L1JlcGx5IE9ubGluZSAoIzY0MDU4KTog
DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNjQwNTgN
Cj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTA5
MTI4Njk1LzE2ODY0ODkNCj4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcNCj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9n
L3lvY3RvL3Vuc3ViIA0KPiBbYWxleC5rYW5hdmluQGdtYWlsLmNvbV0NCj4gLT0tPS09LT0tPS09
LT0tPS09LT0tPS0NCj4NCg==

