Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.55])
 by mx.groups.io with SMTP id smtpd.web11.39848.1598608454233428894
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 02:54:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=xg1gMqWy;
 spf=pass (domain: niko.eu, ip: 40.107.22.55, mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0QHj4Pi+yUC63GeQwwA/pkdYO8v4P38S9sI7X88fIIiCzSsadRODcAV3+X3H5Ba5cn4HGBaxTSMAGaE1u3p0DbXoJ9Dwc9rPs8IlfEa0U10dNiIyd/4hmqwPWAsEOIKwtSyeoSOjx03TXlLX0UrZJj6QpdM3ZSwk+jHN5qZViThgcwoIkYfr+96kkuVZux0cWj4vg+rMRU5zQnDaq0z5vVJFOtg6VgchW51ovaLhvs/Vyq0y6vzFcGGU0zlfnnZx38ODfJD+a3k7jn3AqgHSSnVvXSKMMkKmKf1ChOB6PnqrQCBojme0ODkuxVblzqeVdAXbZffBeGX/Bz+CieTkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNZyJ1F2rVXxQIgWJlN8ajPDaCEM1pRY3qpTrKlrukg=;
 b=aiosfIWdKMNhMd6bDUHIq0ylgx/uc/b5tssaEJWzizedFVHx0VJfJ2VLk34oBQVNUK/X+feB7FO/78WL9bussR5JFwTi4fthzgDWcR2y9bO58Ckj7NZpWLYWhwlL6zIocDB6YMTaPVZVISQ+bmzt9supHiu86xRIgqlpiKL3oKHpakMkzsWSlBZX+mNLjvXSTNCiiWYRrWmp++roxA+Jlota21iZ1fQC6s/1MHiM43fbrY4DLmHdScuNBCS4seHwNMWkLdHpMxJrC3QzmmLy3I2GQFNqv90KNYxRdJPvKxDM/a5j9cT+7ZuB6IbvNXJWiIOUiPri2BaYbiPm1PfbMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNZyJ1F2rVXxQIgWJlN8ajPDaCEM1pRY3qpTrKlrukg=;
 b=xg1gMqWyuFpU4nbvRPjPzLQ+8k6Czxq8Z+L57MgCUkR/AYJG1wpCHprPvigoDzRDncNDApgyubq+d4RpHpokjmXpq9DQ65qHrScckvWISH0EnYUA9NfgPsvE5XBws7wAx0Rh5+Xq+lHVQwBVnNPLYA2gN46tzaPfIIZV7Vr1GfI=
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com (2603:10a6:101:1c::10)
 by PR3PR08MB5610.eurprd08.prod.outlook.com (2603:10a6:102:91::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.21; Fri, 28 Aug
 2020 09:54:12 +0000
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1]) by PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1%4]) with mapi id 15.20.3261.026; Fri, 28 Aug 2020
 09:54:12 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: dist folder missing in npm build.
Thread-Topic: dist folder missing in npm build.
Thread-Index: AdZ9IHYbc/gPo1sDSXiR7gxnHDL5ng==
Date: Fri, 28 Aug 2020 09:54:11 +0000
Message-ID: 
 <PR2PR08MB46513AE9AE69434AF6E860EB8B520@PR2PR08MB4651.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=niko.eu;
x-originating-ip: [46.222.242.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a94b7dd-8c8d-4f05-ea05-08d84b3850e6
x-ms-traffictypediagnostic: PR3PR08MB5610:
x-microsoft-antispam-prvs: 
 <PR3PR08MB561058829C0386602138018E8B520@PR3PR08MB5610.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 iEyL5th4Z5CxTf4JJNSI6qfuk78B4FjY61kXGu1A0w1XuRIGjQPayLRT/TN0IFn4zvnxMyJ7bWZPk5t1n0nmd5uoAdTCpUu8K3lQTK/nB3EjaXBo5u6adWBtQr24NH0+JjL1y8KwkdATLvIxLuDZmvV5rf0wBE3sTFA41DiMHD8u92lN4fTbcbOXA+N9AG8xvwwx3GrswWIDq+4Svn0GGAfkEN3UHRSOIFH+KIowsCFAT4KAMyPjHeO39x6lQ4S3aXlS370iYiF5Szt4bTeU4hA/JOiiM0tiZg440AQ7DXgK/+O0XYbJavTVKAiYQzEWsWOjCtOUh9vYEFxaZOSWNw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2PR08MB4651.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(39850400004)(396003)(376002)(366004)(186003)(26005)(66446008)(66946007)(86362001)(71200400001)(64756008)(52536014)(4744005)(8936002)(66476007)(2906002)(33656002)(7696005)(316002)(66556008)(76116006)(5660300002)(6506007)(8676002)(478600001)(55016002)(9686003)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 /DGoiz0RDcikGigvfn/Eh1j/ToddIdITIeebTfIb5Z+7CkbTKysGxs2xIZbKe0ZbRAxXB2SMq5mvzlYHji4huj+EoduGU6DCGDoO27V3ADdq1YPTX5Qy84lC/mD4fm7ty3XAEsl4QSdiTJbcKJ+yiGB41XFHtvtkdmVmL0nS6txZvnug1fuf3Z2PlZHCyQsPJJT9wWoam8Tcf0xDgnsyHgHdOTfyaJh3U8MpIVgvSA7a7zz3jMYmZ1jax2Lv7fp8B6uNvI1lzjPgNN09kq4O7+n1MekNjKVYV1sC5EswD6xANI9UoOQk8UG5uJcZUXyzpSBkrYE4Rui6+KGbuKZ39+kLBT6ud9W8bgJ2zAfA3sssXKuNwuY6tFlxuOJ5W2cOPaBmL1h6W5j8X1g3CH2nath7ehNPmzHnIQqh3p1ZI86Jz/XXnC+iVMBh24ZaAUwghEPzAUSvYhDv15rLh2f2UoykhXuxEITt5HBp2NW2yvM50auROcrkwHq56mhk50L4ph0h43GKs1ZxxkM+Mumg2JxPGEAdZrsd99cNRZreS02CK2paagOQw6HQ3XeHlqSsWEvEFL51Aedj3wZUUjZjMUlhLtyUTh0BRaqGbD2IQAhVrhg027K4CVNU1rvDsXF7y1YbdYAgRsn3Ll89yi3KIA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR2PR08MB4651.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a94b7dd-8c8d-4f05-ea05-08d84b3850e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2020 09:54:11.9617
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XcnY2df9iC2milQAxFbn8tJSZ1dm5J3gERi54aGpAhE5L9gb0wCRMLomjbdfAMyge+LVR4H5Rjom4Q6dXaIIpx6cIJcRgihElLd3ZT4/yOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5610
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PR2PR08MB46513AE9AE69434AF6E860EB8B520PR2PR08MB4651eurp_"

--_000_PR2PR08MB46513AE9AE69434AF6E860EB8B520PR2PR08MB4651eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

i'm trying to reproduce an older recipe that was built with npm. It seems t=
hat the older recipe copied server files from a "dist" folder that now is m=
issing.

I show the install part of the recipe:

do_install() {
    install -d ${D}/usr/httpd/zigbee-ui
    cp -r ${S}/dist/* ${D}/usr/httpd/zigbee-ui
}

Someone knows what happened with this folder?

Regards


--_000_PR2PR08MB46513AE9AE69434AF6E860EB8B520PR2PR08MB4651eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">i&#8217;m trying to reproduce a=
n older recipe that was built with npm. It seems that the older recipe copi=
ed server files from a &#8220;dist&#8221; folder that now is missing.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I show the install part of the =
recipe:<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">do_install() {<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; install -d $=
{D}/usr/httpd/zigbee-ui<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; cp -r ${S}/d=
ist/* ${D}/usr/httpd/zigbee-ui<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone knows what happened wit=
h this folder?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_PR2PR08MB46513AE9AE69434AF6E860EB8B520PR2PR08MB4651eurp_--
