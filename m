Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7807AE009E7; Wed, 12 Jul 2017 23:21:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.8.186.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D99E009A4
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 23:21:24 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.40,352,1496082600"; d="scan'208,217";a="79632535"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 13 Jul 2017 11:51:17 +0530
Received: from CHN-HCLT-CSHT05.HCLT.CORP.HCL.IN (10.150.12.30) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Thu, 13 Jul 2017 11:51:17 +0530
Received: from CHN-HCLT-MBS02.HCLT.CORP.HCL.IN ([fe80::45e7:d7f7:b243:fdd9])
	by CHN-HCLT-CSHT05.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0339.000;
	Thu, 13 Jul 2017 11:51:17 +0530
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Wifi on wandboard with Yoct0 Morty
Thread-Index: AdL29weARh2ivtCESiyf/rbwmNIfeP//pXEAgACEmbOACSfiRQ==
Date: Thu, 13 Jul 2017 06:21:17 +0000
Message-ID: <7238EEDF8C36444C95B21A966F50FB8851DBD2CA@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>
References: <7238EEDF8C36444C95B21A966F50FB8851DB30BD@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>,
	<bce3d4ba-1a3f-1c94-07c2-ed1fc42fea9d@embexus.com>,
	<7238EEDF8C36444C95B21A966F50FB8851DB3150@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>
In-Reply-To: <7238EEDF8C36444C95B21A966F50FB8851DB3150@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.113]
MIME-Version: 1.0
Subject: Re: Wifi on wandboard with Yoct0 Morty
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
X-List-Received-Date: Thu, 13 Jul 2017 06:21:37 -0000
Content-Language: en-GB
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
</head>
<body fpstyle=3D"1" ocsi=3D"0" bgcolor=3D"#FFFFFF">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello All,<br>
Could you help me in resolving the following issue in Yocto Morty for wifi<=
br>
<br>
Enabled the drivers,<br>
<br>
&lt;*&gt; Broadcom FullMAC wireless cards support =81 =81 <br>
=81 =81 [*] SDIO bus interface support <br>
<br>
At the target getting following errors,<br>
<br>
root@wandboard:~# dmesg | grep brcm<br>
[ 1.739333] brcmfmac_sdio mmc1:0001:1: Direct firmware load for brcm/brcmfm=
ac4330-sdio.bin failed with error -2<br>
[ 1.748200] brcmfmac_sdio mmc1:0001:1: Falling back to user helper<br>
[ 62.783879] brcmfmac: brcmf_sdio_htclk: HT Avail timeout (1000000): clkctl=
 0x50<br>
[ 63.793963] brcmfmac: brcmf_sdio_htclk: HT Avail timeout (1000000): clkctl=
 0x50<br>
root@wandboard:~# <br>
<br>
<br>
<br>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div id=3D"divRpF632827" style=3D"direction: ltr;"><font color=3D"#000000" =
size=3D"2" face=3D"Tahoma"><b>From:</b> Umamahesh Yelchuruvenkata<br>
<b>Sent:</b> 07 July 2017 16:02<br>
<b>To:</b> Ayoub Zaki; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] Wifi on wandboard with Yoct0 Morty<br>
</font><br>
</div>
<div></div>
<div>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">Please check the dmesg log posted, how to overcome the issue. Do you h=
ave procedure how to compile for meta-freescale and meta-freescale-3rdparty=
 layers.<br>
<div style=3D"font-family:Times New Roman; color:#000000; font-size:16px">
<hr tabindex=3D"-1">
<div id=3D"divRpF332173" style=3D"direction:ltr"><font color=3D"#000000" si=
ze=3D"2" face=3D"Tahoma"><b>From:</b> yocto-bounces@yoctoproject.org [yocto=
-bounces@yoctoproject.org] on behalf of Ayoub Zaki [ayoub.zaki@embexus.com]=
<br>
<b>Sent:</b> 07 July 2017 13:35<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Wifi on wandboard with Yoct0 Morty<br>
</font><br>
</div>
<div></div>
<div>
<p>Fo wandboard I use meta-freescale and meta-freescale-3rdparty layers.</p=
>
<p>Wifi works out of the box <span class=3D"moz-smiley-s1"><span>:-)</span>=
</span><br>
</p>
<br>
<div class=3D"moz-cite-prefix">On 07.07.2017 09:59, Umamahesh Yelchuruvenka=
ta wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" id=3D"owaParaStyle">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
body=0A=
	{direction:ltr;=0A=
	font-family:Tahoma;=0A=
	color:#000000;=0A=
	font-size:10pt}=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
-->=0A=
BODY {direction: ltr;font-family: Tahoma;color: #000000;font-size: 10pt;}P =
{margin-top:0;margin-bottom:0;}</style>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">Hi <br>
I am trying to bring up Wifi on wandboard Rev C1 and using Yocto Morty vers=
ion(2.2.2) , I downloaded the firmware bin files from following
<br>
<br>
wget -c <a class=3D"postlink" href=3D"https://git.kernel.org/cgit/linux/ker=
nel/git/firmware/linux-firmware.git/plain/brcm/brcmfmac4330-sdio.bin" targe=
t=3D"_blank">
https://git.kernel.org/cgit/linux/kerne ... 0-sdio.bin</a><br>
wget -c <a class=3D"postlink" href=3D"https://rcn-ee.com/repos/git/meta-fsl=
-arm-extra/recipes-bsp/broadcom-nvram-config/files/wandboard/brcmfmac4330-s=
dio.txt" target=3D"_blank">
https://rcn-ee.com/repos/git/meta-fsl-a ... 0-sdio.txt</a><br>
<br>
Created a folder firmware/brcm under tmp/work/wandboard-fslc-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs/lib<br>
<br>
Enabled the drivers,<br>
<br>
&lt;*&gt; Broadcom FullMAC wireless cards support =81 =81 <br>
=81 =81 [*] SDIO bus interface support <br>
<br>
At the target getting following errors,<br>
<br>
root@wandboard:~# dmesg | grep brcm<br>
[ 1.739333] brcmfmac_sdio mmc1:0001:1: Direct firmware load for brcm/brcmfm=
ac4330-sdio.bin failed with error -2<br>
[ 1.748200] brcmfmac_sdio mmc1:0001:1: Falling back to user helper<br>
[ 62.783879] brcmfmac: brcmf_sdio_htclk: HT Avail timeout (1000000): clkctl=
 0x50<br>
[ 63.793963] brcmfmac: brcmf_sdio_htclk: HT Avail timeout (1000000): clkctl=
 0x50<br>
root@wandboard:~# <br>
<br>
<br>
Please suggest</div>
<span style=3D"font-family:'Arial','sans-serif'; color:gray; font-size:7.5p=
t">
<p class=3D"MsoNormal" style=3D"margin:0in 0in 0pt"><br>
<br>
<font style=3D"font-family:'Arial','sans-serif'; color:gray; font-size:9px"=
>::DISCLAIMER::<br>
---------------------------------------------------------------------------=
-------------------------------------------------------------------------</=
font></p>
<p class=3D"MsoNormal" style=3D"margin:0in 0in 0pt"><font style=3D"font-fam=
ily:'Arial','sans-serif'; color:gray; font-size:11px">The contents of this =
e-mail and any attachment(s) are confidential and intended for the named re=
cipient(s) only.<br>
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
<br>
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
<br>
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
<br>
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
<br>
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
<br>
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
<br>
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
<br>
Before opening any email and/or attachments, please check them for viruses =
and other defects.</font></p>
<p class=3D"MsoNormal" style=3D"margin:0in 0in 0pt"><font style=3D"font-fam=
ily:'Arial','sans-serif'; color:gray; font-size:11px">---------------------=
---------------------------------------------------------------------------=
----------------------------------------------------</font></p>
<br>
<fieldset class=3D"mimeAttachmentHeader" target=3D"_blank"></fieldset> <br>
</span></blockquote>
<br>
<pre class=3D"moz-signature" cols=3D"72">-- =0A=
=0A=
Ayoub Zaki=0A=
=0A=
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ayoub.zaki@embexus.com=
" target=3D"_blank">ayoub.zaki@embexus.com</a>=0A=
Mobile: &#43;49(0)176-62901545=0A=
Skype: ayoub.zaki_2=0A=
<a class=3D"moz-txt-link-freetext" href=3D"https://embexus.com" target=3D"_=
blank">https://embexus.com</a></pre>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

