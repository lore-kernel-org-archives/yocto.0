Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.124])
 by mx.groups.io with SMTP id smtpd.web08.18655.1627903961029544324
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Aug 2021 04:32:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cwareitservice.onmicrosoft.com header.s=selector2-cwareitservice-onmicrosoft-com header.b=FMvc6ryQ;
 spf=pass (domain: c-ware.de, ip: 40.107.8.124, mailfrom: christofer.dutz@c-ware.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWVzwO5gFlTPp7Ur0XBUvv1DgUAKejCST7HZWdxR5jMbZ8gxeAWTTJjfITziUaLopj2t5LTxAqESJI5tXHTMV+2DGb4g4PkSGwYszz2tAoWHAkn/iKwMwBI9ADXWlb+sEwjo8TCik2KZIq8lp63c+zpekAGB8NvphWEhrdMbZzYppO6B01GkT1dI/2v+z42ywmwtdWmj0yycu4ybCkWWiIeVPiXiCA6s5BwwACpGiUoHmwW9smAwwNNE/JdAUygbxlmsJqZj2JgmkM1ZBXX6zdOZnQtKM1yiWI/GpFMMQqUWKKWbXsquN+0+KBJvL/SIn71WiLR4Y5lU03vy2EXdPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0kEStgjYpwXQU8gtYcUvzuCQC6I4wmIoGMLewGpyiM=;
 b=YK8F/Op12/T4a0fD0GVDijMemClsS+UQKhC73i6XRRyO/TtO10/g4YvE8JtHsOZvTbzPB2+o4x65V7/bU52M3E0nl38pCI+Z9KBtrEXfWwudJwk4MMdvWMwOuE8lGHpYJ8Nz3Fullq5zxLjw8m8YiOIH1W2mw2a53d8A9RSCqjFeTfGK+7xXvqk1aTdUZHJ8pGhmMDtTruuMvoiMllFO7ocEiqnIq3zjVRR+FI/nBmy2fTnCgs9ZnE6HLCazlXFds8P8QA4ocEf0hkLfHevZVmAlvm6UedGv2sI272wUvhj2Wrq9Xnqm4pJCQjVlgqx9IlKxVAqV5pDoxhiAVnsL9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=c-ware.de; dmarc=pass action=none header.from=c-ware.de;
 dkim=pass header.d=c-ware.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CWareITService.onmicrosoft.com; s=selector2-CWareITService-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0kEStgjYpwXQU8gtYcUvzuCQC6I4wmIoGMLewGpyiM=;
 b=FMvc6ryQfDFpmop1m/Xf9UZvx5guomk9wBTx2cLVQ4AfnSzJmPp8KztV/al/k3+qQG7Ea+QzDj/de3v/97sbPactWukKlzIzwVIHrOEMWKeJVyB1BYV2A2HCUwxcEg19kFXJAG2Vh8sq3D3IcVyLd9igP6FPrO+wuNlsFHdUFyg=
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com (2603:10a6:20b:137::22)
 by AM6PR05MB6216.eurprd05.prod.outlook.com (2603:10a6:20b:2b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Mon, 2 Aug
 2021 11:32:37 +0000
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289]) by AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289%8]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 11:32:37 +0000
From: "Christofer Dutz" <christofer.dutz@c-ware.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] (Go) Library for configuring Yocto based boxes?
Thread-Topic: [yocto] (Go) Library for configuring Yocto based boxes?
Thread-Index: AdeFFoupQ2bOnA6sQuup4q7x7Xd86AAAyqmAABQMS9AAiYbwgAAARYdA
Date: Mon, 2 Aug 2021 11:32:37 +0000
Message-ID: 
 <AM7PR05MB68072CB0D9E4F9225C04612BA2EF9@AM7PR05MB6807.eurprd05.prod.outlook.com>
References: 
 <AM7PR05MB68079F0EE9AA57AAC765E903A2EC9@AM7PR05MB6807.eurprd05.prod.outlook.com>
	 <4d53db74437d5a537fbddfc98193b18b35706acd.camel@delisys.ch>
	 <AM7PR05MB68071F9410BE1219864FA253A2EF9@AM7PR05MB6807.eurprd05.prod.outlook.com>
 <f2eb41515ba6793be96b7f11c66185de17db2609.camel@delisys.ch>
In-Reply-To: <f2eb41515ba6793be96b7f11c66185de17db2609.camel@delisys.ch>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=c-ware.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c3464b1-ce57-4fbf-2504-08d955a93af0
x-ms-traffictypediagnostic: AM6PR05MB6216:
x-microsoft-antispam-prvs: 
 <AM6PR05MB621641A4B4AD24B15785F346A2EF9@AM6PR05MB6216.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 buB2KtDORVLIOkAmcx06Fr2egxzwCHWiTRTs2tCx2dJPF0Dtc5D6LZtTKN6nwDN6r5LNFphQ32bQTmf13EzW9l/WWeugjmY3Sa0icjag7fu4ANRQhkckjuERkc7qxpf0W08tVwQNPDuC0A3SfpqgxW5/IpYDCDf9cpnKlzn1wyTZgm9mHhqyuiK1RNVa8yIKljS3WeK6UZ2tNmF5IXqZ/1HCJ0GMuEcbdUbhwrQauYHiJeEL8PIPbHcqrLFm9PrE9vAHxctB1JwycXQvcRNB/OeCdaxfvLgiMGt+BhCa/IlM4+VIv5GjdQ4Cm5j89uS+rPPW/gK+QDem1u/nBWTtmslrHW1qCBiFMHFIIM4Wz+h0A0X+8ILV6PSwQ5Gd4zabrjp/a2eDAsNRA90mvN+pgmUzIRL0o9f/Xvi+/FyZzt/J6Bj81Hs3hzvqix4gOcA4Nm34vwFgAt+DcyzR164vMvpn/pCiSnuuJFl8h1b/prYlyc1GsZKgNtumCYxNlfJnPK2lpV7XVklY3gYltwLi4mHyO/04pFs0hKwAWuqMY8Kx675ztGgjVfCBblxk0DcvU0mj6O3m10HOjZgxf6vWVuEacNMDN0KAfjSSVzu21Kf0yelAZPidXioB9cat4P/lpsULuVC4hP0Hxmz/Um/IiUyocBBpO7yhuoH0FMDMUGkVJzV3OdVNkpPRAdbbU/lC1/IkXklKXcR/OL/ISsAHm2A8Qp1UW0Ll6Po2sP7Fe1YRfWAeW2ffyNGZfYnpsN81oaYFmgMInlSKHPV7qV12PZb7n8cGc4IPIfdGNJVQQpo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6807.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(136003)(39830400003)(396003)(346002)(366004)(83380400001)(66574015)(186003)(9686003)(86362001)(966005)(478600001)(55016002)(71200400001)(2906002)(7696005)(44832011)(38100700002)(122000001)(66946007)(66556008)(66446008)(8676002)(66476007)(8936002)(33656002)(5660300002)(6506007)(38070700005)(6916009)(64756008)(52536014)(316002)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NjZxYmdxcmNsWldDcnd3dDdKWnk0bXBrWWxma3ZYeVV1OE5NZ0tpZU9VVUsx?=
 =?utf-8?B?bFhqSldRdTNTTytIVjR5Y001TGVDbTg1Y1FmUGJ6cUN2U2FQZE5VeE8vTlM0?=
 =?utf-8?B?VkFtSWg5YUJuVFRjQzlUVGtuTDVUcnhRL1B2V25hWFdNNCt6cmJvYlJ4Sk9o?=
 =?utf-8?B?YXpzSWtubmV4clFRbmVhdDNvUjVEd1ZDM090QTZyay8yN1hyVnlHb3NaWGgr?=
 =?utf-8?B?QU0wVFBRMlBFUFRwb25lZ213YlJSSng5NGFRMlpSMm9mWmRyZE1aWGVvQjRE?=
 =?utf-8?B?YjFYcFJBZVcxNTUweEtPaFNzNEMzZ0loSHdWbDBCMFA4UUdEbEJXU3NQdjhM?=
 =?utf-8?B?TFVlMVIrSENKWGI1Q0x6eFh2clBqdDYzWWNMVVdRVmtKUzFMMUdjYUt4NDQx?=
 =?utf-8?B?TFVTYmVGdTA4M204cVdHOHB3dWdsaGwzcllCdjN5c0tieXE0azNjbU4xazl2?=
 =?utf-8?B?TWl2cmVON1drWEZ6aTRpcFYrMElrL1JNZ0ZZMFB5SHdXWW5FVWdJR2hGVlho?=
 =?utf-8?B?cmhQQzdELzVENVNpeGd1MTBDN1ZiNEhCbjloRFVHNXowL3prM3ZYZGdRWFJZ?=
 =?utf-8?B?Z0M3bEFQVmM0ZTd2ei9pT1crV3ZETDNGQ0laSjAzWTdMYjRia3dGT09QVUlR?=
 =?utf-8?B?dVJXRjcwU05POFRobjJEZHU2SUpqc0xxVGt3QUl0VXdTbExMd0FGb0Z0VHFQ?=
 =?utf-8?B?MGxpcS9ydXFqdzJSNWxtdnhybDFwNHZDZTdkMnNPU0tYRG5xRTNDblowcmM0?=
 =?utf-8?B?UmdXd0ttU0pPVzNsOHVjWWNwcWxpNkFGVHhYRnpaS0plRHAvUFg2VVd6RzZV?=
 =?utf-8?B?L1hmdTdtamswOGU2VFlyclZGazlPVklGWWxld0liTWpkV1dYUVpTQmZtYXNx?=
 =?utf-8?B?eUpqNTNJKzdmaTZuc0MyQXg2TkNodEJGMUxFbTczL0JuaFBZU05ZMW9QWkRX?=
 =?utf-8?B?VExIUlVlY003KzMyQVBpQ2RuRUd3eDZacEJvTVhRanE1VUJhWks4UnJGQ0Rv?=
 =?utf-8?B?aGZoSmE4NG5QZjFZWkpMQ1AyNFBMOE5pVXhYWHA1a0pKUTZTU25wcllQZkNa?=
 =?utf-8?B?c3B6Y2VhR0NJMkZlcU9ma09UYUhaTkxqKzFUdEpMVkxJamtTTk5OMEszLzlL?=
 =?utf-8?B?UUx2bVZQaEZyV1dYem1vMlY3WGZWT1ZtaFhZZUtrZkFlTVl2OTIwbVE1dlBZ?=
 =?utf-8?B?OG01ekIwQXZTd0pmU21Ed2pjc0lrMGN5c1pHNG9wY29zanRFV2g5dXZ0aVRz?=
 =?utf-8?B?TVpIY1cwck9kajAwTk85ZTZqRGFTdGkvM3IyMUdMUjhuS2xsZkJxb3dPSFZx?=
 =?utf-8?B?YXRpYlVUNmE3NEVPWCtBWUJOaWFDSjd0UmNPMTVTdXE1NTFocFlIZStlOWt1?=
 =?utf-8?B?N05aSXJyQmtXSU96Rzc4dWM2WlhqTkd0MWR3QUxWOXFRQys0dm5kWDdIUUhk?=
 =?utf-8?B?UndubzQ0M2VKNVNNNEU4S1V4RkQ2MlBCQ09DdHZlY1VDRGVnVVVTTnliRFFa?=
 =?utf-8?B?UHY4cGlUQU5RL1lWb2dsblFYSng4M3ZRV0RzbHJlWDIvVnF0MUptdFphK0pY?=
 =?utf-8?B?andPSG9MMWVsejRUcGlza0pGZmdEdEpWbGp4bEhRQXdQUlMzZ2hCSmJQOWZR?=
 =?utf-8?B?ajlrZzdVb2N3aDJLc1JRbUM1RWpSelNVMW5Zc2RjZlhnQlJ1VFEzdjFSdm9h?=
 =?utf-8?B?dG9LU3FVNXBKdEtIdEpNUDYzR0ZERGdqK3Z6SzI5VUdrMFRCWjBHOWR3bmZN?=
 =?utf-8?B?Q1dIUXN4dmJVRkxLdCtHUHplbmtQU1FzdFoxdzM3L2JFbmtpY1FiOWpVZG9W?=
 =?utf-8?Q?mldFtT2J20QPISxzx9tyBnwMa6Pq+mOhvxAug=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: c-ware.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR05MB6807.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3464b1-ce57-4fbf-2504-08d955a93af0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 11:32:37.5400
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d387546-1437-4b89-846c-691d64a7e74d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sv/0Q9CgjezVU6cLFDSUKn364oggS81Q9DlsO9n04RcGVrsOqjeAdgWYkO5SgVNlc3coJrSys1JPOOT8nD7y+fMmEa1Kc+0V69NdjdGy5as=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6216
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpzbyBJIGd1ZXNzIHRoaXMgaXMgYW5vdGhlciBjYXNlIG9mICJJIHNob3VsZCBo
YXZlIHBvc2VkIG15IHF1ZXN0aW9uIGVhcmxpZXIsIHRoYW4gSSB3b3VsZCBoYXZlIGZvdW5kIHRo
ZSBzb2x0aW9uIG15c2VsZiIgOy0pDQoNClNvIGl0IHR1cm5zIG91dCB0aGF0Og0KDQoJCQkJZXJy
ID0gcHJvcGVydHlDb25uZWN0aW9uLlVwZGF0ZShjb25uZWN0aW9uU2V0dGluZ3MpDQoNCk9ubHkg
dXBkYXRlcyB0aGUgc2V0dGluZ3MsIGhvd2V2ZXIgaXQgZG9lc24ndCBhY3RpYXZhdGUgdGhlIGNo
YW5nZXMgKFRoaXMgaGFwcGVucyBvbiB0aGUgbmV4dCBib290KSAuLi4gQnV0IGlmIEkgYWxzbyBy
dW4gDQoNCgkJCQlfLCBlcnIgPSBubS5BY3RpdmF0ZUNvbm5lY3Rpb24ocHJvcGVydHlDb25uZWN0
aW9uLCBkZXZpY2UsIG5pbCkNCg0KVGhlIGNoYW5nZXMgc2VlbSB0byBiZSBhcHBsaWVkIGluc3Rh
bnRseSA6LSkNCg0KU28gSSBndWVzcyBJJ20gbm93IHNhZmUgYW5kIG1hbmFnZWQgdG8gZ2V0IHRo
ZSB0aGluZ3MgSSBuZWVkZWQgd29ya2luZy4NCg0KSSBoYWQgYSBsb29rIGFuZCBOZXR3b3JrTWFu
YWdlciBkb2Vzbid0IHNlZW0gdG8gYmUgcnVubmluZywgSSBjYW4gZmluZCBhIHByb2Nlc3Mgc3lz
dGVtZC1uZXR3b3JrZCBob3dldmVyLCBzbyBJIGd1ZXNzIGV2ZXJ5dGhpbmcgaXMgc2V0dXAgY29y
cmVjdGx5LiBJIGFsc28gdXNlZCB0aGUgbm1jbGkgdG8gZXhwZXJpbWVudC4NCg0KRG8gSSB1bmRl
cnN0YW5kIGl0IGNvcnJlY3RseSwgaXMgc3lzdGVtZC1uZXR3b3JrZCBhIGRpZmZlcmVudCBpbXBs
ZW1lbnRhdGlvbiBvZiB0aGUgc2FtZSBzZXJ2aWNlIGFzIE5ldHdvcmtNYW5hZ2VyPyBCZWNhdXNl
IEkgY2FuIHNlZSB0aGUgY29uZmlncyBiZWVpbmcgd3JpdHRlbiB0byAiL2V0Yy9OZXR3b3JrTWFu
YWdlci9zeXN0ZW0tY29ubmVjdGlvbnMiPw0KDQpDaHJpcw0KDQoNCg0KLS0tLS1VcnNwcsO8bmds
aWNoZSBOYWNocmljaHQtLS0tLQ0KVm9uOiBOaWNvbGFzIEpla2VyIDxuLmpla2VyQGRlbGlzeXMu
Y2g+IA0KR2VzZW5kZXQ6IE1vbnRhZywgMi4gQXVndXN0IDIwMjEgMTM6MTgNCkFuOiBDaHJpc3Rv
ZmVyIER1dHogPGNocmlzdG9mZXIuZHV0ekBjLXdhcmUuZGU+OyB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnDQpCZXRyZWZmOiBSZTogW3lvY3RvXSAoR28pIExpYnJhcnkgZm9yIGNvbmZpZ3Vy
aW5nIFlvY3RvIGJhc2VkIGJveGVzPw0KDQpPbiBNb24sIDIwMjEtMDgtMDIgYXQgMDk6MzUgKzAw
MDAsIENocmlzdG9mZXIgRHV0eiB3cm90ZToNCj4gSGkgYWxsLA0KPiANCj4gc28gSSBpbnZlc3Rl
ZCBxdWl0ZSBzb21lIHRpbWUgdG8gdXNpbmcgdGhlIE5ldHdvcmtNYW5hZ2VyIHRvIGNvbmZpZ3Vy
ZSANCj4gdGhlIG5ldHdvcmsgc2V0dGluZ3MuDQo+IEnigJltIHVzaW5nIGEgZ28gbGlicmFyeTog
Z2l0aHViLmNvbS9XaWZ4L2dvbmV0d29ya21hbmFnZXIgZm9yIHRoaXMuDQo+IE15IG5ldHdvcmsg
Y29uZmlndXJhdGlvbnMgbm93IGVuZCB1cCBpbiBhIGRpcmVjdG9yeSANCj4gL2V0Yy9OZXR3b3Jr
TWFuYWdlci9zeXN0ZW0tY29ubmVjdGlvbnMgKEkgY2FuIHNlZSBmaWxlcyB3aXRoIHRoZSBuYW1l
IA0KPiAie2Nvbm5lY3Rpb24taWR9Lm5tY29ubmVjdGlvbiINCj4gSG93ZXZlciB0aGUgY2hhbmdl
cyBhcmVuJ3QgYXBwbGllZC4gSWYgSSBydW46DQo+IA0KPiDCoMKgwqDCoCBzeXN0ZW1jdGwgcmVz
dGFydCBzeXN0ZW1kLW5ldHdvcmtkDQo+IA0KDQpzeXN0ZW1kLW5ldHdvcmtkIGFuZCBOZXR3b3Jr
TWFuYWdlciBhcmUgdHdvIGRpZmZlcmVudCB0aGluZ3MuIE1ha2Ugc3VyZSB0aGF0IHlvdSBvbmx5
IGhhdmUgb25lIG9mIHRoZW0gcnVubmluZyBhdCB0aGUgc2FtZSB0aW1lLg0KDQpBIHF1aWNrIHNv
bHV0aW9uIGlzIHRvIHVzZSBzeXN0ZW1kIHRvIGRpc2FibGUgdGhlIHN5c3RlbWQtbmV0d29ya2Qg
c2VydmljZSAoaWYgdGhhdCdzIG5vdCBhbHJlYWR5IHRoZSBjYXNlKS4gV2hhdCBJIGRpZCBhcyBh
IG1vcmUgbG9uZy0gdGVybSBzb2x1dGlvbiBpcyByZW1vdmluZyBzeXN0ZW1kLW5ldHdvcmtkIGlu
IG15IGRpc3Ryby5jb25mICh3b3JrcyBpbiBsb2NhbC5jb25mLCB0b28pOg0KDQpQQUNLQUdFQ09O
RklHX3JlbW92ZV9wbi1zeXN0ZW1kID0gIm5ldHdvcmtkIg0KDQo+IFRoZSBuZXR3b3JrIHNldHRp
bmdzIGRvbid0IGNoYW5nZSAoQm90aCBuZXR3b3JrIGRldmljZXMgd2VyZSBzZXQgdG8gDQo+IERI
Q1ApLiAoQnkgdGhlIHdheSDigKYgd2hlcmUgY2FuIEkgc2VlIHRoZSBkZWZhdWx0IGNvbmZpZ3Vy
YXRpb24/KQ0KPiANCg0KSSdtIGN1cnJlbnRseSB1c2luZyBubWNsaSB0byBzZXQgbXkgY29uZmln
dXJhdGlvbiBhbmQgYXBwbHkgaXQgd2l0aDoNCg0Kbm1jbGkgY29uIHVwIHtjb25uZWN0aW9uLWlk
fQ0KDQpUaGlzIHdvcmtzIGZvciBtZSBldmVuIGlmIHRoZSBjb25uZWN0aW9uIHN0YXR1cyBpcyBh
bHJlYWR5ICJ1cCIuIE5vdCBzdXJlIGlmIGl0IHdvcmtzIHdoZW4geW91IHJlcGxhY2UgdGhlIGNv
bmZpZ3VyYXRpb24gZmlsZSwgYnV0IHlvdSBtaWdodCBnaXZlIGl0IGEgdHJ5LiBPdGhlcndpc2Ug
cmVzdGFydGluZyBOZXR3b3JrTWFuYWdlciBzaG91bGQgd29yazoNCg0Kc3lzdGVtY3RsIHJlc3Rh
cnQgTmV0d29ya01hbmFnZXINCg0KPiBIb3dldmVyIGlmIEkgcmVib290IHRoZSBib3gsIEkgY2Fu
IHNlZSBteSBjaGFuZ2VzIGFwcGxpZWQgLi4uIHVudGlsIEkgDQo+IHJ1biB0aGUgInN5c3RlbWN0
bCByZXN0YXJ0IHN5c3RlbWQtbmV0d29ya2QiIGFnYWluLCBiZWNhdXNlIHRoZW4gaXQgDQo+IHN3
aXRjaGVzIGJhY2sgdG8gdGhlIGRoY3Agc2V0dGluZ3MuDQoNCkkgc3VzcGVjdCB0aGlzIGhhcHBl
bnMgYmVjYXVzZSBzeXN0ZW1kLW5ldHdvcmtkICJvdmVycmlkZXMiIHRoZSBpbnRlcmZhY2UgY29u
ZmlndXJhdGlvbiB0aGF0IHdhcyBzZXQgYnkgTmV0d29ya01hbmFnZXIuDQoNCj4gQW55IHRpcHMg
b24gaG93IEkgY2FuIGFwcGx5IG15IGNoYW5nZXMgd2l0aG91dCByZWJvb3Rpbmc/DQo+IMKgDQo+
IENocmlzDQo+IA0KPiANCj4gLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KPiBW
b246IE5pY29sYXMgSmVrZXIgPG4uamVrZXJAZGVsaXN5cy5jaD4NCj4gR2VzZW5kZXQ6IEZyZWl0
YWcsIDMwLiBKdWxpIDIwMjEgMTA6MDYNCj4gQW46IENocmlzdG9mZXIgRHV0eiA8Y2hyaXN0b2Zl
ci5kdXR6QGMtd2FyZS5kZT47IA0KPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IEJl
dHJlZmY6IFJlOiBbeW9jdG9dIChHbykgTGlicmFyeSBmb3IgY29uZmlndXJpbmcgWW9jdG8gYmFz
ZWQgYm94ZXM/DQo+IA0KPiBPbiBGcmksIDIwMjEtMDctMzAgYXQgMDc6NDMgKzAwMDAsIENocmlz
dG9mZXIgRHV0eiB3cm90ZToNCj4gPiBIaSBhbGwsDQo+ID4gwqANCj4gPiBJ4oCZbSB2ZXJ5IG5l
dyB0byB0aGUgWW9jdG8gd29ybGQuDQo+ID4gwqANCj4gPiBXZSBhcmUgY3VycmVudGx5IHdvcmtp
bmcgb24gbWlncmF0aW5nIGF3YXkgZnJvbSBPcGVuV1JUIGJhc2VkIGVkZ2UgDQo+ID4gZGV2aWNl
cyB0b3dhcmRzIG9uZXMgdGhhdCB3ZSBub3cgaGF2ZSBZb2N0byBidWlsZHMgZm9yLg0KPiA+IMKg
DQo+ID4gQWxsIHNlZW1zIHRvIGJlIHdvcmtpbmcgbmljZWx5IG9uIHRoZSB5b2N0byBzaWRlLg0K
PiA+IMKgDQo+ID4gT3VyIGFwcGxpY2F0aW9uIHVzZXMgYSBiYXNlbGluZSBjb25maWd1cmF0aW9u
IGluIG9yZGVyIHRvIGNvbm5lY3QgdG8gDQo+ID4gb3VyIGNsb3VkIHNlcnZpY2UgYW5kIHRoZXJl
IGl0IGZldGNoZXMgaXTigJlzIGNvbmZpZ3VyYXRpb24gKFdl4oCZdmUgZ290IA0KPiA+IGEgY2Vs
bHVsYXIgZmFsbGJhY2sgaWYgY29ubmVjdGl2aXR5IGRvZXNu4oCZdCB3b3JrIGF0IGFsbCkuDQo+
ID4gwqANCj4gPiBXaXRoIE9wZW5XUlQgdGhlcmUgd2FzIGEgdG9vbCBjYWxsZWQgVUNJIHdoaWNo
IGV2ZW4gaGFkIGEgR28gd3JhcHBlciANCj4gPiB3aGljaCB3ZSB1c2VkIHRvIGFwcGx5IHRoZSBj
b25maWd1cmF0aW9uIHRvIHRoZSBib3ggKHNldCBJUCANCj4gPiBhZGRyZXNzZXMsIGNvbm5lY3Qg
dG8gV2lGaSBuZXdvcmtzLCBjb25maWd1cmUgdGhlIHNlcmlhbCBwb3J0cyBldGMuKQ0KPiA+IMKg
DQo+ID4gSXMgdGhlcmUgc29tZSBlcXVpdmFsZW50IGluIHRoZSBZb2N0byB3b3JsZD8NCj4gPiDC
oA0KPiANCj4gVGhlIE9wZW5XUlQgd2lraSBoYXMgYSBzZWN0aW9uIG9uIHBvcnRpbmcgVUNJIHRv
IGRpZmZlcmVudCBsaW51eCANCj4gZGlzdHJpYnV0aW9ucyBbMV0sIGJ1dCB5b3UgY2FuIHByb2Jh
Ymx5IHNraXAgdGhhdCBjb21wbGV0ZWx5Lg0KPiBTZWFyY2hpbmcgZm9yIFVDSSBpbiB0aGUgcmVj
aXBlIGluZGV4IFsyXSB5aWVsZHMgYSByZXN1bHQgZnJvbSB0aGUgDQo+IG1ldGEtb3BlbndydCBb
M10gbGF5ZXIuIEkgd291bGQgc3RhcnQgd2l0aCBhZGRpbmcgdGhhdCBsYXllciBhbmQgdXNpbmcg
DQo+IHRoZSBVQ0kgcmVjaXBlIGZyb20gdGhlcmUuDQo+IA0KPiBbMV06IGh0dHBzOi8vb3Blbndy
dC5vcmcvZG9jcy90ZWNocmVmL3VjaSN1c2FnZV9vdXRzaWRlX29mX29wZW53cnQNCj4gWzJdOg0K
PiBodHRwczovL2xheWVycy5vcGVuZW1iZWRkZWQub3JnL2xheWVyaW5kZXgvYnJhbmNoL21hc3Rl
ci9yZWNpcGVzLz9xPXVjDQo+IGkNCj4gWzNdOiBodHRwczovL2dpdGh1Yi5jb20va3Jhai9tZXRh
LW9wZW53cnQNCj4gDQo+ID4gSSB3b3VsZCBsaWtlIHRvIGF2b2lkIGdlbmVyYXRpbmcgdGhlIGZp
bGUgY29udGVudCBpbiB0aGUgL2V0YyANCj4gPiBkaXJlY3RvcnkgYnkgaGFuZCBhbmQgZmlyaW5n
IOKAnnJlc3RhcnTigJwgY29tbWFuZHMgdG8gdGhlIGNvcnJlc3BvbmRpbmcgDQo+ID4gc2Vydmlj
ZXMsIGlmIHRoZXJlIGlzbuKAmXQgYSBiZXR0ZXIgd2F5Lg0KPiA+IMKgDQo+ID4gSGVscCBncmVh
dGx5IGFwcHJlY2lhdGVkIDotKQ0KPiA+IMKgDQo+ID4gQ2hyaXMNCj4gPiANCj4gDQo+IA0KPiAN
Cg0KDQo=
