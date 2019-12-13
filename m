Received: from CAN01-QB1-obe.outbound.protection.outlook.com (CAN01-QB1-obe.outbound.protection.outlook.com [40.107.66.58])
 by mx.groups.io with SMTP id smtpd.web12.34.1576261615653167298
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 10:26:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@opal-rt.com header.s=selector2 header.b=v+dyIXbK;
 spf=pass (domain: opal-rt.com, ip: 40.107.66.58, mailfrom: kevyn-alexandre.pare@opal-rt.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mRrQfaNk6MHB8cSebLgBMwLItcFS3PdRg50FlYMD5uQa5tYjRbiG8eU2+phgrZsfpPhhg1w2VYxfNlTTSeLdCsoJu5rnbYUz0KSGKn6YHpQYIIolR9Fb2xNgESEyB43mtsRjag2iBRFyEff7hjdO58iavT7kBKYR5zKwFzuli+F1lAE4WlPr5LixZWB0KKbA0y2+cJdVhWtGrTjZX8jPw+uHv8LstyBK7vBYd+mhndzEr3V4pM7Cq3ZhC4dBjCQcp0L6t226I7ZA/C1GKc5xnN1+dWwD2ahSnW9nB9X7quxxFDZ+fqYxXd67FG7VnItbOWjxYAWFSUutKUohML9GFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Oy75h/DjeE91NMYL/VKGqPeOdP5SRLAZuQw0NtMy+Vg=;
 b=c5EUV/nTfFPqKN5coqVTIJEqwqJ6RK3PYsSczPrniaxdcbebQM6RtPWAF5QAWsyvd9MNxLYYXnwwjxWradVkh9Bo81sRninFhcx64AykuOftxT3KgVtqnZD42Dj18cP5BGrjKcjXtTEcpsdX8siR3a2o2KUqk8tNZT07vVfNySQMrAIiU32PXmPYyAmocljGhChFdYiwxj1tnhgpPlXLVY+pbPRShubeSr6Xt6RMaTiM/cdGcRmEAIRfmZ6sQAme2ZUP/LAPj/1PmzosnaNCuoQWJigiXCUW/a98qgJfvQdzKDDAAV1TNpXJwXcteqUBPv/RtAYSYwrQ+LfmqVBBXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=opal-rt.com; dmarc=pass action=none header.from=opal-rt.com;
 dkim=pass header.d=opal-rt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opal-rt.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Oy75h/DjeE91NMYL/VKGqPeOdP5SRLAZuQw0NtMy+Vg=;
 b=v+dyIXbKce+Qlc+AMqr+tuYLpSW2H1S67HTo97Dwu+t6RbJDM5/1QJyEYUxmaVASMMzgDdHjG8nkFyCunb3WASi908UWlRI6LKh1HgCCmcap5cElFzHbfxy+M7/yHVywO6Udws2PRWKqlO2l00xxK4rYINeGvJwrYPh8v0a3osc=
Received: from YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM (10.255.46.18) by
 YTBPR01MB3711.CANPRD01.PROD.OUTLOOK.COM (10.255.45.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Fri, 13 Dec 2019 18:26:54 +0000
Received: from YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::f9ae:61fd:ee71:d794]) by YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::f9ae:61fd:ee71:d794%7]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 18:26:53 +0000
From: "Kevyn-Alexandre Par?" <kevyn-alexandre.pare@opal-rt.com>
To: FLoraVLogs <eripflo@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto server is down
Thread-Topic: [yocto] Yocto server is down
Thread-Index: AQHVsdirorBPlWD4dUu6EscNqZJTyae4Vq9XgAAJrYCAAAD0EA==
Date: Fri, 13 Dec 2019 18:26:53 +0000
Message-ID: 
 <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
References: 
 <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>,<CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
In-Reply-To: 
 <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Kevyn-Alexandre.Pare@opal-rt.com; 
x-originating-ip: [38.127.66.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b400c166-821f-43b8-efd6-08d77ffa076e
x-ms-traffictypediagnostic: YTBPR01MB3711:
x-microsoft-antispam-prvs: 
 <YTBPR01MB3711557F9468ED1BFB1BAD248A540@YTBPR01MB3711.CANPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(39840400004)(136003)(366004)(376002)(189003)(199004)(71200400001)(478600001)(4744005)(26005)(5660300002)(6506007)(53546011)(186003)(7696005)(8676002)(6916009)(81156014)(81166006)(76116006)(8936002)(966005)(86362001)(2906002)(9686003)(66446008)(52536014)(64756008)(66476007)(55016002)(316002)(4326008)(33656002)(66556008)(66946007);DIR:OUT;SFP:1101;SCL:1;SRVR:YTBPR01MB3711;H:YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: opal-rt.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gBFRj7JUxqaXsYxExHEr3V7l3f4qugY2UwwCmEzBDbaKgBkOuwbOOaAjYyNX3wngx6mziWHlBMXML77JOMqazBTiccJF2n0EezOj0pNaZSnzp/8vs8a+W0keWPFIlhNYT/CjM5+e8+bFucCh4eGJyyKGw3uUoNy9q7GFd8BfurFNjVn6yTG3xPcIkiUkTNCx5oOoQNO5JzJjbZiQoKcIHfIYpLtZ0ma+4twBlnOU5863mjPtJGEb0NQE7vDchnKMt3RYN21mETlX3Z+5deG0lDb5B12mhsBjosRiQCWKrAaAZSpVBJwBTGVo693NkbkQ6p1+yYWWJmxC0vGeIksJnHPkEe4vI7MLZqZ+anzozsOOzigNBgDKkjjicxrsfxyd3uwxMZGCY9or8NpZRfq/DNDxZGHcRVTvSllTy+wISy/3xGbck8bec80IIkPGhHQjv2pirEc8Gr4l+cVM1JHiqsdeEW1zwxzhF7uBT21spKw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: opal-rt.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b400c166-821f-43b8-efd6-08d77ffa076e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 18:26:53.8777
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 477eb058-b825-4407-b32a-a4b972958c2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vSKp1DZLCm2YlwK4DVkFWdhdh4/llY6WU7ska51hLEXhuASUIv649O9mD2RStMRR+YgMPOVmF4GHlfTFionPe6N4/ySn0QWL+we9LIfI9Bc/D9JvcY7qQGc8uqeVsJB3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YTBPR01MB3711
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm setting=0A=
=0A=
TMPDIR=3D<PATH>/build/tmp=0A=
DL_DIR=3D<PATH>/build/downloads=0A=
SSTATE_DIR=3D<PATH>/build/sstate-cache=0A=
=0A=
Also ref:=0A=
=0A=
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#repli=
cating-a-build-offline=0A=
=0A=
-KA=0A=
=0A=
=0A=
From: FLoraVLogs <eripflo@gmail.com>=0A=
=0A=
Sent: Friday, December 13, 2019 13:20=0A=
=0A=
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>=0A=
=0A=
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>=0A=
=0A=
Subject: Re: [yocto] Yocto server is down=0A=
=0A=
=A0=0A=
=0A=
=0A=
=0A=
=0A=
I did those changes:=0A=
 SOURCE_MIRROR_URL=A0?=3D "file:///source_mirror/sources/"=0A=
 INHERIT +=3D "own-mirrors" =0A=
 BB_GENERATE_MIRROR_TARBALLS =3D "1"=0A=
=0A=
=0A=
=0A=
=0A=
But still I am running into bake issues.=A0=0A=
where source_mirror_url path is my custom path=0A=
rest I left as same.=0A=
=0A=
=0A=
=0A=
Am I missing something?=0A=
=0A=
=0A=
=0A=
I see {source_mirror_url} is invalid and cannot be interpreted.=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Regards,=0A=
=0A=
=0A=
=0A=
Ripu=0A=
=0A=
=0A=
=0A=
