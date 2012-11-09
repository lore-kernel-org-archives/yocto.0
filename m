Return-Path: <alexandrux.palalau@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4920DE01275
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 06:51:59 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Nov 2012 06:51:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,746,1344236400"; 
	d="xml'?xlsx'72,48?scan'72,48,208,217,72,48?bin'72,48,208,217,72,48?rels'72,48,208,217,72,48";
	a="244599546"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2012 06:51:57 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.16]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.158]) with mapi id
	14.01.0355.002; Fri, 9 Nov 2012 14:51:56 +0000
From: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.3 RC2 noemgd BSP test results
Thread-Index: Ac2+h9BBMwRuJFvdRDSjV01AB/Cc2A==
Date: Fri, 9 Nov 2012 14:51:45 +0000
Message-ID: <A45D4FDC92525B4F8A75E1B55399F328C01D41@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Yocto 1.3 RC2 noemgd BSP test results
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
X-List-Received-Date: Fri, 09 Nov 2012 14:51:59 -0000
X-Groupsio-MsgNum: 10481
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_"

--_004_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_
Content-Type: multipart/alternative;
	boundary="_000_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_"

--_000_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

       Hello,

               Here are the Fullpass noemgd BSP test results for Yocto 1.3 =
RC2 Danny branch, 20121102-2 build.
               Poky commit ID: 27af23e65f63b41962a7cfddba9e9372d5212396
               Meta-intel commit ID:  1a5ab65544830dd571a368b9d9f6ec782ffc9=
4ac

       Below, you can find a resume of the encountered BSP issues:

=E8 FRI2-noemgd: 3G issues are still present (Bug 2415), return from suspen=
d state behavior(Bug 2037), application switching failure(Bug 2646);

=E8 Crownbay-noemgd: X fails to start after standby(Bug 2792), xorg CPU iss=
ue(Bug 1258)

Test Result Summary

Component

Target

Status

Comments

BSP

FRI2-noemgd

BUGGY

Bug 2415, Bug 2037, Bug 2646.

Crownbay-noemgd

BUGGY

Bug 2792, Bug 1258



Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

FRI2-noemgd core-image-sato-sdk

84

8

74

2(2646,2989)

8

Crownbay-noemgd core-image-sato-sdk

66

1

63

2(2792,1258)

1

Total

150

9

137

4

9



Best Regards,

--
Alexandru Palalau
QA Contractor @ Yocto Project
Open-source Technology Center Romania
System Software Division


--_000_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
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
	{mso-list-id:348064615;
	mso-list-type:hybrid;
	mso-list-template-ids:1876983090 2120264400 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0E8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hello,<span sty=
le=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">&nbsp;</span>Here =
are the Fullpass<span style=3D"color:#1F497D">
</span><b>noemgd BSP</b> test results for <b>Yocto 1.3 RC2 Danny</b> branch=
, <b>20121102-2</b> build.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Poky commit ID: <b>27af23e65f63b41962a7cfd=
dba9e9372d5212396</b><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Meta-intel commit ID:&nbsp; <b>1a5ab655448=
30dd571a368b9d9f6ec782ffc94ac</b><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Below, you=
 can find a resume of the encountered BSP issues:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Wingdings"><span style=3D"m=
so-list:Ignore">=E8<span style=3D"font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><b>FRI2-noemgd</b>: 3G issues are still pres=
ent (Bug 2415), return from suspend state behavior(Bug 2037), application s=
witching failure(Bug 2646)<span style=3D"color:#1F497D">;</span><o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Wingdings"><span style=3D"m=
so-list:Ignore">=E8<span style=3D"font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><b>Crownbay-noemgd</b>: X fails to start aft=
er standby(Bug 2792), xorg CPU issue(Bug 1258)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"947" style=3D"width:567.9pt;margin-left:30.3pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.7pt">
<td width=3D"947" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:567.9pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary</s=
pan></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:ZH-C=
N"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.7pt">
<td width=3D"233" nowrap=3D"" valign=3D"bottom" style=3D"width:139.7pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
7pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"246" nowrap=3D"" valign=3D"bottom" style=3D"width:2.05in;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td width=3D"101" nowrap=3D"" valign=3D"bottom" style=3D"width:60.5pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td width=3D"367" valign=3D"bottom" style=3D"width:220.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.65pt">
<td rowspan=3D"2" style=3D"border:solid black 1.0pt;border-top:none;padding=
:0in 0in 0in 0in;height:24.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black;mso-fareast-language:ZH-CN">BSP<o:p></o:p></span></b></p>
</td>
<td width=3D"246" nowrap=3D"" valign=3D"bottom" style=3D"width:2.05in;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.65pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">FRI2-noemgd</span><span style=3D"font-size:10.0pt;line-height:115%;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"101" nowrap=3D"" style=3D"width:60.5pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.65pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"367" valign=3D"bottom" style=3D"width:220.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.65pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;mso-fareast-language:ZH-CN">Bug 2415, Bug 2037, Bug 2646.<span style=3D"c=
olor:black"><o:p></o:p></span></span></p>
</td>
</tr>
<tr style=3D"height:21.95pt">
<td width=3D"246" nowrap=3D"" valign=3D"bottom" style=3D"width:2.05in;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.95pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Crownbay-noemgd</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast=
-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"101" nowrap=3D"" valign=3D"bottom" style=3D"width:60.5pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:21.95=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:=
ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"367" valign=3D"bottom" style=3D"width:220.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.95pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;mso-fareast-language:ZH-CN">Bug 2792, Bug 1258<span style=3D"color:black"=
><o:p></o:p></span></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-left:3.0in;text-ali=
gn:center"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o=
:p>
</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"margin-left:29.7pt">
<tbody>
<tr style=3D"height:4.35pt">
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;h=
eight:4.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Detailed Test Result for each component</b><span style=3D"font=
-size:12.0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Target</b>
<span style=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:b=
lack;mso-fareast-language:ZH-CN">
<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span>=
</p>
</td>
<td width=3D"57" style=3D"width:34.2pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"233" style=3D"width:139.8pt;background:white;padding:.75pt .75=
pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not testable (Blocked)</b><span style=3D"font-size:12.0pt;line=
-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2-noemgd core-image-sato-sdk</b><b><span style=3D"font-size=
:10.5pt;line-height:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b>=
</p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">84<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">8<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">74<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"233" valign=3D"top" style=3D"width:139.8pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(2646,2989)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">8<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Crownbay-noemgd core-image-sato-sdk
</b><b><span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-languag=
e:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">66<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">63<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"233" valign=3D"top" style=3D"width:139.8pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(2792,1258)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">150<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">9<o:p></o:p></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">137<o:p></o:p></p>
</td>
<td width=3D"233" valign=3D"top" style=3D"width:139.8pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">4<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">9<o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=
=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">Alexandru Palalau<o:p></o:p></p>
<p class=3D"MsoNormal">QA Contractor @ Yocto Project<o:p></o:p></p>
<p class=3D"MsoNormal">Open-source Technology Center Romania<o:p></o:p></p>
<p class=3D"MsoNormal">System Software Division<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_--

--_004_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Noemgd BSP Test Results.xlsx"
Content-Description: Noemgd BSP Test Results.xlsx
Content-Disposition: attachment; filename="Noemgd BSP Test Results.xlsx";
	size=16037; creation-date="Fri, 09 Nov 2012 11:49:38 GMT";
	modification-date="Fri, 09 Nov 2012 14:49:39 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQBsBNpugAEAAJwGAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
VcluwjAQvVfqP0S+VsRAq6qqCBy6HFsk6AeYeEIsEtvyDBT+vpOwqEIsiopULokSe94ytp97g2VZ
RAsIaJxNRCduiwhs6rSx00R8jd9bTyJCUlarwllIxApQDPq3N73xygNGXG0xETmRf5YS0xxKhbHz
YHkkc6FUxJ9hKr1KZ2oKsttuP8rUWQJLLaowRL/3CpmaFxS9Lfn3WsnEWBG9rOdVVIlQ3hcmVcRC
5cLqPZKWyzKTgnbpvGToGH0ApTEHoLKIfTDMGEZAxMZQyIOcAQpsRrpxFXNlLQxz4/GOrR9hqEaO
u9rUffJyBKMhGqpAH6pk73JZyG8XZhPnZvFpkKatqVsUl8rYre4T/PVklPWrc2Ehlb8auKGO7pXo
uL8SHQ//pIP47IOsn3/fGjXMmY2AtCoAL+x2DXqOOVcB9Ig4VaYXF/Ab+5QOjrphcB45TQM078I2
uqrqlmcgCGRgF16HQmDHyFHcnHAvoKHKeg36ALes75b+DwAAAP//AwBQSwMEFAAGAAgAAAAhALVV
MCP1AAAATAIAAAsACAJfcmVscy8ucmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMks9OwzAMxu9IvEPk++puSAihpbtMSLsh
VB7AJO4ftY2jJED39oQDgkpj29H2588/W97u5mlUHxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTH
Go4cYVfd3mxfeKSUm2LX+6iyi4saupT8I2I0HU8UC/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzV
wWoIB3sHqj76PPmytzRNb3gv5n1il06MQJ4TO8t25UNmC6nP26iaQstJgxXznNMRyfsiYwOeJtpc
T/T/tjhxIkuJ0Ejg8zzfinNA6+uBLp9oqfi9zjzip4ThTWT4YcHFD1RfAAAA//8DAFBLAwQUAAYA
CAAAACEAgVu4yRoBAABhBAAAGgAIAXhsL19yZWxzL3dvcmtib29rLnhtbC5yZWxzIKIEASigAAEA
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
BQYAAAAAEQARAJ4EAADxOQAAAAA=

--_004_A45D4FDC92525B4F8A75E1B55399F328C01D41IRSMSX104gercorpi_--
