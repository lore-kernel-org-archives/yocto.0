Return-Path: <kyle.wangdawei@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF0CBE014B0
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 20:16:57 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml212-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AOL17840; Wed, 05 Sep 2012 11:16:56 +0800 (CST)
Received: from SZXEML409-HUB.china.huawei.com (10.82.67.136) by
	szxeml212-edg.china.huawei.com (172.24.2.181) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Wed, 5 Sep 2012 11:15:53 +0800
Received: from SZXEML526-MBS.china.huawei.com ([169.254.7.116]) by
	szxeml409-hub.china.huawei.com ([10.82.67.136]) with mapi id
	14.01.0323.003; Wed, 5 Sep 2012 11:15:48 +0800
From: Wangdawei <kyle.wangdawei@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to add a new environment in poky
Thread-Index: Ac2LFL035MYfNy+ET6C9ASFUVP8VAQ==
Date: Wed, 5 Sep 2012 03:15:47 +0000
Message-ID: <7E29EF69110C17499E6B3A9844CD4FD917AF1EB1@szxeml526-mbs.china.huawei.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.66.60.253]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 05 Sep 2012 15:00:21 -0700
Subject: how to add a new environment in poky
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
X-List-Received-Date: Wed, 05 Sep 2012 03:16:59 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_7E29EF69110C17499E6B3A9844CD4FD917AF1EB1szxeml526mbschi_"

--_000_7E29EF69110C17499E6B3A9844CD4FD917AF1EB1szxeml526mbschi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
         I need to add a new environment that LD_LIBRARY_PATH when I use my=
 own external toolchain .
         I add 1 line in external-toolchain.inc "LD_LIBRARY_PATH =3D. "${EX=
TERNAL_TOOLCHAIN}/i586-target-linux-gnu/lib:"",but there is no effect.when =
I used this toolchain to compile , there also isn't this value , so I want =
to ask how to add a environment in poky ? the run.compile.xxx script can ge=
t the value ?

________________________________

thanks & rgds


--_000_7E29EF69110C17499E6B3A9844CD4FD917AF1EB1szxeml526mbschi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:\534E\6587\7EC6\9ED1;
	panose-1:2 1 6 0 4 1 1 1 1 1;}
@font-face
	{font-family:"\@\534E\6587\7EC6\9ED1";
	panose-1:2 1 6 0 4 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; I need to add a new environment that LD_LIBRARY_PATH when=
 I use my own external toolchain .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; I add 1 line in external-toolchain.inc &#8220;LD_LIBRARY_=
PATH =3D. &quot;${EXTERNAL_TOOLCHAIN}/i586-target-linux-gnu/lib:&quot;&#822=
1;,but there is no effect.when I used this toolchain to compile , there als=
o isn&#8217;t this value , so I
 want to ask how to add a environment in poky ? the run.compile.xxx script =
can get the value ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&#23435;&#20307;">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&#21326;&#25991;&#32454;&#=
40657;;color:black"><br>
thanks &amp; rgds</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_7E29EF69110C17499E6B3A9844CD4FD917AF1EB1szxeml526mbschi_--
