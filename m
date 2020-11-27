Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.51])
 by mx.groups.io with SMTP id smtpd.web12.16052.1606464302718254380
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 00:05:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tagmastergroup.onmicrosoft.com header.s=selector1-tagmastergroup-onmicrosoft-com header.b=EaeOyNoj;
 spf=pass (domain: tagmaster.com, ip: 40.107.8.51, mailfrom: pelle.windestam@tagmaster.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDl485o4FkEiul6GeHNTKTZ4iGfAeGgT39YGcWN6tY+DT3net+ORQZ274JWNgay+IE4sY0J9mSO4PjkZ/Skv2jzZAt6Liw0z1vrGM8yDFbpk3UPRUFiE9E4Wom5UD655vq6hOBQTxbcJJ6eHdevdB41+O/XhhzYhyv9akRihODtrl283dj9vXvmkGd3ns/URmAkgoofHHeXBb32qCrkknaHk86wMjhxgaG9P0yp5rvb46ESO7dPCKJs8QayKdcFU0Mc4YDnrY4Fuu9q6oxuftcGzGwQ/dIbo2GKmcDb8ODVdSaB+dCWYpY4/f2oAAMwHsgVPx6lelxrfI7OsQGXglg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ch8Kv0oWQeHBMDUPxCWyrFOedmMwNnFdnNTnlk3z8DE=;
 b=IWeQhxEQ3/xBflzx1Pu73FrOF8MQe/UFaVKlepy0o7+eaE/TgZG9S2TC7slPIKXtr4LU6tCf0JyyELuQrIREJhsHIm/ooe7QkyJ3ungooQFi0SQR5J9gZkwUoYC3Z05uaypgbz8wTP0jpWhZYhLKMi3ffePqXcOKx8jGSHWxb8zcnyI/ujuJ3bDnxgF7n9A7mKO8RKLYXVcM4z/8PYLd66a1y4ktUbbisNmtef2wPZlGa17zZUTX7hKVpk4wZy9zGiejSwf6Mayo4eUJjtruD+EXdEooVTXzEkVTmIPQuQH8qpP5ZDYeFTSfGoHNjssxQ4IlCXfpsJZ8Rd9u4KN8RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tagmaster.com; dmarc=pass action=none
 header.from=tagmaster.com; dkim=pass header.d=tagmaster.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tagmastergroup.onmicrosoft.com; s=selector1-tagmastergroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ch8Kv0oWQeHBMDUPxCWyrFOedmMwNnFdnNTnlk3z8DE=;
 b=EaeOyNojFNeZjaEyp6nMhDkYLa/YhRk9Obv0CJZSguqPZJ0QmeNpG2WmRPTr2YdFQTf+owAOwjq2TfiCFcD9OzKO8Coh/GQmbyOlAhFVVALGGenutZogyQk9ZGnWXQzc6zIQsy3sa4N0u79jhZv1+INW9Ta3D/YhvjBA50MVKHA=
Received: from HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:85::22) by HE1PR0102MB2636.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:18::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.24; Fri, 27 Nov
 2020 08:04:59 +0000
Received: from HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
 ([fe80::ade5:f0f1:7ca7:7e1a]) by
 HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
 ([fe80::ade5:f0f1:7ca7:7e1a%5]) with mapi id 15.20.3589.030; Fri, 27 Nov 2020
 08:04:59 +0000
From: "Pelle Windestam" <pelle.windestam@tagmaster.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: multilib: lib32-libgdiplus complaining about qemuwrapper
Thread-Topic: Re: multilib: lib32-libgdiplus complaining about qemuwrapper 
Thread-Index: AdbEkdZsWLMwu2IYRpO2JwceWAdJZg==
Date: Fri, 27 Nov 2020 08:04:58 +0000
Message-ID: 
 <HE1PR0102MB31948605DC1D87129BD46DFCFFF80@HE1PR0102MB3194.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=tagmaster.com;
x-originating-ip: [188.149.179.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 391cd2f1-2f69-42df-be76-08d892ab22a2
x-ms-traffictypediagnostic: HE1PR0102MB2636:
x-microsoft-antispam-prvs: 
 <HE1PR0102MB2636BF8AF92886D144CBE6F0FFF80@HE1PR0102MB2636.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6EUpResMdNzri/G9/wLn/xb5cFhwcqHchRORcER7oO82RGr4xkr5/QhHlPYhbmBnuYlb9r36VHY8b+4VErJ1u5J0LCkT+ykNmk1S6YXe7lHBfIydYTEg7Gj1k5xp4wrVu0Ig9dWrvOh5NbdATJVgl1derVxCf4lXcky3mzEZkv/a87Qek4El76LjYXav0Egtecpf8XGxAaNRMW6onm/k9eWrxLc6IjJ/vkve8ztpYXygaN8Hl6BXoBp8zuThz9rcj9+n1LKeebycPRRw0/ZSdu17Pt5WZIEiV68eEBmA2TsOrBMfzKsHJorMMLWl1NHWDZ0arvMrIxNIr3A3J8WuQA17O042eysK1Z/HLkzgcLWFgqdjIEQat9Qf7fnGyWRfXstn26pSa/DeRYsVKQJUPg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0102MB3194.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39840400004)(136003)(346002)(376002)(366004)(316002)(478600001)(33656002)(26005)(186003)(966005)(9686003)(44832011)(7696005)(55016002)(4743002)(6506007)(52536014)(6916009)(5660300002)(71200400001)(2906002)(86362001)(66946007)(8676002)(66556008)(66476007)(64756008)(83380400001)(8936002)(66446008)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?aFhBV2k1QXltS1REeWY4NmF5NlpJUlVGeVlkS0xRZExzNjlzYmc4amlOSFQ5?=
 =?utf-8?B?UFNQR3ZHd2xKK1JNQ1c2RkdCNTMwbHQ1SXBZaHkwSFdhQzQyTXRlL2t0V3NM?=
 =?utf-8?B?a3Erandac0h2VUxULzFqdkVGaUNFY2N6T2JFWXd4YldqRUpOYlkyS0N1LzVy?=
 =?utf-8?B?bzVCRDkvaTVrbVZleDdUbC9VWEpKb0NLVGhqV0FpSWNuTU1kb0xwSEd1WmdT?=
 =?utf-8?B?NTRwVCt4WXNKZzhhYmE4cW1sUnNrTm9td3BWMnlCa3Fma2t2RjYxcmZNSFpu?=
 =?utf-8?B?SUFMNk5HYVRvcEdnV0J6ZlNGdnJHc0RaM3FPcFJWV1h0Yy9OblFEWmcrT2t1?=
 =?utf-8?B?T1p4MXpYNy9obHREY3N3OE11UjBNYXRjMVNIVlJSUDYvdGw2NTlEc1VtdEZH?=
 =?utf-8?B?cUdRVUxPUStkbEc2dnFJaXJvYXlBRThTajIrK1A1WW5JTkZDMDBWUytRU2Mz?=
 =?utf-8?B?b3ArWGZpRWpIL0JtNk1LMlNQSGpnaDhveHZoSVdoelZLNGtHN0dTREZHQitJ?=
 =?utf-8?B?TDhEcUJJL3lPK3hZZzhVQVlqbE5ReVVnRUIxTkJvRS9tVnZNK05BMWZMUmZ3?=
 =?utf-8?B?cUU1SmdBN2lVcndWNU5HdUlUaTZPRWlVZjFCQ1ZyQ2l2azVqMmRDY0svTjll?=
 =?utf-8?B?MHp1NU40aXk2T1BiT1hEWG9CNzNPeGxPdkN0QkJqbFQ4Rnpta2IraXFWaThH?=
 =?utf-8?B?TkU4RUplbERBc3lDT1EwOEMyWXI1c29WYXYrRmZOZGZRK0ZqcXltUlkyaS9q?=
 =?utf-8?B?OUI0bS91YWhkVUlBT2c0V0k1TGZFV2ZPYVN4K3djVXRqTmVTbW1QWHdzQmdT?=
 =?utf-8?B?MUpXamhRN0xLaHU1eFdKZHdyeDA5Wld2d1hqN3RXd01OUGd2YlFpeVhheGli?=
 =?utf-8?B?SXNySDdpVEFLcnpNVGowYXM4dVpFRHNiL2JZQ2IwQmNhRCtZQ3VLUHpiZ3hx?=
 =?utf-8?B?ajlRUzBUZDJVK0UxRFFVZFBVVlllaWdid2RzK25LS0I0dk5YRXJHNytCUndZ?=
 =?utf-8?B?aHZkbTJud1cvU1I5NUJqRkswTkZvUklyWGg0SzNuaEFDNG9XSmd5bUZDcHFx?=
 =?utf-8?B?cEdCWDN2QzNhYXozRjF3NGdhbG1NdUpaWFNZWTRnNE05d2Z6SStlUk12K0JN?=
 =?utf-8?B?bjZPcWNnNjhsR2hFR3RBRk5GbE9XRlM3UllqbGExSW1TaS9NcVdwSGI0eTVW?=
 =?utf-8?B?dko5OVVPWXI2dm1xVDBaKzFFK0RvZ1JyV1EyOWtrYmRxaENNUVNSbnFNaVdG?=
 =?utf-8?B?UEEwTlNNbGVDQWZQM3J4TnFhTUxRL0h3amZOdWpTMUVQbmVrR2RUemJkbkhk?=
 =?utf-8?Q?uUasw7PQLrMUk=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: tagmaster.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 391cd2f1-2f69-42df-be76-08d892ab22a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2020 08:04:59.0109
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6a5b4421-c44a-46bd-a46f-b3a344133000
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WkE1FUbQQxUIHgnf1sKt2pX/GS7r71TT3jC0TEhDsQB7bNKT/1zx3jWYovf+TjLSF88Ggh5zt04gKDUMPEikKAiPvTmCe681lNhnCR2z4WI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0102MB2636
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJIGFtIHVzaW5nIFlvY3RvIDIuNSBhbmQgaGF2ZSBhIHdvcmtpbmcgbXVsdGlsaWItZW5hYmxl
ZCBpbWFnZSBiYXNlZCBvbiBwb2t5IHdoaWNoIGluY2x1ZGVzIGxpYmdkaXBsdXMgKDY0LWJpdCku
IER1ZSB0byByZXF1aXJlbWVudHMgSSBoYWQgdG8gYWRkIHRoZSAzMi1iaXQgdmVyc2lvbiwgc28g
SSBhZGRlZCBsaWIzMi1saWJnZGlwbHVzIHRvIG15IGltYWdlIHJlY2lwZS4gVGhpcyBjYXVzZWQg
dGhlIGZvbGxvd2luZyBlcnJvciBvdXRwdXQgZnJvbSBiaXRiYWtlOg0KDQo+IFdBUk5JTkc6IHRt
bGludXgtaW1hZ2UtMS4wLXIwIGRvX3Jvb3RmczogVGhlIHBvc3RpbnN0YWxsIGludGVyY2VwdCBo
b29rICd1cGRhdGVfZ2lvX21vZHVsZV9jYWNoZS1saWIzMicgZmFpbGVkLCBkZXRhaWxzIGluIC9o
b21lL3BlbGxlL2RldmVsb3BtZW50L3Zhci1mc2wteW9jdG8vYnVpbGRfa29ka29kL3RtcC93b3Jr
L2lteDhxeHBiMF92YXJfc29tLXBva3ktbGludXgvdG1saW51eC1pbWFnZS8xLjAtcjAvdGVtcC9s
b2cuZG9fcm9vdGZzDQo+IEVSUk9SOiB0bWxpbnV4LWltYWdlLTEuMC1yMCBkb19yb290ZnM6IFRo
ZSBmb2xsb3dpbmcgcGFja2FnZXMgY291bGQgbm90IGJlIGNvbmZpZ3VyZWQgb2ZmbGluZSBhbmQg
cm9vdGZzIGlzIHJlYWQtb25seTogWycxMDAtbGliMzItbGliZ2xpYi0yLjAtMCddDQo+IEVSUk9S
OiB0bWxpbnV4LWltYWdlLTEuMC1yMCBkb19yb290ZnM6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9v
dGZzDQo+IEVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS9wZWxsZS9k
ZXZlbG9wbWVudC92YXItZnNsLXlvY3RvL2J1aWxkX2tvZGtvZC90bXAvd29yay9pbXg4cXhwYjBf
dmFyX3NvbS1wb2t5LWxpbnV4L3RtbGludXgtaW1hZ2UvMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rm
cy4zMDEwNg0KPiBFUlJPUjogVGFzayAoL2hvbWUvcGVsbGUvZGV2ZWxvcG1lbnQvdmFyLWZzbC15
b2N0by9zb3VyY2VzL21ldGEtdGFnbWFzdGVyL3JlY2lwZXMtY29yZS9pbWFnZXMvdG1saW51eC1p
bWFnZS5iYjpkb19yb290ZnMpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCg0KPiBXaGlsZSBz
ZWFyY2hpbmcgZm9yIHRoZSByb290IGNhdXNlIG9mIHRoaXMsIEkgZGlzY292ZXJlZCBhIGNoYW5n
ZSB0byB1cGRhdGVfZ2lvX21vZHVsZV9jYWNoZSAoaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9y
Zy9jZ2l0L2NnaXQuY2dpL3Bva3kvY29tbWl0L3NjcmlwdHMvcG9zdGluc3QtaW50ZXJjZXB0cy91
cGRhdGVfZ2lvX21vZHVsZV9jYWNoZT9pZD04NzYzMWFmNjQwMzJiMThlYTM1NGIyN2NjNTg2ZWMx
MzM5MWJkMTQzKSB0aGF0IEkgdGhvdWdodCBtaWdodCBoZWxwLiBJIGFwcGxpZWQgdGhpcyBjaGFu
Z2UgKGFuZCB0aGUgY2hhbmdlcyBmcm9tIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVuZW1iZWRkZWQv
b3BlbmVtYmVkZGVkLWNvcmUvY29tbWl0L2QxMGZkNmFlM2ZlNDYyOTBjNmUzYTUyNTA4Nzg5NjZk
OWYxMmNhM2YgZm9yIHRoZSBxZW11d3JhcHBlci1jcm9zc18xLjAuYmIgcmVjaXBlKSB0byBteSBs
b2NhbCBjb2RlLCBhbmQgb25jZSBhZ2FpbiB0cmllZCBidWlsZGluZyB0aGUgaW1hZ2UuIFRoZSBl
cnJvciBtZXNzYWdlIGZyb20gYml0YmFrZSBpcyB0aGUgc2FtZSwgYnV0IGluIHRoZSBkb19yb290
ZnMgbG9nIEkgZmluZCB0aGlzOg0KDQo+IC9ob21lL3BlbGxlL2RldmVsb3BtZW50L3Zhci1mc2wt
eW9jdG8vYnVpbGRfa29ka29kL3RtcC93b3JrL2lteDhxeHBiMF92YXJfc29tLXBva3ktbGludXgv
dG1saW51eC1pbWFnZS8xLjAtcjAvaW50ZXJjZXB0X3NjcmlwdHMtYmQxYzMxODIwYmY3MzZhMDA0
ZjRlYmU3MTQ2MWQ2ZmEzYWUyM2Y3ZDk3NzgzYzhmMjhhNjA2ZTA4Njc0MWQ4YS91cGRhdGVfZ2lv
X21vZHVsZV9jYWNoZS1saWIzMjogMTU6IC9ob21lL3BlbGxlL2RldmVsb3BtZW50L3Zhci1mc2wt
eW9jdG8vYnVpbGRfa29ka29kL3RtcC93b3JrL2lteDhxeHBiMF92YXJfc29tLXBva3ktbGludXgv
dG1saW51eC1pbWFnZS8xLjAtcjAvaW50ZXJjZXB0X3NjcmlwdHMtYmQxYzMxODIwYmY3MzZhMDA0
ZjRlYmU3MTQ2MWQ2ZmEzYWUyM2Y3ZDk3NzgzYzhmMjhhNjA2ZTA4Njc0MWQ4YS91cGRhdGVfZ2lv
X21vZHVsZV9jYWNoZS1saWIzMjogbGliMzItcWVtdXdyYXBwZXI6IG5vdCBmb3VuZA0KDQo+IElm
IEkgc2VhcmNoIG15IHRtcCBkaXJlY3RvcnksIHRoZXJlIGlzIG5vdGhpbmcgY2FsbGVkICJsaWIz
Mi1xZW11d3JhcHBlciIsIGJ1dCB0aGVyZSBpcyAibGliMzItcWVtdXdyYXBwZXItY3Jvc3MiLiAN
Cg0KSGkgYWdhaW4sDQoNCkkgaGF2ZSBzcGVudCBhIGZldyBtb3JlIGhvdXJzIGRpZ2dpbmcgaW50
byB0aGlzIGFuZCBtYWRlIHNvbWUgZGlzY292ZXJpZXMuIFRoZSBwcm9ibGVtIGRvZXMgbm90IHNl
ZW0gdG8gYmUgZGlyZWN0bHkgd2l0aCBsaWJnZGlwbHVzLCBidXQgd2l0aCBnbGliLTIuMCwgd2hp
Y2ggaXMgcmVzcG9uc2libGUgZm9yIGNhbGxpbmcgdGhlICJ1cGRhdGVfZ2lvX21vZHVsZV9jYWNo
ZSIgc2NyaXB0LCB3aGljaCBnZXRzIHNldCB1cCBhcyBhIHBvc3RpbnN0YWxsIGludGVyY2VwdCBz
Y3JpcHQuIFRoZSB1cGRhdGVfZ2lvX21vZHVsZV9jYWNoZSBzY3JpcHQgZ2V0cyBleGVjdXRlZCBi
b3RoIGZvciB0aGUgcmVndWxhciBsaWJnZGlwbHVzICh3b3JrcyBmaW5lKSwgYW5kIGZvciBsaWIz
Mi1saWJnZGlwbHVzLiBUaGUgaXNzdWUgaXMgd2l0aCBsaWIzMi1saWJnZGlwbHVzLCBiZWNhdXNl
IGxpYjMyLWxpYmdkaXBsdXMgd2FudHMgdG8gcnVuICJsaWIzMi1xZW11d3JhcHBlciIsIGJ1dCB0
aGUgbG9jYXRpb24gb2YgbGliMzItcWVtdXdyYXBwZXIgaXMgbm90IGluIHRoZSBQQVRIIHdoZW4g
aXQgcnVucyB0aGUgdXBkYXRlX2dpb19tb2R1bGVfY2FjaGUtbGliMzIgc2NyaXB0IChpdCBzZWVt
cyBsaWtlIHRoZSBpbmNvcnJlY3Qgc3lzcm9vdCBpcyB1c2VkKS4gDQoNCldoZW4gbG9va2luZyBh
dCB0aGUgb3V0cHV0IGZyb20gYml0YmFrZSAtZSBmb3IgbXkgaW1hZ2UgcmVjaXBlLCBJIGNhbiBz
ZWUgdGhhdCB0aGUgdmFyaWFibGUgdGhhdCBwb2ludHMgb3V0IHRoZSBsb2NhdGlvbiBmb3IgdGhl
IHJlY2lwZS1zeXNyb290ICgkU1RBR0lOR19ESVJfSE9TVCkgZGlyZWN0b3J5IGdldHMgY29ycmVj
dGx5IHNldCB1cCBmb3IgdGhlIG5vbi1saWIzMiBwYWNrYWdlcywgYnV0IGl0IHVzZXMgdGhlIHNh
bWUgdmFyaWFibGUgY29udGVudCB3aGVuIHJ1bm5pbmcgdXBkYXRlX2dpb19tb2R1bGVfY2FjaGUt
bGliMzIuIEl0IHNlZW1zIHRvIG1lIGxpa2UgdGhlIGRvX3Jvb3RmcyB0YXNrIHdvdWxkIGhhdmUg
dG8gZG8gYSBzZWNvbmQgcGFzcywgd2l0aCB0aGUgcmVjaXBlLXN5c3Jvb3Qgc2V0IHVwIGNvcnJl
Y3RseSBmb3IgbXVsdGlsaWIgcGFja2FnZXMsIHRvIGdldCB0aGlzIHdvcmtpbmcuIEkgYW0gbm90
IGZhbWlsaWFyIGVub3VnaCB3aXRoIGJpdGJha2UgdG8gdW5kZXJzdGFuZCBleGFjdGx5IGhvdyB0
aGlzIHNob3VsZCBiZSByZXNvbHZlZC4gTXkgY3VycmVudCAic29sdXRpb24iIGlzIHRvIG1vZGlm
eSB0aGUgcGFja2FnZV9tYW5hZ2VyLnB5IHNjcmlwdCB0byBtYW51YWxseSBhZGQgdGhlIGxpYjMy
LXN5c3Jvb3QgdG8gdGhlIHBhdGggYmVmb3JlIHJ1bm5pbmcgaW50ZXJjZXB0IHNjcmlwdHMgKHJl
YWxseSB1Z2x5KS4gQW55IHBvaW50ZXJzIGluIHRoZSByaWdodCBkaXJlY3Rpb24gd291bGQgYmUg
bXVjaCBhcHByZWNpYXRlZC4NCg0KLy9QZWxsZQ0KDQoNCg0KDQo=
