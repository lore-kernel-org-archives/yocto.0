Return-Path: <shmuel.h@siklu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F765C433EF
	for <webhook@archiver.kernel.org>; Wed, 22 Dec 2021 18:58:01 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.102])
 by mx.groups.io with SMTP id smtpd.web08.23238.1640199479326939612
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Dec 2021 10:58:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siklu.com header.s=selector1 header.b=rBJQH2bI;
 spf=pass (domain: siklu.com, ip: 40.107.20.102, mailfrom: shmuel.h@siklu.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k80NyQoeLQ0y72jxtInT/k7oQt69s/9mrQn+vewMey8szSjnyNRQAYIwYDoxyyN+j5njfJyPI6hj9sUp9i0OK0Qs4KVdSJpZ6cZXEU6AnYlqaFyoh788VyB8I00EQXjJvTYyHHvqg5a0SfOikh2jL5uqtZlrR0wGDC1L/UOegPGXfEz77lzE9mI++rvhRg2/TtTSRwN+Jyv6w2zphe/FHJCsJlvFFkZsVJoGH/ZPrrqLE2/Dzyx8yRCz8aTWbTzs4h/tL3TERUrUbnjWE3Uyc6b4xVQx7XVlkRDBIiciFhh129Dy+PgPzd1zrbDPfhdkAp9lYGiy5L9zBu/M7cQfew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RUodCP41xsOxsKV5YwU8dUI9a24kz5lPalQ/BAOBxY0=;
 b=KPkp7vIM6j+SR6KdytopHGWViFHBrxyFlDVy04OmicOD7GLhpnB9cVpqqVNjFKY22Lh1p1DM0/rYkB/x8uUj4joqQliDkxZHrDMItjoSV8pgylvze3HeLVPnt8N25v94y4QPs/ur9OU5HwuaNI2UEWx+zrDqnPZ8vgeom2YB7xrxIzUYoAIkT+S387GFHo9ZC8pQjImvWGelYhqUp93b+0WDry4Y5QG2wbzyoV9npzLy0ayc5hNV9v55UR8xNq3wpDbBuk2PyMwH9CAlXo91pqe4mHXL54olVP0NPOGBLaE42bzdvd5VYpNF7ibh4RXFXw5swmaWNJ9AiuRMFxIHvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siklu.com; dmarc=pass action=none header.from=siklu.com;
 dkim=pass header.d=siklu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siklu.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RUodCP41xsOxsKV5YwU8dUI9a24kz5lPalQ/BAOBxY0=;
 b=rBJQH2bI3PMJtt3XnWfu7KdLISyOVdnW9tB5F2Hk3YklElsc1BA4ihhocH5Q3ya4KIea6Z/LwzxI1UrUIsKubkdefhQz6a+fkdPgnSkA1tJBazWljNFAphxPM5AxzaKmf5W0DOVqpOSt4/p4LNhC6E8ZM6lYZcNspk1mfu8aqGY=
Received: from VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::17) by VI1PR0102MB2735.eurprd01.prod.exchangelabs.com
 (2603:10a6:802:6::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Wed, 22 Dec
 2021 18:57:56 +0000
Received: from VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
 ([fe80::2dfa:27a7:4c5b:df37]) by
 VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
 ([fe80::2dfa:27a7:4c5b:df37%2]) with mapi id 15.20.4801.023; Wed, 22 Dec 2021
 18:57:56 +0000
From: Shmuel Hazan <shmuel.h@siklu.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Bitbake: checksums handling for local directories
Thread-Topic: [yocto] Bitbake: checksums handling for local directories
Thread-Index: AQHX91srIdJJ9wX5skyPPvk/8kRs+aw+z8+AgAANBYA=
Date: Wed, 22 Dec 2021 18:57:56 +0000
Message-ID: <cb94007752506c9999c3aefa3cafdd85c59afc95.camel@siklu.com>
References: 
 <VI1PR0102MB3117F544CA1EB835757B4A91917D9@VI1PR0102MB3117.eurprd01.prod.exchangelabs.com>
	 <f9956bd115ac0ed26d7ef966e89bd8dc1d30a667.camel@linuxfoundation.org>
In-Reply-To: 
 <f9956bd115ac0ed26d7ef966e89bd8dc1d30a667.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siklu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5cca765-92f5-4bec-5ba6-08d9c57cf754
x-ms-traffictypediagnostic: VI1PR0102MB2735:EE_
x-microsoft-antispam-prvs: 
 <VI1PR0102MB2735D0CA07892BDFD32F75F4917D9@VI1PR0102MB2735.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3d8SwOAWUN7n0K1FZ0n7ITwfy679pZzcDieDMEmb5IiFpxkOjQuDQC37cmBJd263eIVJCkEvv/IoPkK16weR/20yrRkEPJ3r57Yk9a/0id83w+8cnAw7ZlzW9efR1vqIhUk//lJyAbBUtNiy8jtBqlaJvsiB+tLZlQ17f2ad5qWlyDCug0KoABBKnI76Ykv244AL6yBDr9D3EX3Xveu4PfAg/9obrbhme+ioM6w8Pp4V0B89Jz3ZAs5ENl7C3L+WXKeeUKL5VLLky6SH9mhyen3Xfi5484jm9I5bHzQcvemqWbyg4QmYAH4YA3dKk9lDeoZiHa84rqYTvW2PZT+tZ/ty7IPk87WP2CLQ2j2lgFQHtUnELOvMhHrfyx7lrhKo/m12X8F3iEEAOmsfWEWiw6DroXYSAqjFPOecjwZ++EIVp0AlduAVKldUmKxjiP6Z/FzR0gmg08zSnOPfYkwbCJZygQItQ2H5hhcYZMeLoT/LQ0kG/srb1+LgM3MF2Ta5k8DGv2ZMzj9KHBA2e144GZyiz9pKShdnlX3xEr/FB+psAudd4aXGVkWs3R3wR+6lS0X4nl7LGTpLQjDhOnV2WL9u3YjrYc0yufKv4TB/oSQAYE6n0JyASOFIrMFUjmN6Gz0N2a5vS4ElMFRx3Md9QjdA5cB2m7+DsK9SSk0ak+VFJRl5SttXNcmuCp7HdrGVmluXhabgrBqyCWPVXmf5HQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3117.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(110136005)(6506007)(26005)(86362001)(8936002)(316002)(71200400001)(38070700005)(38100700002)(122000001)(76116006)(2906002)(66446008)(2616005)(83380400001)(6486002)(66946007)(508600001)(8676002)(4001150100001)(66556008)(6512007)(186003)(91956017)(66476007)(5660300002)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Y3JKM0ZQOUlJMXlpVlZKZk82T2RyRGF1RmpPbGlvWUMvWFRLTTJwUEdndk8y?=
 =?utf-8?B?TzJtWXdFekVXRmo3aXNpRG16ZWp3WG5TZ04xeDR3aHlpTXYrMXB6eHdrcEh6?=
 =?utf-8?B?MHgxcElqYVlWSEltVUcxSnloeWVsVnI5VWxUZUIvYURtcTRqWmFmeGFPNk1Z?=
 =?utf-8?B?TVcreDdQYkcydlFzb09QcVUybkZDdEc1UXl1eVVqdFJvTmxUYXJKWW54Yndi?=
 =?utf-8?B?UTlSQ1B4MjFQNzFDWTdva0FzZ1MvTjJRdW92MldZZUV1bFd3dS9nMXBHMWhK?=
 =?utf-8?B?ZGFjM1F5TjVOUXJ0Sk50QmgwNlo1SWd5WFA4M2prU1ExSlZZa1EvWW1DeEJ4?=
 =?utf-8?B?VWF5K1ZTcXpHbXJ4ak5UcGwvUzZmNG5ueGQzalNzM05hdUR2bFpXZUlOQlFV?=
 =?utf-8?B?bWVzSkRBR1pBRTUyWUdjajV5THV5YzdOWStucjRneFlaekpvWDhSUEdSMHNr?=
 =?utf-8?B?RHRJeEE2WjVwK2xMRGptMHl3YnV5dzlXYURwUDJHV3gzNlk5Skh6NDg3UnYr?=
 =?utf-8?B?dzM3TSthQy9OQkVjWVZSK2xqOUp6WjVmckF5TUxmck0ySFRLYzFET0lTdm4r?=
 =?utf-8?B?ZUtJcnB3UHpyQTB2QkUwY2RxdXZGSHpkYUtmR1ZBS1FkQ1hZMXU0VmdqU2ls?=
 =?utf-8?B?RWRxTTc1ZGl5aTk5UzJSdWRtVFMwQm9RSUNrY3VWb3c1NXM2blhkWTEzM2RQ?=
 =?utf-8?B?eUw1WlgrT1BNd25KTHFmNHk2WEVFNzlHbHRua2lsc1BmMURFUzdFTDlPQ2Rx?=
 =?utf-8?B?UTE3QThqSFRBWHBQNjE1ZUtjazlzbFIxODJwc0NZMWpUT2pwN0dGL0FoVG0y?=
 =?utf-8?B?eXRXWXc3ZmM5U1lacnhQUXdSKzJFQ2tLeSthN3IrcmVlNEsvZ25ZMHVYSnZC?=
 =?utf-8?B?bFdGYzZzNmRDUS9tcXE4SkZJL2VzQkxFLytzUktQVVUxOEIxYnZxMjYrZlVR?=
 =?utf-8?B?Vi9ZcUlFNGgyb1NMOWMwbyt3Sno4K2dIaFUydHE5eTZwdmF6QnVYTU9oZi9v?=
 =?utf-8?B?NmFjdHl6WWErWE5hYklPMWRFazJDTmhGb0k3U2UyMkZ6SFNlNlJXR2dtNHFG?=
 =?utf-8?B?bEo3cnRCS0dGZ1VFRGlpMkwwenQ1SnRjR0MzODFlb3VsdVlQdnlNcHlnOFlI?=
 =?utf-8?B?eVhGV296bXAzdndEK3pxYjByYXBsNDdyek1qNDZXSk9OY05iNTFPZC9nN3dC?=
 =?utf-8?B?blNCZGdPOENmNXVSVk9NdzVyT2J1VjBLOWZDSm56SENGMGdzT3hzN1licEZH?=
 =?utf-8?B?L1lRNG40N3RFYTMvZWZvZ3cvVXFGRnFpQmtVY0k3c09nWk1KWElXcVJvekh4?=
 =?utf-8?B?TnYxV1Z0K2VQYlVnUHBHYnB1U2IzeWswL1AyeDNPTUw5akhWUHV3TGJpTFNj?=
 =?utf-8?B?L3JCa3RTS2pHNnpjbnNoOEdHcDRnTEt0eTFCMGlyR1R0cVF2MERjZEM5eTNO?=
 =?utf-8?B?R1c1TEpYaEVST0VzYVNwaGhVQmJWVk9BRFR2TEpUVWMwWE9YS0Z6aVVYd2hy?=
 =?utf-8?B?MWVBT3liRWN1bXM2aWw5S0dzbnl5V1pzRE80a0J2ZjEvcTRrS0Q5QmZUOXgx?=
 =?utf-8?B?TkNUZ21xUzhtUXduU1BEQWxJT09DNUF0bll5UVF3RURieWMvVlhQcFdqaWNG?=
 =?utf-8?B?Nm9TNTh5bTAzQWtORUlIT3k3N20vSTRqVUZDSTJsc3hHZ2JYU3o3OFVGRWts?=
 =?utf-8?B?eGhPOE5MTHd3RmxLNzI5ZkZVdmNRRGJ4UGU1djRCTDVUWlpmc3NtSlAyeUpH?=
 =?utf-8?B?cmcvMnVKT3dRajNSUXpEY1l2OUtjemhaR0x0RUtpYWJMZjJiWisxNERwR1d4?=
 =?utf-8?B?V0ZranR4SFVGRnhKZHRKbHZwQ0sxaDJEYTlqZ1owVzF3RUdLb3pXanFsYXJo?=
 =?utf-8?B?YXlmd2JKdjdmYWFadWtRTlVuQytXYXZWTGtRSlZsK0MvaFpValZtcUFvR2lC?=
 =?utf-8?B?eVRxSlV5dk5pWlZlZGIrajM4WUxrV1VBRk52b1VWOGRlYzlKWkpHQnk1SHR4?=
 =?utf-8?B?aGNJZnR6WCtEQnZ5b1lINFJCWTJldUhQS1ArMkQ4S2JEL3hKQVRyS05BcWUw?=
 =?utf-8?B?azRwM3NQSldhL080a2FCZGcwSjNnSi9yN2J5eXZRTnMxSHBHdFIrOWNDQ2RQ?=
 =?utf-8?B?ZGN5aGFJMkszOG1GVG5yeWJYT3ZMOS8yZXBWalAzSmJ0WTR1N2JoVlJ3blJR?=
 =?utf-8?Q?suDoMy58/Nh5MVtiE+1/sJc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E0F00D19D6EDB44399480C1A6DFDEEFC@eurprd01.prod.exchangelabs.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siklu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 VI1PR0102MB3117.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d5cca765-92f5-4bec-5ba6-08d9c57cf754
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 18:57:56.4503
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5841c751-3c9b-43ec-9fa0-b99dbfc9c988
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 VKVzxvDAtgiUXllTDpxK0y/odIkt2VdjG5uLx4vP3VFK12KFvOdevLJlud+/h+5JYWalkZbFD6bTRJwn31FSPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0102MB2735
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Dec 2021 18:58:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55645

T24gV2VkLCAyMDIxLTEyLTIyIGF0IDE4OjEwICswMDAwLCBSaWNoYXJkIFB1cmRpZSB3cm90ZToN
Cj4gT24gV2VkLCAyMDIxLTEyLTIyIGF0IDE3OjU0ICswMDAwLCBTaG11ZWwgSGF6YW4gd3JvdGU6
DQo+ID4gSSBub3RpY2VkIGEgc3RyYW5nZSBiZWhhdmlvciBvZiBiaXRiYWtlLCBhbmQgSSBhbSBu
b3Qgc3VyZSB3aGV0aGVyDQo+ID4gaXQgaXMgYQ0KPiA+IGJ1ZzoNCj4gPiANCj4gPiBMZXQgc2F5
IHRoYXQgSSBoYXZlIGEgc2ltcGxlIHJlY2lwZSB0aGF0IHRha2VzIHRoZSBkaXJlY3RvcnkNCj4g
PiBgVEhJU0RJUi9maWxlcy9BYA0KPiA+IGFuZCBpbnN0YWxsIGFsbCB0aGUgZmlsZXMgaW5zaWRl
IG9mIGl0Og0KPiA+IA0KPiA+IC4uLg0KPiA+IFNSQ19VUkkgPSAiZmlsZTovL0EvIsKgDQo+ID4g
UyA9ICIke1dPUktESVJ9L0EiDQo+ID4gZG9faW5zdGFsbCgpIHsNCj4gPiDCoCDCoCBpbnN0YWxs
IC1tIDY0NCAke1N9LyogJHtEfQ0KPiA+IH0NCj4gPiAuLi4NCj4gPiANCj4gPiBMZXQgc2F5IHRo
YXQgSSBoYXZlIG9uZSBmaWxlIGNhbGxlZCAibXlfZmlsZSIgaW5zaWRlIG9mIHRoYXQNCj4gPiBk
aXJlY3RvcnkuIA0KPiA+IA0KPiA+IEl0IHdpbGwgd29yayBncmVhdCwgYW5kIEkgd2lsbCBnZXQg
YSBwYWNrYWdlIHdpdGggIi9teWZpbGUiIC0tDQo+ID4gdW50aWwgSSB3aWxsDQo+ID4gcmVuYW1l
IGEgZmlsZSB0byAiL215ZmlsZTEiIGluIHRoZSBkaXJlY3RvcnkuIFNpbmNlIHRoZSBmaWxlDQo+
ID4gY29udGVudCBzdGF5ZWQNCj4gPiB0aGUgc2FtZSwgZG9fZmV0Y2ggd29uJ3QgYmUgdHJpZ2dl
cmVkIGFuZCBhcyBhIHJlc3VsdCwgdGhlIHBhY2thZ2UNCj4gPiB3aWxsIHN0YXkNCj4gPiB0aGUg
c2FtZSBhbmQgaGF2ZSAiL215ZmlsZSIuIA0KPiA+IA0KPiA+IFRoZSBvbmx5IHByb3BlciB3YXkg
dG8gd29ya2Fyb3VuZCBpdCB3YXMgdG8gbWFyayB0aGlzIHJlY2lwZSdzDQo+ID4gZG9fZmV0Y2gg
YXMNCj4gPiBub3N0YW1wOg0KPiA+IA0KPiA+IGRvX2ZldGNoW25vc3RhbXBdID0gIjEiIA0KPiA+
IA0KPiA+IEkgYW0gY3VycmVudGx5IHdvcmtpbmcgd2l0aCBiaXRiYWtlIDEuNDYuMC4gDQo+ID4g
DQo+ID4gUXVlc3Rpb25zOg0KPiA+IDEuIElzIHRoaXMgYSBrbm93biBpc3N1ZT8NCj4gPiAyLiBJ
IGNvdWxkIG5vdCBmaW5kIGFueSByZWZlcmVuY2UgdG8gYSBzaW1pbGFyIGlzc3VlIC8gYSByZWNl
bnQNCj4gPiBjaGFuZ2UgdGhhdA0KPiA+IGNvdWxkIGhhdmUgY2F1c2VkIHRoZSBpc3N1ZSwgYW0g
SSBkb2luZyBzb21ldGhpbmcgd3JvbmcgaGVyZT8NCj4gDQo+IEknbSBwcmV0dHkgc3VyZSB3ZSBm
aXhlZCBidWdzIGxpa2UgdGhhdCBpbiBtb3JlIHJlY2VudCB2ZXJzaW9ucy4NCj4gDQoNClRoYW5r
cyHCoA0KDQpGb3IgYSByZWZlcmVuY2UsIGI0OTc1ZDJlY2Y2MTVhYzRjMjQwODA4ZmJjNWEzZjg3
OWE5Mzg0NmINCihmZXRjaDIvY2hlY2tzdW0vc2lnZ2VuOiBGaXggdGFza2hhc2hlcyBub3QgdHJh
Y2tpbmcgZmlsZSBkaXJlY3RvcmllcykNCmZyb20gMn4gbW9udGhzIGFnbyBzZWVtcyB0byBzb2x2
ZSB0aGF0IGlzc3VlLiANCg0KSSBzZWUgdGhhdCB0aGUgY2hlY2tzdW0gY29kZSB3YXMgbm90IGNo
YW5nZWQgZm9yIGEgbG9uZyB0aW1lLCBpcyB0aGVyZQ0KYSBjaGFuY2UgdGhhdCBzb21lb25lIHdv
dWxkIGFjY2VwdCBhIGJhY2twb3J0IG9mIHRoaXMgY29tbWl0IHRvDQpEdW5mZWxsLzEuNDY/IA0K
DQo+IENoZWVycywNCj4gDQo+IFJpY2hhcmQNCj4gDQoNCg==

