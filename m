Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA973C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 14:33:50 +0000 (UTC)
Received: from ZRZP278CU001.outbound.protection.outlook.com (ZRZP278CU001.outbound.protection.outlook.com [40.107.167.36])
 by mx.groups.io with SMTP id smtpd.web10.52823.1737988426359516512
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 06:33:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=xxM3eRs6;
 spf=pass (domain: vrag.ch, ip: 40.107.167.36, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RAepv2VihUGaE9jSi01U4VoMr9Rrd1GyOVQpCv3A7jdEWNKnMMtbjircwvCETLAYgSWx2M3L9HaW/MtsYfzhw9D/EGjmdyKYEjSCKQck1glJotuVv66Nze5JmTzciVIlMB5kStKwNGQELIMYSW70PZCYOEQQ4CENJw4EERb7e+Y3Qf1ldjPembSkEJlVz56/3STtT/5jlMZuauvhnCjFTg1ZnfVz6CAfM5GczfJekSmu+3/OBKsv65Nf2OnBSkmYRkK7XhC8d5eEUVWEvYEvbZSSH1Rkd+333IfjEn5XjjNIf28PSgehQcKoGPh0yHQ2V7uE0vcBnQ0YmXtXAP5PAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z9lnK3HARrsULJQs3DdeteNgDY5hURnBWX5QaWMiEOo=;
 b=mcFeYaT4o/Qm+6gYDxpOtpCGPA1fotdNj5bzZhHdIPTg3bcAtjGUAfK03kKvFpOr0Gb50r6AfhyjXUYJzT21FsV5dMz/82IaBujxwX0XHWZo2UQUmJcpGjKI45wYfzHNbO4+JqaE+QIsAsmN8B72CGRp+PnoXSiTxtarL89ria2bN1ROJlwxquWvgtyeZyq2w98sZEhCo5Z6H0CQYY9+FcOYjYLkgyadAIyqVDAmjd46CdC0uwSQNLmNp3FmXMYh3WOl/Z81DrwQIwPGbqfqG07VWH6GPOy+Ne3dLStz1sOEuN/wcNt5wUpYWFW4Qsey1EjsJntDcnYWO4AcVOoO6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9lnK3HARrsULJQs3DdeteNgDY5hURnBWX5QaWMiEOo=;
 b=xxM3eRs6bXguTYnrM5pOioxn+iRVFM4k9nxKID0pV85nCSzAeKj4tB5sbImSRYF3vYIE5MaMCvYcKx5/CyS2cnLkTa1rclTC4i9JR0ez8K7jJBLaKPIqHtz3wEErNqeSMU3AreQ9WT7eRoW1Wq5OwZhGwgJFhZOdwpldBVJJm/Y=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR2P278MB1083.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:61::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 14:33:42 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 14:33:42 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
Thread-Topic: [yocto] kernel append file with dts in SRC_URI and subdir
Thread-Index: AQHbcKxSky5zFidL60yEzgkj+l00n7MqqToAgAAGWIA=
Date: Mon, 27 Jan 2025 14:33:42 +0000
Message-ID: <a1657de15b95836d7694155634388de223edae86.camel@vrag.ch>
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
	 <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
In-Reply-To: <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR2P278MB1083:EE_
x-ms-office365-filtering-correlation-id: ce1ebf08-bb10-4727-4b80-08dd3edf98f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|4022899009|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?enlSeTdwK3NyTkxkd3VwTFRsZjluZlprQnFLUHFsSGhKWnJTUG9uMUJ1SHFO?=
 =?utf-8?B?ckdWYTgyWW05K2hqTkN2WUJrMWNRUlQ5SjdtaEVhaFpoZU4vVGczUDFqTTJ5?=
 =?utf-8?B?aEdEVEN5VGNXRXBQRWJlNXUyd0xlU2J0N2FmZjI1dThONE1OYmxCQThHMXZE?=
 =?utf-8?B?UUJZWGh1K3VMM2tOTWRKa1BuYTA0QjV4U2ZZdkV6SWQvQmo0VkdyMElESndP?=
 =?utf-8?B?MjV1MnpQTHU3a1FnMGtMUTg5MVN2YWxHUk9xTDBFU2l4bzYzK2VRdGQwU2hv?=
 =?utf-8?B?QlhidW9pK0xQblFESDlJTTJ5bkd6VTN2RVFtbnN2cFpkWHdvMmt2Qks4RTVG?=
 =?utf-8?B?MTF2ZGxuYUtCL1dxZVZEbUk1Z3pqSHBHdis2RDY0dFRWdXJGQXhIcWxzSzBo?=
 =?utf-8?B?OTlReEp2Mm9XM2NXT1ozOFo5bVlyN3hCWmVFNEEva2poUXhEV3NXUnlDQVNh?=
 =?utf-8?B?MXRXdXVOVHlaLzQyNnZiVUtBNWNCci9NYzhXWWttTloyYzRCVnNIcEorVU5n?=
 =?utf-8?B?OGhjeUx0d2drRUhYN0hCQU9NS3NUL041MVhXc2pBcEhjQkpDNDBDNnhpVFlD?=
 =?utf-8?B?My80bkNaK0M3SWV2WkwrUkswQnZwMVRtc3R0eDNRTXFpOXlSZ2pwZE1iM0xT?=
 =?utf-8?B?T2FjempkOVpOZFZZNW1ycFVUMFdtbzBaeTkwTWRUdXhRUU1WUTh6emNBa0Y5?=
 =?utf-8?B?b2ZGSGxhcmRqU3I3TkNuOWJwdzNHbGZlUkxZbytHT1ZNTjFSOUEwL3RvSWxS?=
 =?utf-8?B?Z3ZzemdBWENla0hQek9XK2FzZ2E2QjM4cTg2TWZrRFRHSTc2TnZ2cGIvV05y?=
 =?utf-8?B?TXBVWlBlRHIydG0vSGZRYjRlS1ZxVzIwbkRMdUI2cU80cUMzWDJnWVFWb3ZO?=
 =?utf-8?B?K2Y3dFl6UGVRQ2thUlFYeFRPUUJnSXlxOWZaWWhCWll4Vlh1Vy9VMW5TSklO?=
 =?utf-8?B?OXV6b3hhUmNRUlkwcDFURWNmQTJZdzlhcUxlRGNlRTY3UTJENGpIQ0MwQ0wz?=
 =?utf-8?B?RVRFc1V5cFUva1FRMjN4ekh4T3pSNnVUVnorSDBRWlF5UFh1cEthVGFLRG9l?=
 =?utf-8?B?NklIc1lScUxTYUhjSVJkZzRqUVdvZjAxUjRHY0xnemd5V3A4dVB5YkFvMTRs?=
 =?utf-8?B?N0RpSXJMNlUwL2NSZUJGRm5jdm9xdmNQbVgrRnhIZkF4bURwemNsdmx6UHJH?=
 =?utf-8?B?MjJXLzBDNUpOV21JOS9JUU00YkN5cnQ0Y3pNSkVpSm5scE14NzdKc0ZWakRq?=
 =?utf-8?B?YjQzbTViT05CcVlDRzRaWEtFSTQxVklwRnh2OTZYbzk2T3prc3JXWGhwY1lF?=
 =?utf-8?B?SE5XUm9vUHo3K0xzUVVFTklySGhzeGJuWVp4SzRROHlhcklXNWJ1cXNZRHNv?=
 =?utf-8?B?UGNUdE5vbWJ1SFVJN3pxWDFYMXhudmFSbCtKYTBBUENWVXBNcnd6YXpHQzdl?=
 =?utf-8?B?MHRCc29OSGFxKzhZS0xoeTBrelVZSDNRdGhHdTJRUTJjRit4TGl4YWlWdWN2?=
 =?utf-8?B?cFhDSnJsLzgzQmQxcHBDcTl1eC9nSUUyM3N2Z3BwM24zTzBaQ3IyK0prNFZl?=
 =?utf-8?B?bGsveEhsRW80eE9qbnJCNG1wQ2VFNi9sQktsMmFXQVdOb3NPaHlJbDVHZnov?=
 =?utf-8?B?M0ZNWlhtMnVMUmw3ZlZCTUk4cG9kWXQ4SFJ0d1ZSbElPenZ2bFJmZjFldkpy?=
 =?utf-8?B?a1BYR3FRbzVzdThWM21SYXcwZjMveVNuUVJNNVdUU2J1STRwRmlUeGFaVUdS?=
 =?utf-8?B?NGhqL2VTaE5CMDNFYzAzWEI2MzJ3T0FqTWh5Z2t4bXdHUEVBL1plV2t4YmhL?=
 =?utf-8?B?clE4STlLSFQvbXR2Slpzd2F3cm0rZE45NjNka29EMkt3TWFKUFhmQXg2S2ND?=
 =?utf-8?Q?6baps0Ys05RqN?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(4022899009)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MDg4S1NIc084ZnRHOWtEUUZMUk9BTCs2YU4zeXdtWHZqZlpiRE94ajJNTUlT?=
 =?utf-8?B?Q2RuK1ZYNzliQWsxUEpLb2F3RTFkUGc1bkNaYVhKU0NDYm1aM0M0VkpkMGhZ?=
 =?utf-8?B?Y2d0NGd6RG5VUGpZcWRSelNsQzF0QTZqQWJPM0tDcGNhS0Q0RFRwVVpaZFlp?=
 =?utf-8?B?MmpUZHk2ZDYrN1EwWXlhL3B2VEF6VWJKakQ0bGt2U1JkcjdscS9nRUVLZ2Jv?=
 =?utf-8?B?RTg3VElidDN3bzdyRUFqY2FwNE5YZisvd3JORC9IeVpYak1OS2Q4TFNSbFZz?=
 =?utf-8?B?YVpmbXRFT3F6TDVhczR6Z2thbGVHbE1BWmdqWWRoQXNhK3ZLZC9GVlJveXVL?=
 =?utf-8?B?YkhYMzZ2bitYSjdTV3grdHJJUHJYOWVNdUpOOUJ3cklqYS9VWTVUQ1g2VUtV?=
 =?utf-8?B?Snp1V0NiakozdWJsOUxxaVptQm13dFgzVjh0bDNBbE11b05rNE5taW5abVZq?=
 =?utf-8?B?dGdxaHRTYTh3cUNHTlZSQXc4N0NJYkxFdWV6cTFzTHVhT3FtVk1mWmxhcW5t?=
 =?utf-8?B?RkdSb0c1ZldRWGRBaXBpcS83VkZiK3REVWkxTk5oYU1LdThmZVBQdGN6ZUlH?=
 =?utf-8?B?d044UjdGY1BsbGw5ZTJma1FzTVNQMzdsVzVsQzZuU2ZvdFF6VGZ4cGl6QVhs?=
 =?utf-8?B?dCttd0t6SmxyVlMvODIzYmpETndJb1hIek42OVVyMDdQK1NLTTBvSk80MVpW?=
 =?utf-8?B?SDl2ck50L0ZyMGZMSjgrUW85RzB5cVkybmQ4L0MxaUNwM0RiNk4wcHo4QlFh?=
 =?utf-8?B?dWMrcXJvQVMrODFFNG5lWVdNS1NPTC9HKzdhWG1FSUVxOGFKaVJYb2R4c3li?=
 =?utf-8?B?UnExdFZxR3c2TjJ2THp0QTJBR2ljREVqSGc2V1ovaTRaaGlhUGZMMktjQVFu?=
 =?utf-8?B?bzV3MWI3bUZtQUtnd0krc2hrc3JoWEdTeldxeWZTY0E5NHdCaFNhc2hJKytY?=
 =?utf-8?B?aFpZNm5DRlhRQ3gzalBkbzhvYWJ6RkFiUmFyYndaRDQ3dGFkNmRLd1Eva090?=
 =?utf-8?B?RDUxR0JRTkl4WWhyOEcrNW5ZT3B4Mm90UVJ0QU5pTkpPMVZUcC9yZ2xjZEhP?=
 =?utf-8?B?bmlPT3hqaVErUXlLQ0lzTi9zTGJsSVBRUU4rdDRWM2s2TnhtMGwvWDBEVnNy?=
 =?utf-8?B?QjNScGpKaEN6bEFIL0kwZXpWdmZqanZ0c2RBU1dUclkzanBJQ1BRWFIwT0dt?=
 =?utf-8?B?eGgwd1Z3ZEpMYk1WUG5GWkNOb2JVSzVKK2ZPelVaSUFEcWlKeXlIUmZycU9U?=
 =?utf-8?B?Tm5aVE9taElhUE1Id0NzeGg2NzR1a3hiMzVTS2NZeXBuRVJvOFkwblh1blE3?=
 =?utf-8?B?Y3UvajhlNWtxZ0FrN1NxZHk3d0RsdjhKMFZNYzRLNFFYaGZSUitpTCt6WS96?=
 =?utf-8?B?eXlnNG01RWlESm1rK1pCRzFEODc5Ly8vZTd6dDI4YUhaRVJHY2owQmU1N0pF?=
 =?utf-8?B?UHVKSkZDd3lXclFoTEp4aEhLU0h2N3hROWx1N2tXRmwzRDAvYnErL3JWTkdD?=
 =?utf-8?B?UjRpZEFPY3AxSlVmNXphTm1GaDFjbC85dFJYYlgwdUJOR0x1T2JHOW02QjJQ?=
 =?utf-8?B?TGZZaVM3QUs2eDVBc1pDTkdVVXN0WU9KNlZ1Qm5iQXhxLzJrR3puYjg3RVB2?=
 =?utf-8?B?VC9kQk4xdERxRTE2a2Zta3ZGRndzdTc1T2dmTzBjbkw3M09vUVVYM3RVazBH?=
 =?utf-8?B?bTBTU0tITnp1eUM0T2hhdXgvNlJNNEFSdC9sY256SWhaQ0JFemVyYktVKyti?=
 =?utf-8?B?dTcxZWNuZ0htZnZrVDNvbXdpWlZMd1NzS1VzN3UwcDZXUi9PL0VaNTN1aElL?=
 =?utf-8?B?d3JEN1AyeUV1Ui9Kbmw0OHN3YkNqU3Y2clZCdmxydUoxRUMyU0VURFdnUWtQ?=
 =?utf-8?B?TjJndGdOTyt5U1BkOTNNQVZwUXB4YU5EcUJqQnRQV0R5Tk5OTS9jMmNtdm4x?=
 =?utf-8?B?ajFsMlNOTzJxQnZDdGhjMzFvOU81dDdwaFEvak8zRTVjdk1acDh4TlNleHJr?=
 =?utf-8?B?QktiZmNrNEVKVnU5bi9meEo3MVgxT25CY0xNWS9TWHVZUDJrZDMrWW5GeHpR?=
 =?utf-8?B?WnhiOHIwQkZRcCtRRzJEWExsWkE2Y1MvUDFTS2xkMWlldkRxWTZDbGVUdTAw?=
 =?utf-8?Q?6S3kcjHy8ch2apFzrW6TMOFKd?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD17E38FC2572D438EB565E51D272738@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ce1ebf08-bb10-4727-4b80-08dd3edf98f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 14:33:42.0820
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sg4hl9Om1LEsNpJtxQXp8MD4mMI53WXCOPTGODOcjMuLqyDPvDLMbfywLCTB9sXVzi22yXfbAYb7gMPRGnsX4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR2P278MB1083
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 14:33:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64639

QWggSSBzZWUuIFRoYXQncyB3ZWlyZCB0aG91Z2gsIGFzIHRoZSBuYW1lIGlzIHVuaXF1ZSwgaXQg
c2hvdWxkbid0DQpjb2xsaWRlIHdpdGggYW55IGV4aXN0aW5nIGZpbGUuIEJ1dCBhZGRpbmcgYXMg
YSBwYXRjaCBzb3VuZHMNCnJlYXNvbmFibGUuIEknbGwgdHJ5IHRoaXMgaW5zdGVhZCBhbmQgc2Vl
Lg0KVGhhbmtzIQ0KDQpBbSBNb250YWcsIGRlbSAyNy4wMS4yMDI1IHVtIDE1OjEwICswMTAwIHNj
aHJpZWIgR3lvcmd5IFNhcnZhcmk6DQo+IERlcGVuZGluZyBvbiB0aGUgb3JkZXIgb2YgdW5wYWNr
aW5nLCBpdCBpcyBwb3NzaWJsZSB0aGF0IHlvdXIgZHRzDQo+IGZpbGUgDQo+IG92ZXJ3cml0dGVu
IGJ5IHRoZSBhY3R1YWwga2VybmVsIHNvdXJjZS4NCj4gDQo+IFRyeSBhZGRpbmcgaXQgYXMgYSBw
YXRjaD8NCj4gDQo+IE9uIDI3LjAxLjI1IDEyOjEyLCBEYXZpZCBEYW5pZWwgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+ID4gSGkNCj4gPiANCj4gPiBJIGFtIHRyeWluZyB0byBm
aWd1cmUgb3V0IHdoeSB0aGUgZm9sbG93aW5nIHNuaXBwZXQgb2YgYSBrZXJuZWwNCj4gPiAuYmJh
cHBlbmQgZmlsZSBkb2VzIG5vdCBwb3B1bGF0ZSB0aGUgY3VzdG9tIGRldmljZSB0cmVlIHNvdXJj
ZSBmaWxlDQo+ID4gaW4NCj4gPiB0aGUgcHJvcGVyIGxvY2F0aW9uOg0KPiA+IA0KPiA+IA0KPiA+
IMKgwqDCoMKgIEZJTEVTRVhUUkFQQVRIUzpwcmVwZW5kIDo9ICIke1RISVNESVJ9L2ZpbGVzOiIN
Cj4gPiDCoMKgwqDCoCBTUkNfVVJJICs9ICJcDQo+ID4gwqDCoMKgwqDCoCBmaWxlOi8vZGVmY29u
ZmlnO25hbWU9Y29uZmlnwqBcDQo+ID4gwqDCoMKgwqDCoA0KPiA+IGZpbGU6Ly9jZjIwMC5kdHM7
bmFtZT1kdHM7c3ViZGlyPWdpdC9hcmNoLyR7QVJDSH0vYm9vdC9kdHMvZnJlZXNjYWxlDQo+ID4g
wqBcDQo+ID4gwqDCoMKgwqAgIg0KPiA+IA0KPiA+IMKgwqDCoMKgIENPTVBBVElCTEVfTUFDSElO
RSA9ICIoY2YyMDApIg0KPiA+IMKgIA0KPiA+IEl0IGFsc28gc2VlbXMgdGhlIGNvbmZpZ3VyYXRp
b24gaXMgbm90IGFwcGxpZWQuIElmIEkgcmVuYW1lIHRoZQ0KPiA+IGRlZmNvbmZpZyBmaWxlIHRv
IGRvZXNudGV4aXN0IHRoZSBidWlsZCBmYWlscyBlYXJseS4gVGhlIGRlZmNvbmZpZw0KPiA+IGZp
bGUNCj4gPiBkb2VzIGdldCBwbGFjZWQgd2l0aGluIHRoZSBzb3VyY2VzLXVucGFjayBmb2xkZXIg
dGhvdWdoLiBXaXRoaW4gdGhlDQo+ID4gc291cmNlcy11bnBhY2sgZm9sZGVyIHRoZXJlIGlzIG5v
IGR0cyBmaWxlIHRob3VnaCBhbmQgdGhlIGR0cyBmaWxlDQo+ID4gaXMNCj4gPiBhcyB3ZWxsIG5v
dCBwbGFjZWQgd2l0aGluIHRoZSBkdHMgZm9sZGVyIG9mIHRoZSBrZXJuZWwgYnVpbGQgb3INCj4g
PiBzb3VyY2UNCj4gPiBmb2xkZXIuDQo+ID4gDQo+ID4gSXMgaXQgcG9zc2libGUgdG8gbW9kaWZ5
IGEga2VybmVsIHNvbWV3aGF0IGxpa2UgdGhpcz8gV2hhdCBhbSBJDQo+ID4gZG9pbmcNCj4gPiB3
cm9uZz8NCj4gPiANCj4gPiBUaGFua3MgZm9yIGFueSBoaW50cyENCj4gPiBEYXZlDQo+ID4gDQo+
ID4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1l
c3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gPiBWaWV3L1JlcGx5IE9ubGluZSAoIzY0NjM1
KToNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzY0
NjM1DQo+ID4gTXV0ZSBUaGlzIFRvcGljOg0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9tdC8xMTA4MzY4MjUvNjA4NDQ0NQ0KPiA+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBs
aXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4gVW5zdWJzY3JpYmU6DQo+ID4gaHR0cHM6Ly9saXN0
cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWLCoFtza2FuZGlncmF1bkBnbWFpbC5jb20N
Cj4gPiBdDQo+ID4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gPiANCg0KLS0gDQpEYXZpZCBE
YW5pZWwNCg0KVlIgQUcNClLDvHRpc3RyYXNzZSAxOA0KODk1MiBTY2hsaWVyZW4NClRlbGVmb246
DQorNDEgNDQgNzM4IDMyIDA3DQoNCldlYjogaHR0cHM6Ly92cmFnLmNoDQoNCklTTzkwMDEgemVy
dGlmaXppZXJ0IHwgU1dJU1MgTEFCRUwgTWl0Z2xpZWQgfCBMZWhyYmV0cmllYg0KDQoNCg0K

