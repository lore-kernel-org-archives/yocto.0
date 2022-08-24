Return-Path: <alexander.duda@vector.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A13BC04AA5
	for <webhook@archiver.kernel.org>; Wed, 24 Aug 2022 23:10:15 +0000 (UTC)
Received: from de-smtp-delivery-103.mimecast.com
 (de-smtp-delivery-103.mimecast.com [194.104.111.103])
 by mx.groups.io with SMTP id smtpd.web09.17880.1661382605608767938
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 16:10:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vector.com header.s=mimecast20200527 header.b=Qsw+ZFtf;
 spf=pass (domain: vector.com, ip: 194.104.111.103,
 mailfrom: alexander.duda@vector.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vector.com;
	s=mimecast20200527; t=1661382603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=0MT4MDllRUwLNKJG3FxqrFJKbbVvo4fNOBQ20zyA1OM=;
	b=Qsw+ZFtfvDpUoSOHPVsv4IRPUsQ0wt6szlBkvR0pHFC35szgmpq5iVKiaNnN/0GgOfehzA
	LZ9lCMtl9LYIgo23ZT7UrcF48WFfvOSVlZW6EDmWZXk+Tp2yebVCHCbzqbPDv+BaISy87v
	ACxtzIYXcb0VC89jfdGple+gKRHoUcE=
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03lp2239.outbound.protection.outlook.com [104.47.51.239]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-14-q9lUwo8xOBaLvakX_cngyQ-1; Thu, 25 Aug 2022 01:10:02 +0200
Received: from DB7PR01MB4379.eurprd01.prod.exchangelabs.com
 (2603:10a6:5:2f::29) by PAXPR01MB9580.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:2c1::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Wed, 24 Aug
 2022 23:10:00 +0000
Received: from DB7PR01MB4379.eurprd01.prod.exchangelabs.com
 ([fe80::c0a3:4a60:18f4:a533]) by DB7PR01MB4379.eurprd01.prod.exchangelabs.com
 ([fe80::c0a3:4a60:18f4:a533%6]) with mapi id 15.20.5546.022; Wed, 24 Aug 2022
 23:10:00 +0000
From: "Duda, Alexander" <Alexander.Duda@vector.com>
To: "Yocto General List (yocto@lists.yoctoproject.org)"
	<yocto@lists.yoctoproject.org>
Subject: Failing to add modphp httpd.conf missing php-native
Thread-Topic: Failing to add modphp httpd.conf missing php-native
Thread-Index: Adi4DluW8aKgk2U3QPaGAhtN9EvFlw==
Date: Wed, 24 Aug 2022 23:09:43 +0000
Deferred-Delivery: Wed, 24 Aug 2022 23:09:01 +0000
Message-ID: 
 <DB7PR01MB43798A687043647DA3497297FA739@DB7PR01MB4379.eurprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb2977bd-5fc3-4bff-e551-08da8625c520
x-ms-traffictypediagnostic: PAXPR01MB9580:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 
 t+5TL3tY6Ll2r/XC3JnqYrFF/x4raH1wF7DS2GyBeofEuOKMt2olUGChbcyMZIGkBEn1hhI7BemAgvAdJMTYIAJ0N/7caANKucn0cXIjPwYB6B6TTqs3KblUSmqME0CdBIXBn2lAWTazdeEL7u+viqNs7of2DHZ4rx05cOARes04VKuS7BAKIURqVeJu+wnxijIgo+lQuyQqux2C42jfX+GdvtYe8fhkZZuzK0q+w9DC5skQxL0v3nV4kGcpTv14bSlnyxDPH6leUQykfdXpxb7X6Z5ZWUDuL+pxQI1VZnRjjbaN1wbGLQ83CkjYXPCsUbY2fPZ88j3ELHT1y4OW+ctpO8R/ruysP4b4dueRyvpGHRECKzmCzxNkCwnCglfH7v5WPzct0ffKCMNJD30YqxFGySar73LdXFg8a29ulspHreu7TTJJmZzcGMEKx+Tb7AbD3txNmAKaSCwN85AGszleDx+6LUkIpnXXYV2Uoh3n5DYWdRE48wGlIR+Irf6vLLThefkKDDZQZu07FzToNpgcNh5yxrZiHAxR8SREG6QDpjRcnYXGACnsOwC574hUn7cHK4pnr8agBoFgOXCct7owFecVe8zNplGQkFE5zndy7HXr2XpQlSZPK4TVpdv/T5fNRvX3WT9VRqShzNs5vK7uy3i/7mBeWv79eyV7QugVkByBKBiTPjlFESn+uCeILnq6XvEwyopGjUe8oAt5UaQ9u7yiO6sP1vM1lVWeEm4CvIFoaXBr4J6mF6/9QMhy6cfRdjK0x/Y1j4gcGUmGEQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR01MB4379.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(186003)(6916009)(122000001)(38070700005)(83380400001)(316002)(71200400001)(26005)(5660300002)(33656002)(66446008)(76116006)(66476007)(64756008)(7696005)(52536014)(66946007)(9686003)(66556008)(38100700002)(6506007)(8676002)(86362001)(478600001)(2906002)(41300700001)(8936002)(55016003)(6666004);DIR:OUT;SFP:1101
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?kGxDlctAR8BABlVudrbLQLNXG8Xyjm1KxXhc/kCMn72cDG1wtgfWyR1KIpMw?=
 =?us-ascii?Q?wcsaZe+/KQrDdpwbAGomwHXjMkWKkUlkkhF3VKpU/ZD+5fZipNpTo88Mhs4Z?=
 =?us-ascii?Q?S5k46NfTvn8fWupzWeOj/TNjUYEBhDuCRmjyGSAobF0/mr6fsXE/wAhCXeD9?=
 =?us-ascii?Q?ONoepdMGsWL6bB+mrx1r6vnwgzI/fH6t3b0ys1XTd0/ZG1BaAf3bpxrk/EWH?=
 =?us-ascii?Q?GXHLmpnIaHK5qlLJgZobJJFLWEZrOGLCMdw8eLcA7gApKhXtNgGuyRRf6qw4?=
 =?us-ascii?Q?me39vlHDMS+ElShcQvD9/WzOZEc5BP3x+1W6JUhJPQXd40at3i/TeSSf1JxJ?=
 =?us-ascii?Q?6YS41zeb4XNgnIt19n4QhapPfTWuozP3JBqebmEUOYjMB7TVS8qhbXTJCwPp?=
 =?us-ascii?Q?2DeJ5oTdmHuCKxUtQrnpaENPrd9paxXWeWT4v3PTAgY5NeLFiTVXYXXQC0a1?=
 =?us-ascii?Q?oylUf9dlYomP8fjnFap6lThkb2Mc2n5VRzQ2i6vGpgfS5hNh6snSDQ3N7jqV?=
 =?us-ascii?Q?aqUcEqekbkPkMjO4fENDy1Ppc5DdqT1GrYX3Rhpl5LFiGusPdfKnQRk8OVBI?=
 =?us-ascii?Q?TMQfVD0yucZUe8owLWltMbVjeE5l7a92BpKok52fxv9XdPQAMg4B3LwFL/5A?=
 =?us-ascii?Q?MyN8ur1TV5jRMeI2KjDQhDW2bjqte+tUjgVzySJpnFoYUDb3If5oW60Dpb7L?=
 =?us-ascii?Q?8hil7g+XbzKJqqVWvTU02EjUMf6R1nhWC12g0UN/ZNPKuUgYfjtOxCio9O0R?=
 =?us-ascii?Q?ISMq9Cg5zs7AfANRJ2B+i8AZuwL0d7FgbSoyBh98qwHAClzTpWApbjFq93Uv?=
 =?us-ascii?Q?v6DAey+b9iNYUZEw3pLFisCma/D49fMCtcnnig9GitYjaOc79o5shkFE+CLa?=
 =?us-ascii?Q?9dOIq1G39duihpgQO+h0QPZ8qi23wrvQueN17C3rg03C18/WguKoS8rxC9XP?=
 =?us-ascii?Q?BdOMbdP8DE1LN9EJoP4LixT3GLKP9TQnLwUDCFbeXnhGXnGjMuiIS0z5zZkg?=
 =?us-ascii?Q?xDzb/enN70NzpWWBsIncco1XwYaIHXdzrAn4Gr4PGG4Vox2HVnj9tdcEJ2yJ?=
 =?us-ascii?Q?MjhSXQ77SM1kH1cwmrh/gfcK58KBxyAf6xjNmqFayZFYgkNrs0KwiceluITK?=
 =?us-ascii?Q?eGXKrtuizvelXtEADa+uEx/6iLUth5aS+Ty+r8e3jlHGYF3PTTAMkxosQa9e?=
 =?us-ascii?Q?nl7/IkBx2K6D5dBKZ0vB03GElJDkuu8p4UvAGoSey6gHYnROxLnto79ghYSC?=
 =?us-ascii?Q?Ht7m2GYIhelJhBdK3maxXXNWFZilXfztD5r0ZqbwvK1UQ3Gf65vliaifKI3K?=
 =?us-ascii?Q?HxJgzO8AEWHz7DZd5R6CISizvNh3H8QXpm9Kxruiabcs/M/kzgOl35xcpz1Q?=
 =?us-ascii?Q?K6fpeWL4x33qzsw32cL3FHZ9nGdCVvgIQY3M5z1fvtVfChXFKWZ6gynhnUKf?=
 =?us-ascii?Q?sFHBuKgx7Dd5e6H6S9KYHbAuc0M592QeBqJAW0N91U4BCkmiBkZ0FWjhXjbU?=
 =?us-ascii?Q?HOjDAqsMkBX0XHpeRP2u5NKrjmRrIJ+muj0YBeFQIvbXcG+g++y5HKxPYUkI?=
 =?us-ascii?Q?2TjJqIKwc/fKMGvR/EwZWuLDthL6uulCPZt3zbS5?=
x-mc-unique: q9lUwo8xOBaLvakX_cngyQ-1
x-originatororg: vector.com
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: 
 DB7PR01MB4379.eurprd01.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: 
 cb2977bd-5fc3-4bff-e551-08da8625c520
x-ms-exchange-crosstenant-originalarrivaltime: 24 Aug 2022 23:10:00.4900 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: c844b2b9-7a68-473f-b386-e2e1b968279d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 Fr/YrT3oNPdpBvLJFELhPtrX2QJELteaf87Ma9jqqlqdz9Vv7pAb+OahLzQeeiSrVtiRoNa4ZZTM+9n8MdgcDrYUkjtULGuvL4kI2Zpt7Cg=
x-ms-exchange-transport-crosstenantheadersstamped: PAXPR01MB9580
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: vector.com
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_DB7PR01MB43798A687043647DA3497297FA739DB7PR01MB4379eurp_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Aug 2022 23:10:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57896

--_000_DB7PR01MB43798A687043647DA3497297FA739DB7PR01MB4379eurp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hello yocto users,



I'm trying to add modphp to my project, since there isn't a dedicated modph=
p recipe anymore I added an php bbappend with:



PACKAGECONFIG:append =3D " apache2"



According to meta-openembedded/meta-webserver/README



But bitbake is telling me that during compile of php-native apxs is missing=
 the httpd.conf



DEBUG: Appending .bbappend file /home/.../recipes-devtools/php/php_%.bbappe=
nd to /home/.../meta-openembedded/meta-oe/recipes-devtools/php/php_7.4.21.b=
b

DEBUG: Appending .bbappend file /home/.../build/workspace/appends/php_7.4.2=
1.bbappend to /home/.../meta-openembedded/meta-oe/recipes-devtools/php/php_=
7.4.21.bb

...

DEBUG: php-native-7.4.21-r0 do_install: Executing python function autotools=
_aclocals

DEBUG: php-native-7.4.21-r0 do_install: SITE files ['endian-little', 'commo=
n-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']

DEBUG: php-native-7.4.21-r0 do_install: Python function autotools_aclocals =
finished

DEBUG: php-native-7.4.21-r0 do_install: Executing shell function do_install

ERROR: php-native-7.4.21-r0 do_install: oe_runmake failed

ERROR: php-native-7.4.21-r0 do_install: ExecutionError('/home/.../build/tmp=
/work/x86_64-linux/php-native/7.4.21-r0/temp/run.do_install.104056', 1, Non=
e, None)

ERROR: Logfile of failure stored in: /home/.../build/tmp/work/x86_64-linux/=
php-native/7.4.21-r0/temp/log.do_install.104056

...

| apxs:Error: Config file /home/..../build/tmp/work/x86_64-linux/php-native=
/7.4.21-r0/image/home/..../build/tmp/work/x86_64-linux/php-native/7.4.21-r0=
/recipe-sysroot-native/etc/apache2/httpd.conf not found.



Is there a way to deploy a dummy httpd.conf to this location or any other f=
ix to get this working?



Best regards,



Alex






--_000_DB7PR01MB43798A687043647DA3497297FA739DB7PR01MB4379eurp_
Content-Type: text/html; charset=WINDOWS-1252
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
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0cm;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
@page WordSection1
=09{size:612.0pt 792.0pt;
=09margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello yocto users,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to add modphp =
to my project, since there isn&#8217;t a dedicated modphp recipe anymore I =
added an php bbappend with:<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PACKAGECONFIG:append =3D &quot;=
 apache2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">According to meta-openembedded/=
meta-webserver/README<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But bitbake is telling me that =
during compile of php-native apxs is missing the httpd.conf<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Appending .bbappend file=
 /home/&#8230;/recipes-devtools/php/php_%.bbappend to /home/&#8230;/meta-op=
enembedded/meta-oe/recipes-devtools/php/php_7.4.21.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Appending .bbappend file=
 /home/&#8230;/build/workspace/appends/php_7.4.21.bbappend to /home/&#8230;=
/meta-openembedded/meta-oe/recipes-devtools/php/php_7.4.21.bb<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: php-native-7.4.21-r0 do_=
install: Executing python function autotools_aclocals<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: php-native-7.4.21-r0 do_=
install: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: php-native-7.4.21-r0 do_=
install: Python function autotools_aclocals finished<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: php-native-7.4.21-r0 do_=
install: Executing shell function do_install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: php-native-7.4.21-r0 do_=
install: oe_runmake failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: php-native-7.4.21-r0 do_=
install: ExecutionError('/home/&#8230;/build/tmp/work/x86_64-linux/php-nati=
ve/7.4.21-r0/temp/run.do_install.104056', 1, None, None)<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Logfile of failure store=
d in: /home/.../build/tmp/work/x86_64-linux/php-native/7.4.21-r0/temp/log.d=
o_install.104056<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">| apxs:Error: Config file /home=
/&#8230;./build/tmp/work/x86_64-linux/php-native/7.4.21-r0/image/home/&#823=
0;./build/tmp/work/x86_64-linux/php-native/7.4.21-r0/recipe-sysroot-native/=
etc/apache2/httpd.conf not found.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to deploy a dumm=
y httpd.conf to this location or any other fix to get this working?<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black;background=
:white;mso-fareast-language:DE">Best regards,</span><span lang=3D"EN-US" st=
yle=3D"background:white;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"background:white;mso-f=
areast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">Alex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB7PR01MB43798A687043647DA3497297FA739DB7PR01MB4379eurp_--


