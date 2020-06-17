Received: from mail1.bemta25.messagelabs.com (mail1.bemta25.messagelabs.com [195.245.230.1])
 by mx.groups.io with SMTP id smtpd.web10.3180.1592382901292366318
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 01:35:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@getingegroup.onmicrosoft.com header.s=selector2-getingegroup-onmicrosoft-com header.b=EQC8jrYD;
 spf=pass (domain: getinge.com, ip: 195.245.230.1, mailfrom: robert.varga@getinge.com)
Return-Path: <robert.varga@getinge.com>
Received: from [100.112.192.94] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-1.bemta.az-a.eu-west-1.aws.symcld.net id 2C/56-25654-3B5D9EE5; Wed, 17 Jun 2020 08:34:59 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPJsWRWlGSWpSXmKPExsWSoS+Yp7vp6ss
  4gxv3TSw2drxjdGD0mHnqEXMAYxRrZl5SfkUCa8bBOT9YCw4EVsx4cJmpgXG/ZxcjFwejwFJm
  iZXvl7NBOMdYJJpOdjBDOJsZJU49+sEC4rAI7GSWWHb0LZgjJLCASWL6xj9MEM59RolLh3YCO
  ZwcbAK6Eh+WPgLq5+AQEXCU+H/MG8QUFnCT2DlDGqRCRMBbYvqKNkYIW09i581pzCA2i4CqxI
  4vIPM5OXgFYiXObXkBNpFRQFZiw4bzYDXMAuISm559ZwWxJQQEJJbsgYhLCIhKvHz8jxXi6mW
  MErcn9DFBJJQlbt++wwhhy0pcmt/NCHIPSHzLi1gI01fi7J4yiAotiWUPmtgg7ByJ3l0foWx1
  iZaP86DWykisetrMDmHLSazqfcgCE39wYzs4FCUEljBLfN61lwnCOcEsMb33BiuEs5RFYuL3T
  ywQm1Uk/h2qnMCoNQvJbxB2nsTv07dYZoHDQlDi5MwnLBBxHYkFuz+xQdjaEssWvmaGsc8ceM
  yELL6AkX0Vo0VSUWZ6RkluYmaOrqGBga6hoZGuoaWprqGpoV5ilW6iXmqpbnlqcYkukFterFd
  cmZuck6KXl1qyiRGYplIKDk/fwdj/5oPeIUZJDiYlUV7BIy/jhPiS8lMqMxKLM+KLSnNSiw8x
  ynBwKEnwZl8BygkWpaanVqRl5gBTJkxagoNHSYRX+DJQmre4IDG3ODMdInWK0ZVjwsu5i5g5d
  h6dByQ/rloCJL+DyZmbgaQQS15+XqqUOG8cyGwBkOaM0jy40bB0f4lRVkqYl5GBgUGIpyC1KD
  ezBFX+FaM4B6OSMG8UyAk8mXklcBe8AjqOCei49sRnIMeVJCKkpBqYpmzpehDel3HxaeS8xS/
  lnd4Ue1tcqTB96V/AabCJVXO7XOZtL/85p4rKZDV29VXpLi8RFHq/ZIPyw9sfj1hIs5ffc5ok
  qpye0xBw6tk+GcOm1TUnL2Szyy33M9nyuLZY9lvq0oK3bb88bhot/vY8n2lylaLRdzWfRcfKb
  dtnZH9OOFV04bShzZsdcnGFxpwXDpgZdEx5UN11zVV0RpTxuV3h/580Zcq9m1f5cRNfRXRwTk
  el7oavUa+951+2/y2nd/9/z5r6RSeN+5/0tx+cURl86lvIpIiz+rUvVVSZb968oiD5M/hxY2t
  WtGfOlegCXvPc//9/uwZqpWVfLP3f27H4YC2jG6dXat0XiRVKLMUZiYZazEXFiQBWyiPzcgQA
  AA==
X-Env-Sender: robert.varga@getinge.com
X-Msg-Ref: server-15.tower-264.messagelabs.com!1592382898!1296946!1
X-Originating-IP: [104.47.17.110]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12107 invoked from network); 17 Jun 2020 08:34:58 -0000
Received: from mail-db8eur05lp2110.outbound.protection.outlook.com (HELO EUR05-DB8-obe.outbound.protection.outlook.com) (104.47.17.110)
  by server-15.tower-264.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 17 Jun 2020 08:34:58 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISU35d+jhTeOEZ5UEKoedax8ETGpBg7t8NL89/uVYciW2Mq2YzCIZkRxa6P3FYhd3rcYzPK8zrEZYJ9fVPK8fddzjAS3Y/liSxYPzV1XxIdlg0BMGHqgDfxSFM03xUvUnsEpfIZOHz91u3zTRtfjECWRU7tPKE9CiCxj5m89FKbahKSTGJRs+qUbZCMAK/7lq5LyQsbBoxI1rre2tu9bs2cs6dx+GHPVS4A1B3Qa6TmueCmPO9mh6UgDzexFuAJs9RrhEmtOaOu/joJjv3p5nsAZAaIv15WypuTLQxvX4Wwdda7hpA3RKm9Od+jRIhTznrLoD+CK300BrE8v3OUAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=clBz73P3aaE1ZzNMes0WOJDzr3UbhGhw7hv63jBGKMM=;
 b=ahlG7QG0FTJM8Xp80F+5g101KW6iWSbP/M260dVS2nFWq2BDDZecqnTIqiH48yNAfWyEl3LzMgy3bEbdiQmJIBBXUoFuWxYel21O1m7LsjeMVTjuUgOF9qc0fi8+RR1CZQ4J68CawSPIBwZieUrvvYNZxogn/MNUsu/yBI8CcvI5hYZuUrbVCnt9wVMm+98mqD70oko7wms09mJotUoM4sEOHduv/DMPYtYj+566c4/gnrzpuqs363wohrUj8V+caJ/2+le6sJ2e6pSVR4pNKsAHXK1FBC6ImdNUxxr6MsJBhz3nDgAjTDsKQMsEqGYTbaOddpOpeKUjEO4fw5ThHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=getinge.com; dmarc=pass action=none header.from=getinge.com;
 dkim=pass header.d=getinge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=getingegroup.onmicrosoft.com; s=selector2-getingegroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=clBz73P3aaE1ZzNMes0WOJDzr3UbhGhw7hv63jBGKMM=;
 b=EQC8jrYDlNXcDFZzPGiBbk13uusSvoF0soh5BKmxDtvWwHZfGu4/I6P7saw5qNU12JHxWIDEPmwKxA4HCqp8QqbAXCneUkc49NbAzZ+/T80U7fuQGxAzNmtM2Qwqh76klaV3vUIfS5VJt/uLf5YC2T/Np2pn+XdJKccqD8oSMHo=
Received: from AM0PR02MB4563.eurprd02.prod.outlook.com (2603:10a6:208:ec::33)
 by AM0PR02MB5491.eurprd02.prod.outlook.com (2603:10a6:208:157::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Wed, 17 Jun
 2020 08:34:57 +0000
Received: from AM0PR02MB4563.eurprd02.prod.outlook.com
 ([fe80::f583:17cf:942d:3239]) by AM0PR02MB4563.eurprd02.prod.outlook.com
 ([fe80::f583:17cf:942d:3239%4]) with mapi id 15.20.3088.029; Wed, 17 Jun 2020
 08:34:57 +0000
From: robert.varga@getinge.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Enable systemd service with unit template instance on startup
Thread-Topic: Enable systemd service with unit template instance on startup
Thread-Index: AdZEgc2oK2v3KgogRgGOP636ZxTvhg==
Date: Wed, 17 Jun 2020 08:34:56 +0000
Message-ID: 
 <AM0PR02MB4563D7A2CA31B60D5661E32B979A0@AM0PR02MB4563.eurprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.240.134.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3b522d10-184b-4abe-832a-08d8129950ff
x-ms-traffictypediagnostic: AM0PR02MB5491:
x-microsoft-antispam-prvs: 
 <AM0PR02MB5491907AFFCA5F54734DC37A979A0@AM0PR02MB5491.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oS6gU9blrCAha/1oxv33bu5o/2ksegR7rs2i0XE+X/ng2+olcHmsA+HlnLNzXMHu5RvBv7lfVkMP7XvIjbUVccCC0nR5gzqk6dAUAH1FraTj3Cs2k4rUgAdCaiyg6QScz2+AWnuf8rQ0noXYT49QS+frIDqLSC52IN0aXwPuFq/IOLQ2fysEuZhVrt14CY0YTwdvZ0BohcchnMbfNt1+GkvRx1YOvl9IxpiZPKwqXSPcvIKc6N9tGeH4C/1StdcvsQjk5Ad675lWW8psqrGkQ6SoWBH1Xe0S57tB3hm3auTVQOmKIf6t9D2zs/mn98ad0TmpLz5ogTI0GctX67LgAYrukdahdvpa6H0iN2xJOk6R+JRNZ7VsUCtPjulakz0m
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR02MB4563.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(8936002)(55016002)(18265965003)(498600001)(6916009)(8676002)(64756008)(2906002)(66446008)(66556008)(66476007)(33656002)(5660300002)(71200400001)(44832011)(66946007)(186003)(6506007)(86362001)(76116006)(26005)(83380400001)(19627235002)(9686003)(52536014)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 W6+DPSRrbbUQ/ArurDw1o0vOsoT2cHptu1QdWs4yIX6+ywaQufppUKiVZvj26e4z3iU9hd+YsmZvERZIlFyelGZFlsdGUdX0bjashL3Lap1zA3kOgZIF4o2/6xhpAWIrbZWaa7YDINazSV56yFeY1ZnHypQ/8UYnl63V6WlL7hlX+H1QlxS7sPT9lpCHwvbRx7wfoq3j7mPD/GtccuoMAr09dUA+sjjftwNDIqMZbzrjzDq1z50cjb62rMn+kg7UcxLMICmQDxkLQw0YIOt0dCfzVHDw0O0tntdh+rskLqSqjY05TB5AuPsANake46VxmGtRDBGYKbWJd3mD8jNulSzcMI5aQ1dObjpVsX1MgBnovnV6REU2Y/ABItWRYAbxNUi0K0VUjLePogRs9Ky+8uz0Wk3ZjrtfI1HeweSt/LT5+Xm/rbtUXBRgTBpb/6hrjNyBVa/IvFlTGNFuYTQiBdmqzXeEmN/0vz+Wx+k7oJ3LAEE0idxQvasJtjsSQBci
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: getinge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b522d10-184b-4abe-832a-08d8129950ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 08:34:56.9944
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d5faa72a-2614-4d56-abd8-865197339e56
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VfpeuJm6m+GpPU0ndKsyyVVsOOqgdt82INfugK7DErhEp/fwPzJJdwwNX7olpv4at9JdWS9cyTFfoXho2PreDxrPLdKPeyHNPx3C5qflcXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB5491
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0PR02MB4563D7A2CA31B60D5661E32B979A0AM0PR02MB4563eurp_"

--_000_AM0PR02MB4563D7A2CA31B60D5661E32B979A0AM0PR02MB4563eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am new to yocto and I am using systemd as the init manager. I'd like to s=
tart a service (initializing CAN interface) at boot time. The service is a =
template and its name is can@.service:

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
f8506ecda2f7b4f302"

inherit systemd

SYSTEMD_SERVICE_${PN} =3D " \
  can@can0.service \
"

SRC_URI_append =3D " \
  file://can@.service \
"

FILES_${PN} +=3D " \
  ${sysconfdir}/systemd/system/can@.service \
"

do_install_append() {
  install -d ${D}${sysconfdir}/systemd/system
  install -m 0644 ${WORKDIR}/can@.service ${D}${sysconfdir}/systemd/system
}

When I run bitbake to create the image, I would expect that a symlink (can@=
can0.service -> /etc/systemd/system/can@.service) in the folder /etc/system=
d/system/multi-user.target.wants should be generated. But this is not the c=
ase.

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

--_000_AM0PR02MB4563D7A2CA31B60D5661E32B979A0AM0PR02MB4563eurp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am new to yocto and I am usin=
g systemd as the init manager. I&#8217;d like to start a service (initializ=
ing CAN interface) at boot time. The service is a template and its name is =
can@.service:<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">LIC_FILES_CHKSUM =3D &quot;file=
://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">inherit systemd<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SYSTEMD_SERVICE_${PN} =3D &quot=
; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; </span>can@can0.service =
\<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI_append =3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; <span lang=3D"EN-US">file://can@.service \<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">FILES_${PN} &#43;=3D &quot; \<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; ${sysconfdir}/systemd/sy=
stem/can@.service \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">do_install_append() {<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; install -d ${D}${sysconf=
dir}/systemd/system<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; install -m 0644 ${WORKDI=
R}/can@.service ${D}${sysconfdir}/systemd/system<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run bitbake to create th=
e image, I would expect that a symlink (can@can0.service -&gt; /etc/systemd=
/system/can@.service) in the folder /etc/systemd/system/multi-user.target.w=
ants should be generated. But this is not
 the case.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I think, the SYSTEMD_SERVICE_${=
PN}... assignment should create that link. Is this correct, or does anyone =
could show me how to start an instance of the template of this service.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Thanks for your support.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Rob<o:p></o:p></p>
</div>
<div style=3D"font-size:9pt;  font-family: 'Arial',sans-serif;"></div>
<div style=3D"background-color:#FFFFFF; border:1px dotted #FFFFFF; padding:=
.1em; ">
<p style=3D"font-size:8pt; line-height:7pt; font-family: 'Cambria','times r=
oman',serif;">
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to which they are addressed.=
 If you have received this email in error please notify the system manager.=
 This message contains confidential
 information and is intended only for the individual named. If you are not =
the named addressee you should not disseminate, distribute or copy this e-m=
ail. Please notify the sender immediately by e-mail if you have received th=
is e-mail by mistake and delete
 this e-mail from your system. If you are not the intended recipient you ar=
e notified that disclosing, copying, distributing or taking any action in r=
eliance on the contents of this information is strictly prohibited.
</p>
<span style=3D"padding-top:10px; font-weight:bold; color:#CC0000; font-size=
:10pt; font-family: 'Calibri',Arial,sans-serif; "><a href=3D""></a></span><=
/div>
</body>
</html>

--_000_AM0PR02MB4563D7A2CA31B60D5661E32B979A0AM0PR02MB4563eurp_--
