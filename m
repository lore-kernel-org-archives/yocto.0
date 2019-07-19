Return-Path: <krzysztof.taborski@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E2B2E00BD5; Fri, 19 Jul 2019 08:47:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.15.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150103.outbound.protection.outlook.com [40.107.15.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E266AE00B8E
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 08:47:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Sk7E5jK3D1jbHj+9rcd8NKf78NZK0VFHCmPKIHgsvaZLsd6KLHgvYEW6Tr2ZISqWWNrvo7Hp01dE0xDn6QcSis+7fGtszKkSzlSrfxIH2RNrWYASs942fGi3CxUjDP3rJp/gW5YSqVbtKJugs8yc66MFKonHm7GPt3wMTi0lf5LA3SLtsyBz6cZAv3bY75RwmSgD+0iifxHrIvpBo6zLSzVugBPq2fa2gYwJLIdnYiSvBBJ/8QcurMJ3Daqv6AVgOIuKruju37tcfFebc5mk8R0sdAyYOvjCw5SZ0vAZXAzaYccZc32y78mQUArazpUd0B18nTXq0riQuH2mxeBLvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=q7oNAwlvY2VSWgdTftGrIl7tJ2cxxdgK61Q/9xRWhmQ=;
	b=Y/aMVxx5HkUpSi/0VOnvd7t1l0aDfjvZoVhCYNCwEKQIMVYJd3dz9y/LvVeAT03VMEA4SvpEscHcy2vaTnn/tOOTTQgnX7kz7nT9L4J4EKC8y+AAd+c41rcUaOhwLHyckKZqI5ZSrdKyrsfDvhWvZreW0HA0GXgjpKnb357VI5fy0wrfQt7K0SIT5qD9srBHVJ+0ocDOB9GZL+7xqTmw/nxZDSGouWdWUzk2nREBW/ZVkXTjb4rGNAwL9okwtLkSEa052KKyNJcQt3YUENhRqcw9dFbErTMua5COpjqcnIrjtuQWRCyQ08bz7wtkAI4a8h6oiYYUOqOH/wcll+EByQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=nokia.com;dmarc=pass action=none
	header.from=nokia.com;dkim=pass header.d=nokia.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=q7oNAwlvY2VSWgdTftGrIl7tJ2cxxdgK61Q/9xRWhmQ=;
	b=g5ZacVghLk8/Wal23cOy58gp5YMI46SNbEtTv3KyVEA6KET5rNjW0mpP5N0HJcX8zMpzBn1z6V88Y89NDAlmEVUdcnos5L3eiji4wlRW4kll3pPv6ysmPbsduRJ1xLWUO8LF5HyEfpOAv0EP8TqHTdzgfygAOT+Eixq9ljL2MWU=
Received: from AM6PR07MB4868.eurprd07.prod.outlook.com (20.177.119.90) by
	AM6PR07MB4760.eurprd07.prod.outlook.com (20.177.37.223) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2094.10; Fri, 19 Jul 2019 15:47:26 +0000
Received: from AM6PR07MB4868.eurprd07.prod.outlook.com
	([fe80::ac57:f113:5f8d:87ed]) by
	AM6PR07MB4868.eurprd07.prod.outlook.com
	([fe80::ac57:f113:5f8d:87ed%6]) with mapi id 15.20.2115.005;
	Fri, 19 Jul 2019 15:47:26 +0000
From: "Taborski, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.taborski@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipes for gcc-native
Thread-Index: AQHVPkjh6Fk1aqmrF0SLX7ETrz/INA==
Date: Fri, 19 Jul 2019 15:47:26 +0000
Message-ID: <AM6PR07MB48681013AFE59E28FAC8E5F38CCB0@AM6PR07MB4868.eurprd07.prod.outlook.com>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=krzysztof.taborski@nokia.com; 
x-originating-ip: [131.228.32.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 336e5c25-04d3-4b9e-c176-08d70c60660c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
	SRVR:AM6PR07MB4760; 
x-ms-traffictypediagnostic: AM6PR07MB4760:
x-microsoft-antispam-prvs: <AM6PR07MB4760B4E7594382EF0EBBF4D88CCB0@AM6PR07MB4760.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(346002)(366004)(376002)(136003)(39860400002)(396003)(189003)(199004)(25786009)(6916009)(86362001)(6506007)(7736002)(2906002)(486006)(9686003)(54896002)(55016002)(71190400001)(71200400001)(256004)(6436002)(5640700003)(19627405001)(53936002)(3846002)(6116002)(14454004)(7696005)(2351001)(186003)(478600001)(3480700005)(74316002)(5660300002)(105004)(52536014)(476003)(81166006)(81156014)(1730700003)(33656002)(76116006)(64756008)(66446008)(99286004)(66556008)(66476007)(66946007)(102836004)(8936002)(8676002)(68736007)(26005)(66066001)(2501003)(316002)(4744005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR07MB4760;
	H:AM6PR07MB4868.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jaPrxhLLRaeJjr/FyvPhoLctodOttsfUc7NjHz32Mb1VJLwGB4FIS6h8IxkvctVRa4iTtba9Qrnxov0uZw8bc6hfGPWZvLB8sZvM6YKhNbyTircI9zgxhSDeIG8bPkzvvEWSrzLOGUsjjXLfjjPWIRKTrZ5+YZG8eHbg3wObtm6gNA0ubwTPj37g/LT6hCAqTW24QOsMNqtlckhq7SDJ/YP9c3QS7/zjZRCE0et/RlXl6KLD77VAvayNVBkn5/n5egO6UKPUaNeLDe3XGo/6W73jTij9EYCptAnh9wzkjzpb3m5/M6KpjK0kbKmaIlvSt9BhtnmPeWC4Mw2DDjAixEtUITbBZmisjMNdnepz3SAvTYAgafCSa4RDW1YY8Rl6kKEITB8I5aO+sPaApOQJjJxgaTBbrNmLBHkYg7Ad4cs=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336e5c25-04d3-4b9e-c176-08d70c60660c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 15:47:26.3470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: krzysztof.taborski@nokia.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR07MB4760
X-Mailman-Approved-At: Mon, 22 Jul 2019 13:12:26 -0700
Subject: Recipes for gcc-native
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Jul 2019 15:47:29 -0000
Content-Language: pl-PL
Content-Type: multipart/alternative;
	boundary="_000_AM6PR07MB48681013AFE59E28FAC8E5F38CCB0AM6PR07MB4868eurp_"

--_000_AM6PR07MB48681013AFE59E28FAC8E5F38CCB0AM6PR07MB4868eurp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hello,
I am wondering, if there is any reason, that yocto project does not deliver=
s recipes for gcc-native ( in similar way as python-native for example)?

It would allow to build native recipes with different/higher version of gcc=
, than this, which user has on my build servers.


Best regards,

Krzysztof Taborski

--_000_AM6PR07MB48681013AFE59E28FAC8E5F38CCB0AM6PR07MB4868eurp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am wondering, if there is any reason, that yocto project does not deliver=
s recipes for gcc-native ( in similar way as python-native for example)?</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It would allow to build native recipes with different/higher version of gcc=
, than this, which user has on my build servers.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Best regards,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Krzysztof Taborski</p>
</div>
</div>
</body>
</html>

--_000_AM6PR07MB48681013AFE59E28FAC8E5F38CCB0AM6PR07MB4868eurp_--
