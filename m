Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 333B5C5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 19:14:40 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.59])
 by mx.groups.io with SMTP id smtpd.web10.102249.1700766870995107913
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 11:14:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=CgIgIsxA;
 spf=pass (domain: kymati.com, ip: 40.107.8.59, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnawDMxPpTccAIOdJKf9D18OOvjol/Rl1T9U52B8YQktdxzbpBRI+6yU/bhi8JZzISvzRrwbcbJKdpHRxssKbHOQ5b1P4iHizyolKo4N3sdI2DwodH/b9l1Se6PxbWS/Bn7kJBjH+j0NrNJnHbZkUFhIY7JBS3gu5m5xnCOeIMn1qpsmHneQPO5u2VPfsJok2bsVJys1oU0E2hkoW+t2uQ4kgoSN2BsyTP7pZO/tP2lrbKpueK3IqTITJY5S+URYDUNhDslpCuL+VGV0LtpQWEgteTPaJc//ELsff3vrL6Wo6+UNbU7dhLPLDSSEiJ+QltumLzfU8LXOXabKTxHf7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bAGcoEuEm/hS4VhC5m43+1z00GpOx6X07j5VnGozdU=;
 b=HHy4dYrSPz2nTavSaMrfnuOdP2we4j7lE9pr3RcTSDlKSZ6xy18rTDkfdQktv01P45vW+0AR7yIpmXGoZPMEMvdYaCzpvXPnWqfozGJdQ3F0MUSOEbrHGyId7xk5X+tX6ArI0snmWXXGnO9tWvNZr/dLtg0cnKnZPKKMm2Ia8V7hVptKQMoM9Z/B+fFS8whLzofqPfvQmZU2CJad5B4D214blq4ILuTEL+HdpEBbufWbX0CAfP/c0RqPDzJNSrCyaw9v52pyYm+cLWPrWdxa+qWM5IKALUa7K8qVBOk5dZEZ3hQY9ijFa8aB7NH80m4gZ3KClEXT5nxnfgyvLPsrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4bAGcoEuEm/hS4VhC5m43+1z00GpOx6X07j5VnGozdU=;
 b=CgIgIsxAO955zB3tdiwg51MzVzfLheFjYrcCde+gLYiLHV3e5P4008XPEmmhbeXn1/E6araqtA6UjbxC28bxF6pcCWvRDYDr4AEg/9GNiUt1jYzQ/akd6lI3fs3OjUIwrnDAsK0nZYo0iv6TqbBiitIKzkLmnUZJZmomohFL3OE=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AS8PR03MB9608.eurprd03.prod.outlook.com (2603:10a6:20b:5ab::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Thu, 23 Nov
 2023 19:14:27 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3%7]) with mapi id 15.20.7025.021; Thu, 23 Nov 2023
 19:14:27 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Khem Raj <raj.khem@gmail.com>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, "ross.burton@arm.com"
	<ross.burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Index: AQHaHh+QHpws51ms406OtJOEGAq8h7CIHHOAgAApUyg=
Date: Thu, 23 Nov 2023 19:14:27 +0000
Message-ID: 
 <AM9PR03MB701223D38416AE49C41B989B92B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
 <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
 <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
 <D16D6B59-7E34-49BC-8385-D7216058B9A4@arm.com>
 <AM9PR03MB7012EFD751803A645DBDFC6992B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <CAMKF1so23Z70avrYbyT9iQ4obvVFyOyvo1AiBzWJc3H5ptN4gQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1so23Z70avrYbyT9iQ4obvVFyOyvo1AiBzWJc3H5ptN4gQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AS8PR03MB9608:EE_
x-ms-office365-filtering-correlation-id: 2b1a387a-eb32-4928-1067-08dbec5869b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0SuO6m8QyQyIGQqfj3JwssnNZisBUC93w9N1cMO8a4dMcJYokKjoBCJnqTK5vC+F000FUuDqA64sEysgI4YCFKfzBGvqYuh+YVWw5m/Gqc8xtUmNHYHw0MCmzeJo9Gta1dnr7L2MShIQR3Rzng857gXgc5/nAaFl4A7ygrK8OYTwed4DO1RJyikv82kfRhCFn4hsuPZ+w6ItaaXduTgy5IGr794nVbr7xF2LR/uNiJ8WAp5bWkFE+IedtNTVBGci33r+e62FVJdK/u38n07w3/eS2JDES+n5Qbrp/cD6CZFMjn/fW0CloSFc0UxVHnK3M15SYFkBONkeOgkuhtASgWeMlqb4nAe+rwI0ckFj3nVxnJ39NNXtKQSaYOiwCDcLkbj006C1nlnyJ0Vouy/Svo1Mu3Z1nwQ/R34kdRjt/mQF2CfPu1RvmJm/w73ZFJoZ+bfzJ7zqErqI+CQsCWf/3QqjBH55ZxldPhMfPFIJCPQPsNuMpipxx7XP09nc2lvATDSpnRJEnE/fRK1eAOml6MH7m/sXh6WKR2qz2bmmhkhRaRk+A22dXptMSI1oqBxE4Gj5x13e0FDMtzZuKkZv0vuoEDjUkEp6hlPeVpVpJAeNLUZxjxFUl4A0W7LxTvYBXk6RJL0kQ2xw0eNMQtF6ZKGKD9o/R94reSVkTRSn03g=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(39830400003)(376002)(346002)(230273577357003)(230922051799003)(230173577357003)(1800799012)(451199024)(64100799003)(186009)(478600001)(91956017)(83380400001)(122000001)(38070700009)(71200400001)(38100700002)(86362001)(33656002)(6506007)(9686003)(7696005)(53546011)(4326008)(5660300002)(55016003)(41300700001)(19627405001)(316002)(2906002)(76116006)(64756008)(54906003)(66946007)(66446008)(66476007)(66556008)(52536014)(44832011)(6916009)(8936002)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Vm9ZTGw1UERKQjZuTkxTZUY0S2xkcU1PNHBXaDRuRXNBRmhFZytacG16dzIv?=
 =?utf-8?B?YVh6dkZ2K2FWTWlpdm1VbXQwS2I4MEV3cGRNclp1Y0x0ZEpvV0tiSFdTVTl5?=
 =?utf-8?B?NTdreUZuckxyc2J6eGszdVcxaTE3TGFEeG8xSWVNTlJ5THdVWXVVTEVuMkVu?=
 =?utf-8?B?VUY5Rnpvc2xHcitGZjRLV1hISnVaTEY1VWcvdjBJdDVkNStRNUc5M1dWMUVk?=
 =?utf-8?B?OFR3MHRHbFk5SFhuUTRvUWtuYnF0bm1vRmZMQU1oTXJkaVNYMU1EQ0htYnU0?=
 =?utf-8?B?bHAzblAxd3lkU2QwdEtlNmVTbGNzM2QrRkhmTk12dVEvUHh6STdsa1IwMDho?=
 =?utf-8?B?NWplbjZnenk1R2wvRjkwV20zSUw5Q296RHNNc3h5ZGJRZndmU3BFbmYyNVZ1?=
 =?utf-8?B?U1o0V1Y0dm50WEFITEliUGppZ0pXR2EzZUU0M3JZd3o2RTVzWXQxQWovcTRq?=
 =?utf-8?B?eXlQWmpzeFU0TVlNTDJxb3FXdC9Mb0hRRGFRUzhrY3RNQ0tRZStPRmpSclVw?=
 =?utf-8?B?YnY2SytQS1hnR3JSNnpkVklpQUI3RWtGVkpNWjVKSmlqaXh4R05pdHBnUlA4?=
 =?utf-8?B?VXhSU3AycUdXVGpubEdBTlYzKzB3dFZQcjBsTCt0cUlVMkNjYTRVV1hSVVpN?=
 =?utf-8?B?QmJPeitkVUtoUTU5QndWVmtpVThSa1c0V0V5d2hJOHdUMzhOd09JSVg1WEJj?=
 =?utf-8?B?bjNQa3U0YXBaY1RSWDFnMGhUK2pKblFNQ2NIcTI0OWdEREVDNU9pNlFLRklS?=
 =?utf-8?B?SFFpWGw2bnBXb0lHeWx3U0tPbEZZMTVKaC9xSEFiY0FDNUJWRWNiNm9KYkhB?=
 =?utf-8?B?WDlEcU1QZWhEQkxycHVpZ3VWY0Nwa21peDYyQytxZzBpY0tuOEFwcUFPK1Jk?=
 =?utf-8?B?RFlPclZRbCtsaUNXaGNmZk1UMW9TS0lodWlWbGM0NlQycjVEejRrenlIdFhv?=
 =?utf-8?B?UGtUclpqdFpWUmJMYjVKWlNDc1U0M2JDaWlWTlNUeW5yQ0xZR09NRXVHOXBi?=
 =?utf-8?B?ekVxTENrb1BZblZDT1dUY2lGWFFwZXJ5K2x2RHArWmZENkQrWEtJSGxNTEVy?=
 =?utf-8?B?N21HVVpMbUVJUGpGZXMyNFE1YlZYcmNuSHo5S21panRDdU5BNUs5eUV1UVEz?=
 =?utf-8?B?OHluSnJvL1U1ajkzWDU2MWM3N1BuUFFjWG1ZUlpqSUNPQjZTU25IUVUzZzZ4?=
 =?utf-8?B?NDBWRW5XUXJoc242Z1V5eXVxTldsNDh1MnlZK3NaVFFqSkZYSHlGU3FoT290?=
 =?utf-8?B?VEdUYThNelR5czc0TVdKdVBpZlpXTzBCU1hGWmJ3bFlNNjFWRm90L3k4dG1q?=
 =?utf-8?B?NDVGQzFML1Y2Y2xIZjZwTk5DbG9HUlVWNUM0b1ZMWGpuazM1cVdEeHQ2eEcr?=
 =?utf-8?B?c2dVaVhyL3BONmo1TkN2RmdQTmlZYUZ0alJLOXZTblVrNSt0QUloMkJwRytK?=
 =?utf-8?B?U2tBUmloZVdYdzQ0SzBjWkdvVTQ2MmlzdXRPeS9oQms5RnVTYjB3VmZjTVNE?=
 =?utf-8?B?QzBEQ0lhUld0amIwZjg0alBzL01XKzgyOGdRTmtqdHpaTzNBMnF4T1hNZ1Zi?=
 =?utf-8?B?RXJPVHVGVWowMktNamRScDQwdzk2KzBxU1M1bEVrRjVqUllDbkYyK0k4RE5l?=
 =?utf-8?B?NndpVnBKeHFLSjFJbHRnSmdYRE9kM1VqVFl2WDZmMHZHWUNtc3hTVEpUMHE4?=
 =?utf-8?B?ek5TMVlPdGU3RXVuNkp5RWpRS0E5SEFuRVFXMXVzWVdna05MZmVvWE5zWUFu?=
 =?utf-8?B?YXZXVDFXM0dKblVFVFpCVzFhdVo1dHVPaEh5aUR1alA5WG1aM2VCU2JRUzJH?=
 =?utf-8?B?T0RiMTFmakxiL3RPQjR2d20yTkdJMGVCb2pnZmhRZ2JHalZCYXFXMDBGckd4?=
 =?utf-8?B?WnNucEdiS2h0a1J0dHlHS3lYOVZTTXV3Tk1OZXg2Qm85TlAvK2M4SzVKWjBM?=
 =?utf-8?B?QWd0Q0RTV1czN1FYWUlQV3BrdjZWZkYwc0tGNWVmamFlL1hSV1dOanh4VUZ1?=
 =?utf-8?B?dXVuVEIvbEJzeG12M1lGS2lxbEphcHl2eUtWaHRGU0NOZjNJL3hRZXprdita?=
 =?utf-8?B?aWRCNzQrcXhUdnp2NHAxZFU4Ymh6RWIzT1VwV0RjUm9UZUlCSmVjWDZvUDFR?=
 =?utf-8?B?Nkxsb0xZaWdqeVV2SGtzcHMrTHk5U3NTU2I2RHRrOFQrVUt3TytvUEkzMUFq?=
 =?utf-8?Q?qhXvZZjEkcK5e20P7eyoTvvLXliSRPZGDlMYBsjXHbON?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB701223D38416AE49C41B989B92B9AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b1a387a-eb32-4928-1067-08dbec5869b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 19:14:27.7024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yPV9S2CVoG/BV2AF1aQDGjeWeZlYY8yBerBqdtU4aGl3awRZFbHeJ8wT9OQOZSnjUU0RFfEerzeww1FP1T9gvGIZ8CLdMRs7W1QeVgy9KU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9608
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 19:14:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61750

--_000_AM9PR03MB701223D38416AE49C41B989B92B9AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgdGhlcmUgc29tZSBydWxlIEkgZG9udCBrbm93IGFib3V0IHRoYXQgc2F5cyBlYWNoIGxpbmUg
b2YgdGhlIGNvbnRlbnRzIG9mIGEgcHJlcGVuZCBIQVZFIHRvIGJlIGluZGVudGVkIHdpdGggYSBz
aW5nbGUgdGFiPyBJdCBhcHBlYXJzIHRoYXQgbWlnaHQgYmUgc29tZSB3YXkgdG8gc29sdmluZyB0
aGUgaXNzdWU/IFdoaWNoIG9ubHkgbGVhdmVzIHRoZSBuZXh0IHByb2JsZW0gLSBJIHdhbnQgdG8g
Y29weSBmaWxlcyB0aGF0IGFyZSBpbiB0aGUgc2FtZSBkaXJlY3RvcnkgYXMgdGhlIGJiYXBwZW5k
LCBub3cgdGhlIHN1Z2dlc3Rpb24gSSBoYXZlIHNlZW4gaXMgJHtXT1JLRElSfSBidXQgaXQgZG9l
c250IGFwcGVhciBpZiBJIHByaW50IGl0IG91dCB0aGF0IHRoaXMgaXMgdGhlIGRpcmVjdG9yeSBJ
IGV4cGVjdC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpGcm9tOiBLaGVtIFJh
aiA8cmFqLmtoZW1AZ21haWwuY29tPg0KU2VudDogMjMgTm92ZW1iZXIgMjAyMyAxNzo0NA0KVG86
IERhdmUgSGl0Y2htYW4gPGRhdmUuaGl0Y2htYW5Aa3ltYXRpLmNvbT4NCkNjOiBBbGV4YW5kZXIg
S2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT47IHJvc3MuYnVydG9uQGFybS5jb20gPHJv
c3MuYnVydG9uQGFybS5jb20+OyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnPg0KU3ViamVjdDogUmU6IFt5b2N0b10gW3lvY3RvLWF1dG9i
dWlsZGVyLWhlbHBlcl1bUEFUQ0hdIGhvdyBjYW4gYSBtaXNzaW5nIGZpbGUgYmUgYSBXQVJOSU5H
IGFuZCB0aGUgYnVpbGQgJ3N1Y2NlZWQnPw0KDQptYXliZSB5b3VyIGJiYXBwZW5kIGlzIG5vdCBt
YXRjaGluZyBpbiBuYW1lIHRvIHJlY2lwZSBvciBtYXliZQ0Kc29tZXRoaW5nIGVsc2UsIHR5cG9z
IGV0Yy4gU2hvd2luZyBleGFjdCBjb2RlIGNhbiBoZWxwIGEgYml0IG1vcmUgaW4NCnVuZGVyc3Rh
bmRpbmcgd2hhdCBtaWdodCBiZSBnb2luZyBvbi4NCg0KT24gVGh1LCBOb3YgMjMsIDIwMjMgYXQg
NzoxM+KAr0FNIERhdmUgSGl0Y2htYW4gPGRhdmUuaGl0Y2htYW5Aa3ltYXRpLmNvbT4gd3JvdGU6
DQo+DQo+IEkgYW0gdHJ5aW5nIHRvIGFwcGVuZCB0byBsaW51eC1pbXguDQo+IElmIEkgZGVsaWJl
cmF0ZWx5IHB1dCBhIHdyb25nIGZpbGVuYW1lIGluIHRoZSBzcmNfdXJpIGFwcGVuZCBpdCB3YXJu
cyBtZSBhbmQgY2FycmllcyBvbiB3aXRoIG5vIGVmZmVjdCBvciB3b3JyeS4NCj4gQW55dGhpbmcg
SSBwdXQgaW4gdGhlIGRvX2NvbmZpZ3VyZTphcHBlbmQoKSBvciBwcmVwZW5kKCkgaXMganVzdCB0
b3RhbGx5IGFuZCB1dHRlcmx5IGlnbm9yZWQuDQo+DQo+DQo=

--_000_AM9PR03MB701223D38416AE49C41B989B92B9AAM9PR03MB7012eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFw
dG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhl
bHZldGljYSwgc2Fucy1zZXJpZjsgY29sb3I6IHJnYigwLCAwLCAwKTsiPklzIHRoZXJlIHNvbWUg
cnVsZSBJIGRvbnQga25vdyBhYm91dCB0aGF0IHNheXMgZWFjaCBsaW5lIG9mIHRoZSBjb250ZW50
cyBvZiBhIHByZXBlbmQgSEFWRSB0byBiZSBpbmRlbnRlZCB3aXRoIGEgc2luZ2xlIHRhYj8gSXQg
YXBwZWFycw0KIHRoYXQgbWlnaHQgYmUgc29tZSB3YXkgdG8gc29sdmluZyB0aGUgaXNzdWU/IFdo
aWNoIG9ubHkgbGVhdmVzIHRoZSBuZXh0IHByb2JsZW0gLSBJIHdhbnQgdG8gY29weSBmaWxlcyB0
aGF0IGFyZSBpbiB0aGUgc2FtZSBkaXJlY3RvcnkgYXMgdGhlIGJiYXBwZW5kLCBub3cgdGhlIHN1
Z2dlc3Rpb24gSSBoYXZlIHNlZW4gaXMgJHtXT1JLRElSfSBidXQgaXQgZG9lc250IGFwcGVhciBp
ZiBJIHByaW50IGl0IG91dCB0aGF0IHRoaXMgaXMgdGhlIGRpcmVjdG9yeQ0KIEkgZXhwZWN0LiZu
YnNwOzwvc3Bhbj48L2Rpdj4NCjxkaXYgaWQ9ImFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5
bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrO3dpZHRoOjk4JSIgdGFiaW5kZXg9Ii0xIj4NCjxkaXYg
aWQ9ImRpdlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNl
cmlmIiBzdHlsZT0iZm9udC1zaXplOjExcHQiIGNvbG9yPSIjMDAwMDAwIj48Yj5Gcm9tOjwvYj4g
S2hlbSBSYWogJmx0O3Jhai5raGVtQGdtYWlsLmNvbSZndDs8YnI+DQo8Yj5TZW50OjwvYj4gMjMg
Tm92ZW1iZXIgMjAyMyAxNzo0NDxicj4NCjxiPlRvOjwvYj4gRGF2ZSBIaXRjaG1hbiAmbHQ7ZGF2
ZS5oaXRjaG1hbkBreW1hdGkuY29tJmd0Ozxicj4NCjxiPkNjOjwvYj4gQWxleGFuZGVyIEthbmF2
aW4gJmx0O2FsZXgua2FuYXZpbkBnbWFpbC5jb20mZ3Q7OyByb3NzLmJ1cnRvbkBhcm0uY29tICZs
dDtyb3NzLmJ1cnRvbkBhcm0uY29tJmd0OzsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyAm
bHQ7eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZndDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4g
UmU6IFt5b2N0b10gW3lvY3RvLWF1dG9idWlsZGVyLWhlbHBlcl1bUEFUQ0hdIGhvdyBjYW4gYSBt
aXNzaW5nIGZpbGUgYmUgYSBXQVJOSU5HIGFuZCB0aGUgYnVpbGQgJ3N1Y2NlZWQnPzwvZm9udD4N
CjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IkJvZHlGcmFnbWVudCI+PGZv
bnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+DQo8ZGl2IGNsYXNzPSJQ
bGFpblRleHQiPm1heWJlIHlvdXIgYmJhcHBlbmQgaXMgbm90IG1hdGNoaW5nIGluIG5hbWUgdG8g
cmVjaXBlIG9yIG1heWJlPGJyPg0Kc29tZXRoaW5nIGVsc2UsIHR5cG9zIGV0Yy4gU2hvd2luZyBl
eGFjdCBjb2RlIGNhbiBoZWxwIGEgYml0IG1vcmUgaW48YnI+DQp1bmRlcnN0YW5kaW5nIHdoYXQg
bWlnaHQgYmUgZ29pbmcgb24uPGJyPg0KPGJyPg0KT24gVGh1LCBOb3YgMjMsIDIwMjMgYXQgNzox
M+KAr0FNIERhdmUgSGl0Y2htYW4gJmx0O2RhdmUuaGl0Y2htYW5Aa3ltYXRpLmNvbSZndDsgd3Jv
dGU6PGJyPg0KJmd0Ozxicj4NCiZndDsgSSBhbSB0cnlpbmcgdG8gYXBwZW5kIHRvIGxpbnV4LWlt
eC48YnI+DQomZ3Q7IElmIEkgZGVsaWJlcmF0ZWx5IHB1dCBhIHdyb25nIGZpbGVuYW1lIGluIHRo
ZSBzcmNfdXJpIGFwcGVuZCBpdCB3YXJucyBtZSBhbmQgY2FycmllcyBvbiB3aXRoIG5vIGVmZmVj
dCBvciB3b3JyeS48YnI+DQomZ3Q7IEFueXRoaW5nIEkgcHV0IGluIHRoZSBkb19jb25maWd1cmU6
YXBwZW5kKCkgb3IgcHJlcGVuZCgpIGlzIGp1c3QgdG90YWxseSBhbmQgdXR0ZXJseSBpZ25vcmVk
Ljxicj4NCiZndDs8YnI+DQomZ3Q7PGJyPg0KPC9kaXY+DQo8L3NwYW4+PC9mb250PjwvZGl2Pg0K
PC9ib2R5Pg0KPC9odG1sPg0K

--_000_AM9PR03MB701223D38416AE49C41B989B92B9AAM9PR03MB7012eurp_--

