Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE97E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 13:02:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jul 2012 13:02:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="173083801"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2012 13:02:47 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Jul 2012 13:02:47 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.101]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 13:02:47 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: jfabernathy <jfabernathy@gmail.com>
Thread-Topic: [yocto] prerequisite tools for  making documentation
Thread-Index: AQHNUiNaFxq6gUJ8aE+tg/YhTtPoQJcX7hFQgAB+g4D//5xwkA==
Date: Tue, 3 Jul 2012 20:02:46 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAF9@ORSMSX101.amr.corp.intel.com>
References: <4FE73AF6.2060008@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
	<4FF340B3.6090106@gmail.com>
In-Reply-To: <4FF340B3.6090106@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prerequisite tools for making documentation
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
X-List-Received-Date: Tue, 03 Jul 2012 20:02:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAF9ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAF9ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For Ubuntu 10.04 I installed dblatex and that installed everything in Jim's=
 list from texlive down (inclusive).  I was able to make the BitBake docume=
nts after installing dblatex.

Scott

From: jfabernathy [mailto:jfabernathy@gmail.com]
Sent: Tuesday, July 03, 2012 11:58 AM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] prerequisite tools for making documentation

On 07/03/2012 02:25 PM, Rifenbark, Scott M wrote:

Jim,



Do you have a list of what you had to install?  I can add this to the QS "P=
ackages" section.



Scott
Scott,

I had to go thru the apt log for the day I posted this issues.  Below are t=
he packages.  I imagine that texlive brought in the last 8 or so.

Jim A

Selecting previously unselected package libxml2-utils.

Selecting previously unselected package docbook-xsl.

Selecting previously unselected package xmlto.

Selecting previously unselected package xmltex.

Selecting previously unselected package texlive.
Selecting previously unselected package texlive-bibtex-extra.
Selecting previously unselected package preview-latex-style.
Selecting previously unselected package texlive-pictures.
Selecting previously unselected package texlive-latex-extra.
Selecting previously unselected package texlive-math-extra.
Selecting previously unselected package dblatex.
Selecting previously unselected package texlive-latex-extra-doc.
Selecting previously unselected package texlive-pictures-doc.



-----Original Message----- From: yocto-bounces@yoctoproject.org<mailto:yoct=
o-bounces@yoctoproject.org> [mailto:yocto-bounces@yoctoproject.org] On Beha=
lf Of jfabernathy Sent: Sunday, June 24, 2012 9:06 AM To: yocto@yoctoprojec=
t.org<mailto:yocto@yoctoproject.org> Subject: [yocto] prerequisite tools fo=
r making documentation I had a need to look at the bitbake manual in the po=
ky/bitbake/doc/manual directory and tried to make pdf. I had all the prereq=
uisites listed in the QS guide. However, I found the make failed due to a n=
umber of xml related tools being missing. I installed those and got the pdf=
 manual generated. Should we add those xml tools to the prerequisites? BTW,=
 I'm using denzil branch and referring to the QS guide 1.2. Jim A _________=
______________________________________ yocto mailing list yocto@yoctoprojec=
t.org<mailto:yocto@yoctoproject.org> https://lists.yoctoproject.org/listinf=
o/yocto


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAF9ORSMSX101amrcor_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">For Ubuntu 10.04 I instal=
led dblatex and that installed everything in Jim&#8217;s list from texlive =
down (inclusive).&nbsp; I was able to make the BitBake documents after
 installing dblatex.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> jfabernathy [mailto:jfabernathy@gmail.com]
<br>
<b>Sent:</b> Tuesday, July 03, 2012 11:58 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] prerequisite tools for making documentation<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 07/03/2012 02:25 PM, Rifenbark, Scott M wrote:<o:=
p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>Jim, <o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Do you have a list of what you had to install?&nbsp; I can add this to=
 the QS &quot;Packages&quot; section.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Scott<o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><b>Scott,<br>
<br>
I had to go thru the apt log for the day I posted this issues.&nbsp; Below =
are the packages.&nbsp; I imagine that texlive brought in the last 8 or so.=
<br>
<br>
Jim A<br>
<br>
Selecting previously unselected package libxml2-utils. <br>
<br>
Selecting previously unselected package docbook-xsl. <br>
<br>
Selecting previously unselected package xmlto. <br>
<br>
Selecting previously unselected package xmltex. <br>
<br>
Selecting previously unselected package texlive. <br>
Selecting previously unselected package texlive-bibtex-extra. <br>
Selecting previously unselected package preview-latex-style. <br>
Selecting previously unselected package texlive-pictures. <br>
Selecting previously unselected package texlive-latex-extra. <br>
Selecting previously unselected package texlive-math-extra. <br>
Selecting previously unselected package dblatex. <br>
Selecting previously unselected package texlive-latex-extra-doc. <br>
Selecting previously unselected package texlive-pictures-doc. </b><br>
<br>
<br>
<br>
-----Original Message----- From: <a href=3D"mailto:yocto-bounces@yoctoproje=
ct.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>] On Behalf Of jfaberna=
thy Sent: Sunday, June 24, 2012 9:06 AM To:
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> Subjec=
t: [yocto] prerequisite tools for making documentation I had a need to look=
 at the bitbake manual in the poky/bitbake/doc/manual directory and tried t=
o make pdf. I had all the prerequisites
 listed in the QS guide. However, I found the make failed due to a number o=
f xml related tools being missing. I installed those and got the pdf manual=
 generated. Should we add those xml tools to the prerequisites? BTW, I'm us=
ing denzil branch and referring
 to the QS guide 1.2. Jim A _______________________________________________=
 yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> <a hre=
f=3D"https://lists.yoctoproject.org/listinfo/yocto">
https://lists.yoctoproject.org/listinfo/yocto</a> <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FAF9ORSMSX101amrcor_--
