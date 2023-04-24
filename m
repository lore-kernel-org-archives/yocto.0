Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29FDC77B61
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 15:53:32 +0000 (UTC)
Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.55109.1682351603785859907
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 08:53:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=Hde+kvT9;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1682351604;
  x=1713887604;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=L3Q9tj0+jXxtL0becQFVFmQ6npKlc6D0eXh90jvWmXI=;
  b=Hde+kvT98IjpWcO1kC89aZYAk2cdQqNF1lj3dbpv5Qe2uw8ouj55rgGe
   n/nBO4tdQckrOtZcMTexMWAkOVEBmE8v3XHaRxByaSojkyJE3QuyckFde
   hPvWvlBVu4YCSQYxoVxm7CTbs99SvZkpIZ0vnGjvczpaj7jyAtLAIN+rR
   SkeR3G1CQfdkBmLgy6TXjxXQngMY9adssuIp49mEC7yx+ypRjqtMKzA2E
   x7Bhz7QRFu9kmdWjO8+gnqC64Cgdp+/locTTuLdlYWYYIGbZvmvX1Ltmf
   jrszILLkitWQLKnc5yLANNACuOkSJ17bJ0nKhi1Mt2jlAPe1hWK4pSzME
   g==;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWdQHU18MMqvjagKnSRr5wAPeTZXnq4bb1E8j0zypKyZnDwrsFKTisq3dHNFP7HRdWR33UymaPhS7Ly3Ui77B9xjduDwdi4M0SgLD2YkK0mBof4+00MSDwLerwFhTV+I+9IWt0h5H27cYovAI8M3esdVDLObJ6IvU3BKz0uQeXTMzKtr2w8FToSSTsjtbsE4uDkcJCCmB2Z4AUJVM8lA/69RJOKXM+CXxq3rHy+j5gRzzdwXvtVlhPzQKlfEsgc8gfhkj22sHD1TPtZTeOpAGrLvEsdOreF9Mm6uHx/ZeGLJ9SYX3HnP+uqdFoFnET1KOJDOIfaJH0p/z5CTtUTDuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L3Q9tj0+jXxtL0becQFVFmQ6npKlc6D0eXh90jvWmXI=;
 b=fyN7v4IZi2gGuOXTj7sBtFYWl1ZDFMjqUb8ABqZHqXetr1Fgxvnj7dpy7OLZRoitwM2+krSGvJbR2T9a4u5SexAReY3flMkHvoUPxVLENC1/U6W1BJhQik1Cak03dyhQNXECP7ZI53yISOyKtgSA6AfBfrHkA1uZtZakfm71X5n5uTdnMGAGNbkYk9iX+qfJf3qBwKlyYirImBK0qKoii/8ItZiGSydbbHZmBUAEyeo3/P7hR69pZEQ6fzrZCazIZ2qkP5HgA1Qqw9bp85iEMryefslxZijHxH99c9PuORRC3iRn28PTTWqlhHIUPrM3JEPz0fnO3ED5IrP77MNm1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis365.onmicrosoft.com; s=selector2-axis365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L3Q9tj0+jXxtL0becQFVFmQ6npKlc6D0eXh90jvWmXI=;
 b=dzlvu/UjgDcYfZ6hNndxG7UfFO6tejfIKqoeFaUbTaWYt1+I1o+IqDTs9STQRXcAt2e/j1fYtAo8wHrMOZtSxT/QTmsgqi/L1g8xwY1y9G5qyppkwmGyEzmb80SjCTrovTB+u9NNoc4q+B2fOxmabJCO9DnSKgWlAyQrcbZbjbc=
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: akuster808 <akuster808@gmail.com>
CC: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Subject: RE: [meta-security] Unnecessary/optional dependencies in tpm2-tools
Thread-Topic: [meta-security] Unnecessary/optional dependencies in tpm2-tools
Thread-Index: Adl0oqXsYzE/YoRmR1KFMoxuzcw8jACAvJQAAAfEhKA=
Date: Mon, 24 Apr 2023 15:53:18 +0000
Message-ID: <DB5PR02MB1021389DFCA4A946CF3C1789FEF679@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <DB5PR02MB102133E92A506FE021382BDF5EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <f9879f12-9737-1c99-ff06-9e39528262ff@gmail.com>
In-Reply-To: <f9879f12-9737-1c99-ff06-9e39528262ff@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|DU0PR02MB9295:EE_
x-ms-office365-filtering-correlation-id: cc2e9590-668b-402e-a53f-08db44dc05c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MAWuTUtEh3xsyKUlrcb24OpQ+g2neudIGvrrAZIiCdDGuyHyFW/YhnJ5l8BPx3GBg+9cnXkquNRobqUf9wIAJYDJr1TWQWpV651r0ySIN8nKDhkNf8fgvSO7+ADVz1+wvis0kJa74QH2OyydFvCLJBhtWCxn20WI4uRfpy9kZn2hjFLDApk3JBTQvwIXZgipmIS0F/swAV2zQ6cG+80yjpFQmZh8RCuyOq1DbVXcjTsxC/7uLLlafLEEjc5OOcB+loBp+360gy1IL21wS/HTvigee1nv6N+HS1mwcVjre6L+9pcuLZb3Cl1/6AONxW0bRuIstDfXsGz9rcFrADFo+hbrDUqoLH/A8TpcYPmfgijGr6co3zaWM9ZUvaayIaJ3gXTcTvfoABoqNPh4kQdlBA6QneFjtx0f+a/vUxC22VbJJCEO+jqN5Oe/nObhhAu1TZYoe5L8wzlr95mA2PKvrqZ4S7CbQyT22fGJgQD+p01O4+ipBIJHpHNS3lC4EOofmS9f3TpCCdLcItvTfQMIOOiHd5G0R8NcfUkLKf30nE4Z4prGw4gMm3AyaKC+ffNA37kBpIq9QarlGppOdYidfHRB17RXxKRrLd0uJQCql3pPloUnbFHI3UKSl5lJrhkB
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199021)(38070700005)(478600001)(316002)(4326008)(6916009)(76116006)(64756008)(66446008)(66476007)(66556008)(55016003)(66946007)(122000001)(41300700001)(44832011)(2906002)(8936002)(8676002)(52536014)(15650500001)(5660300002)(38100700002)(9686003)(6506007)(26005)(53546011)(86362001)(186003)(33656002)(83380400001)(71200400001)(7696005)(115813001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjF3dm5Tdys0VW9yOUVwY1JuNExraGxIaGRWMXBhRTNGTFJyTVRKV3VCS0pi?=
 =?utf-8?B?cjRrbktGMVlnSFpwbERpU2J4ZFhZdW9qaTBaVFJvVFlHN1JkMko1Z2JqOTJG?=
 =?utf-8?B?N2ttUG1nK296VTJxT20rQWFxTWk0eGp2dU1RN3VyekgyTmw2VVY2eDdDQjlT?=
 =?utf-8?B?OWlMR2VWUTY5dC91bDJ5Kzk1OW0rUG8wc0RGeERpbnVrV3gwMkxuVE12K0E4?=
 =?utf-8?B?S0lnT3I3aDJhY0M3dHMyR3hGS0MwakVQSFlWUkNUWldIZEZPcWVHTWZCY0tE?=
 =?utf-8?B?Zm5LOGNVZlVBQnhmTkxtZFVaR29hTXg4M1ZDQVRoVjRYTC9SblBwYkJYWFF6?=
 =?utf-8?B?SjZ0R1YzU2JtSVZMMWVxQkRldTJtNmpTQThzc3RlbXNoRmRJYitNQUJkV1Mz?=
 =?utf-8?B?ZThhbGFJeTB3bzNvcEVhcGRCcWZWSmtxK3Z3Vm5tV2Via1dSVWxvM2dBVUJm?=
 =?utf-8?B?LzRtS0xPTXM1THB0RC81WjRVcndRTWhlZ0xJcjRFWm5QYlYwQ1NPWjY2MHFP?=
 =?utf-8?B?aUVwRVhDK24xTlpYbktUS1ZlZGNJaXlyUHhyU0lJck5iUTZyMzh0OUxtYUVl?=
 =?utf-8?B?K093akNJWE5pTmRvLzBwSXZweXNLQklSbm1lNUhtbWlHNE8vVjdKUGpYY3h6?=
 =?utf-8?B?VW9qVEdUbzBkcVh1Z3JldFAzTWh2Y1MyR2xPdC9mQVRxSkF5N1A4S3pmNDUy?=
 =?utf-8?B?RjhrUGVrckFKSjJqcGozYU9MM3AxZkd6V1dqNW1rbzV4QTRtcWlZUjFNZjJ1?=
 =?utf-8?B?a3ZoWVMvQVJFNUhnN2NRL1NJcWNsWDcvRXlxb2x1VG93WVpRMDhYYmNncnNP?=
 =?utf-8?B?bmIxMzJyWmc5ZFY4cDhVQjBoQXpYcW5MaWFQYVBDME5NMnI5MEUrd3NvWFpK?=
 =?utf-8?B?VFVWYlB4L2JXTS9wVWRZZXFpaXhkVnlTclNyc2ZUV0VmZWwvYWlvdmhDQ0U4?=
 =?utf-8?B?ZFMvNGNwZEFSR3ZZZ1dIUjhmWWU1Y3RXQ0N0RUdtVWZicFRnQXdmajU4VHBr?=
 =?utf-8?B?YUpJMUo2S1I3em5ldFZLQUd5UTBmSXdpQk9lWDFtbTI5dHUzVkRZR2VxbjVX?=
 =?utf-8?B?TERCWHdOc2YyUVBNVDhlbm9QbmhVd29DVjdjeGlRaUp3YWJYbkhSWEQyZ2tv?=
 =?utf-8?B?Q25VdWdkRDdhZUhJVlJqOEk5N1J5YzFaanVYdHV4ZW15RFV2bGhHZlNyWDZ0?=
 =?utf-8?B?dlFReHYyWjhvSmpmcnZXckZkaEZWS24xR1UzQ29xTThUMzZ5VWhveFk2YjRK?=
 =?utf-8?B?K3dVV2VzcXc2R3ppSmExL3FnRjZXS3FsejBCdHVOQUhGdXh4VzZhQWMwalp5?=
 =?utf-8?B?TFExMzFjZUFqKzNxa0xYWWQ0aVMzRE54aU1UaXdEQzZ5aGg0dmZKNk1LNDVB?=
 =?utf-8?B?M3RuZG9iM09lZFVEWXZjSER0R1JjSGYyWURIMDlyK0RRRDR3SHBMRFpiNDQ2?=
 =?utf-8?B?dU45YlYxZU5EUzdYbGkreW4xbUxJeGlkVDhIL2d4ai9MOHF2bU5WQkt0emt3?=
 =?utf-8?B?Tkc1SEkvTEttSzRWTk5FcmZXbmdnekZTeHBCZ216c25xaWFVSzM4WjFuc0Rv?=
 =?utf-8?B?VUw2RDFjTXhodlozaDgrL0lVK3N3UVJqd2dKd2tYa0htaUdETFM1SDM4QUY0?=
 =?utf-8?B?d2liMVZtbzRtYUVDbXlpQi80SDBVMTJiYjF2cTFFRnFhR2UwSS9LL3R5ZEFM?=
 =?utf-8?B?WDRpRUtva1N5MXR3YWFyTjVWY2E3VTdkSDA1ODVzVUdhS09HdVZ5eWUrUjBv?=
 =?utf-8?B?cmxIaUd1cWRBd3Q1N3VLZWVNUHo4bHNiUE13MXd5TklQbHpQcEZvS0xlSlpR?=
 =?utf-8?B?VTZtK0hWS1drT3B0VjExTlJQdzQwd2JtYUdvUkFoYmFXRUZZUDVMLyszSTBQ?=
 =?utf-8?B?RmlaTm5hYTZJcFhuTFZtZEN0eDZXRHdqYjJ2WUo2Yld4RGg5bGdvMWtZQkJn?=
 =?utf-8?B?MHJoYXpCMC82UVJrODZDejNJd1B6Y1Bab0pKMlV0RkRoTTFIMFpVVFRoUjYw?=
 =?utf-8?B?K2VZbEtLMkZOcm1RMW0xVGxad1FYVzRGRnY5SUNXNWRBMWpWQ0pTZGJJSzZE?=
 =?utf-8?B?b0h5US91S3FCRDhTaVNmWEVCZUhQMzZMQ1JMRDFSQXF0M3pQMFozSXdkMlhq?=
 =?utf-8?Q?XAiY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc2e9590-668b-402e-a53f-08db44dc05c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 15:53:18.3059
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GBf1cpJMgOS6xo66o548PWaaH1faUYM1XirB0NKvI07OzKKXwEMmp9Xa2u6jctlZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR02MB9295
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 15:53:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59767

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBha3VzdGVyODA4IDxha3VzdGVy
ODA4QGdtYWlsLmNvbT4NCj4gU2VudDogZGVuIDI0IGFwcmlsIDIwMjMgMTQ6MDkNCj4gVG86IFBl
dGVyIEtqZWxsZXJzdGVkdCA8cGV0ZXIua2plbGxlcnN0ZWR0QGF4aXMuY29tPg0KPiBDYzogWW9j
dG8gKHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcpIDx5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPg0KPiBTdWJqZWN0OiBSZTogW21ldGEtc2VjdXJpdHldIFVubmVjZXNzYXJ5L29wdGlv
bmFsIGRlcGVuZGVuY2llcyBpbiB0cG0yLQ0KPiB0b29scw0KPiANCj4gSGVsbG8gUGV0ZXIsDQo+
IA0KPiBPbiA0LzIxLzIzIDc6MTUgUE0sIFBldGVyIEtqZWxsZXJzdGVkdCB3cm90ZToNCj4gPiBJ
IGhhdmUgYSB0ZWFtIHRoYXQgaXMgbG9va2luZyBhdCBzdGFydGluZyB0byB1c2Ugc29tZSBvZiB0
aGUNCj4gPiByZWNpcGVzIGZyb20gbWV0YS1zZWN1cml0eSBhbmQgSSBhbSBjdXJyZW50bHkgcmV2
aWV3aW5nIHRoZWlyDQo+ID4gY2hhbmdlcyB0byBvdXIgbGF5ZXJzLiBJbiBhIGJiYXBwZW5kIGZv
ciB0cG0yLXRvb2xzIHRoZXkNCj4gPiByZW1vdmVkIHRoZSBidWlsZCBkZXBlbmRlbmN5IG9uIHRw
bTItYWJybWQsIHdoaWNoIGdvdCBtZQ0KPiA+IHdvbmRlcmluZyB3aHkgaXQgd2FzIHRoZXJlIGlu
IHRoZSBmaXJzdCBwbGFjZS4gQWZ0ZXIgZG9pbmcNCj4gPiBzb21lIGV4cGVyaW1lbnRhdGlvbiwg
SSBjYW1lIHVwIHdpdGggdGhlIGZvbGxvd2luZyBwYXRjaDoNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10b29scy90cG0yLXRvb2xzXzUuNS5iYiBiL21l
dGEtDQo+IHRwbS9yZWNpcGVzLXRwbTIvdHBtMi10b29scy90cG0yLXRvb2xzXzUuNS5iYg0KPiA+
IGluZGV4IGVmNzMyMzguLjgxMTliYjEgMTAwNjQ0DQo+ID4gLS0tIGEvbWV0YS10cG0vcmVjaXBl
cy10cG0yL3RwbTItdG9vbHMvdHBtMi10b29sc181LjUuYmINCj4gPiArKysgYi9tZXRhLXRwbS9y
ZWNpcGVzLXRwbTIvdHBtMi10b29scy90cG0yLXRvb2xzXzUuNS5iYg0KPiA+IEBAIC00LDcgKzQs
NyBAQCBMSUNFTlNFID0gIkJTRC0zLUNsYXVzZSINCj4gPiAgIExJQ19GSUxFU19DSEtTVU0gPQ0K
PiAiZmlsZTovL2RvY3MvTElDRU5TRTttZDU9YTg0NjYwOGQwOTBhYTY0NDk0YzQ1ZmMxNDdjYzEy
ZTMiDQo+ID4gICBTRUNUSU9OID0gInRwbSINCj4gPg0KPiA+IC1ERVBFTkRTID0gInRwbTItYWJy
bWQgdHBtMi10c3Mgb3BlbnNzbCBjdXJsIGF1dG9jb25mLWFyY2hpdmUiDQo+ID4gK0RFUEVORFMg
PSAidHBtMi10c3Mgb3BlbnNzbCBjdXJsIg0KPiA+DQo+ID4gICBTUkNfVVJJID0gImh0dHBzOi8v
Z2l0aHViLmNvbS90cG0yLQ0KPiBzb2Z0d2FyZS8ke0JQTn0vcmVsZWFzZXMvZG93bmxvYWQvJHtQ
Vn0vJHtCUE59LSR7UFZ9LnRhci5neiINCj4gPg0KPiA+IEBAIC0xMyw2ICsxMywzIEBAIFNSQ19V
Uklbc2hhMjU2c3VtXSA9DQo+ICIxZmRiNDljNzMwNTM3YmZkYWVkMDg4ODg0ODgxYTYxZTNiZmQx
MjFlOTU3ZWMwYmRjZWVlYzAyNjEyDQo+ID4gICBVUFNUUkVBTV9DSEVDS19VUkkgPSAiaHR0cHM6
Ly9naXRodWIuY29tL3RwbTItDQo+IHNvZnR3YXJlLyR7QlBOfS9yZWxlYXNlcyINCj4gPg0KPiA+
ICAgaW5oZXJpdCBhdXRvdG9vbHMgcGtnY29uZmlnIGJhc2gtY29tcGxldGlvbg0KPiA+IC0NCj4g
PiAtIyBuZWVkIHRzcy1lc3lzDQo+ID4gLVJERVBFTkRTOiR7UE59ID0gImxpYnRzczIgdHBtMi1h
YnJtZCINCj4gPg0KPiA+IE1vdGl2YXRpb24gZm9yIHRoZSBwcm9wb3NlZCBjaGFuZ2VzIGFib3Zl
Og0KPiA+DQo+ID4gKiBUaGUgZGVwZW5kZW5jeSBvbiBhdXRvY29uZi1hcmNoaXZlIGlzIG9ubHkg
bmVlZGVkIHdoZW4NCj4gPiAgICBidWlsZGluZyBmcm9tIHRoZSBHaXQgcmVwb3NpdG9yeSAoYW5k
IGl0IHNob3VsZCByZWFsbHkgYmUNCj4gPiAgICBhdXRvY29uZi1hcmNoaXZlLW5hdGl2ZSkuIFRo
aXMgZGVwZW5kZW5jeSBjYW4gcHJvYmFibHkgYmUNCj4gPiAgICByZW1vdmVkIGZyb20gbW9yZSBy
ZWNpcGVzIHRoYXQgbm93IGJ1aWxkIGZyb20gdGFyIGJhbGxzDQo+ID4gICAgd2hlcmUgdGhleSBv
cmlnaW5hbGx5IGJ1aWx0IGZyb20gR2l0IHJlcG9zaXRvcmllcy4NCj4gPiAqIFJlbW92aW5nIHRo
ZSBidWlsZCBkZXBlbmRlbmN5IG9uIHRwbTItYWJybWQgZG9lcyBub3QgY2hhbmdlDQo+ID4gICAg
dGhlIG91dHB1dCBpbiBhbnkgd2F5LCBpLmUuLCBub3RoaW5nIGlzIHVzZWQgZnJvbSBpdC4NCj4g
PiAqIFRoZSBydW50aW1lIGRlcGVuZGVuY3kgb24gbGlidHNzMiBpcyBhZGRlZCBhdXRvbWF0aWNh
bGx5IGJ5DQo+ID4gICAgYml0YmFrZSBzaW5jZSAvdXNyL2Jpbi90cG0yIGlzIGxpbmtlZCB3aXRo
IGxpYnRzczItZXN5cy5zby4wLg0KPiA+ICogVGhlIHJ1bnRpbWUgZGVwZW5kZW5jeSBvbiB0cG0y
LWFicm1kIGlzIEFGQUlDVCBvcHRpb25hbC4gQW5kDQo+ID4gICAgaW4gbXkgYm9vayBzdWNoIGRl
cGVuZGVuY2llcyBhcmUgYmV0dGVyIGhhbmRsZWQgYXQgYSBoaWdoZXINCj4gPiAgICBsZXZlbCwg
ZS5nLiwgYnkgZGVwZW5kaW5nIG9uIHBhY2thZ2Vncm91cC1zZWN1cml0eS10cG0yLiBJZg0KPiA+
ICAgIGl0IGlzIHJlbW92ZWQsIHRoZSBpbnN0cnVjdGlvbnMgaW4gbWV0YS1wYXJzZWMvUkVBRE1F
Lm1kIHRoYXQNCj4gPiAgICByZWZlcmVuY2VzIHRwbTItdG9vbHMgbWF5IG5lZWQgdG8gYmUgY29t
cGxlbWVudGVkIGJ5IGENCj4gPiAgICByZWZlcmVuY2UgdG8gdHBtMi1hYnJtZC4gU2ltaWxhciBm
b3IgdGhlIHJ1bnRpbWUgZGVwZW5kZW5jaWVzDQo+ID4gICAgaW4gdHBtMi1wa2NzMTEuIEFuIGFs
dGVybmF0aXZlIHRvIHJlbW92aW5nIHRoZSBydW50aW1lDQo+ID4gICAgZGVwZW5kZW5jeSB3b3Vs
ZCBiZSB0byBpbnN0ZWFkIGludHJvZHVjZSBhIFBBQ0tBR0VDT05GSUcgZm9yDQo+ID4gICAgaXQs
IGJ1dCBJIGRvIG5vdCBsaWtlIFBBQ0tBR0VDT05GSUdzIHRoYXQgb25seSBhZGQgcnVudGltZQ0K
PiA+ICAgIGRlcGVuZGVuY2llcy4NCj4gDQo+IFRoYW5rcyBmb3IgdGhlIHdyaXRlIHVwIGFuZCBi
cmluZ2luZyBpdCB0byBteSBhdHRlbnRpb24uDQo+IElmIHlvdSBkaWRuJ3Qga25vdyBhbHJlYWR5
LCB0aGVyZSBhcmUgc29tZSBiYXNpYyBRQSB0ZXN0cyBmb3IgVFBNMi4gSQ0KPiByYW4gdGhvc2Ug
d2l0aCB5b3VyIGNoYW5nZXMgYWJvdmUgYW5kIHRoZXkgcGFzcy4NCj4gYW55IHBsYW5zIG9mIHNl
bmRpbmcgYSBwYXRjaD8NCg0KWWVzLCBJIHdpbGwuIEkganVzdCB3YW50ZWQgdG8gY2hlY2sgaWYg
dGhlIGFib3ZlIHNlZW1lZCBjb3JyZWN0IHRvIA0KZG8gZmlyc3QuDQoNCj4gDQo+IEJSLA0KPiBB
cm1pbg0KPiANCj4gPg0KPiA+IEJlYXIgaW4gbWluZCB0aGF0IEkga25vdyBub3RoaW5nIGFib3V0
IHRwbTIuIEkgYW0gbG9va2luZyBhdA0KPiA+IHRoaXMgc3RyaWN0bHkgZnJvbSB3aGF0IGlzIHBy
b2R1Y2VkIHdoZW4gYnVpbGRpbmcgdGhlIHJlY2lwZS4NCj4gPg0KPiA+IENvbW1lbnRzPw0KPiAN
Cj4gPg0KPiA+IC8vUGV0ZXINCg0KLy9QZXRlcg0KDQo=

