Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.134])
 by mx.groups.io with SMTP id smtpd.web08.4043.1625049710437886676
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 03:41:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vaillantgroup.onmicrosoft.com header.s=selector2-vaillantgroup-onmicrosoft-com header.b=TZAn81Ty;
 spf=pass (domain: vaillant-group.com, ip: 40.107.1.134, mailfrom: yann.cardaillac@vaillant-group.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AzTWLzUNOpQQShx5nvtEQ3RUG48Hk5/7ZQiGCaTg/emguEQBviTxzwwXxjNAVgVrvex/fxIDKNvXEeoVvdE73KCQuRYYl0KhJUTPSOpg0gxO9RwjVjkjSshZC4d/sP0ETm8ydnHTG8OlL80jTrNtKNOua2vm1G0hgqzYWMpAgHEj/EKQAiWzIJiJlCVSu054UAmGOX1b67YtxhcsKj5ILINT2JJJsU1+dgCHv3T8HAcJv5biBwS2Fy6yNeRC0fnC9jUZ2YK+mINj5vvPWYdwh9COuBbIB6aeEHavoOAwaW6yeEDR0AvxdLGPPpqT1d1hndK7NxnFqv0bApeQ7kfM8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOktsEIDzjyFxTA9TMWPwr5gkHeS+e0X825sxgvMKLo=;
 b=C5Skvs1/QaEqgnErvZa3577slkmYtPmBgcqVnE+BNMtTrZQxRoLM2SSlAfS7vbVjJvy4ICN8buRfvCEZjIsFjtc3uGTR+lhfc6DMswwCM6spkENr5ULJPL8sUM5MTcKW8q5MomZ8WAY6qf1F5pq9w36V6qeZ8//Fy/id8xrH80g30+kgwX4AWRl/5+uaAR65+CQGxzEG/ZBrY+V5dUUMwhvcZYwHxSjqdswBwGbEmXp/ntgtItIMqy34zoj0xD4arPznUNXbdY5tPeaxuRMWrauDmDLEtKVNYrxoRr3PXtWTuEGts+wXbXTL2HLV3QjNA9afgXX0Vzd54AqVcqPZrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaillant-group.com; dmarc=pass action=none
 header.from=vaillant-group.com; dkim=pass header.d=vaillant-group.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vaillantgroup.onmicrosoft.com; s=selector2-vaillantgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOktsEIDzjyFxTA9TMWPwr5gkHeS+e0X825sxgvMKLo=;
 b=TZAn81TyHlGoAMsc/zONEn3kfd/y+JrMpUxHbSH+FOmJUsj5aCGrUQB7MU9NxXHmbuP1uL7MyoEGDpKNKegsIBHQpQjy9fi9uqRn0ujJjHciDCTgDym4Qm3UojBYric5Yl6Be59avtwikcVGAaNj1PYMdWl/0CAB3ET3lhz8teax0eBDkqmFMP0baholZDZP/UjOMZPpul1jFkPk0WnjgGqX/diCZhkdtLE8CYFDLSlhecsScT6DA4uscHQ9TSPQ979/SNr8Lgv3XS8Hx0bK6bOuBAQhJbTl1KiGJIYdwDdIBmOk4eS5LWf9fR788JlmC8UI8VurNanZipKW+e5Lww==
Received: from AM9PR09MB4705.eurprd09.prod.outlook.com (2603:10a6:20b:284::17)
 by AM0PR09MB4162.eurprd09.prod.outlook.com (2603:10a6:208:199::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Wed, 30 Jun
 2021 10:41:48 +0000
Received: from AM9PR09MB4705.eurprd09.prod.outlook.com
 ([fe80::580b:a51:af21:3fe8]) by AM9PR09MB4705.eurprd09.prod.outlook.com
 ([fe80::580b:a51:af21:3fe8%6]) with mapi id 15.20.4242.023; Wed, 30 Jun 2021
 10:41:48 +0000
From: "Cardaillac, Yann" <yann.cardaillac@vaillant-group.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [Yocto] Launching script at the very end of the image process
Thread-Topic: [Yocto] Launching script at the very end of the image process
Thread-Index: AddtiZkb4BQgDuTeSHiJkRltkuWo0wAEPi+AAAAuyyA=
Date: Wed, 30 Jun 2021 10:41:48 +0000
Message-ID: 
 <AM9PR09MB4705D0D992522855488FB38CCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
References: 
 <AM9PR09MB4705620C5A070E882117D91DCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
 <21ec4938ff2819f413d5467e5100139853066e51.camel@linuxfoundation.org>
In-Reply-To: 
 <21ec4938ff2819f413d5467e5100139853066e51.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=vaillant-group.com;
x-originating-ip: [165.225.76.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aec170c9-ba91-4121-30a5-08d93bb3a9b2
x-ms-traffictypediagnostic: AM0PR09MB4162:
x-microsoft-antispam-prvs: 
 <AM0PR09MB416218E50F3ECFB7D9025C3BCA019@AM0PR09MB4162.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZOu78eb2h1HbBLHhr3VNadn77T3P3TxLllBG0uB/d+uacTI/myvJ+PAHhQEA208err/TXmjEtXVgEsjRqiQc1oZhqjugXCxH4kX5Qo+0gRpMOl4pB9FbsBu4vdAQwmgfv79/XMUJjQ8OvlM+2DXQVwk88NbTTnG2SJzhS2PA7G8iaFU+8YdquExHsyJt+Rp+8m6BChTJ4JW85qBtrh47Qk5k8uEzh627M/ozQGqkWBntQGuUkyPoDfnseMCZcMAid8UsXbgfV7CVv0IlLSgxEOBNZ4sQT/G+s/Ye+2UYnos4gkjMciNVNKUUgf02Q6JXvZQeAmsAf0Rv7DJzxoE7Z8a1FXVgAmetSQRV01mXa8JeoAn1E9+fevyDk2WS2G06hhhkmID2ikfP/t5N5P8ulkuAFfTN9bH3WU/fcqHaTlXQ8anrKoU8Os6+3mvSa1LFnuTC2MHf1spuJh9VLuATLnoAssbOWCXtccocvso/ZHyhXRIxykEvjBwV9AWPQW4nSAAy70K/6jlYMVr08SndRoUehAc5v53BIU/XzhBGbPlIrmgPd6346PjqFHEDj45MEG3ADH6ixtGYHnHshana9C8CVpo1u++qf+9qHgbozrM9ZdQ3gkMv2IgEDdEZQYNVHVO9WBiDfPD1ZtMyrPTz9ap8qq0KXIxfYYXxa7JplRREdZ2zRalHQry/jgcAvSKtZl6v/SDCgqzpmX9AXuq+H8mG6wbeNRxgljuX4/ZDfzjSIH64sOi+swPg1F4mMiWJl3W7R9QwDgaIK4sajLr6Gg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR09MB4705.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(2906002)(122000001)(86362001)(8936002)(38100700002)(33656002)(52536014)(66446008)(66556008)(478600001)(66476007)(64756008)(6506007)(5660300002)(55016002)(76116006)(8676002)(9686003)(71200400001)(316002)(26005)(55236004)(7696005)(186003)(110136005)(966005)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TW1sVVVyME1FZ040OE82OGI0aGUyV3EvR3I2TFNJZ0pWQnR1MmVXV2ErQ1Na?=
 =?utf-8?B?WlZjY3Qyc3MwUnU1WC9qcU9XVHI2TkZ2Rm5IQms1Wlg1RTdjWGRpTUJHV2Vp?=
 =?utf-8?B?RDh4K3o5QkZnbFdRYWtUNWNXdTN1VWpvUmdwb016MnZKSFBDTWRhS3ZIbHVZ?=
 =?utf-8?B?ZEVLTVpHeTljZHZ6Ymd0bmltdnpCR3BtblkxUDVBeXd0VnFRbUxWQmk3K2Vx?=
 =?utf-8?B?MHlXaDhIallsZjF0bUNyTktDaFFNU3JjU3RieHJHWXRBdXh5MjA5eUZBK1Bw?=
 =?utf-8?B?dHIrd29vdDhReFkwS05DSXdVeVZsK3c1YkpUbytUK0VDQlNGRmRiTVFsNlZZ?=
 =?utf-8?B?WkxkaHZUT2htYmVWM21na1ovV0RwRG9kMittME1LZHdpR2wzZUJMOWlsY1c3?=
 =?utf-8?B?U29WWjJGUTgrMVBnQkJ5MmpoYmxXQVBHMUpyQ2N6WCt5bHJwQnBIdTU2YTBH?=
 =?utf-8?B?anZkSGMxZkhHVDdXa1RUN1lJcUdFRDBud1Q3SVoxREtnRUFSZnVnajlpM0Jm?=
 =?utf-8?B?YldmaWZzZjY5WXNsZkoxbWJZVFc2MFQ4T1ZMSURPRXRsditxcmpxK3hyODEy?=
 =?utf-8?B?VXVSOGRiSjVzMWJ0QjBrWFkxaU8zOFNZZkpjRU52SUdqNi9jcDVzeFk1a1lD?=
 =?utf-8?B?ZUZ0Nmd6QldCZWFSVjRrdFZMWWVnc1I3U0QxemJacndDYXhBbmN0UnFGdE9Z?=
 =?utf-8?B?aFFFQ3p3cHQrM3FWM3N0NWkzbDIwNE5IU01uVnE5QWh1M3pBNFBXVTFTVkx1?=
 =?utf-8?B?Vm9Lb1F0MEsrTW1CY3lYRkVsZDd0dkxxbDdaUjR0Y29mRUNJZ2NUM2JTOFZq?=
 =?utf-8?B?TmZYaFVXejI5OG1VVDNNaTZJcnlETHJXSEVKWGNDRnY0RkZCV1VwNmdCUG44?=
 =?utf-8?B?SW9oSzdKdG56UGg3YmtaODhGblI3K3pwWXhiczc4QU11WTZ6TGRjWmFkdEU4?=
 =?utf-8?B?YkdnUnZSdTIyaFVoWENzVWZpMzRyNXBIOUViY1phSmtvdktEbzZsamNjRkdr?=
 =?utf-8?B?V3pBMytNcVZ2TkVLVjRLYW5YOWplTEFyM3lkRFVibC8rcmltbloyUXM0ZDNv?=
 =?utf-8?B?WjViU1pPdFMrREthWER6V3I4YnEwQm5BYWZmQ212MmJRQTMwTFNKeVpiTXFy?=
 =?utf-8?B?d2VwaFVFZkFvOEF5S3JBWVRwbW1rb0JlTkZRRnUxcHF1b3BmN0tNdmNNRHc3?=
 =?utf-8?B?bVcwRkJkcDdsT1R1b3JBcTFlV1hMUjZtQkk3SnlLOHB6YUJ2VHJPcTEycm9l?=
 =?utf-8?B?b1VERVJENkRsS05xS05Oc1dncHh6WGF4M3paM2g5Mmt3bVplRWd6Q0ttTHpp?=
 =?utf-8?B?d1JHNTFDek9QZ2Rja0pjaHZJMXg5cnJLTTVHUTBXWlB4NjliYk43S0RBM0Fr?=
 =?utf-8?B?ejJjSVJsckF4REtxak9YejBPUm5uS25xdlJKUkJhNmxWT3p1Zy9lNnlkbnEv?=
 =?utf-8?B?RTUwMHYvZHlzVkgxVHFoV3Q0NHAyczlEYUs5RHZZSlVJRXVTdjdoS3hZa0lo?=
 =?utf-8?B?b2R6NHRqZUxPNGx3SldnNndqSmxDbkJGNFBYUnlmLzArWnZ5SitrSUh6Mzd5?=
 =?utf-8?B?UkFnWlZhQ3pZc1QzTXRoL1hjZXpMM2ZoT2tVY2V5RXpuLytmY1d0MlF0M3kr?=
 =?utf-8?B?S0IwRVdVTnJxUWVLYWF0ZTZWL1BEQ2k3VVd3VG05WkFZbG5RZmptTUozMmpq?=
 =?utf-8?B?elZkQ25JQkgzdWkvYk11eGQzTmljZktJbklZR3VqbnMrZnQ2U3AzZk1uRmEr?=
 =?utf-8?Q?Dwdtr5O7x4MBF5Resc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vaillant-group.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4705.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aec170c9-ba91-4121-30a5-08d93bb3a9b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 10:41:48.1091
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 67e4db54-80ae-4739-b54d-5ee94bd6472e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Kq6s3QY5sZQ8sybVTriibJkviwiI360E6ZOq5Jz0dyE/iC/gC8nAkDrUD0vT3m2ha99fbYVVWt2sRbukXkaOKlpG60X06Ky7Cotsgsa9hKgBuERmsS8jTLrxDn4wtMB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB4162
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KTWFueSB0aGFua3MgZm9yIHRoZSBmYXN0IGFuc3dlci4NCg0KPiA+IEni
gJltIHN3aXRjaGluZyBmcm9tIGJ1aWxkcm9vdCB0byB5b2N0byBhbmQgdHJ5aW5nIHRvIGZpZ3Vy
ZSBvdXQgaG93IHRvIA0KPiA+IGRvIHRoZSBlcXVpdmFsZW50IG9mIGEgUE9TVF9CVUlMRF9TQ1JJ
UFQuDQo+ID4NCj4gPiBJbmRlZWQgSSB3YW50IHRvIGZvcm1hdCB0aGUgaW1hZ2VzIGJ1aWx0IGlu
IGEgc3BlY2lmaWMgZm9ybWF0IGZvciBsYXR0ZXIgdXNlIGFuZCBDSSBuZWVkcy4NCj4NCj4gSW4g
T0UsIHRoZSBlcXVpdmFsZW50IGZvciB0aGF0IGlzIHByb2JhYmx5IHRoZSBpbWFnZSB0eXBlcyBj
b2RlLg0KPiBTZWUgaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQuY2dpL3Bva3kvdHJl
ZS9tZXRhL2NsYXNzZXMvaW1hZ2VfdHlwZXMuYmJjbGFzcw0KPg0KPiBZb3UgY2FuIGRlZmluZSB5
b3VyIG93biBjdXN0b20gaW1hZ2UgdHlwZXMgdG8gZXh0ZW5kIHRoZSBzeXN0ZW0uIFNvbWUgb2Yg
b3VyIGRlZmF1bHRzIGFyZSBxdWl0ZSBzaW1wbGUgKHRhciksIHNvbWUgYXJlIHF1aXRlIGNvbXBs
ZXggKHdpYyBoYXMgaXRzIG93biBiYmNsYXNzKS4NCg0KSSBzYWlkIGltYWdlLCBidXQgaXQgd2Fz
IHByb2JhYmx5IG5vdCB0aGUgYmVzdCB3b3JkLCBJIGp1c3Qgd2FudCB0byBtYWtlIGEgdGFyYmFs
bCBvZiB0aGUgZ2VuZXJhdGVkIGltYWdlICsgYWRkaW5nIHNvbWUgZmlsZSBpbiBpdC4NCg0KSGVy
ZSdzIHRoZSBjb21wbGV0ZSBmaWxlIHdpdGggdGhlIGpvYiA6DQoNCkZJTEVTRVhUUkFQQVRIU19w
cmVwZW5kIDo9ICIke1RISVNESVJ9L2ZpbGVzOiINCg0KU1JDX1VSSSArPSAiZmlsZTovL25hbGxp
bm8tY3VzdG9tLXBhcmFtcy50eHQiDQpTUkNfVVJJICs9ICJmaWxlOi8vY29uZmlndXJhdGlvbl9p
bnN0cnVjdGlvbl90b19kb19vbl9HVUYudHh0Ig0KDQpkb19yZWxlYXNlX3ljbigpIHsNCg0KICAg
IHJtIC1yZiAke0RFUExPWV9ESVJfSU1BR0V9L3ljbl9yZWxlYXNlDQogICAgbWtkaXIgLXAgJHtE
RVBMT1lfRElSX0lNQUdFfS95Y25fcmVsZWFzZS9vdmVybGF5cw0KICAgIGNwICR7REVQTE9ZX0RJ
Ul9JTUFHRX0vZm5nLWluc3RhbGwuc2ggJHtERVBMT1lfRElSX0lNQUdFfS95Y25fcmVsZWFzZQ0K
ICAgIGNwICR7REVQTE9ZX0RJUl9JTUFHRX0veWNuLWltYWdlLWlteDZ1bGxndWYudGFyLmd6ICR7
REVQTE9ZX0RJUl9JTUFHRX0veWNuX3JlbGVhc2UvZ3VmLWltYWdlLWlteDZ1bGxndWYudGFyLmd6
DQogICAgY3AgJHtERVBMT1lfRElSX0lNQUdFfS8qLmR0Ym8gJHtERVBMT1lfRElSX0lNQUdFfS95
Y25fcmVsZWFzZS9vdmVybGF5cw0KICAgIGNwICR7V09SS0RJUn0vbmFsbGluby1jdXN0b20tcGFy
YW1zLnR4dCAke0RFUExPWV9ESVJfSU1BR0V9L3ljbl9yZWxlYXNlLw0KICAgIGNwICR7V09SS0RJ
Un0vY29uZmlndXJhdGlvbl9pbnN0cnVjdGlvbl90b19kb19vbl9HVUYudHh0ICR7REVQTE9ZX0RJ
Ul9JTUFHRX0veWNuX3JlbGVhc2UvDQogICAgdGFyIC1jemYgJHtERVBMT1lfRElSX0lNQUdFfS95
Y25fcmVsZWFzZS50YXIuZ3ogJHtERVBMT1lfRElSX0lNQUdFfS95Y25fcmVsZWFzZQ0KDQp9DQph
ZGR0YXNrIHJlbGVhc2VfeWNuIGFmdGVyIGRvX2ltYWdlX2NvbXBsZXRlIGFmdGVyIGRvX2RlcGxv
eV9rZXJuZWxtb2R1bGVzDQoNCj4NCj4gPiBJ4oCZdmUgYWxzbyB0cmllZCB0byB1c2UgSU1BR0Vf
UE9TVFBST0NFU1NfQ09NTUFORCB3aXRob3V0IG11Y2ggc3VjY2VzcyANCj4gPiBzaW5jZSBpdCB3
YXNu4oCZdCBydW5uaW5nIGF0IHRoZSBwcm9wZXIgbW9tZW50Lg0KDQo+IFdoZW4gaXMgInRoZSBy
aWdodCBtb21lbnQiPyA6KQ0KDQpUaGUgcmlnaHQgbW9tZW50LCBpcyBhdCB0aGUgdmVyeSBlbmQg
b2YgYml0YmFrZSwgaW5kZWVkIEkgd2FudCB0aGUgam9iIHRvIGJlIHRoZSBvdmVyYWxsIGxhc3Qg
am9iIQ0KDQpUaGFua3MgYWdhaW4sIA0KDQpZYW5uDQo=
