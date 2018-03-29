Return-Path: <tom.gibson@csoftware.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFC36E009CF; Thu, 29 Mar 2018 08:29:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from APOLLO-EX16.csoftware.local (176-35-35-244.xdsl.murphx.net
	[176.35.35.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B38D4E008A2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 08:29:05 -0700 (PDT)
Received: from APOLLO-EX16.csoftware.local (10.1.1.6) by
	APOLLO-EX16.csoftware.local (10.1.1.6) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.1415.2; Thu, 29 Mar 2018 16:29:10 +0100
Received: from APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0]) by
	APOLLO-EX16.csoftware.local ([fe80::f4fe:415e:7ed9:9ee0%13]) with mapi
	id 15.01.1415.004; Thu, 29 Mar 2018 16:29:10 +0100
From: Tom Gibson <tom.gibson@csoftware.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] ClamAV PCRE support
Thread-Index: AdPF1+hZQZMIgHvxQGSK/H0SJtQy6///+S0A///p8GD//LZtcA==
Date: Thu, 29 Mar 2018 15:29:10 +0000
Message-ID: <ce1b98dc7d2e4f58bd30bd9a3966ea49@csoftware.co.uk>
References: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
	<da46c6f0-71ec-2b4d-e430-22bebed64c24@gmail.com>
	<1e95f92ab4e3479ca3df99189062668d@csoftware.co.uk>
In-Reply-To: <1e95f92ab4e3479ca3df99189062668d@csoftware.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.1.70]
x-esetresult: clean, is OK
x-esetid: 37303A29CD5E6C6C6D7267
MIME-Version: 1.0
Subject: Re: ClamAV PCRE support
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
X-List-Received-Date: Thu, 29 Mar 2018 15:29:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ce1b98dc7d2e4f58bd30bd9a3966ea49csoftwarecouk_"

--_000_ce1b98dc7d2e4f58bd30bd9a3966ea49csoftwarecouk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Does anyone have any ideas for how I might fix this bitbake error?

Also is there an example initscript to start clamd?

Thanks in advance.

Regards,

Tom Gibson
C Software Limited

From: Tom Gibson
Sent: 27 March 2018 16:28
To: 'akuster808' <akuster808@gmail.com>; yocto@yoctoproject.org
Subject: RE: [yocto] ClamAV PCRE support

Yes, I am using the recipe from meta-security. I have just double-checked t=
his with "bitbake-layers show-recipes".

Regards,

Tom Gibson
C Software Limited

From: akuster808 <akuster808@gmail.com>
Sent: 27 March 2018 16:04
To: Tom Gibson <tom.gibson@csoftware.co.uk>; yocto@yoctoproject.org
Subject: Re: [yocto] ClamAV PCRE support




On 03/27/2018 07:42 AM, Tom Gibson wrote:
Hi,

I am adding ClamAV to our custom image and have added the following to our =
main .bb file:

Are you using the recipe from meta-security ?

- Armin

IMAGE_INSTALL +=3D " clamav clamav-daemon clamav-clamdscan"

When I run clamscan on our board I get a number of errors of the form "logi=
cal signature for ... uses PCREs but support is disabled, skipping" so the =
solution would appear to be to add PCRE support. In the ClamAV bitbake reci=
pe I see there is a PACKAGECONFIG variable for PCRE, so to test if this is =
the solution I have added the following to my local.conf:

PACKAGECONFIG_append_pn-clamav =3D " pcre"

and have also added " libpcre2" before "clamav" in the IMAGE_INSTALL as abo=
ve.

Unfortunately when I run bitbake I now get a configure error similar to the=
 following:

configure: error: cannot locate libpcre2 or libpcre at <builddir>/tmp/work/=
armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib

I have attempted to solve this by creating a .bbappend file in my layer con=
taining the following to try and force it to build libpcre first

                DEPENDS +=3D " libpcre2"

however this has no effect on the error, I assume this may not be the way t=
o solve the dependency problem.

Can anyone please advise what additional configuration is required to enabl=
e building of support for PCRE into ClamAV

Thanks in advance for your assistance!

Regards,

Tom Gibson
C Software Limited




--_000_ce1b98dc7d2e4f58bd30bd9a3966ea49csoftwarecouk_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Hi,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Does anyone have an=
y ideas for how I might fix this bitbake error?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Also is there an ex=
ample initscript to start clamd?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Thanks in advance.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-GB">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-GB">Tom Gibson<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-GB">C Software Limited</span><span style=3D"color:windowtext"><o:p></o:=
p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><b><span lang=3D"EN-US"=
 style=3D"color:windowtext;mso-fareast-language:EN-GB">From:</span></b><spa=
n lang=3D"EN-US" style=3D"color:windowtext;mso-fareast-language:EN-GB"> Tom=
 Gibson
<br>
<b>Sent:</b> 27 March 2018 16:28<br>
<b>To:</b> 'akuster808' &lt;akuster808@gmail.com&gt;; yocto@yoctoproject.or=
g<br>
<b>Subject:</b> RE: [yocto] ClamAV PCRE support<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext">Yes, I am using the recipe from meta-security. I have just double=
-checked this with &#8220;bitbake-layers show-recipes&#8221;.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext;mso-fareast-language:EN-GB">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext;mso-fareast-language:EN-GB">Tom Gibson<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext;mso-fareast-language:EN-GB">C Software Limited</span><span style=
=3D"color:windowtext"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"color:wi=
ndowtext"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><b><span lang=3D"EN-US"=
 style=3D"color:windowtext;mso-fareast-language:EN-GB">From:</span></b><spa=
n lang=3D"EN-US" style=3D"color:windowtext;mso-fareast-language:EN-GB"> aku=
ster808 &lt;akuster808@gmail.com&gt;
<br>
<b>Sent:</b> 27 March 2018 16:04<br>
<b>To:</b> Tom Gibson &lt;tom.gibson@csoftware.co.uk&gt;; yocto@yoctoprojec=
t.org<br>
<b>Subject:</b> Re: [yocto] ClamAV PCRE support<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin-left:36.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">On 03/27/2018 07:42 AM,=
 Tom Gibson wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">I am adding ClamAV to o=
ur custom image and have added the following to our main .bb file:<o:p></o:=
p></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0cm;margin-right:0cm;mar=
gin-bottom:12.0pt;margin-left:36.0pt">
<span style=3D"mso-fareast-language:EN-GB"><br>
Are you using the recipe from meta-security ?<br>
<br>
- Armin<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt;text-indent:36.0pt">IMAG=
E_INSTALL &#43;=3D &#8220; clamav clamav-daemon clamav-clamdscan&#8221;<o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">When I run clamscan on =
our board I get a number of errors of the form &#8220;logical signature for=
 &#8230; uses PCREs but support is disabled, skipping&#8221; so the solutio=
n would appear to be to add PCRE support. In the ClamAV
 bitbake recipe I see there is a PACKAGECONFIG variable for PCRE, so to tes=
t if this is the solution I have added the following to my local.conf:<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt;text-indent:36.0pt">PACK=
AGECONFIG_append_pn-clamav =3D &#8220; pcre&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">and have also added &#8=
220; libpcre2&#8221; before &#8220;clamav&#8221; in the IMAGE_INSTALL as ab=
ove.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">Unfortunately when I ru=
n bitbake I now get a configure error similar to the following:<o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt;text-indent:36.0pt">conf=
igure: error: cannot locate libpcre2 or libpcre at &lt;builddir&gt;/tmp/wor=
k/armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib<o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">I have attempted to sol=
ve this by creating a .bbappend file in my layer containing the following t=
o try and force it to build libpcre first<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEPENDS=
 &#43;=3D &#8220; libpcre2&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">however this has no eff=
ect on the error, I assume this may not be the way to solve the dependency =
problem.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">Can anyone please advis=
e what additional configuration is required to enable building of support f=
or PCRE into ClamAV<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">Thanks in advance for y=
our assistance!<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"mso-fare=
ast-language:EN-GB">Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"mso-fare=
ast-language:EN-GB">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"mso-fare=
ast-language:EN-GB">Tom Gibson</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"mso-fare=
ast-language:EN-GB">C Software Limited</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0cm;margin-right:0cm;mar=
gin-bottom:12.0pt;margin-left:36.0pt">
<span style=3D"mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"mso-fare=
ast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_ce1b98dc7d2e4f58bd30bd9a3966ea49csoftwarecouk_--
