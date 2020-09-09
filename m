Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.16805.1599667093502603762
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 08:58:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=SKxAKGtm;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1599667093; x=1757347093;
  h=from:to:subject:date:mime-version;
  bh=5uc88Dnb6TK1gpfptNyIMB2iFdojl9V6uQiId9JcU5M=;
  b=SKxAKGtmpqyAKVrHwycmUwye3gGiewXn4fqzUmjmGEpRn+C9Dyto+s54
   CLpyDhSdi4RTh9VkrmNh/Hg0vCvftEhOjZHWjXEDnoUyTtcK2Jph2FETX
   ifrfRqi1J2dMqR7ZTv5KPrbtqRmcG/HUr68KcfMAjmEeoLSBI2uw0wHMC
   8=;
IronPort-PHdr: =?us-ascii?q?9a23=3AbKTRGxw0FjLqGr3XCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?0uoVKPad9pjvdHbS+e9qxAeQG9mCtbQd1red4/mocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTuwbalvIBi2rQjducobjZZ/Iast1xXFpWdFdf?=
 =?us-ascii?q?5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPGAz/83rqALM?=
 =?us-ascii?q?TRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VSi+46ptVRTljj?=
 =?us-ascii?q?oMOTwk/2HNksF+jLxVrg+9pxJxwIDUYZ2aO/Vlc6zHYd8aR3BMUtpNWyBfBI63?=
 =?us-ascii?q?cosBD/AGPeZdt4TxqVwArRy4BQm3Guzg1CRIimfr1qMnz+QuDx/G0xImH9kTrn?=
 =?us-ascii?q?nfsdH5O6kPX+ywwqXD0DLOb+hK2Tjj9ojHbBYhreuJXbJ3d8rR0lcgGB3ejliL?=
 =?us-ascii?q?soPqJS2a1v8NsmiA8+pvS+evi3U9pw5tpTivw94hh4/UjY0a1l7K7z92wJopJd?=
 =?us-ascii?q?KmUk57Z8apHZ9Muy2EKoZ7XsIvTWF0tCg1yLALpYC2cDQLxZg52hPTdvOKf5aG?=
 =?us-ascii?q?7x/9W+ucLip0inJrdr6jmhu+7VSsx+nyW8SyzV1EoC1FktzWuXAM0Rze8syHSv?=
 =?us-ascii?q?pm8UeuwjmAyQHT6udYIU8qj6rbM4QtwqU3lpcVrE/NHTf2lV3rgKOKbEkp9Oql?=
 =?us-ascii?q?5/75brn4ppKQLY55hwDmPqgzhsCzG+s1PwcUU2Wf4+ix17/u8EvkS7tQlPI2iL?=
 =?us-ascii?q?PWsJXCKMQeoa62HhFa35446xa6EzemyNMYnWQbLF5deBKIkYzpO1bWLf/kF/i/?=
 =?us-ascii?q?mEijkDJwx/3COrDsAYnBImbZnLfnZ7lx8VVTxxAtwtBE55NUEa0BL+z2Wk/qrt?=
 =?us-ascii?q?DXEhg5Mwmsz+bmDtVyyJ8eVHqSDqOFKq/fv12F6vgxL+WSZIIZojfwJvk96/7r?=
 =?us-ascii?q?l3A5mFsdfaez3ZsQbXC1Bu9mI1mHbnrynNgBF30Gvg85TOzsk12NTyBcZ22pUq?=
 =?us-ascii?q?0n/D40FpmmDIfYRoCxnrOB2Ty7EodKaWBBD1CACW3oeJmcW/cQdCKSJddskzwD?=
 =?us-ascii?q?Vbe9V48h0gqjtAv7y7p8MurU4TcUtJLk1Ndp++3Tkgky9SZzD8SfzW6CU310kn?=
 =?us-ascii?q?kPRz8s06As6XB6nx2S1qNkhNRcFMdP/LVYVQwmMobGyO53AMy0XRjONJ/dWVGt?=
 =?us-ascii?q?XtKOBTAqUsl30tgFf0FlAdKggxvfmS2wDOlGuaaMAcl+16XaxHX8PII18GrLyq?=
 =?us-ascii?q?Qnx3JuAvZ0dCfu0rVj+hbeAcjMlEOCmquxXa4V0TXc73uOyHHIt0ZdBl0jGZ7Z?=
 =?us-ascii?q?VGwSMxOF5e/y4VnPGuej?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D9BAAm+1hf/0LhJQpfHgEBCxIMQIJyg?=
 =?us-ascii?q?XeBNAqyAwsBAQEBAQEBAQEHARsUBAEBhl8lOBMCEAEBBgEBAQEBBgQBhkgBC4I?=
 =?us-ascii?q?3IoNNXgGBACYBBBuDH4F+tFqBNIVThQCBOI8HPoNsB4p+IgSaAZxpBwOCZYhok?=
 =?us-ascii?q?UEqhDCcJpJRn1cCBAIEBQIVgWuBenCDOQlHFwINjlaKK4NldDcCBgoBAQMJjTe?=
 =?us-ascii?q?BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2D9BAAm+1hf/0LhJQpfHgEBCxIMQIJygXeBNAqyAwsBAQE?=
 =?us-ascii?q?BAQEBAQEHARsUBAEBhl8lOBMCEAEBBgEBAQEBBgQBhkgBC4I3IoNNXgGBACYBB?=
 =?us-ascii?q?BuDH4F+tFqBNIVThQCBOI8HPoNsB4p+IgSaAZxpBwOCZYhokUEqhDCcJpJRn1c?=
 =?us-ascii?q?CBAIEBQIVgWuBenCDOQlHFwINjlaKK4NldDcCBgoBAQMJjTeBEQEB?=
X-IronPort-AV: E=Sophos;i="5.76,409,1592870400"; 
   d="scan'208,217";a="308649407"
X-IronPort-AV: E=Sophos;i="5.76,359,1592870400"; 
   d="scan'208,217";a="165997158"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #sdk #yocto Appears SDK searching host for files that are only present on target side
Thread-Topic: #sdk #yocto Appears SDK searching host for files that are only
 present on target side
Thread-Index: AdaGwB/KGZBqstnvRzSknWqboLZIrQ==
Date: Wed, 9 Sep 2020 15:57:27 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.163328BFD191E99D.22921@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4312c3b3977547d3b8b1ba0f113c7410baesystemscom_"

--_000_4312c3b3977547d3b8b1ba0f113c7410baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Looking to understand why the SDK is searching the host/native (x86_64-poky=
sdk-linux) side when it should be looking at the target side (corei7-64-pok=
y-linux) ...

All the "crt" files are present under the target side.

Can someone explain what might be miss-configured ?, or better, point me to=
 a possible patch ?

I have seen some talk on-line about similar issues, but no clear indication=
 what the issue was, or how it was resolved...

I am running Yocto clang 6.0.1, cmake 3.8.2, under "rocko", my SDK is a sta=
ndard SDK, not extensible.

11:31 smonsees@yix490016 ~/yocto/test/beignet-Release_v1.2/mybuild>make
Scanning dependencies of target gbeinterp
[  0%] Building CXX object backend/src/CMakeFiles/gbeinterp.dir/gbe_bin_int=
erpreter.cpp.o
[  0%] Linking CXX shared library libgbeinterp.so
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find crt=
i.o: No such file or directory
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find crt=
beginS.o: No such file or directory
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find -ls=
tdc++
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find -lm
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find -lg=
cc_s
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find -lc
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find -lg=
cc_s
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find crt=
endS.o: No such file or directory
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/lib=
exec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld: cannot find crt=
n.o: No such file or directory
collect2: error: ld returned 1 exit status
make[2]: *** [backend/src/libgbeinterp.so] Error 1
make[1]: *** [backend/src/CMakeFiles/gbeinterp.dir/all] Error 2
make: *** [all] Error 2
11:31 smonsees@yix490016 ~/yocto/test/beignet-Release_v1.2/mybuild>

Thanks,
Steve



--_000_4312c3b3977547d3b8b1ba0f113c7410baesystemscom_
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
<p class=3D"MsoNormal">Looking to understand why the SDK is searching the h=
ost/native (x86_64-pokysdk-linux) side when it should be looking at the tar=
get side (corei7-64-poky-linux) &#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All the &#8220;crt&#8221; files are present under th=
e target side. <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone explain what might be miss-configured ?,=
 or better, point me to a possible patch ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have seen some talk on-line about similar issues, =
but no clear indication what the issue was, or how it was resolved&#8230;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running Yocto clang 6.0.1, cmake 3.8.2, under &=
#8220;rocko&#8221;, my SDK is a standard SDK, not extensible.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">11:31 smonsees@yix490016 ~/yocto/test/beignet-Releas=
e_v1.2/mybuild&gt;make<o:p></o:p></p>
<p class=3D"MsoNormal">Scanning dependencies of target gbeinterp<o:p></o:p>=
</p>
<p class=3D"MsoNormal">[&nbsp; 0%] Building CXX object backend/src/CMakeFil=
es/gbeinterp.dir/gbe_bin_interpreter.cpp.o<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp; 0%] Linking CXX shared library libgbeinterp.=
so<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find crti.o: No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find crtbeginS.o: No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find -lstdc&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find -lm<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find -lgcc_s<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find -lc<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find -lgcc_s<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find crtendS.o: No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/r=
eal-ld: cannot find crtn.o: No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">collect2: error: ld returned 1 exit status<o:p></o:p=
></p>
<p class=3D"MsoNormal">make[2]: *** [backend/src/libgbeinterp.so] Error 1<o=
:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** [backend/src/CMakeFiles/gbeinterp.dir/a=
ll] Error 2<o:p></o:p></p>
<p class=3D"MsoNormal">make: *** [all] Error 2<o:p></o:p></p>
<p class=3D"MsoNormal">11:31 smonsees@yix490016 ~/yocto/test/beignet-Releas=
e_v1.2/mybuild&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_4312c3b3977547d3b8b1ba0f113c7410baesystemscom_--
