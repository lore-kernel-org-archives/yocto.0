Return-Path: <alexandrux.palalau@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E3DE0027E
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 07:18:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Nov 2012 07:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,693,1344236400"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="235729804"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 01 Nov 2012 07:18:02 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 1 Nov 2012 14:18:01 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.16]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.218]) with mapi id
	14.01.0355.002; Thu, 1 Nov 2012 14:18:01 +0000
From: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.3RC1 BSP fulpass test results
Thread-Index: Ac24O4F/OCAaUx+4T52VbQuF15IybA==
Date: Thu, 1 Nov 2012 14:18:00 +0000
Message-ID: <A45D4FDC92525B4F8A75E1B55399F328C012A4@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 05 Nov 2012 08:15:41 -0800
Subject: 1.3RC1 BSP fulpass test results
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
X-List-Received-Date: Thu, 01 Nov 2012 14:18:22 -0000
X-Groupsio-MsgNum: 10450
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_"

--_004_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_
Content-Type: multipart/alternative;
	boundary="_000_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_"

--_000_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Attached you can find the BSP fullpass test results for Yocto 1.3 RC1 Danny=
.

For Yocto 1.3 RC1 Danny branch.

Commit ID:27af23e65f63b41962a7cfddba9e9372d5212396
Test Result Summary

Component

Target

Status

Comments

BSP

Beagleboard

GOOD

Everything runs well

Routerstationpro

GOOD

Everything runs well

Mpc8315e-rdb

GOOD

Everything runs well

P1022DS

GOOD

Everything runs well

eMenlow-sato-sdk

GOOD

USB mount (2643)

Sugarbay-sato-sdk

GOOD

Everything runs well

Crownbay-noemgd-sato-sdk

BUGGY

Standby, CPU utilization and usb after standby fail(2792, 1258).

FRI2-sato-sdk

BUGGY

X does not start with runlevel 5(3347),standby issue (2037),system dmesg lo=
g check issue (2989), 3G issues with connman (2415)

HuronRiver-sato-sdk

GOOD

Everything runs well

Jasperforest-lsb

BUGGY

Zypper fails(3098)





Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Beagleboard Sato-SDK

42

0

42

0

0

Routerstationpro Sato-SDK

35

0

35

0

0

Mpc8315e-rdb Sato-SDK

37

0

37

0

0

P1022DS

31

31

0

0

                      31

eMenlow Sato-sdk

67

0

66

1(2643)

0

Crownbay-Sato-sdk

65

0

62

2(2792,1258

1

FRI2 Sato-sdk

86

0

73

12(3347,2646,2989,2037,2415)

1(no e-sata port available)

HuronRiver Sato-sdk

68

0

68

0

0

Jasperforest lsb-sdk

34

0

27

7(3098)

0

Sugarbay

66

0

66

0

0



Best regards,
--
Alexandru Palalau
QA Contractor @ Yocto Project
Open-source Technology Center Romania
System Software Division


--_000_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">Attached you can find the BSP fullpass test results =
for Yocto 1.3 RC1 Danny.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For <b>Yocto 1.3 RC1 Danny branch</b>.<o:p></o:p></p=
>
<pre>Commit ID:<b><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans=
-serif&quot;">27af23e65f63b41962a7cfddba9e9372d5212396</span><o:p></o:p></b=
></pre>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1207" style=3D"width:724.0pt;margin-left:-30.6pt;border-col=
lapse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"1207" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"wid=
th:724.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7=
5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary</s=
pan></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:ZH-C=
N"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"236" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"236" nowrap=3D"" rowspan=3D"10" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-left:.05in;text-ali=
gn:center;line-height:115%">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso=
-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.9pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:17.9p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">P1022DS<span style=3D"fon=
t-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow-sato-sdk</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">USB mount (2643)</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay-sato-sdk</span><span style=3D"font-size:10.0pt;line=
-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-noemgd-sato-sdk</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black;mso-fareast-language:ZH-CN">Standby, CPU utilization and usb =
after standby fail(2792, 1258).<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato-sdk</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;m=
so-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">X does not start with runlevel 5(3347),standby issue (2037),=
system dmesg log check issue (2989), 3G issues with connman
 (2415)</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:Z=
H-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato-sdk</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Zypper fails(3098)</span><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
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
<td width=3D"191" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
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
ght:115%"><b>Beagleboard Sato-SDK</b><span style=3D"font-size:12.0pt;line-h=
eight:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">42</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH=
-CN"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Routerstationpro Sato-SDK</b><span style=3D"font-size:12.0pt;l=
ine-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH=
-CN"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Mpc8315e-rdb Sato-SDK</b><span style=3D"font-size:12.0pt;line-=
height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH=
-CN"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>P1022DS<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<o:p></o:p></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0<o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:red"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 31<o:p></o:p></span></=
p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>eMenlow Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2643)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Crownbay-Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">65<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">62</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(2792,1258</span><span style=3D"font-s=
ize:10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2 Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">86<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">73</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">12(3347,2646,2989,2037,2415)</span><spa=
n style=3D"font-size:10.5pt;line-height:115%;color:red;mso-fareast-language=
:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(no e-sata port available)</span><span=
 style=3D"font-size:10.5pt;line-height:115%;color:red;mso-fareast-language:=
ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HuronRiver Sato-sdk</b><b><span style=3D"font-size:10.5pt;line=
-height:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">68<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Jasperforest lsb-sdk</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">34<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">27</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7(3098)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Sugarbay<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">66<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<o:p></o:p></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66<o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">Alexandru Palalau<o:p></o:p></p>
<p class=3D"MsoNormal">QA Contractor @ Yocto Project<o:p></o:p></p>
<p class=3D"MsoNormal">Open-source Technology Center Romania<o:p></o:p></p>
<p class=3D"MsoNormal">System Software Division<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_--

--_004_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="BSP Danny fullpass.xlsx"
Content-Description: BSP Danny fullpass.xlsx
Content-Disposition: attachment; filename="BSP Danny fullpass.xlsx";
	size=25997; creation-date="Thu, 01 Nov 2012 08:23:41 GMT";
	modification-date="Thu, 01 Nov 2012 08:39:56 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQCmdARSiQEAAKwHAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
lctuwjAQRfeV+g+RtxUx0BZVFYFFH8sWCfoBJh6IRWJbnoHC33cSHqoQD0VFKptEiT33nusoM93+
ssijBQQ0ziaiFTdFBDZ12thpIr5G740nESEpq1XuLCRiBSj6vdub7mjlASOutpiIjMg/S4lpBoXC
2HmwvDJxoVDEj2EqvUpnagqy3Wx2ZOosgaUGlRqi132FiZrnFL0t+fWaZGysiF7W+0qrRCjvc5Mq
YlC5sHrPpOEmE5OCdum8YOkYfQClMQOgIo99MOwYhkDEwVDIg54BcqxnukkVc2UFhpnxeMfRjziU
K8dTbeo++XMEoyEaqEAfquDscpnLbxdmY+dm8WmRukdTHVFcKGO33Cf8q80oq1vrwiBlvkq4Jkf7
Sjjur4Tj4Uo4Hq+Eo/NPHMS9EGR1/fuvUsmc+TGQVjnghdOuRc85ZyqAHhJ32enFAX5rn+Lg1j8I
ziNPlwD1T2HbysvqhmchCGRg18wPNcWdI4+m+oZ7AwvK2adBH/CW1azt/QAAAP//AwBQSwMEFAAG
AAgAAAAhALVVMCP1AAAATAIAAAsACAJfcmVscy8ucmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMks9OwzAMxu9IvEPk++pu
SAihpbtMSLshVB7AJO4ftY2jJED39oQDgkpj29H2588/W97u5mlUHxxiL07DuihBsTNie9dqeK2f
Vg+gYiJnaRTHGo4cYVfd3mxfeKSUm2LX+6iyi4saupT8I2I0HU8UC/HscqWRMFHKYWjRkxmoZdyU
5T2Gvx5QLTzVwWoIB3sHqj76PPmytzRNb3gv5n1il06MQJ4TO8t25UNmC6nP26iaQstJgxXznNMR
yfsiYwOeJtpcT/T/tjhxIkuJ0Ejg8zzfinNA6+uBLp9oqfi9zjzip4ThTWT4YcHFD1RfAAAA//8D
AFBLAwQUAAYACAAAACEADhVkyR0BAAB7BQAAGgAIAXhsL19yZWxzL3dvcmtib29rLnhtbC5yZWxz
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
AAAAIQA7bTJLwQAAAEIBAAAjAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEueG1sLnJlbHOE
j8GKwjAURfcD/kN4e5PWhQxDUzciuFXnA2L62gbbl5D3FP17sxxlwOXlcM/lNpv7PKkbZg6RLNS6
AoXkYxdosPB72i2/QbE46twUCS08kGHTLr6aA05OSonHkFgVC7GFUST9GMN+xNmxjgmpkD7m2UmJ
eTDJ+Ysb0Kyqam3yXwe0L0617yzkfVeDOj1SWf7sjn0fPG6jv85I8s+ESTmQYD6iSDnIRe3ygGJB
63f2nmt9DgSmbczL8/YJAAD//wMAUEsDBBQABgAIAAAAIQATxCwTwgAAAEIBAAAjAAAAeGwvd29y
a3NoZWV0cy9fcmVscy9zaGVldDIueG1sLnJlbHOEj8FqwzAQRO+F/IPYeyQ7h1CKJV9KIdcm/QBF
Xtui9kpotyX5++jYhEKOw2PeMF1/WRf1i4VjIgutbkAhhTREmix8nT62r6BYPA1+SYQWrsjQu81L
94mLl1riOWZW1UJsYRbJb8ZwmHH1rFNGqmRMZfVSY5lM9uHbT2h2TbM35a8D3J1THQYL5TC0oE7X
XJefu9M4xoDvKfysSPLPhMklkmA5okg9yFXty4RiQetH9ph3+hwJjOvM3XN3AwAA//8DAFBLAwQU
AAYACAAAACEANKEJksIAAABCAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ0LnhtbC5y
ZWxzhI/BasMwEETvgfyD2HskJ4VSguVcQiDXNv0AVV7LIvZKaLel+fvqWJtCj8Nj3jDt6Xue1BcW
joks7HUDCsmnPlKw8H677F5AsTjq3ZQILTyQ4dRtN+0rTk5qiceYWVULsYVRJB+NYT/i7FinjFTJ
kMrspMYSTHb+7gKaQ9M8m/LbAd3Cqa69hXLt96Buj1yX/3enYYgez8l/zkjyx4TJJZJgeUORepCr
2pWAYkHrNVvnJ/0RCUzXmsXz7gcAAP//AwBQSwMEFAAGAAgAAAAhAEOWEaPCAAAAQgEAACMAAAB4
bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0NS54bWwucmVsc4SPwWrDMBBE74H8g9h7JCeUUoLlXEIg
1zb9AFVeyyL2Smi3pfn76libQo/DY94w7el7ntQXFo6JLOx1AwrJpz5SsPB+u+xeQLE46t2UCC08
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
bWwucmVsc1BLAQItABQABgAIAAAAIQATxCwTwgAAAEIBAAAjAAAAAAAAAAAAAAAAAOkZAAB4bC93
b3Jrc2hlZXRzL19yZWxzL3NoZWV0Mi54bWwucmVsc1BLAQItABQABgAIAAAAIQA0oQmSwgAAAEIB
AAAjAAAAAAAAAAAAAAAAAOwaAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0NC54bWwucmVsc1BL
AQItABQABgAIAAAAIQBDlhGjwgAAAEIBAAAjAAAAAAAAAAAAAAAAAO8bAAB4bC93b3Jrc2hlZXRz
L19yZWxzL3NoZWV0NS54bWwucmVsc1BLAQItABQABgAIAAAAIQBk8zQiwgAAAEIBAAAjAAAAAAAA
AAAAAAAAAPIcAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0Ni54bWwucmVsc1BLAQItABQABgAI
AAAAIQAz8DTmqAcAAF8vAAAYAAAAAAAAAAAAAAAAAPUdAAB4bC93b3Jrc2hlZXRzL3NoZWV0My54
bWxQSwECLQAUAAYACAAAACEAimWsRRoIAADCLwAAGAAAAAAAAAAAAAAAAADTJQAAeGwvd29ya3No
ZWV0cy9zaGVldDEueG1sUEsBAi0AFAAGAAgAAAAhAGPzdqfCBgAAojEAAA0AAAAAAAAAAAAAAAAA
Iy4AAHhsL3N0eWxlcy54bWxQSwECLQAUAAYACAAAACEA+2KlbZQGAACnGwAAEwAAAAAAAAAAAAAA
AAAQNQAAeGwvdGhlbWUvdGhlbWUxLnhtbFBLAQItABQABgAIAAAAIQAT3dn9twkAACQ1AAAYAAAA
AAAAAAAAAAAAANU7AAB4bC93b3Jrc2hlZXRzL3NoZWV0Ni54bWxQSwECLQAUAAYACAAAACEAXwIH
IZUHAAAnLQAAGAAAAAAAAAAAAAAAAADCRQAAeGwvd29ya3NoZWV0cy9zaGVldDUueG1sUEsBAi0A
FAAGAAgAAAAhAM1Nn+ZoCAAAdSEAABQAAAAAAAAAAAAAAAAAjU0AAHhsL3NoYXJlZFN0cmluZ3Mu
eG1sUEsBAi0AFAAGAAgAAAAhAFDbc7NMAAAA3AAAACcAAAAAAAAAAAAAAAAAJ1YAAHhsL3ByaW50
ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M0LmJpblBLAQItABQABgAIAAAAIQArbV5iSwAAANwA
AAAnAAAAAAAAAAAAAAAAALhWAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMS5i
aW5QSwECLQAUAAYACAAAACEAK21eYksAAADcAAAAJwAAAAAAAAAAAAAAAABIVwAAeGwvcHJpbnRl
clNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczIuYmluUEsBAi0AFAAGAAgAAAAhALNOp/62AQAApwMA
ABAAAAAAAAAAAAAAAAAA2FcAAGRvY1Byb3BzL2FwcC54bWxQSwECLQAUAAYACAAAACEATbbG/EAB
AABRAgAAEQAAAAAAAAAAAAAAAADEWgAAZG9jUHJvcHMvY29yZS54bWxQSwECLQAUAAYACAAAACEA
UNtzs0wAAADcAAAAJwAAAAAAAAAAAAAAAAA7XQAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJT
ZXR0aW5nczUuYmluUEsBAi0AFAAGAAgAAAAhAMZevJFKAAAA3AAAACcAAAAAAAAAAAAAAAAAzF0A
AHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MzLmJpblBLBQYAAAAAGQAZABwHAABb
XgAAAAA=

--_004_A45D4FDC92525B4F8A75E1B55399F328C012A4IRSMSX104gercorpi_--
