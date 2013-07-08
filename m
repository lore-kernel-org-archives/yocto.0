Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BBFCE01409;
	Mon,  8 Jul 2013 00:55:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2013 00:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1018,1363158000"; 
	d="scan'208,217";a="366327761"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 08 Jul 2013 00:55:14 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 8 Jul 2013 08:53:46 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.127]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.125]) with mapi id
	14.03.0123.003; Mon, 8 Jul 2013 08:53:46 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Michael Halstead <michael@yoctoproject.org>
Thread-Topic: Yocto Project 1.5_M2.rc1 build status
Thread-Index: AQHOeE6O55n5Vd75uEW1ouy2VOpXH5lVu8MQgACFl4CABC6KgA==
Date: Mon, 8 Jul 2013 07:53:46 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F0FB3E@IRSMSX104.ger.corp.intel.com>
References: <51D39006.5000000@yoctoproject.org>
	<51D3A0A2.2040008@yoctoproject.org> <51D4C38A.2090800@yoctoproject.org>
	<1FFB62CE8AEB0D4298B51122D8903E9619F0E894@IRSMSX104.ger.corp.intel.com>
	<51D6FC09.4000506@yoctoproject.org>
In-Reply-To: <51D6FC09.4000506@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 08 Jul 2013 07:55:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F0FB3EIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F0FB3EIRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

For the rc1, we have advanced with Fullpass testing so I think it's best th=
at we continue with it than stop, and have another RC this week.



Regards,
--
Alexandru Georgescu

From: Michael Halstead [mailto:mhalstead@linuxfoundation.org] On Behalf Of =
Michael Halstead
Sent: Friday, July 05, 2013 20:02
To: Georgescu, Alexandru C
Cc: yocto@yoctoproject.org; yi.zhao@windriver.com
Subject: Re: Yocto Project 1.5_M2.rc1 build status

Thank you. The final steps of http://autobuilder.yoctoproject.org/pub/night=
ly/20130703-3/ were blocked and never completed so there may be other thing=
s missing as well. We probably need to do another build before releasing bu=
t it will hopefully be from the same commit as well.



Michael Halstead

Yocto Project / Sys Admin


On 07/05/2013 01:05 AM, Georgescu, Alexandru C wrote:
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
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F0FB3EIRSMSX104gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.moz-txt-link-freetext
	{mso-style-name:moz-txt-link-freetext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	color:black;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoPlainText">Hi Michael,<o:p></o:p></p>
<p class=3D"MsoPlainText">For the rc1, we have advanced with Fullpass testi=
ng so I think it's best that we continue with it than stop, and have anothe=
r RC this week.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards,<o:p></o:p></p>
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
<b>Sent:</b> Friday, July 05, 2013 20:02<br>
<b>To:</b> Georgescu, Alexandru C<br>
<b>Cc:</b> yocto@yoctoproject.org; yi.zhao@windriver.com<br>
<b>Subject:</b> Re: Yocto Project 1.5_M2.rc1 build status<o:p></o:p></span>=
</p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Thank you. The final steps of <span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F4=
97D">
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/">htt=
p://autobuilder.yoctoproject.org/pub/nightly/20130703-3/</a>
</span>were blocked and never completed so there may be other things missin=
g as well. We probably need to do another build before releasing but it wil=
l hopefully be from the same commit as well.<br>
<br>
<br>
<o:p></o:p></p>
<pre>Michael Halstead<o:p></o:p></pre>
<pre>Yocto Project / Sys Admin<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<p class=3D"MsoNormal">On 07/05/2013 01:05 AM, Georgescu, Alexandru C wrote=
:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Michael,</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">The adt-installer is miss=
ing from the
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/">htt=
p://autobuilder.yoctoproject.org/pub/nightly/20130703-3/</a> build. But sin=
ce it is using the same commit for as
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-2">http=
://autobuilder.yoctoproject.org/pub/nightly/20130703-2</a> build, we will u=
se the one there instead for testing.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,</span><o:p></o:p=
></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">--</span></b><o:p></o:p=
></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">Alexandru Georgescu</sp=
an></b><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> Michael Halstead [<a href=3D"mailto:mhalstead@lin=
uxfoundation.org">mailto:mhalstead@linuxfoundation.org</a>]
<b>On Behalf Of </b>Michael Halstead<br>
<b>Sent:</b> Thursday, July 04, 2013 03:36<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> Re: Yocto Project 1.5_M2.rc1 build status</span><o:p></o:p>=
</p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Adidtional autobuilder configuration errors were cor=
rected and a third spin of 1.5_M2.rc1 started. Please find the build at the=
 new location:<br>
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-3"><br>
<span class=3D"moz-txt-link-freetext">http://autobuilder.yoctoproject.org/p=
ub/nightly/20130703-3</span></a><br>
<br>
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
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F0FB3EIRSMSX104gercor_--
