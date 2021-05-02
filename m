Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.23147.1619976566360402153
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 May 2021 10:29:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Vkdc/8gt;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1619976566; x=1777656566;
  h=from:to:subject:date:mime-version;
  bh=KlAELz+RYkf5UylcuhmL1iaLC0OwOPtH3wWIRoSj+Bo=;
  b=Vkdc/8gtdVu2NzkEDG+UUaQ4an0dfvVaPccYbrXf3ahc2PeRJZ/+gO3T
   Ye4keelbLjeFBoLUNatOEqIQBeHh4v/Gbxd91hBxnwDHUXAOhNXQH1UpR
   6oWf1t/Hy0ExPT2nsTDP0PeUWEynpLbbnqodifkLj/sdfnfcJgmCD0wsu
   A=;
IronPort-SDR: mYKXtYnIusP7g+N8oUBjyDovDLToq+AiitEU6kqdrVuVVyidrPqPKV4v5gj7rUaqTi7dk7J/B/
 0WTw7M5LCiHQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AYgcdshOEqMD7LZfdVvUl6naTDRdPi93PFj5Q0?=
 =?us-ascii?q?YIujvd0So/mwa6KFHLW6fgltlLVR4KTs6sC17OH9fq7ACdZuMbJmUtBWaQEb?=
 =?us-ascii?q?wUCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdF?=
 =?us-ascii?q?RrlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRG7oR/PusQYnIduJbs9x?=
 =?us-ascii?q?gbKr3BVZ+lY2GRkKE6JkR3h/Mmw5plj8ypRu/Il6cFNVLjxcro7Q7JFEjkoK?=
 =?us-ascii?q?ng568L3uxbNSwuP/WYcXX4NkhVUGQjF7Qr1UYn3vyDnq+dywiiaPcnxTbApR?=
 =?us-ascii?q?TSv6rpgRRH0hCsbMTMy7WfagdFygq1GuhKsvxxxzZDJboGJOvRwfaLdcs8VS?=
 =?us-ascii?q?mdaRMldSy5BD5mgY4cTEeYMO/tToYnnp1sJqBuzHQegCuToyj9OnX/5w7M10?=
 =?us-ascii?q?/85HQrbwQIgA8wBsGrKo9XzKawfT/2+wK3Gwjveav9a1yr25Y/TchA9v/6MQ?=
 =?us-ascii?q?6x/cczLxUkqEAPFiE6QppL7MDOOzekCqHKU4PR7VeOvkG4ntx9+oj20xss2l?=
 =?us-ascii?q?obJgYcVx0nC+C5kz4k7Oce2R1RnYd64DpRQrSeaOpN4TM4sX2xluSQ3x7wYt?=
 =?us-ascii?q?ZKmYiUHy5QqyhrQZvGIboSG7BLuWumMLTp8hn9oeL2yihev/UW+zuDxVcq53?=
 =?us-ascii?q?UtXoiRKlNTHq3MD1wTL58SaVvdx5Ems1DSV2wzN9O1JIVo4mKvbJpI537I8i?=
 =?us-ascii?q?oAfvETDEyPshUn7jKGbel8g9+Wr7ensf6/oqYWGN4BujwHzKqEumsuiDusmK?=
 =?us-ascii?q?gUORG2b+fik1L3k4E35XK1Gjv0onandt5DXPdgbp6GjDA9T14Yj8BKyAyu63?=
 =?us-ascii?q?NgEgHULNlRFdwidg4fyIV7BPuv4DPekg1SwjjhrwuvGMqf9DZXKK3jPiLbhf?=
 =?us-ascii?q?bBj5E5A0Ac/0MxT64haB7wDOv7/RFH9udzCAhI4MwG42+PnB8981oMaV2KPG?=
 =?us-ascii?q?KiZMKbKvF+T+uIgPfeMa5ETuDrnLvgl4PjujWQnllADZqmkxoAYZ2qmEfR9I?=
 =?us-ascii?q?0SZembsjckEEWcRpAYxUOvqiFiaXT5Je3myR7485i08CI++DYbDQZyigKCG3?=
 =?us-ascii?q?CqgGp1WZ3tGCkyXEXvyd4SEXOsDaD6VIs95iDwEUrqhRJE92hGyrgP6zKBnL?=
 =?us-ascii?q?uWHshEf4Njy09Np4MXXlAou7nplCM+B1HmXSGN5lX9OQCU5lugrsEt21lCr1?=
 =?us-ascii?q?aljn+ceBNtY+/RRSAA4OJXAietgBIahdBjGe4LDbVGgWdirGnV5dc483dIIK?=
 =?us-ascii?q?201W+iZz1qLizG2DqEYkfqOA5ov/6/H93L4Kt1s0GrL0bJnhF4jFJgcfVa6j?=
 =?us-ascii?q?7JyolCAT7XClF+Uwv7CSA=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ae5Yoe6j1Y/1TQFMWb2RUevPWCXBQXwR13D?=
 =?us-ascii?q?Abvn1ZSRFFG/Gwv9yymrAgyRTxiCsNVHxIo6H5BICrR3TA+ZlppawYOrm/VA?=
 =?us-ascii?q?fr0VHYSb1Kx43k3jHmBmnC5vdQvJ0QEJRWJdXsATFB7frSzxK/F78bruWv0K?=
 =?us-ascii?q?ftvuvGymcocAcCUdAG0y5YEQCdK0tsWU19KKFRLvGhz+5mgxblRngNdMS8AR?=
 =?us-ascii?q?A+MNTrg9HQjprpbVonKnccmW2zpAil4rL7DBSUty12Ow9n+rss/XPIlAb0/M?=
 =?us-ascii?q?yYwpeG4yXB3Gze5Yk+oqqZ9vJ/AqW36/Q9G3HHkQCzfr17V7mDpjwuge2m5V?=
 =?us-ascii?q?owivbNpgotJMh/wGPqcma5ix3r3AXrzTA0gkWSsmOwsD/OsMb5TDU1B457iY?=
 =?us-ascii?q?dQYnLigXYIjZVZ6uZmzmiZv51YAVflkD7m79bFEzFx0m24uhMZ4Iwupk0ad5?=
 =?us-ascii?q?ARYLhQvoQD/EVTMZsJES7g8rk9HPNjF97R6Z9tACmnRkGchEVJ7fCWGlQLdy?=
 =?us-ascii?q?3qfmEy/va49BV7pzRD43Il+eQjvlEmnahQd6V5?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ABBQBr4I5g/0HhJQpagQkJgnGBf4F?=
 =?us-ascii?q?MsykLAQEBAQEBAQEBCAE0BAEBhk4mOBMCBAEBDAEBBgEBAQEBBgQBgQOFUQy?=
 =?us-ascii?q?COCKEHl4BDAlrJgEEG4JqgX6pQ4E0GgJlhGGFHYE6gWWFIIJihgZBjy8EhRw?=
 =?us-ascii?q?EnXKedAcDgxCdJCEQlGQDkDuVL6NgAgQCBAUCFoFrgXxwgzpPFwKceoErAgY?=
 =?us-ascii?q?KAQEDCYt/gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2ABBQBr4I5g/0HhJQpagQkJgnGBf4FMsykLAQEBAQEBA?=
 =?us-ascii?q?QEBCAE0BAEBhk4mOBMCBAEBDAEBBgEBAQEBBgQBgQOFUQyCOCKEHl4BDAlrJ?=
 =?us-ascii?q?gEEG4JqgX6pQ4E0GgJlhGGFHYE6gWWFIIJihgZBjy8EhRwEnXKedAcDgxCdJ?=
 =?us-ascii?q?CEQlGQDkDuVL6NgAgQCBAUCFoFrgXxwgzpPFwKceoErAgYKAQEDCYt/gRABA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos;i="5.82,268,1613433600"; 
   d="scan'208,217";a="371278408"
IronPort-SDR: APbv33NRiDjN/b14O2Rr3ggov6jT6omxp0axKbu7ByUj6k7RIi9TbmOtM9eZzXVhqqfnDfs6rA
 PhVQlhmPt94jqaFEaZBOpXREEBwVd7S4PFGUO0Mbty1QQwZ+aj9BZNKbN3WCMi9WVRcwRH3+vD
 CYksMD7aa37hitDpk9XUaUzxxRQVyz/KGTTmUVPxPYoQcqoOPNAlAy54FBaPG3ZqYpdPwhrswq
 tGUl6oUe/ZPGFWOaHThg8HCO0CR3BFdLEtVmZpHRHt/EwSBW9HqGMULcJN3roXjmhobi2obZSc
 Z+4=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto cmake configurations
Thread-Topic: #yocto cmake configurations
Thread-Index: Adc/dlwXQGBOIa4IReWXXH+skeusfg==
Date: Sun, 2 May 2021 17:28:24 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.55.153.98]
MIME-Version: 1.0
Message-ID: <MADEUP.167B501B73BC3BE0.4851@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_21e67dc2fa1f4d94a45032687c325585baesystemscom_"

--_000_21e67dc2fa1f4d94a45032687c325585baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am using zeus, standard SDK, cmake...

Can I pre-configure the SDK to setup cmake package search paths ?, say for =
find_package, etc. (i.e. detecting external libraries/programs)...

The majority of my env is configuring properly, but I am finding cmake is s=
etup for a standard linux env with regards to these types of searches, and
I wanted the cmake built in to look at my SDK paths (first by default) when=
 doing such things as detecting python interpreter, libraries, etc.

I am working on third party package unaware of my SDK setup.

Thanks,
Steve

--_000_21e67dc2fa1f4d94a45032687c325585baesystemscom_
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
<p class=3D"MsoNormal">I am using zeus, standard SDK, cmake&#8230;<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can I pre-configure the SDK to setup cmake package s=
earch paths ?, say for find_package, etc. (i.e. detecting external librarie=
s/programs)&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The majority of my env is configuring properly, but =
I am finding cmake is setup for a standard linux env with regards to these =
types of searches, and<o:p></o:p></p>
<p class=3D"MsoNormal">I wanted the cmake built in to look at my SDK paths =
(first by default) when doing such things as detecting python interpreter, =
libraries, etc.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am working on third party package unaware of my SD=
K setup.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_21e67dc2fa1f4d94a45032687c325585baesystemscom_--
