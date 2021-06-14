Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.133])
 by mx.groups.io with SMTP id smtpd.web08.58.1623702057647589436
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 13:20:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@skidata.com header.s=selector1 header.b=2/p2GYy3;
 spf=pass (domain: skidata.com, ip: 40.107.3.133, mailfrom: richard.leitner@skidata.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5JlC4fr/M0hoskF6SNSLlcjYvPNaBeIcnzwkpGQsGHEbu2Fl+q3t3+aolndJmcAD+YZAt4yC6qEhGymyxyzsA13ptRopHh0Mt7rSY8088kyo0CPqqTKFsmKujasDDlhkJmAMt8Nfq1HOXysWcO3Q/kNvC0i8tCdLvSpQMZnjj4CPurV3tGYE5mMSfYxSUE96EdXi7L2PB3p+Cm7/rIqEhoWd0bEv3Bjtolj3LnESmOohQnjJhaU4j23dQt61SqDnvB5Ic4jMsFzm+NAtAQt0CcLrzrPirBi9m5lzStdEEhSlYtFD7B/vpEHpl5rUXrIwjmknRUrK2MXMYGVfc9gBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHQq5VCBKy7QUwr/T0vbruGC7hgQBng55xmfSyPcgBU=;
 b=ZnIg+D4N7R1+KOwbfaYqLosI2unv1oPKVKyxrusjFxpszLf5JugZE54G2XkI3Ld2Zt8fIK6t6QsEAqyrN2PpjBSsawMdNCzcSaF+0nRi2DJXUAuGI90DCzDxBzgUxcYI9H2Nyw6A3adSxgkmL6jtyq36QeKGt4qmgeJt7TvO3t86EEnFMukNymnfc6q7gb+U5iA0L7XxFSFI9lYz9pWrStzbN97MKd+G2uXy33swXf06VRk/sgq7/wMvU+nM0GW+T++witiHNQQwB985DS2M9R7f3AbHhlmIrI4aAW+ZsCabkZWt7muFCTbszwknE5WEROUYZAYMl3J9h9sWz3Y1GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skidata.com; dmarc=pass action=none header.from=skidata.com;
 dkim=pass header.d=skidata.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=skidata.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHQq5VCBKy7QUwr/T0vbruGC7hgQBng55xmfSyPcgBU=;
 b=2/p2GYy3lubXlq9aLF/y6Z/b3zFFaptf1gmt1dY/rzgK1amjRkQG8piwTXwWZCsHotinLVcrq1izA5y7IgKxF/7kbZygCRsxxbGIT7eexc4DiBFPUve5/JbhLlFJPL8vdrTKavNrL60HliVpx1JNQNmtKiBT89Xan/xdQp9/T0SpB/QN/YlP320/SkRUtKp5itSsVr/zJMOUADcx7WiMuB05pSUk8X/uPuIotzg0i56i6jPlrOzBvVPEhsWxKaN9J6feZue4fChtQjA1hIyQlxizMgncez0uDqQaO5toSlkgg6KlTTvCHGnCHr+mBIN3iJx4hxZxcZx3XU3Ypjut3w==
Received: from AM9PR05MB8796.eurprd05.prod.outlook.com (2603:10a6:20b:433::9)
 by AM9PR05MB8796.eurprd05.prod.outlook.com (2603:10a6:20b:433::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.24; Mon, 14 Jun
 2021 20:20:55 +0000
Received: from AM9PR05MB8796.eurprd05.prod.outlook.com
 ([fe80::55b4:3e9e:14ab:9d63]) by AM9PR05MB8796.eurprd05.prod.outlook.com
 ([fe80::55b4:3e9e:14ab:9d63%9]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 20:20:55 +0000
From: "Richard Leitner" <richard.leitner@skidata.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
CC: "George.Mocanu@rinftech.com" <George.Mocanu@rinftech.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-java] icedtea7 fetching error
Thread-Topic: [yocto] [meta-java] icedtea7 fetching error
Thread-Index: AQHXXCzuuhyiXazm20y2Dxj27Z1lLKsM9QIAgAcIMQA=
Date: Mon, 14 Jun 2021 20:20:55 +0000
Message-ID: <YMe6JtmeJc1NiRYZ@brokenbit>
References: <98hT.1623132594082542882.bzIp@lists.yoctoproject.org>
 <CANNYZj9r_eZ8ZHEo801viRNuBekefmvKuqtLfKsKTQncw+uw-w@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9r_eZ8ZHEo801viRNuBekefmvKuqtLfKsKTQncw+uw-w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=skidata.com;
x-originating-ip: [83.215.125.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7e3dae5-dd8d-4eb7-1453-08d92f71ea03
x-ms-traffictypediagnostic: AM9PR05MB8796:
x-microsoft-antispam-prvs: 
 <AM9PR05MB87968F140A678965F10AD609F0319@AM9PR05MB8796.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mXDpjUZIHwIqkap4AKjT1qIoVzb0y/73TpnfARO5Hcjo3YQawAKjyvZb9DvQsm9TWbfmpa9/mMxrvRultT91k/UmHMECGfVozPGECRvwaFj8pGauI52l0lERbx7d8rjTCIaVdXQBrE5SFM126TuIN37hO0PUEOKvIJ/8dxTxutYZSza6YuyfWfwQqY0ccbm6k1nc2KmnzymIyUXsKsFCvSDBVSDZ6zuuQtNVtR8CXoaPNOaw0EgLJz+21du8wlCi0aqQiZNV37BVBASC3OWCLh7mpZoIiyrzbJ2MeYts+ze3MYJycFNhnThwBKXvRN37NAMkpp1gSy2igo5oQjbccTAPdDf/BTE8JvEsMuxmaozuoIRFfx5oYhaCgscmKDErzgy4ui40TwOOcKrKKNeDFquzWiM98p82Fa6+kEAu9kUj5WTh/SVIzz0fkf7cQVysQeGcoXYlPjM/0J72uwjhYU2Sh2CFIF4AWN3yUykdc9YQdbEA1mgM6EwVzgtpowjzLvWs9huUHkwBRUieIPo85k6v2k5CwPWNcLlbhXhWppU4HoQ9zQVlnBvdv6RJiEcMfWxQhzfHKO6RxOLX5TTjNf8ANoR+/gQ79MC9ezUyi0EdG9ZmZnw+oU1P64zjjp8yMrmG8oTjPoZmrR2DRwOREUSiI7PIYMaZ+TpO4OzRaAkMExXSJGCbMZS16yJx5TiKacQO9s+7Tu+X6rnKv+1olQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR05MB8796.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(7916004)(396003)(136003)(366004)(39840400004)(346002)(376002)(71200400001)(2906002)(8936002)(38100700002)(966005)(86362001)(122000001)(8676002)(26005)(54906003)(33716001)(76116006)(478600001)(186003)(6486002)(110136005)(4326008)(66446008)(66476007)(66556008)(64756008)(6506007)(66946007)(83380400001)(6512007)(9686003)(316002)(5660300002)(91956017);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZGJsZS9lK1VFT2JRWThmbEJCd1RuanNQcU0yR0h1R2dTaDJyY09maTM4dEdi?=
 =?utf-8?B?UWcyZTRXZE42eHNLMXpQQ0dwOFhqY2JldUFDTWdVMGlWaTVMSkU4WmF3Unoz?=
 =?utf-8?B?MnJheVE0b3Q0MjA5VFFXOWxwUnhZK3NoSyt3d3N0MzJ0dlhCaWMySUxPNmdz?=
 =?utf-8?B?c2tTVWR4YjhpTkdxZDZ5SlhzL3lzOW5teng0aFZHVmxrVTRNc0NEd0YyemxE?=
 =?utf-8?B?MmhkZHhETE5ZM0tVbEg3QTJRZnZPVnRyaTg0NTIrUWs1NElEN0Q4enhsc3RS?=
 =?utf-8?B?N25TYW1KSkR2SEJsMEFxWG8rbEt3cTlST1FackdUdndhb3dlWjRkSjdicmJN?=
 =?utf-8?B?OS9XSkxLdDFyQTRGZDlRV05Qd3hhN29KOGhLejFYbnRUdmdHWDJWb2dSQzFV?=
 =?utf-8?B?eGp4b2hoRFJ3OWpEV0xUREFVaTlHSEhTTmZpdlhrdnNyWW9aeDZJaFluZVVl?=
 =?utf-8?B?WUwyMkZaQ1FZVEhmZHcrbHg5c3ZKNGRuTkl1ZHRRYmRtbkZ3a1FwVnNudnJQ?=
 =?utf-8?B?NW1kajRHUzROdHprYmoyWlFabkdRSFF4YitxS2ZMWUFiSjdzdlFkMjZyN0p0?=
 =?utf-8?B?blJicFFPaWVlKzRXWkk3ZHpTZ1FXTUZDdS9kWExrT1ZYMlBkVWx4djVGcTBh?=
 =?utf-8?B?QkFRcWpGclFDbU5vVGFWSTlITlhYSVQybkpleGVydjBUSHkrRHhKUWZYUlA3?=
 =?utf-8?B?VlpKcjB1b1Y1UlIxQlBjK3BERUNGTE0zUmVKQmxtblZXckRyYWc1ZTJJeTdp?=
 =?utf-8?B?N3haRVFWM0xUMW1ucml1aDFvK0dXZVJGOC9QMm1tQWlTZ2ttRHBWeVlYeVJu?=
 =?utf-8?B?Ri96bnhZbFpvVU9oVUx3VS9PVi9ib2NpSnNNdzRSUGFWZENLT3RpLzBiYUdu?=
 =?utf-8?B?cVk1T09CQTVqaEdURjRKNXhvSkVHbUt4US8wbXJlRVppb1VSdUJGUG5UekxE?=
 =?utf-8?B?MDcxbDB0ZHlXa2YyM01yUzlwaDZERTZ6aWhFRm4xYW0vQmdsUm5xandDcFBS?=
 =?utf-8?B?c0VtRHdyNlpZamlieWQ0NDRsbU1tYzZBN21EMEhpS0NHdEhSSzdIRHVTS1Ar?=
 =?utf-8?B?d2RvWWUyM2FvY0Fib0ZDZlZDdFYxS3NZMFZVdTZGNzRXYTJyZHNtSzJveC9y?=
 =?utf-8?B?UVl3bHRrR0VTemhKYldTZkJaOFhySXlVVnMxKzdvdHNIWXV1TTFDcjRRMUJl?=
 =?utf-8?B?VTMrMWYwR2VrU05PaFlqeHVMc01CcVVhTUNkU3N0eWUwbDFBM2lDa0pMemM5?=
 =?utf-8?B?S3BnQlRqZ3htcWRqUEZjMTUvNkVYM2lpUURPMEFmR0lPNElzRFRrSUhCNXJE?=
 =?utf-8?B?aVk1TmZ1TG5iMlNnay9sRWpFL0EzVHZ3blM5VFQ5ZFhUSDUyS3hVSkNqMkJr?=
 =?utf-8?B?M05SK2k4aytsLzRvOTBlRHU0bFoyTjRGTG9yNHlOVG03NXZlU3lrQnYzUVF6?=
 =?utf-8?B?U2tzaWtiUzZGcmx5UDZveUM3aXR5NTBtaVQ5KzgwN2xBN1g3NzZrQ3IyeGxV?=
 =?utf-8?B?cDZBRGVPbW1IblhhR1RVMktFQ09FZndiZEFEbGpBYXJySk8yWTJTNmtPRFVq?=
 =?utf-8?B?dTZXMHVGVjVKeU0vWVV2Rk0vbFc1cVhGb3VtZkFQMHpqOVIzVDkvaVFBNDRm?=
 =?utf-8?B?TU9zMjgraDJESndFaW1ZM2dFbG1LYm9aZ1AwWEx5WlNnU2RJVnFZNmdoeUtR?=
 =?utf-8?B?akx6amExNnE1MThaTHlGK2RVWGdxOCtpVDNWcDNmdm9ZYmZXNmlzRVV4d1FD?=
 =?utf-8?B?ck93NEVGdWZvSmxFMklzWXdhaUVmR0J5YU9qQ0JTR01yZnlNYklKMU1TMUpt?=
 =?utf-8?B?T0ZvZDNtWXhJRnVadE1oZz09?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: skidata.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR05MB8796.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e3dae5-dd8d-4eb7-1453-08d92f71ea03
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 20:20:55.2301
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e5733095-4425-4f08-b6ba-487b9a46a425
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JyybO0qqscej59PWsiLOCH23pMwwIoE/+YbjAATK+YES9/kSzeb4XAtwykvqzLeoOkQpL9I6RkFADOf0Zm5wEx2qXBfQWRd6HFMZ2Qusyx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR05MB8796
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9FF301A786C65E4B8477E385C74CBD14@eurprd05.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gVGh1LCBKdW4gMTAsIDIwMjEgYXQgMTA6NTc6NDZBTSArMDIwMCwgQWxleGFuZGVyIEthbmF2
aW4gd3JvdGU6DQo+IEkgaGF2ZSB0aGUgdGFyYmFsbC4gSSB0aGluayB3ZSBzaG91bGQgdG9zcyBp
dCBzb21ld2hlcmUgc2FmZSBhbmQgdXBkYXRlIHRoZQ0KPiByZWNpcGUsIGFzIGl0IGlzIHVubGlr
ZWx5IHRoZSBvbGQgbWVyY3VyaWFsIHJlcG8gaXMgY29taW5nIGJhY2suDQo+IA0KPiBTdWdnZXN0
aW9ucz8NCg0KU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LCBJIHdhcyBvbiB2YWNhdGlvbiDwn5iJ
Lg0KDQpOb3RoaW5nIHRoYXQgY29tZXMgdG8gbXkgbWluZCBkaXJlY3RseS4gRG8geW91IGtub3cg
b2YgYW55IGhvc3RpbmcNCnBvc3NpYmlsaXRlcyBmcm9tIFlQIG9yIE9FLUNvcmU/DQoNCkBSaWNo
YXJkOiBTb3JyeSBmb3IgcHV0dGluZyB5b3UgaW4gdGhhdCBjb252ZXJzYXRpb24gd2l0aG91dCB3
YXJuaW5nLi4uDQpCdXQgbWF5YmUgeW91IG1heSBndWlkZSB1cyBpbiBhIGRpcmVjdGlvbiB3aGVy
ZSB0byBob3N0L21pcnJvciBzb21lICJsZWdhY3kiDQptZXRhLWphdmEgc291cmNlIHRhcmJhbGxz
Pw0KDQpyZWdhcmRzO3JsDQoNCj4gDQo+IEFsZXgNCj4gDQo+IE9uIFR1ZSwgOCBKdW4gMjAyMSBh
dCAwODoxMCwgPEdlb3JnZS5Nb2NhbnVAcmluZnRlY2guY29tPiB3cm90ZToNCj4gDQo+ID4gSGVs
bG8sDQo+ID4NCj4gPg0KPiA+IEkgYW0gdHJ5aW5nIHRvIGJ1aWxkIHNvbWV0aGluZyB0aGF0IHJl
bGllcyBvbiBtZXRhLWphdmEsIGJ1dCBpdCBmYWlscyBvbg0KPiA+IGRvX2ZldGNoIGZvciB0aGUg
aWNlZHRlYTcgcmVjaXBlOg0KPiA+DQo+ID4gLS0yMDIxLTA2LTA3IDE3OjI0OjMzLS0gIGh0dHA6
Ly9pY2VkdGVhLmNsYXNzcGF0aC5vcmcvaGcvcmVsZWFzZS9pY2VkdGVhNy1mb3Jlc3QtMi4xL2Fy
Y2hpdmUvZjg5MDA5YWRhMTkxLnRhci5iejINCj4gPiBSZXNvbHZpbmcgaWNlZHRlYS5jbGFzc3Bh
dGgub3JnIChpY2VkdGVhLmNsYXNzcGF0aC5vcmcpLi4uIDE3Mi4xMDQuMTM3LjEyMA0KPiA+IENv
bm5lY3RpbmcgdG8gaWNlZHRlYS5jbGFzc3BhdGgub3JnIChpY2VkdGVhLmNsYXNzcGF0aC5vcmcp
fDE3Mi4xMDQuMTM3LjEyMHw6ODAuLi4gY29ubmVjdGVkLg0KPiA+IEhUVFAgcmVxdWVzdCBzZW50
LCBhd2FpdGluZyByZXNwb25zZS4uLiA0MDQgTm90IEZvdW5kDQo+ID4gMjAyMS0wNi0wNyAxNjoy
MTowNSBFUlJPUiA0MDQ6IE5vdCBGb3VuZC4NCj4gPg0KPiA+IEVSUk9SOiBpY2VkdGVhNy1uYXRp
dmUtMi4xLjMtcjEuMCBkb19mZXRjaDogRmV0Y2hlciBmYWlsdXJlIGZvciBVUkw6ICdodHRwOi8v
aWNlZHRlYS5jbGFzc3BhdGgub3JnL2hnL3JlbGVhc2UvaWNlZHRlYTctZm9yZXN0LTIuMS9hcmNo
aXZlL2Y4OTAwOWFkYTE5MS50YXIuYnoyO25hbWU9b3Blbmpkazt1bnBhY2s9ZmFsc2U7ZG93bmxv
YWRmaWxlbmFtZT1vcGVuamRrLWY4OTAwOWFkYTE5MS50YXIuYnoyJy4gVW5hYmxlIHRvIGZldGNo
IFVSTCBmcm9tIGFueSBzb3VyY2UuDQo+ID4NCj4gPg0KPiA+IEZvbGxvd2luZyB0aGlzIGxpbmss
IHNlZW1zIGxpa2UgdGhlIHdlYnNlcnZlciBpcyBkb3duLiBEbyB5b3Uga25vdyBhbnkNCj4gPiBt
aXJyb3IgdGhhdCBJIGNhbiB1c2UgaW4gdGhlIG1lYW50aW1lPw0KPiA+DQo+ID4gVGhhbmtzLA0K
PiA+IEdlb3JnZQ0KPiA+DQo+ID4gDQo+ID4NCj4gPg==
