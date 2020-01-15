Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.95])
 by mx.groups.io with SMTP id smtpd.web12.5642.1579086704966649069
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 03:11:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=GfwBUQxY;
 spf=pass (domain: prevas.dk, ip: 40.107.21.95, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B44+WHOHRdmZTqDMyqalBH3Z8GAZaZszn9B6HgUsjLaOMXaCzuRjmjZV+Tj5nvkeuu5ZRkAMFpLkI7GyItunHtB5hEJTfpJk4uhYx5H9akkwZZON93uJ29VuroYTT0sMzFfpGCwRqJHl6gQjxiRKCoIZVyas7Lezo+TzKQcVSkUWitI+ZbDO/sJfIzB7I5E5G411b8WdzaLY8uAZA4fppqNiFXiZ7Rdm5brVOK3Gr6QISDoS8GV7W72CsCCAzEK2Ny9w6t0u+RDyckLbEZdtI/QwTtIT634ISnZHb3p/kWmgGZXRcXyyDAnlpQCcI/ctfPpAVrMDzTE9T5aUrXQxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KungmrB/ep5Xp8Hkouz3mje2UZ2pNA3y0/HjuiIRYzY=;
 b=P722nTY/HyHjLO9SPnOzEYHlqJQO0BgFPWtA9AnHYPqy9OkobXsuvQbvrL76AxMRe1DpGiKeqqNB1wiEidZkeV3/toLM8hrc0vuMo7jmVlGN2QfZjY9pR2kxQqQd5BvgyVrcYtv9gHRXhQRIdFtxde/SV7kDNanZuKnPQw44i09cQx2acDpVz/pA58sd8LY5U4wXMVFr2SfQV+kpY6eTXkIJnIkIXym5FVEIJxM9BAigjUQDCTcejl4R10wqkmmU8GjtRNY0QkJ+Ll008Vu01gJl0Pv1H02xMW0mxsEsuOZ1eMwFIgTfR0ldcFF8Ayb8sTE6mxtHI7j0YjNTeinfzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KungmrB/ep5Xp8Hkouz3mje2UZ2pNA3y0/HjuiIRYzY=;
 b=GfwBUQxYI50FUQZ/aaF18NFGgFkkqBldCXy6prXwH71ByNbZcWPmwaHbq7KzSZ1rjDVBctNUA1Z7sgiVnAyoz6VjJG50E9so9yDSepM9FBncoEDQ5UGsjSjzGaK0xR/xB/AnzsjlgcjnaijAvyvt82x8AwIT3Bvvu7tqWgA3+SE=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB2590.EURPRD10.PROD.OUTLOOK.COM (20.178.125.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 11:11:42 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 11:11:42 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1P192CA0022.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend Transport; Wed, 15 Jan 2020 11:11:41 +0000
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] building both musl and glibc based images for same machine
Thread-Topic: [yocto] building both musl and glibc based images for same
 machine
Thread-Index: AQHVyuhJugOnRkNwmEqesh+b9nAXIqfqPUqAgAFWAQA=
Date: Wed, 15 Jan 2020 11:11:41 +0000
Message-ID: <bc0885f8-6b89-500c-fbfa-c7a35d1642b2@prevas.dk>
References: <f0c7df31-e1b6-0b62-eb93-04f009fef5a7@prevas.dk>
 <20200114144733.y3oxivkxq7qzvvda@jholzmayr.localdomain>
In-Reply-To: <20200114144733.y3oxivkxq7qzvvda@jholzmayr.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P192CA0022.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::32)
 To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d42122f-63af-473d-c08e-08d799abb2fb
x-ms-traffictypediagnostic: VI1PR10MB2590:
x-microsoft-antispam-prvs: 
 <VI1PR10MB25905A59CF6FC55DDC0D99A093370@VI1PR10MB2590.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(376002)(396003)(136003)(39850400004)(366004)(346002)(189003)(199004)(8676002)(81166006)(71200400001)(66556008)(52116002)(5660300002)(81156014)(66446008)(66476007)(478600001)(8976002)(4744005)(8936002)(16526019)(2906002)(6486002)(31696002)(186003)(64756008)(66946007)(2616005)(44832011)(956004)(26005)(86362001)(36756003)(6916009)(4326008)(316002)(31686004)(16576012);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB2590;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yC5k2Xd+KP+rylZqquuYQBTcc7D5ypGLYWWJFiWtAbnQ58PS/aXmOB6lgBeOB78ljO3HaE28Rq8925hZKkupb31QAwKDjLtI4oyRJwV6QKjmJ/6oKzLHaLPHD7tbaOLwnpsmh3VNOUqQi4GulNBl5WRsMV9bjgCFhAADbeLVlujuxxv/ygwWWLsfUSSQaVFiRz73RARVgy76q/tLGjMIk8FW6vZWYWGm45coR5QvEUBRNlIzpXYxQtoO/+1QmuiyPVK8TFD3qFF8Ip5/cND9KPdVp4yiYlBQReknFtXT7SxeolsMA3Lai2bSXNa8W53FA4n4pLgPWNRr14pWzyv8VhCLcf/lm9jAZBbKFRpRrQhaMJLIo6y8oukLyrfTv3nTZqAaf4kgb3a84RQQnao/1EefKRKbhHzrd/uIawmxsf6J8o9eHApYMc6O0EKmb87g
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d42122f-63af-473d-c08e-08d799abb2fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 11:11:41.9603
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t5KTrT5ubqxZv2i3XGNnBdYa/o7zk6RChEKDQj8UBIix0VyjOR02GAezzEky0+Oa5Ovus6GGVEnDBMO1JtPXyV0gd9yqMo9ZKDzjOL2UXD4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2590
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <12722FCEF785FC469220DB244660C2B6@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

T24gMTQvMDEvMjAyMCAxNS40NywgSm9zZWYgSG9sem1heXIgd3JvdGU6DQo+IEhvd2R5IQ0KPiAN
Cj4gT24gVHVlLCBKYW4gMTQsIDIwMjAgYXQgMDI6Mzg6MjlQTSArMDAwMCwgUmFzbXVzIFZpbGxl
bW9lcyB3cm90ZToNCj4+IElzIHRoZXJlIHNvbWUgd2F5IHRvIGJ1aWxkIGltYWdlcyBiYXNlZCBv
biBib3RoIG11c2wgYW5kIGdsaWJjIGZvciB0aGUNCj4+IHNhbWUgbWFjaGluZT8NCj4gDQo+IE5v
IHByb2JsZW0gYXQgYWxsIC0gYmUgaXQgZWl0aGVyIHRocm91Z2ggc2VwZXJhdGUgYnVpbGRzLCBv
cg0KPiBtdWx0aWNvbmZpZy4NCg0KVGhhbmtzLCAibXVsdGljb25maWciIHdhcyBhIHRoaW5nIEkg
d2Fzbid0IGF3YXJlIG9mLiBJJ2xsIHNlZSBpZiBJIGNhbg0KZ2V0IHRoYXQgdG8gd29yay4NCg0K
UmFzbXVzDQo=
