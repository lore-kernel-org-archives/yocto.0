Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA8FE0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 08:52:16 -0700 (PDT)
Received: from mail152-ch1-R.bigfish.com (10.43.68.240) by
	CH1EHSOBE009.bigfish.com (10.43.70.59) with Microsoft SMTP Server id
	14.1.225.23; Fri, 27 Jul 2012 15:52:14 +0000
Received: from mail152-ch1 (localhost [127.0.0.1])	by
	mail152-ch1-R.bigfish.com (Postfix) with ESMTP id 91CD344034F;
	Fri, 27 Jul 2012 15:52:14 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371Ic85dh14ffIzz1202hzz8275bh8275dhz2dh47h2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail152-ch1 (localhost.localdomain [127.0.0.1]) by mail152-ch1
	(MessageSwitch) id 1343404332723957_27465;
	Fri, 27 Jul 2012 15:52:12 +0000 (UTC)
Received: from CH1EHSMHS030.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.228])	by mail152-ch1.bigfish.com (Postfix) with ESMTP id
	A49EC2E006D;	Fri, 27 Jul 2012 15:52:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS030.bigfish.com
	(10.43.70.30) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 27 Jul 2012 15:52:08 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Fri, 27 Jul 2012 10:52:08 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Wangdawei <kyle.wangdawei@huawei.com>
Thread-Topic: [yocto] how to build multi-lib in one project ?
Thread-Index: AQHNbA/G20s8YXSHok69Yzz9E+CPPg==
Date: Fri, 27 Jul 2012 15:52:07 +0000
Message-ID: <CAEsOVNenXXK+WMbvUa-yDCyKRi9mOT5ACYm8sSku_M8rOhegKg@mail.gmail.com>
References: <7E29EF69110C17499E6B3A9844CD4FD917AE756A@szxeml526-mbs.china.huawei.com>
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD917AE756A@szxeml526-mbs.china.huawei.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to build multi-lib in one project ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Jul 2012 15:52:16 -0000
X-Groupsio-MsgNum: 8219
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_";
	type="multipart/alternative"

--_004_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_
Content-Type: multipart/alternative;
	boundary="_000_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_"

--_000_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Did you read the manual? I believe there are multilib instructions in there=
.

-M

On Fri, Jul 27, 2012 at 4:05 AM, Wangdawei <kyle.wangdawei@huawei.com<mailt=
o:kyle.wangdawei@huawei.com>> wrote:
Hi all,
         I want to build a x86_64 system and it also need to support the 32=
 bit lib , that means if I build a package like ncurses I need to compile 2=
 libs , one is for 32 bit another is for 64 bit , How can I achieve my goal=
 ?
         And another question , did anyone have a sample that how to compil=
e glibc-2.11 in poky ?


Best Regards

kyle sivan
Huawei Technologies Co., Ltd.
cell phone: +86-18665326540<tel:%2B86-18665326540>
(Office) 755-28384495
sivan.wang@huawei.com<mailto:sivan.wang@huawei.com>
[cid:image002.png@01CD6C1A.13594760]


_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <18E5C49007A31C49BB36E1519C60FEB1@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<font face=3D"courier new,monospace">Did you read the manual? I believe the=
re are multilib instructions in there.<br>
<br>
-M<br>
</font><br>
<div class=3D"gmail_quote">On Fri, Jul 27, 2012 at 4:05 AM, Wangdawei <span=
 dir=3D"ltr">
&lt;<a href=3D"mailto:kyle.wangdawei@huawei.com" target=3D"_blank">kyle.wan=
gdawei@huawei.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div link=3D"blue" vlink=3D"purple" lang=3D"ZH-CN">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; I want to build a x86_64 system and it also need to suppo=
rt the 32 bit lib , that means if I build a package like ncurses I need to =
compile 2 libs , one is for 32 bit another is for 64 bit , How can I achiev=
e
 my goal ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; And another question , did anyone have a sample that how =
to compile glibc-2.11 in poky ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><span style=3D"font-size:11.0pt;color:#004080" lang=3D"EN-US">Bes=
t Regards<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><span style=3D"font-size:11.0pt;color:#004080" lang=3D"EN-US"><u>=
</u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><b><span style=3D"font-size:11.0pt;font-family:&quot;Segoe Script=
&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">kyle sivan<u></u><u></u></spa=
n></b></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&q=
uot;;color:#333333" lang=3D"EN-US">Huawei Technologies Co., Ltd.</span><b><=
span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&quot;" lang=
=3D"EN-US"><u></u><u></u></span></b></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&q=
uot;;color:#004080" lang=3D"EN-US">cell phone:
<a href=3D"tel:%2B86-18665326540" value=3D"&#43;8618665326540" target=3D"_b=
lank">&#43;86-18665326540</a><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&q=
uot;;color:#004080" lang=3D"EN-US">(Office) 755-28384495<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-align:left;text-autospace:none" align=
=3D"left"><span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&q=
uot;;color:#004080" lang=3D"EN-US"><a href=3D"mailto:sivan.wang@huawei.com"=
 target=3D"_blank"><i><span style=3D"color:blue;text-shadow:auto">sivan.wan=
g@huawei.com</span></i></a></span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Times New Roman&quot;,&quot;serif&quot;;text-shadow:auto" lang=3D"=
EN-US">
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;;text-shadow:auto" lang=3D"EN-US"><img=
 src=3D"cid:image002.png@01CD6C1A.13594760" border=3D"0" height=3D"79" widt=
h=3D"87"></span><span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
</div>
</div>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</body>
</html>

--_000_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_--

--_004_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=6069;
	creation-date="Fri, 27 Jul 2012 15:52:07 GMT";
	modification-date="Fri, 27 Jul 2012 15:52:07 GMT"
Content-ID: <image002.png@01CD6C1A.13594760>
Content-Transfer-Encoding: base64

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
d3/ofdQ/AHIkg9bc73HOAAAAAElFTkSuQmCC

--_004_CAEsOVNenXXKWMbvUayDCyKRi9mOT5ACYm8sSkuM8rOhegKgmailgma_--
