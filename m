Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.131])
 by mx.groups.io with SMTP id smtpd.web09.10153.1579797094776423190
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:31:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=JZ3vbPCi;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.7.131, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWoYh1q/tkWuUabqLXmw9r+QvaC7L2GdgpRYoU89H+mxQQkGbw/Tv30BBDnP4v4XjAgOLCJKX5N4hvRqpIpyh5x/3PLeOSa2eIjTjkyiBP1Q40lF+1G+vzirePbJbcFANSze4Ke0zr8xfWxWdRKAxfbdXgwBaLLm7vPSoJaGx7WPQ+9oj9b5JbQ4MOHFXIfnvunT9n5OIUcKr3FxEZJ6zYkj4hjb1KLhb155UlVjO9okSP7DY3HBZLSB/sOkvJgkqMYkbkQTSR4v3wwSIbqmoEFONxVi4p6+pQ2QlIK3pPwjhP3at8c5UnxCmbf2baI3EhaBbuRI7Vo/wslWGE6Nvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1tpBZ+9AhVovs2AaQ4eNzQ+AbcEaT7ZFrKe4XdBfvOo=;
 b=eji8u8n+4YekFEWtVeJ7p4zT2RSjQ6axJeab0BXRtox5j4zRyym75bWj13RFEwPxPj+P+b2i0dO5QzI2Ihg7TXzksrEw8GAFgpGhnOyFAIZfKmhNdgNv1ClyyAeaZrIhkURfryl0P41WDRevR6m+oQTcqUPi1KYPNEnmULgwA3x40szzy7vH3qJyX1HCkPk3rP/ylKyf4vSpdOBAVJbkiIBp1MV1JqFkwu/q60mUh9AGPliTY42ayVL+RugcvTpl4OPVWX2uIRZ0q4Msg58YlrDc3fQmXtzhsieOXCZUfEeOvfClCv7Oo7DlHHZYvMzlAjgdiUTGE2lRXuXcYj6CYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1tpBZ+9AhVovs2AaQ4eNzQ+AbcEaT7ZFrKe4XdBfvOo=;
 b=JZ3vbPCiDSipZrFldghr0PEpCKjgK/Fj/d7cSq9/PSpw3DYKnZOk3JjeFxXHNsGVhNh9Y2hqabtTQqMYs/U9kiauR4ALVMA6Goz0zfwx2JtSqQEnt+CO99vXtTZYyFVzfeUrreBXSGYzrp7T5HLOKF9Rk2Vtpu2fct/8zmLy85o=
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com (20.179.250.218) by
 DB8PR03MB5802.eurprd03.prod.outlook.com (10.255.4.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 23 Jan 2020 16:31:31 +0000
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5]) by DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5%3]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 16:31:31 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "Robert Berger@yocto.user"
	<robert.berger.yocto.user@gmail.com>, Enrico Joerns <ejo@pengutronix.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Topic: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Index: 
 AQHVy5zDappxekgkwkum1XN2BadeWqfrsOsAgAABYsCAAAkFAIAACe5wgAAF44CAAAMgAIABkcNAgAZWK4CAAb2oMIABkDKAgAFhQmCAAAlWgIAAAKvAgAAKnICAAAL1oA==
Date: Thu, 23 Jan 2020 16:31:31 +0000
Message-ID: 
 <DB8PR03MB5498E0319EA232F097C0FB9CFE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
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
 <DB8PR03MB5498CAEC36BC061CA93813D2FE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <288b08bb-8248-fa5f-d62f-011215bdbeb2@pengutronix.de>
In-Reply-To: <288b08bb-8248-fa5f-d62f-011215bdbeb2@pengutronix.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [62.154.199.77]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22885f33-b112-4858-ed86-08d7a021b453
x-ms-traffictypediagnostic: DB8PR03MB5802:
x-microsoft-antispam-prvs: 
 <DB8PR03MB580266AC69CE0862F1D62BFEFE0F0@DB8PR03MB5802.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(346002)(396003)(136003)(39830400003)(366004)(376002)(199004)(189003)(33656002)(55016002)(9686003)(186003)(8936002)(316002)(81166006)(64756008)(8676002)(81156014)(86362001)(66556008)(66446008)(2906002)(6506007)(5660300002)(966005)(53546011)(508600001)(52536014)(71200400001)(7696005)(66476007)(45080400002)(76116006)(26005)(66946007)(110136005)(4326008)(54906003);DIR:OUT;SFP:1102;SCL:1;SRVR:DB8PR03MB5802;H:DB8PR03MB5498.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NT/riGveh5b1Gf8GNMw/A/YLcvWc8WbS9fxo1S45OLx+i+djm6WDkMInRCy/UgnVyFz/5JLyqJffz7yHR7CD7wakiWWkN7/uQp+kzEDRTP5T+fANKCu/yldalKJz/d5JIaYVXreiDkDiTLS+5NHqLiR3RzQChVZhFU/+OPXy+BU+Afy/z0z6875OBgpwTeL7EMTfMO6IxMamG+90KdOFX+Yq7b2lJ1sQ30DHI3aJ6vEFf7YY9pr2WpsxGjmdnciaHVsFvRoRRebHKJC1E05zvY/Vw1w3sQAROq7GC9EtH3zvSQVHRJjCbB4jFl/AM3UL8UwYZoog/YaW1D8OriKG93wfC0K1vZ+dgIo1G2nvite3x0+gxBhN43+xNe0WbVbDanOcLj7VF1lwovTPTvDIXhVmGBpOmSDumYL0gDPnKaxlx/T/4a8GiU1YMWtSoqALjK6XDaabPOpHBSb75IQJGfILyzcs0tNnesbqonNmRU0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 22885f33-b112-4858-ed86-08d7a021b453
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 16:31:31.4209
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/QarQ97vqQyAkGaUCZbmYUF+Jq7iQxRMS829OCvOsbq8lDovtq0yc+jsQiaZvmyCSaLMqP8UjV0PvhSRKojfKur/UnTZTE2FQnSo4LstLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR03MB5802
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCmJvdGggZGQgY29waWVzIG9mIGJhcmVib3ggKHdpdGggYW5kIHdpdGhvdXQgb2Zmc2V0
KSByZXByb2R1Y2VkIGEgc3lzdGVtIHdoaWNoIG5vIGxvbmdlciBzaG93cyBhbnl0aGluZyBvbiB0
aGUgY29uc29sZS4NClByb2JhYmx5IEkgc2V0dXAgc29tZXRoaW5nIHdyb25nIHdoZW4gYnVpbGRp
bmcgYmFyZWJveC4NCg0KUmVnYXJkcw0KDQpodQ0KDQoNCj4gSGkgQWhtYWQsDQo+IA0KPj4NCj4+
IEhlbGxvLA0KPj4NCj4+IE9uIDEvMjMvMjAgNDozMCBQTSwgSGFucy1VbHJpY2ggU2NobGllYmVu
IHdyb3RlOg0KPj4+IEhpIFJvYmVydCwNCj4+Pg0KPj4+IHRoZXJlIHdoZXJlIG5vIFNESywgYmlz
b24gYW5kIGZsZXggbWlzc2luZy4gTm93IGl0IGNvbXBpbGVkLiBUaGFueC4NCj4+PiBUaGVyZSBh
cmUNCj4+Pg0KPj4+IENvcHlpbmcgaXQgb250byB0aGUgc3lzdGVtIGFuZCBydW5uaW5nIGl0IGZy
b20gdGhlIGNvbnNvbGUganVzdCByZXR1cm5lZCBlcnJvciBjb2RlIDEzMiBhbmQ6IA0KPj4+IEls
bGVnYWwgaW5zdHJ1Y3Rpb24NCj4+DQo+PiBSdW5uaW5nIHdoYXQ/DQo+IFRoZSBiYXJlYm94IGV4
ZWN1dGFibGUgaW4gdGhlIGJhcmVib3ggZm9sZGVyLCBub3Qgc29tZSBpbWFnZS4gVGhlIGV4ZWN1
dGFibGUgc3RhcnRzIHdpdGggRUxGIHNvIGl0IHNob3VsZCBydW4sIHNob3VsZG4ndCBpdD8NCj4g
SW4gdGhlIGJhcmVib3ggUkVBRE1FIHN0YXRlczogIFRoZSBiYXJlYm94IGltYWdlIGlzIGEgbm9y
bWFsIExpbnV4IA0KPiBleGVjdXRhYmxlLCBzbyBpdCBjYW4gYmUgc3RhcnRlZCAganVzdCBsaWtl
IGV2ZXJ5IG90aGVyIHByb2dyYW0NCg0KRmV3IGxpbmVzIGVhcmxpZXIsIGl0IHNheXMgdGhhdCB0
aGUgc2NlbmFyaW8gaW4gdGhlIGRvY3VtZW50IHVzZXMgQVJDSD1zYW5kYm94LCB3aGljaCBpbmRl
ZWQgaXMgYW4gRUxGIGV4ZWN1dGFibGUgZm9yIHlvdXIgaG9zdCBzeXN0ZW0uIFdoZW4gYnVpbGRp
bmcgZm9yIEFSQ0g9YXJtIHRob3VnaCwgdGhlIHJlc3VsdGluZyBFTEYgaXNuJ3QgbWVhbnQgZm9y
IHJ1bm5pbmcgdW5kZXIgYW4gT1MsIGV2ZW4gYW4gQVJNLiBJbnN0ZWFkIHRoZSBuZWNlc3Nhcnkg
c2VjdGlvbnMgYXJlIGNvcGllZCBvdXQgb2YgdGhlIEVMRiBhY2NvcmRpbmcgdG8gYSBTb0Mtc3Bl
Y2lmaWMgbGF5b3V0Lg0KDQo+Pj4gSSBjb3BpZWQgdGhlIC5jb25maWcgZmlsZSBmcm9tIHlvY3Rv
IGludG8gdGhlIGJhcmVib3ggZGlyZWN0b3J5LiBEbyBJIGhhdmUgc3RpbGwgdGhlIHdyb25nIGFy
Y2hpdGVjdHVyZT8NCj4+Pg0KPj4+IFBlcmhhcHMgSSBoYXZlIHRvIGNvcHkgIC4vaW1hZ2VzL2Jh
cmVib3gtcGh5dGVjLXBoeWNhcmQtaW14NnEtMWdpYi5pbWcgb250byB0aGUgZGVzdGluYXRpb24g
c3lzdGVtIHN0YXJ0aW5nIGF0IG9mZnNldCAweDEwMDAgdXNpbmcgZGQuDQo+Pj4gSG93IHRvIGNv
cHkgYmFyZWJveCBvbnRvIHRoZSBzZGNhcmQ/IFRoZXJlIGlzIG5vIHNldHVwbWJyIGV4ZWN1dGFi
bGUgaW4gLi9zY3JpcHRzL3NldHVwbWJyLCBqdXN0IGEgYyBmaWxlIGFuZCBubyB3b3JraW5nIE1h
a2VmaWxlLg0KPj4NCj4+IGJhcmVib3ggYWxyZWFkeSBoYXMgdGhlIGRjZCBvZmZzZXQgaW4sIGp1
c3QgZGQgdGhlIGNvcnJlY3QgaW1hZ2UgdG8gdGhlIHN0YXJ0IG9mIHlvdXIgU0QtQ2FyZCBhbmQg
aXQgc2hvdWxkIHdvcmsuDQo+IFdhaXQsIGp1c3QgcnVubmluZyBkZCBpZj0gYmFyZWJveGltYWdl
ZmlsZSBvZj0vZGV2L21tY2JsazAgd291bGQganVzdCBraWxsIG15IFBhcnRpdGlvbnRhYmxlIGlu
IHNlY3RvciAwLiANCg0KRm9yIHRlc3RpbmcsIHlvdSBjYW4ganVzdCBraWxsIHlvdXIgcGFydGl0
aW9uIHRhYmxlLCBidXQgeWVzIGV2ZW50dWFsbHksIHlvdSB3aWxsIHdhbnQgdG8gY29weSBiYXJl
Ym94IGxhdGVyIGluIHRoZSBpbWFnZS4NCg0KPiBXaGVuIEkgbG9vayBpbnRvIHRoZSBiYXJlYm94
aW1hZ2VmaWxlIEkgc2VlIHR3byBzZWN0aW9ucyBzdGFydGluZyB3aXRoIHNvbWV0aGluZyBsaWtl
IGJhcmVib3guLi4uLi4uVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUgYXQgb2Zmc2V0IDAgYW5k
IG9mZnNldCAweDEwMDAuDQo+IFRoZSBwYXJ0IGF0IDB4MTAwMCByZXNlbWJsZXMgbW9yZSB3aGF0
IEkgc2VlIG9uIG15IHNkY2FyZCBvbiBvZmZzZXQgDQo+IDB4MTAwMCBzbyBteSBhcHByb2FjaCB3
b3VsZCBiZSB0byBkZCBpZj0gYmFyZWJveGltYWdlZmlsZSBvZj0vZGV2L21tY2JsazAgYnM9NTEy
IG9mZnNldD04IHNraXA9OC4NCj4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCnllcywgdGhpcyBzaG91
bGQgd29yay4NCg0KPiANCj4+DQo+PiBDaGVlcnMNCj4+IEFobWFkDQo+Pg0KPj4NCj4gVGhhbmsg
eW91IGFuZCBCZXN0IFJlZ2FyZHMNCj4gDQo+IGh1DQo+IA0KDQoNCi0tIA0KUGVuZ3V0cm9uaXgg
ZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwNClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHBz
Oi8vZXVyMDQuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUy
RiUyRnd3dy5wZW5ndXRyb25peC5kZSUyRiZhbXA7ZGF0YT0wMSU3QzAxJTdDaHUuc2NobGllYmVu
JTQwY29kZXdyaWdodHMuZGUlN0M5NGQ0NDY2ZmI0MTU0ODg1MTEwOTA4ZDdhMDFmYjdiMCU3QzA5
NzRhZjliMzUyYjQzN2NiNjA2ZTlmMjQyYzBjMjI3JTdDMCZhbXA7c2RhdGE9cHY1YTRvTVFRSXJZ
cU4lMkZIcTN6b0p4T05tMFF1dUprWE9hOVVxRlB1MzhRJTNEJmFtcDtyZXNlcnZlZD0wIHwNCjMx
MTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEy
MS0yMDY5MTctMCAgICB8DQpBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAg
ICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0K
