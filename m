Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76FF2E00AF0; Mon, 10 Apr 2017 23:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from imta21.fe.bosch.de (imta21.fe.bosch.de [139.15.243.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA96E00A9B
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 23:20:38 -0700 (PDT)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta21.fe.bosch.de (Postfix) with ESMTP id D53C9C0312
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 08:20:37 +0200 (CEST)
Received: from vsmta14.fe.internet.bosch.com (unknown [10.4.98.54])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 07DEAD80204
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 08:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1491891636;
	bh=jFkiOn1psi53d+aLR0ox9WgNY4nuMWh/7/8FcmAw2WA=; l=10;
	h=From:From:Reply-To:Sender;
	b=Clxl21r3KWgzJHt9qrxvB17YqZR4zpu1afMJwbUzNSX9dt/CmianFXZ/3D3pzs7dR
	P4YxHUzhIl1G7Sg8PPVqzT+mDUpQSmTyvi1HnnMeJKc7NJ911Pf0TyhV1ecJxrFGrB
	Dof+fTwHayXiu25qZi7PqOZvGaaNt2SgWq1BUaoI=
Received: from FE-MBX1014.de.bosch.com (vsgw22.fe.internet.bosch.com
	[10.4.98.11])
	by vsmta14.fe.internet.bosch.com (Postfix) with ESMTP id EF0A0A40290
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 08:20:35 +0200 (CEST)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	FE-MBX1014.de.bosch.com (10.3.230.72) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Tue, 11 Apr 2017 08:20:35 +0200
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Tue, 11 Apr 2017 08:20:35 +0200
From: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Porting a middleware to Yocto
Thread-Index: AdKyiv6iXweoaH6VSPK7TxcglHpraQ==
Date: Tue, 11 Apr 2017 06:20:34 +0000
Message-ID: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.42.245.153]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.1.0.1062-22996.006
X-TMASE-MatchedRID: ryCR11Tsb8ZNfAuy6MOHAbiMC5wdwKqd0r/qCu/cY534JyR+b5tvoF/0
	BWiHnGnTpF/PcR0cUol+t+UbhGIIIHHVdX7/QM0wBEfU2vugRF0TbU1KYGoQp9Q7R95qD2m5JI6
	as8E5MWl8hW63yzPNuLYkV2Ealq/rjhd/b3VVTRaUa50su1E7WxZO94uK1VSBhQMJZ8yMdZizMh
	qIZZH9FxIlB9DMJuXQSaVfaxxV94/trubt8TkL4cG0UNgaZpYqGsvgUMYAn4WW+zaNLK605OygQ
	WdkAVMs0Nt5/j+aSDEUI4s17Ql301mKiy1F9pgLQesjq8XPMbt3Bf9JIqsoeEbaqUVvLFsi2s92
	sh0zjZvZfQx3B5aMuJJTzjwz+GzorhAB5C8gZ6o00dkxYNMRt/8JYSFP1dhVsstO9qYbwEmjxYy
	RBa/qJeBPbNdhr3+dRKnDswi/jzvMBgIwCvEUsHzWoanToyuJXqumg5DW3MUe0gO9q9CzhId3a5
	LQ9aYBVOFnGikW9tk=
Subject: Porting a middleware to Yocto
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
X-List-Received-Date: Tue, 11 Apr 2017 06:20:42 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_6b8d75eafe704438b03324c35d2ce6efFEMBX1014deboschcom_"

--_000_6b8d75eafe704438b03324c35d2ce6efFEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hallo,

For our new project we are planning to use Yocto as a build system to build=
 customized Linux distribution. I have already created a BSP for our custom=
ized hardware with Linux kernel, U-boot and UBIFS rootfs image.

We are internally using a middleware which acts as an abstraction to underl=
ying operating system and provides APIs to application layers. Now the task=
 is to port the middleware to Yocto. The middleware contains lot of make fi=
les and folders which are interdependent and I am at lost on how to start.
I have some 20 directories which contains makefiles and autotool configure.=
ac files to generate lib files.

As of now I have planned to create a new Yocto layer called meta-middleware=
 and a recipe file for individual folders. I then create a package group wh=
ich will include all these recipes and can include this package group as de=
pendency in the recipes of meta-application layer. I am facing a problem li=
ke I have to include headers from other recipes. In this case to include th=
e headers , is it enough to add "DEPENDS =3D recipename" ?
I know my question is relatively vague, but anybody who ported middleware f=
rom another build systems like ptxdist would have faced similar issues. Any=
 input on how you planned to port these source files to Yocto would be help=
ful.


Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1


--_000_6b8d75eafe704438b03324c35d2ce6efFEMBX1014deboschcom_
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hallo,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">For our new project we are planning to use Yocto as a=
 build system to build customized Linux distribution. I have already create=
d a BSP for our customized hardware with Linux
 kernel, U-boot and UBIFS rootfs image.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">We are internally using a middleware which acts as an=
 abstraction to underlying operating system and provides APIs to applicatio=
n layers. Now the task is to port the middleware
 to Yocto. The middleware contains lot of make files and folders which are =
interdependent and I am at lost on how to start.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I have some 20 directories which contains makefiles a=
nd autotool configure.ac files to generate lib files.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">As of now I have planned to create a new Yocto layer =
called meta-middleware and a recipe file for individual folders. I then cre=
ate a package group which will include all these
 recipes and can include this package group as dependency in the recipes of=
 meta-application layer. I am facing a problem like I have to include heade=
rs from other recipes. In this case to include the headers , is it enough t=
o add &#8220;DEPENDS =3D recipename&#8221; ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I know my question is relatively vague, but anybody w=
ho ported middleware from another build systems like ptxdist would have fac=
ed similar issues. Any input on how you planned
 to port these source files to Yocto would be helpful.<o:p></o:p></span></p=
>
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
BEG-PT/PJ-IOT1</b></span><span lang=3D"DE" style=3D"font-size:8.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"><br>
<br>
</span><span lang=3D"DE"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_6b8d75eafe704438b03324c35d2ce6efFEMBX1014deboschcom_--
