Return-Path: <VDaanen@its.jnj.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3922E00B4C; Fri, 29 Jun 2018 06:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.142.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Jun 2018 06:38:18 PDT
Received: from esa11.jnj.iphmx.com (esa11.jnj.iphmx.com [68.232.142.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E145E007AD
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2018 06:38:18 -0700 (PDT)
X-CISCO: esa11.jnj.iphmx.com
X-IronPort-CES: True
X-CES-SBRS: 3.5
X-CES-HAT: $RELAYED EOP_Out
X-IronPort-AV: E=Sophos;i="5.51,285,1526356800"; 
	d="scan'208,217";a="101028544"
Received: from mail-by2nam05lp0244.outbound.protection.outlook.com (HELO
	NAM05-BY2-obe.outbound.protection.outlook.com) ([216.32.181.244])
	by ob1.jnj.iphmx.com with ESMTP/TLS/AES256-SHA;
	29 Jun 2018 09:37:17 -0400
Received: from BYAPR07MB4805.namprd07.prod.outlook.com (20.176.248.25) by
	BYAPR07MB5094.namprd07.prod.outlook.com (20.176.254.155) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.906.25; Fri, 29 Jun 2018 13:37:15 +0000
Received: from BYAPR07MB4805.namprd07.prod.outlook.com
	([fe80::f03f:d8c2:bbc4:2819]) by
	BYAPR07MB4805.namprd07.prod.outlook.com
	([fe80::f03f:d8c2:bbc4:2819%2]) with mapi id 15.20.0906.018;
	Fri, 29 Jun 2018 13:37:15 +0000
From: "DAANEN, Vincent [MEDFR]" <VDaanen@ITS.JNJ.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to create partition without wic
Thread-Index: AdQPpNJLA9O31jAGRMe3U+T+4upRng==
Date: Fri, 29 Jun 2018 13:37:15 +0000
Message-ID: <BYAPR07MB4805660F9F718A5AA3C27E18EC4E0@BYAPR07MB4805.namprd07.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=VDaanen@ITS.JNJ.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR07MB5094;
	7:/cRl9byzOoH5ydkAteFMSdM6uI4SR2JHtliI1wm8jLVwHitFesHvUu2MQrjfBvrYDsGvxaN34K64+aIvabxe77CVqDrEEaXNW2Km+tnx4gzgYeNZXozWnmoE88eFIm/RdWqj4WzbomXl9cB4rBmOMUzxoRoKD0wQM2sYNlFGXIaKTZG9sK8CFELbpFEEfEu0O/iyW91aIr9GS+QVJYdPRqzXztGd/9NQYvKaQIgDqLzW4A9mfOLZO3q1Wbq6QuqW
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: b8691644-a213-47a4-48fc-08d5ddc56d61
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600026)(711020)(48565401081)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR07MB5094; 
x-ms-traffictypediagnostic: BYAPR07MB5094:
x-route-rule: outbound-to-internet
x-microsoft-antispam-prvs: <BYAPR07MB5094961FF32736A8B314B389EC4E0@BYAPR07MB5094.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(93006095)(93001095)(10201501046)(3002001)(6055026)(149027)(150027)(6041310)(20161123562045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:BYAPR07MB5094; BCL:0; PCL:0; RULEID:; SRVR:BYAPR07MB5094; 
x-forefront-prvs: 0718908305
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(39860400002)(366004)(396003)(136003)(189003)(199004)(81156014)(33656002)(186003)(3846002)(7696005)(106356001)(790700001)(6436002)(6306002)(54896002)(9686003)(105586002)(99286004)(5640700003)(55016002)(72206003)(2351001)(2906002)(316002)(486006)(6116002)(476003)(53936002)(97736004)(5630700001)(6916009)(14454004)(68736007)(26005)(5660300001)(8936002)(8676002)(86362001)(1730700003)(6506007)(81166006)(14444005)(25786009)(74316002)(256004)(2900100001)(7736002)(66066001)(478600001)(5250100002)(102836004)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR07MB5094;
	H:BYAPR07MB4805.namprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:0; 
x-microsoft-antispam-message-info: 0GIriAiC40wM+AavLZY0PPeR5/VjzhIUcSfzcywpVIlYlyjsymCAEos9zEzFR6TAsQfjG4qfYEN4uHcS/uxZOuTJGy8OogHThZL59zPZw6hsQX6XVutPVkpT0aSm0K8JTK9SKIRaNOxnVUlm1/pHvjpivvnqOrEeuL4xYRjfi6DRvPPqaV6Jzt0oKnJuG2lSourF//EYGFqPim5fJsQrbfJ4SzO9CyMtTjOi33tXVsxvYMc/Zgqbgacnzrnt/LLzO/yBZSuJ/rQOJXX72kHz+VHxSKTZF/c1butUFIqtZJMY/TEcJy/dAfFbaTLx5DMr9/gLyORRkSGfyreZ1d0C/1ItWEc9puymeV9BfxOjrMo=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: its.jnj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8691644-a213-47a4-48fc-08d5ddc56d61
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2018 13:37:15.4800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ac94b33-9135-4821-9502-eafda6592a35
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB5094
Subject: How to create partition without wic
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
X-List-Received-Date: Fri, 29 Jun 2018 13:38:19 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_BYAPR07MB4805660F9F718A5AA3C27E18EC4E0BYAPR07MB4805namp_"

--_000_BYAPR07MB4805660F9F718A5AA3C27E18EC4E0BYAPR07MB4805namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

The system I'm designing will boot the image using PXE.
The HDD is used for persistent storage of logs only and logs must survive r=
eboot

So I'd like to implement something like: on boot, the system tests if the p=
ersistent partitions are mounted. If not, then the HDD is partitioned with =
a given pattern (should arrive one time only).
My general question is: how to do this ?

More specific questions are:

  1.  At the moment, the HDD is partitioned but I don't know where the part=
itions are defined so can someone explain me where I can find these info?
  2.  Is it possible to partition a HDD and then format the partitions auto=
matically (using a script) ?

Thanks

Vincent


--_000_BYAPR07MB4805660F9F718A5AA3C27E18EC4E0BYAPR07MB4805namp_
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2106344906;
	mso-list-type:hybrid;
	mso-list-template-ids:785783154 134807567 134807577 134807579 134807567 13=
4807577 134807579 134807567 134807577 134807579;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:2130004744;
	mso-list-type:hybrid;
	mso-list-template-ids:8659784 1487049540 134807555 134807557 134807553 134=
807555 134807557 134807553 134807555 134807557;}
@list l1:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:20.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Arial;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:56.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:92.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:128.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:164.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:200.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:236.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:272.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:308.25pt;
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
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The system I&#8217;m designing will boot the image u=
sing PXE. <o:p>
</o:p></p>
<p class=3D"MsoNormal">The HDD is used for persistent storage of logs only =
and logs must survive reboot<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I&#8217;d like to implement something like: on bo=
ot, the system tests if the persistent partitions are mounted. If not, then=
 the HDD is partitioned with a given pattern (should arrive one time only).=
<o:p></o:p></p>
<p class=3D"MsoNormal">My general question is: how to do this ? <o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">More specific questions are:<o:p></o:p></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo2">At the moment, the HDD is partitioned but I don&#8217;t know where th=
e partitions are defined so can someone explain me where I can find these i=
nfo?<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm=
;mso-list:l0 level1 lfo2">Is it possible to partition a HDD and then format=
 the partitions automatically (using a script) ?<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vincent<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR07MB4805660F9F718A5AA3C27E18EC4E0BYAPR07MB4805namp_--
