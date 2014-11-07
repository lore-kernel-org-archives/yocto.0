Return-Path: <anthony.b.padua@lmco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 112EBE0076C; Fri,  7 Nov 2014 09:59:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.31.106.12 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0014]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 4824 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Nov 2014 09:59:02 PST
Received: from mailfo01.lmco.com (mailfo01.lmco.com [192.31.106.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBAEDE002A8
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 09:59:02 -0800 (PST)
Received: from HVXHTPN11.us.lmco.com (hvxhtpn11.ems.lmco.com [158.186.149.29])
	by mailfo01.lmco.com (8.14.5/8.14.5) with ESMTP id sA7GcTVG014932
	for <yocto@yoctoproject.org>; Fri, 7 Nov 2014 16:38:37 GMT
Received: from HVXDSP41.us.lmco.com ([fe80::f842:f7dd:ab78:45f6]) by
	HVXHTPN11.us.lmco.com ([fe80::edb4:3b6e:fd89:3dee%15]) with mapi id
	14.03.0174.001; Fri, 7 Nov 2014 11:38:34 -0500
From: "Padua, Anthony B" <anthony.b.padua@lmco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Truncated 64 bit return from kernel space
Thread-Index: Ac/6pzaMHn2JiUCwSfKYTDvG6K6OXg==
Date: Fri, 7 Nov 2014 16:38:33 +0000
Message-ID: <AC814B99C7C45E44AF2061B27C57E2450A5C2FBE@HVXDSP41.us.lmco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.186.156.90]
MIME-Version: 1.0
X-LM-Outbound: External 158.186.149.29 cntry=us
	g=c8c827e96a8291970fab92d1c1446f4a q=sA7GcTVG014932 m=8
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.28,
	0.0.0000
	definitions=2014-11-07_07:2014-11-07, 2014-11-07,
	1970-01-01 signatures=0
X-Mailman-Approved-At: Mon, 10 Nov 2014 07:58:04 -0800
Subject: Truncated 64 bit return from kernel space
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
X-List-Received-Date: Fri, 07 Nov 2014 17:59:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AC814B99C7C45E44AF2061B27C57E2450A5C2FBEHVXDSP41uslmcoc_"

--_000_AC814B99C7C45E44AF2061B27C57E2450A5C2FBEHVXDSP41uslmcoc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

I have a custom kernel module driver that returns a truncated 64-bit value.=
 The first 32-bits are missing.

The driver is called using llseek() and the address used in user space and =
in kernel space is 64-bits, but when returning from kernel space, the first=
 32-bits gets truncated, only returning the second half. I've used printk o=
n the address value before returning it in the driver and it is the full 64=
-bit address. The return is using loff_t, and I'm using a genericx86-64 Lin=
ux kernel.

Any thoughts?
Thanks,
-----------------------------
Anthony B. Padua

--_000_AC814B99C7C45E44AF2061B27C57E2450A5C2FBEHVXDSP41uslmcoc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Vladimir Script";
	panose-1:3 5 4 2 4 4 7 7 3 5;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
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
	font-family:"Times New Roman","serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;">Hello all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;">I have a custom kernel module driver that returns a t=
runcated 64-bit value. The first 32-bits are missing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;">The driver is called using llseek() and the address u=
sed in user space and in kernel space is 64-bits, but when returning from k=
ernel space, the first 32-bits gets truncated, only returning
 the second half. I&#8217;ve used printk on the address value before return=
ing it in the driver and it is the full 64-bit address. The return is using=
 loff_t, and I&#8217;m using a genericx86-64 Linux kernel.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;">Any thoughts?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,&quot;serif&quot;">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:22.0pt;font-family:&quot;Vl=
adimir Script&quot;">-----------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;font-family:&quot;Vl=
adimir Script&quot;;color:#00B050">Anthony B. Padua<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AC814B99C7C45E44AF2061B27C57E2450A5C2FBEHVXDSP41uslmcoc_--
