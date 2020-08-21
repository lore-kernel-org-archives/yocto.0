Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.140369.1598037555498434328
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 12:19:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=pNRWkkVo;
 spf=softfail (domain: niko.eu, ip: 140.211.169.56, mailfrom: joseantonio.cardenas@niko.eu)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C9C4E0206B; Fri, 21 Aug 2020 12:19:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [40.107.12.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from FRA01-PR2-obe.outbound.protection.outlook.com (mail-eopbgr120050.outbound.protection.outlook.com [40.107.12.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B8AEE02069
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2020 12:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3YbWEf08Wsae3l77CLlirxWUQ5QXyEqq3Cf4aWAEg7YDV/OvCZ8gY8ykp3SWn6ggj3LG9uZ5LYemO/DJPlqyHxCDJlB7y4FNkJyIzpO8fRYqCgDJ86ZTP6pno+c9/AQJHt+9fC7e7ypfgNpQrh42r2HcNiJQZyl42FCJq8kfOo5RmFRSVtCbzbLbLLu/j6qF+VBBwQTdO1719lPnomVkOotIPI2Du5MASNgzbCliGtJJpqIqbD+AkCuS0XT7fjfOdz6QdAcMlKTEjxJZjF5Wn/Ccu2uYSyKzxw/OgohzShgn4ciPn4d1AM40borCMHgumbZ2GyG0DGN79A987TKxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQIoovaUfHSdqPAuHy2DtFv41e2Cz1qf6GzrYvngtaw=;
 b=iH7Hw/XlY8iPPMz4rbKb04SgPoaAOJ+LH2qBAaMzAIb4p75fAgq02IkbHQBTsijUI0/FQk93L7f1N+qLt+enGnLQxn4VMDjAM5d/wqvOR3DbMaWT3OEcR8h3x/W8G1UDbkZPczlHX1cMBcj8bvDVnt8VYfnYol0lqXmlzfkPJztOsxVxjnKe+r5JUkun9xanOSEqDAG71WE2trQNKTD98GPjVxdO2+O7D9v8p58HoXSxBlaTfbcNG97jDSTKkTmGz7Vj0q/SEAjh5Mh0S4RAHHNf7fvp4RmHzlXZ5VjHQmIb0hYd5GpDPp/VcMUo+7oxTn5iy1CRjobZrUWGI8Rxuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQIoovaUfHSdqPAuHy2DtFv41e2Cz1qf6GzrYvngtaw=;
 b=pNRWkkVo2Vr2GRqFIOts1lEPmBL+Khx1rWRVoriy8e5l8vYyABFdIlpeb2BNRGuKVF8xvGRkW/vkY/51pe0uId/yRt6voZWcmbwJQOJ0r07eJu28nNNxFbhrWjqTv4cYOJeslEW/8+wevbJM3NjTBLANSxre6EhCK+W/zvUNA7w=
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com (2603:10a6:101:1c::10)
 by PR2PR08MB4892.eurprd08.prod.outlook.com (2603:10a6:101:24::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Fri, 21 Aug
 2020 19:19:09 +0000
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1]) by PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1%4]) with mapi id 15.20.3261.026; Fri, 21 Aug 2020
 19:19:09 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: npmsw fetching error: package from npm-shrinkwrap is not downloaded so "Could not install from.../SONStream" as it does not contain a package.json file.
Thread-Topic: npmsw fetching error: package from npm-shrinkwrap is not
 downloaded so "Could not install from.../SONStream" as it does not contain a
 package.json file.
Thread-Index: AdZ37sRM5tq7P6NmRjCo7bq/k5kmSQ==
Date: Fri, 21 Aug 2020 19:19:09 +0000
Message-ID: 
 <PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0@PR2PR08MB4651.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none header.from=niko.eu;
x-originating-ip: [109.107.98.163]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30c17e9c-2d86-400c-2682-08d84607144e
x-ms-traffictypediagnostic: PR2PR08MB4892:
x-microsoft-antispam-prvs: 
 <PR2PR08MB48929311CAE60A620E75A88D8B5B0@PR2PR08MB4892.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qsRbmzUJg41QwZA0p/7kKLt7TILrAT6+spTTrf6U2YZmcL5PHp5YkPFrI+LM11gfyMOjNSeY9U1g2p4xWSJ6LeWTwMmjSg1VRBy02/ntx2ZK22D2mZE2ys90NqFQMX4ydFkUylBg4K2QJazGqpqgKaKDSnOGdEoTZ45Xq2izuFX6KCi6+8efjr4vKx6PKuHPqhYffJwT7s1t7Ct6FNr17tILyRS7nxNbMEnrvs5ZsUkv0bDXumyTwSjMYzDZheReWBiQTWkXnqEroGSoC5jHSyIo+6EnO051cMCGourMRvsnYSkYOHa4GeMRMk3hWLQz2gFIfR1Fn7PglM2xtmqNP3cgUHkcB2AlutU3X2tCPP/KUv26W6LDmT4x6a9ID0HhEVd3VIzuNpBBWi5T0HPkcQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2PR08MB4651.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39850400004)(396003)(376002)(346002)(136003)(186003)(8676002)(316002)(478600001)(86362001)(83380400001)(71200400001)(52536014)(2906002)(26005)(66446008)(9686003)(5660300002)(8936002)(6916009)(7696005)(66556008)(55016002)(66946007)(33656002)(6506007)(66476007)(76116006)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 SfMEoNnMTKIWlUuQhOw3+Ii9UItd7O08RhGqVyOB1Ra3a2Dw6bYndyfQOIXfA9m/gsMLKSak1euFo7aP0sKnJTAAGvYLkgPPwFAcI1bE8OMoMzLCeA/T6NOHM9j0QLMm8QiAZmRy6rzAybx1D7oZlHlF3Bao+R6HM9ogM72uYws9fQdsSNNdNCiKK5SHkT2RAKbvrV5BKJtnxIqKAXJRxG14e8O14ATSVjJbQ47nrxOTbsLZZIrG6Vl1cPOSAaif4ubMvo9d7ljXXdeD1U5pNJhTSw4DBW19rlVvPlaG71v5HRjpVUxehh8nE3MJIKN8vSOzFn4oI34eCnFLNNLuKBILYtQZXi9WpnzBKiR0ncyjMIdvvHDFXF+7z9ctpcr20frws7MitP6gKU0kbSTurBCbxUWGqLIiB6Ei8ZITaqonbJoSg4y8arX67/7EI5rT+0GpAHLXmmW2bX96qyDpNciDJWj8ckR6CpOEcdJiVtQCpGW5b0IoOWBufazW2DEAc0+kav9pOfd9SldYyYhtRL5OgKCfSQ0qjMPnDpx8NbS4/nF8kCtxJK72Ef0PmY4ttyB6Cf3NtFcykJZ+iaEqSh+KdEOgrRu0rNYxasRw7r8XkGYbeBD1ZfxPlrGF1bIb1ryDlsHIwKNTCC9U0d9WBA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR2PR08MB4651.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30c17e9c-2d86-400c-2682-08d84607144e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2020 19:19:09.0387
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oSNuMkK2llMsMmTUoddUDpn322450Vjwk1hxckpaRbCHZtqFGJloJ+hau60mw/P4rUltAdm/HmuLNqvWBurixhflcazQZk6u6extYdSNwVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4892
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0PR2PR08MB4651eurp_"

--_000_PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0PR2PR08MB4651eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all, following with my work with yocto npm I got a new error.

I have declared in the recipe

SRC_URI =3D " \
    git://github.com/SiliconLabs/gateway-management-ui.git;protocol=3Dgit \
    npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \
"

And npm-shrinkwrap.json starts with :

{
  "name": "gateway_react_ui",
  "version": "2.5.0",
  "lockfileVersion": 1,
  "requires": true,
  "dependencies": {
    "JSONStream": {
      "version": "1.3.5",
      "resolved": "https://registry.npmjs.org/JSONStream/-/JSONStream-1.3.5=
.tgz",
      "integrity": "sha512-E+iruNOY8VV9s4JEbe1aNEm6MiszPRr/UfcHMz0TQh1BXSxH=
K+ASV1R6W4HpjBhSeS+54PIsAMCBmwD06LLsqQ=3D=3D",
      "dev": true,
      "requires": {
        "jsonparse": "^1.2.0",
        "through": ">=3D2.2.7 <3"
      }
    },
    "accepts": {
      "version": "1.3.7",
      "resolved": "https://registry.npmjs.org/accepts/-/accepts-1.3.7.tgz",
      "integrity": "sha512-Il80Qs2WjYlJIBNzNkK6KYqlVMTbZLXgHx2oT0pU/fjRHyEp=
+PEfEPY0R3WCwAGVOtauxh1hOxNgIf5bv7dQpA=3D=3D",
      "dev": true,
      "requires": {
        "mime-types": "~2.1.24",
        "negotiator": "0.6.2"
      }
    },
    "accord": {
      "version": "0.29.0",
      "resolved": "https://registry.npmjs.org/accord/-/accord-0.29.0.tgz",
      "integrity": "sha512-3OOR92FTc2p5/EcOzPcXp+Cbo+3C15nV9RXHlOUBCBpHhcB+=
0frbSNR9ehED/o7sTcyGVtqGJpguToEdlXhD0w=3D=3D",
      "dev": true,
      "requires": {
        "convert-source-map": "^1.5.0",
        "glob": "^7.0.5",
        "indx": "^0.2.3",
        "lodash.clone": "^4.3.2",
        "lodash.defaults": "^4.0.1",
        "lodash.flatten": "^4.2.0",
        "lodash.merge": "^4.4.0",
        "lodash.partialright": "^4.1.4",
        "lodash.pick": "^4.2.1",
        "lodash.uniq": "^4.3.0",
        "resolve": "^1.5.0",
        "semver": "^5.3.0",
        "uglify-js": "^2.8.22",
        "when": "^3.7.8"
      },

It seems that JSONStream dependency downloading step is ignored silently in=
 do_fetch task so I get this error in do_configure task because it doesn't =
find the files:


npm ERR! code ENOLOCAL
npm ERR! Could not install from "../../home/bob/develop/yocto/build/tmp/wor=
k/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/n=
ode_modules/JSONStream" as it does not contain a package.json file.

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linu=
x-gnueabi/zigbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_63=
3Z-debug.log


ERROR: Logfile of failure stored in: /home/bob/develop/yocto/build/tmp/work=
/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/temp/log.do_co=
nfigure.6983
ERROR: Task (/home/bob/develop/yocto/meta-niko/recipes-miscellaneous/zigbee=
/zigbee-ui-reactui.bb:do_configure) failed with exit code '1'

I attach the log:

$ cat /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnuea=
bi/zigbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_633Z-debu=
g.log
0 info it worked if it ends with ok
1 verbose cli [
1 verbose cli   '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-=
linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node=
',
1 verbose cli   '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-=
linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm'=
,
1 verbose cli   'pack',
1 verbose cli   '/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-=
linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStrea=
m'
1 verbose cli ]
2 info using npm@6.13.4
3 info using node@v12.14.1
4 verbose npm-session 8672504930c3cab4
5 silly fetchPackageMetaData error for /home/bob/develop/yocto/build/tmp/wo=
rk/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/=
node_modules/JSONStream Could not install from "../../home/bob/develop/yoct=
o/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r=
0/git/reactui/node_modules/JSONStream" as it does not contain a package.jso=
n file.
6 verbose stack Error: ENOENT: no such file or directory, open '/home/bob/d=
evelop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reac=
tui/2.5.0-r0/git/reactui/node_modules/JSONStream/package.json'
7 verbose cwd /tmp/tmptuei7c_m
8 verbose Linux 5.4.0-42-generic
9 verbose argv "/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-l=
inux-gnueabi/zigbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node"=
 "/home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm" "pack" "/home/=
bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui=
-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream"
10 verbose node v12.14.1
11 verbose npm  v6.13.4
12 error code ENOLOCAL
13 error Could not install from "../../home/bob/develop/yocto/build/tmp/wor=
k/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/n=
ode_modules/JSONStream" as it does not contain a package.json file.
14 verbose exit [ 1, true ]

Regards

Jose

--_000_PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0PR2PR08MB4651eurp_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all, following with my work =
with yocto npm I got a new error.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have declared in the recipe <=
br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SRC_URI =3D &quot; \<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; git://github=
.com/SiliconLabs/gateway-management-ui.git;protocol=3Dgit \<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; npmsw://${TH=
ISDIR}/${PN}/npm-shrinkwrap.json \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And npm-shrinkwrap.json starts =
with :<br>
<br>
{<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &quot;name&quot;: &quot;=
gateway_react_ui&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &quot;version&quot;: &qu=
ot;2.5.0&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &quot;lockfileVersion&qu=
ot;: 1,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &quot;requires&quot;: tr=
ue,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &quot;dependencies&quot;=
: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; &quot;JSONSt=
ream&quot;: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;version&quot;: &quot;1.3.5&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;resolved&quot;: &quot;https://registry.npmjs.org/JSONStream/-/JSONStr=
eam-1.3.5.tgz&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;integrity&quot;: &quot;sha512-E+iruNOY8VV9s4JEbe1aNEm6MiszPRr/UfcHMz0=
TQh1BXSxHK+ASV1R6W4HpjBhSeS+54PIsAMCBmwD06LLsqQ=3D=3D&quot;,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;dev&quot;: true,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;requires&quot;: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;jsonparse&quot;: &quot;^1.2.0&quot;,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;through&quot;: &quot;&gt;=3D2.2.7 &lt;3&quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; },<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; &quot;accept=
s&quot;: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;version&quot;: &quot;1.3.7&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;resolved&quot;: &quot;https://registry.npmjs.org/accepts/-/accepts-1.=
3.7.tgz&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;integrity&quot;: &quot;sha512-Il80Qs2WjYlJIBNzNkK6KYqlVMTbZLXgHx2oT0p=
U/fjRHyEp+PEfEPY0R3WCwAGVOtauxh1hOxNgIf5bv7dQpA=3D=3D&quot;,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;dev&quot;: true,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;requires&quot;: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;mime-types&quot;: &quot;~2.1.24&quot;,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;negotiator&quot;: &quot;0.6.2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; },<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; &quot;accord=
&quot;: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;version&quot;: &quot;0.29.0&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;resolved&quot;: &quot;https://registry.npmjs.org/accord/-/accord-0.29=
.0.tgz&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;integrity&quot;: &quot;sha512-3OOR92FTc2p5/EcOzPcXp+Cbo+3C15nV9RXHlOU=
BCBpHhcB+0frbSNR9ehED/o7sTcyGVtqGJpguToEdlXhD0w=3D=3D&quot;,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;dev&quot;: true,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;requires&quot;: {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;convert-source-map&quot;: &quot;^1.5.0&quot;,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;glob&quot;: &quot;^7.0.5&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;indx&quot;: &quot;^0.2.3&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.clone&quot;: &quot;^4.3.2&quot;,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.defaults&quot;: &quot;^4.0.1&quot;,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.flatten&quot;: &quot;^4.2.0&quot;,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.merge&quot;: &quot;^4.4.0&quot;,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.partialright&quot;: &quot;^4.1.4&quot;,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.pick&quot;: &quot;^4.2.1&quot;,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;lodash.uniq&quot;: &quot;^4.3.0&quot;,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;resolve&quot;: &quot;^1.5.0&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;semver&quot;: &quot;^5.3.0&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;uglify-js&quot;: &quot;^2.8.22&quot;,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &quot;when&quot;: &quot;^3.7.8&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
},<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It seems that JSONStream depend=
ency downloading step is ignored silently in do_fetch task so I get this er=
ror in do_configure task because it doesn&#8217;t find the files:<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR! code ENOLOCAL<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR! Could not install from=
 &quot;../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux=
-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream&quo=
t; as it does not contain a package.json file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR! A complete log of this=
 run can be found in:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">npm ERR!&nbsp;&nbsp;&nbsp;&nbsp=
; /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/z=
igbee-ui-reactui/2.5.0-r0/npm-cache/_logs/2020-08-21T19_06_36_633Z-debug.lo=
g<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Logfile of failure store=
d in: /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnuea=
bi/zigbee-ui-reactui/2.5.0-r0/temp/log.do_configure.6983<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Task (/home/bob/develop/=
yocto/meta-niko/recipes-miscellaneous/zigbee/zigbee-ui-reactui.bb:do_config=
ure) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I attach the log:<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ cat /home/bob/develop/yocto/b=
uild/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/n=
pm-cache/_logs/2020-08-21T19_06_36_633Z-debug.log<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">0 info it worked if it ends wit=
h ok<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli [<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli&nbsp;&nbsp; '/hom=
e/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-=
ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/node',<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli&nbsp;&nbsp; '/hom=
e/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-=
ui-reactui/2.5.0-r0/recipe-sysroot-native/usr/bin/npm',<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli&nbsp;&nbsp; 'pack=
',<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli&nbsp;&nbsp; '/hom=
e/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-=
ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream'<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1 verbose cli ]<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2 info using npm@6.13.4<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3 info using node@v12.14.1<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">4 verbose npm-session 867250493=
0c3cab4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">5 silly fetchPackageMetaData er=
ror for /home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnu=
eabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream Could n=
ot install from &quot;../../home/bob/develop/yocto/build/tmp/work/armv7ahf-=
neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules=
/JSONStream&quot;
 as it does not contain a package.json file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">6 verbose stack Error: ENOENT: =
no such file or directory, open '/home/bob/develop/yocto/build/tmp/work/arm=
v7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_m=
odules/JSONStream/package.json'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">7 verbose cwd /tmp/tmptuei7c_m<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">8 verbose Linux 5.4.0-42-generi=
c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">9 verbose argv &quot;/home/bob/=
develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-rea=
ctui/2.5.0-r0/recipe-sysroot-native/usr/bin/node&quot; &quot;/home/bob/deve=
lop/yocto/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/zigbee-ui-reactui=
/2.5.0-r0/recipe-sysroot-native/usr/bin/npm&quot;
 &quot;pack&quot; &quot;/home/bob/develop/yocto/build/tmp/work/armv7ahf-neo=
n-poky-linux-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JS=
ONStream&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal">10 verbose node v12.14.1<o:p></o:p></p>
<p class=3D"MsoNormal">11 verbose npm&nbsp; v6.13.4<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">12 error code ENOLOCAL<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13 error Could not install from=
 &quot;../../home/bob/develop/yocto/build/tmp/work/armv7ahf-neon-poky-linux=
-gnueabi/zigbee-ui-reactui/2.5.0-r0/git/reactui/node_modules/JSONStream&quo=
t; as it does not contain a package.json file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">14 verbose exit [ 1, true ]<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jose<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PR2PR08MB4651EF5087731DDD3DAC52BC8B5B0PR2PR08MB4651eurp_--
