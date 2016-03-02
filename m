Return-Path: <Rikard.Olsson@se.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59667E00D63; Wed,  2 Mar 2016 06:30:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	HTTP_ESCAPED_HOST,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.26 listed in list.dnswl.org]
	*  1.1 HTTP_ESCAPED_HOST URI: Uses %-escapes inside a URL's hostname
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 430 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Mar 2016 06:30:28 PST
Received: from imta22.fe.bosch.de (imta22.fe.bosch.de [139.15.243.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A78B5E00D54
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 06:30:28 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta22.fe.bosch.de (Postfix) with ESMTP id 9173B8406C1
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 15:23:17 +0100 (CET)
Received: from vsmta13.fe.internet.bosch.com (unknown [10.4.98.53])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 8C527D8021E
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 15:23:13 +0100 (CET)
Received: from FE-MBX1021.de.bosch.com (vsgw24.fe.internet.bosch.com
	[10.4.98.24])
	by vsmta13.fe.internet.bosch.com (Postfix) with ESMTP id 623EB2E4033B
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 15:23:13 +0100 (CET)
Received: from SI-MBX1022.de.bosch.com (10.3.230.36) by
	FE-MBX1021.de.bosch.com (10.3.230.79) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Wed, 2 Mar 2016 15:23:13 +0100
Received: from SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88]) by
	SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88%22]) with mapi id
	15.00.1104.000; Wed, 2 Mar 2016 15:23:12 +0100
From: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question about access local stash/bitbucket server via
	yocto 
Thread-Index: AdF0jsXHmRf8FHynQXOAQ3fPSSfi7g==
Date: Wed, 2 Mar 2016 14:23:12 +0000
Message-ID: <dde450eb834b412b9c16b001dc38e4ca@SI-MBX1022.de.bosch.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.112.94.39]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22166.006
X-TMASE-MatchedRID: eVwCvDcyoH/ZRSLc0r9lWawVAs8B09eb3PTrvrviGvGwQEC6hpSor2zB
	ijri5+RVwx0jRRxcQfNTq//rncsNWVJiNpqCfWhwalrghtLYKnMrYgBwi0blRKBanhiWwo9VSEQ
	N/D/3cG5Iwc9QUHHm1o+rk7FaJsnRqVSrDqW2fad0H1pFncPIhDo48Far7lL5MTh/qrzaN8Ebma
	DSnOqZfq8jRz1kbwuzLsN5f1CPVxRn5YuWIOgBi/lsD3dDSedzmqnOuW6aph7w2L2r2UxibFz+a
	xQLnAVBhOpaviu47Yf4JyR+b5tvoB7lMXZpGUy6ElyOFEZbiZJhjdPZ6iZcXBiJS+736x5Hk3rl
	+MaNgxCU1za3Jug9wmVHMgTsK3UMHEkRfST+Ts4uI29Z9XjQN+eJm6LClLmHwisXXd5ilGuKC6I
	m4I1RF/hs+N+bSEhB4pinC0b7AdXwWEaNOnlY9/L8w9/9GZdKqpZD3eXLNqTbKAyc+TgM3PilM7
	nponT8X6IRwqkp2m4VGU3zNNLOPhEBsElEhz9OMcaFYqwxgsgFMD2TcBnF4TckKevf5t5Ny7TSW
	cbz49YxmlBLt0TR1oJy/meScoY1hQH+YspUfFp2+AZuxakJy1x59CtgmyHsWcbhowRxPdNmNCKO
	CsW/OqcJxWZ5/lR8vyf7pxFgu7wxuzPbeaEQQCeXP7bUz9aMgDLqnrRlXrYdFwhcbRvoqD++5wa
	fXR2mg0aBGFrNAz18i4HVDgMFX4VwlOWfteJ67Cr6x9WxoPPf1pHOpGt2E8JoYE3yFPoGxwQb3E
	zBj7YrOr0et4f5laEGBbQvHUVaDKzsth7ywyz3f37k5/DJhe0Cl4Pwp7/mc4zEZLZ+wNNevNf9U
	XaM0+/5g0ULcJXoCs+y8u6ftKPixu7lfJXZskxKCQmBJa3ms/h92SEA09FQSzXXaICv7H7cGd19
	dSFd
Subject: Question about access local stash/bitbucket server via yocto
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
X-List-Received-Date: Wed, 02 Mar 2016 14:30:32 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_dde450eb834b412b9c16b001dc38e4caSIMBX1022deboschcom_"

--_000_dde450eb834b412b9c16b001dc38e4caSIMBX1022deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Yocto members,

My first post so here we go....
1) I am new to yocto and so is the company I work for....
2) My companys firewall/intranet blocks git protocol so only http works...

Anyhow, in the company there is a local stash/bitbucket sever which run on =
XXXX port number where I have some repositories and I am able to clone them=
 with:
git clone http://<USER>@<server>:<PORT>/XXX/~YYY/ZZZ.git<http://%3cUSER%3e@=
%3cserver%3e:%3cPORT%3e/XXX/~YYY/ZZZ.git> =3D=3D> This works fine from comm=
and line, note the "~"

However, now I want to do the clone from a yocto/bitbake file I created as =
follows:
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3DXXXXXXXXXXXXXXXXXXXXXXXXX"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
SRCREV =3D "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
SRC_URI =3D "http:/<USER>@<server>:<PORT>/XXX/~YYY/ZZZ.git"
However this fails with Username/Password Authentication Failed which I fin=
d strange since I have no problem with git clone .....

Now I have two questions:

1)     Is it possible to add my USER and PASSWORD in the bitbake/yocto (*.b=
b file) file to work around the Username/Password Authentication Failed pro=
blem.

2)     I also have a question if there are any limitation in the path I use=
, for example:

a.     Is it OK to have <PORT> number as part of path, I haven't seen that =
in any other files related to yocto/bitbake? And if not how do I specify th=
e PORT number?

b.    Or maybe the "~" will cause problem , I haven't seen this in any path=
 names related to yocto/bitbake?

Any advice I appreciated.

Mit freundlichen Gr=FC=DFen / Best regards

Rikard Olsson

Engineering Software, Lund, Sweden (RBSN/ESW)
Tel. +46(46)270-6843 | Rikard.Olsson2@se.bosch.com<mailto:Rikard.Olsson2@se=
.bosch.com>



--_000_dde450eb834b412b9c16b001dc38e4caSIMBX1022deboschcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-postmall18
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1207061209;
	mso-list-type:hybrid;
	mso-list-template-ids:-1755022936 69009425 69009433 69009435 69009423 6900=
9433 69009435 69009423 69009433 69009435;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"SV" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Dear Yocto members,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">My first post so here we go&#8230;.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">1) I am new to yocto and so is the com=
pany I work for&#8230;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">2) My companys firewall/intranet block=
s git protocol so only http works&#8230;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Anyhow, in the company there is a loca=
l stash/bitbucket sever which run on XXXX port number where I have some rep=
ositories and I am able to clone them with:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">git clone
<a href=3D"http://%3cUSER%3e@%3cserver%3e:%3cPORT%3e/XXX/~YYY/ZZZ.git">http=
://&lt;USER&gt;@&lt;server&gt;:&lt;PORT&gt;/XXX/~YYY/ZZZ.git</a> =3D=3D&gt;=
 This works fine from command line, note the &#8220;~&#8221;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">However, now I want to do the clone fr=
om a yocto/bitbake file I created as follows:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif">LIC_FILES_CHKSUM =3D &quot;file://L=
ICENSE;md5=3DXXXXXXXXXXXXXXXXXXXXXXXXX&quot;<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif">FILESEXTRAPATHS_prepend :=3D &quot;=
${THISDIR}/${PN}-${PV}:&quot;<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif">SRCREV =3D &quot;XXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXX&quot;<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif">SRC_URI =3D &quot;http:/&lt;USER&gt=
;@&lt;server&gt;:&lt;PORT&gt;/XXX/~YYY/ZZZ.git&quot;<o:p></o:p></span></b><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">However this fails with
<b>Username/Password Authentication Failed</b> which I find strange since I=
 have no problem with git clone &#8230;..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Now I have two questions:<o:p></o:p></=
span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo2"><![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore"=
>1)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp=
;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,sans-serif">Is it possible to add my USER =
and PASSWORD in the bitbake/yocto (*.bb file) file to work around the
<b>Username/Password Authentication Failed </b>problem.<o:p></o:p></span></=
p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo2"><![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore"=
>2)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp=
;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,sans-serif">I also have a question if ther=
e are any limitation in the path I use, for example:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">a.<span =
style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,sans-serif">Is it OK to have &lt;PORT&gt; =
number as part of path, I haven&#8217;t seen that in any other files relate=
d to yocto/bitbake? And if not how do I specify the PORT number?<o:p></o:p>=
</span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:72.0pt;text-indent:-18.0=
pt;mso-list:l0 level2 lfo2">
<![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif"><span style=3D"mso-list:Ignore">b.<span =
style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,sans-serif">Or maybe the
<b>&#8220;~&#8221;</b> will cause problem , I haven&#8217;t seen this in an=
y path names related to yocto/bitbake?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Any advice I appreciated.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:SV">Mi=
t freundlichen Gr=FC=DFen / Best regards
<br>
<br>
<b>Rikard Olsson<br>
</b><br>
Engineering Software, Lund, Sweden (RBSN/ESW) <br>
Tel. &#43;46(46)270-6843 | </span><a href=3D"mailto:Rikard.Olsson2@se.bosch=
.com"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,sans-serif;mso-fareast-language:SV">Rikard.Olsson2@se.bosch.com</sp=
an></a><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black;mso-fareast-language:SV">
</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:black;mso-fareast-language:SV"><br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;mso-fareast-language:SV"><br>
<br>
</span><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_dde450eb834b412b9c16b001dc38e4caSIMBX1022deboschcom_--
