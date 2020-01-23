Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.107.4.97])
 by mx.groups.io with SMTP id smtpd.web09.9753.1579795899662964506
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:11:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=MkLTrisc;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.4.97, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5WoZ4aB4cKVtg+rAKO1NlFwCCfy+vE2OuDvs7z785tmA2vxqg/P2GHle2NRDhTIoj+GfuwjsFY4p7eTSwkKlECdGeomGqRd6GathRpIRgkJvU0xf9fkvSfPj3HQPYVpb6avj6z8qyiyxP4Xav/idRDz4aOqvSpb3aJxINTifaZZwO2G/e2r/CAlP3D3pvkOBAAMYM86Pd6ysn+MDDUu5TakCVtyPAZkkcWkUkmcUu5r/g7NiqyEbaer8en3EHIJcj0ejJjVEyDHiCeJTX2bFfrhNOwUOheB1uQm832T1h7+1puOUSMrxU+ayh/Xz2kndwXNArqu29AXuKOan/48gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0gQqKZSf8XBC5Wqyl1VvORbLPBBh5QONkA7OX0gb6Ho=;
 b=HRhsoWSQ9O05MfFcxpMfuOw6Yj0n9e6is8lDP+jOlfgGSQmuTBKShNRnTDxdWcHULunaZ2zn6PGBthH620A45ulZdcIpliMkmdb30SN70twHo0pbsU9b8yVUdntnkEIUp7O4gaVIj4q2F0sX1Nyoms6NMWce1CLupS7eA/l1NJNlgc5VqwS5DmgOv5z2+39Gh0bAXDrn1VhcWMxBNszMSUyPiLe0C96DNgNNlktHR/CRbiwAvXTPakxKyt6qbmMM+Z3RpLl2VGpRudbBSMQ9QNjs3MkbQ4lp/OKUV1Yh4WQYdLt0qZGrEdk6X8aelvXPE9P28darOPvvc3a0KacCng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0gQqKZSf8XBC5Wqyl1VvORbLPBBh5QONkA7OX0gb6Ho=;
 b=MkLTriscNiecqDJ3kgGaZYnhOV8qj4YOZL3mTDv6r8Phd7Od8v+KyED/DGLg+bOcQM+h0CEsQmedvBVQtz4u4JBgcH00g2cm6nBv0/w2EWSPy1tqy02fFBMs/VHkaT6ughv/afmYA8BQs6Dpcz3CZHCkAvBrrD7PWx6Em8Ax1zU=
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com (20.179.250.218) by
 DB8PR03MB6347.eurprd03.prod.outlook.com (20.179.251.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Thu, 23 Jan 2020 16:11:37 +0000
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5]) by DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5%3]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 16:11:37 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "Robert Berger@yocto.user"
	<robert.berger.yocto.user@gmail.com>, Enrico Joerns <ejo@pengutronix.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Topic: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Index: 
 AQHVy5zDappxekgkwkum1XN2BadeWqfrsOsAgAABYsCAAAkFAIAACe5wgAAF44CAAAMgAIABkcNAgAZWK4CAAb2oMIABkDKAgAFhQmCAAAlWgIAAAKvA
Date: Thu, 23 Jan 2020 16:11:36 +0000
Message-ID: 
 <DB8PR03MB5498CAEC36BC061CA93813D2FE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
 <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <0a8e32e7-7100-e834-97c8-de27959e41dd@gmail.com>
 <DB8PR03MB549871DF5E2805242C71347AFE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <88f6a8d6-872d-62ea-9113-1c9a4983e300@pengutronix.de>
In-Reply-To: <88f6a8d6-872d-62ea-9113-1c9a4983e300@pengutronix.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [62.154.199.77]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 827ff92f-2bd7-44a2-7b2d-08d7a01eec5e
x-ms-traffictypediagnostic: DB8PR03MB6347:
x-microsoft-antispam-prvs: 
 <DB8PR03MB63471A61F0333A79878995CFFE0F0@DB8PR03MB6347.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(366004)(346002)(189003)(199004)(8936002)(66476007)(7696005)(66556008)(64756008)(66446008)(76116006)(71200400001)(66946007)(508600001)(55016002)(5660300002)(81156014)(9686003)(81166006)(8676002)(86362001)(110136005)(4326008)(53546011)(6506007)(52536014)(33656002)(186003)(54906003)(2906002)(26005);DIR:OUT;SFP:1102;SCL:1;SRVR:DB8PR03MB6347;H:DB8PR03MB5498.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1FnrBI4mDEkQRyBgm2XfqL7KQ+Zwt6lGA1yY7ZPtpjA7YB9erIsE7UDc6WAT9ejFPeTm6B8O/HcvjP00tlk/GvzZD46K2VuSUXo/o/DiA1yH/ZwKopLcGmpq/UZfz+K4J2xtIHIyneFkrYSe3nYHKxeq+ThGDgEt1/0w5SEUhBQS3ch4m5qirQpCu236UBe2fqoSKZGO1B4YMsyEUmIAvqaVGr5GM1PkgvcJqqrDI77tsZoCGyIQEn2lRiACEjZI8kGIyLWcbVwzW8n0CiYtzi4fP/Zs9gX/oVh5s0YxXgYmlkTIRY4l4M5A2CP/Ms9i5068ov11cAVd970vkq7nU0L2yQ37md3C0h/uCRehot7Ai3twLUAnuKMphQetE6xEaivEY9288tUjIseLb9xun4SXt6kIrIujwzpnXjqKRXEKyq+4KlvnF2eLZukmg0TI
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 827ff92f-2bd7-44a2-7b2d-08d7a01eec5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 16:11:37.0213
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GBljo0fKLvLkcqOeCjkaC8BmYY43sBi1LpMOoK17KjIP85Tpgb7fQblCDWGiyccROW3nXc0np1upMqq0zv2zpSdjnSq59mP5C3TEg42G740=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR03MB6347
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWhtYWQsDQoNCj4gDQo+IEhlbGxvLA0KPiANCj4gT24gMS8yMy8yMCA0OjMwIFBNLCBIYW5z
LVVscmljaCBTY2hsaWViZW4gd3JvdGU6DQo+ID4gSGkgUm9iZXJ0LA0KPiA+IA0KPiA+IHRoZXJl
IHdoZXJlIG5vIFNESywgYmlzb24gYW5kIGZsZXggbWlzc2luZy4gTm93IGl0IGNvbXBpbGVkLiBU
aGFueC4NCj4gPiBUaGVyZSBhcmUgDQo+ID4gDQo+ID4gQ29weWluZyBpdCBvbnRvIHRoZSBzeXN0
ZW0gYW5kIHJ1bm5pbmcgaXQgZnJvbSB0aGUgY29uc29sZSBqdXN0IHJldHVybmVkIGVycm9yIGNv
ZGUgMTMyIGFuZDogDQo+ID4gSWxsZWdhbCBpbnN0cnVjdGlvbg0KPiANCj4gUnVubmluZyB3aGF0
Pw0KVGhlIGJhcmVib3ggZXhlY3V0YWJsZSBpbiB0aGUgYmFyZWJveCBmb2xkZXIsIG5vdCBzb21l
IGltYWdlLiBUaGUgZXhlY3V0YWJsZSBzdGFydHMgd2l0aCBFTEYgc28gaXQgc2hvdWxkIHJ1biwg
c2hvdWxkbid0IGl0Pw0KSW4gdGhlIGJhcmVib3ggUkVBRE1FIHN0YXRlczogIFRoZSBiYXJlYm94
IGltYWdlIGlzIGEgbm9ybWFsIExpbnV4IGV4ZWN1dGFibGUsIHNvIGl0IGNhbiBiZSBzdGFydGVk
ICBqdXN0IGxpa2UgZXZlcnkgb3RoZXIgcHJvZ3JhbQ0KDQo+ID4gSSBjb3BpZWQgdGhlIC5jb25m
aWcgZmlsZSBmcm9tIHlvY3RvIGludG8gdGhlIGJhcmVib3ggZGlyZWN0b3J5LiBEbyBJIGhhdmUg
c3RpbGwgdGhlIHdyb25nIGFyY2hpdGVjdHVyZT8NCj4gPiANCj4gPiBQZXJoYXBzIEkgaGF2ZSB0
byBjb3B5ICAuL2ltYWdlcy9iYXJlYm94LXBoeXRlYy1waHljYXJkLWlteDZxLTFnaWIuaW1nIG9u
dG8gdGhlIGRlc3RpbmF0aW9uIHN5c3RlbSBzdGFydGluZyBhdCBvZmZzZXQgMHgxMDAwIHVzaW5n
IGRkLg0KPiA+IEhvdyB0byBjb3B5IGJhcmVib3ggb250byB0aGUgc2RjYXJkPyBUaGVyZSBpcyBu
byBzZXR1cG1iciBleGVjdXRhYmxlIGluIC4vc2NyaXB0cy9zZXR1cG1iciwganVzdCBhIGMgZmls
ZSBhbmQgbm8gd29ya2luZyBNYWtlZmlsZS4NCj4gDQo+IGJhcmVib3ggYWxyZWFkeSBoYXMgdGhl
IGRjZCBvZmZzZXQgaW4sIGp1c3QgZGQgdGhlIGNvcnJlY3QgaW1hZ2UgdG8gdGhlIHN0YXJ0IG9m
IHlvdXIgU0QtQ2FyZCBhbmQgaXQgc2hvdWxkIHdvcmsuDQpXYWl0LCBqdXN0IHJ1bm5pbmcgZGQg
aWY9IGJhcmVib3hpbWFnZWZpbGUgb2Y9L2Rldi9tbWNibGswIHdvdWxkIGp1c3Qga2lsbCBteSBQ
YXJ0aXRpb250YWJsZSBpbiBzZWN0b3IgMC4gDQpXaGVuIEkgbG9vayBpbnRvIHRoZSBiYXJlYm94
aW1hZ2VmaWxlIEkgc2VlIHR3byBzZWN0aW9ucyBzdGFydGluZyB3aXRoIHNvbWV0aGluZyBsaWtl
IGJhcmVib3guLi4uLi4uVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUgYXQgb2Zmc2V0IDAgYW5k
IG9mZnNldCAweDEwMDAuDQpUaGUgcGFydCBhdCAweDEwMDAgcmVzZW1ibGVzIG1vcmUgd2hhdCBJ
IHNlZSBvbiBteSBzZGNhcmQgb24gb2Zmc2V0IDB4MTAwMCBzbyBteSBhcHByb2FjaCB3b3VsZCBi
ZSB0bw0KZGQgaWY9IGJhcmVib3hpbWFnZWZpbGUgb2Y9L2Rldi9tbWNibGswIGJzPTUxMiBvZmZz
ZXQ9OCBza2lwPTguDQpXaGF0IGRvIHlvdSB0aGluaz8NCg0KPiANCj4gQ2hlZXJzDQo+IEFobWFk
DQo+IA0KPiANClRoYW5rIHlvdSBhbmQgQmVzdCBSZWdhcmRzDQoNCmh1DQoNCg==
