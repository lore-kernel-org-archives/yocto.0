Return-Path: <radoslaw.chmielarz@leica-geosystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6D0CE00BC4; Sat, 27 Oct 2018 04:13:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.0.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 54204 seconds by postgrey-1.32 at yocto-www;
	Sat, 27 Oct 2018 04:13:53 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00135.outbound.protection.outlook.com [40.107.0.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFA2E00AB9
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2018 04:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com; 
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=OpDZbFl3CGiVoFgjthASJY7hCykYbZ1Fn/mcXcrm0zQ=;
	b=DtYUFkBJMd9vJfcHvWYeUriGonGus/QORhHQT9HrQzPu+rSCmxBpj72ZhxH53dZtrPUU1Nqx+jZ/qWd545BLr6UPp+z0FNW714MJoPUit6CyZevq4nc4GpQ/7Nhe2pZ4CcckmYx17LwOpbxO49IAcGZxweij96bRqB3kmQtcpxE=
Received: from AM5PR0602MB2802.eurprd06.prod.outlook.com (10.175.39.151) by
	AM5PR0602MB3234.eurprd06.prod.outlook.com (10.167.170.151) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1273.25; Fri, 26 Oct 2018 12:38:52 +0000
Received: from AM5PR0602MB2802.eurprd06.prod.outlook.com
	([fe80::d000:7ca0:c36a:6e0a]) by
	AM5PR0602MB2802.eurprd06.prod.outlook.com
	([fe80::d000:7ca0:c36a:6e0a%2]) with mapi id 15.20.1273.025;
	Fri, 26 Oct 2018 12:38:52 +0000
From: CHMIELARZ Radoslaw <radoslaw.chmielarz@leica-geosystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Moving to Yocto 2.3 - recipe-specific sysroots - improving the
	documentation
Thread-Index: AdRtJbL7Sh2+bMD5S7Wgz5ZgxX8v8w==
Date: Fri, 26 Oct 2018 12:38:52 +0000
Message-ID: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=radoslaw.chmielarz@leica-geosystems.com; 
x-originating-ip: [193.8.40.126]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0602MB3234;
	6:aqh6P3UluBM1QMDA4Ptd5uhd+c++NEzgbIy8afVX+VAjzHAFxmg2Qfvqa8GNXs8vaTFRkR6tHqn00fElNwWNggdw7bEo0nMywqlJovAMY/gWeT2C+ZvrjF/1xQXjNX1JqvnClP0sGd/lGbl3oIRW6iwwP5UP4N/6UTPWO4zRg4lzbdAC+ZF+sE1nPPvYc8iCbv7n2wP7Dc/hCo2aWLLN5oPlBN05MN7Z9R55sj3WY7jsyj17aNjo+a4+wpu5iXoEYivJuIpS/XILq0HnlD8nXAz5oocdLxa2W1R1MwErNGVbPfKGEFi8s8ODaqC41xSzWfYRQasab39pEW/aK/PvwEhnnhIY8RYI+GBIK8yV6+1igwop/F3T/q+6uZ08DHJB3gDrDVNmU++M03Z8KCfPURQwGI0wHfw8O5XK0azaB7fdRn5CNI3tyj5RppFrSk5hHZih3j3tRCdyvUHXlB6YYQ==;
	5:PKAPglldYH2SwW6K80aBHsb191T/qOoGvSECvQShEfSrGqeUPIeNA+gKHOA888OK4buRjTBPqmXFb6LzmIJLCOQrVNZljqeDSsWuzh5QQ2TlA4KJnHfyzFBClHGdKWquXq2zOop4tNAdYS9Y1FV8+VfmaE7foKA4Fs7f24R8w1o=;
	7:gDVOaEHO3Z+jiUkzefo4ybHjj3roO5cmb54YIt6gQiGhwGcjgmEWAo3sVncTvEAXfo94csrC6Ka92RDkGs/di7e25bre3iCuSP5fDDo4fl0pgj2L6QoOzOKBcbGTDJqibcErUR+PnGK+HVbITOwMhQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 9756026c-f660-4f9f-718b-08d63b3ffcc7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0602MB3234; 
x-ms-traffictypediagnostic: AM5PR0602MB3234:
x-microsoft-antispam-prvs: <AM5PR0602MB3234FF657B5A5FF47909985CB1F00@AM5PR0602MB3234.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231355)(944501410)(52105095)(6055026)(148016)(149066)(150057)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:AM5PR0602MB3234; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0602MB3234; 
x-forefront-prvs: 083751FCA6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(346002)(396003)(366004)(376002)(39850400004)(53754006)(189003)(199004)(606006)(2906002)(7696005)(5630700001)(33656002)(53936002)(105586002)(106356001)(256004)(26005)(186003)(74316002)(14454004)(25786009)(66066001)(476003)(7736002)(97736004)(478600001)(102836004)(6506007)(99286004)(19627235002)(86362001)(2501003)(486006)(5640700003)(81166006)(5250100002)(6436002)(68736007)(316002)(8676002)(81156014)(1730700003)(8936002)(236005)(54896002)(6306002)(9686003)(2351001)(2900100001)(71190400001)(71200400001)(3846002)(6116002)(790700001)(5660300001)(55016002)(6916009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0602MB3234;
	H:AM5PR0602MB2802.eurprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: leica-geosystems.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: e8T4UpyWvuViVr7hV8VooRBjIBBneMa25FNJEaEAxos7zUEnIW0gGrOTcDnnNn9YH5POUWZ4AGis13vIZwLq37LEZdm9UG2cIAyh/uQX9HzWZuLyA2Gj9FpY/ZjQwzY7cSsi8mgYdsMqjVilPS1H4ePZkEPCav141+tvcXcLpLonI8WAje34dFR81jazCHQpm88QycB78qu6Z2r6JQXggtApIJOwcrgIDD4FU2aBX8TagtdFX53SpZfGkQHzlfUzwS8kYy4HbiRgglXzMj+e6xbmt6jhBttszUxXBM/Nyo/TMrZM4E46Kp9ovXSGdeO4A8TTsRijD7zDV8Jw5WUBcSD8IbY/lD1/1vayQ4hKloM=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9756026c-f660-4f9f-718b-08d63b3ffcc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2018 12:38:52.8270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0602MB3234
X-Mailman-Approved-At: Tue, 30 Oct 2018 00:04:14 -0700
Subject: Moving to Yocto 2.3 - recipe-specific sysroots - improving the documentation
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
X-List-Received-Date: Sat, 27 Oct 2018 11:13:56 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0602MB2802B8C31D3325291398D156B1F00AM5PR0602MB2802_"

--_000_AM5PR0602MB2802B8C31D3325291398D156B1F00AM5PR0602MB2802_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I think the documentation on migrating between Yocto 2.2 and 2.3 needs more=
 clarification as to how did the sysroots have changed.

I wanted to migrate our build system from 2.2 to 2.5 and one package in par=
ticular has caused me a day worth of scratching my head and trying differen=
t ideas.
We have a custom recipe for openssh-server which among other things had a l=
ine:
EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR}/${MACHINE}/usr/local/ope=
nssl-1.0"

This is due the fact that openssl-1.0 is being installed to /usr/local/open=
ssl-1.0.

Now when trying to migrate I have noticed that STAGING_DIR is not populated=
 any more and this is clearly explained by the documentation. What is not e=
xplained however is how to get the files from other recipes. The documentat=
ion simply states that each recipe has its own staging directory. Hence wha=
t I have tried to is steer this directory to the staging directory of opens=
sl-1.0.

Of course the real solution is that openssh-server recipe installs header f=
iles of all packages in DEPENDS into openssh-server STAGING_DIR_TARGET (in =
my case, could be other STAGING_* directories apart from STAGING_DIR which =
is empty right now) and the simple solution was to change the above line to=
:
EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR_TARGET}/usr/local/openssl=
-1.0"

And thus to save other people time I think it would be best to add another =
point to the documentation (https://www.yoctoproject.org/docs/2.5.1/ref-man=
ual/ref-manual.html#migration-2.3-recipe-specific-sysroots)
"Consider the following:
[..]

  *   Examine the recipes that use STAGING_DIR: STAGING_DIR is a shared dir=
ectory not populated any more. Instead if You want to use files from anothe=
r recipe in Your recipe include that recipe in DEPENDS variable which will =
copy the files from another recipe into Your recipe's staging directories. =
Now You can refer to those files using STAGING_DIR* pointing to Your recipe=
's staging directories. For example instead of:
EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR}/${MACHINE}/usr/local/ope=
nssl-1.0"
                Write the following:
                               DEPENDS +=3D "openssl-1.0"
EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR_TARGET}/usr/local/openssl=
-1.0"
"

Of course this can be made more general and a precaution could be added tha=
t this is taken care of by most of the packages. Maybe in my case it could =
also be changed to be automatic but this I haven't yet explored.

Cheers,
Radek Chmielarz
Leica Geosystems AG

--_000_AM5PR0602MB2802B8C31D3325291398D156B1F00AM5PR0602MB2802_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
/* List Definitions */
@list l0
	{mso-list-id:372922146;
	mso-list-type:hybrid;
	mso-list-template-ids:963790364 2105941344 134676483 134676485 134676481 1=
34676483 134676485 134676481 134676483 134676485;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
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
<body lang=3D"DE-CH" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"PL">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I think the documentation on mi=
grating between Yocto 2.2 and 2.3 needs more clarification as to how did th=
e sysroots have changed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I wanted to migrate our build s=
ystem from 2.2 to 2.5 and one package in particular has caused me a day wor=
th of scratching my head and trying different ideas.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have a custom recipe for ope=
nssh-server which among other things had a line:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">EXTRA_OECONF &#43;=3D &quot;--w=
ith-ssl-dir=3D${STAGING_DIR}/${MACHINE}/usr/local/openssl-1.0&quot;<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This is due the fact that opens=
sl-1.0 is being installed to /usr/local/openssl-1.0.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now when trying to migrate I ha=
ve noticed that STAGING_DIR is not populated any more and this is clearly e=
xplained by the documentation. What is not explained however is how to get =
the files from other recipes. The documentation
 simply states that each recipe has its own staging directory. Hence what I=
 have tried to is steer this directory to the staging directory of openssl-=
1.0.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Of course the real solution is =
that openssh-server recipe installs header files of all packages in DEPENDS=
 into openssh-server STAGING_DIR_TARGET (in my case, could be other STAGING=
_* directories apart from STAGING_DIR
 which is empty right now) and the simple solution was to change the above =
line to:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">EXTRA_OECONF &#43;=3D &quot;--w=
ith-ssl-dir=3D${STAGING_DIR_TARGET}/usr/local/openssl-1.0&quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And thus to save other people t=
ime I think it would be best to add another point to the documentation (<a =
href=3D"https://www.yoctoproject.org/docs/2.5.1/ref-manual/ref-manual.html#=
migration-2.3-recipe-specific-sysroots">https://www.yoctoproject.org/docs/2=
.5.1/ref-manual/ref-manual.html#migration-2.3-recipe-specific-sysroots</a>)=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;Consider the following:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[..]<o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Examine the recipes that use STAGING_DIR: STAGIN=
G_DIR is a shared directory not populated any more. Instead if You want to =
use files from another recipe in Your
 recipe include that recipe in DEPENDS variable which will copy the files f=
rom another recipe into Your recipe&#8217;s staging directories. Now You ca=
n refer to those files using STAGING_DIR* pointing to Your recipe&#8217;s s=
taging directories. For example instead of:<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt;text-indent:35.4pt"><spa=
n lang=3D"EN-US">EXTRA_OECONF &#43;=3D &quot;--with-ssl-dir=3D${STAGING_DIR=
}/${MACHINE}/usr/local/openssl-1.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Write the follo=
wing:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
DEPENDS &#43;=3D &#8220;openssl-1.0&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt;text-indent:35.4pt"><spa=
n lang=3D"EN-US">EXTRA_OECONF &#43;=3D &quot;--with-ssl-dir=3D${STAGING_DIR=
_TARGET}/usr/local/openssl-1.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Of course this can be made more=
 general and a precaution could be added that this is taken care of by most=
 of the packages. Maybe in my case it could also be changed to be automatic=
 but this I haven&#8217;t yet explored.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Cheers,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Radek Chmielarz<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Leica Geosystems AG<o:p></o:p><=
/span></p>
</div>
</body>
</html>

--_000_AM5PR0602MB2802B8C31D3325291398D156B1F00AM5PR0602MB2802_--
