Return-Path: <rahul.saxena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1C5E006AF
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2011 16:30:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Nov 2011 16:29:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,497,1315206000"; d="scan'208,217";a="73823495"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 11 Nov 2011 16:29:59 -0800
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 11 Nov 2011 16:29:59 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 11 Nov 2011 16:29:57 -0800
Thread-Topic: web-webkit poky package
Thread-Index: Acyg0VuLUeGZjaf5Q/qb9NNTA7t88gAAFapQ
Message-ID: <4FF5AC937153B0459463C1A88EB478F2017DCCA001@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2017DCC9FE6@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2017DCC9FE6@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: web-webkit poky package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 12 Nov 2011 00:30:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2017DCCA001orsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F2017DCCA001orsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just wanted to add I am using  "edison" branch of poky.
Rahul

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Saxena, Rahul
Sent: Friday, November 11, 2011 4:24 PM
To: yocto@yoctoproject.org
Subject: [yocto] web-webkit poky package

Hi,

I have installed the web-webkit package in my core-image-sato image.
However I am facing two issues.


1.       I am operating inside a corporate firewall and the browser does no=
t seem to be picking up the proxy settings.

I have the following set in my /etc/profile file:

http_proxy=3Dhttp://<intel proxy server address>:911/<http://%3cintel%20pro=
xy%20server%20address%3e:911/>



export http_proxy



2.       Also when I access sites within our firewall the rendering is all =
messed up. What could be the issue here ?



   Any help on the above would be greatly appreciated.


Thanks
Rahul

--_000_4FF5AC937153B0459463C1A88EB478F2017DCCA001orsmsx505amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1730231512;
	mso-list-type:hybrid;
	mso-list-template-ids:-1263518030 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Just wanted to add I am using &nbsp;&#8220;edison&#8221; bran=
ch of poky.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:=
#1F497D'>Rahul<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'col=
or:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:none;bord=
er-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal>=
<b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:=
</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif=
"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Saxena, Rahul<br><b>Sent:</b> Friday, November 11, 2011=
 4:24 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> [yocto] we=
b-webkit poky package<o:p></o:p></span></p></div></div><p class=3DMsoNormal=
><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Hi,<o:p></o:p></p><p class=3DMso=
Normal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have installed the web-w=
ebkit package in my core-image-sato image.<o:p></o:p></p><p class=3DMsoNorm=
al>However I am facing two issues.<o:p></o:p></p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p><p class=3DMsoListParagraph style=3D'text-indent:-.25in;mso=
-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'mso-list:Ignore'>=
1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; </span></span><![endif]>I am operating inside a corporate firewall=
 and the browser does not seem to be picking up the proxy settings.<o:p></o=
:p></p><p class=3DMsoListParagraph>I have the following set in my /etc/prof=
ile file:<o:p></o:p></p><p class=3DMsoListParagraph>http_proxy=3D<a href=3D=
"http://%3cintel%20proxy%20server%20address%3e:911/">http://&lt;intel proxy=
 server address&gt;:911/</a><o:p></o:p></p><p class=3DMsoListParagraph><o:p=
>&nbsp;</o:p></p><p class=3DMsoListParagraph>export <span style=3D'font-siz=
e:9.0pt;font-family:"Verdana","sans-serif";color:#333333'>http_proxy</span>=
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoListParagraph style=3D'text-indent:-.=
25in;mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'mso-list:=
Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; </span></span><![endif]>Also when I access sites within ou=
r firewall the rendering is all messed up. What could be the issue here ?<o=
:p></o:p></p><p class=3DMsoNormal style=3D'margin-left:.25in'><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p=
>&nbsp;</o:p></p><p class=3DMsoNormal>&nbsp;&nbsp; Any help on the above wo=
uld be greatly appreciated.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;<=
/o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Tha=
nks<o:p></o:p></p><p class=3DMsoNormal>Rahul<o:p></o:p></p></div></body></h=
tml>=

--_000_4FF5AC937153B0459463C1A88EB478F2017DCCA001orsmsx505amrc_--
