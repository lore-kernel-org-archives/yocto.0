Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.96])
 by mx.groups.io with SMTP id smtpd.web10.16550.1579631297281600826
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 10:28:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=Z4fBonlC;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.6.96, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBo+hveeWqFoJyqVP1IzO1TjoibYYVrjQSUUojNj6J6liBk48L0/pKhdlb6Y37E9yQruY4zCct2qnEGI/0nk5KFSaAA8y8AqHlvbmYRs8sw4KgGsE+Uj3bOrRAj4boVNznDZQygNvHDIkR+bo0cRMVi8OOCL+wNAiORPwyC1Mx1PkwZK6oX9kOCuHCfnKFwiBtY5I7mKunkz8tSxL7wzarQQsTFEwnGJfve2lQRAo4IIH6A4Yr3ERv9W7foN1qtAeelonwIvueQcEzDgiz+R8DzBjRlnrYIaqUJI6ToO+x4uVSS2QO1fhJCvuoGj1KpJzOAz1/XRl/B4mBkE3Uc2pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=It8CSv2K9rlb3tjAxFCSRZCp4S2s1dIbuYVjvk0WYC8=;
 b=jzfjL7cTP0xK21LtxMhLLvdIk6B89u3C5jC29qJql124PVQ0uRWaGzm/PDi/bPgMV2GxVcwLY54bucrIldDciac5os9yHJHnJBdu/VdM4OzeS89C13nCeOdd/yp8uST1nnkj8FHroTc64MP48prQA1sU0ToXv2rOCYJ7SngYW+132kFET9SYceFTbNdkqn0si5NU0iAxWzcVBEvupVGKE3GagaejnRIHyYa81N7/NDTSUypLm+bz903jpYMYwcKrE3skAPl3hwCUm4DCK57bZClcnyk24R8V8fBujTqKhFm6QDDn63wVpxnJSbgacZd2vCSdn+hBc/WPNW9e1UEnCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=It8CSv2K9rlb3tjAxFCSRZCp4S2s1dIbuYVjvk0WYC8=;
 b=Z4fBonlCYjbXGd2eyKLP5qO0WwJjYuajdOp2J9Zdc5KmD3lnZuFlE4voiiHkm+hknuSod0RdKRozqzvMLeVtuILWOCv+DSYhRqB7Pmd5w6ec3RKc1DNoAInebyflZBtzdy1Shw5vfK7a4jpNAb7d6MAjSdF0lrPK1RORWD6aUo8=
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com (20.179.250.218) by
 DB8PR03MB5868.eurprd03.prod.outlook.com (10.255.16.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 18:28:15 +0000
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5]) by DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5%3]) with mapi id 15.20.2644.026; Tue, 21 Jan 2020
 18:28:15 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns <ejo@pengutronix.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Topic: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Index: 
 AQHVy5zDappxekgkwkum1XN2BadeWqfrsOsAgAABYsCAAAkFAIAACe5wgAAF44CAAAMgAIABkcNAgAZWK4CAAb2oMA==
Date: Tue, 21 Jan 2020 18:28:15 +0000
Message-ID: 
 <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
In-Reply-To: <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [193.158.100.19]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfbe53c2-f8a7-4df9-903d-08d79e9fae06
x-ms-traffictypediagnostic: DB8PR03MB5868:
x-microsoft-antispam-prvs: 
 <DB8PR03MB5868D7DA22276D8AEB3BEE2FFE0D0@DB8PR03MB5868.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(136003)(39830400003)(396003)(346002)(366004)(376002)(199004)(189003)(64756008)(66946007)(66476007)(54906003)(66556008)(66446008)(7696005)(76116006)(71200400001)(966005)(508600001)(86362001)(9686003)(316002)(55016002)(110136005)(4326008)(45080400002)(186003)(81166006)(33656002)(8676002)(81156014)(6506007)(52536014)(26005)(8936002)(5660300002)(2906002);DIR:OUT;SFP:1102;SCL:1;SRVR:DB8PR03MB5868;H:DB8PR03MB5498.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AMuapjsUPbOjltlYqrimDj7yjhLX84N+2e3CL/M/90osgKtgmxdMo98GsiE2HaQVKELRNOIyrndFD1K2aLKNG/tZRs1IHRu4/JVNNGA8+7d57aPnDvHhgcbpLtFaNZgbY/RDloSRY/so9qw0WpPxYIJoHYYrU5h1D/Ymmxv+t86SdFcWduKCzeGCcYGW8Wo3+20V+Lp6oyovx4DugBSZdrQ5nE7P/jJooVAEuOpFtDF6G2Ym2Gpj+5LEkX0iLT/CpAuLb6D2vhtjiRPkZN7j8aJJgVPxFgvgqBzYQn0GeLZQgZV8SeTiVzRtbh2XJOcG1AM2keUrUDGasgNaCO/y3IA0qi0XxbXsC5JzP5Xnf5Bh/F1DVlF6wUAVhjhqWZHGFjiqg4xTYkkkQoqcvAux9PMKfs0AK+wLly80eDgq4MCud2QdOBSwIXv4vamovOSfhkxFHWa8bQPSoo38fKtfuSfO+tF32ISWPIVn6m7ogxtAinB0dp3HNZ9bW/sNupUDQJZ0dwCGw+yA4y/yaiPZmw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbe53c2-f8a7-4df9-903d-08d79e9fae06
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 18:28:15.1379
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0gBJtewp8IHSF0GO8irg3QKzCoSY5jT6OulBh5V9R30HN2mH5iq/e4bmBLB9UFQ7oPyz6goX6kt5IC1Y6w9GX+vFuAmkbY9lDfPvcRlp3o4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR03MB5868
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWhtYWQsIA0KDQo+ICAgZ2l0IGNsb25lIGh0dHBzOi8vZXVyMDQuc2FmZWxpbmtzLnByb3Rl
Y3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmdpdC5wZW5ndXRyb25peC5kZSUy
RmdpdCUyRmJhcmVib3gmYW1wO2RhdGE9MDElN0MwMSU3Q2h1LnNjaGxpZWJlbiU0MGNvZGV3cmln
aHRzLmRlJTdDNWZkZDI5MTM0NjU1NGIxZDVlM2QwOGQ3OWRiZGRhMmIlN0MwOTc0YWY5YjM1MmI0
MzdjYjYwNmU5ZjI0MmMwYzIyNyU3QzAmYW1wO3NkYXRhPUw4V0FaWWRjbTBralROWkc4T0ZuZWRY
WHlHM0RIeUlIeDFyNGdoJTJCJTJGQyUyQkklM0QmYW1wO3Jlc2VydmVkPTANCj4gICBjZCBiYXJl
Ym94DQo+ICAgY3AgJHlvdXJfYmFyZWJveF9jb25maWdfaW5feW9jdG8gLmNvbmZpZw0KPiAgIG1h
a2UgLWokKG5wcm9jKSBDUk9TU19DT01QSUxFPS9wYXRoL3RvL3lvdXIveW9jdG8vdG9vbGNoYWlu
L2Jpbi9hcm0tJHlvdXJfdmVuZG9yLWxpbnV4LWdudWVhYmloZi0gQVJDSD1hcm0NCg0KSSB0cmll
ZCB0byBidWlsZCB0aGUgYmFyZWJveCBzb3VyY2VzIGJ1dCBnb3QgdGhlIGZvbGxvd2luZyBlcnJv
cjoNCiQgbWFrZSAtaiQobnByb2MpIENST1NTX0NPTVBJTEU9L3BhdGgvdG8veW91ci95b2N0by90
b29sY2hhaW4vYmluL2FybS0keW91cl92ZW5kb3ItbGludXgtZ251ZWFiaWhmLSBBUkNIPWFybQ0K
bWFrZTogL3BhdGgvdG8veW91ci95b2N0by90b29sY2hhaW4vYmluL2FybS0tbGludXgtZ251ZWFi
aWhmLWdjYzogS29tbWFuZG8gbmljaHQgZ2VmdW5kZW4NCiAgTEVYICAgICBzY3JpcHRzL2tjb25m
aWcvbGV4ZXIubGV4LmMNCi9iaW4vc2g6IDE6IGZsZXg6IG5vdCBmb3VuZA0KbWFrZVsyXTogKioq
IFtzY3JpcHRzL01ha2VmaWxlLmxpYjoxOTQ6IHNjcmlwdHMva2NvbmZpZy9sZXhlci5sZXguY10g
RmVobGVyIDEyNw0KbWFrZVsyXTogKioqIEVzIHdpcmQgYXVmIG5vY2ggbmljaHQgYmVlbmRldGUg
UHJvemVzc2UgZ2V3YXJ0ZXQuLi4uDQogIFlBQ0MgICAgc2NyaXB0cy9rY29uZmlnL3BhcnNlci50
YWIuaA0KL2Jpbi9zaDogMTogYmlzb246IG5vdCBmb3VuZA0KbWFrZVsyXTogKioqIFtzY3JpcHRz
L01ha2VmaWxlLmxpYjoyMDg6IHNjcmlwdHMva2NvbmZpZy9wYXJzZXIudGFiLmhdIEZlaGxlciAx
MjcNCm1ha2VbMV06ICoqKiBbL29wdC9hcHBzL3pldXMvYmFyZWJveC9iYXJlYm94L01ha2VmaWxl
OjQyMjogc3luY2NvbmZpZ10gRmVobGVyIDINCm1ha2U6ICoqKiBbTWFrZWZpbGU6NDYzOiBpbmNs
dWRlL2NvbmZpZy9hdXRvLmNvbmYuY21kXSBGZWhsZXIgMg0KDQpJcyB0aGUgLmNvbmZpZyBmaWxl
IHdyb25nPyBJIGNvcGllZCBpdCBmcm9tIHRoZSBiYXJlYm94IGZvbGRlciB3aGVyZSBJIGJ1aWx0
IGJhcmVib3ggMjAxNyB2ZXJzaW9uLg0KDQogDQo+IHVuZGVyIGltYWdlcy8geW91IHdpbGwgaGF2
ZSB0aGUgYmFyZWJveCBpbWFnZXMuIFlvdSBjYW4gZ2V0IHRoYXQgb250byB5b3VyIGRldmljZSB1
c2luZyBhIFNELUNhcmQsIGlteC11c2ItbG9hZGVyLCB0ZnRwIC4uLiBldGMuDQpXaGVuIHRoZSBi
dWlsZCBzdWNjZWVkcyB3aGVyZSBvciBob3cgdG8gcHV0IHRoZSBpbWFnZSBvbiB0aGUgc2RjYXJk
Pw0KQnkgdGhlIHdheSwgd2hpY2ggaW1hZ2UgaXMgaXQgdGhlcmUgYSBsb3RzIG9mIGltYWdlcyBp
biB0aGUgLi9pbWFnZSBmb2xkZXIgYW5kIHRoZXJlIGlzIG5vbmUgbmFtZWQgaW14NnFkbD8gVGhl
cmUgYXJlIHNvbWUgbmFtZWQgaW14NmRsIGFuZCBvbmUgaW14NnEuDQoNCj4gDQo+IElmIHlvdSB3
YW50IHRvIGRvIGl0IGluIFlvY3RvLCB0aGVyZSBhcmUgbWV0YS1wdHggYW5kIG1ldGEtYmFyZWJv
eCB0aGF0IGhhdmUgbW9yZSByZWNlbnQgYmFyZWJveCB2ZXJzaW9ucy4NClRvbW9ycm93IEkgd2ls
bCB0cnkgdG9vLCB0byBidWlsZCB0aGUgdXBzdHJlYW0gdmVyc2lvbiB1c2luZyB5b2N0by4NCg0K
VGhhbmsgeW91IHNvIG11Y2guDQoNCkJlc3QgUmVnYXJkcw0KDQpodQ0K
