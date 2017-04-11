Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 434BAE00AF0; Mon, 10 Apr 2017 23:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.237.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 264 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Apr 2017 23:25:01 PDT
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0B3E00A9B
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 23:25:01 -0700 (PDT)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta23.fe.bosch.de (Postfix) with ESMTP id 93D6615801A6
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 08:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1491891900;
	bh=XHzXgTbb4B84ComE9fCgOJMHqpHQG4oa+MTB9rqXCqk=; l=10;
	h=From:From:Reply-To:Sender;
	b=gqrc0R08fsEMBu8vV2VAhm2xiRMJQhcJWO02jbVJFrCKPH0ED2wLKYHx05FqRXzPz
	AHpkpaouLLo3gzlGCU3f1WNTwuP/V3Xtlu6Y4mC8R++GabFoCiGm/vkmDgLQT1Yw5a
	3RmvWari0RBIM4ox5StNoXya12aZLbg+SKF+cqCk=
Received: from SI-MBX1013.de.bosch.com (vsgw22.fe.internet.bosch.com
	[10.4.98.11])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id 8AFF2238026F
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 08:25:00 +0200 (CEST)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	SI-MBX1013.de.bosch.com (10.3.230.50) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Tue, 11 Apr 2017 08:25:00 +0200
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Tue, 11 Apr 2017 08:25:00 +0200
From: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Sub-directories from Git in SRC-URI
Thread-Index: AdKyi+6CZGeMF7dnRvSNMfKHmDj6Bg==
Date: Tue, 11 Apr 2017 06:24:59 +0000
Message-ID: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.42.245.153]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.1.0.1062-22996.006
X-TMASE-MatchedRID: IgH/cWfDc8/UbgNMppOAcxkuPL3W/szl1uSq5RBVCm50PA/ki2kI7BxJ
	EX0k/k7OLiNvWfV40DfniZuiwpS5h8IrF13eYpRriguiJuCNURf4bPjfm0hIQeKYpwtG+wHV8Fh
	GjTp5WPfy/MPf/RmXSoVtgQyPvRbMNJyAyqAmcb8SDAzxRL+lMX17zx+CiSWzDC/Vm90If4WY8y
	8WI7jQsI8vWR6sDTLkunMonJePr4wn4I4vtUU3Tp4CIKY/Hg3AaZGo0EeYG94JrPsDvSXvNvoLR
	4+zsDTtiuuVOWrUWflDUCnKly/hBhwd19spoGNs9OGUhcn4NHvUW2CJWTW4Rg==
Subject: Sub-directories from Git in SRC-URI
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
X-List-Received-Date: Tue, 11 Apr 2017 06:25:03 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_83bd670ecdbc4d1885b66d8ba8ed8b0cFEMBX1014deboschcom_"

--_000_83bd670ecdbc4d1885b66d8ba8ed8b0cFEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hallo,

May I now is it possible to include a sub-directory from git repo in the SR=
C_URI of bitbake recipe.

Also in SRC_URI is it possible to include a directory instead of a single f=
ile?

I know I could create a tar file of a directory and include it , but I woul=
d like to know is it possible to include directory as a SRC_URI.


Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1



--_000_83bd670ecdbc4d1885b66d8ba8ed8b0cFEMBX1014deboschcom_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Hallo,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">May I now is it possible to include a sub-directory f=
rom git repo in the SRC_URI of bitbake recipe.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Also in SRC_URI is it possible to include a directory=
 instead of a single file?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I know I could create a tar file of a directory and i=
nclude it , but I would like to know is it possible to include directory as=
 a SRC_URI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen /=
 Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b><br>
</span><span lang=3D"DE" style=3D"font-size:8.0pt;font-family:&quot;Arial&q=
uot;,sans-serif;color:black"><br>
<br>
</span><span lang=3D"DE"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_83bd670ecdbc4d1885b66d8ba8ed8b0cFEMBX1014deboschcom_--
