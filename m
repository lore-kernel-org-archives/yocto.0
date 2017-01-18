Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AFB6E00990; Wed, 18 Jan 2017 01:32:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FAACE00985
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:32:20 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta23.fe.bosch.de [139.15.243.227])
	by imta21.fe.bosch.de (Postfix) with ESMTP id 3C185C0318
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:32:19 +0100 (CET)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta23.fe.bosch.de (Postfix) with ESMTP id CE604158021E
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1484731936;
	bh=KAI+MVexlLjS4lI4jOpi15UNwxIzM1BrPZmF/eE6oMs=; l=10;
	h=From:From:Reply-To:Sender;
	b=anBNKLkm7T9dweJDepm8ZhIxkdpYgEQTd7RsiFtY078KCUb+/ZAhTgSjVrkJXhMvB
	HUlYUcUylIOQpmXJJPpgfOk0UtQaPkZkvfo4Fp35dDJ53umJq0kwa8uc+Le+n0TWzL
	p56J+SWH3x6xu31WhpWZYy73SAO63oZBhc+2hBqo=
Received: from SI-MBX1014.de.bosch.com (vsgw24.fe.internet.bosch.com
	[10.4.98.24])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id BA5B72380972
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:32:16 +0100 (CET)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	SI-MBX1014.de.bosch.com (10.3.230.46) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Wed, 18 Jan 2017 10:32:16 +0100
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Wed, 18 Jan 2017 10:32:16 +0100
From: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Whats the better way to maintain the Yocto project for an
	embedded product - git submodules or repo or using Combo-layer
Thread-Index: AdJxa0AvayYjtkENR3OglBU0R5j2Ug==
Date: Wed, 18 Jan 2017 09:32:15 +0000
Message-ID: <b1e7905ec4364774a6848060c6ebee45@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.60.65.3]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22828.006
X-TMASE-MatchedRID: tObliBijFBkhX558azWeJISvKOGqLLPKW0/6WPAv0J9nnK6mXN72m71P
	55wwlnQMGttp1J7INnC+r7sdHyWLsQ/nlYXAq1o9i/vfAS7Q3HsQC81tuAfPvio1qDe65b7ifmK
	fyen8+8osWkToOtkQfnbb3TL/LlBdgRy3HHXz6cbwI5EzJETTVDGZtPrBBPZrGtRDsD0yuYYy19
	37/FVoPMc6+3Pt/nrV8EDiCRF/PgnhUYZPldDIOxkuPL3W/szl6txGPiTJVDJPkajTRZCnxu//v
	bMLiEkVnfCgnZR65gXocyiWIpet6KOUVKBdY9a49TVembY3XZL8BlbXy+O/WjqI/Q1zONHSZUb3
	A3apXYDiPiWvhafhGKwQUp5/xlTGp/nT+xnI1R26kMgL3jbYOjMffNZYCk3DxQetL66Hi22FAf5
	iylR8Wnb4Bm7FqQnLXHn0K2CbIexZxuGjBHE907YUrknUqEL71ViV5EWK7TubKItl61J/yZUdXE
	/WGn0FIoOsWgr8s10AyZjSuX920w7Dcm93UGOxxaJk2rxSVEPPpxnYjwGxGWKUaT0vej4/
Subject: Whats the better way to maintain the Yocto project for an embedded product - git submodules or repo or using Combo-layer
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
X-List-Received-Date: Wed, 18 Jan 2017 09:32:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b1e7905ec4364774a6848060c6ebee45FEMBX1014deboschcom_"

--_000_b1e7905ec4364774a6848060c6ebee45FEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto community members,

Currently I am working on the task of using Yocto to build customized Embed=
ded Linux distribution for an embedded product. I have created a new BSP la=
yer for my project (meta-custommachine) and have successfully created bareb=
ox, Linux Kernel and root filesystem images for my board.

Now I wish to create an internal repository for Yocto project to track and =
maintain the changes. I am unclear what is the better way to create an repo=
sitory. I googled for the same and found that the Freescale community is ma=
intaining their Yocto project using the repo tool. So I tried to have a sim=
ilar structure for my project. I created a repo with the default.xml file w=
hich has the information about where to fetch the repositories for poky, me=
ta-ptx and meta-custommachine. I am seeing the folder structures as expecte=
d and build is also fine.

I had a discussion with one of my senior team member about this and he is i=
nterested in using git submodules. So I tried to add the layers meta-custom=
machine and meta-ptx within poky repository as sub-modules. Is this the pro=
per way of adding new layers within the poky repository? Or may I know how =
can I maintain a Yocto repository using git submodules. Does git submodules=
 work better than repo tool ?

I am newbie to create and maintain a repo, so I am not able to visualize wh=
at is the future effect of choosing one over the other. Currently I am usin=
g the krogoth release of Yocto and planning to update this with new Yocto r=
eleases.

Any information on the topic would be helpful.

Mit freundlichen Gr=FC=DFen / Best regards
Vinothkumar Eswaran




--_000_b1e7905ec4364774a6848060c6ebee45FEMBX1014deboschcom_
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
span.EmailStyle17
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
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">Hello Yocto community members,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">Currently I am working on the task of using Yocto to build customize=
d Embedded Linux distribution for an embedded product. I have created a new=
 BSP layer for my project (meta-custommachine)
 and have successfully created barebox, Linux Kernel and root filesystem im=
ages for my board.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">Now I wish to create an internal repository for Yocto project to tra=
ck and maintain the changes. I am unclear what is the better way to create =
an repository. I googled for the same and found
 that the Freescale community is maintaining their Yocto project using the =
repo tool. So I tried to have a similar structure for my project. I created=
 a repo with the default.xml file which has the information about where to =
fetch the repositories for poky,
 meta-ptx and meta-custommachine. I am seeing the folder structures as expe=
cted and build is also fine.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">I had a discussion with one of my senior team member about this and =
he is interested in using git submodules. So I tried to add the layers meta=
-custommachine and meta-ptx within poky repository
 as sub-modules. Is this the proper way of adding new layers within the pok=
y repository? Or may I know how can I maintain a Yocto repository using git=
 submodules. Does git submodules work better than repo tool ?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">I am newbie to create and maintain a repo, so I am not able to visua=
lize what is the future effect of choosing one over the other. Currently I =
am using the krogoth release of Yocto and planning
 to update this with new Yocto releases.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif">Any information on the topic would be helpful.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Verdana&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-family:&quot;Verdana=
&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen / Best regards
<br>
Vinothkumar Eswaran<br>
<br>
</span><span lang=3D"DE" style=3D"font-size:9.0pt;font-family:&quot;Verdana=
&quot;,sans-serif;color:black"><br>
<br>
</span><span lang=3D"DE" style=3D"font-size:12.0pt;font-family:&quot;Verdan=
a&quot;,sans-serif"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_b1e7905ec4364774a6848060c6ebee45FEMBX1014deboschcom_--
