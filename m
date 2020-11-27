Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.61])
 by mx.groups.io with SMTP id smtpd.web08.16368.1606469809131456816
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 01:36:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=IAGfs9U9;
 spf=pass (domain: spinetix.com, ip: 40.107.20.61, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EPpUhEia79TF0JFWHoGmCUgondpFqlHpoy4dUZN+k+YNJGU+s84LrKQWSC25p14DzTdfAcgxPVoVWSGgxFKOI0cVhTDvUPDOChW5e4dufQXl5t/XNwG0b1Iv1VaHFUQz1yaPgtyUfD3DGjvaZm8r0ZT5dW2ZhhQsi7d1XdbI0J8qEqyeG3uyLfRdRi9rNZcr7D5XlHCf5skJSoJU+n8tOLtkNxUnnVtqpDVupGtB0zRIAJKJ/nVfZZyX1U8YkQDn1AilmGwx9CkjMH2wa8c9cWu/Fjwt9cfK8eEs90ol4g1naf1IsAGG2jAj8FfTRn11wOA5YE/ar9UuvBwvHr59TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OHOlxzxkg2lp+T9cpoCJvQ/ect4eLQfRhb4wUloIJZo=;
 b=fRhTq87febPcqgtfym9/QEQDOCF58GkbdlVP6J6MKjqG5Hbrb86EV/ZSfaHyxDnZkSaOczXrkcf7ggBxBRGhWoJ9yyy5v4yEAyKgPIWSFC5ma9q3JIh/jF2YsLvMk6DhB/M/7ZOWMvOB3Cwwjepa5RO8WMXpS04PzoPQRnPLL/y8RFdlV/dmA3olSN9wdy7wG4y6DdfTOK0epO+fxfcC9oP8TFmAcPZjFj8t0f7aPZX8Tdit9gdvApqeTbf0LyLIy5gTIivtPOhWLY2xxHpM7FkMWhRNzQ+YgOYE80AnukRMAccOmauWXNJM0S/zkTCrL8O8cjHeC2vW2RwbPDvfJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OHOlxzxkg2lp+T9cpoCJvQ/ect4eLQfRhb4wUloIJZo=;
 b=IAGfs9U9H+7QjYysoN/PLb983zeiX+GA1/TPk2qTMRNeuk/KEQUxM6xQ0gBoNesr9ej8+dC1/coGjcITQctZA1LrhPJJdjNV1QF/X/2htB5tH/7qGakkDCO7UpDzKgpAeCXWMsdbFM0on+t/O/sTUYqJP0ZHf5bHrfqrEiSa/uU=
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:e::19) by DB8PR01MB5898.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:e5::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Fri, 27 Nov
 2020 09:36:45 +0000
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::c14b:724a:501b:411c]) by
 DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::c14b:724a:501b:411c%7]) with mapi id 15.20.3564.028; Fri, 27 Nov 2020
 09:36:45 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "vijayrakeshmunganda@gmail.com" <vijayrakeshmunganda@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto AWS MQTT: ssl.SSLCertVerificationError: [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: certificate is not yet valid (_ssl.c:1108) #python
Thread-Topic: [yocto] Yocto AWS MQTT: ssl.SSLCertVerificationError: [SSL:
 CERTIFICATE_VERIFY_FAILED] certificate verify failed: certificate is not yet
 valid (_ssl.c:1108) #python
Thread-Index: AQHWxJnn/Y46a19GXUS4Mg01vrVBr6nbtzjQ
Date: Fri, 27 Nov 2020 09:36:45 +0000
Message-ID: 
 <DB6PR0102MB263042B5C550F2C5C4596E6188F80@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
References: <yXMx.1606466827634515822.ibgS@lists.yoctoproject.org>
In-Reply-To: <yXMx.1606466827634515822.ibgS@lists.yoctoproject.org>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=spinetix.com;
x-originating-ip: [2a02:1205:c6a5:c540:5944:699b:7106:3804]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a2201c7-1e5e-44c0-10af-08d892b7f4e2
x-ms-traffictypediagnostic: DB8PR01MB5898:
x-microsoft-antispam-prvs: 
 <DB8PR01MB5898B7F72D2B406FC4F2DC7A88F80@DB8PR01MB5898.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TQAw4knC8phqlRYsBb6EbQEyMj5P96rMLMk0RLwisJefDrWx+MJEh232ImV2fOb4ywEk+511JQ/r4ykcXJqKCQvciua0T9HPONNkETuUQAGlEfTgPod8ZmO1ke4LE4tR+5RxAzlqbNfGVt3sJXjKBuxBTWLkwofQvH4g9efIhS7F2Y624WO9YOJQ1z1KmIRLPXnbJFYxa00VGaAuH8XeaZIp6gyQvherY+UZ0PK49QG9sl93z/EgLrnhCPpvD7Fm5S7JtID4PexEtn1+THBhbElyOeXVcUUg+SofiE8oSxhAKpatpmyMehVqsbZykIpYUiWonIEJz/dE9Pgc/dLRxw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0102MB2630.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(136003)(346002)(376002)(366004)(396003)(39830400003)(8676002)(15650500001)(71200400001)(83380400001)(7696005)(5660300002)(64756008)(66556008)(86362001)(66946007)(55016002)(66476007)(76116006)(66446008)(30864003)(2906002)(110136005)(316002)(478600001)(9686003)(52536014)(8936002)(186003)(6506007)(966005)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?c2R4bFV5WmdSU0lPbktXN0RzZWFGUHNnbnluenk0YnpTUXhvWFk1NnlQZlA1?=
 =?utf-8?B?VTNtLzdUL21OOEUrQTMyd2VNcitkSlVVQnAvTStaekxJU3VPMjUwTFVYMlc0?=
 =?utf-8?B?ZzJuWTZRWTRVS1ZIVmFKTGNTOS8ycHRjUDk3REFaWkhFVmFnZk9LcEdNaytQ?=
 =?utf-8?B?cHEyNStmSzd3RVNRMGhpMFV1Tk9tdDAzeHF5enNIR0ExVmNtcDdHaTFpaXdk?=
 =?utf-8?B?cldtanI1WEIvYUUvK0tIMzg3OVBycGlLb2pNZWY0NUo2SkNhRjRWeEJMb09x?=
 =?utf-8?B?TjlPc3pnMXZVUytyL2UxcjNPcTAydC9wSHVXU2x6a3E3OGw4MG82N25rUDR6?=
 =?utf-8?B?Rk1VSWcvYU0wSjdrZldGQ0orRy84ZlBUVkZnR2tSWlJTRTB4bW9KcE1GK0s3?=
 =?utf-8?B?clVwTUhGdVdhWGtLUnBFbmhUS2M2Qlk3THhIOVZqRzdiTVNjbUdFTUZFVnVi?=
 =?utf-8?B?WWRaNDFLa21FVSs3eDYyM0JUUXBzSEV0czZZV2kwTlJKeHZZK2FEU3JHVUpv?=
 =?utf-8?B?SExHbXE0ano4ZFJwSENyN1N6aEJoeTdPZW83c2xoUHhGbFpWQnZHVEdiNUxx?=
 =?utf-8?B?Z3Z4VGlxc2VIQVdGbFlFeE9YM21ZaCt6aGY4WUJqUElKNUE2T3BCVDY5aHkv?=
 =?utf-8?B?SE9WMm0rNzM4RW9nTTdiVk5IWjJLZXQxSStLSkMwczkxUWdKb2IwV1BOOW9U?=
 =?utf-8?B?aUlzMUxNT3l5UnNWUmI1TVc4YmhIMTQ2SWwvd01kNkZoL3ZMRDRWV1BPZGo1?=
 =?utf-8?B?N2RHTWM5QlBreDZabWg0Y0U1NmVqSjRUT1pMMEVHT2E4bms4bFlOeG9nMHVL?=
 =?utf-8?B?emY1bHZlKzJxY2VpWlFHbWtOdURxMU1DbDJibG9tLzZCcElVMlBGMGNVY3dM?=
 =?utf-8?B?Wk54OUVBOTVwdXVkY0dYSEduQ1h6WElaYmduRFV1eVVNZm9LSGIxRmo3U2E3?=
 =?utf-8?B?WVlkRnlPNWFpS3doaVcwWUZmbGgyOVh4UlFCcEJDd3UrcFc4NWZ0enlhMWVj?=
 =?utf-8?B?M2hub3FTWEkvNnFjclNTd3Qrc1Y3d0pSNVNJL1pzZVlCRjNYVWNlalYvV3BF?=
 =?utf-8?B?c3ovZXlqcUxtTTJ6MFcwckJPcFBSakhxMXhUYXdkMm1mTGJXbDNPaFBWZ0Zy?=
 =?utf-8?B?Wm54eEV4WnV6dGJ5L2VMOEJ6NitYUkxjQWNmbTg5NlpNZzNpSEpKVjU5aXV3?=
 =?utf-8?B?dFBzNDBqMjhPTDV2REErUWtDWWx0bGp2SjR3SUlNbXZyZnJXL3VySnEzZjBv?=
 =?utf-8?B?Wk53ZUN0L0FlbndxNVlIcEtVcnZDOGc0R0NlLysxbEV1VUhSMGZ0NXdFSkt6?=
 =?utf-8?B?ZXRQSkRaRXZpSEppUkRXeDRzcHFsUTFRSVlIYnU5ZXBJRmI3UkRWUzlQeUdM?=
 =?utf-8?Q?y6xsb5fpzQ0rbXjj2Nj2OWJ4UfPxBc0U=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a2201c7-1e5e-44c0-10af-08d892b7f4e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2020 09:36:45.6892
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o5nEf291OhoVF/BjTZaVvcTxcYc6wG4EKMygTxZLiHbfI9Ui/oed3ugAY8JGlOPPm49sSE/bX/bXDFJeorxzi+QL0zfyDoPxtvvQrCMEdko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR01MB5898
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0102MB263042B5C550F2C5C4596E6188F80DB6PR0102MB2630_"

--_000_DB6PR0102MB263042B5C550F2C5C4596E6188F80DB6PR0102MB2630_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgdGhlcmUsDQoNCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiB2aWpheXJha2VzaG11bmdhbmRhIHZp
YSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTZW50OiAyNyBOb3ZlbWJlciAyMDIwIDA5OjQ3DQpU
bzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogW3lvY3RvXSBZb2N0byBB
V1MgTVFUVDogc3NsLlNTTENlcnRWZXJpZmljYXRpb25FcnJvcjogW1NTTDogQ0VSVElGSUNBVEVf
VkVSSUZZX0ZBSUxFRF0gY2VydGlmaWNhdGUgdmVyaWZ5IGZhaWxlZDogY2VydGlmaWNhdGUgaXMg
bm90IHlldCB2YWxpZCAoX3NzbC5jOjExMDgpICNweXRob24NCg0KSGksDQoNCkknbSBuZXcgdG8g
WW9jdG8gcHJvamVjdC4gSSdtIHJ1bm5pbmcgYmFzaWMgTVFUVCBwdWJsaXNoIGNvZGUgaW4gcHl0
aG9uLCB3aGVuIEkgcnVuIG15IGNvZGUgSSBnb3QgZXJyb3IgYXMsICJzc2wuU1NMQ2VydFZlcmlm
aWNhdGlvbkVycm9yOiBbU1NMOiBDRVJUSUZJQ0FURV9WRVJJRllfRkFJTEVEXSBjZXJ0aWZpY2F0
ZSB2ZXJpZnkgZmFpbGVkOiBjZXJ0aWZpY2F0ZSBpcyBub3QgeWV0IHZhbGlkIChfc3NsLmM6MTEw
OCkiLiBJIGhhZCBkb3dubG9hZGVkIGFjdGl2YXRlZCBjZXJ0aWZpY2F0ZXMgZnJvbSBBV1MsIGJ1
dCBJIGRvbid0IHdoeSBJJ20gZ2V0dGluZyB0aGlzIGVycm9yLiBJJ20gSSBtaXNzaW5nIGFueSBw
YWNrYWdlIG9yIGFueXRoaW5nPyBQbGVhc2UgaGVscCBtZSBpbiB0aGlzIHJlZ2FyZCwgdGhhbmsg
eW91Lg0KVGhhbmtzICYgUmVnYXJkcywNClZSDQoNCg0KVGhlIOKAnGNlcnRpZmljYXRlIGlzIG5v
dCB5ZXQgdmFsaWTigJ0gbWVzc2FnZSBtYWtlcyBtZSB0aGluayB0aGF0IHlvdSBtYXkgaGF2ZSBh
IGRhdGUgaW4gdGhlIHBhc3QgaW4geW91ciBzeXN0ZW0sIGNoZWNrIHRoZSBkYXRlIGFuZCB0aW1l
IHdpdGgg4oCcZGF0ZeKAnSB0byBkbyBwcm9wZXIgY2VydGlmaWNhdGUgdmFsaWRhdGlvbiB5b3Ug
bmVlZCB0byBtYWtlIGFycmFuZ2VtZW50cyB0byBoYXZlIHRoZSBkYXRlIGFuZCB0aW1lIG9uIHlv
dXIgdGFyZ2V0IHNldCBwcm9wZXJseSwgZWl0aGVyIHlvdSBjYW4gdHJ1c3QgdGhlIFJUQyB0byBo
YXZlIHRoZSBjb3JyZWN0IHRpbWUgb3IgeW91IG5lZWQgc29tZXRoaW5nIGxpa2UgbnRwLg0KDQpC
ZXN0LA0KDQpEaWVnbw0KDQotLQ0KRGllZ28gU2FudGEgQ3J1eiwgUGhEDQpUZWNobm9sb2d5IEFy
Y2hpdGVjdA0Kc3BpbmV0aXguY29tDQoNCg0K

--_000_DB6PR0102MB263042B5C550F2C5C4596E6188F80DB6PR0102MB2630_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHJ0ZiAt
LT4NCjxzdHlsZT48IS0tIC5FbWFpbFF1b3RlIHsgbWFyZ2luLWxlZnQ6IDFwdDsgcGFkZGluZy1s
ZWZ0OiA0cHQ7IGJvcmRlci1sZWZ0OiAjODAwMDAwIDJweCBzb2xpZDsgfSAtLT48L3N0eWxlPg0K
PC9oZWFkPg0KPGJvZHk+DQo8Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iIHNpemU9IjMiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTJwdDsiPjxhIG5hbWU9Il9NYWlsRW5kQ29tcG9zZSI+PC9h
Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjExcHQ7Ij5IaSB0aGVyZSw8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNl
PSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8
L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij48Yj5Gcm9tOjwvYj4geW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyAmbHQ7eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZndDsgPGI+T24g
QmVoYWxmIE9mIDwvYj52aWpheXJha2VzaG11bmdhbmRhIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPGJyPg0KDQo8Yj5TZW50OjwvYj4gMjcgTm92ZW1iZXIgMjAyMCAwOTo0Nzxicj4NCg0KPGI+
VG86PC9iPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPGJyPg0KDQo8Yj5TdWJqZWN0Ojwv
Yj4gW3lvY3RvXSBZb2N0byBBV1MgTVFUVDogc3NsLlNTTENlcnRWZXJpZmljYXRpb25FcnJvcjog
W1NTTDogQ0VSVElGSUNBVEVfVkVSSUZZX0ZBSUxFRF0gY2VydGlmaWNhdGUgdmVyaWZ5IGZhaWxl
ZDogY2VydGlmaWNhdGUgaXMgbm90IHlldCB2YWxpZCAoX3NzbC5jOjExMDgpICNweXRob248L3Nw
YW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRp
diBzdHlsZT0ibWFyZ2luLWJvdHRvbToxMnB0OyI+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0i
MiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+SGksPGJyPg0KDQo8YnI+DQoNCkknbSBu
ZXcgdG8gWW9jdG8gcHJvamVjdC4gSSdtIHJ1bm5pbmcgYmFzaWMgTVFUVCBwdWJsaXNoIGNvZGUg
aW4gcHl0aG9uLCB3aGVuIEkgcnVuIG15IGNvZGUgSSBnb3QgZXJyb3IgYXMsICZxdW90O3NzbC5T
U0xDZXJ0VmVyaWZpY2F0aW9uRXJyb3I6IFtTU0w6IENFUlRJRklDQVRFX1ZFUklGWV9GQUlMRURd
IGNlcnRpZmljYXRlIHZlcmlmeSBmYWlsZWQ6IGNlcnRpZmljYXRlIGlzIG5vdCB5ZXQgdmFsaWQg
KF9zc2wuYzoxMTA4KSZxdW90Oy4gSSBoYWQgZG93bmxvYWRlZA0KYWN0aXZhdGVkIGNlcnRpZmlj
YXRlcyBmcm9tIEFXUywgYnV0IEkgZG9uJ3Qgd2h5IEknbSBnZXR0aW5nIHRoaXMgZXJyb3IuIEkn
bSBJIG1pc3NpbmcgYW55IHBhY2thZ2Ugb3IgYW55dGhpbmc/IFBsZWFzZSBoZWxwIG1lIGluIHRo
aXMgcmVnYXJkLCB0aGFuayB5b3UuPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFj
ZT0iQ2FsaWJyaSIgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+VGhhbmtz
ICZhbXA7IFJlZ2FyZHMsPGJyPg0KDQpWUjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZu
YnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9
IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9k
aXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTFwdDsiPlRoZSDigJw8Zm9udCBmYWNlPSJDYWxpYnJpIj5jZXJ0aWZpY2F0ZSBpcyBu
b3QgeWV0IHZhbGlk4oCdIG1lc3NhZ2UgbWFrZXMgbWUgdGhpbmsgdGhhdCB5b3UgbWF5IGhhdmUg
YSBkYXRlIGluIHRoZSBwYXN0IGluIHlvdXIgc3lzdGVtLCBjaGVjayB0aGUgZGF0ZSBhbmQgdGlt
ZSB3aXRoIOKAnGRhdGXigJ0gdG8gZG8gcHJvcGVyIGNlcnRpZmljYXRlDQp2YWxpZGF0aW9uIHlv
dSBuZWVkIHRvIG1ha2UgYXJyYW5nZW1lbnRzIHRvIGhhdmUgdGhlIGRhdGUgYW5kIHRpbWUgb24g
eW91ciB0YXJnZXQgc2V0IHByb3Blcmx5LCBlaXRoZXIgeW91IGNhbiB0cnVzdCB0aGUgUlRDIHRv
IGhhdmUgdGhlIGNvcnJlY3QgdGltZSBvciB5b3UgbmVlZCBzb21ldGhpbmcgbGlrZSBudHAuPC9m
b250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9
IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9k
aXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTFwdDsiPkJlc3QsPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0i
Q2FsaWJyaSIgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9z
cGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+RGllZ288L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRp
diBzdHlsZT0ibWFyZ2luLXRvcDo1cHQ7bWFyZ2luLWJvdHRvbTo1cHQ7Ij48Zm9udCBmYWNlPSJB
cmlhbCIgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo5cHQ7Ij4tLQ0KPGJyPg0KDQo8
Yj5EaWVnbyBTYW50YSBDcnV6LCBQaEQ8YnI+DQoNCjwvYj48Zm9udCBjb2xvcj0iZ3JheSI+VGVj
aG5vbG9neSBBcmNoaXRlY3Q8YnI+DQoNCnNwaW5ldGl4LmNvbTwvZm9udD48L3NwYW4+PC9mb250
PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBm
YWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJz
cDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPC9zcGFuPjwvZm9udD4NCjwvYm9keT4NCjwvaHRtbD4N
Cg==

--_000_DB6PR0102MB263042B5C550F2C5C4596E6188F80DB6PR0102MB2630_--
