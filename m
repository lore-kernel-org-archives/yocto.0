Return-Path: <pelle.windestam@skf.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A9E4C77B72
	for <webhook@archiver.kernel.org>; Thu, 20 Apr 2023 04:29:56 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.126])
 by mx.groups.io with SMTP id smtpd.web10.947.1681964992112760172
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 21:29:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@skfgroup.onmicrosoft.com header.s=selector1-skfgroup-onmicrosoft-com header.b=SDsE7vMo;
 spf=pass (domain: skf.com, ip: 40.107.22.126, mailfrom: pelle.windestam@skf.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GfjbdzUDDLDlayOa+Ec3xWS7tltOJCfZA/9iy6SoWlR5+0OYXToNOQcB8/9jsz+M9Ze+zgLQyyFaIQC90qeHRd56XjPWP9qRxxz4zOlCl/u1BlTuNUPWtH+yUk90mZrVhLdR+HJbpfVPOJsFbE4/ifMV+CZ5VtsGxmzLj50mEYnrFRM+tGSU5R4g4ypzIUutCCQYEUB4GKm1bsvj9MjK17yZmB+KjEeMWBBz50jySEFZ9r8LCuOD8hqI63I4w04nWArgsj5RsO+0EhHHy0uOQuAXcuAMs8Hc2VPSSFT2OKKx17XfpKFTomSejetnH6CKIKYvhyXRltycqYktDLdg+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fsiDZjJYJZZWR5Rc/eCA9tTPERZcP8fKc0811FD678g=;
 b=XXZQIMICcSoFzUubSnF578ziuAIsvtKrlGx3mmj7IYFg7aLNsBDGxKpW9q9ZbYnk4vBspbukOFivgDNnQMJNXd6tArxsiqWflBEo3fqGuKD4k1QBx2i6sTAtPBGvePvs6iUBV0C4v62H7O9ln/CigeLPiwvAR3GYSZtYom3+aQhD5j4R603fI1ifDnlOkQsNv32lP+ABvpt5ghpT4m/KIQ35VwiyjC9NhPJYpqsroLUZd0+HZj/RbNQtTxUpwDbeeo0QvZosP+6p2IVDv/Pm1l2nTef1C18MeyubG3zIOSXfRjHPytazZrmhM09+8PnC6ztfO1728cRWQGvBtWxS0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skf.com; dmarc=pass action=none header.from=skf.com; dkim=pass
 header.d=skf.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skfgroup.onmicrosoft.com; s=selector1-skfgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fsiDZjJYJZZWR5Rc/eCA9tTPERZcP8fKc0811FD678g=;
 b=SDsE7vMoLFEl5rIotprieZdr8nrR8EMzgEXu/TzGfyHikJTrTkuWQMvNKUpk2+u44MzqQ+5Bujtxg4mgSvpRabi1l49Mxv43o2s5ZatTLF2p9zyyHvu4NtNAhtXvy7Vsy7sz6V+G4lTpH9uMCbmH9D/FcXS6Ti6pH5BE9kU7S7U=
Received: from AM7PR09MB3893.eurprd09.prod.outlook.com (2603:10a6:20b:122::18)
 by DB8PR09MB3785.eurprd09.prod.outlook.com (2603:10a6:10:116::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 04:29:48 +0000
Received: from AM7PR09MB3893.eurprd09.prod.outlook.com
 ([fe80::a13e:51a8:3446:1a70]) by AM7PR09MB3893.eurprd09.prod.outlook.com
 ([fe80::a13e:51a8:3446:1a70%7]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 04:29:48 +0000
From: Pelle Windestam <pelle.windestam@skf.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Postinstall scriptet failure
Thread-Topic: [yocto] Postinstall scriptet failure
Thread-Index: AQHZcpIqoKtTNFs1wkSWoAZhSj13k68yRYGAgAAzFgCAADDYgIAA8ucA
Date: Thu, 20 Apr 2023 04:29:48 +0000
Message-ID: <a5c65a06-dd83-d044-6886-10642737f327@skf.com>
References: <f20700bd-ca0c-2908-7d44-f47ff5686d3d@skf.com>
 <b677b5c7-c296-27d9-ffc0-180ae2346681@skf.com>
 <d32fa5d2-fe99-a57a-37d8-9c66ebaad283@neuroeventlabs.com>
 <17575ACE951E231C.26280@lists.yoctoproject.org>
In-Reply-To: <17575ACE951E231C.26280@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=skf.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR09MB3893:EE_|DB8PR09MB3785:EE_
x-ms-office365-filtering-correlation-id: e993a5ca-755a-4732-5c62-08db4157e063
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6UZjGPmKN7l4r9AIkvNLu3wAXL7Y2QgaCX5eXNl8qI4gPtqnHItRW0N+pDtMSDfYSqoApQjYD4aEBsWGoB0fxiENIUWIdZoSnkSdajsPugJA3hGxyYU3wgpOEBhM4z8Lfmvy5BhlUgRpnSs2IWYdymJa6+4e0S42dFE1cc/I6wBrih22vW1AJbncFbFA9unFJfQpELO1VdNkLGYydeRIaj3TLhBOHWuM3B3g9CiWd4f9OwLWqPJcSr4jB6wO8A+R9eUJ7Vd6AG8Zg7In3r3Z+Ic/Dw+FkDO2TxuciDubrfTjFvanEYU1FyuH80vg9Z0Kzw65tsxBqRu1gSeFxQtxJmoJNPSsR1mbzJmhXB8MlmKEInTPcbFUzFlliBQPZ+l6W6y4k8qaDEO7NcJ5VI94MsIowgbQfsFXG/wlpvcadtEY+iu3bUWlyTJjnlsizx7BXFiVhC7kmXUOmkIIk1VzLdk0AArXUrEXTGqgWRbs7yL+4ExqQH60VvVqpMc5kKA6Fd8KxDhQEl9KxWZOZmyG4dCzAmC0r65dvCk1lGNAGqCyjZplofnPFxl/waFzGwhsZ1qMFp5COm3zl9/Mi+dNyjiO2F77k2PhPZNi9s6b5+GPCQm5JPVqxh/NRxe1eZtxjI+j+6y/K3AqZOYL4Bxt9A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR09MB3893.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199021)(478600001)(83380400001)(2616005)(36756003)(6506007)(6512007)(26005)(186003)(38070700005)(31696002)(86362001)(38100700002)(122000001)(15974865002)(71200400001)(6486002)(316002)(8936002)(8676002)(41300700001)(76116006)(91956017)(66946007)(66446008)(64756008)(66556008)(66476007)(6916009)(5660300002)(2906002)(44832011)(31686004)(66899021)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Um1oaWR6cnFOcEtHbjYyYlBiVmVXTDRvVWxQVFZzUVZJNlEzNHJiOFpCdStE?=
 =?utf-8?B?cFI1RlFwMXJNT203MWd1bXo2WW9kOHBKb3VRUmFwM211WWozQ05FQ1BOQWp0?=
 =?utf-8?B?VE00aWxPRkNVbkRLOFIxdlZTYlhJZ01FK2FaZ0FPL2g4ZjJVakhxUmkxTk9X?=
 =?utf-8?B?dkZxU01ucFJ3ZWdKMTF0WU5Sb3I3SUVEWE9FbDdIN0dxcXhzaXJVNmN3L3Jz?=
 =?utf-8?B?blRXRjRFSEthRU55VlluZ1RIUlUvTTFiMUtYRkZ5eXdJeTB4VjNxZitIU1Nn?=
 =?utf-8?B?WE1ERWQxcGZLTEdobitJZEhhMk8wa0NLbDFMcDJBcXZrUGhOeHhWaS9Pamxy?=
 =?utf-8?B?Yy9BMWJKUG1WSW5MclY1VEFOOWhsNU9SM3IyWlZZelVsdVk5QUh0QTZnSDQ3?=
 =?utf-8?B?djVhNkhNOGR5czFTdDBKS3NLWEhFM25nUk5pMnJxdjVVaStLVWdEeG85Qzla?=
 =?utf-8?B?UXJEaHVNaWF5VXlUZHdGa3djb3pMTWQrbnJVZFNaNUNzUDc4NTM5UXhhVjdF?=
 =?utf-8?B?NFZRNzJ4WVMyajVLM0kxK05CTkhHRFBXZmRQVVEzeUdZMVVCeERHcnY3cnR3?=
 =?utf-8?B?QXBJam5EQWcwUWxrdjZRUHFDckJRcWN5TThqb3daRzRQZk5vcDdsU3B0ZDlQ?=
 =?utf-8?B?ZGZYbW81K3RGRUJnMkg5VjRuamZOck1vdkFhYTJLcnhNakNaV0dRTHhUeld6?=
 =?utf-8?B?ZTluUjJ3SDRMZG5vNzRqbWVSbkJSVUJVcnhVa1RuWFJQamk3NmpJbWFkUHN5?=
 =?utf-8?B?bnlBNlU1TGJheHN0NE5abUR3M0t5eWVkTjhSR3plOG1SMVc1Yit0WHRkWnQv?=
 =?utf-8?B?SkNSWXN0cWhycTFXcGNrTE82cVFVWGNHMTdUbEI1T1JSNHE5QkxrSFJCS3Vi?=
 =?utf-8?B?MWZ1WHBmYnFZdUxTNE13ampubG1LL1JxbVFMNStZeUdEOW1DSHIxODRoalZE?=
 =?utf-8?B?Y251VjBJQ3Mvb3VIdndqTHQ3REYydkFGNytZTVRTcTNROGlnTEh5MHIvYThv?=
 =?utf-8?B?cGlCVGMzMnZaOGVZYUtETklUN2pLS0YrRVJUYzl2WllXOCttZXhOODRFeW16?=
 =?utf-8?B?N1N1QVNIQ1RUN1FVb2R2YXZncTE1bnhDWjEvU29kZksyQ3pLUmlYNFE5ZGY1?=
 =?utf-8?B?ZVlEVVc3dXo2WGtvK1dMWFN2b25nV2tEYjQzVnlYWjhXYTVURGxaY0RsVEF1?=
 =?utf-8?B?c2IyN244QnVuRzVOTHZXYmE2blJFTWxiZkdqMWVRNUxsc2dDV01RTGNwd2Rj?=
 =?utf-8?B?MkVuZjl3aUQ2cDNubWJwNVAwZmZ1TXhHVWZGaGpZeXRZL24wNlh6MVR6OWhz?=
 =?utf-8?B?SUNvV2lPWEFrOGwvNjVkdzVrdS9rM1dGUitWZEloOWw4Wmp1U0orSFo0Z0wv?=
 =?utf-8?B?YWwzTzRWUWRvNG1yTXR0Y0RXYW44YnN2Y2p1YkhVQ1U2Z3AreVloZGh3aHY2?=
 =?utf-8?B?QVh2UVRTUTJ1MkNWT3pnSjJSUjBjaUJ6VnU2RkxWTTdEckRscFlGK0VkMWg1?=
 =?utf-8?B?S3A2eTJmWS9aSzIxdkdWMm1HZ3MvQ25DU3FNWHJ5dHBzdS9qeWgxZ2htMzc4?=
 =?utf-8?B?UFIwd0tVY3M2ejZhRkp0YmlqMkhQZEx6ZlhoMmhpZWZzdWs3TmhKZWdOeDNm?=
 =?utf-8?B?UVFIYXRpMXFVblZPRnBYWGFyZm1GbUU2SkpFMi8wdnNjbVBvdVFJZWwwa1lr?=
 =?utf-8?B?Tm1tUFljM2JrMjhCdlZkeDBVYkRLcUhWMGxLNGdGSEFVeHlVQTY2RnRWTVhH?=
 =?utf-8?B?a2k5RkhlTVptQUlOdVlHeHY2M0tXK09ac0JQQTBoMWhyWGxwenFwakZCQ3BY?=
 =?utf-8?B?ajh3VkRKZWVZRE4rV05IaVhBVlh4QVVMQ3JmbVZwSUFLdnNaRTRRWDRlcVYy?=
 =?utf-8?B?VGZFV1pFdFNqMTNkcENPYWpEaFQ0VHduUzJTWlB3QUJRVWhrVXYyeWZNTnQ0?=
 =?utf-8?B?K09VU0RUck9EMVJLRDhqcTNGYkdQNWV2VXVJTlY4azhLYXhCWjJ0TGVhbGdO?=
 =?utf-8?B?dUJMVjJLQ25hbDJXN1VVSnZMd3ltOFdTays2NTV1TzhXUGc4eU03L28vT1My?=
 =?utf-8?B?V3RLOSt0M2grNWtiZ2lzcHp3OGdZQW10Vm8wYjMyNksrQlQ4U1czSFRMRUFn?=
 =?utf-8?B?SjVTSUs2N2syelp4amtYUUJzQi9hc2xjMzZDVU9UdHdab2NQWkRSOUk0bDdG?=
 =?utf-8?B?WVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1425F56D9D11E9498CFB46F7C32C8437@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: SKF.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR09MB3893.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e993a5ca-755a-4732-5c62-08db4157e063
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 04:29:48.5012
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 41875f2b-33e8-4670-92a8-f643afbb243a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oRUIBal+2fxghZmMpUz10UtKjieVCe6SBi01bqoDZ4JYCgUiq+x/Lw/4o6sylI6xJ1kvQsERy3szj++WkeYC7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR09MB3785
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 04:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59740

PiBPbmUgaW50ZXJlc3RpbmcgZGlzY292ZXJ5IGZyb20gdGhlIGJ1aWxkIGxvZyB3aGVuIGNvbXBh
cmluZyB0byB0aGUNCj4gd29ya2luZyBhcHBsaWNhdGlvbiBzaG93cyB0aGF0IHRoZSB3b3JraW5n
IGFwcGxpY2F0aW9uIGNyZWF0ZXMgYSBsaW5rIHRvDQo+IHRoZSBzeXN0ZW1kIHNlcnZpY2UsIHdo
aWxlIHRoZSBub24td29ya2luZyBhcHBsaWNhdGlvbiBkb2VzIG5vdDoNCj4NCj4gSW5zdGFsbGlu
ZyBCIG9uIHJvb3QNCj4gRG93bmxvYWRpbmcgZmlsZTpbLi4uXS9CLmlway4NCj4gQ29uZmlndXJp
bmcgQi4NCj4gQi5wb3N0aW5zdCByZXR1cm5lZCAxLCBtYXJraW5nIGFzIHVucGFja2VkIG9ubHks
IGNvbmZpZ3VyYXRpb24gcmVxdWlyZWQNCj4gb24gdGFyZ2V0Lg0KPiBXQVJOSU5HOiBCLnBvc3Rp
bnN0IHJldHVybmVkIDEsIG1hcmtpbmcgYXMgdW5wYWNrZWQgb25seSwgY29uZmlndXJhdGlvbg0K
PiByZXF1aXJlZCBvbiB0YXJnZXQuDQo+DQo+IEluc3RhbGxpbmcgQSBvbiByb290DQo+IERvd25s
b2FkaW5nIGZpbGU6Wy4uXS9BLmlway4NCj4gbG4gLXMgL2xpYi9zeXN0ZW1kL3N5c3RlbS9BLnNl
cnZpY2UNCj4gWy4uXS9yb290ZnMvZXRjL3N5c3RlbWQvc3lzdGVtL2dhdGV3YXkudGFyZ2V0LnJl
cXVpcmVzL0Euc2VydmljZQ0KPiBDb25maWd1cmluZyBBLg0KPg0KPiBJIGd1ZXNzIHRoYXQgdGhl
IG1pc3NpbmcgbGluayBpcyB3aGF0IGNhdXNlcw0KPg0KPiBzeXN0ZW1jdGwgJHtPUFRTfSBlbmFi
bGUgIiRzZXJ2aWNlIg0KPg0KPiBpbiB0aGUgcG9zdGluc3RhbGwgc2NyaXB0bGV0IHRvIGZhaWwu
IEdpdmVuIHRoYXQgdGhlc2UgYXBwbGljYXRpb25zIGhhdmUNCj4gaWRlbnRpY2FsIGJpdGJha2Ug
cmVjaXBlcyBleGNlcHQgZm9yIHRoZSBuYW1lcywgSSBkbyBub3QgdW5kZXJzdGFuZCB3aHkNCj4g
dGhpcyBpcyBoYXBwZW5pbmcuDQoNCldlbGwsIHRoaXMgZXJyb3IgcHJvdmVkIG5vdCB0byBiZSBz
byBteXN0ZXJpb3VzIGFmdGVyIGFsbC4gV2hlbiBjb3B5aW5nDQpzdHVmZiBmcm9tIEEgdG8gQiBJ
IHNvbWVob3cgbWFuYWdlZCB0byBkcm9wIHRoZSBpbml0aWFsICdbJy1jaGFyYWN0ZXIgaW4NCnRo
ZSBbVW5pdF0gc2VjdGlvbiBvZiBhcHBsaWNhdGlvbiBCOnMgLnNlcnZpY2UtZmlsZSBzbyBpdHMg
c3ludGF4IGJlY2FtZQ0KaW52YWxpZCwgdGh1cyBmYWlsaW5nIHRvIGJlIGluc3RhbGxlZC4NClRo
ZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaW4gdGhpcyBlbWFpbCBpcyBpbnRlbmRlZCBzb2xlbHkg
Zm9yIHRoZSB1c2Ugb2YgdGhlIGluZGl2aWR1YWwgb3IgZW50aXR5IHRvIHdob20gaXQgaXMgYWRk
cmVzc2VkIGFuZCBtYXkgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IGlzIGNvbmZpZGVudGlhbC4g
UGxlYXNlIGRlbGV0ZSBhbmQgbm90aWZ5IHRoZSBzZW5kZXIgaWYgcmVjZWl2ZWQgaW4gZXJyb3Iu
IFNLRiBkb2VzIG5vdCBhY2NlcHQgbGlhYmlsaXR5IGZvciBhbnkgZGFtYWdlIGFyaXNpbmcgZnJv
bSB0aGlzIGVtYWlsLg0KDQpGb3IgaW5mb3JtYXRpb24gb24gU0tG4oCZcyBwcm9jZXNzaW5nIG9m
IHlvdXIgcGVyc29uYWwgZGF0YSwgcGxlYXNlIHZpc2l0IFNLRuKAmXMgUHJpdmFjeSBQb2xpY3kg
YXZhaWxhYmxlIHZpYSB3d3cuc2tmLmNvbTxodHRwczovL3d3dy5za2YuY29tL3VzL2Zvb3Rlci9w
cml2YWN5LXBvbGljeT4uDQo=

