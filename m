Return-Path: <robin.l.jordan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38BC7E00E02; Tue, 20 Feb 2018 07:55:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B44E00D6D
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 07:55:36 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Feb 2018 07:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,540,1511856000"; d="scan'208,217";a="28517655"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2018 07:55:36 -0800
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 20 Feb 2018 07:55:35 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
	FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 20 Feb 2018 07:55:35 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (216.32.180.18)
	by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 20 Feb 2018 07:55:35 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector1-intel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=dmLm6wTXejTU7IUveFgSHibpK1m+ycSxXW7g9pMKP1U=;
	b=NmZTqHvqYW/ck5ZLzDC4uBb7IZpetGIdt8W3AcnEzQmevLie70b+zNrhTtgR4iSnLt8SmwYv+mxeiP0Y3thfsYVAkbkW15W0OVMDMYegNUTrE92TJfsDR2lml1G8mP+MQmoZfKtYZ4D2cNlkOQkcQ910m8nINnP5uOxDZDluApo=
Received: from CY4PR11MB1766.namprd11.prod.outlook.com (10.175.81.12) by
	CY4PR11MB2040.namprd11.prod.outlook.com (10.173.17.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.506.18; Tue, 20 Feb 2018 15:55:32 +0000
Received: from CY4PR11MB1766.namprd11.prod.outlook.com
	([fe80::d5aa:f45c:2a01:3524]) by
	CY4PR11MB1766.namprd11.prod.outlook.com
	([fe80::d5aa:f45c:2a01:3524%18]) with mapi id 15.20.0506.023;
	Tue, 20 Feb 2018 15:55:32 +0000
From: "Jordan, Robin L" <robin.l.jordan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Thread-Topic: =?Windows-1252?Q?Yocto_Project_Status_WW08=9218?=
Thread-Index: AdOqYzSxI0xst1x8RoG+MmClo4oaDA==
Date: Tue, 20 Feb 2018 15:55:31 +0000
Message-ID: <CY4PR11MB1766526E8F9B1157934422CCC7CF0@CY4PR11MB1766.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=robin.l.jordan@intel.com; 
x-originating-ip: [108.171.135.188]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR11MB2040;
	7:rCQouf8r/KVLRpm3ojM8S1EilB1fp2a/8XH7q+GpqhHk2ZtMHazzzUTUqOdwY742i9Z/uwFKgSb2pLqxc77vVc3v3GUHvOWKvCji2NKJX5UghDcJEwFD+TL6jO8jVvZrJdNz5iemfnfH0B5IyRf7bZQ66XUcUbBaCEc4Ifply8W+28EUmmqLXijj8Tmyjp83SiqD1+Ch7GLYEbjaS6mVMez67IKkrxyUk/M6FgbwmUpcDfgLHiCr+3NVSlKNnBnu
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: a1bcf226-b7c3-4941-de84-08d5787a5f39
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:CY4PR11MB2040; 
x-ms-traffictypediagnostic: CY4PR11MB2040:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB2040FA535807181B3DB32F1DC7CF0@CY4PR11MB2040.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(20558992708506)(192374486261705)(788757137089)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3231101)(944501161)(3002001)(6041288)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(6072148)(201708071742011);
	SRVR:CY4PR11MB2040; BCL:0; PCL:0; RULEID:; SRVR:CY4PR11MB2040; 
x-forefront-prvs: 05891FB07F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(366004)(39380400002)(396003)(376002)(39850400004)(346002)(199004)(189003)(236005)(81156014)(81166006)(186003)(110136005)(74316002)(2900100001)(66066001)(26005)(790700001)(6116002)(33656002)(5250100002)(25786009)(54896002)(6306002)(53936002)(55016002)(3846002)(9686003)(7736002)(2501003)(97736004)(106356001)(6436002)(316002)(2906002)(99286004)(606006)(59450400001)(3280700002)(105586002)(86362001)(5660300001)(7696005)(6506007)(3660700001)(102836004)(68736007)(966005)(478600001)(8936002)(14454004)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB2040;
	H:CY4PR11MB1766.namprd11.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-microsoft-antispam-message-info: AiKERDCHteOFeEp0x4w2UWiU9JNC7c/Sb1yZm9q3S+UZi9JqcImuRaaXCiceyoDwq6iK6Tvav5FrzfQm59zR1z6GwpLRNN2mmoCd082qVkCnPjKBglZBbEQHmfRjC3iwDIQMLm2tNZczFeS0cmHVrh1C8WkCVJs6PP3VOhvwuVQ=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a1bcf226-b7c3-4941-de84-08d5787a5f39
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2018 15:55:31.9889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2040
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 20 Feb 2018 08:19:05 -0800
Subject: =?UTF-8?B?WW9jdG8gUHJvamVjdCBTdGF0dXMgV1cwOOKAmTE4?=
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
X-List-Received-Date: Tue, 20 Feb 2018 15:55:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR11MB1766526E8F9B1157934422CCC7CF0CY4PR11MB1766namp_"

--_000_CY4PR11MB1766526E8F9B1157934422CCC7CF0CY4PR11MB1766namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Current Dev Position: YP 2.5 M3 development

Next Deadline: YP 2.5 M3 cut off was 2/19/18

*** FEATURE FREEZE for 2.5 is imminent! ***


SWAT team rotation: Tracy -> Stephano on Feb. 16, 2018.

SWAT team rotation: Stephano -> Maxin John on Feb. 23, 2018

https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team


Key Status/Updates:

  *   YP 2.5 M2 is 97% through QA. See: https://wiki.yoctoproject.org/wiki/=
2.5_QA_Status
  *   YP 2.2.3 is also mostly through QA. See https://wiki.yoctoproject.org=
/wiki/2.2_QA_Status
  *   We build 2.4.2 rc1 however rapidly moving kernel updates combined wit=
h QA not having started on rc1 yet meant we decided to build rc2, pulling i=
n further kernel security fixes (as well as others like openssl). rc2 is cu=
rrently being built and should enter QA today assuming a successful build.
  *   autobuilder.yoctoproject.org continues to be unavailable as we contin=
ue to develop the new autobuilder codebase to replace the current heavily c=
ustomized buildbot one.
  *   We managed to shrink the ltp package size which unblocked some patch =
merging. Bruce has been working on changes to kernel-devsrc to significantl=
y reduce its size.
  *   The glibc change continues to be blocked on locale issues which may p=
rove tricky to resolve and will block M3 as we need the glibc upgrade for v=
arious reasons.
  *   We have some key decisions to make about the conflicting native of pk=
g-conf and pkgconfig. Maxin has a patch series which exposes the issues.
  *   There are problems with the changes to pseudo=92s master branch verse=
s the patches we have against the recipe.
  *   Please note that we are very close to M3 which is feature freeze, tec=
hnically, feature freeze was yesterday. We=92re not in a position to build =
M3 yet but if there are features you expect to see in 2.5, please highlight=
 those patches ASAP. We are drawing up a list of =93must haves=94 for the r=
elease and if we don=92t know about it, it likely won=92t be on it.


Planned upcoming dot releases:

YP 2.4.2 (Rocko) is currently being built and should enter QA today.

YP 2.3.4 (Pyro) will be built when we figure out gcc backports.

YP 2.2.3 (Morty) rc2 is in QA.

YP 2.2.4 (Morty) will be built when we figure out gcc backports.


Key YP 2.5 Dates are:

YP 2.5 M2 cut off is past, it is in QA.

YP 2.5 M2 release of 1/26/18

YP 2.5 M3 cut off of 2/19/18

YP 2.5 M3 release of 3/2/18

YP 2.5 M4 cut off of 4/2/18

YP 2.5 M4 release of 4/27/18


Tracking Metrics:

            WDD 2648 (last week  2610)

(https://wiki.yoctoproject.org/charts/combo.html)


Key Status Links for YP:

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.5_Status

https://wiki.yoctoproject.org/wiki/Yocto_2.5_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_2.5_Features


The Status reports are now stored on the wiki at: https://wiki.yoctoproject=
.org/wiki/Weekly_Status


[If anyone has suggestions for other information you=92d like to see on thi=
s weekly status update, let us know!]


--_000_CY4PR11MB1766526E8F9B1157934422CCC7CF0CY4PR11MB1766namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.apple-tab-span
	{mso-style-name:apple-tab-span;}
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
	{mso-list-id:161700328;
	mso-list-template-ids:-577348530;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
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
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Current Dev Position: YP 2.5 M3 dev=
elopment</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Next Deadline: YP 2.5 M3 cut off wa=
s 2/19/18</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">*** FEATURE FREEZE for 2.5 is immin=
ent! ***</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">SWAT team rotation: Tracy -&gt; Ste=
phano on Feb. 16, 2018.</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">SWAT team rotation: Stephano -&gt; =
Maxin John on Feb. 23, 2018</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><a href=3D"https://wiki.yocto=
project.org/wiki/Yocto_Build_Failure_Swat_Team"><span style=3D"font-family:=
Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Build_Fail=
ure_Swat_Team</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Key Status/Updates:</span><o:p></o:=
p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li style=3D"color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.00=
01pt;mso-list:l0 level1 lfo1;vertical-align:baseline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 2.5 M2 is 97% t=
hrough QA. See: <a href=3D"https://wiki.yoctoproject.org/wiki/2.5_QA_Status=
">
<span style=3D"color:#1155CC">https://wiki.yoctoproject.org/wiki/2.5_QA_Sta=
tus</span></a><o:p></o:p></span></li><li style=3D"color:black;margin-top:0i=
n;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertical-=
align:baseline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 2.2.3 is also m=
ostly through QA. See
<a href=3D"https://wiki.yoctoproject.org/wiki/2.2_QA_Status"><span style=3D=
"color:#1155CC">https://wiki.yoctoproject.org/wiki/2.2_QA_Status</span></a>=
<o:p></o:p></span></li><li style=3D"color:black;margin-top:0in;margin-botto=
m:0in;margin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertical-align:baseline=
">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">We build 2.4.2 rc1=
 however rapidly moving kernel updates combined with QA not having started =
on rc1 yet meant we decided to build rc2, pulling in further kernel securit=
y fixes (as well as others like openssl). rc2
 is currently being built and should enter QA today assuming a successful b=
uild.<o:p></o:p></span></li><li style=3D"color:black;margin-top:0in;margin-=
bottom:0in;margin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertical-align:bas=
eline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">autobuilder.yoctop=
roject.org continues to be unavailable as we continue to develop the new au=
tobuilder codebase to replace the current heavily customized buildbot one.<=
o:p></o:p></span></li><li style=3D"color:black;margin-top:0in;margin-bottom=
:0in;margin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertical-align:baseline"=
>
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">We managed to shri=
nk the ltp package size which unblocked some patch merging. Bruce has been =
working on changes to kernel-devsrc to significantly reduce its size.<o:p><=
/o:p></span></li><li style=3D"color:black;margin-top:0in;margin-bottom:0in;=
margin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertical-align:baseline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">The glibc change c=
ontinues to be blocked on locale issues which may prove tricky to resolve a=
nd will block M3 as we need the glibc upgrade for various reasons.<o:p></o:=
p></span></li><li style=3D"color:black;margin-top:0in;margin-bottom:0in;mar=
gin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertical-align:baseline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">We have some key d=
ecisions to make about the conflicting native of pkg-conf and pkgconfig. Ma=
xin has a patch series which exposes the issues.<o:p></o:p></span></li><li =
style=3D"color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt=
;mso-list:l0 level1 lfo1;vertical-align:baseline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">There are problems=
 with the changes to pseudo=92s master branch verses the patches we have ag=
ainst the recipe.<o:p></o:p></span></li><li style=3D"color:black;margin-top=
:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l0 level1 lfo1;vertic=
al-align:baseline">
<span style=3D"font-family:&quot;Arial&quot;,sans-serif">Please note that w=
e are very close to M3 which is feature freeze, technically, feature freeze=
 was yesterday. We=92re not in a position to build M3 yet but if there are =
features you expect to see in 2.5, please highlight
 those patches ASAP. We are drawing up a list of =93must haves=94 for the r=
elease and if we don=92t know about it, it likely won=92t be on it.<o:p></o=
:p></span></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Planned upcoming dot releases:</spa=
n><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.4.2 (Rocko) is currently being=
 built and should enter QA today.
</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.3.4 (Pyro) will be built when =
we figure out gcc backports.</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.2.3 (Morty) rc2 is in QA.</spa=
n><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.2.4 (Morty) will be built when=
 we figure out gcc backports.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Key YP 2.5 Dates are:</span><o:p></=
o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.5 M2 cut off is past, it is in=
 QA.</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.5 M2 release of 1/26/18</span>=
<o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.5 M3 cut off of 2/19/18</span>=
<o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.5 M3 release of 3/2/18</span><=
o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.5 M4 cut off of 4/2/18</span><=
o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">YP 2.5 M4 release of 4/27/18</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Tracking Metrics:</span><o:p></o:p>=
</p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span class=3D"apple-tab-span=
"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color=
:black">WDD 2648 (last week &nbsp;2610)</span><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;text-indent:.5in"><span style=
=3D"font-family:Consolas;color:black">(</span><a href=3D"https://wiki.yocto=
project.org/charts/combo.html"><span style=3D"font-family:&quot;Arial&quot;=
,sans-serif;color:#1155CC">https://wiki.yoctoproject.org/charts/combo.html<=
/span></a><span style=3D"font-family:Consolas;color:black">)</span><o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">Key Status Links for YP:</span><o:p=
></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><a href=3D"https://wiki.yocto=
project.org/wiki/Yocto_Project_v2.5_Status"><span style=3D"font-family:Cons=
olas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.5_S=
tatus</span></a><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><a href=3D"https://wiki.yocto=
project.org/wiki/Yocto_2.5_Schedule"><span style=3D"font-family:Consolas;co=
lor:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_2.5_Schedule</span></=
a><o:p></o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><a href=3D"https://wiki.yocto=
project.org/wiki/Yocto_2.5_Features"><span style=3D"font-family:Consolas;co=
lor:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_2.5_Features</span></=
a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">The Status reports are now stored o=
n the wiki at:
</span><a href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status"><span s=
tyle=3D"font-family:&quot;Arial&quot;,sans-serif;color:#1155CC">https://wik=
i.yoctoproject.org/wiki/Weekly_Status</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-family:&q=
uot;Arial&quot;,sans-serif;color:black">[If anyone has suggestions for othe=
r information you=92d like to see on this weekly status update, let us know=
!]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_CY4PR11MB1766526E8F9B1157934422CCC7CF0CY4PR11MB1766namp_--
