Received: from GCC02-DM3-obe.outbound.protection.outlook.com (GCC02-DM3-obe.outbound.protection.outlook.com [40.107.91.61])
 by mx.groups.io with SMTP id smtpd.web10.2832.1575459738973083607
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 03:42:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sri.com header.s=selector1 header.b=YmjmbfCO;
 spf=pass (domain: sri.com, ip: 40.107.91.61, mailfrom: aaron.solochek@sri.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMbwxoGBc3c6fzdlLBqdHZz7FOSe6p0lS3xvkbPK+EV5s8FeP1XKOvUBuqfL9clWMIqp6GaDyKiIS2oFn9gquY8+OaYqnd0boaBD+yRwmGZjxlytDjXbnV/CBWnKQIYQ9L4hnXxKRHcrbkmKS07mOMKgk57Gb05RSyMiSd9cJGWvTfPURWTmVwnHvdiGBlu+4cNt49zY3ihwRVet2CSWDa25lO64wL80aTwFASpbxt92dSnJXyix48E8Gpst7cawrELf/8x2o3pMbLzaalS81UkdTvbeYGs/IZL7AieJEakWl8VDUWu0K8/Z5/9xFleSTOHy6o93ubCWgUSHIig84A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Em/I/ins9M+wRmiop+OVhmzDA8J5RFqMqDDYwCDso8I=;
 b=G9gKUpu2QjfqTwKWp2RjIfETGMv+EGtSXOAemQOuYcpJnyUoWFSdgGXSUUgh+Aa+X2gItxHhM72T2baqxl40iYSNVEZTppPeWctfzqHl3X5dtOHANW6aS2TpMuH1Oi/P0Z4zayZZ8AUMhjgxh6DqNX8kiUtItPExAJQFQg1kLdMAjdWk5VkKpYj4gvfUCYbgxTLCwdaHEgK23B63Vre47WuQc2fA08wzrKOVXX323NShKTYQZfw12UKwAy/r//16kahtIbFrN8g1j9M6pFEZSClNne2pRSGia0lG7rGPCPcI1mO1/S86Us2gkUIephI6xFJrPuK9OkHnWFigLW1PPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sri.com; dmarc=pass action=none header.from=sri.com; dkim=pass
 header.d=sri.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sri.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Em/I/ins9M+wRmiop+OVhmzDA8J5RFqMqDDYwCDso8I=;
 b=YmjmbfCOV2eqKkwCRsAVAwr05ZZGbIazs8qDHd63NZBDDIVKJsW0UUkK6z9nzhbXZhUSlIfkwSltTICsE63gB5pZaQ202EA0YVhEOEFiyOkraM4m+t4+E45HjCHArsYYvp+iO9rRaFTf+653cclWKYmUFXSfy1eeIHEe4gBqQSM=
Received: from CY4PR09MB1207.namprd09.prod.outlook.com (10.172.67.9) by
 CY4PR09MB1269.namprd09.prod.outlook.com (10.172.70.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Wed, 4 Dec 2019 11:42:17 +0000
Received: from CY4PR09MB1207.namprd09.prod.outlook.com
 ([fe80::78e0:827d:821d:bfc3]) by CY4PR09MB1207.namprd09.prod.outlook.com
 ([fe80::78e0:827d:821d:bfc3%8]) with mapi id 15.20.2516.013; Wed, 4 Dec 2019
 11:42:17 +0000
From: "Aaron Solochek" <aaron.solochek@sri.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Error trying to add repo file to image
Thread-Topic: Error trying to add repo file to image
Thread-Index: AQHVqpfY+u0ticBQ3EOBOg1bYLOylg==
Date: Wed, 4 Dec 2019 11:42:16 +0000
Message-ID: 
 <CY4PR09MB12071BED5DE3858CE70D067B9A5D0@CY4PR09MB1207.namprd09.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.solochek@sri.com; 
x-originating-ip: [23.30.100.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9f9afa7-5247-472a-ae16-08d778af039c
x-ms-traffictypediagnostic: CY4PR09MB1269:
x-microsoft-antispam-prvs: 
 <CY4PR09MB1269976BB42FABDBE4085BC19A5D0@CY4PR09MB1269.namprd09.prod.outlook.com>
x-safelist: Domain-whitelisted
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(396003)(376002)(366004)(136003)(39850400004)(346002)(189003)(199004)(20264003)(66556008)(6916009)(8936002)(99286004)(6116002)(4744005)(55016002)(9686003)(52536014)(25786009)(66476007)(33656002)(3846002)(66446008)(54896002)(64756008)(76116006)(5660300002)(91956017)(14454004)(2906002)(2501003)(74316002)(2351001)(81166006)(6506007)(186003)(7736002)(71200400001)(26005)(66946007)(102836004)(8676002)(1730700003)(6436002)(7696005)(71190400001)(5640700003)(44832011)(81156014)(86362001)(478600001)(316002);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR09MB1269;H:CY4PR09MB1207.namprd09.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: sri.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6n+BNbdeP6csEEDFc8JEbvSKg6QN1V49eHaVAvzxxgmRWlKqhAIe9EFuRKAfbrhFyeCSiXoRUlhG90E48GEAhxSbz0G6BN7CyOc/fLHK5ze1ERmHHxb4p+nPN5ZJ0eev+8+mQ8ztCn0DY0WR8wPB9uLhipsLdonU82qyyQAAmFQDG4y0vUWHY+oGLdUEvMegNzQS2yl98EqH3DjJUyGZqDKXVsW5RVVn+53MvE8SlqGiKXidYbWUml3MU1hy3DSXBDKaEquUujbcsZmHPmlAEgSJa7IAepjgT3TAJek5T8wGj5xj46Wsw3YvyjW85ysHnzKB80Aq2wUDqPISFqrJe5mCUrH6tePYnh6V+QPM5pdzeH+ZPTr3fNf6p97X5YTbY7SFh7dgOOZIqqsPIWTcZKIG99NIuJ5iex2f7gMcFkyWikS/w1QjcX/U4KaRavoG+WOzt/+LU3eINnMJI6ZxKHZ+/kkTQvnigopI/WCRDohOyjrKxDW6Ei6ZscgZxv1V
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sri.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f9afa7-5247-472a-ae16-08d778af039c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 11:42:16.9095
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40779d33-79c4-4626-b8bf-140c4d5e9075
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uo7z/szFU7mvM6TrvBtAdxGY5P57CTjph5Wz/nxhLEkepvm0pkXi0b10yQ7a9EvES93QMmwB8yN8XssIQLWGNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR09MB1269
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR09MB12071BED5DE3858CE70D067B9A5D0CY4PR09MB1207namp_"

--_000_CY4PR09MB12071BED5DE3858CE70D067B9A5D0CY4PR09MB1207namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to make an image (this is for an i.MX8, although I don=92t thin=
k it matters for this question) that contains a dnf repo in it. I created a=
 dnf_%.bbappend file in my layer with the following contents:

LICENSE =3D "CLOSED"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D " \
file://my.repo \
"

do_install_append () {
install -d ${D}${sysconfdir}/yum.repos.d/
install -m 0644 ${WORKDIR}/my.repo ${D}${sysconfdir}/yum.repos.d/
}

FILES_${PN} +=3D " \
${sysconfdir}/yum.repos.d/my.repo \
"

This same structure works fine for base-files, but for dnf I get the follow=
ing error:

[log_check] Failed to synchronize cache for repo 'oe-packages', disabling.


Can anyone tell me what is happening and how to fix it?

Thank you.

-Aaron


--_000_CY4PR09MB12071BED5DE3858CE70D067B9A5D0CY4PR09MB1207namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr" text-align=3D"left">
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
Hello,</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
I am trying to make an image (this is for an i.MX8, although I don=92t thin=
k it matters for this question) that contains a dnf repo in it. I created a=
 dnf_%.bbappend file in my layer with the following contents:</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
LICENSE =3D &quot;CLOSED&quot;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
SRC_URI &#43;=3D &quot; \</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
file://my.repo \</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&quot;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
do_install_append () {</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
install -d ${D}${sysconfdir}/yum.repos.d/</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
install -m 0644 ${WORKDIR}/my.repo ${D}${sysconfdir}/yum.repos.d/</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
}</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
FILES_${PN} &#43;=3D &quot; \</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
${sysconfdir}/yum.repos.d/my.repo \</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&quot;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
This same structure works fine for base-files, but for dnf I get the follow=
ing error:</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
[log_check] Failed to synchronize cache for repo 'oe-packages', disabling.<=
/div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
Can anyone tell me what is happening and how to fix it?</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
Thank you.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
&nbsp;</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"ltr">
-Aaron</div>
<div data-ogsc=3D"" style=3D"text-align: left;" dir=3D"ltr"><br>
</div>
</div>
</body>
</html>

--_000_CY4PR09MB12071BED5DE3858CE70D067B9A5D0CY4PR09MB1207namp_--
