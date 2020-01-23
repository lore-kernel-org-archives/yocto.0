Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.137])
 by mx.groups.io with SMTP id smtpd.web12.9050.1579793427878840507
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 07:30:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=PnEzYigB;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.22.137, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9cgSeSB9aqzaKl6WYUnoiTtWxf1yxg30qvQKnF/jGzN+dSr/ytjAyEuR4ElvfcV2KjqSErAWvuHD0cFGq3IeUK2VFWv/N8t9lWF1yWLKzT45iQBA3tFv7DqxJJdy3ha95zScDojnieST9352u/kGhrlzP4lh8VmND265D+h3/Pn2H4zXmbnyFkIqOXx7wwomAR9qcfOnvtD82ulgNWW7rwoH1N0gdtjlUDl7UpcejwK9BJMBjE4dRf/AyfVAT6Uj7UyDX9g4s9gmUxqi9cYYIc3hZcnKPFT1mBhOb5o1/xFYlAVWbkkHHvy/nHbhsbMrxWwGB/odpGSB+C5dTPecg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9t90sq7yzkUFTd1fsXAGyk9a2OwIFhZHES4smxzQ4RY=;
 b=TyvILaqeuJp4TLNrcevUIbIOlfxauLtrq9N1gdJmuU13mrPMJilANrzhLVp2YzORmAwLUkg0k5iVUqVx8m9nfrw6JjSmuH6PnQBxrYR1FEPXFtyW6z1Kv8s/iAPCA0onmmEPpXcyJb8OEF9H07p1L1G3F6MRe2svYFPUQalPjarkaeRaZ6LwRC0Z+jIHMurTjsNF5+7vwL0622p2xntjdbE2Ss2oFYIvNimL9bOgvGyluRMVlopgCJdfCZ2Lv2Ig6Ny3EzJHI6nv8PWMsf9gLrHeYwpZkNobSVc+nz0jsVPkR7n1/VNWNZWqkhRVcBXtQZDQs9+2sxeYvib3yTh3Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9t90sq7yzkUFTd1fsXAGyk9a2OwIFhZHES4smxzQ4RY=;
 b=PnEzYigBALy5yrw0tEnoWAOvWbS1UTgPArP8UsTWPRiwdBoNT0BADkYJtX29oNCQ2mKid1ECF4GcXk5B4t8DPCINlmcBxIrSICPT8sGIWG5l9ORofdwY8h/ewlPoM9z4ZDzI972gWxq7vz0Hn4ku0dW2RcMcpeFQ3bnx5Xpbn04=
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com (20.179.250.218) by
 DB8PR03MB6313.eurprd03.prod.outlook.com (10.186.166.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.25; Thu, 23 Jan 2020 15:30:25 +0000
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5]) by DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5%3]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 15:30:25 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>, Ahmad
 Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns <ejo@pengutronix.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Topic: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Index: 
 AQHVy5zDappxekgkwkum1XN2BadeWqfrsOsAgAABYsCAAAkFAIAACe5wgAAF44CAAAMgAIABkcNAgAZWK4CAAb2oMIABkDKAgAFhQmA=
Date: Thu, 23 Jan 2020 15:30:25 +0000
Message-ID: 
 <DB8PR03MB549871DF5E2805242C71347AFE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
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
In-Reply-To: <0a8e32e7-7100-e834-97c8-de27959e41dd@gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [62.154.199.77]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ffcd579-b6c0-4a81-91aa-08d7a0192b04
x-ms-traffictypediagnostic: DB8PR03MB6313:
x-microsoft-antispam-prvs: 
 <DB8PR03MB63139A4B46FA99089D32F67DFE0F0@DB8PR03MB6313.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(346002)(39830400003)(366004)(376002)(136003)(396003)(199004)(189003)(66476007)(66946007)(66446008)(9686003)(64756008)(76116006)(55016002)(66556008)(71200400001)(33656002)(52536014)(5660300002)(26005)(186003)(7696005)(86362001)(316002)(508600001)(6506007)(53546011)(110136005)(81156014)(81166006)(8676002)(8936002)(4326008)(54906003)(2906002);DIR:OUT;SFP:1102;SCL:1;SRVR:DB8PR03MB6313;H:DB8PR03MB5498.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /DDnbJumDcraW9qChQvdT+zgscGDdoiS2qw49Mj1jkBZwTUeTXLyTVKlU7MJV4YroeArQDV7n8Z40E8ytTy18b5n8X23XmgCewDus0HLgzJk1PCxsPD5UQhC/dCQGCVjgK+2diprP1PGlKnpJa6zpV8env2jKHixjzjgAhaycsvRnF+Li4s4L+vgXgEhYAJM9t/V61UQ5luMQXvz1wj/8F4zkAPhPbpSzobvQVTwS/opK2o+IHto8s7NVSg4Y4pvp2PHGZldvODGy6y2ECU5lwBWTUVn8wsXvi2//wK3/vuqibyh+XUlqsQjWzIrxgsamDSaU59Svw1Mx8i/8G5G3NVlI5I8Ku10ik+kCZss93jd9cNtBYisNnhp7+jcK60K6jmg4cIGjDvitAdeXrZ46E7ZBDZM1jtj62sayMBT+bh5BjwIFGhgLMh5MJuYwhc0
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ffcd579-b6c0-4a81-91aa-08d7a0192b04
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 15:30:25.1421
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eg4Q9A237Qtfj3XYbtYIolfAi+5r+h1DBtHVtK2s3+NP50Yzv94i8BNq0g+skjV5u5CaJ/0mokIgdwA6QBmukxUcL3n7AQJwa/EiOV04Hks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR03MB6313
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iZXJ0LA0KDQp0aGVyZSB3aGVyZSBubyBTREssIGJpc29uIGFuZCBmbGV4IG1pc3Npbmcu
IE5vdyBpdCBjb21waWxlZC4gVGhhbnguDQpUaGVyZSBhcmUgDQoNCkNvcHlpbmcgaXQgb250byB0
aGUgc3lzdGVtIGFuZCBydW5uaW5nIGl0IGZyb20gdGhlIGNvbnNvbGUganVzdCByZXR1cm5lZCBl
cnJvciBjb2RlIDEzMiBhbmQ6IA0KSWxsZWdhbCBpbnN0cnVjdGlvbg0KDQpJIGNvcGllZCB0aGUg
LmNvbmZpZyBmaWxlIGZyb20geW9jdG8gaW50byB0aGUgYmFyZWJveCBkaXJlY3RvcnkuIERvIEkg
aGF2ZSBzdGlsbCB0aGUgd3JvbmcgYXJjaGl0ZWN0dXJlPw0KDQpQZXJoYXBzIEkgaGF2ZSB0byBj
b3B5ICAuL2ltYWdlcy9iYXJlYm94LXBoeXRlYy1waHljYXJkLWlteDZxLTFnaWIuaW1nIG9udG8g
dGhlIGRlc3RpbmF0aW9uIHN5c3RlbSBzdGFydGluZyBhdCBvZmZzZXQgMHgxMDAwIHVzaW5nIGRk
Lg0KSG93IHRvIGNvcHkgYmFyZWJveCBvbnRvIHRoZSBzZGNhcmQ/IFRoZXJlIGlzIG5vIHNldHVw
bWJyIGV4ZWN1dGFibGUgaW4gLi9zY3JpcHRzL3NldHVwbWJyLCBqdXN0IGEgYyBmaWxlIGFuZCBu
byB3b3JraW5nIE1ha2VmaWxlLg0KDQpUaGFuayB5b3UgYW5kIEJlc3QgUmVnYXJkcw0KDQpodQ0K
DQoNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUm9iZXJ0IEJlcmdlckB5
b2N0by51c2VyIDxyb2JlcnQuYmVyZ2VyLnlvY3RvLnVzZXJAZ21haWwuY29tPiANClNlbnQ6IFdl
ZG5lc2RheSwgMjIgSmFudWFyeSAyMDIwIDE4OjU5DQpUbzogSGFucy1VbHJpY2ggU2NobGllYmVu
IDxodS5zY2hsaWViZW5AY29kZXdyaWdodHMuZGU+OyBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBl
bmd1dHJvbml4LmRlPjsgRW5yaWNvIEpvZXJucyA8ZWpvQHBlbmd1dHJvbml4LmRlPg0KQ2M6IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0K
U3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvIGJvb3RjaG9vc2VyOiBDYW5ub3QgZ2V0IHN0YXRl
ICdzdGF0ZScNCg0KSGksDQoNCkRpZCB5b3UgaW5zdGFsbCB0aGUgU0RLPw0KDQpEaWQgeW91IHJ1
biB0aGUgZW52aXJvbm1lbnQgc2NyaXB0Pw0KDQo+IG1ha2U6IC9wYXRoL3RvL3lvdXIveW9jdG8v
dG9vbGNoYWluL2Jpbi9hcm0tLWxpbnV4LWdudWVhYmloZi1nY2M6IEtvbW1hbmRvIG5pY2h0IGdl
ZnVuZGVuDQo+ICAgIExFWCAgICAgc2NyaXB0cy9rY29uZmlnL2xleGVyLmxleC5jDQo+IC9iaW4v
c2g6IDE6IGZsZXg6IG5vdCBmb3VuZA0KDQo+ICAgIFlBQ0MgICAgc2NyaXB0cy9rY29uZmlnL3Bh
cnNlci50YWIuaA0KPiAvYmluL3NoOiAxOiBiaXNvbjogbm90IGZvdW5kDQoNCmZsZXggYW5kIGJp
c29uIHNlZW0gdG8gYmUgbWlzc2luZyBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KDQpSb2JlcnQNCg==
