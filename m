Return-Path: <alexander.duda@vector.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04836C433EF
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 20:34:53 +0000 (UTC)
Received: from de-smtp-delivery-103.mimecast.com
 (de-smtp-delivery-103.mimecast.com [194.104.109.103])
 by mx.groups.io with SMTP id smtpd.web09.1730.1652906085382679492
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:34:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vector.com header.s=mimecast20200527 header.b=IGb5dT3V;
 spf=pass (domain: vector.com, ip: 194.104.109.103,
 mailfrom: alexander.duda@vector.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vector.com;
	s=mimecast20200527; t=1652906083;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N5n06nxpZD2C1TP9wR5SdnJeWYQgqhWSgrEWbUx0owY=;
	b=IGb5dT3VtlmTnmyYdvG7mP3vMChKK5hvyMQjmg4OSsuIq5O3qqZ4l7gl/6o9KZ6w2YI5pt
	KaVzqPjasMFYGuW2nm2IJxhZ2EC0PJcESDTUI6dCAKRWzccQJTpYvQzcYlqPhVaCqr7nj/
	uBMY/IauIBikJL4jxNRB8E6nc1AuPtM=
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2058.outbound.protection.outlook.com [104.47.13.58]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-35-RlHz9zefMby-9g6DhtPOJA-1; Wed, 18 May 2022 22:34:42 +0200
Received: from AM0PR01MB4370.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:6b::21) by DB8PR01MB6296.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:15f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.18; Wed, 18 May
 2022 20:34:40 +0000
Received: from AM0PR01MB4370.eurprd01.prod.exchangelabs.com
 ([fe80::b823:ec88:c856:a6ca]) by AM0PR01MB4370.eurprd01.prod.exchangelabs.com
 ([fe80::b823:ec88:c856:a6ca%5]) with mapi id 15.20.5250.019; Wed, 18 May 2022
 20:34:40 +0000
From: "Duda, Alexander" <Alexander.Duda@vector.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] ERROR: cp: cannot stat 'Module.symvers': No such file or
 directory
Thread-Topic: [yocto] ERROR: cp: cannot stat 'Module.symvers': No such file or
 directory
Thread-Index: AdhqrT7pyjlUBcS3RGu69vaHY6uXXAAD/RqAAADcQDA=
Date: Wed, 18 May 2022 20:34:21 +0000
Deferred-Delivery: Wed, 18 May 2022 20:33:28 +0000
Message-ID: 
 <AM0PR01MB437036217133CFDF3A22FC8BFAD19@AM0PR01MB4370.eurprd01.prod.exchangelabs.com>
References: 
 <AM0PR01MB4370CFEECE972B01700BC592FAD19@AM0PR01MB4370.eurprd01.prod.exchangelabs.com>
 <d5a3de03a3610ef1627762776da572cf7bc61dcc.camel@intel.com>
In-Reply-To: <d5a3de03a3610ef1627762776da572cf7bc61dcc.camel@intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d66209b8-10e6-4a4c-70ce-08da390dd52c
x-ms-traffictypediagnostic: DB8PR01MB6296:EE_
x-microsoft-antispam-prvs: 
 <DB8PR01MB6296CE1B9731EAB002C341C2FAD19@DB8PR01MB6296.eurprd01.prod.exchangelabs.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 
 lJuQXVcC+tUPePIfypOZx+ak9CmGhOKImPws1xMi2IFpOp9AYumx4neT6txIYCWY+1DZGHYvlZ9GIx2TSz7VSTt5loIq7caW5rnFhkIg5X/gOZwVpGQs+0PT+P6GYT5mRET8HhFhw8MJ0D3bygf648glvc9TpU+kPTOW96BbcSLnXhgOHK5uA7a6GNbcGCvzv/QC9hAdt+BP1vY3CoBrKO1IJFd08684SVsUrKJo7szppKkBvNIyI4nVO1hHUeF8QUuDvzbc6cr9li5qkUC0PAHQgDU5U83uVWl+Exgh9j4WRYQmIsiGjYGOfNwS5fZfivdQ2uIexZAqVCPymHo8ICTtkLnqEVOcJuI1Qh/nAYqStYUFEsqnIfEfZVtVl33wQd5STAZInzhvkvPLe6cqqJi5IXIZNm16hkIn52Yi13J7RmuYv5NsbYxM9aLU3apune9sIvODJ1LCSv+Xwgly3BFz1JA92NuExwOX3PY0VZHyEpMI0qkqbuRi9yBUGRAy1E91WDfT8F+NDpkD4jzADbba5OXvioBOE2Wo3Pef/9uMgCGZFRR55ImqjqoJL2JdAC3oVA3HB2gHuBwUxouus0Ccr1vZg4mmphmUdnx2q4ipQNh0/3CXVpUxWg5m0atUOBFWjokSFjPJ2bqDesbqD0TnYCU3bRxwrppBhjFATTEe5HgJX321cJ2UNg2V4pJWkx652QzAmkIWF0RLSfKBGOHbc4rr6J0CjPx3JEk1238Ru2nPwrcu6b7DxS3XRAfnwX9tlzj0yGrg1z39JDnCxPi47FFRX+wOKkO4GE5OEwM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR01MB4370.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(83380400001)(9686003)(110136005)(71200400001)(2906002)(508600001)(966005)(6666004)(316002)(33656002)(38100700002)(52536014)(76116006)(86362001)(6506007)(122000001)(55016003)(186003)(66476007)(66556008)(66946007)(66446008)(64756008)(8676002)(26005)(38070700005)(53546011)(7696005)(5660300002)(8936002);DIR:OUT;SFP:1101
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UnZWeklWb2JZZi9BRE5Vbnl6Zm5UMG9ob0c1aStraEJvamk4QXFiUWxiV0xU?=
 =?utf-8?B?UUdZZEI2SzRLdFAwTmNNU0dNTVIyanV6OTZiZ1lvc05aWnFuQk1jeEYvL2NG?=
 =?utf-8?B?RnNnbnd4YWo5WTJTZGVVR3oySEJCTmFYYktsZ2hLaFJuMy83TEpJelVkN1BK?=
 =?utf-8?B?bDcxa1NTQ2ZONW5ENHUrUnZqZmZMOXpvOWh5b0djdG5lbGJHZm02eG53U1Vh?=
 =?utf-8?B?cTUva2VRU3ptOGJBdkZqL2FqbVZaTGZyQkhQU2Rsb2hmTzZicXV0VXVtVzBt?=
 =?utf-8?B?aWs4U0Y1cWVWaWEzdklKSE1rZndTTEVHNW5yamI2YTJtYUVuSGQ3eDBxc2l6?=
 =?utf-8?B?YVB1b2JtOFVzOFhpWG14a1ByM1pwaXVuNHFBbkh5U3BvRS9jZUJ4bEFpYllw?=
 =?utf-8?B?TlgxeTc2dGhXL1Ywb05KMCtkcFNFRGZhT1BYelNIRWFvc1dkYS9KMTd2OFBn?=
 =?utf-8?B?WnZYUXpMNGFCSmkrWnNPWjRQUWZlbS9QSTVVa01jQkxXS1BkVmwxam9Db1p0?=
 =?utf-8?B?Mm13N0tYdk5XVVIrbldzOWs2elhWMG4xOVJwcHhwd1hzTU9NTFA2RmhMVUVx?=
 =?utf-8?B?dmV1SlV1WlQycnhQNmZMS3VYdXd2WEp5K01JZjlnVWRyRG1RMWJXWDdTeklB?=
 =?utf-8?B?eHVxbVg0Um44c0FHaGJoZVhnM2RvZGVmSWxpczRMbllzQTVNRnJJNW4xUGM0?=
 =?utf-8?B?QTNjbmtza0xqd1J2ZDVCOVkzQUtSY2MxbjVJYzhwMUpubHFhbmVrbzdiM2di?=
 =?utf-8?B?TG1ERUV1WGc4cG04b0RmT0ZTOHV1dWY0NjhOV1cwcE42L2lPaFI4YnFRL3hW?=
 =?utf-8?B?QXYwM3lpYnJ4U3ExVW44QkdqbXZsK2R3ZEp2UWxUUzhzRUdnY3lZdEh0S1l5?=
 =?utf-8?B?eS9zampQVzAzWVUwZ2haMHVxVDJ5eXFlRzBhNkFsb3AyazdQVVdXdlMrTGMz?=
 =?utf-8?B?OXNtYW9rcmtVSVAyR0FQOGNjTzJPMmYzalhCbjU1TVpCbVNndHRpRzdTaS9P?=
 =?utf-8?B?eFloNnpQQVBiamJ2T2pMWlprbXNab0tGZ1ZybnA2dUp2YmlwdXhVVThvMWZn?=
 =?utf-8?B?d25jVEM1K2pnZmlxZjliZ2wvQ25iRFVyNjVya3ZHMVkydXJCMDcxaFZOS2Ft?=
 =?utf-8?B?SVlMZlc0RFNMOU05YTBrWWRFZS9tNy8vUmxqc21HWS8wa3h1RzE2ZFQ5L1dR?=
 =?utf-8?B?b2RxQWVtVmIrT1N6R0o1MGd5L1lreHdRbnhFVGxaMEN1Zi9EZUc4ZjlWWllr?=
 =?utf-8?B?bDVSdU1ES2N5OVNtWGJWOWorRVhlbU1IUU1PM0dvRDdTdS8ySWRETEFoVEhH?=
 =?utf-8?B?K2FYekFQaE5RNnFwbGFTQ25WOERwOW1qOS9iZ2xBT2JnQ1N3dFlmTG85OHRt?=
 =?utf-8?B?UVFWbnJVYjlFOWdsMFNINk1mUjRlTy9INUtYMCt2YlN1UE9JcmxSakhCaWs0?=
 =?utf-8?B?RWEzTVBnZERTR3huT21WYUlXekZld002UnJ1OUlYb1pCMFZkVGZ6clh6c3cz?=
 =?utf-8?B?bTJvK1pLZ0pUOU9zaVFua2NKdDd3MHZqbXNETFg2WXF6K3JFeXgwWXk2Z05E?=
 =?utf-8?B?ODNtQUg4QVEyWjVtQjVZZDZwK2R5MTBkMlYydmlOTGp3VU8wUFhkYyt1R1dX?=
 =?utf-8?B?VU5UTWMzTVBuTWppRzJSVWY1cUI4V3N0V2FtcUlpQmdwR3Y4SDV0K1pWSjEx?=
 =?utf-8?B?WDNOVkp5a2Y4U1BQci9PRUFYYlU5bTlzZmVXSS80b1BHc25CVmZaNWwwdzdW?=
 =?utf-8?B?YXlKTytxUm9jWnp2MC9SeHRwTUIybzVCNGhjVmhMZWxvZWgwRGo5Mno4Z3pR?=
 =?utf-8?B?UWxiRDhhcTVtN0RWVUNHUnFUZ25SWVZXUEtBSzBzVS8zTTBTaUhaZ0RxTUt5?=
 =?utf-8?B?dXQzUkxZbU5XN0Z5Z0lKSWNpcWVBQnpTT0d2c0JqREg1aVl3RFhINy85T1I5?=
 =?utf-8?B?V2tVRUlQdEpaT0I5VlQ5NW84a1BoWUdvUEgzUEJ4NEdObytPK2xzOTZlaTBS?=
 =?utf-8?B?ZDlEOW8vUkloc3lYR1o2bnI5YkhUYmRjSjlIQkpLME1aTTBWdmRrR3FkQUkr?=
 =?utf-8?B?cDhWQ014U1RBRVhwS0QxL3ltSStuSnJraFp0elN1ZzhXOVVFM1Y5MEZ0TWl5?=
 =?utf-8?B?ZlFDODlaVDl2V3VwOURvSW1ubGVGQ013dkIxQ2pvUEVqSTF2b0FoMWlmalo2?=
 =?utf-8?B?TFIrSkM5SzYzUXJaMzJsaGZCaXRNZkNSNDRBQ21kR3RaSmZRYU1Ud2l0VVJ4?=
 =?utf-8?B?NUdmRTZvc1NqOWVEU2w3cU5ocUtxbC81Y3U0ZXE0OXJKRWI3Ym5HMHFuZFRo?=
 =?utf-8?B?ckJwRHRIMzFuVi8wckFtUUxsZ0ppZUhIK2J6cENCV2dEQXBmWUNMVEJ5dnJO?=
 =?utf-8?Q?MtbfVJeEsyu1UQo4=3D?=
x-mc-unique: RlHz9zefMby-9g6DhtPOJA-1
x-originatororg: vector.com
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: 
 AM0PR01MB4370.eurprd01.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: 
 d66209b8-10e6-4a4c-70ce-08da390dd52c
x-ms-exchange-crosstenant-originalarrivaltime: 18 May 2022 20:34:39.9539 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: c844b2b9-7a68-473f-b386-e2e1b968279d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 7jNG55WhE7rvwJlQ3cQKOkH4Y4ZT6K3LASP5kcL1x6YA/WIWVEFEYKf8HL2QvyK/TyHlrR96KoJaPzO2FGm4C4SIKvMHQzJmhB2XB6fOK0g=
x-ms-exchange-transport-crosstenantheadersstamped: DB8PR01MB6296
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CDE3A201 smtp.mailfrom=alexander.duda@vector.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: vector.com
Content-Language: de-DE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 20:34:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57132

VGhhbmtzIGEgbG90LCB0aGlzIHNvbHZlZCBteSBwcm9ibGVtLg0KSSBkaWRuJ3QgaGF2ZSB0aGlz
IGNoYW5nZQ0KDQpHcmVldGluZ3MNCg0KQWxleA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogTWl0dGFsLCBBbnVqIDxhbnVqLm1pdHRhbEBpbnRlbC5jb20+DQpTZW50OiBXZWRu
ZXNkYXksIE1heSAxOCwgMjAyMiAzOjQzIFBNDQpUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZzsgRHVkYSwgQWxleGFuZGVyIDxBbGV4YW5kZXIuRHVkYUB2ZWN0b3IuY29tPg0KU3ViamVj
dDogUmU6IFt5b2N0b10gRVJST1I6IGNwOiBjYW5ub3Qgc3RhdCAnTW9kdWxlLnN5bXZlcnMnOiBO
byBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQoNCk9uIFdlZCwgMjAyMi0wNS0xOCBhdCAxMTo1MCAr
MDAwMCwgRHVkYSwgQWxleGFuZGVyIHdyb3RlOg0KPiBIZWxsbyB5b2N0byB1c2VycywNCj4NCj4g
SSBrZWVwIGdldHRpbmcgdGhlIGZvbGxvd2luZyBlcnJvciwNCj4gRG9lcyBzb21lb25lIGhhdmUg
YSBoaW50IHdoZXJlIEkgY2FuIGxvb2sgdG8gc29sdmUgdGhpcyBpc3N1ZT8NCj4NCj4gRVJST1I6
IGxpbnV4LWZzbGMtNS4xNS1yMCBkb19zaGFyZWRfd29ya2RpcjogRXhlY3V0aW9uIG9mDQo+ICcv
emV1cy9idWlsZC90bXAvd29yay8gLXBva3ktbGludXgvbGludXgtZnNsYy81LjE1LQ0KPiByMC90
ZW1wL3J1bi5kb19zaGFyZWRfd29ya2Rpci41ODkxOScgZmFpbGVkIHdpdGggZXhpdCBjb2RlIDE6
DQo+IGNwOiBjYW5ub3Qgc3RhdCAnTW9kdWxlLnN5bXZlcnMnOiBObyBzdWNoIGZpbGUgb3IgZGly
ZWN0b3J5DQo+IFdBUk5JTkc6IGV4aXQgY29kZSAxIGZyb20gYSBzaGVsbCBjb21tYW5kLg0KPg0K
PiBFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL3pldXMvYnVpbGQvdG1wL3dv
cmsvIC1wb2t5LQ0KPiBsaW51eC9saW51eC1mc2xjLzUuMTUtcjAvdGVtcC9sb2cuZG9fc2hhcmVk
X3dvcmtkaXIuNTg5MTkNCj4gTG9nIGRhdGEgZm9sbG93czoNCj4gfCBERUJVRzogRXhlY3V0aW5n
IHNoZWxsIGZ1bmN0aW9uIGRvX3NoYXJlZF93b3JrZGlyDQo+IHwgY3A6IGNhbm5vdCBzdGF0ICdN
b2R1bGUuc3ltdmVycyc6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4gfCBXQVJOSU5HOiBl
eGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29tbWFuZC4NCj4gfCBFUlJPUjogRXhlY3V0aW9uIG9m
ICcvemV1cy9idWlsZC90bXAvd29yay8gLXBva3ktbGludXgvbGludXgtDQo+IGZzbGMvNS4xNS1y
MC90ZW1wL3J1bi5kb19zaGFyZWRfd29ya2Rpci41ODkxOScgZmFpbGVkIHdpdGggZXhpdCBjb2Rl
DQo+IDE6DQo+IHwgY3A6IGNhbm5vdCBzdGF0ICdNb2R1bGUuc3ltdmVycyc6IE5vIHN1Y2ggZmls
ZSBvciBkaXJlY3RvcnkNCj4gfCBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29t
bWFuZC4NCj4NCg0KRG8geW91IGhhdmUgdGhpcyBjaGFuZ2U6DQoNCmh0dHBzOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvcG9reS9jb21taXQvP2g9emV1cyZpZD0wNTA0M2EyNmNjMjk3ZWQ5ODM0MDU1
Njc4YWM2OTllMjBlMmYxNmQ1DQoNClRoYW5rcywNCg0KQW51ag0K


