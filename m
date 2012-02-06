Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B586E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 14:34:21 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Feb 2012 14:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="103926405"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 06 Feb 2012 14:33:47 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Feb 2012 14:33:44 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.224]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.227]) with mapi id
	14.01.0355.002; Mon, 6 Feb 2012 14:33:44 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: rafayocto rafayocto <rafayocto@gmail.com>
Thread-Topic: Question about Yocto
Thread-Index: AQHM5OYT31QGKk94eE+5KAkbLjWun5YwcCDQ
Date: Mon, 6 Feb 2012 22:33:43 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C374CB2C5@ORSMSX101.amr.corp.intel.com>
References: <CABpbgJzNdhpYx+ELeZ7-ziLr=P8G1feN7EXS12HekvuxY4X2Eg@mail.gmail.com>
In-Reply-To: <CABpbgJzNdhpYx+ELeZ7-ziLr=P8G1feN7EXS12HekvuxY4X2Eg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about Yocto
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
X-List-Received-Date: Mon, 06 Feb 2012 22:34:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C374CB2C5ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C374CB2C5ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Tal,



First, thanks for checking and considering using Yocto Project.  Please sen=
d your future questions to yoct@yoctoproject.org<mailto:yoct@yoctoproject.o=
rg> mailing list, that's the general mailing list for all Yocto project rel=
ated issue/questions.



As to your problem of hob download about 5.5GB of data. Keep in mind, hob i=
s just a UI front end to bitbake.  And bitbake relies on meta data to build=
 out things and download the sources, etc.  I've checked with our kernel gu=
y, according to him, the upstream kernel source is about 2.2GB and on top o=
f that we also download the git history data, etc.  So after running the bu=
ild, 5.5GB seems in line with what should be expected.



Thanks,

Jessica



From: rafayocto rafayocto [mailto:rafayocto@gmail.com]
Sent: Monday, February 06, 2012 7:44 AM
To: Zhang, Jessica
Subject: Question about Yocto



Hello Jessica,

My name is Tal and me and my associates were in the Linux conference at Pra=
gue Oct 2011.

we saw your lecture about the hob and about Yocto and were really moved by =
the idea of building our own linux distribution.

so we downloaded the Edison release. installed the Env, installed the eclip=
se plugin and started building our first kernel.

we thought that we will use the Hob and give it a small run with qemux86 an=
d build the minimal core default settings, and.... Bake.



the hob downloaded about 5.5GB of data to our hard disk, this seems a bit t=
o much for a minimal kernel, vanilla kernel is less then 1GB and it is way =
more then a minimal core.



so we thought we did something wrong, uninstalled and re-installed using he=
 Yocto tutorials on YouTube and got the same result.

when we thought that  we might need to ask the experts we found that there =
is no forum( what a shame, that would have been help-full) instead there is=
 a mailing list where most people complain and no one answered us.



please contact us and let us know if we did something wrong, is it normal(t=
o download 5.5GB), and what should we do next

Thanks

Tal




--_000_C6510F6D410BB64A8C15398EDC6B847C374CB2C5ORSMSX101amrcor_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Tal,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">First, thanks for checkin=
g and considering using Yocto Project.&nbsp; Please send your future questi=
ons to
<a href=3D"mailto:yoct@yoctoproject.org">yoct@yoctoproject.org</a> mailing =
list, that&#8217;s the general mailing list for all Yocto project related i=
ssue/questions.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">As to your problem of hob=
 download about 5.5GB of data. Keep in mind, hob is just a UI front end to =
bitbake.&nbsp; And bitbake relies on meta data to build out things
 and download the sources, etc.&nbsp; I&#8217;ve checked with our kernel gu=
y, according to him, the upstream kernel source is about 2.2GB and on top o=
f that we also download the git history data, etc.&nbsp; So after running t=
he build, 5.5GB seems in line with what should be
 expected.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> rafayoct=
o rafayocto [mailto:rafayocto@gmail.com]
<br>
<b>Sent:</b> Monday, February 06, 2012 7:44 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Subject:</b> Question about Yocto<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hello Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">My name is Tal and me and my&nbsp;associates were in=
 the&nbsp;Linux&nbsp;conference at Prague Oct 2011.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">we saw your lecture about the hob and about Yocto an=
d were really moved by the idea of building our own linux&nbsp;distribution=
.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">so we downloaded the Edison release. installed the E=
nv, installed the eclipse plugin and started building our first kernel.<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">we thought that we will use the Hob and give it a sm=
all run with qemux86 and build the minimal core default settings, and.... B=
ake.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">the hob downloaded about 5.5GB of data to our hard d=
isk, this seems a bit to much for a minimal kernel,&nbsp;vanilla&nbsp;kerne=
l is less then 1GB and it is way more then a minimal core.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">so we thought we did something wrong, uninstalled an=
d&nbsp;re-installed&nbsp;using he Yocto tutorials on&nbsp;YouTube&nbsp;and =
got the same result.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">when we&nbsp;thought&nbsp;that &nbsp;we might need t=
o ask the experts we found that there is no forum( what a shame, that would=
 have been&nbsp;help-full) instead there is a mailing list where most peopl=
e complain and no one answered us.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">please&nbsp;contact&nbsp;us and let us know if we di=
d something wrong, is it normal(to download 5.5GB), and what should we do n=
ext<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Tal<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C374CB2C5ORSMSX101amrcor_--
