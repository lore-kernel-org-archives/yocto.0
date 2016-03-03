Return-Path: <Rikard.Olsson@se.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39063E00AAB; Thu,  3 Mar 2016 05:15:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.237.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 82349 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Mar 2016 05:15:44 PST
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87AEDE009EA
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 05:15:44 -0800 (PST)
Received: from vsmta12.fe.internet.bosch.com (unknown [10.4.98.52])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 3847ED80222
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 14:15:43 +0100 (CET)
Received: from SI-MBX1022.de.bosch.com (vsgw24.fe.internet.bosch.com
	[10.4.98.24])
	by vsmta12.fe.internet.bosch.com (Postfix) with ESMTP id 236171B8060F
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 14:15:43 +0100 (CET)
Received: from SI-MBX1022.de.bosch.com (10.3.230.36) by
	SI-MBX1022.de.bosch.com (10.3.230.36) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Thu, 3 Mar 2016 14:15:42 +0100
Received: from SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88]) by
	SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88%22]) with mapi id
	15.00.1104.000; Thu, 3 Mar 2016 14:15:42 +0100
From: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to handle meta-intel/openembedded repos with
	multiple developers 
Thread-Index: AdF1TmoDrYvKAdPUQrakSmSxmaTmxg==
Date: Thu, 3 Mar 2016 13:15:42 +0000
Message-ID: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.112.94.39]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22168.006
X-TMASE-MatchedRID: O7B1F86y/DV8lRt638luTgPZZctd3P4BnvBHr/aFnM72Jzqp3fkNE81I
	G4pgz1wBsmxvN5BLxiABrPmUP2XECO28xU3/0kzK2OSj4qJA9QZ4nU6KtjDMA/gnJH5vm2+gSHB
	prB5rEi1wKZvEQdp9LYuWe5pCJ/IpfKit+GFib6ThuXUWQoMQt2KaLwu81+avXCmcAC8DBrPGyv
	qbtGWMEe07KE2yijZHB0C+OJtTvALC5N8cNUn/Xn57ROP1QhCQXs5nqGvDCfOYvYlYOb0cVCL8H
	aC6OsQftfIoPjjbYPdMJWibFgkDbhhzK7qAlTSL/Sl5cYQQGW+DddlymG7iS0rRZP/NcCCSizrF
	pWHTBvcEdWbTGHnxVjwu4/5s6Qxa3eMXZ9Vw93MMH4SsGvRsA1qvZZ9/gpIhpRezBf/GshLUGg7
	QVcvSyO4M3H5OTuYLzrdJeohlb0hItg64/Sl119/wYmMFcJSIl2F9+KxZd8cdI0m0WP5veieyhe
	/lYm1bfjI+5NpS2G8UGn2H7I5plAUYKFSjGhXD3y1ZMjVHx6khnAF+qfR1Zjg2jfgv3Zp9UdfEK
	c10rU54nNRC+UXW5z7V1OrezJhf3lmiQx+Vqg0OsNNBnlgRWn0tCKdnhB58r10pknZXGJp9j2Gw
	zTE3vXkguuQorcgMgIW51kItFsG2sWHskw/tqzzwr+sdLoqdbPHrrePjJGx+3BndfXUhXQ==
Subject: How to handle meta-intel/openembedded repos with multiple developers
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
X-List-Received-Date: Thu, 03 Mar 2016 13:15:50 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_f9a57cb411c94c0c8f191bad3d391b35SIMBX1022deboschcom_"

--_000_f9a57cb411c94c0c8f191bad3d391b35SIMBX1022deboschcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Members,

My second posting, first one got great answers so hoping for two for two...

I come from a git /repo background where:

* repo init -u <URL> [<OPTIONS>]

               * Will get the manifest.xml file with the trees

* repo sync

Will download the forest to my local HDD and I am good to go.

I am having some problem understanding how to use Yocto/Bitbake in a develo=
pment team and using source control/CM similar to what we had before. For e=
xample all out team members will use:
poky
meta-intel
meta-openembedded
meta-oracle-java
...
....
plus a few other ones. Is the idea that each developer should download thes=
e necessary git trees for example meta-intel/openembedded manually using gi=
t clone then update build/config/bblayers.conf manually? With this approach=
 I feel that each developed needs to do multiple steps to setup their build=
 environment just to get started.

I have tried to add my own BB file and I am able to download the repo's by =
running bitbake XXXX-meta-intel-lr
-rw-rw-r--. 1 XXX XXX 555 Mar  3 09:08 XXXX-meta-intel-lr_1.0.bb
-rw-rw-r--. 1 XXX XXX 564 Mar  3 10:47 XXXX-meta-openembedded-lr_1.0.bb
-rw-rw-r--. 1 XXX XXX 607 Mar  3 10:25 XXXX-meta-oracle-java-lr_1.0.b
And my code end up in tmp/work/i586-poky-linux/XXX-meta-oracle-java-lr/1.0-=
r0/git/ and I am then able to update build/config/bblayers.conf =3D=3D> But=
 this cant be the correct way to handle this, path might change and tmp is =
what the name implies, a temporary directory........

For me I would like to have the necessary meta-XXXX downloaded by yocto in =
the same way repo init/sync handles it, this would allow developers to:
1) Clone poky from local repository
2) execute a yocto file/script (which was part of the poky clone) to downlo=
ad (no need to build anything) all the needed meta-XXXX.
3) Update build/config/bblayers.conf (if needed) with correct paths to meta=
-XXXX
4) Build
Is this possible in Yocto or do we need to wrap our development environment=
 in something like repo int/sync to be able to solve this?

Regards
Rikard




--_000_f9a57cb411c94c0c8f191bad3d391b35SIMBX1022deboschcom_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML - f\00F6rformaterad Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
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
span.E-postmall17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.HTML-frformateradChar
	{mso-style-name:"HTML - f\00F6rformaterad Char";
	mso-style-priority:99;
	mso-style-link:"HTML - f\00F6rformaterad";
	font-family:"Courier New";
	mso-fareast-language:SV;}
span.pln
	{mso-style-name:pln;}
span.pun
	{mso-style-name:pun;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1762949826;
	mso-list-type:hybrid;
	mso-list-template-ids:-280172770 69009425 69009433 69009435 69009423 69009=
433 69009435 69009423 69009433 69009435;}
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
family:&quot;Arial&quot;,sans-serif">Hello Yocto Members,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">My second posting, first one got great=
 answers so hoping for two for two&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I come from a git /repo background whe=
re:<o:p></o:p></span></p>
<pre><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif=
">* repo init -u <i>&lt;URL&gt;</i> [<i>&lt;OPTIONS&gt;</i>]<o:p></o:p></sp=
an></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif=
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; * Will get the manifest.xml file with the trees<o:p></o:p></spa=
n></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif=
">* repo sync <o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif=
">Will download the forest to my local HDD and I am good to go.<o:p></o:p><=
/span></pre>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I am having some problem understanding=
 how to use Yocto/Bitbake in a development team and using source control/CM=
 similar to what we had before. For example all
 out team members will use:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">meta-intel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">meta-openembedded<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">meta-oracle-java<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&#8230;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">plus a few other ones. Is the idea tha=
t each developer should download these necessary git trees for example meta=
-intel/openembedded manually using git clone then
 update build/config/bblayers.conf manually? With this approach I feel that=
 each developed needs to do multiple steps to setup their build environment=
 just to get started.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I have tried to add my own BB file and=
 I am able to download the repo&#8217;s by running bitbake XXXX-meta-intel-=
lr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-rw-rw-r--. 1 XXX XXX 555 Mar&nbsp; 3 09:08 XXXX-meta=
-intel-lr_1.0.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">-rw-rw-r--. 1 XXX XXX 564 Mar&nbsp; 3 =
10:47 XXXX-meta-openembedded-lr_1.0.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-rw-rw-r--. 1 XXX XXX 607 Mar&nbsp; 3 10:25 XXXX-meta=
-oracle-java-lr_1.0.b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">And my code end up in tmp/work/i586-po=
ky-linux/XXX-meta-oracle-java-lr/1.0-r0/git/ and I am then able to update b=
uild/config/bblayers.conf
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:Wingdings=
">&egrave;</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family=
:&quot;Arial&quot;,sans-serif"> But this cant be the correct way to handle =
this, path might change and tmp is what the name implies,
 a temporary directory&#8230;&#8230;..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">For me I would like to have the necess=
ary meta-XXXX downloaded by yocto in the same way repo init/sync handles it=
, this would allow developers to:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">1) Clone poky from local repository<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">2) execute a yocto file/script (which =
was part of the poky clone) to download (no need to build anything) all the=
 needed meta-XXXX.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">3) Update build/config/bblayers.conf (=
if needed) with correct paths to meta-XXXX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">4) Build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Is this possible in Yocto or do we nee=
d to wrap our development environment in something like repo int/sync to be=
 able to solve this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Rikard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_f9a57cb411c94c0c8f191bad3d391b35SIMBX1022deboschcom_--
