Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.58])
 by mx.groups.io with SMTP id smtpd.web11.3432.1582066108257990390
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 14:48:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=FU6zWgvP;
 spf=pass (domain: windriver.com, ip: 40.107.243.58, mailfrom: andreea.volosincu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kf2lO7Mfr1PgNkfGPkIiBJmW8ojI1WUjB5l/0PMdgfLVHt1y7EO0YA+HkfFmnhkIFKaQjKX/9eDdANr81wOJFPvzu0NPk3ZV/f+DOYrCkBMVFJxwntSOPOJYz3kIV6BOZeWFlLGOl+bF2oVrX09+/mA9M15gagpDY2bfUpE6f7yCzK++TuRmrgpPG2Y17ZZPUolLZzD810WrM0AQws0lXQ5hIcDAidLsshT6miH4raBge2bibTLXxDDp+ezW4s2oB3pqrLYVaWP6KMsQNOxTuY2JAcQvZC6rt1hIYTz2d0sDoLAse9576zhgxfH4qkB7ZIeGlTNmmHHLY8AKagT7/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0l0KEnjsHAUlgDnjZvi5l6l8bxRh9G1tbEFi/oO8QQk=;
 b=Gqv+ixC6Ii5wwtq9hSwFt65Rl6Ax1RCR0Tb8480OVRDvMDGkA7QKb3UEJthdaaXtIhhPHd79VfJXC9eyKDT+/1N7W6+t1XHGnTedXYA/P1awvCj/pD0Czw9+UP3YBcjxpBTQyeZZ17/xK8bEV7nObr7ey6pz/ddvbpex1hvqy8iVzW+zzoru3T3cmumjpjVTrez2CLVrkcXRc8QD9gfana11FQD5uTtuteBO/RSWbwjcQ2oe6MD0QzY3X9/BKYiC8g1a0dCImQVX/sKI22eZW9ECnGMIw3rVoMT5vDWNnor/smfjhkvprRx8HeUJKjKQr8B7uYCE9AppRsZosu3f/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0l0KEnjsHAUlgDnjZvi5l6l8bxRh9G1tbEFi/oO8QQk=;
 b=FU6zWgvPySPIMT+rHAw3OphL6IubKLrOdyadaj3C/qu8VP7nyBi3s+w6/e6K24XKVWzL+p2JO16cWlam0pWyhpvybN6BLU6+SBvey2PgX1AMC7C2H0d3KxLMsNAfrC5S2AA9tWBOO4vsylW0V1/1v6Lrv5l/hfDUdVFju7qYQ5o=
Received: from BYAPR11MB3287.namprd11.prod.outlook.com (20.177.186.156) by
 BYAPR11MB2855.namprd11.prod.outlook.com (52.135.229.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 22:48:26 +0000
Received: from BYAPR11MB3287.namprd11.prod.outlook.com
 ([fe80::f081:fe2c:b141:c58d]) by BYAPR11MB3287.namprd11.prod.outlook.com
 ([fe80::f081:fe2c:b141:c58d%6]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 22:48:26 +0000
From: "Volosincu, Andreea S" <Andreea.volosincu@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: This Week - New Sessions - Live Coding with Yocto Project
Thread-Topic: This Week - New Sessions - Live Coding with Yocto Project
Thread-Index: AdXmrOdWYOMbHJUzStyJ/1CRomyTKg==
Date: Tue, 18 Feb 2020 22:48:26 +0000
Message-ID: 
 <BYAPR11MB3287DD7722F457AFA67F7053F5110@BYAPR11MB3287.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andreea.volosincu@windriver.com; 
x-originating-ip: [147.11.252.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c80ca26-54db-464b-b076-08d7b4c4aa7f
x-ms-traffictypediagnostic: BYAPR11MB2855:
x-microsoft-antispam-prvs: 
 <BYAPR11MB2855233B2C85C08043E3AA93F5110@BYAPR11MB2855.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(376002)(396003)(346002)(136003)(366004)(39850400004)(199004)(189003)(9686003)(6506007)(71200400001)(66556008)(558084003)(478600001)(316002)(55016002)(64756008)(66476007)(76116006)(66946007)(66446008)(52536014)(5660300002)(8676002)(81156014)(86362001)(81166006)(26005)(33656002)(2906002)(6916009)(8936002)(186003)(7696005);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR11MB2855;H:BYAPR11MB3287.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AXNQ73jXNOhgXVAwozZlCeBsy88gRguXxNN/b0z0c2FXmbuydnvOujh5fX2s/8pCewlgg4snF+ujv2fLeWVnTHD3jcyywTF8tkHgUT4H89kdkCG6veE37orjEPoED+GH4d/F89bVMlAx5dfkZee75XkXdjza0ZyLV98l7lvVKF6O4oaffvB7vlazO6wAW+eGzz6LUJ7fwxeJHrmV0uY1NhkYqJoaj03fxfl5ycOR+pceeSZSNOewszIHYKChY0KED6v+0pkjP9vES5EBC2GOPizuv1/oBbtgl5Pw7HUpBDfW7c+j6ln/TWdtuHjN14s5Ra57Ecn5T1lLNUxz9yKmI+qNVOuDLaScRMnTaWqcyG0v00h6IE/tNwIuYwuNRz6W3QbhyuYBfIuUpxqVSQMrfurCwSUCW+GeRBI3NQwC4b9QfSDH6Nm/XRvkyBOtyVOp
x-ms-exchange-antispam-messagedata: 
 mnRmnRZUR7J6h6vIyAO/n8RAbApnWVGTyMNphypgusf1fW0oBW99MHUuqA1jj3SvWAG/44Ds/bJdFNVpEpHrGVQx7vCJC1EAIfaBTPkVcy9k2dEmyECAJvdmaBJ2TFYYSwqwxSlcAnoFlbzx34B9lQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c80ca26-54db-464b-b076-08d7b4c4aa7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 22:48:26.2191
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yIHuRjOs+bPlNK0vP7lPawCwGoZUzcW1LnqI6IGJih7GhdTmwURfQpkYw8NMiNdn2gGhAHnaQ/s9zvzDwiYqhJwK5Sy9Z2b9DCAm/zv0Lmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2855
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3287DD7722F457AFA67F7053F5110BYAPR11MB3287namp_"

--_000_BYAPR11MB3287DD7722F457AFA67F7053F5110BYAPR11MB3287namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

8J+Rh1RoZSBZb2N0byBQcm9qZWN0IGxpdmUgY29kaW5nIHNlc3Npb25zIGNvbnRpbnVlLg0KV2hl
bjogV2VkLCBGZWIgMTl0aCwgNTowMCBQTSBFdXJvcGUvQmVybGluIHRpbWUNCldoZXJlOiBZb2N0
byBQcm9qZWN0IFR3aXRjaCBjaGFubmVsIOKAkyB0d2l0Y2gudHYveW9jdG9fcHJvamVjdA0KV2hh
dDogSm9zZWYgd2lsbCBzaG93IHlvdSBob3cgdG8gZ2V0IHN0YXJ0ZWQgd2l0aCBDL0MrKyBhcHBs
aWNhdGlvbiBkZXZlbG9wbWVudA0KDQoNCg==

--_000_BYAPR11MB3287DD7722F457AFA67F7053F5110BYAPR11MB3287namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OiJNYWxndW4gR290aGljIjsNCglwYW5vc2UtMToyIDExIDUgMyAy
IDAgMCAyIDAgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3Nl
LTE6MiAxNSA1IDIgMiAyIDQgMyAyIDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToiXEBN
YWxndW4gR290aGljIjsNCglwYW5vc2UtMToyIDExIDUgMyAyIDAgMCAyIDAgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OiJTZWdvZSBVSSBTeW1ib2wiOw0KCXBhbm9zZS0xOjIgMTEgNSAy
IDQgMiA0IDIgMiAzO30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGku
TXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowaW47DQoJbWFyZ2luLWJvdHRvbTou
MDAwMXB0Ow0KCWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMt
c2VyaWY7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6
OTk7DQoJY29sb3I6IzA1NjNDMTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlz
aXRlZCwgc3Bhbi5Nc29IeXBlcmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7
DQoJY29sb3I6Izk1NEY3MjsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1h
aWxTdHlsZTE3DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1p
bHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVm
YXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjEN
Cgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30N
CmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0t
W2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRt
YXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4N
CjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRh
PSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJv
ZHkgbGFuZz0iRU4tVVMiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0RjcyIj4NCjxkaXYgY2xh
c3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9u
dC1mYW1pbHk6JnF1b3Q7U2Vnb2UgVUkgU3ltYm9sJnF1b3Q7LHNhbnMtc2VyaWYiPiYjMTI4MDcx
Ozwvc3Bhbj5UaGUgWW9jdG8gUHJvamVjdCBsaXZlIGNvZGluZyBzZXNzaW9ucyBjb250aW51ZS4N
CjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2hlbjogV2VkLCBGZWIgMTl0
aCwgNTowMCBQTSBFdXJvcGUvQmVybGluIHRpbWU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPldoZXJlOiBZb2N0byBQcm9qZWN0IFR3aXRjaCBjaGFubmVsIOKAkyB0d2l0Y2gu
dHYveW9jdG9fcHJvamVjdDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2hh
dDogSm9zZWYgd2lsbCBzaG93IHlvdSBob3cgdG8gZ2V0IHN0YXJ0ZWQgd2l0aCBDL0MmIzQzOyYj
NDM7IGFwcGxpY2F0aW9uIGRldmVsb3BtZW50PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_BYAPR11MB3287DD7722F457AFA67F7053F5110BYAPR11MB3287namp_--
