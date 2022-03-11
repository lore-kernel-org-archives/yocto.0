Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636A0C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Mar 2022 10:01:06 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.80])
 by mx.groups.io with SMTP id smtpd.web08.3945.1646992864006994970
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Mar 2022 02:01:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=crxQjYOB;
 spf=pass (domain: optimeas.de, ip: 40.107.22.80,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8P4S7ZSAG8+OXqBuXYQkNwzPs2G1egbrur0V3wHFPdgxvrhWmtLD3vFSZazkaUdrDopJhyUCHKOWKaaZrnWYIXipjMLkI/IYl7z5TC8LOZz0u3w2LVLL8vSocckEcdZjXUL18Hgz6bBx2BvQrredkZix9sbpEP//sV0R8fHWHMLJRFbU4AY8oM+AklDpVNguCgm9lf0J+lWaDCNWKDmbtR9aLNm6SW8h/OyJHNvCdWnEYVukVeM5/w2Mbm/Kj5n88Wq4gtd4tdCAqCVGD0N7a29Dz5nXnCiGBpwfr6K+UzLFNX/icX8/0RoHsmQstw8k1HJzmMeS5cXDDDFBe9swA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ed4Uwdjby2GaXoE5XWMRB5QpBKofn0aM3MKD3sBX76E=;
 b=Wncz+59Td5wg7ZVHrQy6NG5S2WIZObgm90xWo9Gn7QMeZalefkYFHhEF6oidEh6FFeazEDG9zuI/2mmbd5FRwKrFM7N4kGcMRhXHxv2ztaYYjhdFTX29jwgARzDWFAOmD9DkkavjQaxip+eOLi1UIKw393eYDavIMs0S8h8kyt8aBCcuxBJePSK6yCh/qDujjvdicFHOM+4ydWcVKpdXOlZm/AwaoihIMuo/DwBvb/Sa7bUwVJutCbYO2arwpMG2wBRNCZJ1l+rUWHzxAzYRuojfBF+zYqQdODnSWjiQtBbfWj3DrM7gFvFGq/dLsBGRyIhxzGdWBeYQQtQfsn8H4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ed4Uwdjby2GaXoE5XWMRB5QpBKofn0aM3MKD3sBX76E=;
 b=crxQjYOBHYC4wCcjUt2ar0nldpJalvLkuecWjgwhMrW8KiGVfk8GX+Q64SIxSF+H2hLOaZYmVAYYABldcbqFOAbfc0BZXzIjz5UXSQkOLxvan+Ta9+xPiG8w50nKPDpAk8obZgmNDY+0ep9Tz5bhm0xar9dfjkw1Hxwmy4mPOM8=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM6PR10MB2789.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:ac::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.19; Fri, 11 Mar
 2022 10:01:00 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5061.022; Fri, 11 Mar 2022
 10:01:00 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] nspr-native does not build on Debian bullseye for x86_64
 target?
Thread-Topic: [yocto] nspr-native does not build on Debian bullseye for x86_64
 target?
Thread-Index: Adg1FCo3n/rwFczlSyel5/0U6Ia/IQABWAwAAAVOX2A=
Date: Fri, 11 Mar 2022 10:01:00 +0000
Message-ID: 
 <AM0PR10MB3107726CA96F9C7BBB8F9F69990C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB3107CFE67827C60D3FAE3097990C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAMKF1soBjQy1e9YxgT+drWF0MhMhmxt5_GK4EXXE-y+DVEK30w@mail.gmail.com>
In-Reply-To: 
 <CAMKF1soBjQy1e9YxgT+drWF0MhMhmxt5_GK4EXXE-y+DVEK30w@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c9d91e8-83f5-434e-8166-08da03460bae
x-ms-traffictypediagnostic: AM6PR10MB2789:EE_
x-microsoft-antispam-prvs: 
 <AM6PR10MB278946FD5F8B919E33DDC0BA990C9@AM6PR10MB2789.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1xvZiCVwk1u5X7K1HVnFR/8EvTMXiAxxc2RobdvyxFdSrYxc7M8ZE7VakOC4fVYcXGkesgMqoxZZKjMKuHh7HTuvlQ7HMGwqoHBNV09ZoRnryNYQGUTX8GHctX313JP9W8xrJe7lbFm7HT/fxSYtZDHhV/8ixxjb/w5GELvtB7q2Rco8Bvq80+OU2RgiYTNZXYnpdfumIArhl6QmgyqQP7RhjJSyQvZVrXs7JcOeNjm5sUc+ktPIgdy51jfKKNPAOGCazs3eez77ZHv0jxYqN8hs/QNFBtsqL4CUbpoEdDQqgAS+ennCdB7iihb9XxZj5ZxLy4iTpXyUZtuf6Fzh50PKIeHskImTulOIkLhqkF0CvhlkhPLkJAlE1oHRkrD5/IMq/N+0CFJgebM7MPaBA6wGmQCvF/KlgVCw49m+e9ztxTCSxSd5q+iYL94VAnwAEM7i0HjSWdJE6inuZLFuQN4c8QVZybilrTPVlMSfF5PKMyaHk6NqhcvXkZOjRZJD6nBME4mtZZzZNuy1KUM8lXzkCsYz0EUsZ3y7lwiLTlNNllu4zm9RRhc2W+e1RpDdWq80gz72ssM33pPhrGtgv4ZovrVedt+wm2ebyLj4mVcwtVoFw75LhzYJa/OVxGyD7j+bdpqNG2F4oVX7yO2T/3msVRXuf+ov6rCTFPP1CiF2mP7fI++VR38BpDgDx4Xp+Rk831ctyr2FSC8ddxSN3I+vmSkRRBmIaomhckQtp40V6yGrSZli7GmlP/Zilr+n/mrST53I6rq48guxJwyWBoKw5LWAAc9eFNDrdjWhnTg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(39830400003)(396003)(376002)(346002)(366004)(64756008)(6506007)(966005)(66556008)(4326008)(7696005)(66446008)(122000001)(55016003)(66946007)(53546011)(33656002)(8676002)(66476007)(76116006)(5660300002)(71200400001)(508600001)(38100700002)(2906002)(52536014)(38070700005)(8936002)(44832011)(83380400001)(9686003)(186003)(86362001)(6916009)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bFVRenlYNmF4UkszczRERjUxU1hBUFE2OTFWcUdjZDlGd2t6SlFDR3cxN0Uv?=
 =?utf-8?B?MEovb0xFOGRacWt5UXpDSmh1Mk1Yb2dNNGhvNE04U3NYRzg4Nm44OG45a3hD?=
 =?utf-8?B?ZVhZVEtmVXh3TS9oODZjNXJxczJUQ2Eyemg1WE9ranBlT3NWSjJuL1U2cDVm?=
 =?utf-8?B?SHlBdDI5NE1GSFBCRFl3MzJpUVNUT09WY2hNWC9sTjd5aHd6VnczRFNtNTBi?=
 =?utf-8?B?eGhPZWRXRXh4ejJLVFQvc1dvUFphdFVjL1ByaUNkTVZlSEwxTHBnMElxQzll?=
 =?utf-8?B?bERNeXg4WENzUERkTUpnQ2x2dmtYSHh6ZVdGdzZsTlZBcU0zd283VldGRlpx?=
 =?utf-8?B?akRRYTcvOWNQQnIvUHhOUmNOekhBcnpldFpNQ3B0V3BEQ05kUFZnSEU4Y3Iv?=
 =?utf-8?B?OThUZlpNd3hFc2xYNWtqbFYxWlhwMlVmeFFvY1V4dXYva1FsRVZvdWFFWDB3?=
 =?utf-8?B?LzJ2ZjJuV0kwOUVLS3I5TnlmaHRURnB2UVBzc29lbTRKdWU5T0pDNHJOT3JW?=
 =?utf-8?B?cEptTUpCVlNzelFyMTh4Y3pBOHFNdUgrblYwVXhBMXlvYlFWcStqakl6ZEtD?=
 =?utf-8?B?d2VBYVZyUDAwUjJDa2ZDenhhT2NScURBRlY5MzRuN0M5TFhsbkZqMVI5ZUkw?=
 =?utf-8?B?RUdyZ0NSR1dUWWRoYXMrYXhuaUN6UC9rRUNSazNSY2ZkNlJUektRT1BZUGFa?=
 =?utf-8?B?eWIzNVVJWE1YdFJUMnRsakpid1lCK0YwZ2UyWnFCNWhIZVhLMFFvY05rU0J3?=
 =?utf-8?B?cy9aVjVrYk5UeUlUYnYrSzZ0TVNhaU5FUFE2blJ4N2tHNzJ6cityVjlBemlV?=
 =?utf-8?B?dlZadjUzR3JDU0Y2WWlHS2I3ZC8vVDBaY1ZSblM3bElrcE5rQmxRL0VjN01n?=
 =?utf-8?B?ei9qWjN5WjBxa3N1YWR0RFFSM05LL1A4YlJSelMyN0NsUS9FL1lPcXJ0RGhV?=
 =?utf-8?B?RHlialdGWG8zU2VhbnRtd2tpZEdpdW9IVXNyL0FBaWhGTVd3a2pzNFZtdDEy?=
 =?utf-8?B?MC96cDMyaWtvV0ZvbVdTTVZmMVpDVWpIamgvL1NLaHJJNDBoUjVGbzh0amNl?=
 =?utf-8?B?dnpyM0NOTFVxMUZieVNRak9TbnorbFo0SWZ2RWR5QXFtM0pSTzJsRzlwY2hi?=
 =?utf-8?B?Uk45WnFiZzArYXlxTWd2blRRK1g4aDJrWkdHNlU5bzZ0Q2xXMDVROGMwdmIr?=
 =?utf-8?B?WG1NRGZMMFBJN1Y2dGR0dWs4UHk0bXVoVlkvT2FnZHA5RFhMOHphZmtzRjdJ?=
 =?utf-8?B?bjIzaXcyRm5yZEdhUUJRbjlyQzBlSW8zRUpudkRQOGZ6Wk5MVmhyb2h0S210?=
 =?utf-8?B?YlJmREQxOHRNa2ZrSlpTekYzdFBoYVNEb2M1alEvcDdUT2NWc29HSHMyanl5?=
 =?utf-8?B?QzVBVHdaUlNFUUo5c2h2eEUxZ3ZZdUt2S2RzeE9VWFo1ME1tV2VxaXFBVG84?=
 =?utf-8?B?SlhNalkrK012U0pCbEZBaXdYeWI1VGxtNUZVcTNEdEJVTDZRUlM2NFVzY1NK?=
 =?utf-8?B?SVlsUUNDNGhSUVdjL295ejJjYnJwRnlYUWhoSkhDZVZpMG5TTVRNZ2NRZzRE?=
 =?utf-8?B?Vm02bkh1eE5hUmhMTjFsOVl2M2JqL1Y4UWhMR2VTUGNJbklSWVMxc2hBWXhV?=
 =?utf-8?B?ZTl1dFk5K3ZkVHM4RzJCL3NHdkpOMW5GNzVtWnE4TlRZd056a0JHcWh6TVd2?=
 =?utf-8?B?TStkaElaYmNSVWZzUjBUaC9yV3lZUXFqUU9ndlppYjd1SHQ3QXJwK28rQ2N0?=
 =?utf-8?B?Vk8vS283K2s1QmwwSWU3bGkxNmpXUXpXcnJTYXB0RUJLZHZIWkdtNFFYYmhj?=
 =?utf-8?B?dmJCSDBUcFUrWUxrOUthSWdBNzlSRnBBK01YYTBrVVQxQjE1U1VGNWowSmho?=
 =?utf-8?B?NVJoMW9jMEsxZGRuVjdzOUdrNHFyN3pYWVRXeUIxMk9KazZSeGFrUmhWM0tX?=
 =?utf-8?B?Ykg3SHNFU0RhRUpYOTVvckl5REttZHh6dTFFekZTSDZaT3VDM1l5MFNJT0RY?=
 =?utf-8?B?T2t0Mms2VWpLSkp1UnV6S3RzekNlRFFDd2VQb0xYNjlVT2hSMXVBWmttU3pn?=
 =?utf-8?B?Z1BTcEZ0d0tWb0FJb3c1QVo1V1IyZStSa0VoSUdzUVZKdEdISFNMOFAyMTdZ?=
 =?utf-8?B?YXJQR0gzdlpaNUQ5SE40VWFyQWZRWTZpeGpnWEhnZ0JlQ0tLQ1RWTWx3SmRp?=
 =?utf-8?B?dEZYU1RSa3FsTElWU1BYcjZnclFweENhNVNyYXhJaGdWMTJwcUl5eERwU2xz?=
 =?utf-8?B?bmpzcjU2NElya2tyL0RUS0xSWFdGNExkVmxuVmtRUXJDQ3IrMVlNNTEwSEFk?=
 =?utf-8?B?ZFhjWnEwOGs5Q3IrVnpNbW9mZTl0d2NsenNDL25FUnJUa1pFeUFzQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1c9d91e8-83f5-434e-8166-08da03460bae
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2022 10:01:00.3988
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 SavfcB9saSuQHqzd05L0DLaYr3l/UBAwE6H+lf5vTHTrlAHIw68ggskDjlrP3UrNPalLtQoHy0dhlvKMpK9Lx4992BDCH5OUeqAqRtk858w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR10MB2789
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Mar 2022 10:01:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56421

WWVzLCB3aXRoIG1hc3RlLW5leHQgdGhlIHByb2JsZW0gaXMgZ29uZS4NCg0KVGhhbmtzIQ0KDQoN
Ci0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0tLS0NClZvbjogS2hlbSBSYWogPHJhai5r
aGVtQGdtYWlsLmNvbT4gDQpHZXNlbmRldDogRnJlaXRhZywgMTEuIE3DpHJ6IDIwMjIgMDg6MjgN
CkFuOiBNYXR0aGlhcyBLbGVpbiA8bWF0dGhpYXMua2xlaW5Ab3B0aW1lYXMuZGU+DQpDYzogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KQmV0cmVmZjogUmU6IFt5b2N0b10gbnNwci1uYXRp
dmUgZG9lcyBub3QgYnVpbGQgb24gRGViaWFuIGJ1bGxzZXllIGZvciB4ODZfNjQgdGFyZ2V0Pw0K
DQpUaGFua3MgTWF0dGhpYXMNCg0KVGhlcmUgaXMgYSBwYXRjaCBzdGFnZWQgaW4gbWFzdGVyLW5l
eHQgdG8gZml4IHRoaXMuIENhbiB5b3UgdHJ5IG1hc3Rlci1uZXh0IG1lYW53aGlsZQ0KDQpPbiBU
aHUsIE1hciAxMCwgMjAyMiBhdCAxMDo1MSBQTSBNYXR0aGlhcyBLbGVpbiA8bWF0dGhpYXMua2xl
aW5Ab3B0aW1lYXMuZGU+IHdyb3RlOg0KPg0KPiBIZWxsbywNCj4NCj4gSGFzIGFueW9uZSBoYWQg
dGhlIHNhbWUgcHJvYmxlbSB3aXRoIHRoZSBtYXN0ZXIgYnJhbmNoIHNpbmNlIHRvZGF5Pw0KPg0K
PiBGb3IgbWUgdGhlIGJ1aWxkIGFib3J0cyBhcyBmb2xsb3dzOg0KPg0KPiAvaG9tZS9tYWsveW9j
dG8tb2NlYW4vYnVpbGQvdG1wL2hvc3R0b29scy9sZDogLi4vLi4vZGlzdC9saWIvbGlibnNwcjQu
c286IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGRsb3BlbicNCj4gL2hvbWUvbWFrL3lvY3RvLW9j
ZWFuL2J1aWxkL3RtcC9ob3N0dG9vbHMvbGQ6IC4uLy4uL2Rpc3QvbGliL2xpYm5zcHI0LnNvOiB1
bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkbGNsb3NlJw0KPiAvaG9tZS9tYWsveW9jdG8tb2NlYW4v
YnVpbGQvdG1wL2hvc3R0b29scy9sZDogLi4vLi4vZGlzdC9saWIvbGlibnNwcjQuc286IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8gYGRsZXJyb3InDQo+IC9ob21lL21hay95b2N0by1vY2Vhbi9idWls
ZC90bXAvaG9zdHRvb2xzL2xkOiAuLi8uLi9kaXN0L2xpYi9saWJuc3ByNC5zbzogdW5kZWZpbmVk
IHJlZmVyZW5jZSB0byBgZGxzeW0nDQo+IC9ob21lL21hay95b2N0by1vY2Vhbi9idWlsZC90bXAv
aG9zdHRvb2xzL2xkOiAuLi8uLi9kaXN0L2xpYi9saWJuc3ByNC5zbzogdW5kZWZpbmVkIHJlZmVy
ZW5jZSB0byBgZGxhZGRyJw0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IE1hdHRoaWFzDQo+DQo+DQo+
IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2Fn
ZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBZb3UgYXV0b21hdGljYWxseSBmb2xsb3cgYW55IHRv
cGljcyB5b3Ugc3RhcnQgb3IgcmVwbHkgdG8uDQo+IFZpZXcvUmVwbHkgT25saW5lICgjNTY0MTkp
OiANCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS81NjQx
OQ0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC84
OTcwNTczMS8xOTk3OTE0DQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3By
b2plY3Qub3JnDQo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
Zy95b2N0by91bnN1YiANCj4gW3Jhai5raGVtQGdtYWlsLmNvbV0NCj4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4NCg==

