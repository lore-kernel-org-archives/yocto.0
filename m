Return-Path: <Srinivasa.RaoW@Ltts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC71E00C14; Tue,  2 Apr 2019 16:26:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.139.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 18082 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Apr 2019 16:26:50 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-eopbgr1390074.outbound.protection.outlook.com [40.107.139.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A05E00754
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 16:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ltts.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=0awfyIJUo4odga2ID0fgQ2j9D1y6ntOt2WOXgztfGuE=;
	b=V4R4fRq65Fg3T9ToD/eY28CLUjXOdJbXq5sNi9GrVi188a34v41QLIY9BxuOeSwiz3evOXIH/mLspn8Ytf27TzRc1ev4JmlGox1vP8OSIpI7ZghB8qnv+tLM9Dq3JLywJ8v2OKvZSo7YK1tNuI5LgRQIGi1Qhq4E5nAgMI7BHXs=
Received: from MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM (20.179.238.15) by
	MA1PR01MB2362.INDPRD01.PROD.OUTLOOK.COM (52.134.147.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1750.17; Tue, 2 Apr 2019 12:52:28 +0000
Received: from MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM
	([fe80::88eb:16e9:d25f:ae0b]) by
	MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM
	([fe80::88eb:16e9:d25f:ae0b%2]) with mapi id 15.20.1750.017;
	Tue, 2 Apr 2019 12:52:28 +0000
From: Srinivasa RaoW <Srinivasa.RaoW@Ltts.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Development environment for Grub bootloader and Linux
Thread-Index: AdTpUrl6Mxx5Pt0gS9u+UkaX4jm7KQ==
Date: Tue, 2 Apr 2019 12:52:28 +0000
Message-ID: <MA1PR01MB3689C606A400567C9831BC0FE5560@MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Srinivasa.RaoW@Ltts.com; 
x-originating-ip: [14.141.44.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ddc9149-1f07-49a1-e312-08d6b76a1041
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600139)(711020)(4605104)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:MA1PR01MB2362; 
x-ms-traffictypediagnostic: MA1PR01MB2362:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MA1PR01MB2362F7EA029E0184FF815BF2E5560@MA1PR01MB2362.INDPRD01.PROD.OUTLOOK.COM>
x-forefront-prvs: 0995196AA2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(53376002)(1730700003)(5660300002)(71190400001)(99286004)(6506007)(66066001)(2351001)(6436002)(606006)(55236004)(102836004)(316002)(33656002)(2906002)(105586002)(97736004)(7696005)(55016002)(52536014)(9686003)(5640700003)(790700001)(6116002)(54896002)(8936002)(6916009)(106356001)(53936002)(71200400001)(186003)(25786009)(6306002)(81166006)(8676002)(256004)(486006)(14444005)(413944005)(476003)(74316002)(68736007)(86362001)(72206003)(7066003)(478600001)(2501003)(26005)(3846002)(14454004)(81156014)(7736002)(236005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB2362;
	H:MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: Ltts.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7nqk01IvaDzSd3cko4HEKzN6XIGKgR+6ItCPMxyyOWpLdQBI8lpACz6XtS3Z0Bmo6Vp2TJLFk3Gc2quHCsH1INtRoyvHhpW6cuqaId4TDJcN9zy2r90OQHP1vblPMivpJ176LphnYWSLEMsp/tTtmSXhU7mn5NousauK3vOWUOfowkYmEOE/msFcBHcCJgifZfro6Cb97A187DFWXKL6Jn+sqqUIN5GVKWcxZXUBSlEZb1BvaoD2VwrT9koVd/PkM/OlwryUU5d3roW0hUuNnas8OlXRiG4rmvntWmjrhty2VD4Tag5VfL0bEiKibMyfvprgY2k7JynOndsY0xerFimj1P1dKK+xFHkztqXU/SfEk/NwEkGPSm2mIfNcLu/6eG5fxI77NcspP/RJnxF42lUCtYDICijA0e2n76YxNCE=
MIME-Version: 1.0
X-OriginatorOrg: ltts.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ddc9149-1f07-49a1-e312-08d6b76a1041
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2019 12:52:28.4892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 311b3378-8e8a-4b5e-a33f-e80a3d8ba60a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2362
X-Mailman-Approved-At: Mon, 08 Apr 2019 09:30:29 -0700
Subject: Development environment for Grub bootloader and Linux
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
X-List-Received-Date: Tue, 02 Apr 2019 23:26:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB3689C606A400567C9831BC0FE5560MA1PR01MB3689INDP_"

--_000_MA1PR01MB3689C606A400567C9831BC0FE5560MA1PR01MB3689INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear All,
I have a requirement of modifying Grub bootloader for x86 architecture but =
Just read the Wiki Page of Yocto and it states as below"
"The Yocto Project<http://yoctoproject.org/> is an open-source project that=
 delivers a set of tools that create operating system images for embedded L=
inux systems"
Towards this I have below questions:

  1.  Does Yocto project support only Linux systems?
  2.  Do we have repositories/build tool chain for Grub bootloader?
  3.  Which is the bootloader that Yocto project recommends for x86 archite=
cture?
I am trying to setup a development environment under Ubunt Host for x86 tar=
get architecture.  Goal is to build Grub bootloader, Ubuntu linux and root =
file system all together under one umbrella.
Please let me know if Yocto has anything for this.
Appreciate any input on this.
Regards
Srinivasa


L&T Technology Services Ltd

www.LTTS.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_MA1PR01MB3689C606A400567C9831BC0FE5560MA1PR01MB3689INDP_
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
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:106%;
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
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParag=
raphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListPar=
agraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagra=
phCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:88547128;
	mso-list-type:hybrid;
	mso-list-template-ids:-803686622 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.25in;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:2.75in;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.25in;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear All,<o:p></o:p></p>
<p class=3D"MsoNormal">I have a requirement of modifying Grub bootloader fo=
r x86 architecture but Just read the Wiki Page of Yocto and it states as be=
low&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;<u><span style=3D"font-size:9.5pt;line-height=
:106%;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white=
">The&nbsp;</span><a href=3D"http://yoctoproject.org/"><span style=3D"font-=
size:9.5pt;line-height:106%;font-family:&quot;Arial&quot;,sans-serif;color:=
#3366BB;background:white">Yocto
 Project</span></a></u><u><span style=3D"font-size:9.5pt;line-height:106%;f=
ont-family:&quot;Arial&quot;,sans-serif;color:black;background:white">&nbsp=
;is an open-source project that delivers a set of tools that create operati=
ng system images for embedded Linux systems</span></u>&#8221;<o:p></o:p></p=
>
<p class=3D"MsoNormal">Towards this I have below questions:<o:p></o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraphCxSpFirst" style=3D"margin-left:-.25in;mso-add=
-space:auto;mso-list:l0 level1 lfo1">
Does Yocto project support only Linux systems?<o:p></o:p></li><li class=3D"=
MsoListParagraphCxSpMiddle" style=3D"margin-left:-.25in;mso-add-space:auto;=
mso-list:l0 level1 lfo1">
Do we have repositories/build tool chain for Grub bootloader?<o:p></o:p></l=
i><li class=3D"MsoListParagraphCxSpLast" style=3D"margin-left:-.25in;mso-ad=
d-space:auto;mso-list:l0 level1 lfo1">
Which is the bootloader that Yocto project recommends for x86 architecture?=
<o:p></o:p></li></ol>
<p class=3D"MsoNormal">I am trying to setup a development environment under=
 Ubunt Host for x86 target architecture.&nbsp; Goal is to build Grub bootlo=
ader, Ubuntu linux and root file system all together under one umbrella.&nb=
sp;
<o:p></o:p></p>
<p class=3D"MsoNormal">Please let me know if Yocto has anything for this. <=
o:p></o:p></p>
<p class=3D"MsoNormal">Appreciate any input on this. <o:p></o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Srinivasa<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"" http:www.LTTS.com??=3D"" target=3D"" _blank??=3D"">www.LTTS=
.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_MA1PR01MB3689C606A400567C9831BC0FE5560MA1PR01MB3689INDP_--
