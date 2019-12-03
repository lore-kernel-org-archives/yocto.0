Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.44])
 by mx.groups.io with SMTP id smtpd.web11.5413.1575377915844121455
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 04:58:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ext.actia.fr header.s=selector1 header.b=dVyDTkj1;
 spf=pass (domain: ext.actia.fr, ip: 40.107.9.44, mailfrom: jean-francois.darocha@ext.actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VX8hxYHih8PM+aVWtjUCr9keM15cKKwh6Y9Hzso3KqbQdr7pwD4XuAYjdGZRk9UMLTQDx5dgwb7B+woHiPNNd0s4NRadQZsvWONRts7RJmSc5CcMbfwRtSYPoIj55BRT9+MTiynaA26hbGAiAXCG0LznuFRNc6o7zYyisBucryyzoTJc84BLJ3IhAWKhMqtQMBokQQ70edQjrgANwa/JaUU/ZGpxUpoQry9fj5zmxi0F/CoJXZ6+nbSYdq+nbTrhZiLrk2g58QNUqhJ4wOlt9EAEYjixsQ45ssKWuzWt7iOuTY4JJ7AJ65GiruRaog+tYiEwt2QWKGPPqo5t5PUOYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XcA2c4L9oGZg1m26zgnXiu5q5nanvGZ1PXqawn6/aEg=;
 b=ktneYjRMIdaP8fS5jbCoLIPAL6UyeVcxwoU2LPtfxGGuL1kF0IBIDbAq24W/PWRC6EQhZc1pbhWwg2m53xjnnhu91zi0W8Oa0oY0lTqqeLqKDN6IwsSlDeYFWUtJmOdjE6b9S0/650uZSeNBiF8mBeL6F0tWG24xKkFRb9x2lK5kaRniDWxR6mWkCTB+zrQsuFd2uJbxyzB+cXHEzL/NkNNRFpgE93WH/vdsBbVS0zbIZTZC07SLV7Ym5JSt2osp5fBRZ9PnAUQ/EW2hSllQRFKZuF5wV4TAvIfvovgE+t0kqtBlVw5ZFAtFay0vXJQy519lN0TW2OfbulruAS01+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ext.actia.fr; dmarc=pass action=none header.from=ext.actia.fr;
 dkim=pass header.d=ext.actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ext.actia.fr;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XcA2c4L9oGZg1m26zgnXiu5q5nanvGZ1PXqawn6/aEg=;
 b=dVyDTkj1AXyOieuLyVPbaLncsrZS/EBQuTV3TpfGX9VxV6DMJrQLo8ubR2L14Mn7T3uBAx6iTKcvr0d1stwdiLY8hwY1iVee4V6efXvga/oClAWJSZpWrF7uAMjYkHnYkh0+JVQSkHhSEnHLNX3ggLY4f/s2wq0Ewc0BkkNOC+w=
Received: from MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM (52.134.50.18) by
 MRXP264MB0677.FRAP264.PROD.OUTLOOK.COM (52.134.48.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 12:58:32 +0000
Received: from MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d959:30a2:ea1e:af1e]) by MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d959:30a2:ea1e:af1e%6]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 12:58:32 +0000
From: =?UTF-8?B?SmVhbiBGcmFuw6dvaXMgREFST0NIQQ==?= <jean-francois.darocha@ext.actia.fr>
To: "morne@linux.com" <morne@linux.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Thread-Topic: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Thread-Index: AQHVqSmcVY2k2lZejkWStwYcoPB5XqenRFuAgADL1RCAAAsRAIAARFkw
Date: Tue, 3 Dec 2019 12:58:32 +0000
Message-ID: 
 <MRXP264MB0807FCAAB8A4877A750DCA4785420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
References: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
 <20191202200153.GD1625@archworkstation>
 <MRXP264MB0807D883F3D9EC4C43CC23D385420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
 <20191203085102.GE1625@archworkstation>
In-Reply-To: <20191203085102.GE1625@archworkstation>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jean-francois.darocha@ext.actia.fr; 
x-originating-ip: [212.194.216.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3cc74e6-85d6-4f9e-4319-08d777f08055
x-ms-traffictypediagnostic: MRXP264MB0677:
x-microsoft-antispam-prvs: 
 <MRXP264MB0677083DB71F5FB62DC7158F85420@MRXP264MB0677.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(136003)(376002)(366004)(396003)(39850400004)(346002)(189003)(199004)(478600001)(33656002)(9686003)(25786009)(5660300002)(3846002)(55016002)(66476007)(6436002)(229853002)(6116002)(256004)(110136005)(86362001)(2501003)(14454004)(2906002)(81156014)(81166006)(8936002)(66446008)(74316002)(66946007)(66556008)(64756008)(76116006)(8676002)(99286004)(52536014)(7736002)(186003)(305945005)(102836004)(446003)(11346002)(6506007)(316002)(6246003)(71190400001)(4744005)(71200400001)(76176011)(26005)(7696005);DIR:OUT;SFP:1101;SCL:1;SRVR:MRXP264MB0677;H:MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: ext.actia.fr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VVaxO4uyyQwAvhsd8jZjJ28tckdQpg8FQfFZbH8v/zohPtj7qUubGbcCzpr6M0zIwr3fICQ6itDDMD6PpPhWkGGxtSob5yJ16QXa30mGxrMyaCtE3fUrFoFJbbe9FfZHWwi2CSuKrDw0agyDW5iiaMFubydUHozDvNue3bq4vsctfozveESwPK2C5Z7tslNWqXGqqj5xwAR9C42wxcqPYwrd1OK5ZtrgTGphrguA9ArCtS4cRe/7M/M5Nvkz+lZ9v0fL7VohBRX94qEw8Pb5duiQIc6uq7KAjHsr14LgXzvU2yEqGposA/s0s9bQZ64Is6K5CGQJ+I9PdC5G9zouqivdXZuxFHmyngXWZJ6/sRL3cnaNkpstbPIfml9ORtWhMiBwG6V02CtqlWpUN5f9vHOoUm1hlIX3b4UtlP641fg7JMsqhPNa4QPVXh+p+XKr
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ext.actia.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: a3cc74e6-85d6-4f9e-4319-08d777f08055
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 12:58:32.4032
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iRiUHCceTT+kCEsA+HiX/Ueqbcs6KKd9zaAObVCmnYEYptM21bBBRRvGTt3+daUbFvlqllY7yafmeYdFwBVfEOrMZm1mjtGI01XEi+Et64QtXPljnh/wETN5yrIAgydS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRXP264MB0677
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sure,

I've got 1 YP image with tftpd and another one with tftp-hpa daemon
I'd like to merge these 2 YP images embedding the both tftp deamons in a si=
ngle YP image, Is it possible ?

BR / J-Fr+

-----Message d'origine-----
De=A0: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> De la pa=
rt de Morne via Lists.Yoctoproject.Org
Envoy=E9=A0: mardi 3 d=E9cembre 2019 09:51
=C0=A0: yocto@lists.yoctoproject.org
Cc=A0: yocto@lists.yoctoproject.org
Objet=A0: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP versio=
n ?

>I'm looking for a trigger to handle both tftp deamons (tftpd and=20
>tftp-hpa) but could we have an YP image embedding these 2 tftp servers ? Y=
ou said Yes.
>If it's handling could be done through a simple U-Boot configuration=20
>then itanswers to my question, but what could this trigger be at the runti=
me ?

I think I misunderstood your original question...Can you explain in detail =
again exactly what you are trying to accomplish ?

		- Morn=E9
