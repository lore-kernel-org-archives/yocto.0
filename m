Return-Path: <Edmund.Nadolski@microsoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C988E00C81; Sat, 15 Dec 2018 04:17:47 -0800 (PST)
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
	*      [40.107.77.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 66784 seconds by postgrey-1.32 at yocto-www;
	Sat, 15 Dec 2018 04:17:45 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr770130.outbound.protection.outlook.com [40.107.77.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F20E00C4E
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 04:17:45 -0800 (PST)
Received: from MWHPR21MB0141.namprd21.prod.outlook.com (10.173.52.11) by
	CY4PR21MB0136.namprd21.prod.outlook.com (10.173.189.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1471.4; Sat, 15 Dec 2018 12:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Wx9ywZC37BDbjTx0rtDvyRA/bPaBUfmFwCLSI//Tj5o=;
	b=ayfGqpcWPJEmgGsPuI7xWgfNxybjinuWjrCd8G4Es0J4NLXbvJhBgo7l96VW9Dlb4bRSznpXQ/HdYHPNIU9ZzAX5cgSFXFdRKTjCB8Fof1hAI3ioEZ5U/nay31E7EQz8tpoag12VFo3jOAf9jouKKUFUr+9jWOw1xiMWIwhzXkI=
Received: from MWHPR21MB0861.namprd21.prod.outlook.com (10.173.51.143) by
	MWHPR21MB0141.namprd21.prod.outlook.com (10.173.52.11) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1446.3; Thu, 13 Dec 2018 20:11:39 +0000
Received: from MWHPR21MB0861.namprd21.prod.outlook.com
	([fe80::bd97:ba74:b7e9:a8b]) by MWHPR21MB0861.namprd21.prod.outlook.com
	([fe80::bd97:ba74:b7e9:a8b%4]) with mapi id 15.20.1446.010;
	Thu, 13 Dec 2018 20:11:39 +0000
From: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto staged builds?
Thread-Index: AdSTHP7f1/V2KVmkQy6ri6l6W3rscA==
Date: Thu, 13 Dec 2018 20:11:39 +0000
Message-ID: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=ednadols@microsoft.com;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2018-12-13T20:11:38.0336269Z;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic;
	Sensitivity=General
x-originating-ip: [50.46.223.142]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR21MB0141;
	6:TSKKEppZBtIX6AOMzYpPnqwOLjW7KxH4CuJxaiwDgfxRvBXx/UlesMtb/xAy9tgh7Fevcyp7tNiD+SmBCWq51ZBGNzmh4mWn8okniAtOe4W/IlnjvKNjtodG9gvJd5ut+tMkapCLwvLbQXtvIyt0aPoPbq+n/0p2disqwjZRANiWlqCK+FRLfKslUgcSj+cwPy/fQu/3+LPfTRQcZHWcLio8AkXQgZYbviCKqxyLaEsfCiWdGEVeO7y7i3NHbyAMIC8yI5RPuhMaBv48URSNxfnpndo1Uhy4S/re2XAQZ7NcgCHPlQ3frO35q4JPMifZ5x9Wofj9YNjTk1FpaS+BN24kb8u2KoWdrvL/wnXX05IMywMDySfuZuAJVCW97wRMm8MfBSVONT2eijuszoA5vl/zLkYJYKBEnFJ/wiYREi3BklH2lME166OLdnNhzqJT+MC8qAdwtEu4ZKrszZ1A8g==;
	5:rH8PkXxuyBq6bTF1W4xW28/rNiU7aRF01AT5MUe6vPaKC89U8XhwA81WrGrKm+0DHGdpOvjxNMHpKg+U0t4Yzaa/+oAgZUXRfNf+o2csX5kqg0snnhUYg/t82DdiLGp0BcIy0ix7Rr7kyLKDNvICyv6YqApoTv7QahbVUYFn3CU=;
	7:6/Yr9BP5gISkZuUh75TtTknGjqeeQb+jxtWULQ/EeCzLewPpxgfR5ndUlVu/16GKKlgRo/ZbKwZUk4XgVgcHmMMSAo8TM1aBDuEGGucbG8YSINV7f+hA5Hcx9xlsGI3TlVBAvIzzmfU9stDsLMieAQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 15ccbad5-5b98-4a54-325d-08d661373141
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:MWHPR21MB0141; 
X-MS-TrafficTypeDiagnostic: MWHPR21MB0141:|MWHPR21MB0141:|MWHPR21MB0141:|CY4PR21MB0136:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR21MB0141A869DAD154D456902238E5A00@MWHPR21MB0141.namprd21.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(3230021)(999002)(6040522)(8220035)(2401047)(5005006)(8121501046)(10201501046)(3231475)(944501520)(2018427008)(3002001)(93006095)(93001095)(6055026)(148016)(149066)(150057)(6041310)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:MWHPR21MB0141; BCL:0; PCL:0; RULEID:; SRVR:MWHPR21MB0141; 
x-forefront-prvs: 088552DE73
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(136003)(396003)(346002)(376002)(366004)(189003)(199004)(6916009)(33656002)(105586002)(106356001)(54896002)(3480700005)(9686003)(6306002)(486006)(6346003)(7696005)(74316002)(22452003)(316002)(86362001)(14454004)(1730700003)(53936002)(256004)(81156014)(2501003)(478600001)(2351001)(476003)(8676002)(2906002)(6506007)(55016002)(102836004)(81166006)(66066001)(97736004)(186003)(26005)(8936002)(71190400001)(10090500001)(5640700003)(86612001)(72206003)(71200400001)(790700001)(7116003)(3846002)(6116002)(6436002)(25786009)(10290500003)(7736002)(68736007)(5660300001)(8990500004)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR21MB0141;
	H:MWHPR21MB0861.namprd21.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edmund.Nadolski@microsoft.com; 
x-microsoft-antispam-message-info: TJVGWo33V6Avc1XJyHDI3p957XKx0XTaszj8kDstEczdZhTDG3ZeoSIj6d7lyGQrGNcT9BKuZzrQGofCNovoK/KFILku8b5YtINSFnzOqiGGMH6MdCr+eoRM9pnHzzY2tKHT5fHHOEG2KnREs/KqBLRUGPQDrypQc5I9RaEv8REC8MMQvGfyxmdOpSMH5rWEW2Xwoxl97OrpHYOKW37QMttKyWMRc2ZKAhe4tB9UJ+z3WfYfdIJJTBoTtRgbbkG5ntOqC/3m2nYgb8kpCIdcCNLm2qom1ekCpOBF09oGB10uLbixJtqGZaRwyNgszUhS
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ccbad5-5b98-4a54-325d-08d661373141
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2018 20:11:39.5064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0141
X-Microsoft-Exchange-Diagnostics: 1; MWHPR21MB0141;
	23:cVhHFAKvTpqTlDpPmeTXO046q5r6zJiutakVP4RBe9NkQkp2NOjMshKu7zSrKsCMgCUcCA+vN4eRDX/T0vBZcj9gVjhwK00T2xi+vVrmuAezdki0rNq2zzdiK2nt8BE4YhwR4GYfvUdG5OISzYq/Og==
X-Microsoft-Exchange-Diagnostics: 1; CY4PR21MB0136;
	23:cw1m0OfNeUpDptanSOxr5NeaQfUJhzl2zP93hFo3CbUI6hBJQ9hIJyEnMnn6yTZwoeTzJrcGEtp6JCE/xMxRC6y4D/Z0AM6U9BsAryCkEztauXkfHThqrD4ysHUpKxvQl3Harkenw3b18PZ2DPtpag==
X-OriginatorOrg: microsoft.com
X-Mailman-Approved-At: Tue, 18 Dec 2018 08:06:28 -0800
Subject: Yocto staged builds?
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
X-List-Received-Date: Sat, 15 Dec 2018 12:17:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR21MB086165B1FB4C98FC687D8924E5A00MWHPR21MB0861namp_"

--_000_MWHPR21MB086165B1FB4C98FC687D8924E5A00MWHPR21MB0861namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello list,

Can anyone pls. help me understand what Yocto/bitbake supports (or could su=
pport) in terms of staged builds?  IOW, something like this sequence that p=
erforms nested signing of binaries:


  *   Create and sign binary files (ie kernel, modules, dtb, ...).
  *   Create fs images from above and sign those.
  *   Create FIT images and sign.

Any/all thoughts greatly appreciated.

Ed





--_000_MWHPR21MB086165B1FB4C98FC687D8924E5A00MWHPR21MB0861namp_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
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
	{mso-list-id:1130246517;
	mso-list-type:hybrid;
	mso-list-template-ids:-2069316304 1868877540 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:20.4pt;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:56.4pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:92.4pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:128.4pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:164.4pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:200.4pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:236.4pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:272.4pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:308.4pt;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<p class=3D"MsoNormal">Hello list,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone pls. help me understand what Yocto/bitbak=
e supports (or could support) in terms of staged builds?&nbsp; IOW, somethi=
ng like this sequence that performs nested signing of binaries:<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:-15.6pt;mso-list:l0 lev=
el1 lfo1">
Create and sign binary files (ie kernel, modules, dtb, &#8230;).<o:p></o:p>=
</li><li class=3D"MsoListParagraph" style=3D"margin-left:-15.6pt;mso-list:l=
0 level1 lfo1">
Create fs images from above and sign those.<o:p></o:p></li><li class=3D"Mso=
ListParagraph" style=3D"margin-left:-15.6pt;mso-list:l0 level1 lfo1">
Create FIT images and sign.<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any/all thoughts greatly appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ed<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MWHPR21MB086165B1FB4C98FC687D8924E5A00MWHPR21MB0861namp_--
