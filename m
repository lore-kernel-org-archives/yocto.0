Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.116])
 by mx.groups.io with SMTP id smtpd.web11.16026.1579629093864066219
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 09:51:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=RbKyGA62;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.20.116, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k39UZ4u2kwNOXmV6VGSgZPKmjaiEFlKLfEj+Xi4LEPokJERvcdsl8XQE6wPCMpMCKyapg1RsQNpp8LkDqYrLqwSjIkrfHJvxBuHmWEFylhm9Hkg3jx0kKab1V/Uynf+OHMhSdxX4gCxWMrSq3dqRGNCcIvO67mTE1GQwfCA/RLek5mZIs5qzKUtcTKPBiB8rw9X2/fbZbU8BhhfwHbdyf9x10K0vFGP//gz1XCiQXcRkqFDKhykfJ2QJmwYMLu8DBVViRLjkTxfXeKy3HS5tN7MVYXMKFCkrqhfOgHyE1DLfUcBqKm/Rz4dLkKYsucjvyTnP/OmSZbMaECklnRqP/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBfiEFUz6Sp1niC753LaglnF3g9gU+CBdBJ282RYhiE=;
 b=JX6k6u01K/ebxOee/yOXDjEDZptFqIgPKxnryjgJGQbINIKIP5mupOA3mUhYpfiU4rs6Ac4oosJr3QfVT3bVkNx9Gw3KH8A8IfzKij0WPdpgWu+amzMHCzGgWp1qPqcUt0nafH0cXkhOEZclMYrZFdf5cH2d/GU8+/LX+8FLArW0nAkXMVm2Na+WgiCmKdnuNXb4Gqa9UKn81HaBOLFwMCGqK1wpcx28NWr0zZancw8dXp+3uz7PpctvaSrMHRkJnkSfSgRy4+f21GpJwnM/Oh+OD01l0vBPdaBoJ9nCKEvS1B60kwRLHuMHrINmwtFjF2LFAiJiW+hHuWq1aUhftA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBfiEFUz6Sp1niC753LaglnF3g9gU+CBdBJ282RYhiE=;
 b=RbKyGA62ZebSJVJADh5kldODvod2isQABCHCPttX8eTKzyFNen0zJF6QCTuMs/OSoO2IzIs8lZsVC/aTnfRHeGbcmAfcxhM6SZ4i7df3nymIPkEtc6VAQGO5WKJnHGpIC3xEbvfZjXZo3DEIg2KyQytCBbUP3gNgUMeg2YfNWLs=
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com (20.179.250.218) by
 DB8PR03MB6204.eurprd03.prod.outlook.com (10.186.166.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Tue, 21 Jan 2020 17:51:31 +0000
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5]) by DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5%3]) with mapi id 15.20.2644.026; Tue, 21 Jan 2020
 17:51:31 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns
	<ejo@pengutronix.de>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Topic: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Index: 
 AQHVy5zDappxekgkwkum1XN2BadeWqfrsOsAgAABYsCAAAkFAIAACe5wgAAF44CAAZt98IAGTSgAgAGw8yA=
Date: Tue, 21 Jan 2020 17:51:30 +0000
Message-ID: 
 <DB8PR03MB5498C89CCD516C2AF1D457C7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <AM6PR03MB54938204A7FDEB6C5E93A749FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <cd5008fe-b93f-92c6-8f97-6f7adce32f0e@pengutronix.de>
In-Reply-To: <cd5008fe-b93f-92c6-8f97-6f7adce32f0e@pengutronix.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [193.158.100.19]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df06c9c3-06af-4f1e-30ab-08d79e9a8c3c
x-ms-traffictypediagnostic: DB8PR03MB6204:
x-microsoft-antispam-prvs: 
 <DB8PR03MB6204123A58202F6C16E88405FE0D0@DB8PR03MB6204.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(39830400003)(136003)(346002)(366004)(376002)(396003)(189003)(199004)(8676002)(33656002)(81156014)(81166006)(71200400001)(8936002)(2906002)(66946007)(5660300002)(966005)(26005)(6506007)(53546011)(186003)(66476007)(66556008)(64756008)(4326008)(316002)(9686003)(45080400002)(508600001)(66446008)(7696005)(52536014)(110136005)(86362001)(76116006)(55016002);DIR:OUT;SFP:1102;SCL:1;SRVR:DB8PR03MB6204;H:DB8PR03MB5498.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5x9/KNiQwh9s0dMB+2egzbLtsVzuafSwgqL1sVWDT4ezMG6RRuUu0SQa5QbhFz5zPMoEwdEV6go7kgpzviKVKv6mUXukQDo2udDRVtRZdvXhAufihhwOEajP4NudnJEa6VvNKfTxGxIZIEjFBUncOFtZqbXIRUuTDAGNmB4ckV/occnyKn1vMq7p7o2WuS+Odlf8Q/c34Cgaz5FqCtKPLOHzmD+McRz66HgsH8pO18GqhTtaCu0NcToCwyXVc5x2ggXYMgTyri74rgz1rS03KKebNaRmJ0vnKAaJhwboytaeqrCpFcPCMCkBgspv3e6np/UniktfbKHaSYx5zflaf/PV2XcQ5wMMeXSUvwA3paBoyiVY2andDlskpW2wKJo+NdtnKhkAY+3wV7Prk2afn+CyyhP1NrH9ImJCJQ3D5YCXhpKjCJL2kfNiuecHcqnB4fn1sZ2XFdAP6WVr8swwnZXRqsB47yWP9F8sI3mAOV2R2wihLlVEYxJLqQjVzHWEKKLTBSxgWn5u2XyMC9ILDw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: df06c9c3-06af-4f1e-30ab-08d79e9a8c3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 17:51:31.0352
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xx9SxLYhv2rGAGUSJHey88iU6M1Ulr/4wAmCuibxCwlCiBjSaIeMeCa/b2gwoVL4msvnST/2bkwUv9UDSku9IuYknZydSq75CrdoKGXI4nE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR03MB6204
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWhtYWQsDQoNCnRoYW5rIHlvdSBmb3IgdGhlIGdyZWF0IGhlbHAuIFRoZXJlJ3MgYSBsb3Qg
dG8gbGVhcm4gZm9yIG1lIGhlcmUuDQo+IERvZXMgaXQgY29tZSBmcm9tIHRoZSBwaHl0ZWMgZ2l0
IGRpcmVjdGx5PyBVcHN0cmVhbSBiYXJlYm94IGhhcyB0aGlzOg0KVGhlIHpldXMgaW1hZ2UgSSBi
dWlsZCBoZXJlIGluY2x1ZGVzIGxheWVyIG1ldGEtcGh5dGVjIGJyYW5jaCB6ZXVzIGFuZCBhIGN1
c3RvbSBsYXllciBmcm9tIHBoeXRlYyBjYWxsZWQgbWV0YS1rc3AwNjYzLg0KT24gdGhlIGN1c3Rv
bSBsYXllciBJIGNyZWF0ZWQgYSBuZXcgYnJhbmNoIHpldXMgYW5kIGp1c3QgcmVuYW1lZCB0aGUg
YmFyZWJveCBhbmQgYmFyZWJveC10YXJnZXR0b29scyBiYmFwcGVuZCBmaWxlcyBmcm9tIDIwMTcg
dG8gMjAxOS4NCg0KWW91IGFyZSByaWdodCBhYm91dCB0aGUgbWlzc2luZyBzdGF0ZSBpbiBiYXJl
Ym94MjAxOS4wMS4gDQpmb3IgYmFyZWJveCAyMDE5IGRydmluZm8ganVzdCBjb250YWluczoNCnN0
YXRlDQoNCmRydmluZm8gZm9yIGJhcmVib3ggMjAxNyBzYXlzOg0Kc3RhdGUgDQogICAgICAgIGlt
eDZxZGxfcGh5dGVjX2Jvb3Rfc3RhdGUuMTkNCkRvZXMgdGhhdCBtZWFuIHRoYXQgdGhlIGRyaXZl
ciBpcyBub3QgbG9hZGVkPw0KDQpBdCB0aGUgYmFyZWJveDIwMTkgdmVyc2lvbiBvZl9kdW1wIHJl
dHVybnM6IENhbm5vdCBmaW5kIG5vZGVwYXRoIHN0YXRlDQpBdCB0aGUgYmFyZWJveDIwMTcgdmVy
c2lvbiBvZl9kdW1wIHJldHVybnMgYSBmdWxsIHN1YnRyZWUgZm9yIGlteDZxZGxfcGh5dGVjX2Jv
b3Rfc3RhdGUgYW5kIHRoZSBlZXByb20gZW50cnkgZm9yIHN0YXRlLg0KDQpMb29raW5nIGludG8g
dGhlIDIwMTcgYmFyZWJveCBzb3VyY2VzIHVzaW5nICAgICAgZmluZCAuLyAtaW5hbWUgImlteDZx
ZGwtcGh5dGVjKi5kdHNpIiAgaXQgZmluZHMgaW14NnFkbC1waHl0ZWMtc3RhdGUuZHRzaToNClRo
aXMgZmlsZSBkb2VzIG5vdCBleGlzdCBpbiB0aGUgMjAxOSBiYXJlYm94IHNvdXJjZXMuIFRoZXJl
IGlzIG9ubHkgaW14NnVsLXBoeXRlYy1zdGF0ZS5kdHNpIGF2YWlsYWJsZS4NCg0KTm93IEkgd2ls
bCB0cnkgdGhlIHVwc3RyZWFtIHZlcnNpb24uDQoNClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlv
dXIgaGVscC4NCg0KQmVzdCBSZWdhcmRzDQoNCmh1DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gRnJvbTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4gDQo+
IFNlbnQ6IE1vbmRheSwgMjAgSmFudWFyeSAyMDIwIDE2OjIzDQo+IFRvOiBIYW5zLVVscmljaCBT
Y2hsaWViZW4gPGh1LnNjaGxpZWJlbkBjb2Rld3JpZ2h0cy5kZT47IEVucmljbyBKb2VybnMgPGVq
b0BwZW5ndXRyb25peC5kZT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IGJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8g
Ym9vdGNob29zZXI6IENhbm5vdCBnZXQgc3RhdGUgJ3N0YXRlJw0KPiANCj4gSGVsbG8sDQo+IA0K
PiBPbiAxLzE2LzIwIDQ6MDkgUE0sIEhhbnMtVWxyaWNoIFNjaGxpZWJlbiB3cm90ZToNCj4gPiBI
aSBBaG1hZCwNCj4gPiANCj4gPiBUaGFua3MgdG8geW91ciBNYWlsIEkgdGVzdGVkIHdpdGggYmFy
ZWJveF8yMDE3LjEyLjAtcGh5Ni5iYiAodGh1ZCB1c2VkIGJhcmVib3hfMjAxNy4xMi4wLXBoeTQu
YmIpIGFuZCB0aGlzIHdvcmtzIGluIHpldXMgdG9vLiANCj4gPiANCj4gPj4gQWNjb3JkaW5nIHRv
IHRoZSBzdGF0ZSBjb21tYW5kIG91dHB1dCB1bmRlciB0aHVkLCB5b3VyIHN0YXRlIGlzIHN0b3Jl
ZCBvbiB0aGUgRUVQUk9NLCBub3QgdGhlIE5BTkQuIExvb2sgZm9yIHVwZGF0ZS1lZXByb20gaW4g
eW91ciBkZXZpY2UgdHJlZS4NCj4gPj4gVGhlcmUgc2hvdWxkIGFsc28gYmUgYW4gL2Rldi9lZXBy
b20wLnVwZGF0ZS1lZXByb20gaW4gYmFyZWJveC4NCj4gPiBUaGF0IHNlZW1zIHJpZ2h0LCB3aGVu
IHdvcmtpbmcgdGhlIGVlcHJvbSBpcyB3cml0dGVuIHRvIG9uIGVhY2ggYm9vdC4NCj4gPiBCdXQg
SSBjb3VsZCBub3QgZmluZCBhbnkgcmVmZXJlbmNlcyB0byAqZWVwKiBpbnNpZGUgYmFyZWJveCBp
biBhbnkgbGF5ZXIuDQo+IA0KPiBEb2VzIGl0IGNvbWUgZnJvbSB0aGUgcGh5dGVjIGdpdCBkaXJl
Y3RseT8gVXBzdHJlYW0gYmFyZWJveCBoYXMgdGhpczoNCj4gaHR0cHM6Ly9ldXIwNC5zYWZlbGlu
a3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0LnBlbmd1dHJv
bml4LmRlJTJGY2dpdCUyRmJhcmVib3glMkZ0cmVlJTJGYXJjaCUyRmFybSUyRmR0cyUyRmlteDZx
ZGwtcGh5dGVjLXN0YXRlLmR0c2klM0ZoJTNEbmV4dCZhbXA7ZGF0YT0wMSU3QzAxJTdDaHUuc2No
bGllYmVuJTQwY29kZXdyaWdodHMuZGUlN0NmZDYwNGZmMjY0NmM0OTdmYmIzNTA4ZDc5ZGJjYTY3
OCU3QzA5NzRhZjliMzUyYjQzN2NiNjA2ZTlmMjQyYzBjMjI3JTdDMCZhbXA7c2RhdGE9ZlhPUUI3
YXdGaFBoeEptREF5TjVpcEx4ZTNXOEliQXczdnAwM0dMMVkxMCUzRCZhbXA7cmVzZXJ2ZWQ9MA0K
PiANCj4gSSB3b3VsZCBpbWFnaW5lLCB5b3VycyBkb2VzIHRvLiBZb3UgY2FuIGNoZWNrIGluIHRo
ZSB5b2N0byBidWlsZCBkaXJlY3RvcnkuDQo+IChJZiB5b3UgaGF2ZSBybV93b3JrIGVuYWJsZWQs
IHlvdSBtaWdodCBuZWVkIFJNX1dPUktfRVhDTFVERSArPSAieW91ci1iYXJlYm94LXJlY2lwZSIN
Cj4gaW4geW91ciBsb2NhbC5jb25mKQ0KPiANCj4gQWxzbyB0cnkgb2ZfZHVtcCAvc3RhdGUgaW5z
aWRlIG9mIGJhcmVib3ggdG8gc2VlIHRoZSBkZXZpY2UgdHJlZSBub2RlLg0KPiANCj4gVGhlIHJl
YXNvbiwgeW91IGhhdmVuJ3QgZm91bmQgaXQgaW4gdGhlIGRlcGxveS8gZGV2aWNlIHRyZWUgaXMg
dGhhdCBiYXJlYm94IG1vZGlmaWVzIHRoZSBrZXJuZWwgZGV2aWNlIHRyZWUgb24gbG9hZGluZyBh
bmQgYWRkcyB0aGUgc3RhdGUgbm9kZXMgdG8gaXQuDQo+IA0KPiA+PiBpZiBub3QsIHRyeSBleGVj
dXRpbmcgdGhlIGRydmluZm8gY29tbWFuZCBhbmQgc2VlIGlmIHRoZSBkcml2ZXIgaGFzIHByb2Jl
ZCB0aGUgRUVQUk9NLg0KPiA+Pj4+IExvb2tzIGxpa2UgdGhlIHN0YXRlIG5vZGUgaXMgbWlzc2lu
ZyBpbiB5b3VyIGRldmljZSB0cmVlLg0KPiANCj4gRG8geW91IGhhdmUgdGhlIHN0YXRlIGRyaXZl
ciBlbmFibGVkPyBkcnZpbmZvIHNob3VsZCB0ZWxsIHlvdSB0aGF0Lg0KPiANCj4gQ2hlZXJzDQo+
IEFobWFkDQo+IA0KPiAtLSANCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVyd2FsZGVyIFN0
ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly9ldXIwNC5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cucGVuZ3V0cm9uaXguZGUl
MkYmYW1wO2RhdGE9MDElN0MwMSU3Q2h1LnNjaGxpZWJlbiU0MGNvZGV3cmlnaHRzLmRlJTdDZmQ2
MDRmZjI2NDZjNDk3ZmJiMzUwOGQ3OWRiY2E2NzglN0MwOTc0YWY5YjM1MmI0MzdjYjYwNmU5ZjI0
MmMwYzIyNyU3QzAmYW1wO3NkYXRhPUVkaDlSQXJzamxsYzJDNUxTdml4SW5kd0JvS1pmTVkwZG5i
TFQyTmRFMXclM0QmYW1wO3Jlc2VydmVkPTAgIHwNCj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwNCj4gQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwNCg0K
