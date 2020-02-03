Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.7168.1580738935364412799
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 06:08:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=TagNE22A;
 spf=fail (domain: nxp.com, ip: 140.211.169.56, mailfrom: heinz.wrobel@nxp.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D51A4E01524; Mon,  3 Feb 2020 06:08:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.7.42 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.2 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70042.outbound.protection.outlook.com [40.107.7.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB48FE00571
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 06:08:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jUQQIBCBLydVQ8UXKeaMQVbabudXHupTqx8OUx4X4vHuCTQlYRh5aX8p3h92oyAZmzkN3yAgLaUOv3xsEreNAmS+RJScOndjo+1ox53u3ga8Xc3SCK3Y4IW3xKKw+kh3UYvvQL72M/JZJ7eyMLM8KpUZ3EA+3xpixbGOcPeuJdYpxk0P82yTDQAH5DgEJ87lJZ0GiHBs8jNa8Id0BjRxKdkt9bZO2ei9K1W7egzl3q+8tCzcv0Kgpy/BNlGeMvxSgXi8rCtJBHuAhUjxHlS6Q8+NWnwPsauQjnRI++RX6X6QgOi88p4cWAz3mWJd3ZCKhQ3QhxyOsAVQ32+qZ4/rbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7FrJ3lWDoa2kbS1bkVpgcRc6WayRHCeu6wWNhHHqYM=;
 b=PY2Nu0i5zQmo9ij300fXX8dThCOijkIZNeFGU3PzINMu035R+JAhr5YvIjut0+N8wFxPzeXC0zduQBB1DulOigBgZzmrU1zWpHNmDszMbojUcl5+E6sKPqK4Mm3hO1f0InvUxFSn6OgPmXsfrVV70G437AifOzpMyhnJQwChVfUJiBQxoANa9uIrNKsXsM8iGGoCa8AL0Ezr88z9cbyZwT8/evmCJ4hwuwMJKjjN+xjZIxvakE7MEpQsS0TBdADmM6NoVSAZfmLiwd06ViUMGfExfkaf0ZXori49CKctvyOLqgHAWV586RMsEcSGGJnNKynSqUMZzGJ+/ko05Jrvbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7FrJ3lWDoa2kbS1bkVpgcRc6WayRHCeu6wWNhHHqYM=;
 b=TagNE22AXuUNL97GjHOvF2bhAAh64moDgEXAPgOYt9u9pXMZ2BYQcPUeGzoFv/VSEwDpNd6yf2nUbedu0tVkQT0lVuPt2U/h4WD/X3/E6QthEsyV6a+GWOuNQmXok9fh/KQ3M2AfbTm5OOW6ElUO64MVck/H9EhoTRVs3zcwGjA=
Received: from DB7PR04MB4171.eurprd04.prod.outlook.com (52.135.130.156) by
 DB7PR04MB4059.eurprd04.prod.outlook.com (52.134.107.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.30; Mon, 3 Feb 2020 14:08:48 +0000
Received: from DB7PR04MB4171.eurprd04.prod.outlook.com
 ([fe80::1d54:535f:28c8:b93a]) by DB7PR04MB4171.eurprd04.prod.outlook.com
 ([fe80::1d54:535f:28c8:b93a%5]) with mapi id 15.20.2686.031; Mon, 3 Feb 2020
 14:08:48 +0000
From: "Heinz Wrobel" <Heinz.Wrobel@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXT] [yocto] Not adding glibc to an image and avoiding RDEPENDS problem?
Thread-Topic: [EXT] [yocto] Not adding glibc to an image and avoiding RDEPENDS
 problem?
Thread-Index: AdXXVuCHQaVfZWE3Rt6uBZ1cLDClSwDOKD+g
Date: Mon, 3 Feb 2020 14:08:48 +0000
Message-ID: 
 <DB7PR04MB41719901C345247F59FE13BC8C000@DB7PR04MB4171.eurprd04.prod.outlook.com>
References: <15EEA4EC393DB411.23883@lists.yoctoproject.org>
In-Reply-To: <15EEA4EC393DB411.23883@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=heinz.wrobel@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8576f932-6f8f-445b-d8fa-08d7a8b296ed
x-ms-traffictypediagnostic: DB7PR04MB4059:
x-microsoft-antispam-prvs: 
 <DB7PR04MB4059EE385060E18355CBBE898C000@DB7PR04MB4059.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0302D4F392
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(189003)(186003)(26005)(33656002)(66946007)(66556008)(66476007)(7696005)(316002)(71200400001)(478600001)(53546011)(6506007)(76116006)(64756008)(66446008)(44832011)(86362001)(5660300002)(8936002)(9686003)(2906002)(81156014)(81166006)(8676002)(55016002)(6916009)(52536014);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB4059;H:DB7PR04MB4171.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tHT+s/6Kh/qnVAQOZ/bLaw8PjZbO4yitR3WYUse2J/A+qQK+7LJUpF85GgFmLWFOMsfRR9Zeh7X55uC1jPBslCgjDx+2XQ6zJlKJXO+ZGQUQESOu9K1mXpiVph+O28pLCzDtlqr4O61nM+WSJhBHsdFsq9MCWBldW1zovUnTaOa8oTLbNmGI7sMVbZvKqHn2P0zLqmGYfzWw2uIdqF+9iHdlabFBRVlZTpZuetgDPT+Z56zC9hwPNZTPomvbISXJX3ufQrXe5e6GgG3taOdfhXGlOynllusKZ97x58pbL/9i3mnG01dLi6VgslzyGpZd4lEnKNaLsWyYfUkHkPQOH6NXh4uZDufe/lYZQc8qIZgJXxZ2weBHLJBMrr8M7bmVtGaxrF0IgjlGy6SkKmIsHwu4wCqtxTKiyOxIUtCpQb+fERjBjbQm2wM3DFJhSbQb
x-ms-exchange-antispam-messagedata: 
 exN2bXY7g7jBC/KyOaXOjw3RoDNCyiA7Tq2PezZ9bZ0uWKyIvLBurCFJEIT3T+0P5azhzRDO6aRRASlCQ3xWAwpPiCFDyT8J8MBQn9BuMHsYRYU9TGT/1y3hrnJxmb8A/q1111+95IJ1RmThUf5n0g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8576f932-6f8f-445b-d8fa-08d7a8b296ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2020 14:08:48.5120
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TU7qqol4x4HUw7J9lDRp6Kp9fjj2Yl2Q+J1q06h+rJWiN34KpFmRGX8WuHzjWkUK1UZixqoEq4DHi86PiRBfHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4059
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB7PR04MB41719901C345247F59FE13BC8C000DB7PR04MB4171eurp_"

--_000_DB7PR04MB41719901C345247F59FE13BC8C000DB7PR04MB4171eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

To answer my own question with a solution that is apparently working well.

For all recipes/packages that should be used at build time only but not to =
be put in an image as opposed to the "otherpackage" that should get put int=
o the image:

  *   Manual in a conf file or function on bb.event.ConfigParsed to be of g=
lobal significance.
     *   Add a PREFERRED_RPROVIDER_<package> =3D "otherpackage" for each of=
 them [PREFERRED_RPROVIDER is surprisingly undocumented even though specifi=
c Yocto use will prompt the user to set it!]
  *   Anonymous python in  a conf file, processing ${PACKAGES} per recipe t=
hat should be build-only
     *   Parse and rewrite RDEPENDS per package using bb.utils.explode_dep_=
versions2 and bb.utils.join_deps to replace any reference to a build time o=
nly package with "otherpackage"
     *   Append "build-deps" to INSANE_SKIP_<package> so that the delta bet=
ween build and runtime needs doesn't matter. Insane.bbclass apparently does=
n't check the explicit PREFERRED_RPROVIDERS to say "ok anyway".
     *   Add a PACKAGE_EXCLUDE_<pn> for all ${PACKAGES} (doesn't work for d=
eb as I have understood from docs but works fine for rpm as it seems)

This ensures that on recipe processing (including sysroot handling) all the=
 "normal" recipes are used, but none of the packages generated by normal re=
cipes go into the image then because "otherpackage" will be used then.
The method also tries to stay away from too many implementation details to =
be somewhat portable hopefully across future Yocto versions.

It appears to work here at first glance. Your mileage may vary.

Hope this helps,

Heinz

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Heinz Wrobel via Lists.Yoctoproject.Org
Sent: Thursday, January 30, 2020 11:57
To: yocto@yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Subject: [EXT] [yocto] Not adding glibc to an image and avoiding RDEPENDS p=
roblem?


Caution: EXT Email
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



--_000_DB7PR04MB41719901C345247F59FE13BC8C000DB7PR04MB4171eurp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1788699898;
	mso-list-type:hybrid;
	mso-list-template-ids:361946118 67698689 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To answer my own question with a solution that is ap=
parently working well.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For all recipes/packages that should be used at buil=
d time only but not to be put in an image as opposed to the &#8220;otherpac=
kage&#8221; that should get put into the image:<o:p></o:p></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1">Manual in a conf file or function on bb.event.ConfigParsed to be of g=
lobal significance.<o:p></o:p></li><ul style=3D"margin-top:0cm" type=3D"cir=
cle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level2 =
lfo1">Add a PREFERRED_RPROVIDER_&lt;package&gt; =3D &#8220;otherpackage&#82=
21; for each of them [PREFERRED_RPROVIDER is surprisingly undocumented even=
 though specific Yocto use will prompt the user to set it!]<o:p></o:p></li>=
</ul>
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1">Anonymous python in&nbsp; a conf file, processing ${PACKAGES} per rec=
ipe that should be build-only<o:p></o:p></li><ul style=3D"margin-top:0cm" t=
ype=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level2 =
lfo1">Parse and rewrite RDEPENDS per package using bb.utils.explode_dep_ver=
sions2 and bb.utils.join_deps to replace any reference to a build time only=
 package with &#8220;otherpackage&#8221;<o:p></o:p></li><li class=3D"MsoLis=
tParagraph" style=3D"margin-left:0cm;mso-list:l0 level2 lfo1">Append &#8220=
;build-deps&#8221; to INSANE_SKIP_&lt;package&gt; so that the delta between=
 build and runtime needs doesn&#8217;t matter. Insane.bbclass apparently do=
esn&#8217;t check the explicit PREFERRED_RPROVIDERS
 to say &#8220;ok anyway&#8221;.<o:p></o:p></li><li class=3D"MsoListParagra=
ph" style=3D"margin-left:0cm;mso-list:l0 level2 lfo1">Add a PACKAGE_EXCLUDE=
_&lt;pn&gt; for all ${PACKAGES} (doesn&#8217;t work for deb as I have under=
stood from docs but works fine for rpm as it seems)<o:p></o:p></li></ul>
</ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This ensures that on recipe processing (including sy=
sroot handling) all the &#8220;normal&#8221; recipes are used, but none of =
the packages generated by normal recipes go into the image then because &#8=
220;otherpackage&#8221; will be used then.<o:p></o:p></p>
<p class=3D"MsoNormal">The method also tries to stay away from too many imp=
lementation details to be somewhat portable hopefully across future Yocto v=
ersions.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It appears to work here at first glance. Your mileag=
e may vary.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hope this helps,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Heinz<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Heinz Wrobel via Lists.Yoctoproject.Org<br>
<b>Sent:</b> Thursday, January 30, 2020 11:57<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [EXT] [yocto] Not adding glibc to an image and avoiding RDE=
PENDS problem?<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p><b><span style=3D"color:white;background:darkred">Caution: </span></b><s=
pan style=3D"color:white;background:darkred">EXT Email
</span><o:p></o:p></p>
<div>
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
</div>
</body>
</html>

--_000_DB7PR04MB41719901C345247F59FE13BC8C000DB7PR04MB4171eurp_--
