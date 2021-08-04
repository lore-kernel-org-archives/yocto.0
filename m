Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.41])
 by mx.groups.io with SMTP id smtpd.web09.6846.1628070717404249617
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 02:51:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=TRYXq4ie;
 spf=pass (domain: optimeas.de, ip: 40.107.22.41, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WEH0HaAvRxweLfQfbhP6m/kPUZAedus4CmPSP4TARD/7JaxaqHul9+1autxUDuOJuQUUpyIxVPzTECOHAbJB97joRNcr7H34QcgMRP33QYffMrmdWdtp9rzMrgcL088Xj5j17jfcELOXkiYNnH06Z8u43SL0eDh3vTSzCaiyMSMKXWDpQHioy9TnRGTeXKq7CxCxe5EHFB3Nbbuvsqjj2NTR2inMGF0QAED31TyI68OmsLDx9/oCkMd5cP/QXD/4naogSCgTt8B7KNjy70kP9TtyGg5JKLCKsozQ784tjSo0KnrMx7Ammp4S85RpxdKU4XPyKdSQqtn4OcebvMJ+SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yIqAQxIkFVLUTPyNPjfHtXgn8HWq55fNG6aSJXKo9Ls=;
 b=AYl1LGWHD8EPyXxEYUf1AlpUBRI4lUsTqDA2Hn684TSR5CTuQinDbbjPt8GsESICMyPRAlN5YE9KlmvSKMsCO28nLSboj4/drxxjb9OeU+9qdJwcjiwPCbMgYSQHIu+Lm9PCNFU+G1lg4IoFeMvcuJGs7k6DN0hjCrvcYnPnYzUgoVfdLY3pjdc8EmlBZV7A3yxrD37XcDY3Fyjdwzfbn/gIpHnfHna1kVFNdQ5AksmUiL6Q15oZYjKV8g9inhTM2/q/326c3mTnawIgfrBksSje3sgnAJjWmk4/O2iyBeO7Pi/Qc18wlwAGewC0Jgwj/uHPU9VChBAOg2ewweFtgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yIqAQxIkFVLUTPyNPjfHtXgn8HWq55fNG6aSJXKo9Ls=;
 b=TRYXq4ie4SLNTXDZqeI9CmU/Gwy9ofXmKsi55/Y13uMkwhOZFH74X4Ed349J48kDgVZqGRP4oTpgAsctfwVHbkSO70s6ir9mOcelIru8AnHxLVworTxRxA9Rd34n7U7JPuuAybpp3dtqc+oGlL+C67KcW4EmesLT+oANzOiws+A=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4887.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:41c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Wed, 4 Aug
 2021 09:51:55 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f%7]) with mapi id 15.20.4394.015; Wed, 4 Aug 2021
 09:51:55 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: "jupiter.hce@gmail.com" <jupiter.hce@gmail.com>, yocto
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] RTC issue
Thread-Topic: [yocto] RTC issue
Thread-Index: AQHXiQw4RJgRj8fQf0CeQpKCRN2JuKtjGHYA
Date: Wed, 4 Aug 2021 09:51:54 +0000
Message-ID: 
 <AM0PR10MB310747ECF1307146791C4D3599F19@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CAA=hcWQGUvCofTbwCLA+M2ONFamdZvjWufb7Hy+Zkv5GX0uJfQ@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWQGUvCofTbwCLA+M2ONFamdZvjWufb7Hy+Zkv5GX0uJfQ@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e3294d7-b90f-4760-0c74-08d9572d7e14
x-ms-traffictypediagnostic: AM9PR10MB4887:
x-microsoft-antispam-prvs: 
 <AM9PR10MB4887816B6ABA120261A11B2599F19@AM9PR10MB4887.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8fxWlptLUQ9V6R385JQ07cCWtKnX1d2B9xJ5TYbLSQcT4BgOSDOEaSXG7NuoUGZxy6sjtIDDnFDMiq3hFFF97RnGQTnSBHlivFlff+9Sv8SkKSYnm3a75OsIv/OjlS9yJBv0VE3m463wd0lJk0Cc6lv7zjq5FF7poOvOF6p5MimiDP9dIOn3jBcafQFUSwxq0L34FWarKK65/Be0Qecl+g9QMM7CwxWIuAIKMtztC2YitQljjLQIzvrhZbVlqaDNnAkyeC2ZWOnnkP+OiIOp4+Qtof97CGJTN5s7rJb2aiEqqV+neCDByz0WMvSIM3X73FFIEqeLtDWGUEVDiklJzJtFhAABCPRpSSBBDJGcwTYTDwtVc3h/7By6x/HB2IJXXcO+F/sHEpfcdGq9BIyNokHkx0DuBzvUgEQTYPdKEZGfvlKpxli6UrVwsGE544/djWx4z/87nV+DcIVLqRcO1bs5KBr6suW+g4NAztHpugdMvxIsvfAS1NClZIdGvNb68qFryupEOKF34JoJDvqyg1aQTUurJU1PoP7LrJ6acQcPzvKAARq11VIpFSzmJaTyTb720mj2eyuqHGMDz22OWml8hcQF73ZkIEDRoPjneiS6FqOXQhFKLspCQ7nn31sSWQaZ2YBPzC/XJSLNZvSpbfFxkg1GqFckRlmjZrGBHl59apOMY03W83zPfoewaKoFuONEV1F1h8gnUb+GHXo/NYVP3mAvzUPwBW8HMSrEvyZRGgmahSZVNCxVejVJCs8UE4oMDnXLOO/Ij9AB6lONhzs2BzyynV3yxMAmKTyf5/s=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(396003)(136003)(346002)(376002)(39830400003)(366004)(110136005)(9686003)(83380400001)(38070700005)(316002)(2906002)(55016002)(86362001)(76116006)(44832011)(66946007)(8936002)(4744005)(38100700002)(52536014)(71200400001)(6506007)(186003)(8676002)(66446008)(33656002)(66476007)(64756008)(66556008)(5660300002)(478600001)(122000001)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a3p5NVNHcFowK3FUUERiWDBoYm15TDNGT0t3ekMwcWl0VWJxaFZBWjlJSUlY?=
 =?utf-8?B?c3RCcnppdi9BRDJnaGJxK01jQVY3RVRlT0U1YXVqRm83T0lZZklKT2g2dm5n?=
 =?utf-8?B?Y3B4cTJITmZRYXN5RFFjc2d0WUY5RHVkN1V5U3BHaUV6aFlWMU5qZ0djOWZL?=
 =?utf-8?B?VDdTdVAzTnk1dElTZkRyQjUvdjVjbjh3ZXlzejZHU295TGRwWmJ1ZllzTGw0?=
 =?utf-8?B?L082UytBSzE2Q0hkNFpjZzkyWlk0MW5IZmlrK0tER2VLdWNDZElHNCt6NldM?=
 =?utf-8?B?SU9Va2F1YzFXK01EdGNRaW9CdHQvTmpaaHJLV09LSEwrZ2JveFlDcE5kcmth?=
 =?utf-8?B?Q1NZa3Jwb2ZQYkdTeVpnaThZTFlWNmlFU05YUGQwbUpnVE54ZG04N0U2TE5G?=
 =?utf-8?B?R0c2VXc1dDBRc2J2RkEwdUFoV1V4ZHNrRTU3WTJUTUlUTlhwUUtHR2dhUEYy?=
 =?utf-8?B?aVpNLzg0NU9IekRkV0EyVEY4MTJCM0N6VmN0dTluWDM1VjJGVWk2cHNEUDNW?=
 =?utf-8?B?RGhZQWp4U2dzMUFyWTdRZjFzVUxRbGlDZkJPZWVjYk1ycEk0ZzNwK2pYOTZl?=
 =?utf-8?B?Ym1JQWZFRU1abzdKS2NiU0wvTGxrQ0oxN0VUSGFRL2pVVU5YZmVzeEZHakxv?=
 =?utf-8?B?L2ZxSjMwRlpPR3E3dHMrT25aM1p2R2RYSSs3UEhZS2pCYkR2Z0NlVlNGamVX?=
 =?utf-8?B?SDk3ZUVMNzRUaGR1V2JpUEwzckpPMEtuN0xSSWxsdXJXYytUUDBlUDdvNW9L?=
 =?utf-8?B?RE1IMjJGb3NrN2IwbHFLWkQzTHJnakg1REdLdmk1QlBVU09IRjJ3UTd2OUtF?=
 =?utf-8?B?a0dZNnVCMjBSOUI4QVZubW1aM3dHMFFxSmI0Mmc0WnBXQlhFZ1cvcTliUnc0?=
 =?utf-8?B?RGNydHVsM2pZR2x4RFRVNlhmT296UHBad1hMM2MxZTZ5TFpES1lESHpKWDRK?=
 =?utf-8?B?WmhjZGZYOEthRUJ2MWwxQllWM1dWVnI5TXpBNmxCRjFhaUN3SGhRdHlDU1J5?=
 =?utf-8?B?dU42VDJab0lkMkRxSWprbWh1K1RHamIwdGt0S3BCeFhlVmp0Z2c3R0hOUWc5?=
 =?utf-8?B?VW5QWTFqc3Jac09hS29Yd1dtRy9mSlZLNU04U0Rxek9TNXlYb3gxd0lhTEJr?=
 =?utf-8?B?c0pIV01kZGthMlBoSHFUQmZyUTdvSjBGemhxTy9NMnExVkRBeFZMN3A5Wk9i?=
 =?utf-8?B?aDhIUUtjVDNBWGl6SnZIa0cwUVpiby94c1phVU8xMXBKQy9QTEVZZEk3YmdP?=
 =?utf-8?B?MU9PckpIUjFIL2V1bDZxTGVDRWM2NG5YbmVOc1Fma0pUQVp5VUJSODZJVjRt?=
 =?utf-8?B?QnBJcWtRQ1gwVzBBRWMyOWIwVWlvVDVmOC9JbFdrSHVJRzhiNDkvZHVqYlI5?=
 =?utf-8?B?Wi9ud3hTbnN0dVM2cHdzdThPZFpKaitNQm0zYU90cnR6ZmVzclNsdGpuQm1U?=
 =?utf-8?B?cmFxM0V5T2xGZHg3L0FvL0JNa3lENDF1Yld6YzVVdGF3M1ZlUFlJZXNpa3JV?=
 =?utf-8?B?d05CVjE0ZUdGNW5xbWhhQzZIQ3RmVWpETDQwTTM5RzQ0Rm1kRTd6RWJqL0ll?=
 =?utf-8?B?VURydGsxMGpwVXN0LzdKMTUxb0FEVEpFUmp2TTJHU3VRVGdGUkRYN3lZRXRZ?=
 =?utf-8?B?akpOZUxVRnZTdUtSb2lNVG1tR3FGVDJwZ0prVUtrK0xJbVdDWWZITENLK2RQ?=
 =?utf-8?B?R3FreHJIa3h6ZS9LVFl1TlhrdjlPTkwxVEQ4L0lOZklhTGlhOEZXTnpxV3dr?=
 =?utf-8?B?Q3VoRWxFdDcwdnFsL2l0aXduMlBtSVI1Vk5lTjZiZjBRUnBsbzh3TllhN2V4?=
 =?utf-8?B?VklTMkN3aWJkQUQ4dW01dmpiZFd1Y2FsYVVqNFl6N21CTk8zTFpuSnlYMTRK?=
 =?utf-8?Q?U1Qec9ktFqxUc?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3294d7-b90f-4760-0c74-08d9572d7e14
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2021 09:51:54.8934
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2jXxjV9Q1uorH8R/YUouiF/WfIAT+A5CYbA1wR5wMqA6QZpYjJrhjYe5gwFavsUuW/0jv81bUrD6q3+g0jyaMa3qGhWRAzy8ok1zzWwSwfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4887
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8ganVwaXRlciwNCg0KSSBoYXZlIHNlZW4gdGhlIHNhbWUgbWVzc2FnZSBvbiBhbiBpLk1Y
NlM3IChodHRwczovL3d3dy5rYXJvLWVsZWN0cm9uaWNzLmNvbS9maWxlYWRtaW4vZG93bmxvYWQv
RGF0YXNoZWV0cy9UWDZTLURhdGFzaGVldC5wZGYpIHdpdGgga2VybmVsIDUuMTAgKGluIGEgZHVu
ZmVsbCBZb2N0byBhZnRlciBJIHVwZ3JhZGVkIGZyb20ga2VybmVsIDQuMTQpLg0KDQpTaW5jZSB3
ZSB1c2UgYW4gZXh0ZXJuYWwgUlRDIG9uIHRoZSBJMkMgYnVzLCBJIGRpc2FibGVkIHRoZSBpbnRl
cm5hbCBSVEMgKCJzbnZzX3J0YyIpIGluIHRoZSBkZXZpY2UgdHJlZSwgYW5kIGRpZCBub3QgYW5h
bHl6ZSB0aGUgcHJvYmxlbSBmdXJ0aGVyLg0KDQpJIHRoaW5rIGl0IGlzIGEga2VybmVsIHByb2Js
ZW0sIHNpbmNlIGluIG15IGNhc2UgdGhlIFlvY3RvIHZlcnNpb24gaGFzIG5vdCBjaGFuZ2VkLg0K
DQpQbGVhc2UgaW5mb3JtIG1lIGlmIHlvdSBmaW5kIG91dCBzb21ldGhpbmcuDQoNCk1hbnkgZ3Jl
ZXRpbmdzLA0KTWF0dGhpYXMNCg0K
