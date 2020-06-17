Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.134])
 by mx.groups.io with SMTP id smtpd.web12.5000.1592392003029905093
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 04:06:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=KExvzKIO;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.22.134, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGbRCd0WdUZkknrjAP4zwWqJ0weWwoDYp0n/kTulBnIQMEzuImYJpITQxpiNqqSdB+8D2wsbzA6fFipYALGlQGTy3hToxzGiypZ5ycGOKdL7rcn2bvmUUiFgGXLH3k/4KpbVsyXi2BbTRe/BKTYM5pYSf01SBs1kcif0j5C59poKAWqRZcWxo6n0x5SYpU13T24MXF6S2QI9AsjrHiu+P9I2wyQavQcug0O+TkOwTbS4uDbeka4uZyTcks3z+9+vGuKPA9Bhs6rQOFEBF3FyeVQk1SylbP0+TxdX5PNe1Mnd65Ut60RNn49jWEIJEQ2ZcXcu7NO2C1n7sV+/qXPnOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GU9ExM8VwLyGfsUvklgwOi9xI1+QTRnMqbQlUlBbkTo=;
 b=QHGcJKliv4BMa+hDph7vDapSAC0BrzOagP8xT+r2GGyE2WaRiIS8+ULrTYMnkfDobmSlB03qBiqjp72d52EczsX8/tfa8wbkxanPRdEJsS7z+GikGs+bLLAvjJg1/1zxhys5e63fSpvmzZvjdzG0dOXcXCLNQ4BcWcG9moBcoLtetrhQ+8xj/hfJ/Sw45vTjfOrVLR/fLaTjRb6VDxf9pEIQ9LIrFBXL2T4kZH7lThE2Y8KsybmCErA+6/AWlf5G4QM2krflJEXdRlgTRCAOxNuvzf8VwulRn7pOiOpF++B0qzxgJdV9lVeO6tS8iW7DlXkHqEehnT3W0qGuVA17xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GU9ExM8VwLyGfsUvklgwOi9xI1+QTRnMqbQlUlBbkTo=;
 b=KExvzKIO18QlNFtmalBVIX+zEh86eNh7fsRL1+VFZ8wK4ubiYXnkJ3GOWQBzmi29YdNTv0p1TL2/z0G87DXQxzSdE5jOnF1ECNxxSC4znWg/Qi6j6CdTjMI7Bq/qnR7dWNn+1U65KcyzjbV1ldxt96r/HbgTkelDwjfNh4p4F0U=
Received: from AM0PR03MB3714.eurprd03.prod.outlook.com (2603:10a6:208:44::25)
 by AM0PR03MB6323.eurprd03.prod.outlook.com (2603:10a6:20b:159::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.20; Wed, 17 Jun
 2020 11:06:41 +0000
Received: from AM0PR03MB3714.eurprd03.prod.outlook.com
 ([fe80::a135:ccbf:a45b:d11b]) by AM0PR03MB3714.eurprd03.prod.outlook.com
 ([fe80::a135:ccbf:a45b:d11b%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 11:06:40 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: "robert.varga@getinge.com" <robert.varga@getinge.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: Enable systemd service with unit template instance on startup
Thread-Topic: Enable systemd service with unit template instance on startup
Thread-Index: AdZEgc2oK2v3KgogRgGOP636ZxTvhgAFWPzA
Date: Wed, 17 Jun 2020 11:06:40 +0000
Message-ID: 
 <AM0PR03MB37142015675C68049E2FA92FFE9A0@AM0PR03MB3714.eurprd03.prod.outlook.com>
References: 
 <AM0PR02MB4563D7A2CA31B60D5661E32B979A0@AM0PR02MB4563.eurprd02.prod.outlook.com>
In-Reply-To: 
 <AM0PR02MB4563D7A2CA31B60D5661E32B979A0@AM0PR02MB4563.eurprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: getinge.com; dkim=none (message not signed)
 header.d=none;getinge.com; dmarc=none action=none header.from=codewrights.de;
x-originating-ip: [88.130.71.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc17bb5d-168e-4622-614a-08d812ae8355
x-ms-traffictypediagnostic: AM0PR03MB6323:
x-microsoft-antispam-prvs: 
 <AM0PR03MB63234C7D0AE5D373888C77EFFE9A0@AM0PR03MB6323.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GDPEI9iey6ZnlMfV+Htmf3NWcIOtrogfJyda53Ul23XONsJySXevv+Kz6Je+DAf+OJ90A2WvwQ4SMd6MvUEgWr0BUIY28kJaIKPWEdUtvQr4qOxnNkCHCv0UWV7N81hFmRIwd8dVVzGP0ybBGnJ82CmdszePuqCaGNDdYtEOXKYIaSyRv+7sIhJ2D1G1/r0iL03emLtuwBLIgpCeOUJgRJ+GHrjx86mvo32NnTkJWY03qEYtlzV5syi/Xy8la6GX7shTe5kfGdBue+uAH5iGUsAXBPRt+mbsdsN7p31whIM1Jzk9TO5zPGZd35eREEDr
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR03MB3714.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(376002)(136003)(396003)(346002)(39830400003)(5660300002)(52536014)(71200400001)(19627235002)(6506007)(186003)(110136005)(316002)(26005)(7696005)(33656002)(508600001)(8676002)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(2906002)(8936002)(86362001)(9686003)(83380400001)(55016002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 iFL7b4anMzClbYuate0eG7Hnf18CTi06wfOCWoRhTeFV8lzYkp2NYrasOcsdLHyNMvV/Sey8jkdJy/PyLXNpkiEgf9Sxmy3cmjmWSsbzcdHUdOWZMM/dt3qz9QcEPXqIrmwpvnTZpjt1nnZG7hWV8bEMNxdSNX0VbqgIGzuOrKoLujmqQQnB6non6VXiWyR39FuBAHBjaRSrUMm93hfgr9bdTwfWzT8YVzrSJVvRyI5SU1FQhPAgIwFbrBxylmwoqSbbBTqOljPNKlAXaBOVyHlchTNvn1+K+1tc4frv1GLIrH2KA8ClcJYZmOhRUKLB3yv0hqHpml0en7MO0PbpfsCrxSy+NFyMTUa89Hg+WUCKz9bKKdddRgUImJFkRQCrjiIaCFnCNcR+cHEJk4bDdCuG/4vbMYMpQ1ciXy0fYqgMNqFCGGkG5s1VMg0mqFHy9m3Vl6d2DSG39UAa5keM5BmbsDjsk/bu6VJH1stCnEY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: dc17bb5d-168e-4622-614a-08d812ae8355
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 11:06:40.9435
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZhYOKdq9oNm/YXmBd+vKm7EtvQ34Yr7sj8TJhcQMR6/W5tQpBwvNKGTUyEgvNPNC+ZPJGOvfocTB7y74J9pE/u3TxEgjL+VuufYpD8MiQD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB6323
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0PR03MB37142015675C68049E2FA92FFE9A0AM0PR03MB3714eurp_"

--_000_AM0PR03MB37142015675C68049E2FA92FFE9A0AM0PR03MB3714eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Why is

SYSTEMD_SERVICE_${PN} =3D " \
  can@can0.service<mailto:can@can0.service> \
"

and not

SYSTEMD_SERVICE_${PN} =3D " \
  can@.service<mailto:can@.service> \
"

?




Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag=
 von Robert Varga via lists.yoctoproject.org
Gesendet: Wednesday, 17 June 2020 10:35
An: yocto@lists.yoctoproject.org
Betreff: [yocto] Enable systemd service with unit template instance on star=
tup

I am new to yocto and I am using systemd as the init manager. I'd like to s=
tart a service (initializing CAN interface) at boot time. The service is a =
template and its name is can@.service<mailto:can@.service>:

[Unit]
Description=3DCAN Interface %I
Before=3Dmulti-user.target

[Service]
Type=3Doneshot
RemainAfterExit=3Dyes
ExecStartPre=3D/sbin/ip link set %I type can bitrate 250000
ExecStart=3D/sbin/ip link set %I up
ExecStop=3D/sbin/ip link set %I down

[Install]
WantedBy=3Dmulti-user.target

I wrote a recipe can-systemd.bb in order to install the service mentioned a=
bove:

SUMMARY =3D "Configuration file to set up CAN interface"
DESCRIPTION =3D "Used to setup the CAN interface"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302<file://$%7bCOMMON_LICENSE_DIR%7d/MIT;md5=3D0835ade698e0b=
cf8506ecda2f7b4f302>"

inherit systemd

SYSTEMD_SERVICE_${PN} =3D " \
  can@can0.service<mailto:can@can0.service> \
"

SRC_URI_append =3D " \
  file://can@.service \
"

FILES_${PN} +=3D " \
  ${sysconfdir}/systemd/system/can@.service<mailto:$%7bsysconfdir%7d/system=
d/system/can@.service> \
"

do_install_append() {
  install -d ${D}${sysconfdir}/systemd/system
  install -m 0644 ${WORKDIR}/can@.service<mailto:$%7bWORKDIR%7d/can@.servic=
e> ${D}${sysconfdir}/systemd/system
}

When I run bitbake to create the image, I would expect that a symlink (can@=
can0.service<mailto:can@can0.service> -> /etc/systemd/system/can@.service<m=
ailto:/etc/systemd/system/can@.service>) in the folder /etc/systemd/system/=
multi-user.target.wants should be generated. But this is not the case.

I think, the SYSTEMD_SERVICE_${PN}... assignment should create that link. I=
s this correct, or does anyone could show me how to start an instance of th=
e template of this service.

Thanks for your support.

Rob

This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to which they are addressed.=
 If you have received this email in error please notify the system manager.=
 This message contains confidential information and is intended only for th=
e individual named. If you are not the named addressee you should not disse=
minate, distribute or copy this e-mail. Please notify the sender immediatel=
y by e-mail if you have received this e-mail by mistake and delete this e-m=
ail from your system. If you are not the intended recipient you are notifie=
d that disclosing, copying, distributing or taking any action in reliance o=
n the contents of this information is strictly prohibited.

--_000_AM0PR03MB37142015675C68049E2FA92FFE9A0AM0PR03MB3714eurp_
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
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.E-MailFormatvorlage21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"en-DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Why is <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SYSTEMD_SERVICE_${PN} =3D &quot=
; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; </span><span lang=3D"DE"=
><a href=3D"mailto:can@can0.service"><span lang=3D"EN-US">can@can0.service<=
/span></a></span><span lang=3D"EN-US"> \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">and not <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SYSTEMD_SERVICE_${PN} =3D &quot=
; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; <a href=3D"mailto:can@.s=
ervice">can@.service</a> \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"DE" style=3D"mso-fareast-language:#=
2000">Von:</span></b><span lang=3D"DE" style=3D"mso-fareast-language:#2000"=
> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;
<b>Im Auftrag von </b>Robert Varga via lists.yoctoproject.org<br>
<b>Gesendet:</b> Wednesday, 17 June 2020 10:35<br>
<b>An:</b> yocto@lists.yoctoproject.org<br>
<b>Betreff:</b> [yocto] Enable systemd service with unit template instance =
on startup<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am new to yocto and I am usin=
g systemd as the init manager. I&#8217;d like to start a service (initializ=
ing CAN interface) at boot time. The service is a template and its name is
<a href=3D"mailto:can@.service">can@.service</a>:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[Unit]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Description=3DCAN Interface %I<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Before=3Dmulti-user.target<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[Service]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Type=3Doneshot<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">RemainAfterExit=3Dyes<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ExecStartPre=3D/sbin/ip link se=
t %I type can bitrate 250000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ExecStart=3D/sbin/ip link set %=
I up<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ExecStop=3D/sbin/ip link set %I=
 down<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[Install]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WantedBy=3Dmulti-user.target<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I wrote a recipe can-systemd.bb=
 in order to install the service mentioned above:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SUMMARY =3D &quot;Configuration=
 file to set up CAN interface&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DESCRIPTION =3D &quot;Used to s=
etup the CAN interface&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">LICENSE =3D &quot;MIT&quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">LIC_FILES_CHKSUM =3D &quot;<a h=
ref=3D"file://$%7bCOMMON_LICENSE_DIR%7d/MIT;md5=3D0835ade698e0bcf8506ecda2f=
7b4f302">file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b=
4f302</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">inherit systemd<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SYSTEMD_SERVICE_${PN} =3D &quot=
; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; </span><span lang=3D"DE"=
><a href=3D"mailto:can@can0.service">can@can0.service</a> \<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">SRC_URI_append =3D &quot; \<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">&nbsp; </span><span lang=3D"EN-US"=
><a href=3D"file://can@.service">file://can@.service</a> \<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">FILES_${PN} &#43;=3D &quot; \<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; <a href=3D"mailto:$%7bsy=
sconfdir%7d/systemd/system/can@.service">
${sysconfdir}/systemd/system/can@.service</a> \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">do_install_append() {<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; install -d ${D}${sysconf=
dir}/systemd/system<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; install -m 0644 <a href=
=3D"mailto:$%7bWORKDIR%7d/can@.service">
${WORKDIR}/can@.service</a> ${D}${sysconfdir}/systemd/system<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run bitbake to create th=
e image, I would expect that a symlink (<a href=3D"mailto:can@can0.service"=
>can@can0.service</a> -&gt;
<a href=3D"mailto:/etc/systemd/system/can@.service">/etc/systemd/system/can=
@.service</a>) in the folder /etc/systemd/system/multi-user.target.wants sh=
ould be generated. But this is not the case.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I think, the SYSTEMD_SERVICE_${=
PN}... assignment should create that link. Is this correct, or does anyone =
could show me how to start an instance of the template of this service.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Thanks for your support.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Rob<o:p></o:p></span></p>
<div style=3D"border:dotted white 1.0pt;padding:1.0pt 1.0pt 1.0pt 1.0pt">
<p style=3D"mso-line-height-alt:7.0pt;background:white"><span lang=3D"DE" s=
tyle=3D"font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;color:black">=
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to
 which they are addressed. If you have received this email in error please =
notify the system manager. This message contains confidential information a=
nd is intended only for the individual named. If you are not the named addr=
essee you should not disseminate,
 distribute or copy this e-mail. Please notify the sender immediately by e-=
mail if you have received this e-mail by mistake and delete this e-mail fro=
m your system. If you are not the intended recipient you are notified that =
disclosing, copying, distributing
 or taking any action in reliance on the contents of this information is st=
rictly prohibited.
</span><span lang=3D"DE" style=3D"font-size:8.0pt;font-family:&quot;Cambria=
&quot;,serif"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_AM0PR03MB37142015675C68049E2FA92FFE9A0AM0PR03MB3714eurp_--
