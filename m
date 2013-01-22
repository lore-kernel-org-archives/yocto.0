Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BF51E01477
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 18:05:39 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Jan 2013 18:05:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,510,1355126400"; 
	d="scan'208,217";a="193746193"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Jan 2013 18:05:37 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.62]) with mapi id
	14.01.0355.002; Mon, 21 Jan 2013 18:05:36 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] YP Linux Kernel Development Manual
Thread-Index: Ac3yq7zzE9No7Zv/RVyHS3zSrh+ZwQFx2xAAAAuVmkA=
Date: Tue, 22 Jan 2013 02:05:35 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: FW: YP Linux Kernel Development Manual
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
X-List-Received-Date: Tue, 22 Jan 2013 02:05:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am reposting this to the discussion list and copying Darren Hart.

Scott

From: Eddy Lai GMail [mailto:eddy.lai.tw@gmail.com]
Sent: Monday, January 21, 2013 3:36 PM
To: Rifenbark, Scott M
Subject: Re: [yocto] YP Linux Kernel Development Manual

hi

hi, I follow the kernel development manual "2.5. Incorporating Out-of-Tree =
Modules",
copy the "hello-mod_0.1.bb" and "files" folder into my taget layer "meta-in=
tel/meta-jasperforest/recipe-kernel", then add "MACHINE_EXTRA_ RDEPENDS +=
=3D "kernel-module-hello" in the conf/local.conf
after build and boot, there's no "hello.ko" found in the binary image
also there's no hello.ko in the "tmp/work/..." folder

Eddy

All,



There is a new YP manual under development.  It is a development manual for=
 Linux kernels in the YP.  Darren Hart is the original author of the manual=
 as you probably know.  It is still being worked on but it is in HTML form =
and now part of the yocto-docs/master branch.  It is published at http://ww=
w.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html.  Feel free to acces=
s it and comment.



Thanks,

Scott



Scott Rifenbark

Intel Corporation

Yocto Project Documentation

503.712.2702

503.341.0418 (cell)





_______________________________________________

yocto mailing list

yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

https://lists.yoctoproject.org/listinfo/yocto


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592ORSMSX101amrcor_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am reposting this to th=
e discussion list and copying Darren Hart.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> Eddy Lai GMail [mailto:eddy.lai.tw@gmail.com]
<br>
<b>Sent:</b> Monday, January 21, 2013 3:36 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Subject:</b> Re: [yocto] YP Linux Kernel Development Manual<o:p></o:p></=
span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">hi<br>
<br>
hi, I follow the kernel development manual &quot;2.5. Incorporating Out-of-=
Tree Modules&quot;,
<br>
copy the &quot;hello-mod_0.1.bb&quot; and &quot;files&quot; folder into my =
taget layer &quot;meta-intel/meta-jasperforest/recipe-kernel&quot;, then ad=
d &quot;MACHINE_EXTRA_ RDEPENDS &#43;=3D &quot;kernel-module-hello&quot; in=
 the conf/local.conf<br>
after build and boot, there's no &quot;hello.ko&quot; found in the binary i=
mage<br>
also there's no hello.ko in the &quot;tmp/work/...&quot; folder<br>
<br>
Eddy<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>All, <o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>There is a new YP manual under development.&nbsp; It is a development =
manual for Linux kernels in the YP.&nbsp; Darren Hart is the original autho=
r of the manual as you probably know.&nbsp; It is still being worked on but=
 it is in HTML form and now part of the yocto-docs/master branch.&nbsp; It =
is published at <a href=3D"http://www.yoctoproject.org/docs/1.4/kernel-dev/=
kernel-dev.html">http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev=
.html</a>.&nbsp; Feel free to access it and comment.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Thanks, <o:p></o:p></pre>
<pre>Scott<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Scott Rifenbark<o:p></o:p></pre>
<pre>Intel Corporation<o:p></o:p></pre>
<pre>Yocto Project Documentation<o:p></o:p></pre>
<pre>503.712.2702<o:p></o:p></pre>
<pre>503.341.0418 (cell)<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>yocto mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><o=
:p></o:p></pre>
<pre><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592ORSMSX101amrcor_--
