Return-Path: <Mark.Clark2@nov.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E7EE00CE1; Mon, 29 Feb 2016 07:49:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.158.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1029 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Feb 2016 07:49:23 PST
Received: from mx0b-001b7901.pphosted.com (mx0b-001b7901.pphosted.com
	[148.163.158.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C5C8E008E1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 07:49:23 -0800 (PST)
Received: from pps.filterd (m0078094.ppops.net [127.0.0.1])
	by mx0b-001b7901.pphosted.com (8.15.0.59/8.15.0.59) with SMTP id
	u1TFWCCp029491
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 10:32:14 -0500
Received: from srvusahub05.nov.com ([208.92.229.4])
	by mx0b-001b7901.pphosted.com with ESMTP id 21b8bmhq9m-2
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 10:32:13 -0500
Received: from SRVUSAMBX10.nov.com ([fe80::e004:b9a7:5298:2288]) by
	SRVUSAHUB05.nov.com ([fe80::98c7:b50e:97f6:8fe%25]) with mapi id
	14.03.0266.001; Mon, 29 Feb 2016 08:30:26 -0700
From: "Clark, Mark A" <Mark.Clark2@nov.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re: [yocto] Hanging during kernel boot
Thread-Index: AdFzBdGlwBHnyxr0Rq6PNuP8rNsqwA==
Date: Mon, 29 Feb 2016 15:30:25 +0000
Message-ID: <67C2F67D576953459C2BA669CA8B7E1DE91DF426@SRVUSAMBX10.nov.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.32.97.167]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-02-29_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	spamscore=0 suspectscore=0
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1601100000
	definitions=main-1602290302
Subject: Re: Hanging during kernel boot
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
X-List-Received-Date: Mon, 29 Feb 2016 15:49:28 -0000
X-Groupsio-MsgNum: 28735
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_";
	type="multipart/alternative"

--_004_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_
Content-Type: multipart/alternative;
	boundary="_000_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_"

--_000_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am running into the same problem and have tried tweaking parts of the ker=
nel config to get past this.  I can build the same target for qemu and it b=
oots fine.  I run it on a Beckhoff SBC and it hangs at the Switching to clo=
ck source tsc".



Any ideas?  It's using the 3.14 kernel for RT.



"I've been redoing an old Danny project with Fido, running on an Atom mobo.

I created a fresh BSP with yocto-bsp, using a RT kernel, and haven't begun

to fiddle with the kernel configuration yet. It gets part way through the

boot process and hangs at "Switching to clocksource tsc". I've googled

this error, which lots of people have had on lots of systems (Ubuntu,

etc.), and have solved in lots of different ways, none of which seem to

relate to my system. I don't believe it has anything to do with the tsc.



The system doesn't crash. I can bang on the keyboard, and the keys are

echoed. After seven or so presses, I get a "random: nonblocking pool is

initialized" message (something to do with entropy collection, I guess).

So the kernel is running, but it's like systemd (which I've substituted

for sysvinit) has just hung.



Since I haven't gotten to a prompt, I can't do anything. Does anyone have

any ideas how I might diagnose this? Are there any kernel parameters I

might fiddle with on the flash memory? And where does one do such

fiddling, with a syslinux-based live image? Or should I be selectively

removing things from my BSP that were put there by yocto-bsp?



--



Ciao,               Paul D. DeRocco

Paul                mailto:pderocco at ix.netcom.com<https://lists.yoctopro=
ject.org/listinfo/yocto>


"

Mark Clark
Embedded Software Engineer
Embedded Software, Cedar Park, TX
[Description: Description: Description: Description: National Oilwell Varco=
 Logo Color CMYK.jpg]
 Wellbore Technologies - Dynamic Drilling Solutions
Global Software Engineering
Office: (512) 340-5435
Mobile: (512) 736-9396
"One Team - Infinite Solutions"


--_000_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Gill Sans MT";
	panose-1:2 11 5 2 2 1 4 2 2 3;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
<pre>I am running into the same problem and have tried tweaking parts of th=
e kernel config to get past this.&nbsp; I can build the same target for qem=
u and it boots fine.&nbsp; I run it on a Beckhoff SBC and it hangs at the S=
witching to clock source tsc&#8221;.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Any ideas?&nbsp; It&#8217;s using the 3.14 kernel for RT.<o:p></o:p></=
pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>&#8220;<span style=3D"color:black">I've been redoing an old Danny proj=
ect with Fido, running on an Atom mobo.<o:p></o:p></span></pre>
<pre><span style=3D"color:black">I created a fresh BSP with yocto-bsp, usin=
g a RT kernel, and haven't begun<o:p></o:p></span></pre>
<pre><span style=3D"color:black">to fiddle with the kernel configuration ye=
t. It gets part way through the<o:p></o:p></span></pre>
<pre><span style=3D"color:black">boot process and hangs at &quot;Switching =
to clocksource tsc&quot;. I've googled<o:p></o:p></span></pre>
<pre><span style=3D"color:black">this error, which lots of people have had =
on lots of systems (Ubuntu,<o:p></o:p></span></pre>
<pre><span style=3D"color:black">etc.), and have solved in lots of differen=
t ways, none of which seem to<o:p></o:p></span></pre>
<pre><span style=3D"color:black">relate to my system. I don't believe it ha=
s anything to do with the tsc.<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">The system doesn't crash. I can bang on th=
e keyboard, and the keys are<o:p></o:p></span></pre>
<pre><span style=3D"color:black">echoed. After seven or so presses, I get a=
 &quot;random: nonblocking pool is<o:p></o:p></span></pre>
<pre><span style=3D"color:black">initialized&quot; message (something to do=
 with entropy collection, I guess).<o:p></o:p></span></pre>
<pre><span style=3D"color:black">So the kernel is running, but it's like sy=
stemd (which I've substituted<o:p></o:p></span></pre>
<pre><span style=3D"color:black">for sysvinit) has just hung.<o:p></o:p></s=
pan></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Since I haven't gotten to a prompt, I can'=
t do anything. Does anyone have<o:p></o:p></span></pre>
<pre><span style=3D"color:black">any ideas how I might diagnose this? Are t=
here any kernel parameters I<o:p></o:p></span></pre>
<pre><span style=3D"color:black">might fiddle with on the flash memory? And=
 where does one do such<o:p></o:p></span></pre>
<pre><span style=3D"color:black">fiddling, with a syslinux-based live image=
? Or should I be selectively<o:p></o:p></span></pre>
<pre><span style=3D"color:black">removing things from my BSP that were put =
there by yocto-bsp?<o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">-- <o:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"color:black">Ciao,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Paul D. DeRocco<o:p></o:p><=
/span></pre>
<pre><span style=3D"color:black">Paul&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mailto:<a href=3D"http=
s://lists.yoctoproject.org/listinfo/yocto">pderocco at ix.netcom.com</a> <o=
:p></o:p></span></pre>
<pre><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<p class=3D"MsoNormal">&#8220;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#0070C0">Mark Clark<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Embedded Software Engi=
neer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Embedded Software, Ced=
ar Park, TX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Gi=
ll Sans MT&quot;,&quot;sans-serif&quot;;color:#1F497D"><img border=3D"0" wi=
dth=3D"245" height=3D"24" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01=
D172D3.CF257720" alt=3D"Description: Description: Description: Description:=
 National Oilwell Varco Logo Color CMYK.jpg"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;Wellbore Technologies =
&#8211; Dynamic Drilling Solutions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:#1F497D">Global Software Engineering<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Office: (512) 340-5435=
</span><span style=3D"color:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Mobile: (512) 736-9396=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Times New Roman&=
quot;,&quot;serif&quot;;color:#0070C0">&#8220;One Team &#8211; Infinite Sol=
utions&#8221;</span></i><span style=3D"font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;;color:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_--

--_004_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=9171;
	creation-date="Mon, 29 Feb 2016 15:30:24 GMT";
	modification-date="Mon, 29 Feb 2016 15:30:24 GMT"
Content-ID: <image001.png@01D172D3.CF257720>
Content-Transfer-Encoding: base64

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

--_004_67C2F67D576953459C2BA669CA8B7E1DE91DF426SRVUSAMBX10novc_--
