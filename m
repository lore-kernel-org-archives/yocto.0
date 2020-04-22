Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.130])
 by mx.groups.io with SMTP id smtpd.web12.5069.1587571089359901029
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 08:58:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@emutex.onmicrosoft.com header.s=selector2-emutex-onmicrosoft-com header.b=xENqALm0;
 spf=pass (domain: emutex.com, ip: 40.107.21.130, mailfrom: dan.odonovan@emutex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l/1FvPkegnfX5qzR/FMhFNfmr9w1xeGmxvumaZQmYsNm1VreOHCDqwUneIInJnfB1Ibyx4PeQ6YFD9YJRbrnOJ2v59rhscvcHO8ihvspxzL2yDeanrZjgXjbjcV9JhqgG1hfjXVW5L+5zHg2LDep8anEhpeFK/HE+FKlzxzDOBequKKldVgzxeSsMLuSE2dNG0ZQlwZNusZvMtKldLg16cJabTR4BxHKL6lMAA6stkVUvEVo+w1Bp0eTnJS4X5MblH/VzJUc/xT9KEXo3BIlf5ZMIcGoqquXyx6osa9fT+JxfwPGpiex6E2oJa2LHvgJ7T7LMoxITCGrKx0gu/ACkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elwkGTybY8AXL+b8SxZ4TvoGDxXjK1wZWPFAuY+E/OU=;
 b=arWtXxS6v7G4zMj4sZvPQ5QiBfTPPSj8MuktyeSpmrw7zCwAgFf99oRm8ed4dIpZHxoNsb/I/hROS50jZLkPkcmoTQwUxCBS8m35dtsNpsZhiTNaoSqVVF82EESe4Flw3yMzR142U7kr6Mpa5gL43vg/Qunhzo/ujZC24ofF/jJuElpirJGQ5siZTS2Ty7pddLCRavaTTan2cbW/urdKzQd2zdw78TS7dYF3M5P+mVXJXfgRc9cfF/sVqkFJy+T4COSSaE8ortHauhC8xuoBOP4r+qUGO2tEyIHgGeuvvbYNGBlcc/61T7eeGihEa+3vRMxT2Z3rvDmSCd4cuOZkKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emutex.com; dmarc=pass action=none header.from=emutex.com;
 dkim=pass header.d=emutex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=emutex.onmicrosoft.com; s=selector2-emutex-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elwkGTybY8AXL+b8SxZ4TvoGDxXjK1wZWPFAuY+E/OU=;
 b=xENqALm0dA8fXXzv+4/5DqZONOcvBaEM02D+9axr6VZoDKMY1/72CnKmIPQvyJVkwRf3Grb69b5g3KI5dO70+hPqtw4B2pB3G6R1I1nyTYDtU9Hlcz4LUjjP/pA2ValBg01d5Qli+VOef979o1W25NVHHRUkX0sOyG4IBa6/mzU=
Received: from DB6P190MB0277.EURP190.PROD.OUTLOOK.COM (2603:10a6:6:31::27) by
 DB6P190MB0549.EURP190.PROD.OUTLOOK.COM (2603:10a6:6:3b::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Wed, 22 Apr 2020 15:58:06 +0000
Received: from DB6P190MB0277.EURP190.PROD.OUTLOOK.COM
 ([fe80::ad74:84d3:625:114f]) by DB6P190MB0277.EURP190.PROD.OUTLOOK.COM
 ([fe80::ad74:84d3:625:114f%5]) with mapi id 15.20.2921.030; Wed, 22 Apr 2020
 15:58:06 +0000
From: "Dan O'Donovan" <dan.odonovan@emutex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: HELP NEEDED TO ENABLE CUPS IN YOCTO
Thread-Topic: HELP NEEDED TO ENABLE CUPS IN YOCTO
Thread-Index: AQHWGL20Do25DrxN40iSFBsa66P4tA==
Date: Wed, 22 Apr 2020 15:58:06 +0000
Message-ID: 
 <DB6P190MB027724C10B8D23DD78C85440F8D20@DB6P190MB0277.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-IE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=dan.odonovan@emutex.com; 
x-originating-ip: [84.203.17.249]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54958f2b-17be-471c-3f54-08d7e6d5f22f
x-ms-traffictypediagnostic: DB6P190MB0549:
x-microsoft-antispam-prvs: 
 <DB6P190MB054975407836623970BB6A6BF8D20@DB6P190MB0549.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03818C953D
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6P190MB0277.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(396003)(376002)(39830400003)(346002)(366004)(136003)(2906002)(6506007)(9686003)(66556008)(76116006)(66446008)(64756008)(966005)(66946007)(186003)(66476007)(71200400001)(508600001)(7696005)(5660300002)(19627405001)(52536014)(55016002)(6916009)(81156014)(8936002)(86362001)(316002)(26005)(8676002)(33656002)(4744005);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: emutex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LBdMy/oZOc2e/cvsxkW4tuHTiACK1GgzcDIR4t+ejEvcstAdiUumvi4wtzq7lFLjNVSP+ovsA3WfO1ca7FysISsYq7p7HKZwZ6iJQVupbhJLtF1WMWQEhcM13M7uM6j3MZy8BFy0cHuDGgv0YF+lYqYt4L8pDW9twZ4KrslXNmWj4Bh5DOjI7pEttaPVd9Z+fr0+o7OwwFLD9XSLOt3fkJn9Ui4eEOROX+Cx2xa4TVP5A5JGVsux6/R++2dzpGcM05A4/j/q/sRyeGxL/E2Bd8mIB2vWRmkC0/neol2uRMBLAlALX7thXJVSRYGrLx+f2JsQbpwILBwBbfin15toOgEwLsFK22fWIAg/GEJTmQX3Oat97tAxGGTaHyp6yIFXo7ai5v+DcFxRFv00ZW5gSabED43mqk7jjzTAxavZgf06BhZ5gp6au+ygvXJnAg/zWsfREOG3/LOCcZcf/F+2nb5bWI4LO8zW2oJL0NUbpP/LLhdouCnGZISEn6qgu7PiDjFKGtDK4yr0Ikqp7dA0ZQ==
x-ms-exchange-antispam-messagedata: 
 hnEVw+YTMZuQ00sBoRQRwOb9VEJq5ZdSuIF3kackju7ZI/Bj6UoXNbP91gga9osRgzATs+Y9XWhhv9C2u0eEjbSCmsqUE9QBTTP7jPLtNtbI9O0wZjjIfRZnLfMJ7q0Y+NlSlxBJyN0SmxPAdOGX2w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: emutex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54958f2b-17be-471c-3f54-08d7e6d5f22f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 15:58:06.0260
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84cc844b-5c53-4da1-99da-34ef4089ea8e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JlE317P+1CLzsSnAu0pfKQBukrbslrkqCl4OrJu0yjpKx/nBRmpD7IzKjq2SrOh25HKEzjt8yEkxqFjt+Sqkkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6P190MB0549
Content-Language: en-IE
Content-Type: multipart/alternative;
	boundary="_000_DB6P190MB027724C10B8D23DD78C85440F8D20DB6P190MB0277EURP_"

--_000_DB6P190MB027724C10B8D23DD78C85440F8D20DB6P190MB0277EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This meta-printing layer has worked well for me in the past:
https://github.com/rossburton/meta-printing.git

I was using the 'morty' branch with a meta-ti BSP, so I can't testify to ho=
w well it works with other Yocto versions or BSP layers.

In case it helps, these are the recipes that included in the image:

        cups \
        cups-filters \
        ghostscript \
        qpdf \





--_000_DB6P190MB027724C10B8D23DD78C85440F8D20DB6P190MB0277EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This meta-printing layer has worked well for me in the past:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<code><a href=3D"https://github.com/rossburton/meta-printing.git" id=3D"LPl=
nk295372">https://github.com/rossburton/meta-printing.git</a></code><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I was using the 'morty' branch with a meta-ti BSP, so I can't testify to ho=
w well it works with other Yocto versions or BSP layers.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
In case it helps, these are the recipes that included in the image:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre lang=3D"plaintext"><span lang=3D"plaintext">	cups \</span>=0A=
<span lang=3D"plaintext">	cups-filters \</span>=0A=
<span lang=3D"plaintext">	ghostscript \</span>=0A=
<span lang=3D"plaintext">	qpdf \</span>=0A=
<span lang=3D"plaintext"></span>=0A=
</pre>
&nbsp;</div>
</body>
</html>

--_000_DB6P190MB027724C10B8D23DD78C85440F8D20DB6P190MB0277EURP_--
