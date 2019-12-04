Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.87])
 by mx.groups.io with SMTP id smtpd.web11.1020.1575446882500389452
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 00:08:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ext.actia.fr header.s=selector1 header.b=Uf8hyGJu;
 spf=pass (domain: ext.actia.fr, ip: 40.107.9.87, mailfrom: jean-francois.darocha@ext.actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jfFL3zV5umzUyTraPkcQB2o3K0airrIwB/yCBv0huDVyKJlCA3iMkKi2jY5rO7nZNZh3ixKOBeWwlb17kFv7cJdRr38aAWCH/1+0aautcXgHMtjkUP7wlyxqtrRQ/wXPEa5yVWCyxUlyuiKM+OM6HNTvdFu5n8bZy8cyWFVab/Ay6VLPJ6/ivnX4nxRMKiZP9IV39gF3Qi8e7++8BBe8u1T852rOBErGt3/f8tVv3hYNFjgm4caQMOnLcnCSgLBC5IMlToNn+N4BEapLrvuKAPmFne9FrXGduvDAoaYF9cjGFw/YEc9Vo7+zAz9F2zARR8vmD4/pqYFGzqooEwKT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOUVFus7U/jVRz9HwPK+7TLzG3zNFY38tn1KwSzIovY=;
 b=NnrMUH4dWjzTZK8v9qOupPYjsni9XjLPa5f9KpF5EjhsHWVseG9wepaU9Yt8IBN6bJIziPAL+rOwOjNZH2rmmTRNTDG17QC4d7rs5736ofvk6OiBzt+seayuSzTdFH0EV8KSn/ySqfi00KmARP3FPIOttVK6ir7I6JXF32kbtfQO1EJH8BSb1mdjTvY/OmEcw6hXfWHi9sKWDeefrbwHQYrs0YDMsx47bZiJhjKO7LpZEuffhSJW5eXMA7LJPMxeZ62tlDrV3QRDxrQdIoMdOmg7gb9AT+fZHhHJV8d/MGNTFEI9NTd8c2Uwjg7o0OsIekq2IqMpjuxc2ojczOdenQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ext.actia.fr; dmarc=pass action=none header.from=ext.actia.fr;
 dkim=pass header.d=ext.actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ext.actia.fr;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOUVFus7U/jVRz9HwPK+7TLzG3zNFY38tn1KwSzIovY=;
 b=Uf8hyGJumO9ui1oBTU+PjHs2o323Pftpkza0gzGnKIhiYdPXheBLHbq/aJ+z7dCbYOYouLaez4aHFuw2oMXN2M1eVGcfshoiejirE7x2IEMGPLgMMKB2QjNYNGcJA2r2YjbG7i67zIgpbAM61RreupMq6YpmT8VbcJyQO7DczIU=
Received: from MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM (52.134.50.18) by
 MRXP264MB0901.FRAP264.PROD.OUTLOOK.COM (52.134.46.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 08:08:00 +0000
Received: from MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d959:30a2:ea1e:af1e]) by MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d959:30a2:ea1e:af1e%6]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 08:08:00 +0000
From: =?UTF-8?B?SmVhbiBGcmFuw6dvaXMgREFST0NIQQ==?= <jean-francois.darocha@ext.actia.fr>
To: "morne@linux.com" <morne@linux.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Thread-Topic: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Thread-Index: 
 AQHVqSmcVY2k2lZejkWStwYcoPB5XqenRFuAgADL1RCAAAsRAIAARFkwgAE0AgCAAAy+0A==
Date: Wed, 4 Dec 2019 08:08:00 +0000
Message-ID: 
 <MRXP264MB08071A05F3335C2553E43E93855D0@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
References: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
 <20191202200153.GD1625@archworkstation>
 <MRXP264MB0807D883F3D9EC4C43CC23D385420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
 <20191203085102.GE1625@archworkstation>
 <MRXP264MB0807FCAAB8A4877A750DCA4785420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
 <20191204071804.GA132527@archworkstation>
In-Reply-To: <20191204071804.GA132527@archworkstation>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jean-francois.darocha@ext.actia.fr; 
x-originating-ip: [212.194.216.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 145de263-d779-4a0e-a614-08d778911439
x-ms-traffictypediagnostic: MRXP264MB0901:
x-microsoft-antispam-prvs: 
 <MRXP264MB0901EDD1F3FF225FAF5B4BD2855D0@MRXP264MB0901.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(136003)(366004)(39850400004)(396003)(346002)(376002)(189003)(199004)(25786009)(66556008)(66476007)(33656002)(66946007)(11346002)(5660300002)(76176011)(446003)(6506007)(6246003)(76116006)(64756008)(66446008)(7696005)(81166006)(74316002)(81156014)(478600001)(99286004)(305945005)(8936002)(966005)(14454004)(186003)(102836004)(7736002)(26005)(8676002)(256004)(86362001)(2501003)(316002)(52536014)(229853002)(3846002)(9686003)(6306002)(55016002)(2906002)(6116002)(6436002)(110136005)(71190400001)(71200400001);DIR:OUT;SFP:1101;SCL:1;SRVR:MRXP264MB0901;H:MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: ext.actia.fr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 zvwCEGkcNfK2jbz1vLuTIHIN5s6mOxOsVkm5CfkP1ClBI7Ge4oYnvn0C9VTzZqo5SwYIctG//quYBKXPB87SSySApt6WHwKkReuv8MZgciF+kUHAHvXt6jYAkPjHwTgoXp7Zd00YICoWYS2GcXv3HRZgbPXqGi8px4ptXjs5CLgBrIQH3e3vDDB9+D0NGDv4rqLGjKat1QcQbplklWtRIZ1C+C74mlfROP80XPv6HGrEztie1ccLQ/HAbSvuXpnZLIvKOxa3yYqmtgEmHWgDr3Mi0QKkbLqm7XkBQvWMaaajPwjOJRh7a7H5vrVRsTWiQ0d1C4iMRrow54JEHzzxxDvFWrvjmdnjITEZ214C/M/MZDTnoqhM+98avhX1Jb20k7fAlZxhGkR3y3Lr5J2Q8qaSdGVpkZh88FJ1tsz8aguh93fYEkOLhoGQrSvOcsNwgxXhB3GIXP1/dj80Pn6pqFGs85lWAheAr+b4c0hMFmk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ext.actia.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 145de263-d779-4a0e-a614-08d778911439
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 08:08:00.0208
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6AcP/8P3/SbQJpF8GKdTCctfHY5Di4RCZU9voFYLucWl5s34pSPG1kBJsN4l3Fn+CDOdU11Hl2N+r4E3DGceiAPzW39C5ZamWmJFZ3hLu2ucr553c4D6rheg6YFe3Wy3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRXP264MB0901
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you very much for the suggestion to parse existing builds
Yes, the best way is to listen through different ports via specific configu=
ration.

Have a nice day !
BR/J-Fr+

-----Message d'origine-----
De=A0: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> De la pa=
rt de Morne via Lists.Yoctoproject.Org
Envoy=E9=A0: mercredi 4 d=E9cembre 2019 08:18
=C0=A0: yocto@lists.yoctoproject.org
Cc=A0: yocto@lists.yoctoproject.org
Objet=A0: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP versio=
n ?

>I've got 1 YP image with tftpd and another one with tftp-hpa daemon I'd=20
>like to merge these 2 YP images embedding the both tftp deamons in a=20
>single YP image, Is it possible ?

I suggest having a look at the relevant recipes at the openembedded layer i=
ndex.
You can filter per yocto version. Check if the either of the two recipes li=
st any conflicts. If not, it should be possible, although you would have to=
 make sure you config them not to listen on the same port.

https://layers.openembedded.org/layerindex/branch/master/layers/

		- Morn=E9
