Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8209FC52D6F
	for <webhook@archiver.kernel.org>; Tue,  6 Aug 2024 09:49:49 +0000 (UTC)
Received: from ZRZP278CU001.outbound.protection.outlook.com (ZRZP278CU001.outbound.protection.outlook.com [40.107.167.58])
 by mx.groups.io with SMTP id smtpd.web11.3712.1722937778875898736
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Aug 2024 02:49:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=suUc47Nd;
 spf=pass (domain: vrag.ch, ip: 40.107.167.58, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wQ4M9ZdRi+gbc1XDDmgkiCX5HqkgpmGT9yoUXoEw6o1RAAlsEXmJeZbqA2iokGcCHg6GcvEVju7CT7NC7RqWe/3XjrxD7T7z7ucN2dKR0huYfHLFBCiGMjhf1gYCLmXezl9nkk4TbZYiqF48t5tDpQ9OyC9RfaBaO78M2S6Y/H3+zCLp6bP2/GtuWnT66mrAuQCrqTDJ7KJojMmJgl6hJTNxkpwPtZn8McfbL9QR+aECBFXOzRugbjJQq/bp3JwlmygvHfKqezBTv9ZdlKI9AqXZJ2liIreu2ZKPJFN456ZtXWKgxdK+SZItCTot7HNuorTU1skDhDMBPl5Yx6/pTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FskvqsVdKxHCFD6684s/APhHDk12qjWtv7BfNWXmWQs=;
 b=g8GvVCImcQdfVae1rg88hRzCebW4j2OC7iLD0ftAiKVCPfo+Htmhk+VWLdvvK5KaenVSOpas+LWV//6RhOse3ammig2sKbdKLWIasMODLSZoPEUM76APxhQ3+rsxEcOn4wfXudnBVREDw1RYUXoCr0eN9pQK0mfX7L30hg/LdZc5wTpm0dz8QC3bpzQaakcLNqNhOCwwonVxcBdF/qXe+SJEiGk1vD4IoE4V8wjAj0C+UZJdePqgZAE5kTklTs+ebki1A1baQdCErN/4K0UOSSjFdm2im1CnG4cV7Tg8wC5VHgtizUCmRyRE2I8d1UajEAeweCc5HEUC9cJrUxSQew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FskvqsVdKxHCFD6684s/APhHDk12qjWtv7BfNWXmWQs=;
 b=suUc47NdtpeTS9DoVh7bLeXExxW2cWhj7iGL0tzZlBF8Mxw7sbdUafcRcItLOvY/r4TanrBjK990YiGynkNVVsEJYgHNVWNQ2+UjlQDKGJh6RIV/9S3Ilnu1c0hwc75dNn5fcWmaKRME9P9ywyBf3twIHfjexLUpNTtZTuO0h54=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR3P278MB1653.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:91::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Tue, 6 Aug
 2024 09:49:34 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%7]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 09:49:34 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: vmlinux has relocations in .text
Thread-Topic: vmlinux has relocations in .text
Thread-Index: AQHa5+XxkC15OYSF10S7QWlC5ZcIKg==
Date: Tue, 6 Aug 2024 09:49:34 +0000
Message-ID: <c66f0a874abf8e3530ea66f5de7a8b7c896e15db.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR3P278MB1653:EE_
x-ms-office365-filtering-correlation-id: c5241536-b3a4-4a11-70e3-08dcb5fd141a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?dmplTzd0Nms3ektpS1BKdjVmSmFOQUNIaU5CRDdpeG1pV1pqZGdGS0hrUXVT?=
 =?utf-8?B?VklyUGdNYXZpZ3JNTkdZQlp6MkxhY2NlWm1ENUtGazBXTDI3K0tDem1pRTdY?=
 =?utf-8?B?bDdHYmZ2MC9hcEhjSzFDT3plaHMrMFRqOFZxc09YSGxMcU1idTRRYU45UzdS?=
 =?utf-8?B?ZCt2cUhZblpLYk1GcERoNFNLUEp0enIrak0xcS9Xc1JtUWsyOVhZRVU2bUZv?=
 =?utf-8?B?OW1YZjNlaUhWaWdLNWpZRVpUTGk2QWhrWFRYZFUwNHJHcDRHMUFRSDZaQkpW?=
 =?utf-8?B?MCtYQ3RxZnhYYkxvOCtoNlJQTEovS1RXczdpN2V0NEpGZVprMWtZUnZuSXR5?=
 =?utf-8?B?bEpKTmlqNENXdzVjSWhEWHdBYmhwMURzOGFCQmF1YUZ2TGwrQXRaZzZneDhU?=
 =?utf-8?B?MGFHTUtNdHpBTkxlcDJhU2lETHAzNzlRNFVHVjRwSEZIKzd5ck55WVR3bGZW?=
 =?utf-8?B?czgxWXllYTVITW5rR3ZPeEQ1U2tUcG9hQkhUSlgvL1dxWGZvOE5pekM5cS8v?=
 =?utf-8?B?M3dYdm5yMEJ3OU02NHJQYTdJcmoydGdiUTJIN2FFRU80N2docW1jd3lxRUN2?=
 =?utf-8?B?NDVEMU9XZGN0WFQ0eGlQRTZUSVdXK3R2REtDN2pJb3hSdDFQeGtZYndPaWc1?=
 =?utf-8?B?Vk0zQmtRd1Z6blRYakNiNjE2WTJ1UzFkaFhGcUl5MXBkTHNxOUNmdDVvYnRU?=
 =?utf-8?B?LzgxVHh5cTNkazg3TEFNZWdRVm9JL0g1UG5tVDlWbGxhdUF5YUJzVFVIcjlO?=
 =?utf-8?B?VGVjY1ArYUZ5L1dKTDltSFY4TDk5U0ptUFh3SlZQN0hHUE1Ba2drRVhxMU1R?=
 =?utf-8?B?T2VRZmlhWERKQVBrTm5obUFtaWpUVHU3QmNvK2E2Q3J5L3l0SUFmK3VOYTk5?=
 =?utf-8?B?OXNIWENPcDFFYVo2ZlMzOStXTzlRT0ViTi93dDBWdUd2QzlEQkI4dmJwNmRn?=
 =?utf-8?B?cXMxT1VnN2RqaUhoRDVjRGZHcmJtc0lyVE5YNmxhUWNyU0JPL3FxM0Q4cjFx?=
 =?utf-8?B?WXJlUithVlQwZ3ducThQc2o5NmpyRFdYQXVYVE5pcTlxOFgycHF4WVZ6UDFu?=
 =?utf-8?B?Q29sZlJoaFZRU3pYMlF4YVhPT2hIb3YrV2xnbmNKVnMrc292TDdVOVVqQjlO?=
 =?utf-8?B?L2ZIbDJoQkdZdWdUcGNkV3VwVzFlOGo4L3M5bUhCelBtM3pQTDJlNDUxQk5i?=
 =?utf-8?B?R0JTTjU3UUdJMXgvZ09WcWRScnI0empML0NjNFE5RkVCbnJaUFlROTZ4SlFo?=
 =?utf-8?B?Z1RJZERWNWRYc0FmTzRxOWZQcUxwWkxnVlRHa0hsMDkxcU1hN2ZQeTJlODJu?=
 =?utf-8?B?RmV4YndKRCtQZk95SDFzSWtXamVCRXVJeUFLTTNmdENaTEdIdHZrd2I2OVZY?=
 =?utf-8?B?S05ZeEt2TWRPbFJIQ29RSkZGYUlSZzVLbmtERkRJT1dJR1htMFFzTktnL3dS?=
 =?utf-8?B?aTdvOWt3N1dLZGlLRis0UVZ2K2Y1d2czL281NkQrSGVCT0R5OXVEbDVVSkVK?=
 =?utf-8?B?M3d1UDRUdU5oSXdwaU5zamt1MVlIVjRtbzlFMTAvUmdweVhXK053SjJEMmcx?=
 =?utf-8?B?RGhyYTRYTXI1ZUREU1RCUzF2WlYrVkNDdERWS1RUM2lRblBSeUhscUlEVGVR?=
 =?utf-8?B?RDN1Q3VLK2d2WWpkQkwweEVEdmZQUHRqR0R1Wkc1aWJEUTI2UURQb3B2cy9F?=
 =?utf-8?B?UTQyUFcyUVRtRWFDZ3J4S0xrekZ4MjEvVnBmdHNVUldLbnJFZGNkSjhZTlVU?=
 =?utf-8?B?cGh4eitqMHM5Y3Q3eXlzOCthRDBxb3hEaFRXd1ZUWVYzKzA4SU55MG1KbE1T?=
 =?utf-8?B?N2lwazZvcE96SVJyOHFLQUhuZFllZ0VDb29HQ2s2Zlpsa005K240WGFjUnhV?=
 =?utf-8?B?RWhhUGJVc0QvN2VXQ29ReUNEeTJ1RVJPVU1hNHl3SzVBU1E9PQ==?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MW9HMWxnRWdmVndVVFU0ZndFWm1MSTZ2YjQyWFlKQUZKMjVRUGRpWXJnU2s0?=
 =?utf-8?B?OTB0WEE0QXhsQU4wTEUxTmVtNVg2K2o4OXBpckFIWFUxRisrSUt6SGpseE9l?=
 =?utf-8?B?R2FCaDlYWXFDUzIwKzVTME5JMFFkSlV6d0tJZGc4OHJtTXlheG01NGU4UHFD?=
 =?utf-8?B?WFhrSWlkVVh2Q1VGaE1ldEVuWUZJY3FEa2pDQ01JYkZ6NnhCeGNKMTdCeEFj?=
 =?utf-8?B?UHRaT0s5QVg4U0g4L0FaVFBBOTMwUkhHOCtTZ2xjWFRCVU9tSUErSElRK2hz?=
 =?utf-8?B?L3NsWE5jOHR0QVh6OFFYdzdnaXJldm1YN1FTcjJ6RTAxNE01MjRqSWMrSTBo?=
 =?utf-8?B?MzBoVkJJZG5TbllzSlRnQWxrTXhvalpVeXRCWVhjZStEeWlNdE1SMDNIT2lj?=
 =?utf-8?B?emFrTU1GR3diYlh6MkRncTJRRENIUmlQbkVxcXBmVVVTbjRxUUl0L0hja0My?=
 =?utf-8?B?QWZuVFNVQ0pKQm9yYTlURmx0NHA5N29JLzAwcm5SUCtaSWJQeXAyUldYWWl6?=
 =?utf-8?B?emtvWTlIL1p6bnBmd3E3aWF1N1VYa21iNnVxTUJpaEtFSWc0b2JUaUNVQUNM?=
 =?utf-8?B?V1h6M2w1RkVlZXhQcnhCUWhZV3hRS0pjaVJtTk9yUlFRRm9hKzFOdyticGhy?=
 =?utf-8?B?VFcyWTJmNnIyNFVDdFNzREp6d1FCRkxoa0R5NFZ2SjNhVi9hSUk5d3JGOWpo?=
 =?utf-8?B?SFlGWnpRZ0dDNE8zTktVZ0t1dnlOQVdWdTQySFdDMmdBL2cvVWtFT0Nqb2k5?=
 =?utf-8?B?UmIrdENESkNZZ2MxbzFFN0hVTUFoQlYzOVdlWnVkVnhWa3F5dG0vTWVEK1Q5?=
 =?utf-8?B?MDN0NU1NZ0xVOCtISkdsTW5Yd3htbkZMTStCemw5V1c1aGVFeDV5MzNVL0hO?=
 =?utf-8?B?VTVpMTMxaFZlakR5MDlDREVqMEg3RDRjcTlCV0hSR2F4QWhmd0RML2VuSUh4?=
 =?utf-8?B?eEV1VDJoSHhhNGJsOUJtTFBPUSsxZ1BsYXZ1MnI4TTJMWS9oTGZvdkg4cVVH?=
 =?utf-8?B?bGhsc2Y4TkJmZGlMNVhnNVJNaTFoT1h0Zk1wdGR4NDRsbk1wTGhTRXM3L0xX?=
 =?utf-8?B?UGJxQmJLMFJLV2NCd2xQSU9UMFZpWmU2VC9zckpCRGN2WjJJNVp1ZHVGY3hL?=
 =?utf-8?B?Y3ZTYVZXTTdqc0kzREVwdXIyckdsMktiWXpwQ3g3SmtycWZObnRWTnF6RVJy?=
 =?utf-8?B?OVdOSGNVenZIU28zOEZRWjl2bXFTUGNvNDhYeUFid3ZFK2U5UStNQlFnV3NF?=
 =?utf-8?B?NGJ6N3ljNGNLbERQS3QrRmNRTjQvSnlzNE9NRmdNM1JBWkJJVFVwRE8ySUFP?=
 =?utf-8?B?RnpiNUtvVGNxeldqTVdmaWc5TjNXUloxV2hvSWJ0MjN0eTNmTllFbm1jKzBR?=
 =?utf-8?B?SGRNWExBc1R0ZC9FQ3U0VkZuS3VBUWg2RXlwQXpPNWp2UVlHK0Z5ZVNCTFJJ?=
 =?utf-8?B?eEkwUitHczMxWkRUK09Ua2V5R3lxMmVyZk5NM3Y0VzQ0TlZtODlPRVlNL3ZG?=
 =?utf-8?B?cHdlSmZDUXc5RXV6SFpkTW9jb0tMNjJLblZycG1jTnd0Uktad2ZabUlpejNh?=
 =?utf-8?B?Qys1NmxlM3dEZVljTFAyNCtlVWljTytjbWhYSGdodFd5ZHRMR0l1d1ZvZ0dL?=
 =?utf-8?B?bk43dHIwcmFGMzlvRnVCK3JhYm9ZTjhodHhmZTdiYjkvbVhHLzRucE05R1Jq?=
 =?utf-8?B?V2NZN1hlM1ltNW82VUZ4UUd2eGxwaWR3K1Z4Vk5CT3k5VHpWZUlRaGMzaW9E?=
 =?utf-8?B?ZVJLYkI4a0NGdHV5T2lkQnJXV0NhNU5EZDYzNFRNUzhCRC9vaDFFanB6ZDQ2?=
 =?utf-8?B?K1RQbGd2bTJXNUpCd1Z2QXZML0pVQnQwa3ptQjArNHNra1FXaHp1T2pPQVNF?=
 =?utf-8?B?MjZDRkJGRkw5eGtOcUZsUExmQTNST1NQUm53TUdId3JjRHhhTFBreTNZZHlO?=
 =?utf-8?B?Q1JZWklJbTBKNkU5VFpyQll5S2I2QkdLMlk2Mi9MekxUUXJ5ejU3UndyMVFP?=
 =?utf-8?B?US9oL3hiT1lLN2NlUG4zQ3B0WW90bUhma0RJamV0ajAzMDBjcWs4VlpxU2dy?=
 =?utf-8?B?YU1jVUVFRHhubUwxYW5TU25vZjJBVEpwTlVSaXlqTDc1dkpVUHRzelhieElQ?=
 =?utf-8?Q?2yLUzjuI+h5hZMm7GTn/TB1TM?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FE0284FD6BF06B459E0ED6DC54DDF887@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c5241536-b3a4-4a11-70e3-08dcb5fd141a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2024 09:49:34.8241
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W35v8PqwoCzeZdBq2zzhwNeGTTDlVxQf7+M74PQEId+N8OFlX+IC+AXmEkq2iODx5n4XTs5W/v3+ViBBvzp4sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR3P278MB1653
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 09:49:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63663

SGkgZXZlcnlib2R5DQoNCkkgYW0gdXBkYXRpbmcgbXkgc2V0dXAgZm9yIGEgY3VzdG9tIHN5c3Rl
bSBhbmQgSSdtIGdldHRpbmcgYW4gZXJyb3Igbm93DQp3aXRoIHRoZSBrZXJuZWwuIEV2ZXJ5dGhp
bmcgd29ya3MgdW50aWwgcGFja2FnaW5nIG9mIHRoZSBrZXJuZWwsIEkgbm93DQpnZXQgdGhlIGVy
cm9yIHRoYXQgdGhlIGtlcm5lbCBpbWFnZSBjb250YWlucyByZWxvY2F0aW9ucyBpbiAudGV4dDoN
Cg0KRVJST1I6IGxpbnV4LWJmMTMzLTYuNi40NC1yMCBkb19wYWNrYWdlX3FhOiBRQSBJc3N1ZTog
a2VybmVsLXZtbGludXg6IEVMRiBiaW5hcnkgL2Jvb3Qvdm1saW51eC02LjYuNDQtcnQzOC12cmFn
IGhhcyByZWxvY2F0aW9ucyBpbiAudGV4dCBbdGV4dHJlbF0NCkVSUk9SOiBsaW51eC1iZjEzMy02
LjYuNDQtcjAgZG9fcGFja2FnZV9xYTogRmF0YWwgUUEgZXJyb3JzIHdlcmUgZm91bmQsIGZhaWxp
bmcgdGFzay4NCkVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvbW50L2RhdGEv
eW9jdG8vYmYxMzMvYnVpbGQvdG1wL3dvcmsvYmYxMzMtdnJhZy1saW51eC9saW51eC1iZjEzMy82
LjYuNDQvdGVtcC9sb2cuZG9fcGFja2FnZV9xYS40MTcyOTINCkVSUk9SOiBUYXNrICgvbW50L2Rh
dGEveW9jdG8vYmYxMzMvbWV0YS1iZjEzMy9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC1iZjEz
M182LjYuNDQuYmI6ZG9fcGFja2FnZV9xYSkgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJw0KDQpJ
IGFtIHVzaW5nIHRoZSBleGFrdCBzYW1lIHdheSB0byBidWlsZCB0aGUga2VybmVsIGFzIEkgd2Fz
IGJlZm9yZSB3aGVuDQp1c2luZyBOYW5iaWVsZC4gSSBjb3VsZG4ndCBmaW5kIGFueXRoaW5nIHJl
bGF0ZWQgdG8gdGhlIGtlcm5lbCByZWNpcGVzDQppbiB0aGUgbWlncmF0aW9uIGd1aWRlcyBmb3Ig
NS4wLCBjYW4gYW55b25lIGdpdmUgbWUgYSBoaW50PyBXaGF0IGFtIEkNCmRvaW5nIHdyb25nLCB3
aGF0IGFtIEkgbWlzc2luZz8NCg0KRm9yIGNvbXBsZXRlbmVzcyBoZXJlIGlzIG15IGtlcm5lbCBy
ZWNpcGU6DQoNCi0tLS0NCmluaGVyaXQga2VybmVsDQpyZXF1aXJlIHJlY2lwZXMta2VybmVsL2xp
bnV4L2xpbnV4LXlvY3RvLmluYw0KDQpMSUNFTlNFID0gIkdQTC0yLjAtb25seSINCkxJQ19GSUxF
U19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJQ0VOU0VfRElSfS9HUEwtMi4wLW9ubHk7bWQ1
PTgwMWY4MDk4MGQxNzFkZDY0MjU2MTA4MzNhMjJkYmU2Ig0KDQpTUkNfVVJJID0gIlwNCiAgICBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4
LmdpdDtwcm90b2NvbD1odHRwczt0YWc9djYuNi40NDticmFuY2g9bGludXgtNi42Lnk7bmFtZT1r
ZXJuIFwNCiAgICBmaWxlOi8vMDAwMS02LjYuNDQtUlQucGF0Y2g7c3ViZGlyPWdpdDtuYW1lPXJ0
cGF0Y2ggXA0KICAgIGZpbGU6Ly9kZWZjb25maWc7bmFtZT1jb25maWcgXA0KICAgIGZpbGU6Ly8w
MDAyLTYuNi40NC1NU1JfREUtZm9yLWJvb2tlNjQucGF0Y2g7bmFtZT1ydHBhdGNoIFwNCiAgICBm
aWxlOi8vYmYxMzMuZHRzO25hbWU9ZHRzO3N1YmRpcj1naXQvYXJjaC8ke0FSQ0h9L2Jvb3QvZHRz
L2ZzbCBcDQoiDQoNClNSQ19VUklfY29uZmlnW3NoYTI1NnN1bV0gPSAiOWJjZDExNmQ0YTEwMDFk
MDllNjA3MjI5MzViMzRmNWMzMzdlNzIxYzUwZDY3YjIwYWJlNmNkZGU0Y2ZhMTZiMiINClNSQ19V
UklfZHRzW3NoYTI1NnN1bV0gPSAiYWJmYjYxNTk4ZTM4NDE2NWUyYzJlNTk3ZTIzNmQ1MzNhNjI0
NjVhNDdjMThmNGI0NGJhMzg1MjEwZGM0M2EwOCINClNSQ19VUklfcnRwYXRjaFtzaGEyNTZzdW1d
ID0gIjNhYzEzODRiNjkwYzZhZGFlMzZiM2NhMzRhZTNjYzA1ZjEzYmNkZThjZGU4OGMyNDA4ZDE2
Y2ZjNWFjNzVhNjEiDQpTUkNfVVJJX21zcnBhdGNoW3NoYTI1NnN1bV0gPSAiZTZlMzFjN2Q3MGU5
ODgyOWY5MGRmOGU4NTY3YzBiNDVmYjhlZmFhMzdhN2ZjODI4NWE0ZmI5NjYwMmM4MzhiYSINCg0K
S0VSTkVMX0RFVklDRVRSRUUgPSAiZnNsL2JmMTMzLmR0YiINCg0KTElOVVhfVkVSU0lPTiA9ICI2
LjYuNDQiDQpQViA9ICI2LjYuNDQiDQoNCkxJTlVYX0tFUk5FTF9UWVBFID0gInJ0Ig0KTElOVVhf
VkVSU0lPTl9FWFRFTlNJT04gPSAiLXZyYWciDQoNCg0KIyBPdmVycmlkZSBDT01QQVRJQkxFX01B
Q0hJTkUgdG8gaW5jbHVkZSB5b3VyIG1hY2hpbmUgaW4gYSBjb3B5IG9mIHRoaXMgcmVjaXBlDQoj
IGZpbGUuIExlYXZpbmcgaXQgZW1wdHkgaGVyZSBlbnN1cmVzIGFuIGVhcmx5IGV4cGxpY2l0IGJ1
aWxkIGZhaWx1cmUuDQpDT01QQVRJQkxFX01BQ0hJTkUgPSAiKGJmMTMzKSINCg0KLS0tLQ0KDQpU
aGFua3MgZm9yIGFueSBoaW50IQ0KDQpCUg0KRGF2ZQ0K

