Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.58])
 by mx.groups.io with SMTP id smtpd.web12.189261.1598250025185166115
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Aug 2020 23:20:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=Hgb+a3F8;
 spf=pass (domain: niko.eu, ip: 40.107.9.58, mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P6Zi6uH6S4bhc8u+bTMHVbDZcXdf4MQJ1pO87PdXCcMl3f+JnrwdLGGBrHlXiXqOssk67zzh6XsyWbOY31L6R/qsyo9oWRK+N3E15JEtMCRL/+B6PJd8keLCp2oSaJTU6aXBr9QbeoVjgtWmiGCx7NIfWtUW1iEN4wi+mJIW2GICxHxi76S0j1OvjGN3BR+PA78jnxuFrB+A/vI5kixzKQ2Lhs2oiCshTW3FGI26KrCOibvhfZZmcyW1l1Tudq55Uclr1ROcAJH9Rqe/zv4S9totTQn/mBla2EfK7IplZcSDpJsz42NbEIvqR2QVrG4LFnEP+p9+0iHqcxM/HlS6uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sCIaJibD3XLRZiPnan71IQeBYiXUsLO4d649iOk1FwM=;
 b=f1MXQSwu0cfq24q1KruAAM3gMEIJN/GEIq4txDZ23A+7YAxUJn8E5NGetf/RiTZb7JbZtcUqk2RwXhLboWLasGoncAMD1oM8qoUtADaOTqyixBzq+HDhCbL6qZPuAMYz0a2r2iri8Wa5nDoooTPHvTSj99fw1u8II3IomvZe47YJO2IYHmMSezcM1/TV0qjl+r5Mqv9VeD/vXPvH8hymFTeRaSYa2mh4vwS9QKd1laZdOBTjv5LlNNs3MGLRk2M+b7rSqiA6QWIT4YcwzJoAFL3kwDd5c6gdhRy6eRKn3LReF5SIX+FaGuDbgk3Igy6QSDHxkeoRAeXg0CmxS/jmww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sCIaJibD3XLRZiPnan71IQeBYiXUsLO4d649iOk1FwM=;
 b=Hgb+a3F8EZ38vmigvoufLzv3pU5frhRyD035q0KJX9nGaCkx1qar+O+U0QXWAmJa6kTuUWHLD/UVnq1NmXRRiga2jr2f1w2drkiIRCOSICcp0MSjy4QEMcCGZtT4tTL85IdZPBohkKqII37J/oYBDf8BgV/h08qG/4y8jMLi1LY=
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com (2603:10a6:101:1c::10)
 by PR2PR08MB4795.eurprd08.prod.outlook.com (2603:10a6:101:28::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Mon, 24 Aug
 2020 06:20:21 +0000
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1]) by PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1%4]) with mapi id 15.20.3261.026; Mon, 24 Aug 2020
 06:20:21 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
To: "kweihmann@outlook.com" <kweihmann@outlook.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Additional log handler
Thread-Topic: [yocto] Additional log handler
Thread-Index: AQHWeV5ileoBL6Zuek20NbtPUO4WiqlGyNGA
Date: Mon, 24 Aug 2020 06:20:21 +0000
Message-ID: 
 <PR2PR08MB4651F275DF90D66F1A9B4FBF8B560@PR2PR08MB4651.eurprd08.prod.outlook.com>
References: 
 <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
In-Reply-To: 
 <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: outlook.com; dkim=none (message not signed)
 header.d=none;outlook.com; dmarc=none action=none header.from=niko.eu;
x-originating-ip: [109.107.98.163]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10b8cb15-b9b6-4b5a-6c44-08d847f5c7a9
x-ms-traffictypediagnostic: PR2PR08MB4795:
x-microsoft-antispam-prvs: 
 <PR2PR08MB479571C83917B3FBD8AA72108B560@PR2PR08MB4795.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6YwUTd7T5FHpSx6uUvgmJHaUSVPbghbvITVjftaCel1K2r1qh0X0H8AaHOr0MZBTTzpRvrYgXstdG4f1nfV22olNl8FZN3b2MZqCW/ywANumDGIfp44Ol4GoHJLNrvWCdV87uGLep+K/UGyb3qCld0BPV3vhG2KQ5832ECMtOdeknY0hQcMpU3DW1dRNEqftvkEWcuxf+Hnif4Ax/ZIjDNLMkg3UDrXzNHkQkrlsBpNCNNJBUMcBPAm7wHwQwAk0EYZ2b5McahbA1qhIUrb79yCfAsjtNI3AbqCxKz9Q9p9nd1z7IrPaGjiKkkLG1Or8f3TkQ0GrDOMgHFZs8RBSVc+aF7Y7oj93MMs42cjSP6Ajt2Aeu0FP+2KLlzlduoa1whuCTuJHm9gfr3/qTfUpEQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2PR08MB4651.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(39840400004)(346002)(396003)(376002)(26005)(966005)(52536014)(64756008)(6506007)(76116006)(66946007)(66476007)(66556008)(66446008)(186003)(55016002)(478600001)(83380400001)(33656002)(53546011)(5660300002)(8936002)(7696005)(71200400001)(2906002)(316002)(110136005)(9686003)(8676002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 NIiiZJ+RP24DsU3XWy61jFweUfpGB8NEqSHRrY6F/h9wVNDHInkI2HjHkRZiMHh6ymjfzageAmh8EeV2MJ1m+rdhic723+oJVmQwOheRzrc3K0Lixhd1/Tz/JYFrRU4IDIDUo4/YD17NBS6Kr+df928xaqSJQvXx9dGbwDDyWqVzIzDTwqA43MEcABXIM381fTysiUjeykujXIqNTIcYss5kaddji4mmHZxJcXkSbXXuDH39avrhlRltrQz55LueTrQMqA10pK799U/kawpMOGjmuXpVPoIpN//pmyUdWS7gywvwyd3byBuyWVEm3ybyhdEnA5a9giaTdsbzWXTsR1UimLWHVNYxNs9Li68MKB0eTKKxmC+svdK0RuYJl9EEDuILmWzSzixGBXREhTaT+HISzrW8sQPv8Kbxn6yktPLvTqTZWaseIQBFSzuaS6D6qxt4L2OkqENIH9Pn8IZu8DZeMqvjJFO0DsM+xJNjpiIZWxeENFyJkbeJRaB9tKxxjHJO2OajZDNCPJA4BxQRhIWYR0TCqXccOI62eqaWiUMtVItNQ9oJAVzRiBRuIvZQLKi8f1YAo96GxsCDR+cTzgidhAR98BSjaEZ60KTm8S+zJ0G0LalHw3/JEW2IMbUGeS78/VLfKHkDThkJirBUBA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR2PR08MB4651.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10b8cb15-b9b6-4b5a-6c44-08d847f5c7a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2020 06:20:21.3944
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /fqSf4NMlllcKvxmBBO2ZA3obBfAyFWvxZGGv7v/r4n+bCG0ZSDvIB4Cq83QXmf6zPaa+n9f8Qy/Va7eUHymMe0z8XEiro6IMGddvS+TXYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4795
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgS29ucmFkLCANCg0KRXZlcnkgdGFzayBoYXMgYSBsb2cgZmlsZSBpbiB0aGVpciBjb3JyZXNw
b25kZW50IHJlY2lwZSB3b3JrZGlyIHRoYXQgbm9ybWFsbHkgaXQgaXMgaW5kaWNhdGVkIGJ5IHlv
Y3RvIHdoZW4gYSByZWNpcGUgZmFpbHMgaW4gdGhlIGVycm9yIG1lc3NhZ2UuIEFueXdheSB5b3Ug
YWx3YXlzIGNhbiByZWRpcmVjdCB0aGUgYml0YmFrZSBvdXRwdXQgdG8gZmlsZSB3aXRoIGxpbnV4
IHBpcGVzLiBCeSB0aGlzIHdheTogDQoJYml0YmFrZSA8cmVjaXBlPiA+IGZpbGUudHh0DQoNCllv
dSBjYW4gZmluZCBtb3JlIGluZm9ybWF0aW9uLiBodHRwczovL3d3dy5ob3d0b2dlZWsuY29tLzI5
OTIxOS9ob3ctdG8tc2F2ZS10aGUtb3V0cHV0LW9mLWEtY29tbWFuZC10by1hLWZpbGUtaW4tYmFz
aC1ha2EtdGhlLWxpbnV4LWFuZC1tYWNvcy10ZXJtaW5hbC8NCg0KSSBob3BlIGl0IGhlbHBzLiAN
Cg0KUmVnYXJkcy4gDQpKb3NlLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gT24gQmVoYWxmIE9mIEtvbnJhZCBXZWlobWFubiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KU2VudDogZG9taW5nbywgMjMgZGUgYWdvc3RvIGRlIDIwMjAgMTc6MDINClRvOiB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBbeW9jdG9dIEFkZGl0aW9uYWwgbG9nIGhh
bmRsZXINCg0KQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSB0aGUg
b3JnYW5pemF0aW9uLiBEbyBub3QgY2xpY2sgb24gbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1
bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNh
ZmUuDQoNCkhpIGFsbCwNCg0Kd2hlbiBydW5uaW5nIGJpdGJha2UgaW4gQ0kgSSB3b3VsZCBsaWtl
IHRvIGFkZCBhbiBhZGRpdGlvbmFsIGxvZyBoYW5kbGVyIHRvIHVzZWQgcHl0aG9uIGxvZ2dpbmcg
dG8gY2F0Y2ggKkFMTCogKHRhc2sgd2FybmluZ3MsIGRhbmdsaW5nIGFwcGVuZCwgcWEgaXNzdWVz
LCBhLnMuby4pLCBpbnN0ZWFkIG9mIG1hbnVhbGx5IGdyZXBwaW5nIHRocm91Z2ggdGhlIGNvbnNv
bGUgbG9nLg0KVGhlIGluZm9ybWF0aW9uIGNvbWluZyBmcm9tIHRoaXMgc2hvdWxkIGJlIGlkZWFs
bHkgYmUgd3JpdHRlbiB0byBhIGZpbGUsIHdoaWNoIGNhbiB0aGVuIHNlcnZlIGFzIHNvbWUgc29y
dCBvZiByZXBvcnQuDQoNCklzIHRoZXJlIGEgd2F5IHRvIGRvIHRoYXQ/DQoNCkluIHRoZW9yeSBp
dCBzaG91bGQgYmUgcG9zc2libGUgdG8gaG9vayB0byBhbiAob2J2aW91c2x5IG5vbi1leGlzdGlu
ZykgZXZlbnQgYW5kIGhhbmRsZSBpdCBmcm9tIHRoZXJlLCByaWdodD8NCg0KT3IgYW0gSSB0aGlu
a2luZyBpbiB0aGUgd3JvbmcgZGlyZWN0aW9uPw0KDQpBbnkgcG9pbnRlcnMgYXJlIGFwcHJlY2lh
dGVkIGZyb20gbXkgc2lkZS4uLg0KDQpSZWdhcmRzDQpLb25yYWQNCg==
