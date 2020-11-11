Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.7909.1605107172420912441
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Nov 2020 07:06:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=bLJUYC/f;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1605107172; x=1762787172;
  h=from:to:subject:date:mime-version;
  bh=Gp54Z1+ySRdC+LycK87u+flS6c0Yflou0ypK0NHeaLA=;
  b=bLJUYC/f5pLAZP/EPJPv0nRV8ZFdkxYpkdK01jodRjUNJLrky5/vS2qz
   7g7j+s1jVuUib6J/dTEWUD9DtXyLSf7mZ0PuOCeJJplA9qh12Gc3/Idne
   WX1DAFDppyW73v8Bf1tcNgyOSqL9TCIaql/GasdI3KmqAmzyPmGcyKifS
   A=;
IronPort-PHdr: =?us-ascii?q?9a23=3AOawdqRwH/AvYLx7XCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?2uISIJqq85mqBkHD//Il1AaPAdyErase06GP6+jJYi8p2d65qncMcZhBBVcuqP?=
 =?us-ascii?q?49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6?=
 =?us-ascii?q?JvjvGo7Vks+7y/2+94fcbglVhjexe65+IAuqoQneq8UanZZpJ7osxBfOvnZGYf?=
 =?us-ascii?q?ldy3lyJVKUkRb858Ow84Bm/i9Npf8v9NNOXLvjcaggQrNWEDopM2Yu5M32rhbD?=
 =?us-ascii?q?VheA5mEdUmoNjBVFBRXO4QzgUZfwtiv6sfd92DWfMMbrQ704RSiu4qF2QxLulS?=
 =?us-ascii?q?wJNSM28HvPh8JwkqxVvQ6hqRJ8zY7VfI6aO+FzcbnBcdMYX2dNQtpdWzJHD4ih?=
 =?us-ascii?q?b4UPFe0BPeNAooXzoFUOqh2+BRKyC+zx0T9EnmL907Am0+s/DwHJwgogFM8QvX?=
 =?us-ascii?q?/JqNn6OrocXeW7wKLVyjjDdO9W1inj6IfWdBAtu/SMXbV2ccrK10YgCRjFg06L?=
 =?us-ascii?q?poP/ITyVzeQMs3OH7+V+UOKvkHQrpB12ojiq38ohjJTCiY0JxF7e7yp53Jo1Ks?=
 =?us-ascii?q?OiSE59edOqHpVduj2bOoZ0Q84uXXxktTg5x7AGvZO2cycHxIkpyRPfZPKLboyF?=
 =?us-ascii?q?7xDjWeueIDp0mWxodba8ihux7EWs1+LyW8+p21hJtipIisTAumwX2xHd6MWLUO?=
 =?us-ascii?q?Zx80Ov1DqV1g3e6vlILV0omabBJJMszaQ8m54JvUnAHCL7nlj9grWMeUU+4Oeo?=
 =?us-ascii?q?7vzqYrDhppCBKYB5khr+MqEymsynBuQ4LxQOU3Cb+eui0L3j+lX0QKtQgf02lK?=
 =?us-ascii?q?nZtYvaKMAfq6O9HwNZz5wv6xClADu8y9sXh2cILElFeRKck4jmJVTOIOviAfij?=
 =?us-ascii?q?hFSslS9nx/HAPrL/HpXANmXPnKv7cbtz6UNQ0hc/wNRR6p5OC7wMIOr/Wkrru9?=
 =?us-ascii?q?zZCh85PRa0w+HiCNhlzYMeRXyAArGHP6PUq1OI4+UvI++XZIALpjn9MOMo6OX0?=
 =?us-ascii?q?gnAngl8cfbKp3YcJZ3C9BfRqOVmWYX3pgtsZC2cFohI+TPD2iF2FSTNSZ3GyUL?=
 =?us-ascii?q?4g5jE8E4+mCYbDRpuxgLyaxiu6HppWaXxaClCLCXfobYKEW/USZy2OPs9tiDsE?=
 =?us-ascii?q?VaKuS9xp6Rb7/h79wKZgBu7V4TED84Pk38Ry//fUlxw56XpzFcvXmzWcSGpomU?=
 =?us-ascii?q?sMRiQqx+ZupkdhzU+Z1qp1iOAeEsZcsaBnSAA/YNT5yOphBt3pHkr6YtqXRVDu?=
 =?us-ascii?q?aZ3mPApwBJpl2MMDfUt7XdCliAvO0jGCCbYYjK2QGJEx6eTX2H2ndJU18GrPyK?=
 =?us-ascii?q?R01wpuecBIL2Dz3qM=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BaBwB//Ktf/0HBJQpigQmBUYEhgXuBQ?=
 =?us-ascii?q?LIBCwEBAQEBAQEBAQgBLwQBAYRKghkmOQUNAhABAQYBAQEBAQYEAYZSC4I3IoM?=
 =?us-ascii?q?bBC5RDQGBACYBBBuDH4F+aLBdgTSFV4R1CQGBLo8cPoVlgyImhWgEmn8nnQUHA?=
 =?us-ascii?q?4JtmwsroXeTUaBPAgQCBAUCFYFsgXlwgzpPFwINjjeOMYEsAgYKAQEDCY03gRE?=
 =?us-ascii?q?BAQ?=
X-IPAS-Result: =?us-ascii?q?A2BaBwB//Ktf/0HBJQpigQmBUYEhgXuBQLIBCwEBAQEBAQE?=
 =?us-ascii?q?BAQgBLwQBAYRKghkmOQUNAhABAQYBAQEBAQYEAYZSC4I3IoMbBC5RDQGBACYBB?=
 =?us-ascii?q?BuDH4F+aLBdgTSFV4R1CQGBLo8cPoVlgyImhWgEmn8nnQUHA4JtmwsroXeTUaB?=
 =?us-ascii?q?PAgQCBAUCFYFsgXlwgzpPFwINjjeOMYEsAgYKAQEDCY03gREBAQ?=
X-IronPort-AV: E=Sophos;i="5.77,469,1596499200"; 
   d="scan'208,217";a="462901047"
X-IronPort-AV: E=Sophos;i="5.77,469,1596499200"; 
   d="scan'208,217";a="445750819"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto zeus X11 keyboard
Thread-Topic: #yocto zeus X11 keyboard
Thread-Index: Ada4PCu3R6sPqgP9TpWHjDTQrTMsDQ==
Date: Wed, 11 Nov 2020 15:06:03 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16467C78A0B2EAD5.25274@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33cb45f9e6c1436487c41c78eacc7749baesystemscom_"

--_000_33cb45f9e6c1436487c41c78eacc7749baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am running zeus based image (that runs without the following error under =
 my rocko build), under zeus build I am now seeing the following :

The XKEYBOARD keymap compiler (xkbcomp) reports:
> Warning:          Unsupported high keycode 372 for name <I372> ignored
>                   X11 cannot support keycodes above 255.
>                   This warning only shows for the first high keycode.
Errors from xkbcomp are not fatal to the X server

Under: .../share/X11/xkb/keycodes/evfev I372 is defined as:
        // Extended keys that may be generated on "Internet" keyboards.
        // evdev has standardize names for these.

        <I372> =3D 372;   // #define KEY_FAVORITES           364

Is there a build option for this component I can tweak to correct for this =
?

Thanks,
Steve

--_000_33cb45f9e6c1436487c41c78eacc7749baesystemscom_
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
<p class=3D"MsoNormal">I am running zeus based image (that runs without the=
 following error under &nbsp;my rocko build), under zeus build I am now see=
ing the following :<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The XKEYBOARD keymap compiler (xkbcomp) reports:<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt; Warning:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Unsupported high keycode 372 for name &lt;I372&gt; ignored<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;X11 cannot sup=
port keycodes above 255.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This warning o=
nly shows for the first high keycode.<o:p></o:p></p>
<p class=3D"MsoNormal">Errors from xkbcomp are not fatal to the X server<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under: .../share/X11/xkb/keycodes/evfev I372 is defi=
ned as:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// E=
xtended keys that may be generated on &quot;Internet&quot; keyboards.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // evdev =
has standardize names for these.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;I372&=
gt; =3D 372;&nbsp;&nbsp; // #define KEY_FAVORITES&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 364<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a build option for this component I can twe=
ak to correct for this ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_33cb45f9e6c1436487c41c78eacc7749baesystemscom_--
