Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1F09E00ACD; Wed,  3 May 2017 02:03:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1116 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 May 2017 02:03:27 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0047.outbound.protection.outlook.com
	[104.47.37.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED8FFE00A30
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 02:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=jNpmZaYysLh7SgkDJ1i9wYfvW9g4FvdIplUN2OnsRXc=;
	b=kkQ517tq7+9vzE8+rJPLPlkCXMuw+ybCGrZntD//FsTQbQ92z6UShNFkBjY30cMnm3NQhop37W/l35HEXTPQAV/DJGYV6GeXyVAELeY+3CjK3ILrldfBdRVD7R9Eyu/vUrqbNehG34yhTXa/aztFwBV45+BCqLTGnlnDZhlk1+8=
Received: from BLUPR15MB0500.namprd15.prod.outlook.com (10.163.214.30) by
	BLUPR15MB0498.namprd15.prod.outlook.com (10.163.214.28) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Wed, 3 May 2017 08:29:24 +0000
Received: from BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) by
	BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) with mapi id
	15.01.1061.021; Wed, 3 May 2017 08:29:24 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Thread-Topic: [yocto] Recipe changes to pull/fetch the source code from local
	instead of a remote server.
Thread-Index: AdK+nZeqRgzitEp4Q3KhNXx8GvSpAwFLrpxwAAQOOwAAAplvUA==
Date: Wed, 3 May 2017 08:29:23 +0000
Message-ID: <BLUPR15MB0500B226413293138C64D9E2D0160@BLUPR15MB0500.namprd15.prod.outlook.com>
References: <BLUPR15MB05005784FB3B95086523368AD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
	<cd07a0e7-c106-470d-9be8-698f1c5c5832@linux.intel.com>
In-Reply-To: <cd07a0e7-c106-470d-9be8-698f1c5c5832@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
	header.d=none;linux.intel.com; dmarc=none action=none
	header.from=embedur.com;
x-originating-ip: [61.16.140.206]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BLUPR15MB0498;
	7:8cffz/svfwkCJJPO6GPUszmMtqNMzYtVAsifm7OO2zx77LUKgrWVMnCgKEx8uNnVACR1j4UhUTDc78YnMrw+Y3b2MMt9BwpYDokynY11cw2Q1G+N3Q+y1/q8DcN7wp8JaGB5kcBD9W/j43bSodnTH8VWwbzicYJiWlZMGdN2HdQYj0a/TM3iCIQDjGmhLCUR6WC2/QTqV9vCp5B0EnjZKR5MjgRXi/xEev+YrvFqWtk1BHN3eQ2Gds3SfDro3mLpRIkEETYtUnyBfSmVvnR23AGyXSR4tnUl6Mcyvs0GzhWcsog0mwtgkg11qVAcY52oeXMI3dwa2uw5Zu8lX+T0+g==
x-ms-office365-filtering-correlation-id: 4c104db2-7e99-4c3b-740b-08d491fe815b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075);
	SRVR:BLUPR15MB0498; 
x-microsoft-antispam-prvs: <BLUPR15MB0498FCD837AD00C11ACF169FD0160@BLUPR15MB0498.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(21748063052155)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123564025)(2016111802025)(20161123562025)(20161123555025)(20161123560025)(6043046)(6072148);
	SRVR:BLUPR15MB0498; BCL:0; PCL:0; RULEID:; SRVR:BLUPR15MB0498; 
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39400400002)(39450400003)(39410400002)(39840400002)(13464003)(24454002)(57704003)(377454003)(18717965001)(76176999)(54356999)(86362001)(6116002)(3280700002)(50986999)(7066003)(99286003)(7906003)(5660300001)(74316002)(53936002)(966004)(229853002)(53376002)(102836003)(55016002)(6306002)(508600001)(54896002)(3846002)(6246003)(236005)(2950100002)(6916009)(7736002)(7696004)(790700001)(81166006)(8676002)(9686003)(189998001)(53546009)(3660700001)(8936002)(2906002)(25786009)(77096006)(6506006)(606005)(33656002)(6436002)(2900100001)(110136004)(122556002)(38730400002)(66066001)(4326008);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR15MB0498;
	H:BLUPR15MB0500.namprd15.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2017 08:29:23.9994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR15MB0498
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Wed, 03 May 2017 09:03:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR15MB0500B226413293138C64D9E2D0160BLUPR15MB0500namp_"

--_000_BLUPR15MB0500B226413293138C64D9E2D0160BLUPR15MB0500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Alex,



Please see the recipe here.



SUMMARY =3D "HAL for RDK CCSP components"

HOMEPAGE =3D "http://github.com/belvedere-yocto/hal"



LICENSE =3D "Apache-2.0"

LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D175792518e4ac015ab6696d16c4f607e=
"



PROVIDES =3D "virtual/ccsp-hal"



SRC_URI =3D "${RDKB_CCSP_ROOT_GIT}/hal/generic;protocol=3D${RDK_GIT_PROTOCO=
L};branch=3D${CCSP_GIT_BRANCH};name=3Dhal"



SRCREV_hal =3D "${AUTOREV}"

SRCREV_FORMAT =3D "hal"



PV =3D "${RDK_RELEASE}+git${SRCPV}"



S =3D "${WORKDIR}/git"

CFLAGS_prepend =3D "-I${S}/include"



inherit autotools



I went through the link as well, however I don't see the variables (EXTERNA=
LSRC<http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#var-EX=
TERNALSRC>, EXTERNALSRC_BUILD<http://www.yoctoproject.org/docs/2.2/ref-manu=
al/ref-manual.html#var-EXTERNALSRC_BUILD>) are defined in the recipes.



Thanks

-Aravindh

-----Original Message-----
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]
Sent: 03 May 2017 12:42
To: yocto@yoctoproject.org; Aravindhlal G.S.S
Subject: Re: [yocto] Recipe changes to pull/fetch the source code from loca=
l instead of a remote server.



On 05/03/2017 08:16 AM, Aravindhlal G.S.S wrote:

> I am trying to make changes in the bitbake files(recipes) to

> pull/fetch the source code from the local instead of the remote

> server. The SRC_URI points to the local workspace, however I see that

> while building the source code is pulled from a remote repository.



Can you copy-paste the recipe here? Or at least what the SRC_URI specifical=
ly says? You can obfuscate your project name etc, if that is confidential.



> Do I need to make any specific changes in the recipes or any conf

> files under build directory (auto.conf) ? Could you please let me your

> pointers/suggestions ?



Maybe this?

http://www.yoctoproject.org/docs/2.2/dev-manual/dev-manual.html#building-so=
ftware-from-an-external-source



> [Gentle reminder]

> Can someone help me here, please ?



It's more difficult to provide help, if you describe the issue in generic t=
erms, maybe that's why there was no reaction.





Alex

--_000_BLUPR15MB0500B226413293138C64D9E2D0160BLUPR15MB0500namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
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
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Alex,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Please see the recipe here.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">SUMMARY =3D &quo=
t;HAL for RDK CCSP components&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">HOMEPAGE =3D &qu=
ot;http://github.com/belvedere-yocto/hal&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">LICENSE =3D &quo=
t;Apache-2.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">LIC_FILES_CHKSUM=
 =3D &quot;file://LICENSE;md5=3D175792518e4ac015ab6696d16c4f607e&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">PROVIDES =3D &qu=
ot;virtual/ccsp-hal&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">SRC_URI =3D &quo=
t;${RDKB_CCSP_ROOT_GIT}/hal/generic;protocol=3D${RDK_GIT_PROTOCOL};branch=
=3D${CCSP_GIT_BRANCH};name=3Dhal&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">SRCREV_hal =3D &=
quot;${AUTOREV}&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">SRCREV_FORMAT =
=3D &quot;hal&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">PV =3D &quot;${R=
DK_RELEASE}&#43;git${SRCPV}&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">S =3D &quot;${WO=
RKDIR}/git&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">CFLAGS_prepend =
=3D &quot;-I${S}/include&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;;background:yellow;mso-highlight:yellow">inherit autotool=
s</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;=
"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText">I went through the link as well, however I don&#8=
217;t see the variables (<a href=3D"http://www.yoctoproject.org/docs/2.2/re=
f-manual/ref-manual.html#var-EXTERNALSRC" target=3D"_top">EXTERNALSRC</a>,
<a href=3D"http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#=
var-EXTERNALSRC_BUILD" target=3D"_top">
EXTERNALSRC_BUILD</a>) are defined in the recipes.<o:p></o:p></p>
<p class=3D"MsoPlainText"><a name=3D"_MailEndCompose"><o:p>&nbsp;</o:p></a>=
</p>
<p class=3D"MsoPlainText">Thanks<o:p></o:p></p>
<p class=3D"MsoPlainText">-Aravindh<o:p></o:p></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">-----Original Message-----<b=
r>
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com] <br>
Sent: 03 May 2017 12:42<br>
To: yocto@yoctoproject.org; Aravindhlal G.S.S<br>
Subject: Re: [yocto] Recipe changes to pull/fetch the source code from loca=
l instead of a remote server.</span><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">On 05/03/2017 08:16 AM, Aravindhlal G.S.S wrote:<=
o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; I am trying to make changes in the bitbake f=
iles(recipes) to
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; pull/fetch the source code from the local in=
stead of the remote
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; server. The SRC_URI points to the local work=
space, however I see that
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; while building the source code is pulled fro=
m a remote repository.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Can you copy-paste the recipe here? Or at least w=
hat the SRC_URI specifically says? You can obfuscate your project name etc,=
 if that is confidential.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Do I need to make any specific changes in th=
e recipes or any conf
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; files under build directory (auto.conf) ? Co=
uld you please let me your
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; pointers/suggestions ?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Maybe this?<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://www.yoctoproject.org/docs/2.2/d=
ev-manual/dev-manual.html#building-software-from-an-external-source"><span =
style=3D"color:windowtext;text-decoration:none">http://www.yoctoproject.org=
/docs/2.2/dev-manual/dev-manual.html#building-software-from-an-external-sou=
rce</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; [Gentle reminder]<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Can someone help me here, please ?<o:p></o:p=
></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">It's more difficult to provide help, if you descr=
ibe the issue in generic terms, maybe that's why there was no reaction.<o:p=
></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Alex<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLUPR15MB0500B226413293138C64D9E2D0160BLUPR15MB0500namp_--
