Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14B21C4167E
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (APC01-PSA-obe.outbound.protection.outlook.com [40.107.255.73])
 by mx.groups.io with SMTP id smtpd.web08.18324.1649604672492881162
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 08:31:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=QMNmdc2e;
 spf=pass (domain: advantech.cz, ip: 40.107.255.73,
 mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hA4kcdsaVpJnJjvWFJs3jxEiNdvvKfTkHzhZMhez6ZHay9ed2UDS6mJQZWJ4xRzX6/zPie6nZ1vVMwoExpg8VhKDVaw1FCMEc7MimOoCguIKP37pdfvkEF/bO2su6x2iYzpGodhYt0lKspRA8EcdFG0Cx0v9CAeyLSnKRHiJ463sVUFq3IWlPcfaOfbjpkwFsdVT3UObMrOWWOG44lNKeOY3RhV122+n0i22rdPZGwJKW87X5o4zBa9pVuzDkZJay08aSooen/lv2pmijerHYzZcAim72N1pgoMMjlVokR0Rvi4xKCLDXIwVe3NLURFpXyVKW6wO2sSA4ZZSB+uqMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TMtxCuM+TVs5za3xx7gsHonJPOT6JUOx1hKPlKW9i8=;
 b=R9P4bdtoNJvr/BFUUc2lhWZoDC4ta+P8DvuDkfu3qz9jFXnl55GheDYNWWyi/EI7qWqQA1MSrBuEQVew5HdWF1ciG4KR/m3fE8M/md1bXX3Q7fzWWHwVsEC8KR9aHyUasjI8j6lHdDkfOT9zyKztpKwFNzEeSUWuSjgNQqVjnAyoMgsVPepBnFU/ks/oDBSXikyKO7jqDfqTF+mQtvkOT7HdUj+d1rT6rfKlBcs9LdgO3m5CP+K2Gqj6WRv4A2nWx547DEK/yXGrIrD+NNGM7fJWM1qeC2okEKBzzdqQ22Kbjv+w3Ca6ImyPlPqm9VzZT5CxxpNIw1pHc4OFOJJXRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1TMtxCuM+TVs5za3xx7gsHonJPOT6JUOx1hKPlKW9i8=;
 b=QMNmdc2emm/OBPLThqoI58q95nhpwIZPuC5nXisttgxbEziMhrE/4iwQaXH+OUV2eVOOxpASprM1WLmpaF+BmOlPh2mCa6n4N7zmp3o0m0LxEkVlqCBsusPu3A9bMofsdWdfnAdQ5vReupy7vjmVGJdHg/ZAq8fufiFpB9uWbbt90nep271P5hjVJw4xJzuFWaRhZp429He1T3e2fenWXWxQa/fpByea3pKpnap09pu7b5SX0Jfbqj1KR7jOnxJLUkGafUuK7kqDXLEibIiRiUafMFFPUywHnOzr624kETnyL5TUqODQY1bYQ8xW48HMQcgngllmSZwU8ecGT6UrCQ==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by SEYPR02MB5965.apcprd02.prod.outlook.com (2603:1096:101:84::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Sun, 10 Apr
 2022 15:31:10 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff%6]) with mapi id 15.20.5144.029; Sun, 10 Apr 2022
 15:31:10 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 4/6] tpm2-abrmd: update to 2.4.1
Thread-Topic: [meta-security][PATCH 4/6] tpm2-abrmd: update to 2.4.1
Thread-Index: AdhM7KK54a2al296ROqrHzqwkdVKhw==
Date: Sun, 10 Apr 2022 15:31:10 +0000
Message-ID: 
 <TY2PR02MB36786114CB7F786A42E0BACC81EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46424df7-3ff9-49ae-37a9-08da1b0723b6
x-ms-traffictypediagnostic: SEYPR02MB5965:EE_
x-microsoft-antispam-prvs: 
 <SEYPR02MB59652CFBFC8E80D4CD65CB3D81EB9@SEYPR02MB5965.apcprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ArzJCMOt4tAopeZmX9CRl3p8Ii6FdvEsM6JE0MRHmfAPtYROeOK/2ZJtzDQnWSHcpuHGMT724v17bmk5RUPVfPADMQt4LldmVcfMCjXkaHPweWFaHWS5iPkO1QzL1OYRzOCNOV0TUx15+0EBvXSc3E0j1jO0dF4gETigP8XIJXLI0y0evqvSek0Vtutx5Zm1hXe3Bz3bK0vXwTaRUIEcrj97G7UxyH+XpVPGr3ACTQUjvTk5t7DciaLNSAIXyDu+BffXwhYfOwECrO7Ro83jKdIuySawazTWy9paR3yV1VF/p7AXyIv09MA2h3btzsJM+eDv1NeuzzfJw327qo7/XAMZYz6rd6MIaEW/L54xVKFHyt0wKRGV0iG9eQqGnd26rShHzJBaACq1TDWVXyN7D+V+jXUfP236H1TTwZGpQBv7PhSNzCBNEYE9vmxns+SL0KT9fhXbV8qg/Isy9tReGe9AHdPrp0n0xSy9V/XActOkbXKLOWzxGCUDr1w8ZzCxjrrXB3l0J4nQuVdK+zvb5ad5AbNuiiV4blwzpOP4nUwUHNrKTirmhpZ4Q8U4/+EP3nSCGoBeZV15IbWML7UVgukbzIhHHeFh0f9EeUrWbclQtkIbu4QY3IZhfS4Lm3xQG9D2oy7AlmUyJgvuFY2BmbGBEIE10M7wWdJMrjimwdA9xw60zZYfIUKJJp4Swh5UNQSXm2JSU8HOng2y4XwvtX1bLhHtKLEQ+HuVUB/DBwAC/KbTHdSHJwHHIWSzI2k9Dasokh1egJZ2VBr7v06CKW7vqUxvwjH7y8ddMUB6CpY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(83380400001)(86362001)(26005)(52536014)(8936002)(9686003)(7696005)(6506007)(508600001)(2906002)(55016003)(5660300002)(966005)(8676002)(38070700005)(71200400001)(15650500001)(33656002)(66946007)(66446008)(76116006)(122000001)(38100700002)(44832011)(316002)(66476007)(66556008)(64756008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Q0hPU2IyZmx5UU14RHNOMWhQYll5VmZ0eFZkQmk0Ym1SaVNYMDVqQUVoOWZq?=
 =?utf-8?B?cTduaEJ0eHpyeU9YSG1sUU1xbm42QVB5MHlDRlNIU0RHSWFQbTE5MHVoUTV3?=
 =?utf-8?B?RjFNWlJMNDE5Nks3ZURoQVNPNkJqTlphQzU4enVBNk1KeWhobm1IcDhHanMr?=
 =?utf-8?B?YldIZFRwRHdlTnVILzVHRHpTU3VRaWt6U1k5L09UZWlOUU5aRHpxMEZQamw5?=
 =?utf-8?B?WDZBS0tEeXJ2QUJ4MENHTHBCZlZKK3JoZWtzdDhKSlgxelV2OUVqNGlJVzFK?=
 =?utf-8?B?ZXArdm01ZmpyMW45QlROWVdlR2l0NXR5TmRXMEhEQ1ovT3oyaSs2RXdTRWgv?=
 =?utf-8?B?OFpWbFJKaDNCR2VDYWljTnU4RGdVaXJTTHA3V1ZNTVBjYTBSNHExZko5V2lu?=
 =?utf-8?B?TXRwVE5ZMUdoMjBNeHZOcFQrVTZwMGZUWkN4T2s2RVJIUExteUQvWW9HbkZI?=
 =?utf-8?B?TFNQUisyeWJHdVFkUHlHM3Ezb0F0YkFYNS8vVzBWMkpjVkhDejhXN3g3Q01U?=
 =?utf-8?B?MzIyS1NJNHFtWWd5SHlXT3N1WDIwMVB1RUZxSjBPTk5vd3pSZlFRMkpUYnJO?=
 =?utf-8?B?bWx3TWVHRXVJcTBFWTZHa3RhZW1IZW14VzlaMzVYemFCUGZVS1RrT1YwZ0l3?=
 =?utf-8?B?NWtiR3N2Zm55YTI1SmI2OVdOcnNkaVFicUZCY3Y2Nlh3OWJrSHpNbi9RU0Zj?=
 =?utf-8?B?b2p0SXdNL2Y5WXkrTTRqTFlLNUQ4SWp0RS9uRnFtNVZScWpCS0hpV1JvQ3hy?=
 =?utf-8?B?T1AxYWxXYWg5VW9mYjgraFRFL0J4cWFHUlFrZ3pDUXNjajJORDB5QlFDVkJV?=
 =?utf-8?B?NTZiQzAxUmwvN3JjZ0x4TzBTdDdTNkZhTHNVT1duemJaejd0UTJHQ0FiZkF5?=
 =?utf-8?B?UmsyVERUVUpNcVZKdmJieWwzOEVTbkZKdStYOFl2bFFERSswM1JDMkQ4bG1i?=
 =?utf-8?B?SVhLamhEYmZ2N3hOR1dSSE44REZGMEpvNEtIMXNxaHBEVHlWZkl6c3Ntek5y?=
 =?utf-8?B?WXQ2NWNjY2lSYkxUR3lFR1dJLzdMUm1EcTI4RGFLKzkrVlhHK0RUd3N5MWxo?=
 =?utf-8?B?VGhpV25lSm5XbkdvZCtVZC8wQUdacllJMjJKSHN1VEJzOFQ1UWpSbXJzTG9p?=
 =?utf-8?B?UWI1TEVCVi9RR2hGbmEyMWZqWVhibzlOVmZDU1FCSE9FRW5rRjJwcDdpemN1?=
 =?utf-8?B?cXZ5Z0dNWUlwbWxHNXpRS3ozUWNpRHlINUVORnU1S1BYRFBlbDVmTlVHY2sx?=
 =?utf-8?B?bGVPTkMvQVNpTkJQNWRNRHhMN2lSeXM2UkR5Sk52S0k0YjFQQnpiekVHTTNU?=
 =?utf-8?B?YlBuQVF6Y0liNHUxMW5ZRkFpbUkwbmZsWVJaNXBKQU5DVTMzSXE1QzFYcWVT?=
 =?utf-8?B?MnlrYVJ2MFRZdnNHTmVCYkI2ektOWk5ZcGFBelF3clI3UHIzbCtBcWZIejdZ?=
 =?utf-8?B?dVp0eVh3UmgvTVdYVlRoQXlkQ215V3lUTTVsQWZnYzV4RVptNXR5cFlpRFlL?=
 =?utf-8?B?QmZDNkRPZUFyZzBBVmZtK3FsYVo5QjVHVEFLZVNFcGtFck1UNWRna2UrWjlC?=
 =?utf-8?B?UkdwTzRtZnRuUkNEV1lsMG8xQ01YdGoyYkhxOUZET21QeVR2V0tzVTBndlhE?=
 =?utf-8?B?by96MFNibDAyTkJzRHBnNHBGcTRnMllRc0JzMG92bFVjcHlHMG1FWWNSSjh3?=
 =?utf-8?B?R2NqTHVxMGxWR1h2MGVsWC9CajZQTHZRbWlrUGFLVFEwT0JxV2pZcXMwTUR4?=
 =?utf-8?B?SkRrWFJhdnZHeVZsc2hTTU92M3RobU1Na3BNOGpxd0ZNR0wzNXh0OFRjOGhq?=
 =?utf-8?B?NTRyQ2NtM2I1WUlFeVRpMitPcEU3WVVYR0Zlb1BQaS9tUThZNkIvT3Z1R21p?=
 =?utf-8?B?eCs2UjFENGx0emlodHpiWGpkN256dE5FZi9VY3d1NFB4KzdPV3AyaXJJUDRE?=
 =?utf-8?B?S2hDTEREcE93OTB0MWhrV25DODZ4UWp6enBIcktxS25CR3BWbW9zQnRhVXhn?=
 =?utf-8?B?WHdET1BmRmx3SUZRT2FlOTJ6aExaU0RCZXJUS2R2eUlUUkRudkowVFFTdjZI?=
 =?utf-8?B?SktyYS9ub2x6OE50UUVsbVlxOENHRUxOeGd2a1o0dTU1elN1bEVQbno0S05n?=
 =?utf-8?B?SHZ3bnF0dFFqeG5EUkExcVpLNHRuaXNkSWY1ODF5QmhOMFl2eDlDd0tzUXBM?=
 =?utf-8?B?ZVIrU2N2NHdSK3oxZXhaN2ROTDk5dlNST01jczZGV3g4cTRFdUZUalpwOWRl?=
 =?utf-8?B?QjhrVDc2bWZBMXlSMXQvbHhJS3NXb094b0tUaVZCOEwwSnZ3aXJ6QzlKVkwv?=
 =?utf-8?B?MmllTFNvangxWVRSWGp3c0xzU2tJQWIrWjlYRkJvaWhHNEk1c2dXWDk4VkNT?=
 =?utf-8?Q?xY8SW07EcYIRbbVk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 46424df7-3ff9-49ae-37a9-08da1b0723b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2022 15:31:10.3899
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 j3JQF4aTK3UEEVG6n06rz/rmVyche9GfRT6H2uDrPuHKKo0IeA+f+G4JRnkYCxEBGmSHLLXw70eDyPJwp3/4qjHoEhk7KW/p90W3jL2Hl0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR02MB5965
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56707

VGhlIHZlcnNpb24gbnVtYmVyIGlzIGNvcnJlY3RseSBhc3NpZ25lZCBvbmx5IHdoZW4gdGhlIHJl
bGVhc2UgLnRhci5neg0KaXMgdXNlZC4NCg0KU2lnbmVkLW9mZi1ieTogUGV0ciBHb3R0aGFyZCA8
cGV0ci5nb3R0aGFyZEBhZHZhbnRlY2guY3o+DQotLS0NCiAuLi4vdHBtMi1hYnJtZC97dHBtMi1h
YnJtZF8yLjQuMC5iYiA9PiB0cG0yLWFicm1kXzIuNC4xLmJifSB8IDYgKystLS0tDQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCiByZW5hbWUgbWV0YS10
cG0vcmVjaXBlcy10cG0yL3RwbTItYWJybWQve3RwbTItYWJybWRfMi40LjAuYmIgPT4gdHBtMi1h
YnJtZF8yLjQuMS5iYn0gKDkwJSkNCg0KZGlmZiAtLWdpdCBhL21ldGEtdHBtL3JlY2lwZXMtdHBt
Mi90cG0yLWFicm1kL3RwbTItYWJybWRfMi40LjAuYmIgYi9tZXRhLXRwbS9yZWNpcGVzLXRwbTIv
dHBtMi1hYnJtZC90cG0yLWFicm1kXzIuNC4xLmJiDQpzaW1pbGFyaXR5IGluZGV4IDkwJQ0KcmVu
YW1lIGZyb20gbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItYWJybWQvdHBtMi1hYnJtZF8yLjQu
MC5iYg0KcmVuYW1lIHRvIG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLWFicm1kL3RwbTItYWJy
bWRfMi40LjEuYmINCmluZGV4IDE4MTgxNzEuLmRhYWZhZTMgMTAwNjQ0DQotLS0gYS9tZXRhLXRw
bS9yZWNpcGVzLXRwbTIvdHBtMi1hYnJtZC90cG0yLWFicm1kXzIuNC4wLmJiDQorKysgYi9tZXRh
LXRwbS9yZWNpcGVzLXRwbTIvdHBtMi1hYnJtZC90cG0yLWFicm1kXzIuNC4xLmJiDQpAQCAtMTMs
MTQgKzEzLDEyIEBAIERFUEVORFMgPSAiYXV0b2NvbmYtYXJjaGl2ZSBkYnVzIGdsaWItMi4wIHRw
bTItdHNzIGdsaWItMi4wLW5hdGl2ZSBcDQogICAgICAgICAgICAgbGlidHNzMiBsaWJ0c3MyLW11
IGxpYnRzczItdGN0aS1kZXZpY2UgbGlidHNzMi10Y3RpLW1zc2ltIg0KIA0KIFNSQ19VUkkgPSAi
XA0KLSAgICBnaXQ6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvdHBtMi1hYnJtZC5naXQ7YnJh
bmNoPW1hc3Rlcjtwcm90b2NvbD1odHRwcyBcDQorICAgIGh0dHBzOi8vZ2l0aHViLmNvbS90cG0y
LXNvZnR3YXJlLyR7QlBOfS9yZWxlYXNlcy9kb3dubG9hZC8ke1BWfS8ke0JQTn0tJHtQVn0udGFy
Lmd6IFwNCiAgICAgZmlsZTovL3RwbTItYWJybWQtaW5pdC5zaCBcDQogICAgIGZpbGU6Ly90cG0y
LWFicm1kLmRlZmF1bHQgXA0KICINCiANCi1TUkNSRVYgPSAiNGYzMzIwMTNhMDJjNDIyZTE4NmM0
YWFmMTI3YWI2YTQwYjk5NjAyOCINCi0NCi1TID0gIiR7V09SS0RJUn0vZ2l0Ig0KK1NSQ19VUklb
c2hhMjU2c3VtXSA9ICJhNzg0NGEyNTdlYWY1MTc2ZjYxMmZlOTYyMDAxOGVkYzA4ODBjY2E3MDM2
NDY1YWQyNTkzZjgzYWUwYWQ2NjczIg0KIA0KIGluaGVyaXQgYXV0b3Rvb2xzIHBrZ2NvbmZpZyBz
eXN0ZW1kIHVwZGF0ZS1yYy5kIHVzZXJhZGQNCiANCi0tIA0KMi4yNS4xDQoNCg==

