Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.8484.1611758818311991268
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 06:47:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=jRJ+xMh8;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611758818; x=1769438818;
  h=from:to:subject:date:mime-version;
  bh=ZNXInBkD29u1PkQZFSGvaWIQKQZE0bvlBRuQ7PgNS9o=;
  b=jRJ+xMh8Q8dwnIcv6XwLmconlNg+gB2soRMXXw/ct9O9RjbJqMqzcOXL
   UfE+yyzSkyz/BbLTxM/FUtDdPLae2cUUOFpTvBUXKyXvXUz3SIQ03hvo6
   XCIgRPrhjYDFRqSKQkIJotP9bl+fzyyja70eUYdAUsrPPYDwIYlOj/HTS
   I=;
IronPort-PHdr: =?us-ascii?q?9a23=3AxNwJfB0t5e+GNLCVsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?sesWK/vxwZ3uMQTl6Ol3ixeRBMOHsqMC0bqd7fuoGTRZp8rY7zZaKN0EfiRGoP?=
 =?us-ascii?q?1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU2nZkJ6?=
 =?us-ascii?q?KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq80bjZF8JqsyxRfEo3VFcP?=
 =?us-ascii?q?lSyW90OF6fhRnx6tqy8ZJ57yhcp/ct/NNcXKvneKg1UaZWByk8PWAv483ruxjD?=
 =?us-ascii?q?TQ+R6XYZT24bjBlGDRXb4R/jRpv+vTf0ueR72CmBIM35Vqs0Vii476dqUxDnli?=
 =?us-ascii?q?EKPCMk/W7Ni8xwiKVboA+9pxF63oXZbp2ZOOZ4c6jAe94RWGhPUdtLVyFZAo2y?=
 =?us-ascii?q?cZYBD/YPM+hbronyu1QBoACkCgWwBuPi0CNEimPo0aA8zu8vERvG3AslH98Wvn?=
 =?us-ascii?q?jaq9L1NKEJUe+r0qbI1i3PZO5L1zfh9ofIbA4uofeRVr9ubMHdzUcgGR7Aglme?=
 =?us-ascii?q?tIfoOCiV1vgTvGiF8eVgU/iji2sgqwF3uTig2NkjipLSi40O0F/L6z55wYYuJd?=
 =?us-ascii?q?2kVkF7ZMWkHIFMuCGdMot7W8UvSHxntygm0LMJo4K7fDQUx5Q9wR7Sc/KJfoaU?=
 =?us-ascii?q?7x/iVuucICl0iG97db+8hxu/9Uetx+LhWse60FtEoTdJn93Ou30N2BHe69WLR+?=
 =?us-ascii?q?V580qi2juCyh3f5O5CLEsplqTbM4YszqMsmpYJv0nOHDX6lFvogKKWbEkp++il?=
 =?us-ascii?q?5/z6brn6vJOROIB5hhvxP6g0h8CyAeI1ORUUUWeB4+Szzrjj8FX8QLVNk/I5jL?=
 =?us-ascii?q?HUsIvfJcQHvq65BBJV0po75xa/ETim1NMYkGEbLFNKYh2HiY3pO0rKLfzkEfuz?=
 =?us-ascii?q?n0mgnC1tx//cJLHuGY/CIWbYkLbhZrZ991BTyA8ozdxF+51UDbQBLOryWk/3qt?=
 =?us-ascii?q?PYEgc0PxGoz+r9Bthw1JkSVXyRDqKZKq/fsF+F6voqI+aWZY8VvDj9K+Ii5/7r?=
 =?us-ascii?q?lXI5gkMdcre33ZQJbnC0BPFmI0KfYXr3nNgOD3wKsxElQ+PwllKCSj5SZ22uX6?=
 =?us-ascii?q?0i4zE7E5iqApvERoComLCBxju0HoVKZmBaDVCBCXfpd4KYVPcQbyKfOcthkj0f?=
 =?us-ascii?q?Vbi9UI8tzxGvtAjmxLp7KerU4jcYtZXh1Ndr++LTiQs+9TtuD8SSgCmxSDQ+j2?=
 =?us-ascii?q?QDWzge2KFkvVc721CIza9gmftaGNdPofRTXU1yYY/bxPB9I9TzQR7aOMaOQ0qh?=
 =?us-ascii?q?Ws+hAzw6UpQ22dBYMGhnHND3xDXE2TGnDqRR34eXCYI59Or3lzjMHIc3gyLdyK?=
 =?us-ascii?q?Q/gl9gR8xJLmCrnYZ1/gXIFpXVnkCC0a2tcPJPj2b26G6fwD/W7wljWwlqXPCd?=
 =?us-ascii?q?UA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B6BAA2fBFg/0HhJQpigQmBT4EjgX6BQ?=
 =?us-ascii?q?7JYCwEBAQEBAQEBAQgBLwQBAYZCJjcGDgIQAQEGAQEBAQEGBAGGUguCOCKDTV4?=
 =?us-ascii?q?BDHQmAQQbgx+BfrQGgTSFWYRtgTiPQT6PHwSDVoIIm0qdfQcDgnabaSuie5Qlo?=
 =?us-ascii?q?VkCBAIEBQIWgWyBe3CDOk8XAg2caoErAgYKAQEDCYsEgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2B6BAA2fBFg/0HhJQpigQmBT4EjgX6BQ7JYCwEBAQEBAQE?=
 =?us-ascii?q?BAQgBLwQBAYZCJjcGDgIQAQEGAQEBAQEGBAGGUguCOCKDTV4BDHQmAQQbgx+Bf?=
 =?us-ascii?q?rQGgTSFWYRtgTiPQT6PHwSDVoIIm0qdfQcDgnabaSuie5QloVkCBAIEBQIWgWy?=
 =?us-ascii?q?Be3CDOk8XAg2caoErAgYKAQEDCYsEgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.79,379,1602547200"; 
   d="scan'208,217";a="343244808"
X-IronPort-AV: E=Sophos;i="5.79,379,1602547200"; 
   d="scan'208,217";a="97064307"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto bbappenf question
Thread-Topic: #yocto bbappenf question
Thread-Index: Adb0uvw4EXpkJXpdRbioCImwp/WTPA==
Date: Wed, 27 Jan 2021 14:46:55 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165E1E1BABB6E352.3243@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a00aee2936d04052b0e474c51dd4f2c5baesystemscom_"

--_000_a00aee2936d04052b0e474c51dd4f2c5baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


What does it mean when a bbappend files does something like the following t=
o a task layer ?

do_install() {
         :
}

Thanks,
Steve

--_000_a00aee2936d04052b0e474c51dd4f2c5baesystemscom_
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
<p class=3D"MsoNormal">What does it mean when a bbappend files does somethi=
ng like the following to a task layer ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<o=
:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_a00aee2936d04052b0e474c51dd4f2c5baesystemscom_--
