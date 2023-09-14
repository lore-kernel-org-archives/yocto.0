Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8865EDE9B5
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:12:48 +0000 (UTC)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com (CHE01-ZR0-obe.outbound.protection.outlook.com [40.107.24.107])
 by mx.groups.io with SMTP id smtpd.web11.10494.1694693561010753601
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:12:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=SyFku2DG;
 spf=pass (domain: vrag.ch, ip: 40.107.24.107, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxYeHJ5qgyIFqd5FC8eNYkF1A/EtXtsrKtlSBThEth1pKnUA7PW/FDioulJYGhBaO4l4MvbwPIrMTHVJwGRGdE1Yvc+ZOdA0zP0kWMbUEBNL4m9q4TE+ua42WUUUxoBhLkSKaklzmwXUTPZgaY3SdJ5g1DPZEvg4Gg9O3OzB478OVn7tvYIVwaJmIO7rXPmBK2dXvWHHTLrJgE8eXgn+FQOxzsMUkOEffcEcAx8zs4gfgnzBWVrybT5T7zBHZQ8r0uEW6i6oHaCVx9aEmCL1tOdYSdQoUw7dPYYcFLMfIc/k2uCM3oqkvzAXG8EsOIfEGjjvjwyLuWfydkntz69ZEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fCYGOaChfshAvcNF5wquJc2ryNeUFBb1EYvphC5LNCE=;
 b=Unq58SxqA8eZ2IWlTu3M7my9BRD09EY5OGvDM1/QBR4PqeyhWQem3AUkHHwghZMuMGjlbnuf24uo02nhPFXQ/MKXfRkuy2Z1qYMzSzjNbXX/XngnGHsdvgARWA+Tvm/rFsQ5QQhn0fftzELthckIVEnvon5fIfUkw3E4/F4dzBg8ZmDjgQ6XamQAgymnUT3KG/PBn+SurLteoGV/dRuEPWsFchNjN6zbr6HTfQXeo/HqNeHhkpAmFXUNaNwXXq2GrVY+AIP8ihYcBO0GAoqTjXsJocFnQbuLzXSRYCMpbIVJWuxHfOaSG3U9pgkTpksk9IQ2wQXaULMfY29xr3LiQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fCYGOaChfshAvcNF5wquJc2ryNeUFBb1EYvphC5LNCE=;
 b=SyFku2DGO/Gzcixnj93N670+FY5NrldGyOckylON9NX4/4e4MhcAgbHdQGR7h+MeXvNYwMzuCIkJctfFU8LHpJB8LPZfpjx6bETucoGZXolYOV1WRghFmGhaorPykNHwYILrSZgLsH+gKGPIT0nu+tK0seCmBP7W+izou/XDfqo=
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:49::5) by
 ZR0P278MB0845.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:42::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.20; Thu, 14 Sep 2023 12:12:37 +0000
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b]) by GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b%4]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 12:12:37 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Documentation: How to build multiple packages from one
 source repository
Thread-Topic: [yocto] Documentation: How to build multiple packages from one
 source repository
Thread-Index: AQHZ5wKw2CUncOyFwEKfFqZocrt+8bAaOGyAgAADDoA=
Date: Thu, 14 Sep 2023 12:12:37 +0000
Message-ID: <3b631bab17211fb9a137b8088ac9ced0b03f5084.camel@vrag.ch>
References: <31637059211ed2cfca942dd0f26228048987a76a.camel@vrag.ch>
	 <CANNYZj9Bvo9ubvMBmnQSxoPcxYQ1XtxUg7cydhpuUZ7-S6TJBw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9Bvo9ubvMBmnQSxoPcxYQ1XtxUg7cydhpuUZ7-S6TJBw@mail.gmail.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0550:EE_|ZR0P278MB0845:EE_
x-ms-office365-filtering-correlation-id: bc646c13-089a-4552-8bd9-08dbb51be2b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6eb0Rp+NxwwIdeJodMC2JBgOGmoetLK/26qpCmx5SecwzAQhMNznbx7y0BeuW85ZBTJjy5XGW/Oaje5erA1wT5jgZphJJ/FyDo+M96JsmQeg9//z1g6EGEppwhSBOLB7zxsgqQuttCck7eyhR60Iyv6RPotXwbRsBM9q9s9N33D1fOmSHYPCKUiONGzuOtSFNcq/KGNPGRJ/iT9GoEH0LwSUt79E9ARGxCuriz9Gl2ZBYYOPRWrvEKj5TPhBfbow+99UrLFfRVCi7gGsrxmwzzYawwhRuBU07oNwkh5oIYlMcBOvfC7z4Ib51GCPa552ciD9mVJk2ULneyjtHTg8NLQTN2QwMI5PvYP/vOPfM0heAh42//YA/kNjsTuJK+ZYhRzIp3janA3uPiBjXhTexOc9whaIBlzEhFUvC4C50/U91G/1tSUqpXjlgvzbE3uE+wywGFn/Az1ImsqUd7NclC7yWOb+SDoH1yxMZeSEqlyDarAlvxTnmDozX9+Ichydz6hHhDRPd3xKtNrS24PXk+PbbWanz36CWA2O04YH4UngcGVlkE6n5Bw7f0bMf9oAsKrsPGlLePG5whau4X0mgbRaaxOTGIP5r9LAyK/gmoMz7anCt0yARPm2f59zRCbd
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(376002)(39830400003)(366004)(136003)(1800799009)(451199024)(186009)(71200400001)(83380400001)(64756008)(26005)(2616005)(66476007)(66556008)(66946007)(66446008)(316002)(76116006)(6916009)(8936002)(8676002)(41300700001)(5660300002)(44832011)(6486002)(6506007)(6512007)(4744005)(478600001)(2906002)(91956017)(86362001)(122000001)(36756003)(38100700002)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bytRRDhjdTB1ZkJCZDNJcFd2UHhTZG1WY0g3bm1TQVpxeGNTNE1rYmsvZU9i?=
 =?utf-8?B?QXJSTHFkdDJXanhmZEdZSmMvT0wrM0l4Ujd2VWhoZ1RHNUFoTGlzWHBoSERt?=
 =?utf-8?B?RlcyWWR0dWNUVXcwM1ZOSTBrSEd2THIwZzdZU2tyWFdkcUlDblhPa0VMdVM1?=
 =?utf-8?B?TDNBdUl5ZVV3UFpPRExxSU5lSWhTUGVTTUE5QzlXY0xyMGhyeUxwS0p6aUV1?=
 =?utf-8?B?VjFUVUxRZGJEZ2lRamU5TEVDaXpHeW5TK29RME5SdWVFMGorK1FLcC8wQm9k?=
 =?utf-8?B?TE1SWm1FYjRlTWcrRkhkdmEwYzd6YnZ4ak5uNGZSTFNSTzBPUE8rQ3JpZVI4?=
 =?utf-8?B?eDAwOWpFajExdHZzS2pyTXAxa2w4WnJOVndOS0hUbC9kU0ZBOUoyWUtPZndr?=
 =?utf-8?B?UGVzK01COFdHVngweElsb3N6TGhvdHo3L1VISElNeVhFankrL0oyTE9XWEZo?=
 =?utf-8?B?TnlrY0VBbU5RaVcvakxxY3Fwa1lNMXVCeXRYVUhuVmJGQnBuSjdjQWZGaWdp?=
 =?utf-8?B?eXBkcEU1R0N5MmgvWEIrK252bGNUZGFmVVpJLzI0RjdBMGFhYzNpOTJBcW8r?=
 =?utf-8?B?dkppVFFkRXEzSW5DY0VLYk5oN1dYc3A5dmU4TU1DS0VReVZtQlh1bXRHcWJa?=
 =?utf-8?B?bDNnNS9VRjFsTTNRRGxVRHNYRnRSaTJ5akhvVDBjL29aeUZwSTFscHZCbVlB?=
 =?utf-8?B?NG1lY2ZlTWI5elZHVmVienkrOUsyOGtDVzZjNzlMYVRoUElCRCtSSncxMGZP?=
 =?utf-8?B?N1ZZZFQxZi9kckxGZjVQWUQ0L1d0c0dUQjF1ZEVNb0RSNzIvcU1NRjNBM0N6?=
 =?utf-8?B?c2RQcFRnRHFBVnJFbDJBZFdRTUpaVU9rQUpzNnZpcTlmS1ZxdzNPVm1FdGd5?=
 =?utf-8?B?aVQ1cE5Xek1jUXZLL3dmMER2QjYzbGpRbHNVY3Y3amFWbm9Zdk16RVRTTEcz?=
 =?utf-8?B?c0NuM3VTcU00VkFkOExiZ2RiMmlhK0laOWh4UTlqT2RTYWo5aE1pUklxQ3Jz?=
 =?utf-8?B?bkxaY0F0OU84UUkxSS94VUtmeUc3dFZRMmJDQmo4L1c4VytIS1VmajFjS09q?=
 =?utf-8?B?ZGVHUnRjQjZvWEJidklRbWVyV2VycFd6R0czZm1xbUZiLzJzajJiQ05GR3dx?=
 =?utf-8?B?TFFUYktxbnY1KzFPTm5CQXJnZWdDVEk3enk4L0dxVk5KbmhSaUo2QzMvZXVR?=
 =?utf-8?B?aGMwOTlwNHoxdUFaYjBGTnBESDdTaHRacWFSRTNqR0xmWEtTU21UaTllejNm?=
 =?utf-8?B?VXYyVnc2VE9NcXpRdDZDTkVOaG5YTklJV1docDVnZzBydHQxS3NuNHBTWEdS?=
 =?utf-8?B?bUdkRFQ3d3I5ZTVGSVBNeHJjOGM2THVrek9nL0hZR3pkbm1NaU1rZndoMFpr?=
 =?utf-8?B?dStwUjZ2THpCQ1pFeTVjR1NxanQrMW13M1NjOWo2WDdpcFk1aDZ1NmJPNVMx?=
 =?utf-8?B?R3g4dHJUNEJXYUxDRXBJNXEvM0VacDFxb2JUMW1qT1duNFBkRk9LeWVFZ1JJ?=
 =?utf-8?B?Y2h6b2hHUTNoUm43bEljWTBEb1pVbXlVcC9Ddk9GMFQ5NDlHOW5kdjY3SFgz?=
 =?utf-8?B?TDJxSDAzNEJ5Wk5oUXRyakFmdFFIL0V5cUZWZ3hNRG5IUHlnSXhMNENFVy9P?=
 =?utf-8?B?cHUyOVRmUW1qaFZ3c3pDaG9waHl4cmh4R2lRd2sya0x1Qkp0a2NKcitGVEJy?=
 =?utf-8?B?UHFtc2ZUa0RFb3hoYXFJa3hUS0s3K2g3UEhwb0F2ZDZXb2RwcDh4NVB5Y1pv?=
 =?utf-8?B?a2E2YTEzNHJ2bFErb0VnYWZ6TmdGRFkrQTlwVjB3UHJMaWV0Z1d1dkxScHBi?=
 =?utf-8?B?ZzdVU1RkUTNXNU9RU0kzQStUTmJRRFhZOFg5WEJaTmN2QWp5TThlUmRGSksy?=
 =?utf-8?B?akRXT1hPWjR2UGtEVHkvbm1iaEZMcmRQc1FzTmgrNE0yTWRTalNWY1FnYTFl?=
 =?utf-8?B?TnhSMkxwUnZVdXRwT2Nxb3pjQTRDY0hOYzJuUkU2Z1I5MytQSEIvZGJpSlYy?=
 =?utf-8?B?Z09tOFV4U25OcUVGRFlaWXFITGtaZ1dyZUFCMUFHNzVLV1NMZzhtTFU5aHd3?=
 =?utf-8?B?aFNPSnptVm1EWkNXVFpBMG5XSFg3aXJsUXJiUWw1MVpncm9FL1VRZHNCb1Vs?=
 =?utf-8?Q?P653hNfj6SiVENjpAdMXFGMCT?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B3D12F106A30364387C68F9E8375E051@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bc646c13-089a-4552-8bd9-08dbb51be2b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 12:12:37.5045
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Jb/19ou/Bqob976OLUayWsNHO9RC12OxEv+fTk9ThcuUjpmXeWYv2RcfylF7+xJO+SZJLrrbq3r1yOxJu78zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0845
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:12:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60996

QW0gRG9ubmVyc3RhZywgZGVtIDE0LjA5LjIwMjMgdW0gMTQ6MDEgKzAyMDAgc2NocmllYiBBbGV4
YW5kZXIgS2FuYXZpbjoNCj4gT24gVGh1LCAxNCBTZXB0IDIwMjMgYXQgMTM6NTcsIERhdmlkIERh
bmllbCA8ZGF2aWQuZGFuaWVsQHZyYWcuY2g+DQo+IHdyb3RlOg0KPiA+IEkgY291bGQgY3JlYXRl
IHR3byByZWNpcGVzIC0gYnV0IHRoYXQgd291bGQgbWVhbiwgdGhlIHNhbWUgc291cmNlcw0KPiA+
IGFyZQ0KPiA+IGRvd25sb2FkZWQgdHdpY2UsIGFtIEkgcmlnaHQ/DQo+IA0KPiBUd28gcmVjaXBl
cyBzZWVtcyBsaWtlIHRoZSBiZXN0IG9wdGlvbiwgaWYgdGhlIGxpYnJhcnkgYW5kIHRoZQ0KPiBl
eGVjdXRhYmxlIGJ1aWxkIHByb2Nlc3NlcyBhcmUgY29tcGxldGVseSBkZWNvdXBsZWQuIFlvdSBu
ZWVkbid0DQo+IHdvcnJ5DQo+IGFib3V0IGRvd25sb2FkaW5nIHR3aWNlOiBpZiBTUkNfVVJJIGVu
dHJ5IGlzIHRoZSBzYW1lLCBmZXRjaCB0YXNrcw0KPiBmb3INCj4gdGhlIHR3byByZWNpcGVzIHdp
bGwgbXV0dWFsbHkgZXhjbHVkZSBlYWNoIG90aGVyLCBhbmQgdGhlbiByZXVzZSB0aGUNCj4gcmVz
dWx0IGZyb20gdGhlIG90aGVyIHRhc2sgdGhhdCByYW4gZmlyc3QuDQo+IA0KPiBBbGV4DQoNCkFo
IEkgc2VlLCBpZiBJIHVzZSB0aGUgc2FtZSBzb3VyY2UgaW4gdHdvIGRpZmZlcmVudCByZWNpcGVz
LCBpdCB3b24ndA0KZ2V0IGRvd25sb2FkZWQgdHdpY2UuIFRoYXQncyBkZWZpbml0ZWx5IHRoZSBi
ZXR0ZXIgYXBwcm9hY2ggdGhlbi4gVGhhdA0Kd2F5IEkgY2FuIG1ha2UgdGhlIGJpbmFyeSBkZXBl
bmRpbmcgb24gdGhlIGxpYnJhcnkuDQoNClRoYW5rcyENCg==

