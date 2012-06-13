Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509AFE01423
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 18:38:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Jun 2012 18:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="111412754"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Jun 2012 18:38:18 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 12 Jun 2012 18:38:17 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.56]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.231]) with mapi id
	14.01.0355.002; Wed, 13 Jun 2012 09:37:27 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>, Yocto Discussion Mailing List
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to build 32-bit x86 host 32-bit powerpc target
	cross	compiler, on a 64-bit x86 host
Thread-Index: AQHNSK4rAefJ4TWAJEWOFRWsUPihBJb3eLbw
Date: Wed, 13 Jun 2012 01:37:26 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FDED523@SHSMSX102.ccr.corp.intel.com>
References: <C53D7BB1-6029-4707-9AE7-BB1769900F98@gmail.com>
In-Reply-To: <C53D7BB1-6029-4707-9AE7-BB1769900F98@gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: How to build 32-bit x86 host 32-bit powerpc target cross	compiler, on a 64-bit x86 host
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
X-List-Received-Date: Wed, 13 Jun 2012 01:38:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_857BE142E5399E46B20FD45B9DB8A7BC0FDED523SHSMSX102ccrcor_"

--_000_857BE142E5399E46B20FD45B9DB8A7BC0FDED523SHSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Please set SDKMACHINE to "i686" in your local.conf when you building the cr=
oss canadian compiler.

Best Regards,
Lianhao

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Elvis Dowson
Sent: Tuesday, June 12, 2012 11:15 PM
To: Yocto Discussion Mailing List
Subject: [yocto] How to build 32-bit x86 host 32-bit powerpc target cross c=
ompiler, on a 64-bit x86 host

Hi,
      I am running Ubuntu 12.04 LTS 64-bit. I have a colleague who doesn't =
have a 64-bit linux installation. What I'd like to be able to do is to buil=
d a 32-bit host 32-bit powerpc target cross compiler, on my 64-bit machine.

How can I configure Yocto to do this?

At the moment, I've already generated a meta-toolchain SDK, which installs =
into :

/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/ppc440-poky-li=
nux/

How can I generate a the 32-bit hosted cross compiler on my 64-bit yocto bu=
ild machine? I really didn't quite understand the term canadian-cross compi=
ler, until now!! ;-) Now I know!!

Best regards,

Elvis Dowson

--_000_857BE142E5399E46B20FD45B9DB8A7BC0FDED523SHSMSX102ccrcor_
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
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Monaco;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.apple-style-span
	{mso-style-name:apple-style-span;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1F497D">Please set SDKMACHINE to &#8220;i686&#8221; in your loca=
l.conf when you building the cross canadian compiler.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1F497D">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1F497D">Lianhao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@=
yoctoproject.org]
<b>On Behalf Of </b>Elvis Dowson<br>
<b>Sent:</b> Tuesday, June 12, 2012 11:15 PM<br>
<b>To:</b> Yocto Discussion Mailing List<br>
<b>Subject:</b> [yocto] How to build 32-bit x86 host 32-bit powerpc target =
cross compiler, on a 64-bit x86 host<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &nbsp; &nbsp; I am runni=
ng Ubuntu 12.04 LTS 64-bit. I have a colleague who doesn't have a 64-bit li=
nux installation. What I'd like to be able to do is to build a 32-bit host =
32-bit powerpc target cross compiler, on my 64-bit
 machine.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How can I configure Yocto to do=
 this?&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At the moment, I've already gen=
erated a meta-toolchain SDK, which installs into :<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Monaco&quot;,&quot;serif&quot;">/opt/poky/1.2&#43;snapshot/sysr=
oots/x86_64-pokysdk-linux/usr/bin/ppc440-poky-linux/<o:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Monaco&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-size:13.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">How can I generate a the 32-bit hosted cross compiler on my 64-b=
it yocto build machine? I really didn't quite understand the
 term canadian-cross compiler, until now!! ;-) Now I know!!&nbsp;</span></s=
pan><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Monaco&=
quot;,&quot;serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Monaco&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-size:13.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">Best regards,</span></span><span lang=3D"EN-US" style=3D"font-si=
ze:7.5pt;font-family:&quot;Monaco&quot;,&quot;serif&quot;"><o:p></o:p></spa=
n></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-f=
amily:&quot;Monaco&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-size:13.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">Elvis Dowson</span></span><span lang=3D"EN-US" style=3D"font-siz=
e:7.5pt;font-family:&quot;Monaco&quot;,&quot;serif&quot;"><o:p></o:p></span=
></p>
</div>
</div>
</div>
</body>
</html>

--_000_857BE142E5399E46B20FD45B9DB8A7BC0FDED523SHSMSX102ccrcor_--
