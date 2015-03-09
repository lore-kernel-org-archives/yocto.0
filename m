Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4062E0076F; Mon,  9 Mar 2015 14:05:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED68E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 14:05:23 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ai8FAGsK/lSHCzIm/2dsb2JhbABbgkMhIlJaBIUOu2SBUx0BCIVxAoErTQEBAQEBAXyEDwEBAQEDAQEBDxtBCxACAQgNBAQBAQsdByEGAQoUCQgBAQQOBQgah3kDEQEMnBigXQ2FQAEBAQEBAQEBAQEBAQEBAQEBAQEBAReLF4JEgXktBAYBgxeBFgWODYICg2SDTlgBgxuFOIZWhhMjgVuCE28BAYFCfwEBAQ
X-IronPort-AV: E=Sophos;i="5.11,370,1422939600"; 
	d="scan'208,217";a="107044268"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	09 Mar 2015 17:05:22 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	09 Mar 2015 17:05:23 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Mon, 9 Mar 2015 17:05:22 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Yocto Daisy 1.6.1 on CentOS 6.5
Thread-Index: AdBaqKsO2Cn32FurSJK1dFAyFumGYgAIxa+AAAfZZ/A=
Date: Mon, 9 Mar 2015 21:05:21 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798538E4633@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798538E45DA@AZ-US1EXMB03.global.avaya.com>
	<96459791-02BB-47CF-B2EA-6F43FDA359EB@gmail.com>
In-Reply-To: <96459791-02BB-47CF-B2EA-6F43FDA359EB@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Daisy 1.6.1 on CentOS 6.5
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
X-List-Received-Date: Mon, 09 Mar 2015 21:05:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE652191037798538E4633AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE652191037798538E4633AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, but that doesn't quite answer my question.

The link you pointed to also claims that all required dependencies are
available on CentOS 6.

But the package list at http://mirror.centos.org/centos/6/os/x86_64/Package=
s/
says otherwise. As I found, the version of Python on CentOS is 2.6.6

MV

From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: March 09, 2015 4:47 PM
To: Vuille, Martin (Martin)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Daisy 1.6.1 on CentOS 6.5


On Mar 9, 2015, at 1:36 PM, Vuille, Martin (Martin) <vmartin@avaya.com<mail=
to:vmartin@avaya.com>> wrote:

The Yocto 1.6.1 Project Reference Manual states that it is supported and te=
sted
against CentOS release 6.5, but later states that Python 2.7.3 is required,=
 CentOS 6.5
seems to have an older version of Python (2.6.6).

The build does not, in fact, work and complains that the version of Python =
is too old.

Is the information about supported/tested distros out of date? Is there an =
expectation
that Python must be manually updated to the required version?


https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies<https:/=
/urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__wiki.yoctoproject.org_wiki_=
Poky_GettingStarted_Dependencies&d=3DAwMFAg&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3D=
SbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&m=3DpGEntZ4M0TJOX6Ce-fitVUlVZrK=
Rk41xxkEdlAgWYRQ&s=3DQeF_zbbrQ1LRBoZI_METoFL9bvnz6J6X3Dt13kSduF8&e=3D>



MV
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto<https://urldefense.proofpoint=
.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_listinfo_yocto&d=3DAwMFAg&=
c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&=
m=3DpGEntZ4M0TJOX6Ce-fitVUlVZrKRk41xxkEdlAgWYRQ&s=3DHf8jqGTZ1zaROo9_c9DEXDB=
nBaQlQJKeUcUSG8VIlYk&e=3D>


--_000_30C2D590D16A5C46ADFE652191037798538E4633AZUS1EXMB03glob_
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
	{font-family:LucidaGrande;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle18
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks, but that doesn&#8=
217;t quite answer my question.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">The link you pointed to a=
lso claims that all required dependencies are<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">available on CentOS 6.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">But the package list at
<a href=3D"http://mirror.centos.org/centos/6/os/x86_64/Packages/">http://mi=
rror.centos.org/centos/6/os/x86_64/Packages/</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">says otherwise. As I foun=
d, the version of Python on CentOS is 2.6.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">MV<o:p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khem Raj=
 [mailto:raj.khem@gmail.com]
<br>
<b>Sent:</b> March 09, 2015 4:47 PM<br>
<b>To:</b> Vuille, Martin (Martin)<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Yocto Daisy 1.6.1 on CentOS 6.5<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">On Mar 9, 2015, at 1:36 PM, Vuille, Martin (Martin) =
&lt;<a href=3D"mailto:vmartin@avaya.com">vmartin@avaya.com</a>&gt; wrote:<o=
:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">The Yocto 1.6.1 Project Reference Manua=
l states that it is supported and tested<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">against CentOS release 6.5, but later s=
tates that Python 2.7.3 is required, CentOS 6.5<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">seems to have an older version of Pytho=
n (2.6.6).<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">The build does not, in fact, work and c=
omplains that the version of Python is too old.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Is the information about supported/test=
ed distros out of date? Is there an expectation<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">that Python must be manually updated to=
 the required version?<o:p></o:p></span></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal"><a href=3D"https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__wiki.yoctoproject.org_wiki_Poky_GettingStarted_Dependencies&a=
mp;d=3DAwMFAg&amp;c=3DBFpWQw8bsuKpl1SgiZH64Q&amp;r=3DSbT_XjBLTrjzWy1iRhblzG=
3bKRhcodBp7tD_mnp1dpg&amp;m=3DpGEntZ4M0TJOX6Ce-fitVUlVZrKRk41xxkEdlAgWYRQ&a=
mp;s=3DQeF_zbbrQ1LRBoZI_METoFL9bvnz6J6X3Dt13kSduF8&amp;e=3D">https://wiki.y=
octoproject.org/wiki/Poky/GettingStarted/Dependencies</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">MV<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
idaGrande&quot;,&quot;serif&quot;">--<span class=3D"apple-converted-space">=
&nbsp;</span><br>
_______________________________________________<br>
yocto mailing list<br>
</span><a href=3D"mailto:yocto@yoctoproject.org"><span style=3D"font-size:9=
.0pt;font-family:&quot;LucidaGrande&quot;,&quot;serif&quot;;color:purple">y=
octo@yoctoproject.org</span></a><span style=3D"font-size:9.0pt;font-family:=
&quot;LucidaGrande&quot;,&quot;serif&quot;"><br>
</span><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__li=
sts.yoctoproject.org_listinfo_yocto&amp;d=3DAwMFAg&amp;c=3DBFpWQw8bsuKpl1Sg=
iZH64Q&amp;r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&amp;m=3DpGEntZ4M=
0TJOX6Ce-fitVUlVZrKRk41xxkEdlAgWYRQ&amp;s=3DHf8jqGTZ1zaROo9_c9DEXDBnBaQlQJK=
eUcUSG8VIlYk&amp;e=3D"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
idaGrande&quot;,&quot;serif&quot;;color:purple">https://lists.yoctoproject.=
org/listinfo/yocto</span></a><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE652191037798538E4633AZUS1EXMB03glob_--
