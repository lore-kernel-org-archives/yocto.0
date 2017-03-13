Return-Path: <andrea.laini@claypaky.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79EACE00A81; Mon, 13 Mar 2017 07:44:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [37.9.225.26 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0251]
X-Greylist: delayed 458 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Mar 2017 07:44:03 PDT
Received: from claypaky.vps.sintattica.it (vm1639.cs16.seeweb.it [37.9.225.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5AB0E00AD1
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 07:44:03 -0700 (PDT)
X-No-Relay: not in my network
Received: from Server109.claypaky.local
	(host219-54-static.80-94-b.business.telecomitalia.it [94.80.54.219])
	by claypaky.vps.sintattica.it (Postfix) with ESMTPA id 21A782DBFD
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 15:36:24 +0100 (CET)
Received: from SERVER109.claypaky.local (10.0.0.109) by
	Server109.claypaky.local (10.0.0.109) with Microsoft SMTP Server (TLS)
	id 15.0.1156.6; Mon, 13 Mar 2017 15:36:22 +0100
Received: from SERVER109.claypaky.local ([10.0.0.109]) by
	Server109.claypaky.local ([10.0.0.109]) with mapi id 15.00.1156.000;
	Mon, 13 Mar 2017 15:36:22 +0100
From: Andrea Laini <andrea.laini@claypaky.it>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Autoload kernel module works only once
Thread-Index: AdKcBy5200bqrAidQy6sCTYljLmjpQ==
Date: Mon, 13 Mar 2017 14:36:21 +0000
Message-ID: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.1.21]
MIME-Version: 1.0
Subject: Autoload kernel module works only once
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
X-List-Received-Date: Mon, 13 Mar 2017 14:44:13 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_9e0050bb9fd3419fa979364b1359b490Server109claypakylocal_"

--_000_9e0050bb9fd3419fa979364b1359b490Server109claypakylocal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I'm getting some errors after building my Linux distro with the use of KERN=
EL_MODULE_AUTOLOAD to allow autoloading 2 of my custom out-of-tree device a=
t boot time. We've a Poky 1.7 version.

So, before building the new image with the Yocto keyword KERNEL_MODULE_AUTO=
LOAD, I was able to load and open (and, obviously, use) my devices simply b=
y calling 'modprobe mydevice' after logging in. Restarting the board, every=
thing was still working well.
Since I've rebuild a new image enabling module autoload at boot time, modul=
es are always loaded, but I'm able to open (and use) them only really first=
 time I switched on the board after downloading new image. After the first =
reboot, LKMs are still loaded (calling 'lsmod' show them) but I can't open =
them, neither from my C program nor reading/writing them from '/dev/mydevic=
e'.

To me it sound a very strange behavior.

Hope anyone can help,
Many thanks

Andrea


Andrea Laini

Email: andrea.laini@claypaky.it<mailto:andrea.laini@claypaky.it>
_________________________________
Clay Paky S.p.A.
AN OSRAM BUSINESS
Via Pastrengo, 3/b - 24068 Seriate (BG) - ITALY
Phone: +39 - 035.654.311 - Fax: +39 - 035.30.18.76
Web: www.claypaky.it<http://www.claypaky.it/>
_________________________________
Read our Disclaimer @  www.claypaky.it/disclaimer<http://www.claypaky.it/di=
sclaimer/index.html>



--_000_9e0050bb9fd3419fa979364b1359b490Server109claypakylocal_
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
span.StileMessaggioDiPostaElettronica17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"IT" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi everybody,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m getting some errors a=
fter building my Linux distro with the use of KERNEL_MODULE_AUTOLOAD to all=
ow autoloading 2 of my custom out-of-tree device at boot time. We&#8217;ve =
a Poky 1.7 version.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So, before building the new ima=
ge with the Yocto keyword KERNEL_MODULE_AUTOLOAD, I was able to load and op=
en (and, obviously, use) my devices simply by calling &#8216;modprobe mydev=
ice&#8217; after logging in. Restarting the board,
 everything was still working well.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Since I&#8217;ve rebuild a new =
image enabling module autoload at boot time, modules are always loaded, but=
 I&#8217;m able to open (and use) them only really first time I switched on=
 the board after downloading new image. After the
 first reboot, LKMs are still loaded (calling &#8216;lsmod&#8217; show them=
) but I can&#8217;t open them, neither from my C program nor reading/writin=
g them from &#8216;/dev/mydevice&#8217;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To me it sound a very strange b=
ehavior.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hope anyone can help,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Many thanks<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Andrea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:106%;font-family:&quo=
t;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT"><br>
<b>Andrea Laini<br>
<br>
</b></span><span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;f=
ont-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT=
">Email:
</span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-fareast-language:IT"><a href=3D"mailto=
:andrea.laini@claypaky.it" title=3D"andrea.laini@claypaky.it"><span lang=3D=
"EN-US" style=3D"color:black;text-decoration:none">andrea.laini@claypaky.it=
</span></a></span><span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height=
:106%;font-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-lang=
uage:IT"><br>
</span><b><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-=
serif;color:#FFCC00;mso-fareast-language:IT">______________________________=
___</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:10=
6%;font-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-languag=
e:IT"><br>
<b>Clay Paky S.p.A.<br>
</b></span><span lang=3D"EN-US" style=3D"font-size:7.5pt;line-height:106%;f=
ont-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT=
">AN OSRAM BUSINESS
<br>
</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-=
family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT">Vi=
a Pastrengo, 3/b - 24068 Seriate (BG) - ITALY<br>
Phone: &#43;39 - 035.654.311 - Fax: &#43;39 - 035.30.18.76<br>
Web: </span><span style=3D"font-size:8.0pt;line-height:106%;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT"><a href=3D"h=
ttp://www.claypaky.it/" title=3D"Clay Paky Home Page"><span lang=3D"EN-US" =
style=3D"color:black;text-decoration:none">www.claypaky.it</span></a></span=
><span lang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-family=
:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT"><br>
</span><b><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-=
serif;color:#FFCC00;mso-fareast-language:IT">______________________________=
___</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:10=
6%;font-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-languag=
e:IT"><br>
</span><span style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;A=
rial&quot;,sans-serif;color:black;mso-fareast-language:IT"><a href=3D"http:=
//www.claypaky.it/disclaimer/index.html" title=3D"Read our Disclaimer @  ww=
w.claypaky.it/disclaimer"><span lang=3D"EN-US" style=3D"font-size:8.0pt;lin=
e-height:106%;color:black;text-decoration:none">Read
 our Disclaimer @&nbsp; www.claypaky.it/disclaimer</span></a></span><span l=
ang=3D"EN-US" style=3D"font-size:8.0pt;line-height:106%;font-family:&quot;A=
rial&quot;,sans-serif;color:black;mso-fareast-language:IT"><br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;line-height:106%;font=
-family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:IT"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_9e0050bb9fd3419fa979364b1359b490Server109claypakylocal_--
