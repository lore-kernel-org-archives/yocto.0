Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.35075.1605536655003685337
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 06:24:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=YXRgBO2T;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1605536655; x=1763216655;
  h=from:to:subject:date:mime-version;
  bh=GxIJIBUHItKgqhsuJjX2cTXpHrBxm57pZd5ASUzu9EE=;
  b=YXRgBO2TFGwYJ/YWMTqnnuWhVBMW9LS/XZAw+qPwQWffawdJqgHRfdHU
   p/wIWjgU+//WTqCptj6BcJzee3tAQy+knbM/fhCYXaZDIkqQ7FJH+jGuH
   pCAHrY53YZDqSnJzS7a7G4t5caZJRb0mx4qZJllLYg4Ew/aTUWJDBC+UO
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3A3GS6KB0pzvpawR5fsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?seMeLvad9pjvdHbS+e9qxAeQG9mCtLQd0LOd7fyocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTiwbalvIBi4sAnducgbjIR/Iast1xXFpWdFdf?=
 =?us-ascii?q?5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPGAz/83rqALM?=
 =?us-ascii?q?TRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VSi+46ptVRTljj?=
 =?us-ascii?q?oMOTwk/2HNksF+jLxVrg+9pxJxwIDUYZ2aO/Vlc6zHYd8aR3BMUtpNWyBfBI63?=
 =?us-ascii?q?cosBD/AGPeZdt4TxqVwArRy4BQm3Guzg1CRIimfr1qMnz+QuDx/G0xImH9kTrn?=
 =?us-ascii?q?nfsdH5O6kPX+ywwqXD0DLOb+hK2Tjj9ojHbBYhreuJXbJ3d8rR0lcgGB3ejliL?=
 =?us-ascii?q?soPqJS2a1v8NsmiA8+pvS+evi3U9pw5tpTivw94hh4/UjY0a1l7K7z92wJopJd?=
 =?us-ascii?q?KmUk57Z8apHpVeuiyGNoZ7QMIvT391tCskybALuZq2cScFxZg6yRDSa/OJf5WM?=
 =?us-ascii?q?7x/hVOucLjZ1iG97db+7hBu/8lWtxvDzWMSyzV1ErTJFn8HRunwRzRDe5MqKRu?=
 =?us-ascii?q?Fj8ku/2TuDzQHe5+BcLUwpiabXMZEsz7EqmpcXq0jOHS37lUPrh6GMbEok4PKn?=
 =?us-ascii?q?6+H/b7XjoZ+TKpF7hxnlMqQrhsy/GeM4MhUSX2SD+eSzyrnj/UrhTbpWlPI2ib?=
 =?us-ascii?q?XWsJXBJckfoqO0ABNZ3pg55xa5FTiqys8XkmMZI1JeeBOHlJTpNE/LIPDjF/uw?=
 =?us-ascii?q?n1OskDJzy/DHOL3uHInNI2DenLv9Z7pw5UxRxBAtwdxB559YELAMLfPrVk/0rt?=
 =?us-ascii?q?PYDxs5MwKuw+bgDdVwzpgeWX6RDa+HLqzSt0WE5ucoI+mKf48apijyK+M+6vH1?=
 =?us-ascii?q?l3A2h0QdfKmy3ZsLdn+4G+9mL1+Fbnrrh9cNCX0KsRYmTOz2lF2CViZeZna1X6?=
 =?us-ascii?q?0g+jE7D5mrDYPCRoC2nLyBxz23H51RZm9aFlCMFm/od5+DW/cOdi2dPtNhniYD?=
 =?us-ascii?q?Vbi7RI9ynS2p4UXrzLF7KcLQ+zYErtTy09Np4PXJkhM//iAyCN6SmSnZXmZ/gm?=
 =?us-ascii?q?QgQz4twLs5sEt21lCby696jvdEU9tJ6KUafB09MMuW6ut8EN3/QUaJRcuEVlug?=
 =?us-ascii?q?Cv7uQQwKD5h5l8QSblhwHZOniRbY0iexK7UcmqeaH4A597ma1H/0cZUug03a3b?=
 =?us-ascii?q?Us2gF1CvBEMner0/Zy?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BADhirJf/0LhJQpigQmCcoF7gUCyA?=
 =?us-ascii?q?gsBAQEBAQEBAQEIAS8EAQGGayY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQ?=
 =?us-ascii?q?mAQQbgx+BfrELgTSFV4RoCQGBLo8dPo8VBJsCnSwHA4Jtj3OLGSuheZNSoFMCB?=
 =?us-ascii?q?AIEBQIVgWuBenCDOk8XAg2caIErAgYKAQEDCY03gREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2D7BADhirJf/0LhJQpigQmCcoF7gUCyAgsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGGayY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQmAQQbgx+BfrELg?=
 =?us-ascii?q?TSFV4RoCQGBLo8dPo8VBJsCnSwHA4Jtj3OLGSuheZNSoFMCBAIEBQIVgWuBenC?=
 =?us-ascii?q?DOk8XAg2caIErAgYKAQEDCY03gREBAQ?=
X-IronPort-AV: E=Sophos;i="5.77,482,1596499200"; 
   d="scan'208,217";a="326458503"
X-IronPort-AV: E=Sophos;i="5.77,482,1596499200"; 
   d="scan'208,217";a="172286522"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto bbappend question
Thread-Topic: #yocto bbappend question
Thread-Index: Ada8Ip3M51rFt1N3QHGPBpOAzwgAuA==
Date: Mon, 16 Nov 2020 14:24:07 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.164803157796BF81.27635@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2f7e1585e8fc4fa28c932f498c4f70cfbaesystemscom_"

--_000_2f7e1585e8fc4fa28c932f498c4f70cfbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


If a recipe has a "do_install_append" can I create a bbappend file to do a =
"do_install_append_append" in order to change 1 line in that routine, or do=
 I need to just
replace the "do_install_append" routine  entirely with a copy and the modif=
ied line?

--_000_2f7e1585e8fc4fa28c932f498c4f70cfbaesystemscom_
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
<p class=3D"MsoNormal">If a recipe has a &#8220;do_install_append&#8221; ca=
n I create a bbappend file to do a &#8220;do_install_append_append&#8221; i=
n order to change 1 line in that routine, or do I need to just<o:p></o:p></=
p>
<p class=3D"MsoNormal">replace the &#8220;do_install_append&#8221; routine&=
nbsp; entirely with a copy and the modified line?<o:p></o:p></p>
</div>
</body>
</html>

--_000_2f7e1585e8fc4fa28c932f498c4f70cfbaesystemscom_--
