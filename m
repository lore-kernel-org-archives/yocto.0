Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F983E014F5
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 23:28:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 May 2013 23:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,681,1363158000"; 
	d="scan'208,217";a="338130930"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 15 May 2013 23:28:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.204]) with mapi id
	14.01.0355.002; Wed, 15 May 2013 23:28:00 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Thread-Topic: [yocto] building the BitBake manual
Thread-Index: Ac5R6trk75lK0LEeQdumZwDDy2QJUAARGF6AAAwxbOA=
Date: Thu, 16 May 2013 06:28:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF393F1@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF393A2@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-rnDcEMdc3i49qdqw73T+4qvx_OrmgRPVuKzHOWUcg71A@mail.gmail.com>
In-Reply-To: <CA+gsK-rnDcEMdc3i49qdqw73T+4qvx_OrmgRPVuKzHOWUcg71A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building the BitBake manual
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
X-List-Received-Date: Thu, 16 May 2013 06:28:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF393F1ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF393F1ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Rudolf

From: Rudolf Streif [mailto:rstreif@linuxfoundation.org]
Sent: Wednesday, May 15, 2013 10:17 PM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] building the BitBake manual

Scott,

On FC18 these packages are also called xmlto and dblatex.

xmlto has a dependency on flex which the package manager should install aut=
omatically.
dblatex has dependencies on texlive-*.

:rjs


On Wed, May 15, 2013 at 9:07 PM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
When running "make" on the BB docs, my Ubuntu system was missing two packag=
es: dblatex, xmlto.  Currently, the "Required Packages for the Host Develop=
ment System" section in the YP Reference Manual does not list these package=
s as part of the "Documentation" packages.  I am thinking we should add the=
se in for Ubuntu.  Can anyone tell me what the packages would be for Fedora=
, OpenSUSE, and CentOS?  Are they named the same?

Thanks,
Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702<tel:503.712.2702>
503.341.0418<tel:503.341.0418> (cell)

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto





--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF393F1ORSMSX101amrcor_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks Rudolf<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Rudolf S=
treif [mailto:rstreif@linuxfoundation.org]
<br>
<b>Sent:</b> Wednesday, May 15, 2013 10:17 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] building the BitBake manual<o:p></o:p></span></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Scott,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">On FC18 these packages are also called xmlto and dbl=
atex.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">xmlto has a dependency on flex which the package man=
ager should install automatically.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">dblatex has dependencies on texlive-*.<o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">:rjs<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, May 15, 2013 at 9:07 PM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">When running &quot;make&quot; on the BB docs, my Ubu=
ntu system was missing two packages: dblatex, xmlto. &nbsp;Currently, the &=
quot;Required Packages for the Host Development System&quot; section in the=
 YP Reference Manual does not list these packages as part of
 the &quot;Documentation&quot; packages. &nbsp;I am thinking we should add =
these in for Ubuntu. &nbsp;Can anyone tell me what the packages would be fo=
r Fedora, OpenSUSE, and CentOS? &nbsp;Are they named the same?<br>
<br>
Thanks,<br>
Scott<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702">503.712.2702</a><br>
<a href=3D"tel:503.341.0418">503.341.0418</a>&nbsp;(cell)<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF393F1ORSMSX101amrcor_--
