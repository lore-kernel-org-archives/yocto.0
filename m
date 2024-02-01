Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A1CC47DDF
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 13:11:21 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.50])
 by mx.groups.io with SMTP id smtpd.web10.14952.1706793079821362653
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 05:11:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=ldVgj9SA;
 spf=pass (domain: siemens.com, ip: 40.107.13.50, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCTFCC+RuyZmZrLhnmk7NPGWbun8QvBMH1TaCnhW+/O1fbvenZmwRQLbAEoTM/vCWnR6GMqGrLq13qVj+GiTMREJ0b8NAlqUmgU3KslMncC9MyaJ+Ri1V/ngSFQU4g9wlejs705Pj3B1mzqKteRkHfQDzpOb7cIflYhd/y0tpKToG3GD1TJnatpxSLcQnzesBgJRIDm07O+Zqef5kTddrjylhJiiUwE5JiGaSXgXasZS9+IP/D7n7bxGyHm+PQX2f7+EDP3BBqfBU8OX6kRUhEUMeZTAFSZbvOsfCUVhPpKMegCPrWdyHhIvlxCi/lK0jKpVN0okD0lGSvT2Ap5dBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YX33PYCrf0y/SOA4oa1kdhJLI4Rf0TeK/LhyoZKcdew=;
 b=TYN/+AgB+hPxjQWpXy7JwiycrFJT01nvy1sry9JlEqVKkeIvRv6QpvaR+fPeSMlMiKAN8aHW8Y8d1lCNL+In6R1R7W4WVaRiy31I9AAy8Hp3+snE1FH016ZkwC/PQ2TFi3D6oq8rPmOEosbX2nW1OYCYtOKF7EXsoNF2WSZ+rqvo2JdwkzYVY+kRmG3oI9GmVfXSsW7UU/k1aRiEEJRqF5nl9nSVtDXwSmVZX/xfwTqW+Dgo7vKlMR0cA26SkBFmknsSaqAi/sAsYzPXv0N6NqlwQBVSXyLYcDlbaSIOQEfh9nz7X1FIs/ppN2vYW5OgV2h0++kejanPpmSWxfy7Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YX33PYCrf0y/SOA4oa1kdhJLI4Rf0TeK/LhyoZKcdew=;
 b=ldVgj9SAncxaVdPj3+0VqmBjgK7QhZ7u65pBGeayOPmi3O7LO5ZM/y8iJIfzWMr1RxyIm0UAaIcHgtawiYPnPwNrYco708r0RAYLNz34ZLQMvhrWTUIy+2tiBhFVzO9DijkozpQ5Z9IJrFvO5Su5H/rJOYrxg3k2/mhMT0TBPSHpOUNwuMMR1n1XNPrul9Je4gD4kGLGRsXBrqrGpAQCLxg8xG9NmgWxqWwiZzODoD+8i4h4UphEvXbdtnuofZaC1Mb9CNbG5a2oaSaBClk7oiR6yocDVoBpJ6HAuxNH7kAud7xHQyeDRd6x9zGR9z3rJTrU0+AdbXE0rNCttYbXnw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by DU0PR10MB6155.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3e7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Thu, 1 Feb
 2024 13:11:16 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c496:afda:bc34:6b5e]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c496:afda:bc34:6b5e%7]) with mapi id 15.20.7228.029; Thu, 1 Feb 2024
 13:11:15 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "timotheus.giuliani@philips.com" <timotheus.giuliani@philips.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Is there a way to speed up the initial fetch task?
Thread-Topic: [yocto] Is there a way to speed up the initial fetch task?
Thread-Index: AQHaVQrnkqEmGmL2rEi+QtkBlBHCrLD1bbQAgAAFxACAAAFTkA==
Date: Thu, 1 Feb 2024 13:11:15 +0000
Message-ID: 
 <AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
 <23652.1706792492588535839@lists.yoctoproject.org>
In-Reply-To: <23652.1706792492588535839@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=1105a91f-9e17-462a-920e-521b0b4bc320;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-02-01T13:06:16Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|DU0PR10MB6155:EE_
x-ms-office365-filtering-correlation-id: ec03925d-c30d-466b-8962-08dc232745ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 l0V5x3f2CTGnH3gGcvXgbtD1dvNl6ZunwdZby7Z/6oz/ZzIKkiXVxhiGyT3/71qwJw5gqYS/jcU9DDVYyPLxFaMHobhzdSlZSmstz7eRF/m/6yjqWp84JUYEYqZJwXOBjyyTdrWVZrctFIshcc/v7B/de7qxwhPimr45oo0cio14Ik1ZhMTQHfNpz71H6orMEZtgKNeKcKenh+cBOiJn3GU+gDUetrdAA7ZVnZ26hDtFr1KMaC7iTEKCelLf/XtyA2/BT/4MJLj6di8FvnlkXSlN7ibgK7dcAoKPe5xa3VacDF+v4mMvtwfD2ke/K5P3m+I0dJuEYyNtDcVVBXeKjnk/uTtC0mNmE/mFGZvYnZqDIN3PCEa2aFmS+Ij9YF7cniCbmeb+2QNxSQMOi/XSHPUhqH+Xj7jeY3QhhpKcHDyJqD8GJUp9ndTA5w4fI7k87RP4azO/JoRzjZaIIdx8O+Sjt9kFQnWrqWg4p4mZtOnXpHo2H6qLBWjrTJ0cJFgApWncK/trggUByJ/WEoXkL/wzDUQV6q+m2Ol5oFxrTkWFoMeviob7T2YF+BIDR8Ri27vUDNj1JSq3+bT2Uj0otBN8SOzt/VpwsBp6W7qjbdymLgBwU/6lW2jxpCIB8VSgJh9Xssq7wOts1PvFqTQMog==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(346002)(136003)(39860400002)(376002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(8936002)(8676002)(64756008)(6916009)(38070700009)(66476007)(66446008)(316002)(296002)(76116006)(66946007)(66556008)(478600001)(4326008)(86362001)(5660300002)(41300700001)(33656002)(2906002)(4744005)(52536014)(83380400001)(55016003)(26005)(38100700002)(122000001)(82960400001)(6506007)(71200400001)(9686003)(7696005)(43043002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NDBqM2JhcFEzTzVTSUZUMnlhaTFCdmxReUtmZVBTM3RWR0FQMXdoR1d5UXpy?=
 =?utf-8?B?QUJaUGx6OWVNSURqL1hqYkxQeFkvdGJPNmR6LzB2bjV1SnBtY1czTGpTQ3Fa?=
 =?utf-8?B?UmVFazNod0p4MWZqZzJkZVpVaXA1ZExyNzlLdTN5ZFIya3VPcDBhK2RQcWhj?=
 =?utf-8?B?dnZUNXQrR3A5L1JCYXJWYWZlTWhDOU9QT2ZSc1V1VEVMcVNFQ2VMeTRMYkFM?=
 =?utf-8?B?MW5jM2hUNEU2SXBKSEFCTWFpZk5ZdmFMM3V6bTNWbkR6VWxKR1JqOXU4OE5U?=
 =?utf-8?B?VnM0VGhFYVdMUWd5SUM3OGFwNWZ6N0doTzh3aHlDZ2plSHVxUThCdGx4UWR2?=
 =?utf-8?B?YjlPWGpCd2dlbHBRd1Rza2JYcEw2THRmYmNzZmkwQjVydjROdSt1RFV2Y2xJ?=
 =?utf-8?B?dVFEVWhYR0RvUUdoZldQaDJIUFdZY3l3ODlmV2NFQWN6cTlOTEhVRHhyS3di?=
 =?utf-8?B?c21TVDZoaVBVeWVXY2F6MFI2K1cxNU5mNlNUUDR3bVR1U01CSjdCQTV4R3lX?=
 =?utf-8?B?YjVmUHJML0x1di9vaXRpWXhlSktHb1AvdFYwV01CbCtIM1lyUlIvVTNpWWlJ?=
 =?utf-8?B?eWRPRlQ2QmtXR2l3U0gwUFNCUDkycU5XZ1B2a2ZyaUxYT3EzMXU1TnN3a0tH?=
 =?utf-8?B?NkxtVUZJQ3B0NGR6UUs3QzdPYjYxdnR1VktDQ2poK2dQV3VMRWVSd1VBdWo3?=
 =?utf-8?B?bzdGUEQxaEoyVWRUcXNQKzBZSUVKcDEyd0k1L29HS3dhSmhSanZHT1A2aVFI?=
 =?utf-8?B?Qk5NK0E0L2piTlprY0pXTDI1WkEzUUFyVk1odHRJWjg2ZSs1RnlvMWFnbCtM?=
 =?utf-8?B?NkE3cU4zV3VNbFVjbUxEVHNrUU01WERDb25YdWJLQWdVVU1NVjZyZVRFVzQ2?=
 =?utf-8?B?anpMRW80SlROOUczM0FYUHp6Zy9ZRno0UGhTV2VoSmMzczdQQ1hnRjl5WXVm?=
 =?utf-8?B?TWVuRWFRSzY3M2FBVUMyK0JQc0lYSUxKNFE2TE82SmFOYVU2Q1hGaFFjZlk3?=
 =?utf-8?B?ejNuci9Xa3g3T3NiSHM1TUxTZ04yYzNOSkZQR3hqV3VBQ2ZsMEFHN2pIMVB0?=
 =?utf-8?B?RDB4akNPaVRsLzF0THdnWFVxa2hLQU9SWHFvKzlTaXZsT0hkbEh2WWErc0x5?=
 =?utf-8?B?UU9Lc3ZIcmQvZUYvdHlJQkR2bCtnYjZIMnd3dGVDVllzaG5rZlhrMVRhSWhE?=
 =?utf-8?B?NUx5ZUNFeGpTSFhsZWRiWWZWemNPNHFjSHV2akw1Nk9kaXREMFFFeWlBeGl4?=
 =?utf-8?B?NTA0QVZlb1NTOERFRm5qZnVhTlZTa0hoNWt2cWFmVVYwSlJlU2RJVE4yYjMz?=
 =?utf-8?B?VDIrelYraHpab1BoVjJZMlV1TnhlUjRZaHhSbmpZVktLbGprVnhYVUNFaGE5?=
 =?utf-8?B?aU84Uy9ZTkNHZ0pTbmRKOERrMWxveitOekJXWHlLWGNiTlJJYVllU0RMM2d4?=
 =?utf-8?B?ZlJ6bTUzbFBnQzdOTU1sTE5CZzlhZGxla0NiaXRPU0toV0lHM3REQWplb1pD?=
 =?utf-8?B?QkFVclcxbXhQVi9WSkIrL1loeElqK1M4ek5UN0JtVU9WdForcnpIeTJPU3lB?=
 =?utf-8?B?SmVBMzc0OTArcnB5YUZ3eDJvZ0FyMVNFcS9QVGh1TEFjWW50dndmV2svZDh1?=
 =?utf-8?B?QkhTY0VYWEpLMkxZQ2dQVFZ5MjdTMUVXZWJQN0FnYVJCSXlzamdUeTNieFRl?=
 =?utf-8?B?V3JsQVlBNW1LYy85UzZqQ0ltSkt3QlFadmNSeENpZ3B0S0lMc2gyZmVadGFC?=
 =?utf-8?B?Qks2YXZWUTJqZUNDZVJXQ0JLM0pmK1RxV1N2UXNwdGpSSjk2ektJazZudEN2?=
 =?utf-8?B?cGJaWjhzUjc1MmNndUl0NUJ6ZW0yVnNGYlA5elFTclFxL096b3lIUVdMYXpQ?=
 =?utf-8?B?YUY2V282akhjRytXVzdaVXlhbUJ2L2JheFdGalVCSGthOUE1TzlNWXRIZFZO?=
 =?utf-8?B?VlZ4VVRxNFVMK2RlRk1WSDV4QkZIU0g4aWZMcldmTU5IS0M1emF3N2duR0VR?=
 =?utf-8?B?bG9SL0pBNVk3Y0xMQm00Rys2d2ljdzRwY1lWWCt1SlpsY2RFWEphZjFMbGt1?=
 =?utf-8?B?eTJuUzZwSE53UG1kUTFXbm0xUkdYaE5BZ3I1SkxRS0dLMWZOMHZMeStRRENQ?=
 =?utf-8?Q?Bm7urXpA78zZyvFJ9RTszzJ/4?=
Content-Type: multipart/alternative;
	boundary="_000_AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432AS1PR10MB5697EURP_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ec03925d-c30d-466b-8962-08dc232745ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2024 13:11:15.8895
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GbKTsr/bgEkm2gjl+/S/A70yNBjHtik4TZxCS2JHnXBOz00WwTj5tDbsntMiJlUAjLOEo/f+l7+HAFxC4IrPQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6155
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 13:11:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62361

--_000_AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432AS1PR10MB5697EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJdOKAmXMgbm90IHBvc3NpYmxlIHRvIGtlZXAgdGhlIGRvd25sb2FkIGRpcmVjdG9yeSwgc2lu
Y2UgdGhlIGJ1aWxkIHJ1bnMgb24gY2xvdWQgcnVubmVycyB0aGF0IGFyZSBzaGFyZWQgcmVzb3Vy
Y2VzLiBFdmVyeSB0aW1lIGEgUFIgaXMgY3JlYXRlZCBhIG5ldyBydW5uZXIgaW5zdGFuY2Ugd2l0
aCBhbiBlbXB0eSB3b3Jrc3BhY2Ugd2lsbCBiZSBhc3NpZ25lZC4gVGhlcmVmb3JlLCBJIGNhbuKA
mXQgcmV1c2UgYW55dGhpbmcgbG9jYWwgZnJvbSBwcmV2aW91cyBidWlsZHMuDQoNCg0KDQpJbiB0
aGUgc2FtZSB3YXkgaG93IHlvdSBwcm92aWRlIHNzdGF0ZS1jYWNoZSBtaXJyb3IgaHR0cHMgc2Vy
dmVyLCB5b3UgY2FuIGFsc28gcHJvdmlkZSBkb3dubG9hZCBtaXJyb3IgaHR0cHMgc2VydmVyLg0K
DQoNCg0KVHJ5IHRoaXMgaW4geW91ciBkaXN0cm86DQoNCklOSEVSSVQgKz0gIm93bi1taXJyb3Jz
Ig0KDQpTT1VSQ0VfTUlSUk9SX1VSTCA9ICJodHRwczovLy4uLuKAnQ0KDQpCQl9HSVRfU0hBTExP
VyA9IOKAnDHigJ0NCg0KQkJfR0lUX1NIQUxMT1dfREVQVEggPSDigJwx4oCdDQoNCg0KDQpQZXRl
cg0K

--_000_AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432AS1PR10MB5697EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuZGVmYW5nZWRtc29ub3JtYWwsIGxpLmRl
ZmFuZ2VkbXNvbm9ybWFsLCBkaXYuZGVmYW5nZWRtc29ub3JtYWwNCgl7bXNvLXN0eWxlLW5hbWU6
ZGVmYW5nZWRtc29ub3JtYWw7DQoJbXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJp
Z2h0OjBpbjsNCgltc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowaW47
DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9
DQpzcGFuLkVtYWlsU3R5bGUxOQ0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglm
b250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5N
c29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5
OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWlu
IDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4waW47fQ0KZGl2LldvcmRTZWN0
aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5
XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4N
CjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlv
dXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286
c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1V
UyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWst
d29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9ImRlZmFuZ2VkbXNv
bm9ybWFsIiBzdHlsZT0ibWFyZ2luOjBpbiI+Jmd0OyBJdOKAmXMgbm90IHBvc3NpYmxlIHRvIGtl
ZXAgdGhlIGRvd25sb2FkIGRpcmVjdG9yeSwgc2luY2UgdGhlIGJ1aWxkIHJ1bnMgb24gY2xvdWQg
cnVubmVycyB0aGF0IGFyZSBzaGFyZWQgcmVzb3VyY2VzLiBFdmVyeSB0aW1lIGEgUFIgaXMgY3Jl
YXRlZCBhIG5ldyBydW5uZXIgaW5zdGFuY2Ugd2l0aCBhbiBlbXB0eSB3b3Jrc3BhY2Ugd2lsbCBi
ZSBhc3NpZ25lZC4gVGhlcmVmb3JlLA0KIEkgY2Fu4oCZdCByZXVzZSBhbnl0aGluZyBsb2NhbCBm
cm9tIHByZXZpb3VzIGJ1aWxkcy48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJkZWZhbmdlZG1z
b25vcm1hbCIgc3R5bGU9Im1hcmdpbjowaW4iPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9ImRlZmFuZ2VkbXNvbm9ybWFsIiBzdHlsZT0ibWFyZ2luOjBpbiI+SW4gdGhlIHNhbWUgd2F5
IGhvdyB5b3UgcHJvdmlkZSBzc3RhdGUtY2FjaGUgbWlycm9yIGh0dHBzIHNlcnZlciwgeW91IGNh
biBhbHNvIHByb3ZpZGUgZG93bmxvYWQgbWlycm9yIGh0dHBzIHNlcnZlci48bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJkZWZhbmdlZG1zb25vcm1hbCIgc3R5bGU9Im1hcmdpbjowaW4iPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9ImRlZmFuZ2VkbXNvbm9ybWFsIiBzdHlsZT0ibWFy
Z2luOjBpbiI+VHJ5IHRoaXMgaW4geW91ciBkaXN0cm86PG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iZGVmYW5nZWRtc29ub3JtYWwiIHN0eWxlPSJtYXJnaW46MGluIj5JTkhFUklUICs9ICZxdW90
O293bi1taXJyb3JzJnF1b3Q7PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iZGVmYW5nZWRtc29u
b3JtYWwiIHN0eWxlPSJtYXJnaW46MGluIj5TT1VSQ0VfTUlSUk9SX1VSTCA9ICZxdW90O2h0dHBz
Oi8vLi4u4oCdPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iZGVmYW5nZWRtc29ub3JtYWwiIHN0
eWxlPSJtYXJnaW46MGluIj5CQl9HSVRfU0hBTExPVyA9IOKAnDHigJ08bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJkZWZhbmdlZG1zb25vcm1hbCIgc3R5bGU9Im1hcmdpbjowaW4iPkJCX0dJVF9T
SEFMTE9XX0RFUFRIID0g4oCcMeKAnTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9ImRlZmFuZ2Vk
bXNvbm9ybWFsIiBzdHlsZT0ibWFyZ2luOjBpbiI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBj
bGFzcz0iZGVmYW5nZWRtc29ub3JtYWwiIHN0eWxlPSJtYXJnaW46MGluIj5QZXRlcjxvOnA+PC9v
OnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432AS1PR10MB5697EURP_--

