Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 920DEE00A48; Fri, 20 Jan 2017 04:44:18 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3398BE009C9
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 04:44:15 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta21.fe.bosch.de (Postfix) with ESMTP id D5C97C0A96
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 13:44:14 +0100 (CET)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 8457CD80204
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 13:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1484916252;
	bh=HXL9RHaF/1tRzd34Fc2fICPPgxpEx3/aNGjLfsyJSt4=; l=10;
	h=From:From:Reply-To:Sender;
	b=XiRk5yhLXZ2i0y9TKaQKV+nccwxAAnAN7/tHcdF5n9Z5/Z046iFaEyfGpOwHz1fiE
	+8mBQF/A8Amxm/tB9qDXiZ7LQ73sOjrq460HGs6aRka2z5OSLG6QmdHnRCmNSg0In2
	JJ3jLAXoPXCE68W1o/YvwLfnnXn+3yxgazODPBGc=
Received: from FE-MBX1013.de.bosch.com (vsgw24.fe.internet.bosch.com
	[10.4.98.24])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id 74025238076B
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 13:44:12 +0100 (CET)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	FE-MBX1013.de.bosch.com (10.3.230.71) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Fri, 20 Jan 2017 13:44:12 +0100
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Fri, 20 Jan 2017 13:44:12 +0100
From: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto - Building initramfs to run a shell script for the support
	of IMA/EVM
Thread-Index: AdJzGuVjZCflyykdQleXdKZSms3h5g==
Date: Fri, 20 Jan 2017 12:44:11 +0000
Message-ID: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.60.65.3]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22834.006
X-TMASE-MatchedRID: /nTLv0nrl3u36bWU2xVUioSvKOGqLLPKW0/6WPAv0J/bWK3UwSS0N12H
	rZeiYIJvgiXUx3OpENk7VWdTZkzhRf6y3glXD8ngoxWB033D5MIOJR/+FC5hhRSVYgoSgYGZToF
	ahLiZtCFqma+kKU//7rGLJFbKVMYMhQAimBygnyLtMsi+dai/0SFq4bKNOR/1+Cckfm+bb6AjXk
	AuBohODuA/PMLmI+sGYY3T2eomXFxHf9hUoJnuf7sbsw46OgYU31asM/gsp2nHtB+yzAhXFcEau
	LbH4aQcV6FnwkMygZdr7kxHWmzJaGoP2Q08Uz0YNs3S39zaoXYytf6nW43O0BS11FlOYRohXalr
	5okxvJqf189awv9YNKOzLgjJhC8IcBTC9SlEjKp6a7qHolmGuZkShYcLpGH9BL+V9lD389E/uAM
	uIS3/V5hT889iimDCdacgeXd4g9yXBXaJoB9JZxRFJJyf5BJehGBk0/7pshJsZUSYh+N/e0vzo8
	4JzbmkOnOOeIzXyOTyE2gVLVUe8EqFnMGbk2hVYt+6Hg/xlpm52PmjHBO5F+MlEspXIZXLmpm4o
	/S+YLPB8JiUnB+CwA==
Subject: Yocto - Building initramfs to run a shell script for the support of IMA/EVM
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
X-List-Received-Date: Fri, 20 Jan 2017 12:44:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b2610f4ee0fe434e9820784963e2e0c3FEMBX1014deboschcom_"

--_000_b2610f4ee0fe434e9820784963e2e0c3FEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto community developers,

I am currently working on the task of porting an existing build system to Y=
octo to create customized Linux distribution for an embedded product. I hav=
e successfully created a bare box image, the kernel and root file system im=
age and the system startup is working fine.

I am now investigating on creating the initramfs using Yocto and have gone =
through the Yocto documents for the same.

Adding the options :
INITRAMFS_FSTYPES =3D "cpio.gz"
INITRAMFS_IMAGE =3D "custom-initramfs"  --> my recipe which inherited core-=
image.bb recipe

Results in the creation of 'custom-image-20170120105621.rootfs.cpio.gz' fil=
e.

We are using initramfs to run a script which before mounting the root file =
system checks for ima policy and also responsible for loading the evm-keys.=
 In short, the initramfs contains a script which is executed before mountin=
g the main root file system. So I think I need to follow a different proced=
ure than the one I mentioned above for my use case. Also we are using syste=
md as the init system and for the initramfs I don't need sysv or systemd as=
 all I will do is running a script in initramfs.

Is there a better way of creating this structure in Yocto, any information =
would be helpful.


Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1

Tel. +49(7062)911-02


--_000_b2610f4ee0fe434e9820784963e2e0c3FEMBX1014deboschcom_
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello Yocto community developers,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am currently working on the task of porting an exis=
ting build system to Yocto to create customized Linux distribution for an e=
mbedded product. I have successfully created a
 bare box image, the kernel and root file system image and the system start=
up is working fine.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am now investigating on creating the initramfs usin=
g Yocto and have gone through the Yocto documents for the same.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Adding the options :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">INITRAMFS_FSTYPES =3D &quot;cpio.gz&quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">INITRAMFS_IMAGE =3D &quot;custom-initramfs&quot;&nbsp=
;
</span><span style=3D"font-size:10.0pt;font-family:Wingdings">=E0</span><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"> my =
recipe which inherited core-image.bb recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Results in the creation of &#8216;custom-image-201701=
20105621.rootfs.cpio.gz&#8217; file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">We are using initramfs to run a script which before m=
ounting the root file system checks for ima policy and also responsible for=
 loading the evm-keys. In short, the initramfs
 contains a script which is executed before mounting the main root file sys=
tem. So I think I need to follow a different procedure than the one I menti=
oned above for my use case. Also we are using systemd as the init system an=
d for the initramfs I don&#8217;t need
 sysv or systemd as all I will do is running a script in initramfs.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Is there a better way of creating this structure in Y=
octo, any information would be helpful.<o:p></o:p></span></p>
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
BEG-PT/PJ-IOT1<br>
</b><br>
Tel. </span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:black">&#43;49(7062)911-02
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:black"><br>
<br>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_b2610f4ee0fe434e9820784963e2e0c3FEMBX1014deboschcom_--
