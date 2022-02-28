Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C626DC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 13:04:35 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.53])
 by mx.groups.io with SMTP id smtpd.web11.19516.1646053473489737201
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 05:04:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=nhS3uwPe;
 spf=pass (domain: optimeas.de, ip: 40.107.20.53,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkdjtKsqfHaeVVJEz5yn0XWtUyZr0CgOZxL81BpE46JXL9uTRWQzKMmhpJG0TGUP5/EUfcWbV7+P2U1fS2WWOARbYEljnhdNC5ZReEG56KtgQGMaBjaRiRvKhNVwOh9YCl/b9GObL100wfWmsJpHIURZDtNnqbodAaSsONBxH9DpcquyuLUjWXxFPyGvo6ve7Bzn3q1z2lVh5PCM5r6d59zY4XkgMoR1rWrGS1qWlm/u7Vf/FJRBo9hIhHx3OtQsjdbXRug2vNBESNfN0zhTW3NOge6srz+lFQS6KT8QSbMproq0/rNfkSVYu8kLbTjTe4QfFBfF8ig47qcKXTPZOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mLU4/tlVIT2tMO2cRVmkQjBzxhK+vokmwOYhHBgbHtg=;
 b=XHJMHiCOywdO88cWOkZBKL4Jp6UTLgb+aDfX11rEiNiDh3/pf6vYXCtc+1u/73ObUyg7mslWSdpHFzv0BSaQMNYOdwA71f4a5gHKqmgfpiHqpydnB/x5lSOIGAO+dfIU/ejR1bucDbdl0SCpy1mMlAJB7eJCqsm2QwvzTE8bosc9XPF7BpOZoexd09BrQ4Lvyom6og0iwBmHxlzfvFPmPHdEia3vWFgzB/5OCTRETE11ZesL0T0ZUGJC3IZbpo1CFPgoBnMDTQJPr3T7d3az7mD7zaalZyKLKPWmnb7u4SMBppLmfjnGp1q+eXAeCoOUXq5+Dhc2L3TnVA8L/Ac0Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLU4/tlVIT2tMO2cRVmkQjBzxhK+vokmwOYhHBgbHtg=;
 b=nhS3uwPeCJJWOTjwNWE0R+ipfvZDdOWC46O8GjP/eu0/dGQkwXqXSPw9TDWkI/d3CpW9zXmGaYkZKCOh1sv7ADImNcN+De8jwb9gepZ1WbLDLju/armuBziwuw9nZs8mn7L/YTmM0u6tBcd3KCYyrWpTCu0UV8bnT1sGgrYgjIQ=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VE1PR10MB3902.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:16d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Mon, 28 Feb
 2022 13:04:28 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 13:04:28 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Topic: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Index: AdgsoDxwz5nPM39dSs+Z5RVAclHBUQAAYmGAAAAVuDAAADPlgAAAKkIQ
Date: Mon, 28 Feb 2022 13:04:28 +0000
Message-ID: 
 <AM0PR10MB31070795E5754234F7ED07ED99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce8feb00-4f29-4fa3-a9a3-08d9fabada96
x-ms-traffictypediagnostic: VE1PR10MB3902:EE_
x-microsoft-antispam-prvs: 
 <VE1PR10MB3902D0F677CE82459A165BD699019@VE1PR10MB3902.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aNMh/XPEvs86JahANlzPuB23T4l1MJrKWF5OpZUsJ9flWnbm1EpCuOBfMbehqYpbtk8PPaIiCFuwG9zi+ytC0GFf1s+18AiwDy184MBMNh6BGvGYLPEh5oC83Gk8D7Hta2yUQERgrL2nUX7eYIvyKEEM1016xraennaCi9SSpQnOWr9E4GyyXD+qa120WzFD30toGsDBA0MdnBxku8z1q1HdLZDvPB0PKlP0kWC84RLvB4Ttr6eosMra34SCcHk+LkoTAcFX2Kd7IQhoZZnDqPWDOeC7+5/E12HkEo9OFKwGOcMBlF2QOTMV6QsWgaKgVQj1y9r8KRv794UmQ6o9mCk6vgRnRB9HSDg2YQWkFyYCt1CdrFKnBypAyyqkp1OZnzJDn2OfdljB+rZQ/xNFk7aFG69UnqqgeB+Sgtpc2U+fePvGYkUyexruNQhc5XfyqlUI6yPIHMwI1WnpE6ZUVXBbhUmDtr+eQi7mib/XtbXQ3nQyyVO4yHhlUmWgRXj3sAxjddLYSEOtSPVg1KT0gbG09M+DXx9ckeurMe1WvE6fN0nu8D0HHOlRIPUEGwPG4hVnwI55dv80ftqDEEA2GDJZdC/UXGZ32zhPbMmN/5t33z2G85OdqGbhKs4XfCjk/yenLw7FK813hBxaK15T1bcXXzQnuboUeuMI1/7IyTDjy/4Mwr3efsKJ7PwQ8pOdcfLGa65LNfpFQ1fR7Nc9gfSe4mqk36tUaambga3lPlPWjMElVObvmJWDsCW685++ZHukodVkjEkGXMQAeHB6hL2OfJumWq+QtnYCMPb4sTk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(376002)(346002)(396003)(39830400003)(136003)(55016003)(44832011)(508600001)(122000001)(110136005)(966005)(2906002)(86362001)(9686003)(83380400001)(38100700002)(66574015)(53546011)(316002)(5660300002)(45080400002)(33656002)(76116006)(52536014)(38070700005)(66946007)(8676002)(66556008)(64756008)(8936002)(66446008)(186003)(66476007)(6506007)(7696005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MkF3REpQOElkZi9RY1J5SFoxM2ZiQ3R2cVVXNDNPcUxNanBuSmIxRTI5Rk9M?=
 =?utf-8?B?TFppam5CM2R0WnpGdFQ0R0VhUUsrT2RpaDVrK2p5OWd4VEd5TURxeUl4YmZt?=
 =?utf-8?B?a1lLQ016TjA3b1Uzc3ArdnpnWnN2aHRvRWZGQTA4KzZLRnQ5YURnT202aUlM?=
 =?utf-8?B?RHZwbTRMQXI4WjdvbDJSbGdFY09IYnE0cHhDd3lzZVQzQUFuT2pkK2kwUG53?=
 =?utf-8?B?VkRHWWwyY0E5TGVrODQzTzBLejQ2UjJtWFUzWFFSRHdiQ3U4cERjVHA1SUZx?=
 =?utf-8?B?MEdoUUg0MnhqQlBHQ2dTZlRlVmlmL1RWWkdhN1NHVis3RjVjdVZXVzQ3Yi9W?=
 =?utf-8?B?TDdUbHN4bzVlUjVnOGpwUTdKcTFPRmNabWF6eXFLaUJRVDhlclpCMHYzNU11?=
 =?utf-8?B?SE40akQ3ZHYrWDZmOCtJZlJxeHlybmNtTzNqNlNIWlRlc2FBQUIyb25XL0tB?=
 =?utf-8?B?NXdHQ1lBcEQzTDFsK1F1WTRHSXczdzVwaU1qRG41VFc2K0ZKUW0zZWpEajFr?=
 =?utf-8?B?dVhKT2g0QVMwSHdiOGVjRzNyUkY5dFlmWGFOVkZLSUZBSXh3WUZ0REJFRXdw?=
 =?utf-8?B?ZnFpZmc2UC9rNUlSVzBnMlhuS005M1ZPcWdjOWd0b2w4M21KSlRDWU81dUtN?=
 =?utf-8?B?cnVLci9LbjFDNzdMQ3Vzb1BVUk9yUFdBUTNiTkgrcUpWc3huVmpRNGlOUEdi?=
 =?utf-8?B?TjB6U04yd0JNVkZIM094a09iNEJDNGQ3OGtKOHltby85cXluMHFYT3hKL0Rq?=
 =?utf-8?B?aTdCL0pQTFkwRko5ZE9PWWkvZEtHMVNDTll2c05HeldXL2o5R3ZQRVFmTHpp?=
 =?utf-8?B?SXRvbkc5QUYzdDlkZTlIL2NxSUVxNUVKNGVDUmFBcTR3Wkg5ODFxbnhDMzU5?=
 =?utf-8?B?T0lwNExKTkU2RStZYWZGNjIxV1RwbVBVTll0ZTc4L090SDZJbExDOVNMeGNX?=
 =?utf-8?B?Q3laSUJ3UVFMUG12Sm1YUTI0NUk5Q1JHdkNhVUtQWGZORitHNWJheE5Vdnpz?=
 =?utf-8?B?OEZHRFp1eGtYRS9hV21NemNoTlEzUWRId2RpRmJMMVFJUWl2V2NDQ05xdTAz?=
 =?utf-8?B?WENHYlhlZUliUTg3aXRrUFZRdk5kcTJoZmx3ekhTNERuRHo2UEJ0V1VjMWJB?=
 =?utf-8?B?Z0k4R1R4NzFoMm9JbFhOMjhpUUZUQWFhYVhLYmhhbjRkVEJidnpoMmozWjc5?=
 =?utf-8?B?ZTBFYXpKc2JmY3lObURPeE9iU1dFTGYrTXRqS3V2am1nRGdMMHZIT1UwK2c4?=
 =?utf-8?B?R2ZSajZLbzIwNmMwMENTaFhmaFgyRWRGZmtwMWw2ZnJuWmRGa1FJVm1nY29w?=
 =?utf-8?B?cEZJWituZzUyV0k4MCtxbFpJdUZvUmtPeFl0V3p0aDRYSlIzMGYyekZGUm9h?=
 =?utf-8?B?RlllRlR3alY0dzJCMHZBV25MWFRkRE1KcThsR2ZDNGtxeU1XTlJ0STZPVVVC?=
 =?utf-8?B?NGNibEFKbjhUKzlZU1piand3UmFqL0dHL09RbEpKQS9ibHpoUng0WEE4YnpQ?=
 =?utf-8?B?cVRTL0tweWl0emk1NDRscXRaT1RlN1kybkhOTjR3eS9maFVmRkpSbGNjbXh0?=
 =?utf-8?B?dVFvM0JYQXdjQjQ4Z2laWVRWWGIwMGo1NG1Gc0ZlQlNkSm1FOTl5WGhnWXZv?=
 =?utf-8?B?d3lQM3RvTnlTYWZMWS8vWXFjWWFkWGF1bEV4VmsrMHA0VmFrd0Faa0lZUzdm?=
 =?utf-8?B?UTFQMFVxbWNLRDNlQkp3ekxZcDIzR09hckhxSXh2anlLOHRJQU9jMDVwSVkz?=
 =?utf-8?B?QzBPOTJ0YkpVaG9DVXI3TisxL3NnQ1hsSnlDRnVkVU9JeFJ0c0xaNWpvK0Uv?=
 =?utf-8?B?b2RjMWh1b0pCVXZ6ckdJVEU5THl5VjdwbmZzUWJOZkdXQWF2d1lUNFMwdVNj?=
 =?utf-8?B?L200SENrM0pTNjQ0bXN3NytSZWRzdUwwWjZuUW42bmxSRkpGSnc5UVdCNVdI?=
 =?utf-8?B?WURSamJWYXRNVlB4S0dwMTFRaWtTeE0xYTkzd0t2NGd0YkkzUHJ1RFd5WUlV?=
 =?utf-8?B?OVhoanFDTjVwQjdGMVRBTGs4WDZLK3AwSkJ6WW1OUHJpUUQ3R2pNRGl5SFpz?=
 =?utf-8?B?N0dyM3l2STFRUWRqcVM1eHpORFltOHRvR2hpSVRuQjZDa3VubGhJRlFVZkdE?=
 =?utf-8?B?Ujd1dk9UWlgvOUNZNGxFMnVIdndPMHZOQ0lmZ0NwVThzbnlYSUVQdXBuWUxU?=
 =?utf-8?B?Tm9TSUlBdlFyZEx6dDQ5Q2ZyL0g1N0Z1ZElJSW5mWjY2YVUxcWFaTDQ5Mkhu?=
 =?utf-8?B?RmU2K2JDaFVzeEV6Tnk1M0t5Q2VBMXZ0VHRGSkNOZjhGV25CdHNYTTRJTG5N?=
 =?utf-8?B?czFRMFYreGJCZExSTFVWdlVvRDR5WWZnaHRSNno4d2xUVnNMN0hiUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ce8feb00-4f29-4fa3-a9a3-08d9fabada96
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 13:04:28.7491
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 aXuWL9JSFvE0tDFlLn4Uji0PkvqvNxKRwvoHFpQTrbiaquDb4pYsXfuDQsblFKOpb97YAjtvqAHjSaSisRGpvgFKD3rM+SyKZEK6+k1cE5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR10MB3902
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 13:04:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56315

SGVsbG8gS29ucmFkLA0KDQp1bmZvcnR1bmF0ZWx5IGl0IHN0aWxsIGRvZXMgbm90IGJ1aWxkOg0K
DQpFUlJPUjogc21idXMtKi0qLndobCBpcyBub3QgYSB2YWxpZCB3aGVlbCBmaWxlbmFtZS4NCg0K
QmVzdCByZWdhcmRzLA0KTWF0dGhpYXMNCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQt
LS0tLQ0KVm9uOiBLb25yYWQgV2VpaG1hbm4gPGt3ZWlobWFubkBvdXRsb29rLmNvbT4gDQpHZXNl
bmRldDogTW9udGFnLCAyOC4gRmVicnVhciAyMDIyIDEzOjU5DQpBbjogTWF0dGhpYXMgS2xlaW4g
PG1hdHRoaWFzLmtsZWluQG9wdGltZWFzLmRlPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KQmV0cmVmZjogUmU6IEFXOiBbeW9jdG9dIHB5dGhvbjMtc21idXMgbm8gbG9uZ2VyIGJ1aWxk
cyAtIERvZXMgYW55b25lIGhhdmUgYW4gaWRlYT8NCg0KT24gMjguMDIuMjIgMTM6NTYsIE1hdHRo
aWFzIEtsZWluIHdyb3RlOg0KPiBIZWxsbyBLb25yYWQsDQo+IA0KPiBUaGFua3MgZm9yIHRoZSBx
dWljayBmZWVkYmFjay4NCj4gDQo+IEhhdmUgeW91IGJlZW4gYWJsZSB0byBidWlsZCB0aGUgcGFj
a2FnZSB3aXRoIHRoZSBjaGFuZ2U/DQo+IEkgZ2V0IGEgc2ltaWxhciBlcnJvciB3aXRoIGl0Og0K
DQpEYW5nIC0gdGhhdCdzIHRoZSBzZWNvbmQgaXNzdWUgYmVpbmcgb3BlbiBpbiB0aGlzIHNlcmll
cy4uLg0KDQo+IA0KPiBFUlJPUjogc21idXMtNC4zLSoud2hsIGlzIG5vdCBhIHZhbGlkIHdoZWVs
IGZpbGVuYW1lLg0KDQpUcnkNCg0KUFlQQV9XSEVFTCA9ICIke1BJUF9JTlNUQUxMX0RJU1RfUEFU
SH0vc21idXMtKi0qLndobCINCg0KaW5zdGVhZCAtIGFuZCBpdCBzaG91bGQgcmVhbGx5IHdvcmsN
Cg0KPiANCj4gQmVzdCByZWFncmRzLA0KPiBNYXR0aGlhcw0KPiANCj4gLS0tLS1VcnNwcsO8bmds
aWNoZSBOYWNocmljaHQtLS0tLQ0KPiBWb246IEtvbnJhZCBXZWlobWFubiA8a3dlaWhtYW5uQG91
dGxvb2suY29tPg0KPiBHZXNlbmRldDogTW9udGFnLCAyOC4gRmVicnVhciAyMDIyIDEzOjUxDQo+
IEFuOiBNYXR0aGlhcyBLbGVpbiA8bWF0dGhpYXMua2xlaW5Ab3B0aW1lYXMuZGU+OyB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IEJldHJlZmY6IFJlOiBbeW9jdG9dIHB5dGhvbjMtc21i
dXMgbm8gbG9uZ2VyIGJ1aWxkcyAtIERvZXMgYW55b25lIGhhdmUgYW4gaWRlYT8NCj4gDQo+IEhp
IE1hdHRoaWFzLA0KPiANCj4gdGhpcyBpcyBjYXVzZSBieSBtZXJnZWQgUEVQLTUxNyBjaGFuZ2Vz
Lg0KPiBUbyBtYWtlIGl0IGJ1aWxkIGFnYWluIGp1c3QgaW5qZWN0DQo+IA0KPiBQSVBfSU5TVEFM
TF9QQUNLQUdFID0gInNtYnVzIg0KPiANCj4gaW50byB0aGUgcmVjaXBlIG9yIGEgYmJhcHBlbmQu
DQo+IE1haW5seSB0aGUgcHl0aG9uMy1wcmVmaXggb2YgdGhlIHJlY2lwZSwgbWFrZXMgdGhlIG5h
bWUgZ3Vlc3NpbmcgZmFpbCwgSSBzdXNwZWN0IHBhdGNoZXMgdG8gYmUgaW5jb21pbmcgc29vbg0K
PiANCj4gQlINCj4gS29ucmFkDQo+IA0KPiBPbiAyOC4wMi4yMiAxMzo0NSwgTWF0dGhpYXMgS2xl
aW4gd3JvdGU6DQo+PiBIZWxsbywNCj4+DQo+PiB0aGUgcHl0aG9uMy1zbWJ1cyBwYWNrYWdlIG5v
IGxvbmdlciBidWlsZHMuDQo+Pg0KPj4gVGhlIGluc3RhbGwgc3RlcCBlbmRzIHdpdGggdGhlIGZv
bGxvd2luZyBlcnJvciBtZXNzYWdlOg0KPj4NCj4+IEVSUk9SOiBweXRob24zX3NtYnVzLTQuMy0q
LndobCBpcyBub3QgYSB2YWxpZCB3aGVlbCBmaWxlbmFtZS4NCj4+DQo+PiBEb2VzIGFueW9uZSBo
YXZlIGFuIGlkZWEgd2hhdCBpcyB0aGUgY2F1c2U/DQo+Pg0KPj4gTWFueSBncmVldGluZ3MsDQo+
Pg0KPj4gTWF0dGhpYXMNCj4+DQo+Pg0KPj4NCj4+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+
PiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4+
IFZpZXcvUmVwbHkgT25saW5lICgjNTYzMTApOg0KPj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL2cveW9jdG8vbWVzc2FnZS81NjMxMA0KPj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvODk0NDkyMjAvMzY0NzQ3Ng0KPj4gR3JvdXAgT3du
ZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4+IFVuc3Vic2NyaWJlOiBo
dHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1Yg0KPj4gW2t3ZWlobWFu
bkBvdXRsb29rLmNvbV0NCj4+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+Pg0K

