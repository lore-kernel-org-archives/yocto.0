Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6696E006B1
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 14:06:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jul 2012 14:06:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="189361842"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jul 2012 14:06:32 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 6 Jul 2012 14:06:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.35]) with mapi id
	14.01.0355.002; Fri, 6 Jul 2012 14:06:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Documentation improvement
Thread-Index: AQHNW6lo/VG/ZuylI0ixz7HwAc1yi5ccvjPg
Date: Fri, 6 Jul 2012 21:06:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176C@ORSMSX101.amr.corp.intel.com>
References: <4FF73569.4000105@gmail.com>
In-Reply-To: <4FF73569.4000105@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Documentation improvement
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
X-List-Received-Date: Fri, 06 Jul 2012 21:06:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176CORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176CORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim,

I am looking at that section in the BSP Guide and it is actually out of dat=
e regarding the 1.2.10 section.  In the section it lists the linux-yocto_3.=
0.bbappend file (which is probably lagging as it should be 3.2).  Anyway, t=
he listing uses KERNEL_FEATURES and I believe that KBRANCH is now used.  I =
am going to work on this section and get it up to speed and then address th=
e issue you originally brought up, which is getting the best description fo=
r config fragments inside the dev manual.

ScottR

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of jfabernathy
Sent: Friday, July 06, 2012 11:59 AM
To: yocto@yoctoproject.org
Subject: [yocto] Documentation improvement

I was looking at the Yocto Development Manual (Latest), section 4.6.2. Crea=
ting Config Fragments.  I was confused about the file statement and the nam=
ing of the directory to locate the fragment file until I found a similar di=
scussion in the BSP Guide (lastest) section 1.2.10. Linux Kernel Configurat=
ion.

The section there is much more understandable.  I think we need to modify t=
he development manual or have it point to the BSP manual.  The text from th=
ere (below) I think is better.  I still think it's confusing about the nami=
ng of the subdirectory where the myconfig goes. Maybe a complete example wo=
uld be good.
For example, suppose you had a set of configuration options in a file calle=
d myconfig. If you put that file inside a directory named linux-yocto and t=
hen added a SRC_URI statement such as the following to the append file, tho=
se configuration options will be picked up and applied when the kernel is b=
uilt.

     SRC_URI +=3D "file://myconfig"<file:///\\myconfig>



As mentioned earlier, you can group related configurations into multiple fi=
les and name them all in the SRC_URI statement as well. For example, you co=
uld group separate configurations specifically for Ethernet and graphics in=
to their own files and add those by using a SRC_URI statement like the foll=
owing in your append file:

     SRC_URI +=3D "file://myconfig \<file:///\\myconfig\file:\eth.cfg\file:=
\gfx.cfg>

            file://eth.cfg \<file:///\\myconfig\file:\eth.cfg\file:\gfx.cfg=
>

            file://gfx.cfg"<file:///\\myconfig\file:\eth.cfg\file:\gfx.cfg>



--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176CORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jim,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am looking at that sect=
ion in the BSP Guide and it is actually out of date regarding the 1.2.10 se=
ction.&nbsp; In the section it lists the linux-yocto_3.0.bbappend
 file (which is probably lagging as it should be 3.2).&nbsp; Anyway, the li=
sting uses KERNEL_FEATURES and I believe that KBRANCH is now used.&nbsp; I =
am going to work on this section and get it up to speed and then address th=
e issue you originally brought up, which is
 getting the best description for config fragments inside the dev manual. <=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">ScottR<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> yocto-bounces@yoctoproject.org [mailto:yocto-boun=
ces@yoctoproject.org]
<b>On Behalf Of </b>jfabernathy<br>
<b>Sent:</b> Friday, July 06, 2012 11:59 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Documentation improvement<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I was looking at the =
Yocto Development Manual (Latest), section 4.6.2.&nbsp;Creating Config Frag=
ments.&nbsp; I was confused about the file statement and the naming of the =
directory to locate the fragment file until I
 found a similar discussion in the BSP Guide (lastest) section 1.2.10.&nbsp=
;Linux Kernel Configuration.
<br>
<br>
The section there is much more understandable.&nbsp; I think we need to mod=
ify the development manual or have it point to the BSP manual.&nbsp; The te=
xt from there (below) I think is better.&nbsp; I still think it's confusing=
 about the naming of the subdirectory where the
 myconfig goes. Maybe a complete example would be good.<o:p></o:p></p>
<p class=3D"MsoNormal">For example, suppose you had a set of configuration =
options in a file called
<code><span style=3D"font-size:10.0pt">myconfig</span></code>. If you put t=
hat file inside a directory named
<code><span style=3D"font-size:10.0pt">linux-yocto</span></code> and then a=
dded a <code>
<span style=3D"font-size:10.0pt">SRC_URI</span></code> statement such as th=
e following to the append file, those configuration options will be picked =
up and applied when the kernel is built.
<o:p></o:p></p>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SRC_URI &#43;=3D <a href=3D"file:///\\my=
config">&quot;file://myconfig&quot;</a><o:p></o:p></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; <o:p></o:p></pre>
<p>As mentioned earlier, you can group related configurations into multiple=
 files and name them all in the
<code><span style=3D"font-size:10.0pt">SRC_URI</span></code> statement as w=
ell. For example, you could group separate configurations specifically for =
Ethernet and graphics into their own files and add those by using a
<code><span style=3D"font-size:10.0pt">SRC_URI</span></code> statement like=
 the following in your append file:
<o:p></o:p></p>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SRC_URI &#43;=3D <a href=3D"file:///\\my=
config\file:\eth.cfg\file:\gfx.cfg">&quot;file://myconfig \<o:p></o:p></a><=
/pre>
<pre><span class=3D"MsoHyperlink"><a href=3D"file:///\\myconfig\file:\eth.c=
fg\file:\gfx.cfg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; file://eth.cfg \<o:p></o:p></a></span></pre>
<pre><span class=3D"MsoHyperlink"><a href=3D"file:///\\myconfig\file:\eth.c=
fg\file:\gfx.cfg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; file://gfx.cfg&quot;</a></span><o:p></o:p></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; <o:p></o:p></pre>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176CORSMSX101amrcor_--
