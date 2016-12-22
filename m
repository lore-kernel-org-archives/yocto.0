Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62FD1E0071C; Wed, 21 Dec 2016 23:23:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from imta22.fe.bosch.de (imta22.fe.bosch.de [139.15.243.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DECC5E00566
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 23:23:49 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta22.fe.bosch.de (Postfix) with ESMTP id 6E4868403D5
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:23:48 +0100 (CET)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 49CB8D80224
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1482391426;
	bh=jpQyvB5Am2cPJhfHt+Vi7PerVhR3YFrGQmOWyGYLvQI=; l=10;
	h=From:From:Reply-To:Sender;
	b=EvnMnX62VRFeG4eJZ6GzpCd+cJwMxY7gG1MqUxOAjj1aWkM7/ojiLTQp2nJkgY4gX
	14o3chhEL+lT0HnvFNDy90giVkxjOCo/573cmqPdSOamLEykfTrp1L+dM/AsFpPfpl
	TkgUB/fXLMjP3hr2GrUfoW8z5iLSK1zlgfHx8twk=
Received: from SI-MBX1014.de.bosch.com (vsgw23.fe.internet.bosch.com
	[10.4.98.23])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id 03C4E2380BF9
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:23:46 +0100 (CET)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	SI-MBX1014.de.bosch.com (10.3.230.46) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Thu, 22 Dec 2016 08:23:45 +0100
Received: from FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471]) by
	FE-MBX1014.de.bosch.com ([fe80::f960:d6c4:9c04:b471%16]) with mapi id
	15.00.1236.000; Thu, 22 Dec 2016 08:23:45 +0100
From: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: =?Windows-1252?Q?Adding_multiple_patches_to_SRC=5FURI_in_a_recipe_=97_Yoc?=
	=?Windows-1252?Q?to?=
Thread-Index: AdJcJBIDG+abAf4dQIqaqOr5Fj1YhQ==
Date: Thu, 22 Dec 2016 07:23:44 +0000
Message-ID: <c6d9b66bf50d4dbfaa4e3b5a5191263e@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.60.68.18]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22774.006
X-TMASE-MatchedRID: JsblGaCcX/zhzkz+1Og1+wRH1Nr7oERdLDXLh8geyV/2MoElhGl3VWqs
	CKGiHb6Ru3pzcVWIPx3j1V6fNzkhBwW7x3JNh878nVTWWiNp+v+RPtwwl97omw7AH5/ezluziTl
	QRzdEM2FFdxK3OrEEPAme9sBVaV82H4YwklDneDMZLjy91v7M5dbkquUQVQpudDwP5ItpCOwcSR
	F9JP5Ozi4jb1n1eNA354mbosKUuYfCKxdd3mKUa4oLoibgjVEX+Gz435tISEHimKcLRvsB1fBYR
	o06eVj38vzD3/0Zl0qFbYEMj70WzDScgMqgJnG/EgwM8US/pTF9e88fgoklswwv1ZvdCH+FmPMv
	FiO40LCPL1kerA0y5LpzKJyXj6+MJ+COL7VFN06eAiCmPx4NwGmRqNBHmBve3TrdyO4a2u1FGCd
	0S0NCslO5XDJc1sGPMuKkTpYrdvwUazJOBGom+AmfSj7qr9u4PpCuffGH9zI=
X-Mailman-Approved-At: Thu, 22 Dec 2016 08:25:48 -0800
Subject: =?UTF-8?B?QWRkaW5nIG11bHRpcGxlIHBhdGNoZXMgdG8gU1JDX1VSSSBpbiBhIHJlY2lwZSDigJQgWW9jdG8=?=
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
X-List-Received-Date: Thu, 22 Dec 2016 07:23:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c6d9b66bf50d4dbfaa4e3b5a5191263eFEMBX1014deboschcom_"

--_000_c6d9b66bf50d4dbfaa4e3b5a5191263eFEMBX1014deboschcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am creating a BSP to customized board using Yocto. I have some hundred pl=
us patches for the Linux kernel and barebox. To include the patches for the=
 Linux kernel, I have created an .scc file. In the .scc file I have include=
d all the patches required.The SRC_URI option in the kernel recipe looks li=
ke:

    SRC_URI +=3D "https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.0.9.=
tar.xz \
                file://kernelpatch.scc \
                file://kernel-4.0.9.cfg \
                "

For the barebox, I tried to do the same, but it seems it doesn't support .s=
cc files. So now I have included all the hundred plus patches using `file:/=
/patchname.patch`  in  SRC_URI:

            file://patches/0001-drivers.patch \
            file://patches/0002-hw_random-C.patch \
    .
    .
    .
    .
            file://patches/0304-usb-fastbootupport.patch \

I would like to know is there a better way for adding multiple patches to t=
he SRC_URI ?

Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1



--_000_c6d9b66bf50d4dbfaa4e3b5a5191263eFEMBX1014deboschcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
ial&quot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am creating a BSP to customized board using Yocto. =
I have some hundred plus patches for the Linux kernel and barebox. To inclu=
de the patches for the Linux kernel, I have created
 an .scc file. In the .scc file I have included all the patches required.Th=
e SRC_URI option in the kernel recipe looks like:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;
</span><span lang=3D"DE" style=3D"font-size:10.0pt;font-family:&quot;Arial&=
quot;,sans-serif">SRC_URI &#43;=3D &quot;https://cdn.kernel.org/pub/linux/k=
ernel/v4.x/linux-4.0.9.tar.xz \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;file://kernelpatch.scc \<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;file://kernel-4.0.9.cfg \<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,sans-serif">&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">For the barebox, I tried to do the same, but it seems=
 it doesn't support .scc files. So now I have included all the hundred plus=
 patches using `file://patchname.patch` &nbsp;in&nbsp; SRC_URI:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; file://patches/0001-drivers.patch \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; file://patches/0002-hw_random-C.patch \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; file://patches/0304-usb-fastbootupport.patch \<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I would like to know is there a better way for adding=
 multiple patches to the SRC_URI ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen /=
 Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1<br>
</b></span><span lang=3D"DE" style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black"><br>
<br>
</span><span lang=3D"DE"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_c6d9b66bf50d4dbfaa4e3b5a5191263eFEMBX1014deboschcom_--
