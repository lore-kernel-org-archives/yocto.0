Return-Path: <jkaisner@aeronix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 720C7E00E13; Tue, 19 Nov 2019 13:32:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1002 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Nov 2019 13:32:13 PST
Received: from ns2.aeronix.com (ns2.aeronix.com [174.141.63.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 079CDE00DD3
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 13:32:13 -0800 (PST)
Received: from hornet.aeronix.com (hornet.aeronix.com [10.80.1.77])
	by ns2.aeronix.com (Postfix) with ESMTP id 726D8357
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 16:15:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aeronix.com; s=dkim;
	t=1574198130; bh=NvcsyuHi8qnGON2SDSGaKyi1MQQRHsNa9nXTGFrTIPw=;
	h=From:To:Subject:Date:From;
	b=D4Qr8EVcTf4TOWCjL2TNtRwlHD7HumOhhCYRY8ThPNrJcWunMDxXW/qstmi4R/mCl
	MQaL2vT+HbCCiJJI1YKh1bGCTU2lpt479KPuHa9r98usgOs02+Df5TTsBsA2NwK+T/
	9dYK4X5oYFF0f1wY7DtinbmNsGm1FJWzUYwpAFMQ=
Received: by hornet.aeronix.com (Postfix, from userid 118)
	id 6AC111DF19F; Tue, 19 Nov 2019 16:15:30 -0500 (EST)
From: Jeff Kaisner <jkaisner@aeronix.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Install native recipe into filesystem
Thread-Index: AdWfHh7UuA4Yb49HQkOTbaCrKW9BrA==
Date: Tue, 19 Nov 2019 21:15:29 +0000
Message-ID: <e8888d43e2c44373b8c3affaea368dba@aeronix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Install native recipe into filesystem
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
X-List-Received-Date: Tue, 19 Nov 2019 21:32:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e8888d43e2c44373b8c3affaea368dbaaeronixcom_"

--_000_e8888d43e2c44373b8c3affaea368dbaaeronixcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We have several executables that can run on the target (ARM64) but also on =
the host system (x86).  I added the BBCLASSEXTEND =3D "native" and can buil=
d all the recipes in native mode.  Once done, I would like to be able to in=
stall them on the host system, but don't see a package for them (or underst=
and that part of the process).

Any help would be appreciated.

Regards,
Jeff

--_000_e8888d43e2c44373b8c3affaea368dbaaeronixcom_
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
	font-family:"Calibri",sans-serif;
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
<p class=3D"MsoNormal">We have several executables that can run on the targ=
et (ARM64) but also on the host system (x86).&nbsp; I added the BBCLASSEXTE=
ND =3D &quot;native&quot; and can build all the recipes in native mode.&nbs=
p; Once done, I would like to be able to install them on
 the host system, but don&#8217;t see a package for them (or understand tha=
t part of the process).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
</div>
</body>
</html>

--_000_e8888d43e2c44373b8c3affaea368dbaaeronixcom_--
