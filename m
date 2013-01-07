Return-Path: <christopher.a.thornburg@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45630E0146A
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 13:48:36 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Jan 2013 13:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; 
	d="scan'208,217";a="188630435"
Received: from fmsmsx108.amr.corp.intel.com ([10.19.9.228])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jan 2013 13:48:35 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.19.17.7) by
	FMSMSX108.amr.corp.intel.com (10.19.9.228) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 7 Jan 2013 13:48:34 -0800
Received: from fmsmsx102.amr.corp.intel.com ([169.254.2.26]) by
	FMSMSX153.amr.corp.intel.com ([169.254.11.130]) with mapi id
	14.01.0355.002; Mon, 7 Jan 2013 13:48:34 -0800
From: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Host authenticity failures
Thread-Index: Ac3pKzQZM1BzWyyVTNGjOLWRV4i1fACBzbsAAHuSUCA=
Date: Mon, 7 Jan 2013 21:48:32 +0000
Message-ID: <752F65977A748344A01D69BF22DCDBAE25B96D9C@FMSMSX102.amr.corp.intel.com>
References: <752F65977A748344A01D69BF22DCDBAE25B95894@FMSMSX102.amr.corp.intel.com>
	<CD0CD4BB.1C4D8%david.c.stewart@intel.com>
In-Reply-To: <CD0CD4BB.1C4D8%david.c.stewart@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: Host authenticity failures
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
X-List-Received-Date: Mon, 07 Jan 2013 21:48:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_752F65977A748344A01D69BF22DCDBAE25B96D9CFMSMSX102amrcor_"

--_000_752F65977A748344A01D69BF22DCDBAE25B96D9CFMSMSX102amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes...this is still happening. :(

From: Stewart, David C
Sent: Friday, January 04, 2013 7:50 PM
To: Thornburg, Christopher A; yocto@yoctoproject.org
Subject: Re: [yocto] Host authenticity failures

Is this still a problem?

From: <Thornburg>, Christopher A <christopher.a.thornburg@intel.com<mailto:=
christopher.a.thornburg@intel.com>>
Date: Wednesday, January 2, 2013 2:48 PM
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Host authenticity failures

I've started getting the following error from bitbake when it's trying to a=
ccess my git server:

The authenticity of host '[<githost>]:<port>([<IP>]:<port>)' can't be estab=
lished.
DSA key fingerprint is <blah>

I understand this error means that the server's key has probably changed, a=
nd I understand in general how to deal with this via SSH config. When I man=
ually ssh'd to the server the first time after receiving the error, I got t=
he same message, as expected. I entered "yes" and tried again to verify tha=
t the error went away. It did. I think ran bitbake again and got the same e=
rror. I changed my ~/.ssh/ssh_config file to disable StrictHostKeyChecking =
and still get the error.

Is bitbake somehow using different known_hosts and ssh_config files from th=
e ones I use for interactive logins? Other ideas on how to resolve this?


--_000_752F65977A748344A01D69BF22DCDBAE25B96D9CFMSMSX102amrcor_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Yes&#8230;this is stil=
l happening. </span>
<span style=3D"font-family:Wingdings;color:#1F497D">L</span><span style=3D"=
color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Stewart,=
 David C
<br>
<b>Sent:</b> Friday, January 04, 2013 7:50 PM<br>
<b>To:</b> Thornburg, Christopher A; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Host authenticity failures<o:p></o:p></span></p=
>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;color:black">Is this=
 still a problem?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From: </span></b><spa=
n style=3D"color:black">&lt;Thornburg&gt;, Christopher A &lt;<a href=3D"mai=
lto:christopher.a.thornburg@intel.com">christopher.a.thornburg@intel.com</a=
>&gt;<br>
<b>Date: </b>Wednesday, January 2, 2013 2:48 PM<br>
<b>To: </b>&quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctop=
roject.org</a>&gt;<br>
<b>Subject: </b>[yocto] Host authenticity failures<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">I&#8217;ve started getti=
ng the following error from bitbake when it&#8217;s trying to access my git=
 server:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:blac=
k">The authenticity of host '[&lt;githost&gt;]:&lt;port&gt;([&lt;IP&gt;]:&l=
t;port&gt;)' can't be established.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:blac=
k">DSA key fingerprint is &lt;blah&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:blac=
k">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">I understand this error =
means that the server&#8217;s key has probably changed, and I understand in=
 general how to deal with this via SSH config. When I manually ssh&#8217;d =
to the server the first time after receiving the
 error, I got the same message, as expected. I entered &#8220;yes&#8221; an=
d tried again to verify that the error went away. It did. I think ran bitba=
ke again and got the same error. I changed my ~/.ssh/ssh_config file to dis=
able StrictHostKeyChecking and still get the
 error.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">Is bitbake somehow using=
 different known_hosts and ssh_config files from the ones I use for interac=
tive logins? Other ideas on how to resolve this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
</div>
</div>
</div>
</body>
</html>

--_000_752F65977A748344A01D69BF22DCDBAE25B96D9CFMSMSX102amrcor_--
