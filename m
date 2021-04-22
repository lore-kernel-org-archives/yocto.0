Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.2200.1619117480581602118
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 11:51:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=INRhWJiz;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1619117480; x=1776797480;
  h=from:to:subject:date:mime-version;
  bh=b3FpX16fjfdNQCXM7SPTduyhlmVuMDuJjuuV1oPUJ/M=;
  b=INRhWJizV8ZnTCMTsXWmzJLDUug7ZKxG4Dt7kaz8UW9o8nnUqa5aHpF1
   RblZQmPzDPX1bgEYnW2EbIKMCcpmbofYcgr5M/yTe/nOiGkulFmfAU1iJ
   Kh3CcINgEcIAtcdKxme3boIYmkaAGXRk591ckeUssSiKoIRUPKAXcWF9w
   w=;
IronPort-SDR: XNgxQ0IM1G0ll/1ZIIeQmweDgsq9l9nO9iGI7s6GcnPab7vT4Oa7ahRffs8PiKx9sqiL0DZjwe
 O7oXNHKr0xVQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AO/LxTB/aOhHImv9uWay8ngc9DhMPi/DPJgcQr?=
 =?us-ascii?q?6AfoPdwSMyLwZ3uMQTl6Ol3ixeRBMOHsqMC0bOO+P64EUU7or+5+EgYd5JNU?=
 =?us-ascii?q?xJXwe43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdF?=
 =?us-ascii?q?QviPgRpOOv1BpTSj8Oq3Oyu5pHfeQpFiCe5bL9oMhm6sBndusYXjId+N6081?=
 =?us-ascii?q?gbHrnxUdupM2GhmP0iTnxHy5sex+J5s7SFdsO8/+sBDTKv3Yb02QaRXAzo6P?=
 =?us-ascii?q?W814tbrtQTYQguU+nQcSGQWnQFWDAXD8Rr3Q43+sir+tup6xSmaIcj7Rq06V?=
 =?us-ascii?q?Di+86tmTgLjhSEaPDA77W7XkNR9gqJFrhy8uxxxzY3aYICJO/VxZa7SZ88WR?=
 =?us-ascii?q?WhbU8pNSyBNHIWxZJYPAeobOuZYqpHwq1UJoxu5AwmsH/3gxSFThnPuwKY0z?=
 =?us-ascii?q?vghHh/Y3AM+GdIFrWrZp8jxOKgcTO65yafExijEYvNNxTfy9pbIfQ4nof2WW?=
 =?us-ascii?q?LJwdszRyVIxGAzblVWdspfqMCmL2eQWs2mb9PZgWvyqi248sQ1+vj+vxsI1h?=
 =?us-ascii?q?4TPm4kaxUzK+z9jz4YpOd23VlR7Ydi8HZVeuSyXK4p7T8EjTm12pSo31L4Lt?=
 =?us-ascii?q?J6/cSUFx5kr2hDRZvyIfYSV5h/uVuacLDh5iX54Zr+ygxW//Eu9x+HhWce51?=
 =?us-ascii?q?ktBoCldktTUq3wBywbf58aFR/dn40us3TiC2xrS5+xFOUw4iLbXJ4Quz7M/j?=
 =?us-ascii?q?JYevl7PEjL2lUjwkaSYbF8r+vKy5OTierjmo5icOJJqhQzmKaQun9C/Afw/M?=
 =?us-ascii?q?ggTQ2iX4eS826Pn/U3+WLhKiP02kq/Dv5DfPsQWpa60DxNJ3oo+8Rq/CS2p3?=
 =?us-ascii?q?M4DknYdMl1FYxKGj5P1O17QJfD4Fu2zjEirkDdu3/zGP7vhDYvRLnXbjbvtY?=
 =?us-ascii?q?axx5kBexQYp0NxS45xZBqsALf/yQkPxscbXDh49Mwy62ebnD9B925sFWWKTH?=
 =?us-ascii?q?KCZLr3dsVmS6uIqJOmMYpQVtyjjJPg+/PPhlmU2lkEGfaipxpsXdG63HvF9I?=
 =?us-ascii?q?0mDfXXshdIBHX8QvgUiVOzqlEGCUTlLaneyWKIz+i07CIW9AIfHR4Ctm6CB3?=
 =?us-ascii?q?DyhEpxWYWBJFkyMEXDwd4WeXPcMajydLdN9kjAeUrihUYAhhlmSs1qw2r1sM?=
 =?us-ascii?q?u38/iwDqYmlxd9+++rLjxYw+DdoScOH3CvFG3BzlX8Pbzs3x7xk5116wUuEy?=
 =?us-ascii?q?bJ/gfFTCZpU/fwfASkgMpuJhcl9Dcv/VxmFNuyVRUirRJ2NSXEMdZN7i4sVf?=
 =?us-ascii?q?0tjFtPkixfFxCenGJcfnrGQFYco/6fHmXP2IpAumD79yKA9ggx+EYN0Pmq8i?=
 =?us-ascii?q?/snnzU=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A93qG9Kme5zYxj8k8dJBF3fhHq2npDfP6im?=
 =?us-ascii?q?dD5ilNYBxZY6WkvuillvgDyFvQgDEeRHkvlbm7Sc+9aFnb8oN45pRUGL+kUh?=
 =?us-ascii?q?XvtmfAFvAa0aLJxTr8FyristNMzKsISdkBNPTcBUV35PyKhDWQPM0nxLC8kZ?=
 =?us-ascii?q?yApfzZyE5qVhwvUYxahj0TNi++MmlbADZLHoA4Ep303Ls3mxOFdW4MZsq2Ql?=
 =?us-ascii?q?kpNtKzwOHjr57tbR4YCxNP0mDn4l2VwYTnGBuV1Ap2aUIt/Z4e8HPImwG8xq?=
 =?us-ascii?q?Kvv+DT8G6460bv7o9bkNak991bBMbksLl2FhzQjG+TBLhJavmvrTo1qOag5B?=
 =?us-ascii?q?IQnNzFs34bVfhb2jf0RCWVqQGo8xT82DwugkWSsWOwsD/Gm4jFYx4UT+BGnp?=
 =?us-ascii?q?lUdxPF7VFIhqAG7It7m1i0kLd6NlfhpU3GiuTgZlVRum2YjUFnqsIrs0F2bK?=
 =?us-ascii?q?s5T9ZqwbA38UZNVI4aGi/n4p1PKpgVMOjQ4e8Tal+TZW3YuG4H+q3RYl0/Gw?=
 =?us-ascii?q?7DXUQYoMyS1FFt7Q1E5lpdwtcekHcG/I88TJcB5/2sCNUWqI1z?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DlAwCDxIFg/0LBJQpagQkJgUmBI4F?=
 =?us-ascii?q?/gUyxF4F8CwEBAQEBAQEBAQgBNAQBAYZLJjUIDgIDAQEMAQEGAQEBAQEGBAG?=
 =?us-ascii?q?BA4VRDII4IoQeXgEMCWsmAQQbgmqBfqpDgTQaAmWEWIR4gTqBZYUdgl6GBEG?=
 =?us-ascii?q?PLQSif55qBwODDp0QHhCUUQOQOZUlo0kCBAIEBQIWgVYBghBwgzpPFwKceoE?=
 =?us-ascii?q?rAgYKAQEDCYt/gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2DlAwCDxIFg/0LBJQpagQkJgUmBI4F/gUyxF4F8CwEBA?=
 =?us-ascii?q?QEBAQEBAQgBNAQBAYZLJjUIDgIDAQEMAQEGAQEBAQEGBAGBA4VRDII4IoQeX?=
 =?us-ascii?q?gEMCWsmAQQbgmqBfqpDgTQaAmWEWIR4gTqBZYUdgl6GBEGPLQSif55qBwODD?=
 =?us-ascii?q?p0QHhCUUQOQOZUlo0kCBAIEBQIWgVYBghBwgzpPFwKceoErAgYKAQEDCYt/g?=
 =?us-ascii?q?RABAQ?=
X-IronPort-AV: E=Sophos;i="5.82,243,1613433600"; 
   d="scan'208,217";a="368294990"
IronPort-SDR: gGuq/1smRu/cVnBZlNSjhWDdhx7D7m0kojLMHj3+Fr3cT28GwnG2zpj6Z/qCOsbpXoBml30n4B
 rzgry1tJfMu1dPfiEuaj/tOdNcwoF32nE+0Td2gd7WI2oTIIN+UgTj1t0tLZjkFlAkVsniLtR5
 Z9wmjQe+1BFEcXvZR6GBMHZQYKI5MYi8MUGHqAw4/J8RJ7TGi79UgKAmKrPWojIY6vebdFmNWn
 GqPPZvBIFcMx7FpC9jDUbgxKJyMcdU70Szl+eg5Ab2HZ8hJq8HQuemCp+jGXyAjaTwX4BMoSmr
 LZw=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk #cmake
Thread-Topic: #yocto #sdk #cmake
Thread-Index: Adc3p8DXjZ2GOZacQO6IBxhR92MSyQ==
Date: Thu, 22 Apr 2021 18:51:16 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.167842C5B6229391.407@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c5446dc22b8b4c78aee3e1c5f7db5d03baesystemscom_"

--_000_c5446dc22b8b4c78aee3e1c5f7db5d03baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


When setting up an SDK, (standard or extensible),  build which will be usin=
g cmake, is there a proper way to pre-configure OEToolchainConfig.cmake for=
 ones env/applications ?

Currently I build the SDK, install, and then manually edit...

Thanks,
Steve

--_000_c5446dc22b8b4c78aee3e1c5f7db5d03baesystemscom_
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
<p class=3D"MsoNormal">When setting up an SDK, (standard or extensible), &n=
bsp;build which will be using cmake, is there a proper way to pre-configure=
 OEToolchainConfig.cmake for ones env/applications ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently I build the SDK, install, and then manuall=
y edit&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_c5446dc22b8b4c78aee3e1c5f7db5d03baesystemscom_--
