Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.1332.1627495110791786539
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jul 2021 10:58:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=Eyvg5dW1;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1627495110; x=1785175110;
  h=from:to:subject:date:mime-version;
  bh=t9q2y3pII1EonF13V/WWUSLcaT7GFQVPqpS35ekj/Vw=;
  b=Eyvg5dW1kziQRYacF3EN5szGKq3XIhXdRimk7wfUOyRaGX9OBQWIdEEE
   zANxNCiWuGjFXjcru5pRvXC+YgruivPA5VnSqin08hpgiyg/2YKIBCW2r
   oYYhJKiTwUVIrUiBJ/ZjixFT7NGdcozD9kt7lEq4YU03ieStM5cN+DGkZ
   E=;
IronPort-SDR: PDz7wHTr5AOhYeNgvP8UsUn1JNipAY2ByQkquFwHjJc9j3jnX0xTzuQ6nD5s5fUrZeFQAofaTx
 9DupVPDzk5xA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AIvatHBSE29RqmVCEfEFKOKJ/QtpsogKfAWYlg?=
 =?us-ascii?q?6HPa5pwe6iut67vIFbYra00ygOTBcOHurkU1KL/iOPJYSQ4+5GPsXQPItRnd?=
 =?us-ascii?q?iQuroEopTEmG9OPEkbhLfTnPGQQFcVGU0J5rTngaRAGUMnxaEfPrXKs8DUcB?=
 =?us-ascii?q?gvwNRZvJuTyB4Xek9m72/q99pHNfwlEnjWwbLd9IBi1rwjaq9Ubj5ZlJqst0?=
 =?us-ascii?q?BXCv2FGe/5RxWNmJFKTmwjz68Kt95N98Cpepuws+ddYXar1Y6o3Q7pYDC87M?=
 =?us-ascii?q?28u/83kqQPDTQqU6XQCVGgdjwdFDBLE7BH+WZfxrzf6u+9g0ySUIcH6UbY5U?=
 =?us-ascii?q?imk4qx2ShHnlT0HOiY5/m/Jl8JwkKxVrhGgpxNjzIHZe5uaOOZ8fq7HYd8WW?=
 =?us-ascii?q?XRNU8BMXCJBGIO8aI4PAvIPMehfqIn9oUAOogWgCgm3HO/k1yJGhmPo0q0kz?=
 =?us-ascii?q?eshFxzN0RI9FN4KvnvasdD5OKkPWu2y16nI0SvMb+1I1jf78oTIdxchofeXX?=
 =?us-ascii?q?b1ub8XR0lIiGBjfgVqOsozkPyiV1vgTvGie9OpsT/6gi2kiqwxopDWk28gjh?=
 =?us-ascii?q?JXTiI0P1lDE6Tt2wJwzJdCgRkB2b8KpHZpSuiybKYd6X90vTmJotSs+xbALt?=
 =?us-ascii?q?oO3ciYKxZoo2hLSb/6KfoiH7x/iSeqcPzN1iXFmdb+imhq8/k6twfD/WMmsy?=
 =?us-ascii?q?FtGszZJnsPCu30PzRDf9NaLR/tn8kqg2TuDzx3f5v1eLU07mqfXMZEszqQtm?=
 =?us-ascii?q?pcTt0nIAzX4l1/sjKCMc0Up4u2o6+P6bbr4vpKcLIp0ih3mMqQph8y/Hfw0M?=
 =?us-ascii?q?ggQUGif/uSxzKHj/ELjT7VMi/02ia3UvIzGKcgHu6K1GQlV3Zw55xmkFTipz?=
 =?us-ascii?q?s8YnHkcLFJZZh2HipPpN0vSL/D/CPezm1WskDF1yPDaJrDtH4nBImLNnbrjZ?=
 =?us-ascii?q?7px9VBQxQopwd1e559YErQBL+jyWk/1utzYFBg5Mwmszub8FNVyyJ0eVnyJA?=
 =?us-ascii?q?qODNaPStlmI5vkxLOaSf48Yoy3yJOI76P71jX45gkMdcres3ZsMcny3AvNmI?=
 =?us-ascii?q?0CBbXr2ntgBCXsKvhY5TOHyiFyCViJcZ2q1X68n4jE7CZmmDZvYRoy3gL2B2?=
 =?us-ascii?q?zu0HoFRZmBeEFCMFnXoeJuYVPcQci6SJdVhkjNXHYSmHsUw0hqysyf+yqF7N?=
 =?us-ascii?q?azF/SYEsor509p47PGVkgs9v3QgHsOWz2alS2BvgnhOVjg9wKdnu0t/x1yfl?=
 =?us-ascii?q?69ijKoLO8ZU4qYDdwA8LpPR1KgyMMz/RA/HNvzBCGudA5/uVSotQ8w8xZkLZ?=
 =?us-ascii?q?EBmFti5phrK0jG7GKMYkqfND5sxpPGPl0PtLtpwni6VnJIqiEMrF5MnCA=3D?=
 =?us-ascii?q?=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AnI/q0a7ppZH9Pxl6SgPXwAXXdLJyesId70?=
 =?us-ascii?q?hD6qkoc20tTiXqrbHXoB17726JtN9/YgBGpTntAsm9qH7nnqKdgrNhQotKPj?=
 =?us-ascii?q?OW3ldARbsKheSNogEIcxeOiNK1vp0QEZSWfeeAaWSS+vyKhTVQfexQo+Wvwe?=
 =?us-ascii?q?SFlO3ex3BiQUVQZ6Rp/25CYDpzWXcGPzWuTaBJbqZ186F8ygZJjh8sAvhTKE?=
 =?us-ascii?q?N1ItT+mw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CBBAB0mgFh/0HhJQpagQkJgVCBI4F?=
 =?us-ascii?q?/gU2zegsBAQEBAQEBAQEIAUEEAQGHViY3Bg4CBAEBARIBAQYBAQEBAQYEAYE?=
 =?us-ascii?q?NhWkMgjUihBkGXgEVayYBBBuCaoF+ql6BATIaAmWEaIUQCQGBMIFlhSSCaoY?=
 =?us-ascii?q?IQ483BKR4n1AHA4Mmni4rEpVnA5B5lgulDgIEAgQFAhaBdoF+cIM6TxcCnHy?=
 =?us-ascii?q?BKwIGCwEBAwmJP4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2CBBAB0mgFh/0HhJQpagQkJgVCBI4F/gU2zegsBAQEBA?=
 =?us-ascii?q?QEBAQEIAUEEAQGHViY3Bg4CBAEBARIBAQYBAQEBAQYEAYENhWkMgjUihBkGX?=
 =?us-ascii?q?gEVayYBBBuCaoF+ql6BATIaAmWEaIUQCQGBMIFlhSSCaoYIQ483BKR4n1AHA?=
 =?us-ascii?q?4Mmni4rEpVnA5B5lgulDgIEAgQFAhaBdoF+cIM6TxcCnHyBKwIGCwEBAwmJP?=
 =?us-ascii?q?4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.84,276,1620691200"; 
   d="scan'208,217";a="396707356"
IronPort-SDR: Y1jnRCm4BXbMEFwKFlgAdfmbnKjKCMSZu2EUsYdaxsi4N8F3Mu1EuMUucDrR5cs6hTO6kTDLdN
 Dvl++irCsSmMvoga5k/IMnmwZJ4pykcWQG5IIMYZ0y6+dQsrTuu+WLqxrzacwEsDj7pC7Uk7OD
 UPpdhCETtE61DeVWBCyU8wN9ZoZ6EAmoyqc/5dAYHJVJUEaTVCtOaBb6WU0UKyUdA3PsKzkfbl
 ceV8ASe0PWUWUTygf/Gf7uEwVkZDhMMJ+HrHDOhQjMPxduUi6JetbjCPW11qNV8cbEf3myFjbY
 mi0=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto -kernel startup of devices/platform/amba/ffa00000.perf-monitor
Thread-Topic: #yocto -kernel startup of
 devices/platform/amba/ffa00000.perf-monitor
Thread-Index: AdeD2fVCm5rRURerTWm/c3pAIcGPHA==
Date: Wed, 28 Jul 2021 17:56:59 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1696062EBC0FA2B7.4256@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_88fc728f8e8d417794d4d1bcbe424e7dbaesystemscom_"

--_000_88fc728f8e8d417794d4d1bcbe424e7dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am running with zeus..., during kernel startup I see perf-monitors setup

[    3.564635] xilinx-axipmon ffa00000.perf-monitor: Probed Xilinx APM
[    3.571139] xilinx-axipmon fd0b0000.perf-monitor: Probed Xilinx APM
[    3.577571] xilinx-axipmon fd490000.perf-monitor: Probed Xilinx APM
[    3.583987] xilinx-axipmon ffa10000.perf-monitor: Probed Xilinx APM

Are these are tied to uio0 thru uio3 ?
Can someone tell me what recipe initializes and brings these in ?
Is it possible to delay their initialization/startup ?
(I would like to have them come into play after I setup the uio_fpga interr=
upt...)
root@cvpx-default ls -la /sys/class/uio
total 0
drwxr-xr-x  2 root root 0 Jan  1  1970 .
drwxr-xr-x 49 root root 0 Jan  1  1970 ..
lrwxrwxrwx  1 root root 0 Jan  1  1970 uio0 -> ../../devices/platform/amba/=
ffa00000.perf-monitor/uio/uio0
lrwxrwxrwx  1 root root 0 Jan  1  1970 uio1 -> ../../devices/platform/amba/=
fd0b0000.perf-monitor/uio/uio1
lrwxrwxrwx  1 root root 0 Jan  1  1970 uio2 -> ../../devices/platform/amba/=
fd490000.perf-monitor/uio/uio2
lrwxrwxrwx  1 root root 0 Jan  1  1970 uio3 -> ../../devices/platform/amba/=
ffa10000.perf-monitor/uio/uio3
lrwxrwxrwx  1 root root 0 Jul 28 17:36 uio4 -> ../../devices/uio_fpga/uio/u=
io4
root@cvpx-default

Thanks,
Steve

--_000_88fc728f8e8d417794d4d1bcbe424e7dbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	{margin:0in;
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running with zeus&#8230;, during kernel startup=
 I see perf-monitors setup
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.564635] xilinx-axipmon ffa0000=
0.perf-monitor: Probed Xilinx APM<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.571139] xilinx-axipmon fd0b000=
0.perf-monitor: Probed Xilinx APM<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.577571] xilinx-axipmon fd49000=
0.perf-monitor: Probed Xilinx APM<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.583987] xilinx-axipmon ffa1000=
0.perf-monitor: Probed Xilinx APM<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#2E75B6;mso-style-textfill-f=
ill-color:#2E75B6;mso-style-textfill-fill-alpha:100.0%">Are these are tied =
to uio0 thru uio3 ?<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#2E75B6;mso-style-textfill-f=
ill-color:#2E75B6;mso-style-textfill-fill-alpha:100.0%">Can someone tell me=
 what recipe initializes and brings these in ?<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#2E75B6;mso-style-textfill-f=
ill-color:#2E75B6;mso-style-textfill-fill-alpha:100.0%">Is it possible to d=
elay their initialization/startup ?<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#2E75B6;mso-style-textfill-f=
ill-color:#2E75B6;mso-style-textfill-fill-alpha:100.0%">(I would like to ha=
ve them come into play after I setup the uio_fpga interrupt&#8230;)<o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">root@cvpx-default ls -la /sys/class/uio<o:p></o:p></=
p>
<p class=3D"MsoNormal">total 0<o:p></o:p></p>
<p class=3D"MsoNormal">drwxr-xr-x&nbsp; 2 root root 0 Jan&nbsp; 1&nbsp; 197=
0 .<o:p></o:p></p>
<p class=3D"MsoNormal">drwxr-xr-x 49 root root 0 Jan&nbsp; 1&nbsp; 1970 ..<=
o:p></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx&nbsp; 1 root root 0 Jan&nbsp; 1&nbsp; 197=
0 uio0 -&gt; ../../devices/platform/amba/ffa00000.perf-monitor/uio/uio0<o:p=
></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx&nbsp; 1 root root 0 Jan&nbsp; 1&nbsp; 197=
0 uio1 -&gt; ../../devices/platform/amba/fd0b0000.perf-monitor/uio/uio1<o:p=
></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx&nbsp; 1 root root 0 Jan&nbsp; 1&nbsp; 197=
0 uio2 -&gt; ../../devices/platform/amba/fd490000.perf-monitor/uio/uio2<o:p=
></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx&nbsp; 1 root root 0 Jan&nbsp; 1&nbsp; 197=
0 uio3 -&gt; ../../devices/platform/amba/ffa10000.perf-monitor/uio/uio3<o:p=
></o:p></p>
<p class=3D"MsoNormal">lrwxrwxrwx&nbsp; 1 root root 0 Jul 28 17:36 uio4 -&g=
t; ../../devices/uio_fpga/uio/uio4<o:p></o:p></p>
<p class=3D"MsoNormal">root@cvpx-default<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_88fc728f8e8d417794d4d1bcbe424e7dbaesystemscom_--
