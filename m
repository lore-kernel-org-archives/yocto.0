Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56590E0140D;
	Fri,  5 Jul 2013 01:05:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jul 2013 01:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1000,1363158000"; 
	d="scan'208,217";a="340833922"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2013 01:05:32 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.127]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.194]) with mapi id
	14.03.0123.003; Fri, 5 Jul 2013 09:05:31 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Michael Halstead <michael@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Yocto Project 1.5_M2.rc1 build status
Thread-Index: AQHOeE6O55n5Vd75uEW1ouy2VOpXH5lVu8MQ
Date: Fri, 5 Jul 2013 08:05:30 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F0E894@IRSMSX104.ger.corp.intel.com>
References: <51D39006.5000000@yoctoproject.org>
	<51D3A0A2.2040008@yoctoproject.org> <51D4C38A.2090800@yoctoproject.org>
In-Reply-To: <51D4C38A.2090800@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Yocto Project 1.5_M2.rc1 build status
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
X-List-Received-Date: Fri, 05 Jul 2013 08:05:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F0E894IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F0E894IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Michael,
The adt-installer is missing from the http://autobuilder.yoctoproject.org/p=
ub/nightly/20130703-3/ build. But since it is using the same commit for as =
http://autobuilder.yoctoproject.org/pub/nightly/20130703-2 build, we will u=
se the one there instead for testing.

Regards,
--
Alexandru Georgescu

From: Michael Halstead [mailto:mhalstead@linuxfoundation.org] On Behalf Of =
Michael Halstead
Sent: Thursday, July 04, 2013 03:36
To: yocto@yoctoproject.org
Subject: Re: Yocto Project 1.5_M2.rc1 build status

Adidtional autobuilder configuration errors were corrected and a third spin=
 of 1.5_M2.rc1 started. Please find the build at the new location:

http://autobuilder.yoctoproject.org/pub/nightly/20130703-3



poky                   eaa5df34af42b6a37f6506847d0f3ef6ba0d298a<https://git=
.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f6506847=
d0f3ef6ba0d298a>

meta-fsl-arm           daf582c93a7283fb0af3b25fe2ada48f4c9985c4<https://git=
.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=3Ddaf582c93a7283fb0=
af3b25fe2ada48f4c9985c4>

meta-fsl-ppc           a2bcb25c53f935ae9a423c57ca5e2f7a2f7b1a69 (Changed si=
nce last build)

meta-intel             e0d6134ed2e2687ff9f2ee77701666447842bf33<https://git=
.yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?id=3De0d6134ed2e2687ff9f=
2ee77701666447842bf33>

meta-minnow            286a72ba3f5e29432be1dd77127de5bdc2d988c3<https://git=
.yoctoproject.org/cgit/cgit.cgi/meta-minnow/commit/?id=3D286a72ba3f5e29432b=
e1dd77127de5bdc2d988c3>

meta-qt3               b73552fb998fd30a01dbee5a172e432a16078222<https://git=
.yoctoproject.org/cgit/cgit.cgi/meta-qt3/commit/?id=3Db73552fb998fd30a01dbe=
e5a172e432a16078222>

eclipse-poky           e35dfd79e3970f88a8273125890a54f75f108b97<https://git=
.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=3De35dfd79e3970f88a=
8273125890a54f75f108b97>
Please begin QA as soon as possible. Thank you.

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F0E894IRSMSX104gercor_
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
span.moz-txt-link-freetext
	{mso-style-name:moz-txt-link-freetext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";
	color:black;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Michael,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">The adt-installer is miss=
ing from the
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/">htt=
p://autobuilder.yoctoproject.org/pub/nightly/20130703-3/</a> build. But sin=
ce it is using the same commit for as
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-2">http=
://autobuilder.yoctoproject.org/pub/nightly/20130703-2</a> build, we will u=
se the one there instead for testing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">--<o:p></o:p></span></b=
></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">Alexandru Georgescu<o:p=
></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> Michael Halstead [mailto:mhalstead@linuxfoundatio=
n.org]
<b>On Behalf Of </b>Michael Halstead<br>
<b>Sent:</b> Thursday, July 04, 2013 03:36<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: Yocto Project 1.5_M2.rc1 build status<o:p></o:p></span>=
</p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Adidtional autobuilder configuration errors were cor=
rected and a third spin of 1.5_M2.rc1 started. Please find the build at the=
 new location:<br>
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-3"><br>
<span class=3D"moz-txt-link-freetext">http://autobuilder.yoctoproject.org/p=
ub/nightly/20130703-3</span></a><br>
<br>
<br>
<o:p></o:p></p>
<pre>poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a href=3D"https://git.yoctoproject.o=
rg/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f6506847d0f3ef6ba0d298a=
">eaa5df34af42b6a37f6506847d0f3ef6ba0d298a</a><o:p></o:p></pre>
<pre>meta-fsl-arm&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a=
 href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=
=3Ddaf582c93a7283fb0af3b25fe2ada48f4c9985c4">daf582c93a7283fb0af3b25fe2ada4=
8f4c9985c4</a><o:p></o:p></pre>
<pre>meta-fsl-ppc&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a2=
bcb25c53f935ae9a423c57ca5e2f7a2f7b1a69 (Changed since last build)<o:p></o:p=
></pre>
<pre>meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp=
;&nbsp; <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/co=
mmit/?id=3De0d6134ed2e2687ff9f2ee77701666447842bf33">e0d6134ed2e2687ff9f2ee=
77701666447842bf33</a><o:p></o:p></pre>
<pre>meta-minnow&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-minnow/commit=
/?id=3D286a72ba3f5e29432be1dd77127de5bdc2d988c3">286a72ba3f5e29432be1dd7712=
7de5bdc2d988c3</a> <o:p></o:p></pre>
<pre>meta-qt3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/met=
a-qt3/commit/?id=3Db73552fb998fd30a01dbee5a172e432a16078222">b73552fb998fd3=
0a01dbee5a172e432a16078222</a><o:p></o:p></pre>
<pre>eclipse-poky&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a=
 href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=
=3De35dfd79e3970f88a8273125890a54f75f108b97">e35dfd79e3970f88a8273125890a54=
f75f108b97</a> <o:p></o:p></pre>
<p class=3D"MsoNormal">Please begin QA as soon as possible. Thank you. <o:p=
></o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F0E894IRSMSX104gercor_--
