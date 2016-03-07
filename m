Return-Path: <sagar.bhanagay@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09826E008B4; Mon,  7 Mar 2016 13:47:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.240.0.71 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from g9t1613g.houston.hp.com (g9t1613g.houston.hp.com [15.240.0.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30560E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 13:47:19 -0800 (PST)
Received: from g4t3427.houston.hp.com (g4t3427.houston.hp.com [15.201.208.55])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hp.com (Postfix) with ESMTPS id B26A260F2C
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 21:46:53 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (g9w8454.houston.hp.com
	[16.216.161.4]) (using TLSv1.2 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g4t3427.houston.hp.com (Postfix) with ESMTPS id 7163550
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 21:46:52 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (16.216.161.4) by
	G9W8454.americas.hpqcorp.net (16.216.161.4) with Microsoft SMTP Server
	(TLS) id 15.0.1076.9; Mon, 7 Mar 2016 21:46:52 +0000
Received: from G9W3616.americas.hpqcorp.net (16.216.186.51) by
	G9W8454.americas.hpqcorp.net (16.216.161.4) with Microsoft SMTP Server
	(TLS)
	id 15.0.1076.9 via Frontend Transport; Mon, 7 Mar 2016 21:46:52 +0000
Received: from G4W3291.americas.hpqcorp.net ([169.254.8.132]) by
	G9W3616.americas.hpqcorp.net ([16.216.186.51]) with mapi id
	14.03.0169.001; Mon, 7 Mar 2016 21:46:52 +0000
From: "Bhanagay, Sagar" <sagar.bhanagay@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: packages with PKGSIZE 0
Thread-Index: AdF4uev3U2JtKGTATyyiMQD5pQDrbA==
Date: Mon, 7 Mar 2016 21:46:51 +0000
Message-ID: <EC8BB00EF68CF14E9A15000E115CBC8108F25488@G4W3291.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.216.65.178]
MIME-Version: 1.0
Subject: packages with PKGSIZE 0
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
X-List-Received-Date: Mon, 07 Mar 2016 21:47:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EC8BB00EF68CF14E9A15000E115CBC8108F25488G4W3291americas_"

--_000_EC8BB00EF68CF14E9A15000E115CBC8108F25488G4W3291americas_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I was going through the list of packages installed in the image (as per the=
 manifest file).
I noticed that metadata information for these packages is present at -
/build/tmp/sysroots/NAME/pkgdata/runtime/

Now I do notice that rarely for a few packages mentioned in the manifest li=
st, the corresponding metadata file is not present here.
Also sometimes, though the file is present, it says "PKGSIZE_pkgname: 0"
Example: PKGSIZE_packagegroup-base-ipv6: 0

What are these 0 size packages that manifest says are part of the image?

Thanks
~Sagar

--_000_EC8BB00EF68CF14E9A15000E115CBC8108F25488G4W3291americas_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Courier New";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I was going through the list of packages installed in the image (as per the=
 manifest file).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I noticed that metadata information for these packages is present at -
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;">/build/tmp/sysroots/NAME/pkgdata/runtime/<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Now I do notice that rarely for a few packages mentioned in the manifest li=
st, the corresponding metadata file is not present here.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Also sometimes, though the file is present, it says &#8220;PKGSIZE_pkgname:=
 0&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Example: PKGSIZE_packagegroup-base-ipv6: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
What are these 0 size packages that manifest says are part of the image?<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
~Sagar<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_EC8BB00EF68CF14E9A15000E115CBC8108F25488G4W3291americas_--
