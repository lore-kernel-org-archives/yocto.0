Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 376EEE00DC2; Fri, 16 Mar 2018 23:55:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [182.65.227.130 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.34.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3621 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Mar 2018 23:55:43 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0072.outbound.protection.outlook.com [104.47.34.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05639E006E9
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 23:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9yI2C4FcWZDQFREMp6JSkHRkDaMnx8nTbgjmVFyYfB0=;
	b=YzVBg++2l9PM1moTMFJyt1U8flf+BoocLeAkMO7KqeKHVoJ9+kykgZO0QAJTEAAVPUVvNMQWe7072BtN1oPvQJbrZEJCRyOwlESUCPgckxYEwB2V57pTY84wDeJ3HLSBMtejM6xySf5SAhldQsUUpn2nstpD8/KlDDdYjNLiCZk=
Received: from CY4PR15MB1190.namprd15.prod.outlook.com (10.172.177.12) by
	CY4PR15MB1207.namprd15.prod.outlook.com (10.172.177.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Sat, 17 Mar 2018 05:22:46 +0000
Received: from CY4PR15MB1190.namprd15.prod.outlook.com
	([fe80::98de:45a5:c7e1:5740]) by
	CY4PR15MB1190.namprd15.prod.outlook.com
	([fe80::98de:45a5:c7e1:5740%13]) with mapi id 15.20.0588.016;
	Sat, 17 Mar 2018 05:22:46 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to Skip recipes ?
Thread-Index: AdO9r5pVScPnJAddQO21gd0kxNjB5A==
Date: Sat, 17 Mar 2018 05:22:45 +0000
Message-ID: <CY4PR15MB11909218C6330B8DCA81AC98D0D60@CY4PR15MB1190.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aravindhlalgss@embedur.com; 
x-originating-ip: [182.65.227.130]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR15MB1207;
	6:Io3xH5ChgE7QUgj4dPbE03hIvollPo+21t2Tf1glIXXXePF91tg8cUNWz3VQtgP2Fdx9gN2OQXkyJF8T1bkZJ14CSP72b8y5qTc8r38DY433fAWD5mSYJJxYW7u511er+1QpSp0jPBFa0a7uEa6vFJLlDEiyy+ZeQNeA8jhEqEFjiXwN5uk5+xEG6IOynp2mjmQYr4bfXJNlhwvbj13qWK6xehWyEfQmmZIFDJBkaybNAdtISe+XcIcXp6mt6FFdBMjNGVpkAV0JoXyNSNB7dVWqTrjKqBLEZciRUZ5GD3JW4Q9IcKeVkORWulk3Rk3Nk5jyuHHm7JINGnzmCoNbxV7PL9eGZdVsoXp0kEMsEQ5VSrRCOFlYe/6M3U+V+ViD;
	5:TzlbjxXuBetL6Py8lY8i/gjI4XUVDg2tbUlhLq7UzskzQHiKHm5lCBCuddcTvlmbRGXTLBvv+Q4lrm9ksd2wxoi37j6SCGTjLKirDi9bdwvZ+Ey53UuU/vF/JJ8yW5aNrmKeXri7I/HWOGuCLOlkRT+J96UgLGdBvKFRAc/OnaE=;
	24:LMFf8z87wLnU63xd8s/TTrN2O5IAMrUsM5kfAbMkf9hJDe8x8t5FI6Y7JjpEEARI1uHcq2qZxHzYs1g99Ml17QGkha7UedItaJeKK7UJNaw=;
	7:EGX8u0J9N794Wm5IfdK1h3DI4lokHWeuLiNk0F+IMfRgdj/LbdCRj54RG5Y5mxGBdkaZJIZFvA/sHKGaxMdNp91Vui65KO7K4OY9mqmENg8oTPo1QZ9vNZA01KtcwJI+OPa7sCE6edP6QFE5Zo9hQpLlrbULPI4Iev9QoFnikuNSLV7BXFj9BjbLYOjgZk8qdGzaP9g55eQvgqFq+41ulE6GD1SVoM37UaLY/z2g86zAEgx2KgiE7IE/lXz+lmOc
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 7cf42a31-d68d-4785-c4c5-08d58bc71dfa
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(7168020)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:CY4PR15MB1207; 
x-ms-traffictypediagnostic: CY4PR15MB1207:
x-microsoft-antispam-prvs: <CY4PR15MB1207798889455D028EC91416D0D60@CY4PR15MB1207.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231221)(944501294)(52105095)(10201501046)(6041310)(20161123562045)(20161123560045)(2016111802025)(20161123564045)(20161123558120)(6043046)(6072148)(201708071742011);
	SRVR:CY4PR15MB1207; BCL:0; PCL:0; RULEID:; SRVR:CY4PR15MB1207; 
x-forefront-prvs: 06141B80DC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(366004)(39830400003)(39380400002)(346002)(396003)(199004)(189003)(5250100002)(14454004)(2351001)(105586002)(3480700004)(99286004)(86362001)(102836004)(316002)(3280700002)(7696005)(2906002)(6916009)(3846002)(790700001)(6116002)(26005)(2501003)(3660700001)(8936002)(25786009)(1730700003)(81166006)(81156014)(8676002)(186003)(55016002)(478600001)(6436002)(2900100001)(6506007)(6306002)(5640700003)(5630700001)(54896002)(74316002)(7736002)(9686003)(53936002)(68736007)(33656002)(97736004)(66066001)(106356001)(5660300001)(55236004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1207;
	H:CY4PR15MB1190.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: embedur.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: RkOJdrsyokhH8QHRvm41CdFaDURUPmg9XfO8BA82UKe0gm8xfF74Rtl9a52lWAauPBC5ZvURcdpLUVB/WNkD8H69fRa19yQQOeFoH3nwf0rbpyPTgqQjH6XU43327I/7tm/zTCu+LeOyYNexGkdU7pkpitfsGDxBwGLlWfFVfvyT5ye064UiVwtMtwRSMiFjOTQx+s0SqvyeUyF5Qpppnkv/btKPKXlikJpJ+aNVvZtcsw8OI6QO5hYyWI171w8xgDpliQGE6wHffeH1wBNXZdxOnMCYrCBFt0arw73n2TIrrS8xmVGNzng58wQHUFRs8/7qd1wuGDiFIEa40jgHdA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cf42a31-d68d-4785-c4c5-08d58bc71dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2018 05:22:45.9425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1207
Subject: How to Skip recipes ?
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
X-List-Received-Date: Sat, 17 Mar 2018 06:55:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR15MB11909218C6330B8DCA81AC98D0D60CY4PR15MB1190namp_"

--_000_CY4PR15MB11909218C6330B8DCA81AC98D0D60CY4PR15MB1190namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yocto Gurus,

I am trying to Skip running a recipe for a particular machine configuration=
 and I am using the below statement in recipe to accomplish it, however I a=
m getting the below errors.

python () {
    if <condition>:
        raise bb.parse.SkipRecipe("Message")
}

Errors:
NOTE: Runtime target 'arris-kmod-headers-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['arris-kmod-headers-dev']
ERROR: Nothing RPROVIDES 'arris-kmod-headers' (but /export/asantharam/ws_xb=
6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes=
-arris/arris-kmod/arris-kmod-headers.bb RDEPENDS on or otherwise requires i=
t)
ERROR: No eligible RPROVIDERs exist for 'arris-kmod-headers'
NOTE: Runtime target 'arris-kmod-headers' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['arris-kmod-headers']
ERROR: Nothing RPROVIDES 'mibleaf-docsis' (but /export/asantharam/ws_xb6/sy=
ndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-doc=
sis/docsis/mibleaf-docsis.bb RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'mibleaf-docsis'
NOTE: Runtime target 'mibleaf-docsis' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mibleaf-docsis']
ERROR: Nothing RPROVIDES 'mibleaf-docsis-dev' (but /export/asantharam/ws_xb=
6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes=
-docsis/docsis/mibleaf-docsis.bb RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'mibleaf-docsis-dev'
NOTE: Runtime target 'mibleaf-docsis-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mibleaf-docsis-dev']
ERROR: Nothing RPROVIDES 'arris-pcable-headers-dev' (but /export/asantharam=
/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/r=
ecipes-bin/voice/arris-pcable-headers.bb RDEPENDS on or otherwise requires =
it)
ERROR: No eligible RPROVIDERs exist for 'arris-pcable-headers-dev'
NOTE: Runtime target 'arris-pcable-headers-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['arris-pcable-headers-dev']
ERROR: Nothing RPROVIDES 'arris-pcable-headers' (but /export/asantharam/ws_=
xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recip=
es-bin/voice/arris-pcable-headers.bb RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'arris-pcable-headers'
NOTE: Runtime target 'arris-pcable-headers' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['arris-pcable-headers']
ERROR: Nothing RPROVIDES 'libarris-rf-ds-calibration-headers' (but /export/=
asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arri=
sxb6-arm/recipes-arris/libarris-rf-ds-calibration/libarris-rf-ds-calibratio=
n-headers.bb RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'libarris-rf-ds-calibration-headers=
'
NOTE: Runtime target 'libarris-rf-ds-calibration-headers' is unbuildable, r=
emoving...
Missing or unbuildable dependency chain was: ['libarris-rf-ds-calibration-h=
eaders']
ERROR: Nothing RPROVIDES 'libarris-rf-ds-calibration-headers-dev' (but /exp=
ort/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-=
arrisxb6-arm/recipes-arris/libarris-rf-ds-calibration/libarris-rf-ds-calibr=
ation-headers.bb RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'libarris-rf-ds-calibration-headers=
-dev'
NOTE: Runtime target 'libarris-rf-ds-calibration-headers-dev' is unbuildabl=
e, removing...
Missing or unbuildable dependency chain was: ['libarris-rf-ds-calibration-h=
eaders-dev']
ERROR: Nothing RPROVIDES 'libarris-extswt' (but /export/asantharam/ws_xb6/s=
yndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-ar=
ris/libarris-extswt/libarris-extswt.bb RDEPENDS on or otherwise requires it=
)
ERROR: No eligible RPROVIDERs exist for 'libarris-extswt'
NOTE: Runtime target 'libarris-extswt' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libarris-extswt']
ERROR: Nothing RPROVIDES 'libarris-extswt-dev' (but /export/asantharam/ws_x=
b6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipe=
s-arris/libarris-extswt/libarris-extswt.bb RDEPENDS on or otherwise require=
s it)
ERROR: No eligible RPROVIDERs exist for 'libarris-extswt-dev'
NOTE: Runtime target 'libarris-extswt-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libarris-extswt-dev']
ERROR: Nothing RPROVIDES 'libarris-rdkb-vendor-headers-dev' (but /export/as=
antharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisx=
b6-arm/recipes-arris/libarris-rdkb-vendor/libarris-rdkb-vendor-headers.bb R=
DEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'libarris-rdkb-vendor-headers-dev'
NOTE: Runtime target 'libarris-rdkb-vendor-headers-dev' is unbuildable, rem=
oving...
Missing or unbuildable dependency chain was: ['libarris-rdkb-vendor-headers=
-dev']
ERROR: Nothing RPROVIDES 'libarris-rdkb-vendor-headers' (but /export/asanth=
aram/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-a=
rm/recipes-arris/libarris-rdkb-vendor/libarris-rdkb-vendor-headers.bb RDEPE=
NDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'libarris-rdkb-vendor-headers'
NOTE: Runtime target 'libarris-rdkb-vendor-headers' is unbuildable, removin=
g...
Missing or unbuildable dependency chain was: ['libarris-rdkb-vendor-headers=
']

Am I missing anything else ? or is there any alternate way to Skip the reci=
pes ?

Could you please guide me on this ?

Thanks
-Aravindh

--_000_CY4PR15MB11909218C6330B8DCA81AC98D0D60CY4PR15MB1190namp_
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
	{margin:0in;
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
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Yocto Gurus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to Skip running a recipe for a particula=
r machine configuration and I am using the below statement in recipe to acc=
omplish it, however I am getting the below errors.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">python () {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; if &lt;condition&gt;:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise bb.parse.=
SkipRecipe(&quot;Message&quot;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Errors:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'arris-kmod-headers-dev' is unbuildab=
le, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['arris-kmod-=
headers-dev']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'arris-kmod-headers' (but /export=
/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arr=
isxb6-arm/recipes-arris/arris-kmod/arris-kmod-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'arris-kmod-header=
s'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'arris-kmod-headers' is unbuildable, =
removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['arris-kmod-=
headers']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'mibleaf-docsis' (but /export/asa=
ntharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb=
6-arm/recipes-docsis/docsis/mibleaf-docsis.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'mibleaf-docsis'<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'mibleaf-docsis' is unbuildable, remo=
ving...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['mibleaf-doc=
sis']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'mibleaf-docsis-dev' (but /export=
/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arr=
isxb6-arm/recipes-docsis/docsis/mibleaf-docsis.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'mibleaf-docsis-de=
v'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'mibleaf-docsis-dev' is unbuildable, =
removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['mibleaf-doc=
sis-dev']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'arris-pcable-headers-dev' (but /=
export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/me=
ta-arrisxb6-arm/recipes-bin/voice/arris-pcable-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'arris-pcable-head=
ers-dev'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'arris-pcable-headers-dev' is unbuild=
able, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['arris-pcabl=
e-headers-dev']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'arris-pcable-headers' (but /expo=
rt/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-a=
rrisxb6-arm/recipes-bin/voice/arris-pcable-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'arris-pcable-head=
ers'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'arris-pcable-headers' is unbuildable=
, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['arris-pcabl=
e-headers']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'libarris-rf-ds-calibration-heade=
rs' (but /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel=
-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rf-ds-calibration/libarris=
-rf-ds-calibration-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'libarris-rf-ds-ca=
libration-headers'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'libarris-rf-ds-calibration-headers' =
is unbuildable, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['libarris-rf=
-ds-calibration-headers']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'libarris-rf-ds-calibration-heade=
rs-dev' (but /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-i=
ntel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rf-ds-calibration/liba=
rris-rf-ds-calibration-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'libarris-rf-ds-ca=
libration-headers-dev'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'libarris-rf-ds-calibration-headers-d=
ev' is unbuildable, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['libarris-rf=
-ds-calibration-headers-dev']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'libarris-extswt' (but /export/as=
antharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisx=
b6-arm/recipes-arris/libarris-extswt/libarris-extswt.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'libarris-extswt'<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'libarris-extswt' is unbuildable, rem=
oving...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['libarris-ex=
tswt']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'libarris-extswt-dev' (but /expor=
t/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-ar=
risxb6-arm/recipes-arris/libarris-extswt/libarris-extswt.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'libarris-extswt-d=
ev'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'libarris-extswt-dev' is unbuildable,=
 removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['libarris-ex=
tswt-dev']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'libarris-rdkb-vendor-headers-dev=
' (but /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-g=
w-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rdkb-vendor/libarris-rdkb-ve=
ndor-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'libarris-rdkb-ven=
dor-headers-dev'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'libarris-rdkb-vendor-headers-dev' is=
 unbuildable, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['libarris-rd=
kb-vendor-headers-dev']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: Nothing RPROVIDES 'libarris-rdkb-vendor-headers' (b=
ut /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb=
6/meta-arrisxb6-arm/recipes-arris/libarris-rdkb-vendor/libarris-rdkb-vendor=
-headers.bb
 RDEPENDS on or otherwise requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ERROR: No eligible RPROVIDERs exist for 'libarris-rdkb-ven=
dor-headers'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">NOTE: Runtime target 'libarris-rdkb-vendor-headers' is unb=
uildable, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Missing or unbuildable dependency chain was: ['libarris-rd=
kb-vendor-headers']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Am I missing anything else ? or is there any alterna=
te way to Skip the recipes ?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could you please guide me on this ? <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Aravindh<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4PR15MB11909218C6330B8DCA81AC98D0D60CY4PR15MB1190namp_--
