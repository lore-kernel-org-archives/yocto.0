Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52DEC0218A
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 11:12:29 +0000 (UTC)
Received: from ZR1P278CU001.outbound.protection.outlook.com (ZR1P278CU001.outbound.protection.outlook.com [40.107.168.29])
 by mx.groups.io with SMTP id smtpd.web10.49417.1737976339411072614
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 03:12:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=x5832GRJ;
 spf=pass (domain: vrag.ch, ip: 40.107.168.29, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nMOV9zFpiKbSV09AxC25i10QOYFdXAKIH8sJ1XrSMX4ZJwszBOfFTgxK4i1VQ4Biypo2fC7wy/f74yrC0rMBOs7uL463X/Wx4/INUvaA5VnOGxIBpgj8U8YKyNr4ZwTbw3jZGzW63Sm46VEFlAYAiIswEnlUPLWsgJHn21zXiO2ZNGynnMCDIAzqjPjxxWsbLTduG1tsevtj5wdiMKtVivVzEkHRZ3D4Fj9qfLR7UCvLsmdkpf+AEevSbkV3IYI8wwZL+UV33vmfyd505YOjJBR7X07Ope61+iwZDaTFPWq7YYW9zEXGQtaGdCXmWmbMjcZLnTTqEAeJD3nuRJ1/uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Xg7tAyHDDannpKA8YPRqvLl/08dR0a/LRQYcb1aBG0=;
 b=u2G2/CDWMVhBzLN9mwWLmSyMxp8xCTKP+otgad2LKydBJ9y3aqgeQAZIf5nt2NhzYTMrEqkXiL9uJ8ZT0c0TSqKc0FIWeL8bST2Yl5dlI6O4F65kjLHppfVHEFA1tQojnHGndH8jTFyWUW7cLO0RUSv44nQoWncso0zg13zKG135CGzNL3VHlVVTKohzOe+p7WJewGAmX5H32HvsStEHrQGOeMvIkr0dXzGlbl8v83PvOzvR9chcHTAusL4FJ1/GizYssKD2MY1ZV5lDN1AbxAEcwHLhwptV64ou10uFEG9KlFBnj9Y2OGRx8Ng1maDCs7olAdFsrozc0W7TuhXxPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Xg7tAyHDDannpKA8YPRqvLl/08dR0a/LRQYcb1aBG0=;
 b=x5832GRJPxHXLJ5LMTujk13cCkWh/bsOem/XD5bb5WiinN1s0feWgHD424hjb4A5pxkx2zW0nhW8NPyWbfU0Y718ikl5M30w1uEVoYU3/OMaQU1msz3Zx7h3dFEw+UGdXHAhNHYGLRoq7IvGu5PUUHhKWzo/SrF4Hp/OkJpKSy4=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR0P278MB0123.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:19::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 11:12:16 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 11:12:15 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: kernel append file with dts in SRC_URI and subdir
Thread-Topic: kernel append file with dts in SRC_URI and subdir
Thread-Index: AQHbcKxSky5zFidL60yEzgkj+l00nw==
Date: Mon, 27 Jan 2025 11:12:15 +0000
Message-ID: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR0P278MB0123:EE_
x-ms-office365-filtering-correlation-id: 2dd8505b-fe5c-432e-59ab-08dd3ec374ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?cE1vVzRpLy9KbnlPMDRHM2s1RkZSVGxRZ2JzQVBCaC9YUzByWEMreU53cmp4?=
 =?utf-8?B?cmhrajBPM05wV1dIczFXQldRMmMrU0tkbU1Wak1QY25jcDl5VnMzOTZvR2o4?=
 =?utf-8?B?VTA4eDNIYlJnK0EyZjNsZ2FPVXhJU0RLUUFBRWw5cEJLUSs5UHBiUzQ0VGVM?=
 =?utf-8?B?WTdYL29CdHNJVEQ4TlFQNkJGTlFKZ1V4ZUZBS3licFdzbjY3N1VIZTBOVFNn?=
 =?utf-8?B?Ymoxd3hkS1UxZWpkWW5RbWF3clZjRU5Od0RPMnRzSEJYMXVEWklaUFhSL1M5?=
 =?utf-8?B?WG9OcUhaT0NmRkVqMExxc3NrWkJ2M2FBNEFEalNCK1Y5aEZVYjV3cUM0WDBU?=
 =?utf-8?B?eU15YnFEUC9JL3R0MzZjOEVuR1VNSUZ2NHRBNWJLcksvZHh5ZTRVSlFPcU9l?=
 =?utf-8?B?VlVEclhQdnYwRXFXR3p4dnNSaXI1OTdMdHB4dzcyU1cvQThPV3R1SXNYRDFV?=
 =?utf-8?B?RTVmaG0vZHhNNVIrQ1FhcnpMQ2UzVStyUXhteHFkTnpVWXozL1g3VmhhRVRF?=
 =?utf-8?B?M1ZIaFl3MFNqdVdDRi9Bc095WEJMVmQ2MlFWR1VTSC9GN2FPWGlXZTBVd1JH?=
 =?utf-8?B?c2k3NG1mWmxYZk92bS9IeldKTHhZVm9BQUZmZWJIVmg3aTFtc0xuRk1admI5?=
 =?utf-8?B?ejZtbTRRdndoMXRQT2dNVE9RRjYyalJ0eXdqOFdwOW5jTmhUUmlQT1dqVzlJ?=
 =?utf-8?B?U0hodUxqVWE0MEpJL3ZQbHFCQXZ2UUdLSVM5Q2hJUFZ0b0pVVzdHNDN1ejc2?=
 =?utf-8?B?SFVCclZwV2R3LzVJdHVrSTVmOFQ2ZzRJMGNnbzVWcFBaWG9qeFpnTUUrTFZw?=
 =?utf-8?B?cmYzTXlNVVRvSkJ4bEs0ZTYrVWRFM0JYeUtlUThNNXBVbU0yRjlFNVgzejdO?=
 =?utf-8?B?Y29LQi9BQkRscjNDL01hNEpDNDlHamRHbHlnME9PN0dGNGtwTkdZd0krVlZR?=
 =?utf-8?B?TS9reGNMNDdtNFRBNVNIbkxEd2tJUVpEWkNsZVhndjhObDVsS1ZWRHZHYlFM?=
 =?utf-8?B?eWlHM1VsV0xRMUZvTVFlanc5VUtvbUNnb0k2T1hmUzVoeUMxQnhHSzN6bjB0?=
 =?utf-8?B?cHVacVB4SGtzZlFDc2E1ZW9FVmNNcno2MTA3ZE0yR0JDaGFmY01WbWhDSm52?=
 =?utf-8?B?a3ZIcUtweDRBbmZOYUpBam9vRXVkdHI1VXRjZndMVFZ0OVZFNFNWUW03MVZZ?=
 =?utf-8?B?eEtqdWZ6S0FGUEo2OFI1YzFPNzNzVDNjZ05oM2Zzdmxubjg4MGNNZjJLK2Zu?=
 =?utf-8?B?MHlob3ZsSHRXdzJGb3V0bUo4K01Sem5oLy85MmRSdU44bm5vQ3NZRHljejRr?=
 =?utf-8?B?cVU2L1p6OUE2akFtamYxMjlxUVdSczNOMHU3bWhtSkJrblVMd1E2YjRMMDdh?=
 =?utf-8?B?dkVvWWp6ZXFtT0ZCT3BsR0xMdVNhQktZdFRDaUlvbHJHNFE0SzVQMWlnYmhM?=
 =?utf-8?B?NnpNSEYvWXFTWk5zcm1uTHFYTG8yZHFJSzJpYjRLcUFFT0hpUkpzeWFHamRL?=
 =?utf-8?B?bmxBbVc3cWlDci96USttUWppVWhEbTZzZzBQUkhDMnQ0MzhqcU1LdGZPT1c4?=
 =?utf-8?B?Yll5ZEhXUmZhTlo2eDMxOEZaRmkyMHdxcUVJc2hCU2xyblZYeTNVbGJBNW81?=
 =?utf-8?B?S0FsYjB6bDlLZERkY0RaQW12c3VIR3ZwekJyK0lCbHJVYjdUWmlSVTdWeFpj?=
 =?utf-8?B?RDRvbGxZaWpMTmsydlZtVDFtUklWcHRVTjNhcjFSTmhTdlRDNy96Z3lySUdK?=
 =?utf-8?B?WTlHMTh1WEZ2WHpYYzdOemRtNW41T0t3TmtJWVBtMzgwNjVDYStuL1B1TDg4?=
 =?utf-8?B?U0JyMUd1R3Z2azFXeG1jb3BYL1pGVDlFOWtDcUQvT2tlVGNraWhLcVk2QjRh?=
 =?utf-8?B?dUlta3hycnRyQWZkNmJkblhHcEtwYlFtSjhqTVRLR0E4bXNyUW0wREF0a0h0?=
 =?utf-8?Q?Ir+s+nYuK5znNqzTowYTEYfSEFFVrjIy?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?R1pmZnI3M1AvOTBkTmRkNWhzTVRQdUZrcmlSa3FmYUFqR1ZXR3J2eXpFTkkz?=
 =?utf-8?B?UGZXbHcwd3VKMVdwWkU4Skw5WXNlR1BHMVBPVlNyOUdJOGVRdElRSmNHcFZJ?=
 =?utf-8?B?VmlCY2N5TFU1aThmR1o1OFJkMnVXSjNmNmlmZ3Y0R2hNS3dIYTZNRjVuOURy?=
 =?utf-8?B?UWNRWUY4UThIZzIwa0sxQ0puWGI0WDRLbzZxL3grRlRuWGNqYThQYkhoQ2xD?=
 =?utf-8?B?TWNyTXF4MVdacUVIaEpEQTd0czhsbmlHaVY1SUNxMnhPT1YxM2ppQmtSUmtK?=
 =?utf-8?B?NmpDV0xxZ3JNK1pHRFhYQXhSejZnQit5N0wxbElmdzN4R3FYZnpYWWRjOUJV?=
 =?utf-8?B?TFVXbTBYdjZsMFFxZGRHZnBsbXhscXZoanFneGRjZU5IT2JaVnZONURrVTVr?=
 =?utf-8?B?UmNvM3pSU1VES0tBYXlqbVVjalgyV1FOVS9YL1JMMjBLTmx5Um1Gc3RXK3R3?=
 =?utf-8?B?enFuRlB4NUhPZE9YUkJZMmFEdWVJdElSMkVRRDcwdHlZbENCcCtWcllxaE5H?=
 =?utf-8?B?UnRjL0hQQ2hRNW5uOTEzWWZmNTljbTlReFhjQThYbEhkck9BTXpETXpRQ1dQ?=
 =?utf-8?B?RWM5eDdjNzNOQ2xDZ2hOcWdqWkgwcFI1eklFSHR6Z3NieWUzOGRYVy9uVU8x?=
 =?utf-8?B?cW9rSklsRm1Rb3lwNWc0UEF2Ylk4RklSWUVpUEdXODdvSUZXbXVHa05IT3JF?=
 =?utf-8?B?bjM4ejVIRTU5QjVDczhUL0ZsekJxMU5STEY4cXo2VWdseXBkbEVGSERjZzFI?=
 =?utf-8?B?TDl2cEl2YzVxeDhVQWhBbWhrQXNvMHkyZ0g2bWwvelphZHZnWmJ1N0hKWGE4?=
 =?utf-8?B?bEJmaklvWXE3cTRjdGloclRKcElVM1l4K0VTSEdBT3FoTXdhR3NTa1JlNENl?=
 =?utf-8?B?L2xQTFR3UGt3SjRENE9rZjJ2SGltNU9pdVQ5ZUlwakpkVE9mc2pWNVcrWTU1?=
 =?utf-8?B?M0FWMnM5d3kxUE9iWHVwcXpZTkc1NUdOdndnSGN4clVkVFdWM3ZndXp2dDg3?=
 =?utf-8?B?Y1VTMWFQeXdjdHNVaXlvVjRsWTRpaE80NjFadUhvSXdvOEo1L2dyaGJHbWMx?=
 =?utf-8?B?Vm1lRFM2cndjVGRoQ1pyU1Y3SEN6NzZXdk9uUkxEUkVleFdLejdlenR3K21E?=
 =?utf-8?B?ZVh6ZWJpV2pQOXUzclRDenRld1RFV2oxb05YdUZjVWlRR1JRVEFVTXJ2MlBK?=
 =?utf-8?B?em9HS3p6UHQwOWZEM3dLTHVmNFFBVkVwZjc0WjlqQmIyMHdPN2hseTV2M1Y0?=
 =?utf-8?B?b3ZJb2N0TGlDWHFzem1ONHROTkROOHQ1V3FGNGVxZEsyMXEzeTFSZGhXTkx2?=
 =?utf-8?B?TGdFcURhMGQ4U3FiZDdSTXlYTDNsa0RuZ05uZXVFUlFkWlpIbFZvOStPUXk0?=
 =?utf-8?B?UXhCOXVHazlkSU1relQrOEpWY2c5aHlRWis4UXc2OWd6S2h1K3RGM0k4aW0w?=
 =?utf-8?B?SFBUNU5BYnpzWURXeFp2azlrVlhpay9YbUJMSStycFNoc08rY2FFUnNtSjhP?=
 =?utf-8?B?K1E2YjgveGFzdVFzZnJreW5VL21EYjZFOVl0NXRtOGZMaXZUdDk2WDlBdzF3?=
 =?utf-8?B?NVQ3MisxQ3d6UWVWMzM0MDd5Um9sNTlPUVBIb3poZ1hZSmtUamNPY3hIOHlQ?=
 =?utf-8?B?aXVEM2orUi9lNWhUZjBkVThWdjBKRmhETGc3a1Q3Ym55dGRVVEt5aGVoUmU1?=
 =?utf-8?B?TzZ6STZ1VUxaR0ZPQWlrczhZRjRYc21yYnlWUFpyRHQyWDdxZXhFY09ER2hB?=
 =?utf-8?B?aEM4bnp5U3djUC81aEJtc2w1SUlRVW9ZN0MweTdGalVxOHRlZ3hCRkhTckFS?=
 =?utf-8?B?QUlYVXpSVlVtbFFoTmJ1SlZvY3ZBbEhlWlV6S0xOK05KMHB4Q3FVVWEwWVFD?=
 =?utf-8?B?QkJhemJwV3RUVmp2VVJWM0FCZFU3ekh4Rmd5cG5xSVlBaWs0QjZQOUpLS3Iv?=
 =?utf-8?B?enRvVFNRNFVVOTRPVXY5cFV2a0xsRW5QQUJFNXhwRmR3VUFWcTU5UGQzaC9V?=
 =?utf-8?B?SHMwMlFRaURYRE9aWnJ5Z3JKQXF5N2dvN3dnWGd2OUgyeTBGdytWcGJqSzA5?=
 =?utf-8?B?NjcrbFAvYjY0cEd6WGgrM3dZbFhqeTBnUTJCU0Y0b3RDcGdFYVJoOGhBWGVF?=
 =?utf-8?Q?GlImIPrDHoSA+GMwBTlMwaBev?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7FB84BFD0A42B949BB0222E417CDEA84@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dd8505b-fe5c-432e-59ab-08dd3ec374ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 11:12:15.8900
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BeyvJ8qoLPe7rasntt1tA63z4XA+1+xnrFYoemitA23GH1H4vkP4sAch2kODJPMP/uL8La+22I5m/eqtsUYhCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0123
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 11:12:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64635

SGkNCg0KSSBhbSB0cnlpbmcgdG8gZmlndXJlIG91dCB3aHkgdGhlIGZvbGxvd2luZyBzbmlwcGV0
IG9mIGEga2VybmVsDQouYmJhcHBlbmQgZmlsZSBkb2VzIG5vdCBwb3B1bGF0ZSB0aGUgY3VzdG9t
IGRldmljZSB0cmVlIHNvdXJjZSBmaWxlIGluDQp0aGUgcHJvcGVyIGxvY2F0aW9uOg0KDQoNCiAg
ICBGSUxFU0VYVFJBUEFUSFM6cHJlcGVuZCA6PSAiJHtUSElTRElSfS9maWxlczoiICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICDCoA0KICAgIFNSQ19VUkkgKz0gIlwNCiAgICAgZmlsZTovL2RlZmNvbmZpZztuYW1lPWNvbmZp
ZyBcDQogICAgIGZpbGU6Ly9jZjIwMC5kdHM7bmFtZT1kdHM7c3ViZGlyPWdpdC9hcmNoLyR7QVJD
SH0vYm9vdC9kdHMvZnJlZXNjYWxlIFwNCiAgICAiDQoNCiAgICBDT01QQVRJQkxFX01BQ0hJTkUg
PSAiKGNmMjAwKSIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiANCkl0IGFs
c28gc2VlbXMgdGhlIGNvbmZpZ3VyYXRpb24gaXMgbm90IGFwcGxpZWQuIElmIEkgcmVuYW1lIHRo
ZQ0KZGVmY29uZmlnIGZpbGUgdG8gZG9lc250ZXhpc3QgdGhlIGJ1aWxkIGZhaWxzIGVhcmx5LiBU
aGUgZGVmY29uZmlnIGZpbGUNCmRvZXMgZ2V0IHBsYWNlZCB3aXRoaW4gdGhlIHNvdXJjZXMtdW5w
YWNrIGZvbGRlciB0aG91Z2guIFdpdGhpbiB0aGUNCnNvdXJjZXMtdW5wYWNrIGZvbGRlciB0aGVy
ZSBpcyBubyBkdHMgZmlsZSB0aG91Z2ggYW5kIHRoZSBkdHMgZmlsZSBpcw0KYXMgd2VsbCBub3Qg
cGxhY2VkIHdpdGhpbiB0aGUgZHRzIGZvbGRlciBvZiB0aGUga2VybmVsIGJ1aWxkIG9yIHNvdXJj
ZQ0KZm9sZGVyLg0KDQpJcyBpdCBwb3NzaWJsZSB0byBtb2RpZnkgYSBrZXJuZWwgc29tZXdoYXQg
bGlrZSB0aGlzPyBXaGF0IGFtIEkgZG9pbmcNCndyb25nPw0KDQpUaGFua3MgZm9yIGFueSBoaW50
cyENCkRhdmUNCg==

