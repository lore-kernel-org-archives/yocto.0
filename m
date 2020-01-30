Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6446.1580381852830041170
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 02:57:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=U3oSHFyF;
 spf=fail (domain: nxp.com, ip: 140.211.169.56, mailfrom: heinz.wrobel@nxp.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 514FAE015BA; Thu, 30 Jan 2020 02:57:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.0.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00060.outbound.protection.outlook.com [40.107.0.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1DCDE007DA
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2020 02:57:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ugq5EDVpURNdPxcAKjNdtZ1PHjmDzOiBwdxL1M0TlwMj5GklOpr/OI3AK7qZ5WqE3Tpl8RSm5JpeiHog0mOnEaskbVRRslTekdVn5bhJvxCbyfeGqFQ4fja52CH3KpauLixZntjkr47lIWPdSAuZENoVtMdp43GjmmADcnnFHbOE4QfTE3jRz1viSNau6PTS1tcuvvi/R8vxJZGlk/Cy/6VUlNIQI64fSRt9CR6ls+ZPBa+CUXgXNmT4Bs5tXNE4FhupayUlPy4UlA8qOfMy1iWGUk1Kk++uIRijvqAk6UCe1Tve/U6YALegewTp78O9R8nqdRP5FFnQKogywFdp0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XYqREZF0WBsNRUdzGVVXKtFt1IFZA7gs1GV7RYmFD0U=;
 b=hR6+K2pqkt8gLSIL0ccIoaCGRXbOEDUAOLjdV4+6JAZ0gp1afl20iX/yL6f7gHTTxM6dPzzs+jafeFqft732mU6Y8q+7dPqlZZBjuCnYx588qkSluVPDlinZvE2o9MCwgI3W5X3NXlhSBnde8XZErCrGP5iFrrrYd3sKJh+J9a7Pncic1poUHRokAjlsssCboPWNwy4b+FjFuP6DYfDRLkVZfdwZedek05dQksiANpKp7YPQRRyhzCVoJNwtlS+Bcna2uviYJS+MLWRGB16SqTbMvBZpi956RDcvDJNqSm7MbzjsCuLhlkblQDYWwgs2/5gPbJFgmmx6MvaxNhmMfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XYqREZF0WBsNRUdzGVVXKtFt1IFZA7gs1GV7RYmFD0U=;
 b=U3oSHFyFv8dAe+j6uVR/WLib8mMqjPle+OOPNEy0DIimkoTLdVpWsqNWLkCg0epLoXh2WGl7Cf+mwZSq7cRCjkFWu2vCE576kaA7yLkXK/iFQQLfz0F/lQrx5nxTexWt1FCZpihoAoUXM8oeSksdFZpIDq/A9dNugaGXMAeLRkU=
Received: from DB7PR04MB4171.eurprd04.prod.outlook.com (52.135.130.156) by
 DB7PR04MB4171.eurprd04.prod.outlook.com (52.135.130.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Thu, 30 Jan 2020 10:57:26 +0000
Received: from DB7PR04MB4171.eurprd04.prod.outlook.com
 ([fe80::1d54:535f:28c8:b93a]) by DB7PR04MB4171.eurprd04.prod.outlook.com
 ([fe80::1d54:535f:28c8:b93a%5]) with mapi id 15.20.2665.026; Thu, 30 Jan 2020
 10:57:26 +0000
From: "Heinz Wrobel" <Heinz.Wrobel@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Not adding glibc to an image and avoiding RDEPENDS problem?
Thread-Topic: Not adding glibc to an image and avoiding RDEPENDS problem?
Thread-Index: AdXXVuCHQaVfZWE3Rt6uBZ1cLDClSw==
Date: Thu, 30 Jan 2020 10:57:26 +0000
Message-ID: 
 <DB7PR04MB4171CEBFFA8B4797DD197C278C040@DB7PR04MB4171.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=heinz.wrobel@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8a520656-b54e-40aa-c8df-08d7a573317b
x-ms-traffictypediagnostic: DB7PR04MB4171:
x-microsoft-antispam-prvs: 
 <DB7PR04MB41719939597B9EED07C54F518C040@DB7PR04MB4171.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(199004)(189003)(26005)(33656002)(478600001)(186003)(44832011)(52536014)(6506007)(86362001)(9326002)(316002)(8676002)(81166006)(7696005)(81156014)(5660300002)(71200400001)(8936002)(66446008)(64756008)(66476007)(66556008)(66946007)(6916009)(55016002)(9686003)(76116006)(2906002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB4171;H:DB7PR04MB4171.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aQSEbVDcg+3CzZ3pkeZYE4R80PIPPm2icGO6jGDCfvu9A0EXOeR3glk8mKxvpDGHwpwaWFEadGPXALsLfKN8gj2sta3x1m3RGFqzamttZwSKd9l90xeIRq7F5XJUwWzqLOSsffVSU/tlBTRED53NdaR9Ykrr+vLUKm6hsdNLNMfcbGa5pnFvkg5eSr7WyxCuq85kbhCIuwa4xjAzV5Q0rWdwStHMLKmMX3/TbwjpRlQo9IDrO5yrbxG27GOB/D8csOIRhG7eN3aTNLN8yyWd2fogTP0tnzprV5rrR/aorvCRtCxX/rTCFkWAMM6Io3VI7eJdAmhk3YECodRqw8gLnrlI5MRvcsIL+zGFJHCdjiiKugae4x/4kDsOc5CeysR6XmqHzm750Wm33csqSKIQHQ/UyuMSPmFR2lGGCo5I+e1KFaSyRPFjxcuiPIqtNl9/
x-ms-exchange-antispam-messagedata: 
 l6bYE3vvD1oClQDfxqFv55gDHQIhYaouEmHaBWtA4o0lcUeYBh4B40CDQmxn9ozodp6CcJx/o4FEoWkTqtGpliJZHxAnYmFY7gofRu93p3jlqqa5p2NS0nmjTHavgDh6wdOIeyHy8iOHYv6uaQoMEw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a520656-b54e-40aa-c8df-08d7a573317b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 10:57:26.5253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjuR2UQp0c8V2ELpXxvJ/yqBZQ74a8F9rzix/V5fT5yMWH0fc54XLtMc0DhsG1TcpLWrc8TBDwDlxIIXnngg+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4171
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB7PR04MB4171CEBFFA8B4797DD197C278C040DB7PR04MB4171eurp_"

--_000_DB7PR04MB4171CEBFFA8B4797DD197C278C040DB7PR04MB4171eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to build an image that does in the end NOT contain the virtual/libc =
used for building the elements of the image because the final target libc i=
s provided pre-built in a different way through another recipe and package.=
 [Yes I understand the version risks]

Given that the virtual/libc sysroot is still needed to build packages prope=
rly, I thought that simply not packaging virtual/libc and then adding in th=
e other package into the image would do the trick.

"dtc" is my unmodified test recipe for the concept.

I must be missing some fine point however, because now I can't even build t=
he test recipe anymore:
ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/lib/libfdt.so.1 contained=
 in package dtc requires ld-linux-aarch64.so.1(GLIBC_2.17)(64bit), but no p=
roviders found in RDEPENDS_dtc? [file-rdeps]
ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/lib/libfdt.so.1 contained=
 in package dtc requires libc.so.6(GLIBC_2.17)(64bit), but no providers fou=
nd in RDEPENDS_dtc? [file-rdeps]
ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/lib/libfdt.so.1 contained=
 in package dtc requires libc.so.6()(64bit), but no providers found in RDEP=
ENDS_dtc? [file-rdeps]
ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/lib/libfdt.so.1 contained=
 in package dtc requires ld-linux-aarch64.so.1()(64bit), but no providers f=
ound in RDEPENDS_dtc? [file-rdeps]
ERROR: dtc-1.5.1-r0 do_package_qa: QA run found fatal errors. Please consid=
er fixing them.

I found the change that RDEPENDS are no longer recursively checked, so I th=
ought I should find how the dependency is directly resolved and missed via =
bitbake -e.
Bitbake -e shows that RDEPENDS for dtc is empty, i.e., a shared library gli=
bc file based runtime dependency usually must be filled by some other magic=
 that I can't seem to grasp.
I have not seen receipes all over the place explicitly specifying an RDPEND=
S for the libc used.

The tmp/pkgdata/*/runtime/ file for my other package clearly shows FILERPRO=
VIDES for exactly the "missing" files.

I could decide to ignore file-rdeps, but I'd rather "consider fixing them".

I also did read the "shlibdeps" bullet in "Automatically Added Runtime Depe=
ndencies" and then grepped quite a bit through meta/classes and bitbake its=
elf. File-rdeps checking does not seem to check on the package database.
I couldn't figure out the mechanism that a) causes the error, and that b) w=
ould allow me to fix it properly.
What am I missing about implicit runtime dependency handling for the select=
ed libc?

Thanks,

Heinz



--_000_DB7PR04MB4171CEBFFA8B4797DD197C278C040DB7PR04MB4171eurp_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"DE">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I want to build an image that does in the end NOT co=
ntain the virtual/libc used for building the elements of the image because =
the final target libc is provided pre-built in a different way through anot=
her recipe and package. [Yes I understand
 the version risks]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Given that the virtual/libc sysroot is still needed =
to build packages properly, I thought that simply not packaging virtual/lib=
c and then adding in the other package into the image would do the trick.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8220;dtc&#8221; is my unmodified test recipe for t=
he concept.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I must be missing some fine point however, because n=
ow I can&#8217;t even build the test recipe anymore:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/li=
b/libfdt.so.1 contained in package dtc requires ld-linux-aarch64.so.1(GLIBC=
_2.17)(64bit), but no providers found in RDEPENDS_dtc? [file-rdeps]<o:p></o=
:p></p>
<p class=3D"MsoNormal">ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/li=
b/libfdt.so.1 contained in package dtc requires libc.so.6(GLIBC_2.17)(64bit=
), but no providers found in RDEPENDS_dtc? [file-rdeps]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/li=
b/libfdt.so.1 contained in package dtc requires libc.so.6()(64bit), but no =
providers found in RDEPENDS_dtc? [file-rdeps]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: dtc-1.5.1-r0 do_package_qa: QA Issue: /usr/li=
b/libfdt.so.1 contained in package dtc requires ld-linux-aarch64.so.1()(64b=
it), but no providers found in RDEPENDS_dtc? [file-rdeps]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: dtc-1.5.1-r0 do_package_qa: QA run found fata=
l errors. Please consider fixing them.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I found the change that RDEPENDS are no longer recur=
sively checked, so I thought I should find how the dependency is directly r=
esolved and missed via bitbake -e.<o:p></o:p></p>
<p class=3D"MsoNormal">Bitbake -e shows that RDEPENDS for dtc is empty, i.e=
., a shared library glibc file based runtime dependency usually must be fil=
led by some other magic that I can&#8217;t seem to grasp.<o:p></o:p></p>
<p class=3D"MsoNormal">I have not seen receipes all over the place explicit=
ly specifying an RDPENDS for the libc used.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The tmp/pkgdata/*/runtime/ file for my other package=
 clearly shows FILERPROVIDES for exactly the &#8220;missing&#8221; files.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I could decide to ignore file-rdeps, but I&#8217;d r=
ather &#8220;consider fixing them&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I also did read the &#8220;shlibdeps&#8221; bullet i=
n &#8220;Automatically Added Runtime Dependencies&#8221; and then grepped q=
uite a bit through meta/classes and bitbake itself. File-rdeps checking doe=
s not seem to check on the package database.<o:p></o:p></p>
<p class=3D"MsoNormal">I couldn&#8217;t figure out the mechanism that a) ca=
uses the error, and that b) would allow me to fix it properly.<o:p></o:p></=
p>
<p class=3D"MsoNormal">What am I missing about implicit runtime dependency =
handling for the selected libc?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Heinz<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB7PR04MB4171CEBFFA8B4797DD197C278C040DB7PR04MB4171eurp_--
