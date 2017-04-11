Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8726E00AF4; Tue, 11 Apr 2017 01:04:28 -0700 (PDT)
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
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84580E00AE4
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 01:04:26 -0700 (PDT)
Received: from vsmta12.fe.internet.bosch.com (unknown [10.4.98.52])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 5D3B7D8019D;
	Tue, 11 Apr 2017 10:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1491897865;
	bh=c3+kRqxOBvAfqQeqUzBzG8oh3Dxkcc+ZJodgloMLP4w=; l=10;
	h=From:From:Reply-To:Sender;
	b=HDfTHJRmEb512K6nNsZbEZXW4bkXZXMMCauYfLPaIehupuTCQKPgOfCo2Qzh7qNZL
	XZI/kdlSYvDrDBKMkTPzsxRD+a/X1rga1uWQyZOaSSa1dv6xPcifM5Ljo5j+Exy7FU
	KoZ03XSWYR3czoz/m3YBrZPjNpFYeXikI2sirS44=
Received: from SI-MBX1013.de.bosch.com (vsgw24.fe.internet.bosch.com
	[10.4.98.24])
	by vsmta12.fe.internet.bosch.com (Postfix) with ESMTP id 2A31F1B80763; 
	Tue, 11 Apr 2017 10:04:25 +0200 (CEST)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	SI-MBX1013.de.bosch.com (10.3.230.50) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Tue, 11 Apr 2017 10:04:24 +0200
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Tue, 11 Apr 2017 10:04:24 +0200
From: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
To: "Esponde, Joel" <Joel.Esponde@Honeywell.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Sub-directories from Git in SRC-URI
Thread-Index: AdKyi+6CZGeMF7dnRvSNMfKHmDj6BgADEHXAAABdAOA=
Date: Tue, 11 Apr 2017 08:04:23 +0000
Message-ID: <7efedc166d4c4ebdbf2a1938d1ff4f7d@FE-MBX1014.de.bosch.com>
References: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
	<CY4PR07MB3429F7E461F3DA2C5DD111E696000@CY4PR07MB3429.namprd07.prod.outlook.com>
In-Reply-To: <CY4PR07MB3429F7E461F3DA2C5DD111E696000@CY4PR07MB3429.namprd07.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.42.245.153]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22996.006
X-TMASE-MatchedRID: gWg8WzvAdS2I0KPyMNrNUmiYls8x2M90y5CH5L6Hm2vSYAzZ6KmqWl1Q
	po5pNysMd1I357FW1NVhjdPZ6iZcXLjbWyff/HBuwIp5xDXWwh1A2uBGtrFNAWNfQMcEQE+A2AX
	vRovipt6+r0SRYiN4bwMF7Ja5rb3xIMRHgTgHXxVc/msUC5wFQdFqG4/BpDVaYqCGZk4o1IeO2a
	whEeHSYoHO5im3aAoJmVXacOwsBlnUbgNMppOAc+9VsdrlGzy3Q6/DFZugyt0wODfUl7mJKYzS8
	a3MSlYljJFbHTCWdQZ/pbK05rJl29ZXwwpvfhGVWCjDJRYeAZ2H7D1bP/FcOhHyswgJ7SqQ8zGz
	65yndkzuDNx+Tk7mCyBPSE2DyE9ZXLwuIT0vGF4iPTMUjkOgki1RIwMdx4yupOwTxn+Ouv7SnfY
	nnxZmsg5JRGjXvGT3uh/tM+km/DwQI553WkDHy2OILin78AgWLZWWNVgH0Y2yy072phvASaPFjJ
	EFr+ol4E9s12Gvf51EqcOzCL+PO7J9iPxTF+CuYxyq8DkPzEDLqksatI8moo8u4p+lL8ooS8Waq
	1PK3Pc=
Subject: Re: Sub-directories from Git in SRC-URI
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
X-List-Received-Date: Tue, 11 Apr 2017 08:04:28 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_7efedc166d4c4ebdbf2a1938d1ff4f7dFEMBX1014deboschcom_"

--_000_7efedc166d4c4ebdbf2a1938d1ff4f7dFEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your answer. I had thought about using this solution initially. =
In my case I have a common git repo for some 20 different applications and =
planning to write an individual recipe for each application.

If I plan to use in this way, I have 20 copies in my disk which I don't wan=
t to have.

Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1

Von: Esponde, Joel [mailto:Joel.Esponde@Honeywell.com]
Gesendet: Dienstag, 11. April 2017 09:58
An: Eswaran Vinothkumar (BEG/PJ-IOT-EL) <Vinothkumar.Eswaran@de.bosch.com>;=
 yocto@yoctoproject.org
Betreff: RE: Sub-directories from Git in SRC-URI

Hi,

Here is one way to manage this use case.
In the SRC_URI variable, you set the git repo access.
Now let's say that your sub-directory relative path is "src/myapp".
Son now you just have to add to your recipe this line:

S =3D "${WORKDIR}/git/src/myapp"

It is not optimized from a disk usage point of view (a full copy of the rep=
o files is in ${WORKDIR}/git) but it works.

Regards,

Jo=EBl Esponde
Honeywell | Safety and Productivity Solutions

De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org] De la part de Eswaran Vinothkumar (=
BEG/PJ-IOT-EL)
Envoy=E9 : mardi 11 avril 2017 08:25
=C0 : yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Objet : [yocto] Sub-directories from Git in SRC-URI

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



--_000_7efedc166d4c4ebdbf2a1938d1ff4f7dFEMBX1014deboschcom_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
	{mso-style-type:personal;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.E-MailFormatvorlage18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#400000;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Thanks for your answer. I had thought about using thi=
s solution initially. In my case I have a common git repo for some 20 diffe=
rent applications and planning to write an individual
 recipe for each application.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">If I plan to use in this way, I have 20 copies in my =
disk which I don&#8217;t want to have.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen /=
 Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1<br>
<br>
</b></span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif"><o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"DE">Von:</span></b><span lang=3D"DE=
"> Esponde, Joel [mailto:Joel.Esponde@Honeywell.com]
<br>
<b>Gesendet:</b> Dienstag, 11. April 2017 09:58<br>
<b>An:</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL) &lt;Vinothkumar.Eswaran@de.b=
osch.com&gt;; yocto@yoctoproject.org<br>
<b>Betreff:</b> RE: Sub-directories from Git in SRC-URI<o:p></o:p></span></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Hi,</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Here is one way to man=
age this use case.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">In the SRC_URI variabl=
e, you set the git repo access.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Now let&#8217;s say th=
at your sub-directory relative path is &#8220;src/myapp&#8221;.</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Son now you just have =
to add to your recipe this line:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:Consolas">S =3D &quot;${WORKDIR}/git/src/myapp&quot;</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">It is not optimized fr=
om a disk usage point of view (a full copy of the repo files is in
</span><span style=3D"font-size:10.0pt;font-family:Consolas">${WORKDIR}/git=
)</span><span style=3D"color:#400000"> but it works.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Regards,</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde</span></b><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">Honeywell</span></b><span style=3D"fo=
nt-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#707070"> | Sa=
fety and Productivity Solutions</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"FR">De&nbsp;:</span></b><span lang=
=3D"FR"> <a href=3D"mailto:yocto-bounces@yoctoproject.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>De la part de</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL)<br>
<b>Envoy=E9&nbsp;:</b> mardi 11 avril 2017 08:25<br>
<b>=C0&nbsp;:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
<b>Objet&nbsp;:</b> [yocto] Sub-directories from Git in SRC-URI</span><o:p>=
</o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Hallo,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">May I now is it possible to include a sub-directory f=
rom git repo in the SRC_URI of bitbake recipe.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Also in SRC_URI is it possible to include a directory=
 instead of a single file?</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I know I could create a tar file of a directory and i=
nclude it , but I would like to know is it possible to include directory as=
 a SRC_URI.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"DE" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Mit freundlichen Gr=FC=DFen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b><br>
<br>
<br>
</span><o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_7efedc166d4c4ebdbf2a1938d1ff4f7dFEMBX1014deboschcom_--
