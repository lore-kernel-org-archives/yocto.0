Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17C4FE00C5B; Tue, 27 Sep 2016 07:04:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [82.130.99.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 623ACE00C45
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 07:04:37 -0700 (PDT)
Received: from CAS10.d.ethz.ch (172.31.38.210) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Tue, 27 Sep 2016 16:04:32 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS10.d.ethz.ch ([fe80::cce:fc66:7b56:a06a%10]) with mapi id
	14.03.0319.002; Tue, 27 Sep 2016 16:04:36 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: Zhenhua Luo <zhenhua.luo@nxp.com>, Chris Z. <winotu.email@gmail.com>
Thread-Topic: [yocto] fetcher failure
Thread-Index: AdIX7cTViZAReqQYSJeJl3PiSMwDqgApPimS///8CoCAACJACP//4iqAgABpKME=
Date: Tue, 27 Sep 2016 14:04:35 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20FA7F24@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20FA7C19@MBX214.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20FA7E3F@MBX214.d.ethz.ch>,
	<CAEjjReJMjr=dVvxhUtYB0y_SwGQvOYEEe0MTNLqufmozC=iJLA@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20FA7E8A@MBX214.d.ethz.ch>,
	<DB6PR0401MB2630C54A0D4A35595E2A8307EECC0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0401MB2630C54A0D4A35595E2A8307EECC0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetcher failure
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
X-List-Received-Date: Tue, 27 Sep 2016 14:04:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20FA7F24MBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20FA7F24MBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If I replace


-SRC_URI =3D "git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2.0.x=
 \

with

+SRC_URI =3D "git://git.freescale.com/ppc/sdk/linux.git;nobranch=3D1 \


then it works, at least on Ubuntu 16.04 build host
(on ScientificLinx 6.4 fetch does not work, but I simply copied fetched fol=
der from Ubuntu)




________________________________
From: Zhenhua Luo [zhenhua.luo@nxp.com]
Sent: Tuesday, September 27, 2016 11:44
To: Anicic Damir (PSI); Chris Z.
Cc: yocto@yoctoproject.org
Subject: RE: [yocto] fetcher failure

I have submitted a patch for the fetch issue, can you please give a try? Yo=
u can use master-next branch of meta-fsl-ppc for the validation.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Anicic Damir (PSI)
Sent: Tuesday, September 27, 2016 5:34 PM
To: Chris Z. <winotu.email@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] fetcher failure

Why should I check,
the meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_4.1.bb has

SRC_URI =3D "git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2.0.x =
\
SRCREV =3D "bd51baffc04ecc73f933aee1c3a37c8b44b889a7"

If that is wrong freescale should correct it.

And besides, the downloaded file gets deleted.

But, OK, I'll try.

--_000_DB23C91B06C303459B24BC3208AF424A20FA7F24MBX214dethzch_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:SimSun}=0A=
@font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:SimSun}=0A=
@font-face=0A=
	{font-family:Tahoma}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
a:link, span.MsoHyperlink=0A=
	{color:#0563C1;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:#954F72;=0A=
	text-decoration:underline}=0A=
p=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
span.EmailStyle18=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:#1F497D}=0A=
span.EmailStyle19=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:windowtext}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page WordSection1=0A=
	{margin:1.0in 1.25in 1.0in 1.25in}=0A=
-->=0A=
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#95=
4F72">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;"><span lang=3D"en-US"><font color=3D"black" size=3D"2" face=3D"Tahoma=
"><span style=3D"font-size:10pt;" dir=3D"ltr">If I replace<br>
<br>
</span></font></span><br>
<span lang=3D"en-US"><font color=3D"black" size=3D"2" face=3D"Tahoma"><span=
 style=3D"font-size:10pt;" dir=3D"ltr"><span lang=3D"en-US"><font color=3D"=
black" size=3D"2" face=3D"Tahoma"><span style=3D"font-size:10pt;" dir=3D"lt=
r">-SRC_URI =3D &quot;git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsd=
k-v2.0.x
 \<br>
<br>
with<br>
<br>
&#43;SRC_URI =3D &quot;git://git.freescale.com/ppc/sdk/linux.git;nobranch=
=3D1 \<br>
</span></font></span><br>
<br>
then it works, at least on Ubuntu 16.04 build host<br>
(on ScientificLinx 6.4 fetch does not work, but I simply copied fetched fol=
der from Ubuntu)<br>
<br>
<br>
<br>
<br>
</span></font></span>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF291376"><font color=3D"#000000" =
size=3D"2" face=3D"Tahoma"><b>From:</b> Zhenhua Luo [zhenhua.luo@nxp.com]<b=
r>
<b>Sent:</b> Tuesday, September 27, 2016 11:44<br>
<b>To:</b> Anicic Damir (PSI); Chris Z.<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] fetcher failure<br>
</font><br>
</div>
<div></div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">I have submitted a patch for the fe=
tch issue, can you please give a try? You can use master-next branch of met=
a-fsl-ppc for the validation.
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Best Regards,
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">Zhenhua</span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0in 0in 0i=
n 4.0pt">
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
; font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.o=
rg [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Anicic Damir (PSI)<br>
<b>Sent:</b> Tuesday, September 27, 2016 5:34 PM<br>
<b>To:</b> Chris Z. &lt;winotu.email@gmail.com&gt;<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] fetcher failure</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt; font-family:&quot;Tahoma&quot;,sans-serif; color:black">Why sho=
uld I check,<br>
the meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_4.1.bb has<br>
<br>
SRC_URI =3D &quot;git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2=
.0.x \<br>
SRCREV =3D &quot;bd51baffc04ecc73f933aee1c3a37c8b44b889a7&quot;<br>
<br>
If that is wrong freescale should correct it.<br>
<br>
And besides, the downloaded file gets deleted.<br>
<br>
But, OK, I'll try.</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20FA7F24MBX214dethzch_--
