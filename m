Return-Path: <prvs=7168f938d4=G.Rajender@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 010DC4C800A7
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2011 09:00:04 -0500 (CDT)
X-AuditID: c0a8466b-b7b19ae000007f17-0f-4e146a62f6a9
Received: from POCITMSEXHUB03.LntUniverse.com ( [10.2.1.60])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	BF.3F.32535.26A641E4; Wed,  6 Jul 2011 19:30:02 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Wed, 6 Jul 2011 19:30:02 +0530
From: G Rajender <G.Rajender@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: minimal yocto images not booting on Beagleboard-xM rev B
Thread-Index: Acw74l5K4ORxEju3RvGGf4nQNnzv3w==
Date: Wed, 6 Jul 2011 14:00:01 +0000
Message-ID: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.240.92]
MIME-Version: 1.0
X-Brightmail-Tracker: AAAAAA==
Subject: minimal yocto images not booting on Beagleboard-xM rev B
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Jul 2011 14:00:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9AAFA2F5BB120A448121E0997AE4438834482092POCITMSEXMB03Ln_"

--_000_9AAFA2F5BB120A448121E0997AE4438834482092POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am new to Yocto project and Beagleboard.

I am using Beagleboard-xM rev B. I got the information about Yocto project =
by search. Yocto is a good open platform for Embedded developers for target=
 specific architectures.

I have started working on Yocto project to build a LTP (Linux Test Project)=
 Test frame work for Beagleboard-xM rev B. I have downloaded the Yocto rele=
ase 1.0.1 and Beagleboard-xM BSP from the Yocto website. I have installed t=
he Yocto project poky build tool and demo image in my Host PC (Ubuntu 10.04=
)as per poky quick start guide.

Now I am trying to execute the meta-bsp (meta-beagleboard) binaries (built =
images) on beagleboard-xM rev B as per README. Hardware file. But the beagl=
eboard-xM revision B is not booting with theses BSP images.

Also I want add the Beagleboard BSP to the BBlayers of poky. I am unable to=
 understand the procedure explained in BSP developer's guide.

Can anyone suggest or share the experiences about above problems.

Thanks in advance and looking for your kind response.


Thanks and regards,

Rajender.G







Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9AAFA2F5BB120A448121E0997AE4438834482092POCITMSEXMB03Ln_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I am new to Yocto project and Beagleboard. </p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I am using Beagleboard-xM rev B. I got the informati=
on about Yocto project by search. Yocto is a good open platform for Embedde=
d developers for target specific architectures.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I have started working on Yocto project to build a L=
TP (Linux Test Project) Test frame work for Beagleboard-xM rev B. I have do=
wnloaded the Yocto release 1.0.1 and Beagleboard-xM BSP from the Yocto webs=
ite. I have installed the Yocto project
 poky build tool and demo image in my Host PC (Ubuntu 10.04)as per poky qui=
ck start guide.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal"><b>Now I am trying to execute the meta-bsp (meta-bea=
gleboard) binaries (built images) on beagleboard-xM rev B as per README. Ha=
rdware file. But the beagleboard-xM revision B is not booting with theses B=
SP images.</b></p>
<p class=3D"MsoNormal"><b>&nbsp;</b></p>
<p class=3D"MsoNormal"><b>Also I want add the Beagleboard BSP to the BBlaye=
rs of poky. I am unable to understand the procedure explained in BSP develo=
per&#8217;s guide.</b></p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal"><b>Can anyone suggest or share the experiences about=
 above problems.</b></p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Thanks in advance and looking for your kind response=
.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Thanks and regards,</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Rajender.G</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
www.larsentoubro.com <br>
<br>
</b>This Email may contain confidential or privileged information for the i=
ntended recipient (s) If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.
</body>
</html>

--_000_9AAFA2F5BB120A448121E0997AE4438834482092POCITMSEXMB03Ln_--
