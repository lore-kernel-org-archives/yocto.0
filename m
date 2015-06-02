Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E04FE009C8; Tue,  2 Jun 2015 08:30:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3E226E007B6
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 08:29:54 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Tue, 2 Jun 2015 17:29:51 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Minutes: Yocto Project Technical Team Meeting -
	Tuesday, June 2, 2015 8:00 AM US Pacific Time
Thread-Index: AdCdR6baxQ+hg53oT7qYUBkm0cKHAwAAFyKQ
Date: Tue, 2 Jun 2015 15:29:51 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8AABFC@SESTOEX04.enea.se>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E554FD04A@fmsmsx111.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E554FD04A@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.175]
MIME-Version: 1.0
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 2, 2015 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 02 Jun 2015 15:30:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DDB0C57E45663A458C5CACB7B5688BC21D8AABFCSESTOEX04enease_"

--_000_DDB0C57E45663A458C5CACB7B5688BC21D8AABFCSESTOEX04enease_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry Jeff,

There is a small correction there:
I brought up two subjects:

1.)    A "smart" related problem that I was able to also replicate on the l=
atest master branch. I will send an email shorty explaining the problem.

2.)    A meta-cgl team sharing: All the P1 requirements have now associated=
 packages supported in meta-cgl. An exception is the fact that three of the=
 P1 associated packages have building problems which will be solved as soon=
 as possible. Those packages are: openl2tp, umip and makedumpfile.

Thanks once again guys for your time


Alex V.
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jolley, Stephen K
Sent: Tuesday, June 02, 2015 6:21 PM
To: yocto@yoctoproject.org
Subject: [yocto] Minutes: Yocto Project Technical Team Meeting - Tuesday, J=
une 2, 2015 8:00 AM US Pacific Time


Attendees: Stephen, Armin, Alex V., Bruce, Randy, Michael, Josep, Dave L, B=
rian, Dennis H, Ulf,



Agenda:



* Opens collection - 5 min (Stephen)

* Yocto Project status - 5 min (Stephen/team)

https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.9_Status

https://wiki.yoctoproject.org/wiki/Yocto_1.9_Schedule

https://wiki.yoctoproject.org/wiki/Yocto_1.9_Features

YP 1.6.3 was released last week

YP 1.7.2 was released last week

Meta-Intel BSP's are being released.

* SWAT team rotation: Juro -> Anibal

https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

* Opens - 10 min

It is planned for QT4 to become a layer and QT5 will be supported; timing f=
or this hasn't been settled.

* Team Sharing - 10 min

Alex V - Discussed some problems he has on kype in meta-cgl with smart.  ht=
tps://labix.org/smart.  Recommended he bring this up on mailing list since =
no-one on the call knew an answer.


Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:          (503) 712-0534
*    Cell:                                (208) 244-4460
* Email:                             stephen.k.jolley@intel.com<mailto:step=
hen.k.jolley@intel.com>


--_000_DDB0C57E45663A458C5CACB7B5688BC21D8AABFCSESTOEX04enease_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;
	mso-fareast-language:EN-US;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-language:ZH-CN;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:584458494;
	mso-list-type:hybrid;
	mso-list-template-ids:930794270 -1564156896 68681753 68681755 68681743 686=
81753 68681755 68681743 68681753 68681755;}
@list l0:level1
	{mso-level-text:"%1\.\)";
	mso-level-tab-stop:none;
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
<body lang=3D"RO" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Sorry J=
eff,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">There i=
s a small correction there:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I broug=
ht up two subjects:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US" style=3D"color:#1F497D">=
<span style=3D"mso-list:Ignore">1.)<span style=3D"font:7.0pt &quot;Times Ne=
w Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"color:#1F497D"=
>A &#8220;smart&#8221; related problem that I was able to also replicate on=
 the latest master branch. I will send an email shorty explaining the probl=
em.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US" style=3D"color:#1F497D">=
<span style=3D"mso-list:Ignore">2.)<span style=3D"font:7.0pt &quot;Times Ne=
w Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"color:#1F497D"=
>A meta-cgl team sharing: All the P1 requirements have now associated packa=
ges supported in meta-cgl. An exception is the fact that three of the P1 as=
sociated packages have building problems
 which will be solved as soon as possible. Those packages are: openl2tp, um=
ip and makedumpfile.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Thanks =
once again guys for your time<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Alex V.=
<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:RO=
">From:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-famil=
y:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:RO"> yocto=
-bounces@yoctoproject.org
 [mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Jolley, Stephe=
n K<br>
<b>Sent:</b> Tuesday, June 02, 2015 6:21 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Minutes: Yocto Project Technical Team Meeting - Tue=
sday, June 2, 2015 8:00 AM US Pacific Time<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">Attendees: Stephen, Armin, Alex V.,=
 Bruce, Randy, Michael, Josep, Dave L, Brian, Dennis H, Ulf,
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">Agenda:<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">* Opens collection - 5 min (Stephen=
)<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">* Yocto Project status - 5 min (Ste=
phen/team)<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas"><a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Yocto_Project_v1.9_Status">https://wiki.yoctoproject.org/wiki/Yo=
cto_Project_v1.9_Status</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas"><a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Yocto_1.9_Schedule">https://wiki.yoctoproject.org/wiki/Yocto_1.9=
_Schedule</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas"><a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Yocto_1.9_Features">https://wiki.yoctoproject.org/wiki/Yocto_1.9=
_Features</a>
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">YP 1.6.3 was released last week<o:p=
></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">YP 1.7.2 was released last week<o:p=
></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">Meta-Intel BSP&#8217;s are being re=
leased.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">* SWAT team rotation: Juro -&gt; An=
ibal<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas"><a href=3D"https://wiki.yoctoprojec=
t.org/wiki/Yocto_Build_Failure_Swat_Team">https://wiki.yoctoproject.org/wik=
i/Yocto_Build_Failure_Swat_Team</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">* Opens - 10 min
<o:p></o:p></span></p>
<div style=3D"border:none;border-bottom:solid windowtext 1.0pt;padding:0cm =
0cm 1.0pt 0cm">
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">It is planned for QT4 to become a l=
ayer and QT5 will be supported; timing for this hasn&#8217;t been settled.<=
o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">* Team Sharing - 10 min<o:p></o:p><=
/span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas">Alex V &#8211; Discussed some probl=
ems he has on kype in meta-cgl with smart.&nbsp;
<a href=3D"https://labix.org/smart">https://labix.org/smart</a>.&nbsp; Reco=
mmended he bring this up on mailing list since no-one on the call knew an a=
nswer.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"font-size:11.0pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"page-break-after:avoid;text-autospace:none"=
><b><i><span lang=3D"EN-US" style=3D"font-size:16.0pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;;color:purple">Stephen K. Jolley</span>=
</i></b><b><i><span lang=3D"EN-US" style=3D"font-size:16.0pt;font-family:&q=
uot;Tahoma&quot;,&quot;sans-serif&quot;;color:purple"><o:p></o:p></span></i=
></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:8.0pt;fon=
t-family:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"page-break-after:avoid;text-autospace:none"=
><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Courie=
r New&quot;;color:fuchsia">INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsb=
oro, OR 97124
<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:Wingdings;=
color:black">(</span><span lang=3D"EN-US" style=3D"font-family:&quot;MS San=
s Serif&quot;;color:teal">
</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;MS S=
ans Serif&quot;;color:teal">&nbsp;&nbsp;</span><b><span lang=3D"EN-US" styl=
e=3D"font-size:8.0pt;font-family:&quot;Comic Sans MS&quot;;color:teal">Work=
 Telephone</span></b><span lang=3D"EN-US" style=3D"font-family:&quot;MS San=
s Serif&quot;;color:teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;MS S=
ans Serif&quot;">(503) 712-0534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:Wingdings;color:black">(</span><span lang=3D"EN-US" style=3D"font-siz=
e:9.0pt;font-family:&quot;MS Sans Serif&quot;;color:teal">&nbsp;&nbsp;&nbsp=
;
</span><b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;C=
omic Sans MS&quot;;color:teal">Cell</span></b><span lang=3D"EN-US" style=3D=
"font-size:9.0pt;font-family:&quot;MS Sans Serif&quot;;color:teal">:&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;MS S=
ans Serif&quot;">(208) 244-4460<span style=3D"color:black"><o:p></o:p></spa=
n></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:Wingdings">*
</span><b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;C=
omic Sans MS&quot;;color:teal">Email</span></b><span lang=3D"EN-US" style=
=3D"font-size:9.0pt;font-family:&quot;MS Sans Serif&quot;;color:teal">:</sp=
an><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;MS Sans =
Serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<u><span style=3D"color:blue"><a href=3D"mailto:stephen.k.jolley@intel.com"=
>stephen.k.jolley@intel.com</a></span></u></span><span lang=3D"EN-US" style=
=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DDB0C57E45663A458C5CACB7B5688BC21D8AABFCSESTOEX04enease_--
