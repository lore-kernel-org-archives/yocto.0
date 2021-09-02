Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.62])
 by mx.groups.io with SMTP id smtpd.web12.7900.1630593357660069629
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 07:35:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=ZDpGlbCM;
 spf=pass (domain: optimeas.de, ip: 40.107.3.62, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LHYREgOfAy7CiLT4YQG0YDX8r8SnU2llwmAahZwwhn0156qU/YjPzPtrzHxUV4pRiPnlPL1O0iWLHKILRkUHuxnbb7ktbz7J+GMxOsOzqtlHGr5VfYlivwTzi5xzTows7/1KzELkY+IR/6oDO6azodTA6KdIVJ8i+NbVBPQhghTVJ7/LWG3ARRmI/QMQW9V+b2Wqx1hBov5vj+sWtXxXtY2GsXDi4RuMqby1Kl8E0bhgIvQ7wJalAUcW9l4ZCqVphJt9LgDYu3y3DAG2voBCvivoOhk2k9bBjAjGHaPVrDC9nscYeVLXZ1HZPy70m20Xhl7E+0Waw329WbLu5KBbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=3PhUAzgYYXmhX0v1elJpZHSPkuR+Na4Go40EYC5T9eo=;
 b=QFPx9vlIsJppDaLBp3CQmk50S1QbIiPZDg8vUi/ozTXydhmbFJgultbS2Y9VuInALMMYOYwuY2ffSUTXvU+YMvuri6mX8Hue71lxfhLTkoV/zhj4TKlFMnaivyV1V1VS6EGJRhxMnkMzpoeJcwD1/jbxQ9nergVM08F6qfO4hSv7n/3x6bshPIHuLYmIc27DcMqPG1xX/mbtjwOjC37rb9prKRPX5EO2Rip2Oe8PKzK+bmytT94RFUeu8wofl38X3I7M62zb3KGdf8HhB4NrckS22xHxGfkIymE7mUPQzblZPnbs7FRqLtFHXOxEgxvUiF4+2mupJBfHZzXhTlwPzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PhUAzgYYXmhX0v1elJpZHSPkuR+Na4Go40EYC5T9eo=;
 b=ZDpGlbCMu8LqBxhswaljUXaoFSBcT3U9sZzbg63CjhFZ9is2j40dglhZPzXDEjQLu4KSbJeNyaCk8/SKLAaWUyh/7V6KtrP8vJROHCOMl2FmCAXLEZ8RPqwmRKKk2xEeaekQeFagWsPLwx9OaDKdU/qjW8PZ45zFB2ELDugoolE=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM8PR10MB4642.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:316::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Thu, 2 Sep
 2021 14:35:54 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4478.019; Thu, 2 Sep 2021
 14:35:54 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Steve Sakoman <steve@sakoman.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Bug in dunfell branch because of commit "sdk: fix relocate symlink failed"?
Thread-Topic: [yocto] Bug in dunfell branch because of commit "sdk: fix
 relocate symlink failed"?
Thread-Index: Adef+bsvtxR1FwGdQnCwxf3KYliKuwACmH0AAADnEAA=
Date: Thu, 2 Sep 2021 14:35:54 +0000
Message-ID: 
 <AM0PR10MB31076D389AF0932F57A0FD6399CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB3107CEBBE29A9972AAD796D799CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAOSpxdYp6h9AAjMngMQvpwk+JegjS=RxHPGup7Rb5OaVX8HX1A@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdYp6h9AAjMngMQvpwk+JegjS=RxHPGup7Rb5OaVX8HX1A@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: sakoman.com; dkim=none (message not signed)
 header.d=none;sakoman.com; dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 665ed8e7-76cf-4db4-169b-08d96e1ef863
x-ms-traffictypediagnostic: AM8PR10MB4642:
x-microsoft-antispam-prvs: 
 <AM8PR10MB4642348BC1BE3B6D41FD377C99CE9@AM8PR10MB4642.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:257;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 zic12g2JVo2TJUopXJRPaTmsBBu22GBNkw6m72oIujnwyrjcXQoGi3K7KKSZrYYRf9M/R9ZNwZ3h0/+PFEMe2uBtglxD7jOO4aEJcCH78aOD+mo7EnYJ8wlMj9dTBFMjhfL2sm8md1scLJOfo7mOIwJ6W6uQ3Uq2XdzMd+2VXRXa1iHsOdltJ+FUoIWTYRPJVPn7UDAmEZxjp4cAlV1i4ei30H9dynvnuNS3YPMCt/uCpnsUw63GY4WvYMjzIR/Hd6n1cJzJciJ5JeQaMLXMlvPKAnuWIpGoAH3NspfgPLNQ9wAE935ApmL3LoRf6TrCWck4vnH07qs8u8FhCUS7KlhtSEa6Ck6G3Yr2KWeDVTCTTdRx/eaMxA+a07D9pinUpPw7/rnURVQMGZj9msbUl9v8Q49nQEcckGRms+R1zf76Ih0phmhmn7lELeDfEgNVR3o2flfn/Gq+KTdyvXXLVKXtSc9dmv2GuQz9unmQ4BamRtiqqW4H6MdqG37QWKqfZap0g0l2nUUOJULMZVrDdFrUfS8atIwx0Hut51aShNIe0hEXd0mffG8mnAtZDaRCaFXQDU3cETMiGiFnRbP5lC7abTiBN5xD069srhPDg7vXUHLu3k2692J4tyyziE24BG7X5o8J/Pd9+kcGverNztoWTRDsEW65dK4yb14MyHPmteTMa6bCT1ItTT34I/IkLQ26X/51XSSma21P97DiGzXPOCaFpWwFCbb+bvZt45Qz5QoDDH2wvzBEneFpi8Q1Q6GCZYm7bl8OHjCl73aU6zQmC7AYoiO+fo1VdRDtbJs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(396003)(346002)(39830400003)(376002)(136003)(366004)(7696005)(44832011)(53546011)(6506007)(2906002)(38070700005)(52536014)(8936002)(8676002)(38100700002)(86362001)(4326008)(6916009)(122000001)(508600001)(316002)(64756008)(966005)(71200400001)(66556008)(66476007)(66946007)(5660300002)(66446008)(76116006)(33656002)(55016002)(9686003)(186003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?OU9saldGelBaQjZYMFYvNktWV2ozNytHSFdsTkI0anlGYlZKSURsVTJ5bmF5?=
 =?utf-8?B?TkFxa210OEthTVd3UzhvWFk5N0ROU0xwM1pSSTZjSks4NWdPWW9yaFRTRDdV?=
 =?utf-8?B?N3d1Q21uVFJiUThCUlFsZEJhcnlPM3plR1BEOXhWR3NNYytibFhGK2p1Wk5v?=
 =?utf-8?B?djRTaG1KMElSLy8waXV6QTJ2c3RPM0pPUlJuOElUUmdEMmI3QlcvRHQ5Z0xl?=
 =?utf-8?B?R0tQL3JRVGlQZVRDRTFLMW84MW5xSWI2eXVObEtZclJuNjVPK20vQWx2VE92?=
 =?utf-8?B?cTIramNvVXUvVFpOa1ZUazkzTU5KZkdUK2lBY3hmZkxmMVpXVExrQjE5WmJZ?=
 =?utf-8?B?UDBCLzlBMG4vMEpHN1crWHpzZFhhTVF5UE85ZHpPdEtkbFpuckl6K1F0Uldq?=
 =?utf-8?B?d09nODRaTnpEcytYcXVrRDA1Y1g0SUwxOHJuVnNTU0J5RGtMamQ0d3BHbW5V?=
 =?utf-8?B?R2NDdXRHb0ZJeHRMNDR2OG5BMmYwMHJiWm1mKzAwODJJZFFRUytJa1BHczBp?=
 =?utf-8?B?S1JPdk13ZW01blEvcWNMN1QzVEtwemhPUmhXVjdKcXhKRk5kK0JzYzBISmZJ?=
 =?utf-8?B?NEQ5cHNiL1QraVl5eVVKdmJtT0lzY09MdGRzUU9JeElITjFOOSthY2tGRnVK?=
 =?utf-8?B?RnBxVmM0TmVwa1hreDVWNHRXSEFLam93LzVNR0cydG5kanlTWTN0UkdzdjFi?=
 =?utf-8?B?Um8zeHlEU1RERmVvQ24wbUZ1MjZqNjZPWG1uek56eDJKUEYwNFlqVUx6eU82?=
 =?utf-8?B?YlR2eG0rT25QMkY1eTQ1NVQ4TXFpYmV5Vld0SUVnelNpNnljVnBwZFlDRmNI?=
 =?utf-8?B?S1pGSkl5TTJOYmdsck16YXRZcmx5YlQzSXV2ZnBzTGd4Z3F2VFJNcU5kU0hr?=
 =?utf-8?B?SGpQcnV6ZjZIQkdtdmhQek8zVjZISC91dlNjRFIwQnFLZ1RVRjkwdEszakl4?=
 =?utf-8?B?QnZ6TlFGem9kR0kvNUF3ZFl1MTBvd0VkelU5amVOTHg5cG5nTGVDSUd1bVJ1?=
 =?utf-8?B?T2RVRG8xeUdHL1h2TFFjZ1R0S1N6WjlrU2gxZU8xVFZ3RUlta2lJY0UvdjA2?=
 =?utf-8?B?QWpjWWpZTFRjeS8xY2MzNWJFaFR6QmhkYnNUYXFGZUNxY2taVzkrbFBCUnBp?=
 =?utf-8?B?amZvVnNyVEUrZ0Q3UnBCSk5FMzloK09vUXdjdVB1ejJCY0QxMDFBYjdtNjhq?=
 =?utf-8?B?YXErRm4rbjRIZTdxYXRVS2VxRUtuRXNsL0tEYnRxQUZ2am5YZFBrVDdidXc1?=
 =?utf-8?B?MzBiUnVMNnd2RTdmcnVyY2cwODcrZjBnck5RNCszZ0FsUWgvbFFrMlNMTk56?=
 =?utf-8?B?QzRqWmdtUlZvZmNhUDYzYnlaL1JQeHFpTnZhZWhpbVZCNTUyU2x2QnlhdEtZ?=
 =?utf-8?B?UUNrTU1kMzBKZVdzZ25OMWZaYXk3aWV2RFo2bDJCaVRKKy9iVXlMWVR5RlVW?=
 =?utf-8?B?Z0xNR1hHSDdyV0FiR29qYkJkZk5jYVJlSVFCdDdXRUJoNEplaDRHc0J3L25w?=
 =?utf-8?B?YktWMzhwenRRRDBVR3VNT3Aycm9iQm9KQy83NlhGS05ncXZZMGgwMytjbE1t?=
 =?utf-8?B?dkVqTHdERCtkd2ZQQmx5RVRaR0k3V05oSWhVK2c5cnlobk9IaVFub3BMUFlz?=
 =?utf-8?B?TFVGakxKSFVCbW9zOHJBVXNrTzlOWXdqeFFBV25UQzcxT2YrRy9LdWlSeS9Z?=
 =?utf-8?B?WlBHSmViRHhLMVJ5TVBpRXA3dyszUmJ2Z0pBcDd5ZjlZLzlaejQxeWsvQm9R?=
 =?utf-8?B?dkxlWG5BRlEya0E4UkRBRjVIa2h6K0lySkxHNm5FNlFteStUT0VFWkxicWQr?=
 =?utf-8?B?SkhoZ3JFNENnMyt2T2pmZkZQOXBqdWhncU9nZ0M1YnVNWUtHL2J3cno4WDBn?=
 =?utf-8?Q?Y8K98khTb2hCm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 665ed8e7-76cf-4db4-169b-08d96e1ef863
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 14:35:54.3724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cV9PuzRt6B4yAG8Y4OsTrHEwBcpOpWJdwvvT0o/3CmSwnFxEOad7dN5D+97PKU/bfEW6ZhHpJW8FSPzW+rtNKh1DvsVpwctZJWCdFSj8t4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4642
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gU3RldmUsDQoNCnllcywgdGhhdCBjb21taXQgcmVzb2x2ZXMgdGhlIGlzc3VlLg0KDQpC
ZXN0IHJlZ2FyZHMsDQpNYXR0aGlhcw0KDQotLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0t
LS0tDQpWb246IFN0ZXZlIFNha29tYW4gPHN0ZXZlQHNha29tYW4uY29tPiANCkdlc2VuZGV0OiBE
b25uZXJzdGFnLCAyLiBTZXB0ZW1iZXIgMjAyMSAxNjowOQ0KQW46IE1hdHRoaWFzIEtsZWluIDxt
YXR0aGlhcy5rbGVpbkBvcHRpbWVhcy5kZT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnDQpCZXRyZWZmOiBSZTogW3lvY3RvXSBCdWcgaW4gZHVuZmVsbCBicmFuY2ggYmVjYXVzZSBv
ZiBjb21taXQgInNkazogZml4IHJlbG9jYXRlIHN5bWxpbmsgZmFpbGVkIj8NCg0KT24gVGh1LCBT
ZXAgMiwgMjAyMSBhdCAyOjU1IEFNIE1hdHRoaWFzIEtsZWluIDxtYXR0aGlhcy5rbGVpbkBvcHRp
bWVhcy5kZT4gd3JvdGU6DQo+DQo+IEhlbGxvLA0KPg0KPiB0aGUgZm9sbG93aW5nIGNvbW1pdCBu
ZWVkcyB0aGUgdmFyaWFibGUgU0RLX0JVSUxEX1BBVEggd2hpY2ggZG9lc24ndCANCj4gc2VlbSB0
byBleGlzdCBpbiB0aGUgZHVuZmVsbCBicmFuY2g6IA0KPiBodHRwczovL2dpdC55b2N0b3Byb2pl
Y3Qub3JnL2NnaXQvY2dpdC5jZ2kvcG9reS9jb21taXQvbWV0YS9maWxlcy90b29sDQo+IGNoYWlu
LXNoYXItcmVsb2NhdGUuc2g/aD1kdW5mZWxsJmlkPWQ2ZjQwYmUyOWJmNTZhODM1ZjU4MjU2OTJh
MjIzNjVmMDQNCj4gYWViNmMzIFRoaXMgbGVhZHMgdG8gY291bnRsZXNzIG1lc3NhZ2VzIGJlaW5n
IGRpc3BsYXllZCBkdXJpbmcgdGhlIA0KPiBpbnN0YWxsYXRpb246DQo+DQo+IHNlZDogLWUgZXhw
cmVzc2lvbiAjMSwgY2hhciAwOiBubyBwcmV2aW91cyByZWd1bGFyIGV4cHJlc3Npb24NCg0KSXQg
YXBwZWFycyB0aGF0IGR1bmZlbGwgYWxzbyBzaG91bGQgaGF2ZToNCmh0dHBzOi8vZ2l0Lm9wZW5l
bWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUvY29tbWl0Lz9pZD1iYzRlZTU0NTM1NjBkY2Vm
YzRhNGVjYzU2NTdkZjVjYzE2NjZlMTUzDQoNCkNvdWxkIHlvdSBzZWUgaWYgdGhpcyByZXNvbHZl
cyB0aGUgaXNzdWU/DQoNClN0ZXZlDQoNCj4gU2hvdWxkbid0IHRoZSBwcm9jZXNzIGJlIGFib3J0
ZWQgd2l0aCBhbiBlcnJvciBtZXNzYWdlIGF0IHRoZSBmaXJzdCBwcm9ibGVtPw0KPg0KPiBNYW55
IGdyZWV0aW5ncywNCj4gTWF0dGhpYXMNCj4NCj4NCj4gDQo+DQo=
