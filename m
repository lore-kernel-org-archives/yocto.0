Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41035D2C54A
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 12:49:35 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.129])
 by mx.groups.io with SMTP id smtpd.web10.17368.1729601368534298642
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Oct 2024 05:49:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=XK3ud5eH;
 spf=pass (domain: optimeas.de, ip: 40.107.104.129, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lGoq6VZ4056wwwOXkUqKXVcb2vIFFpfwdo3ebRlWUVeVvjB7QXk+jHG/YkMKTx2RqWvAopfkwh1YvoUFWyBxgVJYGMvbwcc9lwsNYqmOyEyrFsqwr8OrjgUNGaEzNks7X98iQEYDFXDlJdu9Lxi2FQnG3p44F8zIsu+9wjFGkgd7GhjvKnylK+F+uo56/m6aTZ+DTQUS1z7lfLW4O9Frws30rIglFcu3/RprNN/9PN9xkg6G5fICWog9H4yUeXe/YgiTBe4YObj4N77wyNF414NkmxojvDFLD8bnfou+gabes477J6o5DH4zURnQjp0Rre96SSbJOfuU3CasUUIa3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fq4pPmyaC9MXrX++/4yjkE40zNhQhrV9AYSKW0DNyrE=;
 b=TiX7qNwVVo7j7LpLpsYaP1KA264cIozbcSPKHJUg2XQGxy0/4g6dNVyYSXPYftYEp6GugTn2X44MtiwRqp42QJd2Jbxx1XUzpS6bbAX//2ygMvW3A/DVKlsmfujHR+EWaXDDrdkZhvLnma6yiBXofgOr8Cf9FWAngMnAmImOjZUrdWF7R9irzIDAxi+i7reX+Ttfb16mBblSM/Pml2byvx3ZhYojv0nCQ85qzmHzxt7STB4WtActDmHHJmSYcDzxtc5xeTmUFHv6pxKeg2CMDxuR2IMOxT4sxoo+tFaAOwImOz8lZ/Jy/Hh/crmAaF88EcsLf1We8T8YaHRe/AJ4ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fq4pPmyaC9MXrX++/4yjkE40zNhQhrV9AYSKW0DNyrE=;
 b=XK3ud5eH/TDEXTaNzBTUffzFaZs1nDHy724eac2iokHI6G0cLZ4+7nTs1HLCNd7lJsW/gJuOzqOgmcqKtHkdtJLX4qosrzZ56UCzM40OQqMDx0pDaRxKS6bV8C/u/kLOSjXAsTAM/WKhFG/MC1SvxL4KA6EN/GZFxxOJtB6YsOQ=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by DU0PR10MB6180.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3eb::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.15; Tue, 22 Oct
 2024 12:49:25 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%7]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 12:49:24 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Strange problem when extending the linux-firmware package
Thread-Topic: [yocto] Strange problem when extending the linux-firmware
 package
Thread-Index: Adsjksk5+RykX+C8TzCTp1YZKHQvaQAD4AgAAC0nTfAAAta1AAAHJZEg
Date: Tue, 22 Oct 2024 12:49:24 +0000
Message-ID: 
 <PAXPR10MB5277AEE9F52E5CF49BDA5B4E994C2@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <PAXPR10MB52772C5FC76FBDCB1FF4341599432@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj83XvvQdzDWyHEL90PpYi1QbsfR1VMOT2BGgHsLWqtZXQ@mail.gmail.com>
 <PAXPR10MB5277BD134A82CC1BBC53DF32994C2@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj_whK0M5UnBRMoJWH818fcL2MuvEj-OfxivrcAtRuu=ig@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_whK0M5UnBRMoJWH818fcL2MuvEj-OfxivrcAtRuu=ig@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|DU0PR10MB6180:EE_
x-ms-office365-filtering-correlation-id: a1d52443-e7fb-4871-f7cf-08dcf297f537
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|1800799024|376014|366016|10070799003|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?clFOWUVWSFNoVnRINmordkE2ZDBlbjNycGZaeExWOVhTZ0ZPN0VtMDhZeTJH?=
 =?utf-8?B?N1MvMlBMSmdKaXRac0lnMkFkWUhyL1FYdWtwVzJBZGRudE9oZk1qZWh1SDBY?=
 =?utf-8?B?eitKNm5ORExlR1Nsd1FFb3Y4NzVEZUNReTB3WU0xYis0c0FVMWpucmFiZlEw?=
 =?utf-8?B?cWRGcExEdXN1bEFhanJUY0VZN0k2RElYU1ZtZTRQUnAxKzJxdzlDbHdNMVky?=
 =?utf-8?B?aTNvSm5FSC8rcHBGQjJsdno0SngvWnVqWDIzRWVuWTlFb0tUU0lJNEhuZmpa?=
 =?utf-8?B?TCszVnkraFNDbEU2ajc4NFJJYiszRjJ4QW1LVWttL0d1b0w5NXptaWszblkv?=
 =?utf-8?B?V29iQ3EvbE9rMkR5eUV1ZDBzb29xcldLTlpWbVQvd3M5NzVQWmlLTWVTQWdU?=
 =?utf-8?B?b0gyVHhvcVV5cmxhekZuZlVHakY5T2IydURSMHd0WGZEUkQwSVNlNmlyYThj?=
 =?utf-8?B?cWQva0FvRXpRTStIMkdNejRlOVU4dUNvL2dwR3QyYklIRTVaUjVTN1lVVndq?=
 =?utf-8?B?bUxRamxDdzIyQ0swVy9EQXMyMnlleTUyNUJ3R1doaFlSdFdUbnBwT3JhWEgv?=
 =?utf-8?B?alU3eHdpdWVpVzZ2WUN4eUN4RnhId3Npb2I1SWNoaDhWYzBxMXNDb2xuV0sw?=
 =?utf-8?B?R0l4NDZreElNb0dhSFBJRHlCWGtieWVlbnVpenhZU3FZbWhjWVA1M09OelRo?=
 =?utf-8?B?Nzk0OFlaTkh3MC9MSDBtNGxhM1pud0R0TXRMY091UW1pRU4xalRlcWJrdGJZ?=
 =?utf-8?B?eEV5WGtuYlp6a0RiTVZuS1Z6NlJhMFFzZVhpeVVPd1NEOG9yT3ovK1NJQ2Zq?=
 =?utf-8?B?WTZYbkRIRG1GTlJ5L3Y4Q2pXenNnZUJCc1dPbnRKNVg1U3NZeGJCZEVGTlY4?=
 =?utf-8?B?RkVVTWZOZzd4bW5EUkUxc3lIUitsZmpNU3dhVjBraXBUSy9lQ20xQlpLcDlK?=
 =?utf-8?B?SUQxV1hLRGc4elhXRlAzRm4xZjVLMEZNQ0xCOWtseDZHN2VFQ0J0N0QzcXFT?=
 =?utf-8?B?RCs3cGdvTk5YOG51K3U1bFFhMlo4WGNyeFZwZFliUXFMYit4SG1vaG5TSVBu?=
 =?utf-8?B?QThtRFZhSldqTWxRbTVZcTdBQUZHMUR0U2d4Z0syQThuaW9ES296WTlxLytq?=
 =?utf-8?B?MmdpVjRiV1M3elEyNFlFUkNGM0llRHVnSC9RNXBtZUVGWnZzKzNBYngxUVlN?=
 =?utf-8?B?SXJ1N21oa040Y0NQQTQzUTV1dzRYN0wwVTNiWFByT042OEpvMnhUZlBvL1pr?=
 =?utf-8?B?Z0Vzb2E5ck96aEJRWWJMcE1udUJDaSt1V3FlSDIrYSsyT1JUZy95ckwyWGR2?=
 =?utf-8?B?MkdJaGVxenRQbzZXekY4SWluM2RFbGY5ZS9qNXpvQ1B5QWdyd0lHdmdMOTVs?=
 =?utf-8?B?YTlkY25YR3BIbklMNm1NNlYwdHArWDBOR3NHOTV0YmpENHhxTkFwSnp4bXNt?=
 =?utf-8?B?YWV1UE9pR25iM3Z5Vm9MY0hyZ2tBVFdJTWRrZ3lPQzY1OHhMbGRaWlNZbHpR?=
 =?utf-8?B?bWh2QVVWd3R2eG1pYlVLTWQ0UmVsVm5HNThnditmKzZEdHRHaEhiT09iTkpU?=
 =?utf-8?B?TnpsQ2JVZXJkWVlmZDBJUjRWRVFaaGhDNDZCLzFCOURWZWlqcloxM3c3QjZT?=
 =?utf-8?B?K1V0eHpHU2J3SjVtVHh5ZnNYZnpGcmduQkRtRWQ0ZTR5eWdhcUFXK3IyTHVI?=
 =?utf-8?B?SFN4cDVvdXpWWE1hMjdKRUNHNGlsUTdaZWxUZXF5ekIzbjJ0cVlIRDIwZ2s4?=
 =?utf-8?Q?j9ybzfueH1czbWLHYpWYkXevIbovKDZZ84AX5iR?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(1800799024)(376014)(366016)(10070799003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bkQyc090NW94SzVBOFJTaGdvcE1BWEpJZ2x5Z0NlbTBVb09hcFEvcHgyNEVW?=
 =?utf-8?B?YzFVeVE3Q3pNV1VUdU5Dd2djaUl1NjF5cHJ6OUdHVWZRYW1seUFRQ05hTC9H?=
 =?utf-8?B?YXZTY0ljYjhaYVJKOGZRMGFVdVhHMkZQb284bVZOa0tCOHI5aU9mbEczNThu?=
 =?utf-8?B?WTNaKzZzaTdhNVF1VE03djRLcGR3bnI1aVdPblJCVVdYNjRSOVVOeXliMzVS?=
 =?utf-8?B?SHI0ZE5IQ3JVU3BYMDkzUDlxYy9PSDBmeDBrQVhjbEpEVFAraDJUeXR4Y2Ji?=
 =?utf-8?B?eDkyVW1XWHNRakxiSGwrNnNVQmdKWWxhL01jZzNWTVJIc1gyYzFoS2luVjZ3?=
 =?utf-8?B?T2RzUGdiMUVpUDFpSFJBRzFIMHVBQ003Tno3V1cxQ1M2R1VvNlVxTGN2RGIr?=
 =?utf-8?B?cWJxZnM2UmVjMTFJbGFFeHFnc2FYbVUvNHFDV2hvaTM2TEhwNTdxUlhSRGxz?=
 =?utf-8?B?b0phM2hDNTV5YXNqYWFCVkc0eFZGQTZGZForSnhmQUdMRVdjVWZhV2dZNDhV?=
 =?utf-8?B?K3dMREoyMGJhdWd2TXhXbFB3ejdZOHZucFpaM1JGU1pLMCtHcTBTODliNGpI?=
 =?utf-8?B?eFVFRnlTZ3o5blBvUUxTSHRBdDlsUG4rVHJ4cy9xRWxFZ1ZYZDVKYmtISDkx?=
 =?utf-8?B?VnRkNHBkc09Pakd3cXpSNnFIalZXSWJ1aDlPYkVOV0pVRUFSc05qbC84emsv?=
 =?utf-8?B?TEx2bzY5YUtFUUFJVGdNbVNxOERUSWlNWVJMU2hvZ010TlFxekVDdktwbE5r?=
 =?utf-8?B?Ui9TamNMNWNRQXF5QWFWRkZYR28zb0h1WCs3WDVqZ3NYL1NHMmwrMnRObXlT?=
 =?utf-8?B?RkQ1bVQxb2xwbGhkcW1mN0RTZndUK20yM3o2dFZGOUd1cHJnRFZtQ2poNHdD?=
 =?utf-8?B?U3RTVlJLRXQ2NnJjVnJYT296cVVLT0hBRW1CUDlqTEcwOUQ2Z0NmMUtaR25i?=
 =?utf-8?B?ZG5jWThJWlJSSnhRSlZrNFBjWDJSa1d6YmNkOFVSR2lHQm1nTnVXNmNNcDBN?=
 =?utf-8?B?VTRIYklyQ3JWQnpHcFd6V1JJUU5XOXlDa01XMVNyVCswb3h2M0U2bGJoVFRs?=
 =?utf-8?B?UWhPZEdGcytvNCtQblIrS0d6bEhYdXJ0ZGl4K2UxZVJHK0JqUW1Pb3ZHYkRp?=
 =?utf-8?B?WDV4Uk5zSXpUTUZHNXE4S0dVbTVCY2l6a3JkQzZZbjdWUXMyQm9rTEV3ckhP?=
 =?utf-8?B?M0NCT1RESEtNaEVVM3BXU1ZnOEtpTHB1SGpSU3RoVWRmY1crOHFPZGRydjdF?=
 =?utf-8?B?NHB2WDdVUzhhS3Y1OEdqWisyODk0a2FMQk1FUlpnZlM1YWVUUGhTc0pFaU94?=
 =?utf-8?B?WldlSjRwNjJNU0RLejRpMlJFY1pRbURkcVhjamVJNFZKUGJIQ0Z2bXVUdzlY?=
 =?utf-8?B?OG9QVUN5WDVRUTEzUEV1QkRtcWYwU2JMYlJ0T01Cdml0SHMyRWZ6bStQeXAy?=
 =?utf-8?B?NjNqaFFpOUtTK1hmUmxQVlpoQVoyelJ4UXNQSXNGUkJhUUlBSkU5eUFKTTc4?=
 =?utf-8?B?UUF1bVUrNUJwVDgrWFpIazkwc0hEMll2MndodVdzSlFFQ292QTJFa2syVDA2?=
 =?utf-8?B?MFRQU1ZOMGZvZ2l5Sm9QaDhnK0J3WkVDYUpkRjdFczhVUUVBTTcreU01REN5?=
 =?utf-8?B?dENmQlN1N3N1TDRaQ1JjUDl5bXB3R3FUNVdPTmEwRGtHNlRaQWRBYUdaWHdX?=
 =?utf-8?B?TUxBWS91cjNPRXl1RFNHYjhKVUU2Tnl5eUZnU3BYV2hDZzhPbWFXclBJdWpK?=
 =?utf-8?B?MGVFMitZY2UvMjgxZVpIRmlxc0FVNU56ZDh4cWhXNjliOVoxb3hZcWUveHNR?=
 =?utf-8?B?bUYrYVJFZktIMkJzZ0VkYWp3aDc2dXMxSmV2aDRVc3BlOTdlVEVkcHpmYzEw?=
 =?utf-8?B?NEtZVFBFVk52WVBpMTBDa0t2am9uM1VDYW5TNzc5UWtGZWlNbzFJOGgxWWNz?=
 =?utf-8?B?dnZkNVRWbUhIQ3NwRldjWlM5SDAxSHhnY2t3ZnA5ck82ZGZtVjRwRFg0ZElP?=
 =?utf-8?B?dE9WU0dFWW1wcGdtdHZSaHlqSy9MbGlUcjBjdFdVMmtQZUgrbGRwRWZxenh3?=
 =?utf-8?B?MUtnRG9NY3RBKzlXd3VYQVVxRGJ6aFZOSkRETWp2SVNYMDZiNSs4dE5vRUNK?=
 =?utf-8?B?MlpDZTBkeVV3NjFXQlZRSUo3QS95WDFmcENnM0FFNERKMFBLa1Iyc3VwdmZa?=
 =?utf-8?B?UW1TS0Q3RDlwV1d0Z1RHaURwQm9nNmc5YnFOb0VRK0taeU8wWERlK1lwaDB2?=
 =?utf-8?B?ZDFPZXMyYlpUc0dIdElLQWZ1cmNBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d52443-e7fb-4871-f7cf-08dcf297f537
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 12:49:24.7414
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BmCNm5pMmKHxK7zHQpSvhsqLXbAIxFD1lCElu3QuXyUgO4KoQlXk2VtBnewHMpecwstM1RO//6xVN4y5NQhQOIFaVsD06PG7vKSZ7RdV2rA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6180
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 12:49:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64084

SGVsbG8gQWxleCwNCg0KWW91ciBndWVzcyB3YXMgcmlnaHQuIEluIHByaW5jaXBsZSwgdGhlIG1l
c3NhZ2VzIGluIHRoZSBsb2cuZG9fcGFja2FnZSBmaWxlIHdlcmUgYWxzbyBjb3JyZWN0Lg0KSSBv
dmVybG9va2VkIHRoZSB3aG9sZSB0aW1lIHRoYXQgdGhlIGxpbmsgZm9yIGEgcnRsODcyMyBmaWxl
IHBvaW50cyB0byBhIHJ0bDg4MjEgZmlsZS4NCg0KTXkgYmJhcHBlbmQgbm93IGxvb2tzIGxpa2Ug
dGhpczoNCkZJTEVTOiR7UE59LXJ0bDg3MjMgKz0g4oCcICR7bm9uYXJjaF9iYXNlX2xpYmRpcn0v
ZmlybXdhcmUvcnRsX2J0L3J0bDg3MjMqLmJpbuKAnQ0KUEFDS0FHRVMgPSsg4oCcJHtQTn0tcnRs
YnQtY29tbW9u4oCdDQpGSUxFUzoke1BOfS1ydGxidC1jb21tb24gPSDigJwke25vbmFyY2hfYmFz
ZV9saWJkaXJ9L2Zpcm13YXJlL3J0bF9idC9ydGw4ODIxY19jb25maWcuYmlu4oCdDQpSREVQRU5E
Uzoke1BOfS1ydGw4ODIxICs9IOKAnCR7UE59LXJ0bGJ0LWNvbW1vbuKAnQ0KUkRFUEVORFM6JHtQ
Tn0tcnRsODcyMyArPSDigJwke1BOfS1ydGxidC1jb21tb27igJ0NCg0KVGhhbmtzIGFnYWluIGZv
ciB5b3VyIHN1cHBvcnQhDQoNCkJlc3QgcmVnYXJkcywNCk1hdHRoaWFzDQoNCi0tLS0tVXJzcHLD
vG5nbGljaGUgTmFjaHJpY2h0LS0tLS0NClZvbjogQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2Fu
YXZpbkBnbWFpbC5jb20+IA0KR2VzZW5kZXQ6IERpZW5zdGFnLCAyMi4gT2t0b2JlciAyMDI0IDEx
OjExDQpBbjogTWF0dGhpYXMgS2xlaW4gPG1hdHRoaWFzLmtsZWluQG9wdGltZWFzLmRlPg0KQ2M6
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCkJldHJlZmY6IFJlOiBbeW9jdG9dIFN0cmFu
Z2UgcHJvYmxlbSB3aGVuIGV4dGVuZGluZyB0aGUgbGludXgtZmlybXdhcmUgcGFja2FnZQ0KDQpJ
IGd1ZXNzIHlvdXIgZmlybXdhcmUtc3BlY2lmaWMgcGFja2FnZSBjb250YWlucyBhIHN5bWxpbmsg
dG8gc29tZXRoaW5nIGluIHRoZSAnbWFpbicgbGludXgtZmlybXdhcmUgcGFja2FnZT8gVGhpcyBp
cyB3aGVyZSB0aGUgZGVwZW5kZW5jeSBjb21lcyBmcm9tLiBUaGVuIHlvdSBuZWVkIHRvIGZpZ3Vy
ZSBvdXQgd2h5IGl0IGdvZXMgdG8gdGhlIG1haW4gcGFja2FnZSBhbmQgbm90IHRvIHRoZSBzcGVj
aWZpYyBvbmUuDQoNCkNoZWNrIHdoYXQgZ29lcyB3aGVyZSBpbiAke1dPUktESVJ9L3BhY2thZ2Ut
c3BsaXQvLiBUaGVuIGFnYWluIHVzZSBiaXRiYWtlIC1lIHRvIHNlZSB0aGUgcnVsZXMgZm9yIEZJ
TEVTIGZvciB2YXJpb3VzIHBhY2thZ2VzLg0KDQpBbGV4DQoNCk9uIFR1ZSwgMjIgT2N0IDIwMjQg
YXQgMTE6MDcsIE1hdHRoaWFzIEtsZWluIDxtYXR0aGlhcy5rbGVpbkBvcHRpbWVhcy5kZT4gd3Jv
dGU6DQo+DQo+IEhlbGxvIEFsZXgsDQo+DQo+IEkgaGF2ZSBtYWRlIGEgc21hbGwgc3RlcCBmb3J3
YXJkLg0KPg0KPiBFdmVuIHdpdGhvdXQgbXkgY3VzdG9taXphdGlvbiwgc29tZSBwYWNrYWdlcyBh
cmUg4oCcYnJva2Vu4oCdIGluIHRlcm1zIG9mIGRlcGVuZGVuY2llcy4NCj4gVGhlIGNhdXNlIGxp
ZXMgaW4gZ2VuZXJhdGVkIGxpbmtzIGZvciB3aGljaCBtZXNzYWdlcyBhcHBlYXIgaW4gbG9nLmRv
X3BhY2thZ2U6DQo+DQo+IERFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIHBhY2thZ2Vf
Zml4c3ltbGlua3MgLi4uDQo+IERFQlVHOiBsaW51eC1maXJtd2FyZS1xY29tLXZwdS0xLjAgY29u
dGFpbnMgZGFuZ2xpbmcgbGluayANCj4gL3Vzci9saWIvZmlybXdhcmUvcWNvbS92cHUvdnB1MjBf
cDQubWJuDQo+IERFQlVHOiB0YXJnZXQgZm91bmQgaW4gbGludXgtZmlybXdhcmUNCj4gLi4uDQo+
DQo+IFRoaXMgY2hhbmdlcyB0aGUgZGVwZW5kZW5jaWVzIGluIHRoZSBpcGsgZmlsZXM6DQo+IERl
cGVuZHM6IGxpbnV4LWZpcm13YXJlLCBsaW51eC1maXJtd2FyZS1xY29tLWxpY2Vuc2UNCj4gU291
cmNlOiBsaW51eC1maXJtd2FyZV8yMDI0MDkwOS5iYg0KPg0KPiBOb3JtYWwgcGFja2FnZXMgaGF2
ZSBubyBkZXBlbmRlbmN5IG9uIGxpbnV4LWZpcm13YXJlOg0KPiBEZXBlbmRzOiBsaW51eC1maXJt
d2FyZS1ydGwtbGljZW5zZQ0KPiBTb3VyY2U6IGxpbnV4LWZpcm13YXJlXzIwMjQwOTA5LmJiDQo+
DQo+IEluIGFuIG9sZGVyIHNjYXJ0aGdhcCB3aXRoIGxpbnV4LWZpcm13YXJlIHZlcnNpb24gMjAy
NDAzMTIgbXVjaCBsZXNzIG9mIHRoZXNlIGxpbmtzIHdlcmUgcmVjb2duaXplZCBhcyDigJxkYW5n
bGluZ+KAnS4NCj4NCj4gRG8geW91IGhhdmUgYW55IGlkZWEgd2h5IHRoZSBtZWNoYW5pc20gd2l0
aCB0aGUgbGlua3Mgbm8gbG9uZ2VyIHdvcmtzIHByb3Blcmx5IGFuZCBsZWFkcyB0byB0aGUgZGVw
ZW5kZW5jaWVzIG9uIGxpbnV4LWZpcm13YXJlPw0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IE1hdHRo
aWFzDQo+DQo+IC0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0tLS0NCj4gVm9uOiBBbGV4
YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4NCj4gR2VzZW5kZXQ6IE1vbnRh
ZywgMjEuIE9rdG9iZXIgMjAyNCAxMjoxNg0KPiBBbjogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZzsgTWF0dGhpYXMgS2xlaW4gDQo+IDxtYXR0aGlhcy5rbGVpbkBvcHRpbWVhcy5kZT4NCj4g
QmV0cmVmZjogUmU6IFt5b2N0b10gU3RyYW5nZSBwcm9ibGVtIHdoZW4gZXh0ZW5kaW5nIHRoZSBs
aW51eC1maXJtd2FyZSANCj4gcGFja2FnZQ0KPg0KPiBZb3UgbmVlZCB0byBydW4gJ2JpdGJha2Ug
LWUgbGludXgtZmlybXdhcmUnIGFuZCBjaGVjayBob3cgUkRFUEVORFMgaXMgZm9ybWVkLg0KPg0K
PiBBbGV4DQo+DQo+IE9uIE1vbiwgMjEgT2N0IDIwMjQgYXQgMTA6MzMsIE1hdHRoaWFzIEtsZWlu
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxtYXR0aGlhcy5rbGVpbj1vcHRpbWVhcy5kZUBs
aXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gPg0KPiA+IEhlbGxvLA0KPiA+DQo+ID4N
Cj4gPg0KPiA+IGEgZmV3IG1vbnRocyBhZ28gSSBhZGRlZCBCbHVldG9vdGggZmlybXdhcmUgdmlh
IGEgbGludXgtZmlybXdhcmVfJS5iYmFwcGVuZCBmaWxlIHdpdGggdGhlIGZvbGxvd2luZyBsaW5l
Og0KPiA+DQo+ID4NCj4gPg0KPiA+IEZJTEVTOiR7UE59LXJ0bDg3MjMgKz0g4oCcICR7bm9uYXJj
aF9iYXNlX2xpYmRpcn0vZmlybXdhcmUvcnRsX2J0L3J0bDg3MjMqLmJpbuKAnQ0KPiA+DQo+ID4N
Cj4gPg0KPiA+IEkgaGFkIGFkZGVkIHRoZSBsaW51eC1maXJtd2FyZS1ydGw4NzIzIHBhY2thZ2Ug
dG8gbXkgaW1hZ2UuIFVudGlsIGEgZmV3IGRheXMgYWdvLCB0aGlzIHdvcmtlZCB3b25kZXJmdWxs
eS4NCj4gPg0KPiA+IFNpbmNlIGFib3V0IE9jdG9iZXIgMTggb3IgMTksIGFkZGluZyB0aGUgZmls
ZXMgJHtub25hcmNoX2Jhc2VfbGliZGlyfS9maXJtd2FyZS9ydGxfYnQvcnRsODcyMyouYmluIGNh
dXNlcyBhbGwgZmlybXdhcmUgcGFja2FnZXMgdG8gZW5kIHVwIGluIHRoZSBpbWFnZS4NCj4gPg0K
PiA+IEluIGEgd2F5IHRoYXQgaXMgdW5leHBsYWluYWJsZSB0byBtZSwgdGhlIHBhY2thZ2UgbGlu
dXgtZmlybXdhcmUtcnRsODcyMyBzZWVtcyB0byBnZXQgYSBkZXBlbmRlbmN5IG9uIGxpbnV4LWZp
cm13YXJlLCB3aGljaCBjYXVzZXMgYWxsIGZpcm13YXJlIHBhY2thZ2VzIHRvIGVuZCB1cCBpbiB0
aGUgaW1hZ2UuDQo+ID4NCj4gPg0KPiA+DQo+ID4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRlYSB3
aGF0IGlzIGhhcHBlbmluZyBoZXJlPw0KPiA+DQo+ID4NCj4gPg0KPiA+IEJlc3QgcmVnYXJkcywN
Cj4gPg0KPiA+IE1hdHRoaWFzDQo+ID4NCj4gPg0KPiA+IC09LT0tPS09LT0tPS09LT0tPS09LT0t
DQo+ID4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAu
DQo+ID4gVmlldy9SZXBseSBPbmxpbmUgKCM2NDA1OCk6DQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS82NDA1OA0KPiA+IE11dGUgVGhpcyBUb3BpYzog
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzEwOTEyODY5NS8xNjg2NDg5DQo+ID4g
R3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gPiBVbnN1
YnNjcmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWINCj4g
PiBbYWxleC5rYW5hdmluQGdtYWlsLmNvbV0NCj4gPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0K
PiA+DQo=

