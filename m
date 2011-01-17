Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D5ED94C810E8
	for <yocto@yoctoproject.org>; Mon, 17 Jan 2011 10:21:02 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 08:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; 
	d="scan'208,217";a="647798807"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 08:21:02 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 08:21:02 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Mon, 17 Jan 2011 08:21:01 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: 'Xiaofeng Yan' <xiaofeng.yan@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 17 Jan 2011 08:21:01 -0800
Thread-Topic: [yocto] Status for lsb test (2011.1.10-2011.1.14)
Thread-Index: Acu2BeG/3QbxKiFiSzimouEQKZNkwwAXYNuQ
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com>
References: <4D33CFB0.1030701@windriver.com>
In-Reply-To: <4D33CFB0.1030701@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Status for lsb test (2011.1.10-2011.1.14)
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
X-List-Received-Date: Mon, 17 Jan 2011 16:21:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368orsmsx501amrc_"

--_000_B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368orsmsx501amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for sending.

I am surprised that QT3 is included in LSB. We're at QT4 now I believe.

For those who care about LSB: Are we OK with that failure?

Dave

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Xiaofeng Yan
Sent: Sunday, January 16, 2011 9:12 PM
To: yocto@yoctoproject.org
Subject: [yocto] Status for lsb test (2011.1.10-2011.1.14)

Hi all,
The next table is for the latest lsb test result.
LSB Test Suite

Version

Result

Left work

May/Days

Start Date

Finish Date

Status

Completed Percentage

Defects filed

Developer

Risk/Issue

Cpp-T2C Tests

4.0.2-1

Passed

submit

2

2010-12-20

2010-12-21

In Progress

90%

Jingdong Lu

Libstdc++ Tests

4.1.0-7

Passed

submit

3

2010-12-22

2010-12-24

In Progress

90%

Jingdong Lu

Perl Tests

4.0.7-1

Passed

None

2

2010-12-27

2010-12-28

Done

100%

Jingdong Lu

Python Runtime Tests

4.0.2-1

Passed

submit

3

2010-12-29

2010-12-31

In Progress

90%

Bug 614(Open)

Jingdong Lu

Python Tests

2.4.5-2

Passed

submit

0

In Progress

90%

Jingdong Lu

OLVER Core Tests

Passed

submit

6

2011-1-4

2011-1-11

In Progress

90%

Jingdong Lu

Command Check

4.0.0-2

Passed

Lsb

3

2011-1-12

2011-1-14

In Progress

90%

BUG 520(Open)

Jingdong Lu

Tcl Tests

8.5.7-6

Passed

None

5

2011-1-17

2011-1-21

Done

100%

Jingdong Lu

Library Check

4.0.2-1

Failures: 2

qt3

5

2011-1-12

2011-1-18

In Progress

80%

Jingdong Lu

Query if we need to handle any QT3 issues


Desktop Tests

Passed

submit

4

2010-12-20

2010-12-29

Delay

90%

BUG 567(Closed)
BUG 569(Closed)
BUG 570(Closed)

Xiaofeng Yan

Desktop-T2C Tests

4.0.2-1

Failures: 1

fix failures

4

2010-12-20

2010-12-29

Delay

70%

BUG 571(Accepted)

Xiaofeng Yan

Qt4-Azov Tests

4.0.2-1

Failures:3

fix failures

4

2010-12-30

2011-1-5

Delay

50%

Xiaofeng Yan

Xts5 Tests

5.1.5-19

Passed

submit

5

2011-1-6

2010-1-12

In Progress

90%

Xiaofeng Yan

Core Tests

4.0.5-1

Failures: N/A

fix failures

7 (?)

2011-1-21

2011-1-31

Not started Yet

Xiaofeng Yan

Blocked by POSIX rename test case

LSB Test Suite

creat-lsb-image
LSB_Setup.sh

0

Done

100%

Xiaofeng Yan



--_000_B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368orsmsx501amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META HTTP-EQUI=
V=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"><meta name=3DG=
enerator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"DejaVu Sans";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Lucida Sans";
	panose-1:2 11 6 2 3 5 4 2 2 4;}
@font-face
	{font-family:FreeSerif;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:10.0pt;
	font-family:"DejaVu Sans","serif";
	color:black;}
span.EmailStyle18
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body bgcolor=3Dwhite lang=3DEN-US=
 link=3Dblue vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>=
<span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1=
F497D'>Thanks for sending.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>I am surprised tha=
t QT3 is included in LSB. We're at QT4 now I believe.<o:p></o:p></span></p>=
<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>For those who care about LSB: Are we OK with that failure?<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p cl=
ass=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>Dave<o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:solid b=
lue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none;border-=
top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b>=
<span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:win=
dowtext'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahom=
a","sans-serif";color:windowtext'> yocto-bounces@yoctoproject.org [mailto:y=
octo-bounces@yoctoproject.org] <b>On Behalf Of </b>Xiaofeng Yan<br><b>Sent:=
</b> Sunday, January 16, 2011 9:12 PM<br><b>To:</b> yocto@yoctoproject.org<=
br><b>Subject:</b> [yocto] Status for lsb test (2011.1.10-2011.1.14)<o:p></=
o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal style=3D'margin-bottom:12.0pt'>Hi all,<br>The next table is =
for the latest lsb test result.<o:p></o:p></p><table class=3DMsoNormalTable=
 border=3D0 cellspacing=3D0 cellpadding=3D0><tr style=3D'height:30.0pt'><td=
 width=3D162 valign=3Dtop style=3D'width:121.5pt;border:solid #1A1A1A 1.0pt=
;background:silver;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span style=3D'f=
ont-family:"Lucida Sans","sans-serif"'>LSB Test Suite</span></b><span style=
=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span><=
/p></td><td width=3D78 valign=3Dtop style=3D'width:58.5pt;border:solid #1A1=
A1A 1.0pt;background:silver;padding:.75pt .75pt .75pt .75pt;height:30.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span st=
yle=3D'font-family:"Lucida Sans","sans-serif"'>Version</span></b><span styl=
e=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span>=
</p></td><td width=3D109 valign=3Dtop style=3D'width:81.75pt;border:solid #=
1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .75pt .75pt;height:30.0p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span=
 style=3D'font-family:"Lucida Sans","sans-serif"'>Result</span></b><span st=
yle=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></spa=
n></p></td><td width=3D148 valign=3Dtop style=3D'width:111.0pt;border:solid=
 #1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .75pt .75pt;height:30.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><sp=
an style=3D'font-family:"Lucida Sans","sans-serif"'>Left work</span></b><sp=
an style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p>=
</span></p></td><td width=3D95 valign=3Dtop style=3D'width:71.25pt;border:s=
olid #1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .75pt .75pt;height=
:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b=
><span style=3D'font-family:"Lucida Sans","sans-serif"'>May/Days</span></b>=
<span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o=
:p></span></p></td><td width=3D109 valign=3Dtop style=3D'width:81.75pt;bord=
er:solid #1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .75pt .75pt;he=
ight:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><b><span style=3D'font-family:"Lucida Sans","sans-serif"'>Start Date</spa=
n></b><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o=
:p></o:p></span></p></td><td width=3D117 valign=3Dtop style=3D'width:87.75p=
t;border:solid #1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .75pt .7=
5pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><b><span style=3D'font-family:"Lucida Sans","sans-serif"'>Finish Da=
te</span></b><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","ser=
if"'><o:p></o:p></span></p></td><td width=3D88 valign=3Dtop style=3D'width:=
66.0pt;border:solid #1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .75=
pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><b><span style=3D'font-family:"Lucida Sans","sans-serif"'>Stat=
us</span></b><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","ser=
if"'><o:p></o:p></span></p></td><td width=3D206 valign=3Dtop style=3D'width=
:154.5pt;border:solid #1A1A1A 1.0pt;background:silver;padding:.75pt .75pt .=
75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><b><span style=3D'font-family:"Lucida Sans","sans-serif"'>Co=
mpleted Percentage</span></b><span style=3D'font-size:10.0pt;font-family:"D=
ejaVu Sans","serif"'><o:p></o:p></span></p></td><td width=3D178 valign=3Dto=
p style=3D'width:133.5pt;border:solid #1A1A1A 1.0pt;background:silver;paddi=
ng:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><b><span style=3D'font-family:"Lucida Sans",=
"sans-serif"'>Defects filed</span></b><span style=3D'font-size:10.0pt;font-=
family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td width=3D102 va=
lign=3Dtop style=3D'width:76.5pt;border:solid #1A1A1A 1.0pt;background:silv=
er;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><b><span style=3D'font-family:"Lucid=
a Sans","sans-serif"'>Developer</span></b><span style=3D'font-size:10.0pt;f=
ont-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td width=3D17=
6 valign=3Dtop style=3D'width:132.0pt;border:solid #1A1A1A 1.0pt;background=
:silver;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><b><span style=3D'font-family:"=
Lucida Sans","sans-serif"'>Risk/Issue</span></b><span style=3D'font-size:10=
.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td></tr><tr=
 style=3D'height:15.75pt'><td valign=3Dtop style=3D'border:solid #1A1A1A 1.=
0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><s=
pan style=3D'font-family:"FreeSerif","serif"'>Cpp-T2C Tests</span><span sty=
le=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span=
></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75p=
t .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span style=3D'fon=
t-family:"FreeSerif","serif"'>4.0.2-1</span><span style=3D'font-size:10.0pt=
;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D=
'border:solid #1A1A1A 1.0pt;border-left:none;background:#339966;padding:.75=
pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>P=
assed</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","seri=
f"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","se=
rif"'>submit</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans=
","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0=
pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSer=
if","serif"'>2</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sa=
ns","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1=
.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeS=
erif","serif"'>2010-12-20</span><span style=3D'font-size:10.0pt;font-family=
:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:soli=
d #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-fa=
mily:"FreeSerif","serif"'>2010-12-21</span><span style=3D'font-size:10.0pt;=
font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'=
border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75p=
t;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span style=3D'font-family:"FreeSerif","serif"'>In Progress</span><s=
pan style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p=
></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;background:#3366FF=
;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif=
","serif"'>90%</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sa=
ns","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1=
.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></td=
><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;he=
ight:15.75pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","=
serif"'>Jingdong Lu</span><span style=3D'font-size:10.0pt;font-family:"Deja=
Vu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1=
A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></td></tr><tr sty=
le=3D'height:15.75pt'><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;=
padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span =
style=3D'font-family:"FreeSerif","serif"'>Libstdc++ Tests</span><span style=
=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span><=
/p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt =
.75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span style=3D'font-=
family:"FreeSerif","serif"'>4.1.0-7</span><span style=3D'font-size:10.0pt;f=
ont-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'b=
order:solid #1A1A1A 1.0pt;border-left:none;background:#339966;padding:.75pt=
 .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>Pas=
sed</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"=
'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;paddin=
g:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","seri=
f"'>submit</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans",=
"serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt=
;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif=
","serif"'>3</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans=
","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0=
pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSer=
if","serif"'>2010-12-22</span><span style=3D'font-size:10.0pt;font-family:"=
DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid =
#1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-fami=
ly:"FreeSerif","serif"'>2010-12-24</span><span style=3D'font-size:10.0pt;fo=
nt-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'bo=
rder:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;=
height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span style=3D'font-family:"FreeSerif","serif"'>In Progress</span><spa=
n style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p><=
/span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;background:#3366FF;p=
adding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif=
","serif"'>90%</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sa=
ns","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1=
.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></td=
><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;he=
ight:15.75pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","=
serif"'>Jingdong Lu</span><span style=3D'font-size:10.0pt;font-family:"Deja=
Vu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1=
A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></td></tr><tr sty=
le=3D'height:15.75pt'><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;=
padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span =
style=3D'font-family:"FreeSerif","serif"'>Perl Tests</span><span style=3D'f=
ont-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></=
td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt=
 .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span style=3D'font-famil=
y:"FreeSerif","serif"'>4.0.7-1</span><span style=3D'font-size:10.0pt;font-f=
amily:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border=
:solid #1A1A1A 1.0pt;border-left:none;background:#339966;padding:.75pt .75p=
t .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>Passed</=
span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:=
p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75=
pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>N=
one</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"=
'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;paddin=
g:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","seri=
f"'>2</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","seri=
f"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padd=
ing:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","se=
rif"'>2010-12-27</span><span style=3D'font-size:10.0pt;font-family:"DejaVu =
Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A=
 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"Fre=
eSerif","serif"'>2010-12-28</span><span style=3D'font-size:10.0pt;font-fami=
ly:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:so=
lid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font=
-family:"FreeSerif","serif"'>Done</span><span style=3D'font-size:10.0pt;fon=
t-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'bor=
der:solid #1A1A1A 1.0pt;background:#99CC00;padding:.75pt .75pt .75pt .75pt;=
height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span style=3D'font-family:"FreeSerif","serif"'>100%</span><span style=
=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span><=
/p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.=
75pt .75pt .75pt .75pt;height:15.75pt'></td><td style=3D'border:solid #1A1A=
1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNorm=
al><span style=3D'font-family:"FreeSerif","serif"'>Jingdong Lu</span><span =
style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></s=
pan></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .7=
5pt .75pt;height:15.75pt'></td></tr><tr style=3D'height:15.75pt'><td valign=
=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;=
height:15.75pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif"=
,"serif"'>Python Runtime Tests</span><span style=3D'font-size:10.0pt;font-f=
amily:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td valign=3Dtop st=
yle=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15=
.75pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'=
>4.0.2-1</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","s=
erif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;b=
order-left:none;background:#339966;padding:.75pt .75pt .75pt .75pt;height:1=
5.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an style=3D'font-family:"FreeSerif","serif"'>Passed</span><span style=3D'fo=
nt-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></t=
d><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;h=
eight:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><span style=3D'font-family:"FreeSerif","serif"'>submit</span><span styl=
e=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span>=
</p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt =
.75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span style=3D'font-family:"FreeSerif","serif"'>3</span><span st=
yle=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></spa=
n></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75p=
t .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span style=3D'font-family:"FreeSerif","serif"'>2010-12-29</sp=
an><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p>=
</o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt=
 .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>201=
0-12-31</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","se=
rif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;pa=
dding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","=
serif"'>In Progress</span><span style=3D'font-size:10.0pt;font-family:"Deja=
Vu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1=
A1A 1.0pt;background:#3366FF;padding:.75pt .75pt .75pt .75pt;height:15.75pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span sty=
le=3D'font-family:"FreeSerif","serif"'>90%</span><span style=3D'font-size:1=
0.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td sty=
le=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75p=
t .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span style=3D'font-family:"FreeSerif","serif"'>Bug 614(Open)<=
/span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o=
:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.7=
5pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span style=3D'f=
ont-family:"FreeSerif","serif"'>Jingdong Lu</span><span style=3D'font-size:=
10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td st=
yle=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15=
.75pt'></td></tr><tr style=3D'height:15.75pt'><td valign=3Dtop style=3D'bor=
der:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p =
class=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>Python Te=
sts</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"=
'><o:p></o:p></span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A=
 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal=
><span style=3D'font-family:"FreeSerif","serif"'>2.4.5-2</span><span style=
=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span><=
/p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-left:none;background=
:#339966;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"F=
reeSerif","serif"'>Passed</span><span style=3D'font-size:10.0pt;font-family=
:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:soli=
d #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-fa=
mily:"FreeSerif","serif"'>submit</span><span style=3D'font-size:10.0pt;font=
-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'bord=
er:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'=
font-family:"FreeSerif","serif"'>0</span><span style=3D'font-size:10.0pt;fo=
nt-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'bo=
rder:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></=
td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;=
height:15.75pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;border-right:n=
one;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSe=
rif","serif"'>In Progress</span><span style=3D'font-size:10.0pt;font-family=
:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:soli=
d #1A1A1A 1.0pt;background:#3366FF;padding:.75pt .75pt .75pt .75pt;height:1=
5.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an style=3D'font-family:"FreeSerif","serif"'>90%</span><span style=3D'font-=
size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><=
td style=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75p=
t .75pt .75pt;height:15.75pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;=
padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span =
style=3D'font-family:"FreeSerif","serif"'>Jingdong Lu</span><span style=3D'=
font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p><=
/td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt=
;height:15.75pt'></td></tr><tr style=3D'height:15.75pt'><td valign=3Dtop st=
yle=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15=
.75pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'=
>OLVER Core Tests</span><span style=3D'font-size:10.0pt;font-family:"DejaVu=
 Sans","serif"'><o:p></o:p></span></p></td><td valign=3Dtop style=3D'border=
:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></td><=
td style=3D'border:solid #1A1A1A 1.0pt;border-left:none;background:#339966;=
padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif=
","serif"'>Passed</span><span style=3D'font-size:10.0pt;font-family:"DejaVu=
 Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1=
A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"Fr=
eeSerif","serif"'>submit</span><span style=3D'font-size:10.0pt;font-family:=
"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid=
 #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-fam=
ily:"FreeSerif","serif"'>6</span><span style=3D'font-size:10.0pt;font-famil=
y:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:sol=
id #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font=
-family:"FreeSerif","serif"'>2011-1-4</span><span style=3D'font-size:10.0pt=
;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D=
'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span styl=
e=3D'font-family:"FreeSerif","serif"'>2011-1-11</span><span style=3D'font-s=
ize:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><t=
d style=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt=
 .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span style=3D'font-family:"FreeSerif","serif"'>In Progre=
ss</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'=
><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;backgro=
und:#3366FF;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-family=
:"FreeSerif","serif"'>90%</span><span style=3D'font-size:10.0pt;font-family=
:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:soli=
d #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;height:15=
.75pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75=
pt .75pt;height:15.75pt'><p class=3DMsoNormal><span style=3D'font-family:"F=
reeSerif","serif"'>Jingdong Lu</span><span style=3D'font-size:10.0pt;font-f=
amily:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border=
:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'></td><=
/tr><tr style=3D'height:29.25pt'><td valign=3Dtop style=3D'border:solid #1A=
1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNo=
rmal><span style=3D'font-family:"FreeSerif","serif"'>Command Check</span><s=
pan style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p=
></span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;paddi=
ng:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNormal><span style=
=3D'font-family:"FreeSerif","serif"'>4.0.0-2</span><span style=3D'font-size=
:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td s=
tyle=3D'border:solid #1A1A1A 1.0pt;border-left:none;background:#339966;padd=
ing:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","se=
rif"'>Passed</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans=
","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0=
pt;padding:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSer=
if","serif"'>Lsb</span><span style=3D'font-size:10.0pt;font-family:"DejaVu =
Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A=
 1.0pt;padding:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"Fre=
eSerif","serif"'>3</span><span style=3D'font-size:10.0pt;font-family:"DejaV=
u Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A=
1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"F=
reeSerif","serif"'>2011-1-12</span><span style=3D'font-size:10.0pt;font-fam=
ily:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:s=
olid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font=
-family:"FreeSerif","serif"'>2011-1-14</span><span style=3D'font-size:10.0p=
t;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=
=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt =
.75pt;height:29.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span style=3D'font-family:"FreeSerif","serif"'>In Progress</spa=
n><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p><=
/o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;background:#33=
66FF;padding:.75pt .75pt .75pt .75pt;height:29.25pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeS=
erif","serif"'>90%</span><span style=3D'font-size:10.0pt;font-family:"DejaV=
u Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A=
1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;height:29.25pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=
=3D'font-family:"FreeSerif","serif"'>BUG 520(Open)</span><span style=3D'fon=
t-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td=
><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;he=
ight:29.25pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","=
serif"'>Jingdong Lu</span><span style=3D'font-size:10.0pt;font-family:"Deja=
Vu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1=
A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:29.25pt'></td></tr><tr sty=
le=3D'height:15.75pt'><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;=
border-bottom:none;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=
=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>Tcl Tests</spa=
n><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p><=
/o:p></span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;b=
order-bottom:none;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=
=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>8.5.7-6</span>=
<span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o=
:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-left:none=
;background:#339966;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'fon=
t-family:"FreeSerif","serif"'>Passed</span><span style=3D'font-size:10.0pt;=
font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'=
border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=
=3D'font-family:"FreeSerif","serif"'>None</span><span style=3D'font-size:10=
.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td styl=
e=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.7=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
style=3D'font-family:"FreeSerif","serif"'>5</span><span style=3D'font-size:=
10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td st=
yle=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15=
.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n style=3D'font-family:"FreeSerif","serif"'>2011-1-17</span><span style=3D'=
font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p><=
/td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt=
;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span style=3D'font-family:"FreeSerif","serif"'>2011-1-21</span><span=
 style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></=
span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-right:none;pad=
ding:.75pt .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","s=
erif"'>Done</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans"=
,"serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0p=
t;background:#99CC00;padding:.75pt .75pt .75pt .75pt;height:15.75pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'fo=
nt-family:"FreeSerif","serif"'>100%</span><span style=3D'font-size:10.0pt;f=
ont-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'b=
order:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt=
;height:15.75pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt=
 .75pt .75pt .75pt;height:15.75pt'><p class=3DMsoNormal><span style=3D'font=
-family:"FreeSerif","serif"'>Jingdong Lu</span><span style=3D'font-size:10.=
0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=
=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.75=
pt'></td></tr><tr style=3D'height:27.0pt'><td valign=3Dtop style=3D'border:=
solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=
=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>Library Check<=
/span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o=
:p></o:p></span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0=
pt;padding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal><spa=
n style=3D'font-family:"FreeSerif","serif"'>4.0.2-1</span><span style=3D'fo=
nt-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></t=
d><td style=3D'border:solid #1A1A1A 1.0pt;background:#FF6060;padding:.75pt =
.75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>Fail=
ures: 2</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","se=
rif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;pa=
dding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","s=
erif"'>qt3</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans",=
"serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt=
;padding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif=
","serif"'>5</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans=
","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0=
pt;padding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSeri=
f","serif"'>2011-1-12</span><span style=3D'font-size:10.0pt;font-family:"De=
jaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1=
A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:=
"FreeSerif","serif"'>2011-1-18</span><span style=3D'font-size:10.0pt;font-f=
amily:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border=
:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;heig=
ht:27.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span style=3D'font-family:"FreeSerif","serif"'>In Progress</span><span sty=
le=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span=
></p></td><td style=3D'border:solid #1A1A1A 1.0pt;background:#3366FF;paddin=
g:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif=
"'>80%</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","ser=
if"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;bor=
der-right:none;padding:.75pt .75pt .75pt .75pt;height:27.0pt'></td><td styl=
e=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:27.0=
pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>Ji=
ngdong Lu</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","=
serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;=
padding:.75pt .75pt .75pt .75pt;height:27.0pt'><p class=3DMsoNormal><span s=
tyle=3D'font-family:"FreeSerif","serif"'>Query if we need to handle any QT3=
 issues</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","se=
rif"'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td valig=
n=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt=
;height:15.0pt'></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;p=
adding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td valign=3Dtop style=
=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0p=
t'></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .=
75pt;height:15.0pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.7=
5pt .75pt .75pt .75pt;height:15.0pt'></td><td style=3D'border:solid #1A1A1A=
 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td style=3D'bor=
der:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td=
><td style=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .7=
5pt .75pt .75pt;height:15.0pt'></td><td style=3D'border:solid #1A1A1A 1.0pt=
;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td style=3D'border:so=
lid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;height:=
15.0pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .7=
5pt .75pt;height:15.0pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;paddi=
ng:.75pt .75pt .75pt .75pt;height:15.0pt'></td></tr><tr style=3D'height:38.=
25pt'><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .7=
5pt .75pt .75pt;height:38.25pt'><p class=3DMsoNormal><span style=3D'font-fa=
mily:"FreeSerif","serif"'>Desktop Tests</span><span style=3D'font-size:10.0=
pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td valign=
=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;=
height:38.25pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;border-left:no=
ne;background:#339966;padding:.75pt .75pt .75pt .75pt;height:38.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'f=
ont-family:"FreeSerif","serif"'>Passed</span><span style=3D'font-size:10.0p=
t;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=
=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:38.25=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span s=
tyle=3D'font-family:"FreeSerif","serif"'>submit</span><span style=3D'font-s=
ize:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><t=
d style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;heigh=
t:38.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span style=3D'font-family:"FreeSerif","serif"'>4</span><span style=3D'font=
-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td>=
<td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;hei=
ght:38.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span style=3D'font-family:"FreeSerif","serif"'>2010-12-20</span><span st=
yle=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></spa=
n></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75p=
t .75pt;height:38.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span style=3D'font-family:"FreeSerif","serif"'>2010-12-29</sp=
an><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p>=
</o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-right:=
none;padding:.75pt .75pt .75pt .75pt;height:38.25pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeS=
erif","serif"'>Delay</span><span style=3D'font-size:10.0pt;font-family:"Dej=
aVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A=
1A1A 1.0pt;background:#FFCC99;padding:.75pt .75pt .75pt .75pt;height:38.25p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span st=
yle=3D'font-family:"FreeSerif","serif"'>90%</span><span style=3D'font-size:=
10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td st=
yle=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:38=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n style=3D'font-family:"FreeSerif","serif"'>BUG 567(Closed)<br>BUG 569(Clos=
ed)<br>BUG 570(Closed)</span><span style=3D'font-size:10.0pt;font-family:"D=
ejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #=
1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:38.25pt'><p class=3DMso=
Normal><span style=3D'font-family:"FreeSerif","serif"'>Xiaofeng Yan</span><=
span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:=
p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75=
pt .75pt .75pt;height:38.25pt'></td></tr><tr style=3D'height:30.0pt'><td va=
lign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;border-top:none;padding:.75p=
t .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal><span style=3D'font=
-family:"FreeSerif","serif"'>Desktop-T2C Tests</span><span style=3D'font-si=
ze:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td=
 valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;border-top:none;padding:.=
75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal><span style=3D'f=
ont-family:"FreeSerif","serif"'>4.0.2-1</span><span style=3D'font-size:10.0=
pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=
=3D'border:solid #1A1A1A 1.0pt;background:#FF6060;padding:.75pt .75pt .75pt=
 .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span style=3D'font-family:"FreeSerif","serif"'>Failures: 1</spa=
n><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p><=
/o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt =
.75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>fix =
failures</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","s=
erif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;p=
adding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","=
serif"'>4</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","=
serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;=
padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif=
","serif"'>2010-12-20</span><span style=3D'font-size:10.0pt;font-family:"De=
jaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1=
A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:=
"FreeSerif","serif"'>2010-12-29</span><span style=3D'font-size:10.0pt;font-=
family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'borde=
r:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;hei=
ght:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span style=3D'font-family:"FreeSerif","serif"'>Delay</span><span style=3D=
'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p>=
</td><td style=3D'border:solid #1A1A1A 1.0pt;background:#FFCC99;padding:.75=
pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'>70=
%</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'>=
<o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:=
.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif"'=
>BUG 571(Accepted)</span><span style=3D'font-size:10.0pt;font-family:"DejaV=
u Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A=
1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNorma=
l><span style=3D'font-family:"FreeSerif","serif"'>Xiaofeng Yan</span><span =
style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></s=
pan></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .7=
5pt .75pt;height:30.0pt'></td></tr><tr style=3D'height:30.0pt'><td valign=
=3Dtop style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;=
height:30.0pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif",=
"serif"'>Qt4-Azov Tests</span><span style=3D'font-size:10.0pt;font-family:"=
DejaVu Sans","serif"'><o:p></o:p></span></p></td><td valign=3Dtop style=3D'=
border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><=
p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>4.0.2-1=
</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><=
o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;backgroun=
d:#FF6060;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"F=
reeSerif","serif"'>Failures:3</span><span style=3D'font-size:10.0pt;font-fa=
mily:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:=
solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font=
-family:"FreeSerif","serif"'>fix failures</span><span style=3D'font-size:10=
.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td styl=
e=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span s=
tyle=3D'font-family:"FreeSerif","serif"'>4</span><span style=3D'font-size:1=
0.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td sty=
le=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
style=3D'font-family:"FreeSerif","serif"'>2010-12-30</span><span style=3D'f=
ont-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></=
td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;=
height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><span style=3D'font-family:"FreeSerif","serif"'>2011-1-5</span><span st=
yle=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></spa=
n></p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-right:none;paddin=
g:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","serif=
"'>Delay</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","s=
erif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;b=
ackground:#FFCC99;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font=
-family:"FreeSerif","serif"'>50%</span><span style=3D'font-size:10.0pt;font=
-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'bord=
er:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;he=
ight:30.0pt'></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75=
pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal><span style=3D'font-fami=
ly:"FreeSerif","serif"'>Xiaofeng Yan</span><span style=3D'font-size:10.0pt;=
font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'=
border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><=
/td></tr><tr style=3D'height:30.0pt'><td valign=3Dtop style=3D'border:solid=
 #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMs=
oNormal><span style=3D'font-family:"FreeSerif","serif"'>Xts5 Tests</span><s=
pan style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p=
></span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;paddi=
ng:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal><span style=
=3D'font-family:"FreeSerif","serif"'>5.1.5-19</span><span style=3D'font-siz=
e:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td =
style=3D'border:solid #1A1A1A 1.0pt;border-left:none;background:#339966;pad=
ding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","se=
rif"'>Passed</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans=
","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0=
pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSeri=
f","serif"'>submit</span><span style=3D'font-size:10.0pt;font-family:"DejaV=
u Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A=
1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"Fr=
eeSerif","serif"'>5</span><span style=3D'font-size:10.0pt;font-family:"Deja=
Vu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1=
A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"F=
reeSerif","serif"'>2011-1-6</span><span style=3D'font-size:10.0pt;font-fami=
ly:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:so=
lid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font=
-family:"FreeSerif","serif"'>2010-1-12</span><span style=3D'font-size:10.0p=
t;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=
=3D'border:solid #1A1A1A 1.0pt;border-right:none;padding:.75pt .75pt .75pt =
.75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span style=3D'font-family:"FreeSerif","serif"'>In Progress</span=
><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></=
o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;background:#336=
6FF;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSer=
if","serif"'>90%</span><span style=3D'font-size:10.0pt;font-family:"DejaVu =
Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A=
 1.0pt;border-right:none;padding:.75pt .75pt .75pt .75pt;height:30.0pt'></t=
d><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;h=
eight:30.0pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeSerif","=
serif"'>Xiaofeng Yan</span><span style=3D'font-size:10.0pt;font-family:"Dej=
aVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A=
1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'></td></tr><tr sty=
le=3D'height:30.0pt'><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;b=
order-bottom:none;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>Core Tests</sp=
an><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p>=
</o:p></span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;=
border-bottom:none;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>4.0.5-1</span>=
<span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o=
:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;background:#FF60=
60;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span style=3D'font-family:"FreeSeri=
f","serif"'>Failures: N/A</span><span style=3D'font-size:10.0pt;font-family=
:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D'border:soli=
d #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-fam=
ily:"FreeSerif","serif"'>fix failures</span><span style=3D'font-size:10.0pt=
;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td style=3D=
'border:solid #1A1A1A 1.0pt;border-bottom:none;padding:.75pt .75pt .75pt .7=
5pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span style=3D'font-family:"FreeSerif","serif"'>7 (?)</span><span s=
tyle=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></sp=
an></p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-bottom:none;padd=
ing:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","ser=
if"'>2011-1-21</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sa=
ns","serif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1=
.0pt;border-bottom:none;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'=
font-family:"FreeSerif","serif"'>2011-1-31</span><span style=3D'font-size:1=
0.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td sty=
le=3D'border-top:solid #1A1A1A 1.0pt;border-left:solid #1A1A1A 1.0pt;border=
-bottom:none;border-right:none;padding:.75pt .75pt .75pt .75pt;height:30.0p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span st=
yle=3D'font-family:"FreeSerif","serif"'>Not started Yet</span><span style=
=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span><=
/p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .=
75pt;height:30.0pt'></td><td style=3D'border-top:solid #1A1A1A 1.0pt;border=
-left:solid #1A1A1A 1.0pt;border-bottom:none;border-right:none;padding:.75p=
t .75pt .75pt .75pt;height:30.0pt'></td><td style=3D'border:solid #1A1A1A 1=
.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal><s=
pan style=3D'font-family:"FreeSerif","serif"'>Xiaofeng Yan</span><span styl=
e=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span>=
</p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt =
.75pt;height:30.0pt'><p class=3DMsoNormal><span style=3D'font-family:"FreeS=
erif","serif"'>Blocked by POSIX rename test case</span><span style=3D'font-=
size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><=
/tr><tr style=3D'height:30.0pt'><td valign=3Dtop style=3D'border:solid #1A1=
A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNorm=
al><span style=3D'font-family:"FreeSerif","serif"'>LSB Test Suite</span><sp=
an style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p>=
</span></p></td><td valign=3Dtop style=3D'border:solid #1A1A1A 1.0pt;paddin=
g:.75pt .75pt .75pt .75pt;height:30.0pt'></td><td valign=3Dtop style=3D'bor=
der:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'></td=
><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;he=
ight:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span style=3D'font-family:"FreeSerif","serif"'>creat-lsb-image <br>LSB_S=
etup.sh</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","se=
rif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;pa=
dding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span style=3D'font-family:"FreeSerif","s=
erif"'>0</span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","s=
erif"'><o:p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;p=
adding:.75pt .75pt .75pt .75pt;height:30.0pt'></td><td style=3D'border:soli=
d #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'></td><td sty=
le=3D'border:solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
style=3D'font-family:"FreeSerif","serif"'>Done</span><span style=3D'font-si=
ze:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></o:p></span></p></td><td=
 style=3D'border:solid #1A1A1A 1.0pt;background:#94BD5E;padding:.75pt .75pt=
 .75pt .75pt;height:30.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span style=3D'font-family:"FreeSerif","serif"'>100%</span=
><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:p></=
o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;border-right:no=
ne;padding:.75pt .75pt .75pt .75pt;height:30.0pt'></td><td style=3D'border:=
solid #1A1A1A 1.0pt;padding:.75pt .75pt .75pt .75pt;height:30.0pt'><p class=
=3DMsoNormal><span style=3D'font-family:"FreeSerif","serif"'>Xiaofeng Yan</=
span><span style=3D'font-size:10.0pt;font-family:"DejaVu Sans","serif"'><o:=
p></o:p></span></p></td><td style=3D'border:solid #1A1A1A 1.0pt;padding:.75=
pt .75pt .75pt .75pt;height:30.0pt'></td></tr></table><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p></div></div></body></ht=
ml>=

--_000_B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368orsmsx501amrc_--
