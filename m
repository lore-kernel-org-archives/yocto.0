Received: from seout2.web-dns1.com (seout2.web-dns1.com [68.168.119.163])
 by mx.groups.io with SMTP id smtpd.web10.11795.1614356617593647433
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 08:23:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xstreamworship.com header.s=default header.b=n2xMmhL7;
 spf=pass (domain: xstreamworship.com, ip: 68.168.119.163, mailfrom: darcy@xstreamworship.com)
Received: from georgia.web-dns1.com ([162.213.156.66])
	by se1.web-dns1.com with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <darcy@xstreamworship.com>)
	id 1lFftt-0005ib-GW; Fri, 26 Feb 2021 11:23:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=xstreamworship.com; s=default; h=Content-type:Mime-version:Message-ID:To:
	From:Subject:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HFZRSktMzzUqGLuMbxYe9SjUy3tZJNhNIffv1Xhs1Sg=; b=n2xMmhL7kGdshrMZmAmX6EmOnu
	WPtjRrQJxDIFSfFV8RvCGKNqMbHIGGKMbvpb3FedowoykyL9XPKBI3CbxxVaOYGPtduUMqsrG31G/
	e0ynHCY9O5/CdbkEOh5lRueFyQmxIg0TYEs9EDLrtgan28D03bIZ/NqVwB4hwPaIjWUYKhuAoevyA
	zwc0RdeAy085kxWYVHQz8KmzRrSgmsy7YId0olIWNsSq7sWHfNO0XqCw428IDy0sOf+BqPp194QzQ
	LWbcgPdoTZg46ACZeVKUEec/B79IbiDLTkyo5zd1Ia7lFRmakwKbWjqDVBGYf5k+spWskgdEKvc52
	VxdG+ATQ==;
Received: from [142.179.59.203] (port=52970 helo=[192.168.1.79])
	by georgia.web-dns1.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <darcy@xstreamworship.com>)
	id 1lFftn-0000TM-D5; Fri, 26 Feb 2021 11:23:32 -0500
User-Agent: Microsoft-MacOutlook/16.46.21021202
Date: Fri, 26 Feb 2021 08:23:26 -0800
Subject: Package bash-completion was not found - dunfell
From: "Darcy Watkins" <darcy@xstreamworship.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <64F0261B-63D8-4BB3-AC37-878EB73D6AA4@xstreamworship.com>
Thread-Topic: Package bash-completion was not found - dunfell
Mime-version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 162.213.156.66
X-SpamExperts-Domain: out.georgia.web-dns1.com
X-SpamExperts-Username: 162.213.156.66
Authentication-Results: web-dns1.com; auth=pass smtp.auth=162.213.156.66@out.georgia.web-dns1.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9WLQux0N3HQm8ltz8rnu+BPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5y1+0PmKzNCbFMi25PXNQwVAXCu52uLMI+QLXlDne4rCpXz
 Kn+/ozfMpM8SW/2gH4NIayX/YY6xPQwDmOPCXji7v7UsaxVc7GyDhGMaPpKSqKG0+CkckbALvw2I
 EUPmQehl8dmsxDwp7RnymMoVR6CJklDBBHXM6kdTBfx2yZGmUhPkDTjux4zxubf9H+yOq2e4yTrA
 arQSUK4m0wvfzQdRQMKARAkUMDY82lfQiO9mVv3/chWz2kXVfaRFWV8Un4o0CDCL+MSMSvl/jo/W
 XrqFIfY9Dsjqk9i1nXPRjuSbOvZsEhnzWgZmn4n0yUjDMDh++SB3n67eAPF/18rav9nB3IzVmGPS
 YcI3Px+Ei1WUTh/bvG8EEe0+nGAJVEMtr6R/0tARiKLbsBv4eBarRURNf8zZvEsM5oSPjJJZ2jgf
 0zNUIG2iXHk4svarlfJhqKb7Ihw1/2aYJ0di+mUsVIbgoFJ80FFIe862PoHHEB5bxftNDIki1rF6
 OolKDp+Re204mtjCir3/WFbeRmfIXUtonevugAfZhKUV+b8uu1sA43oSKlHMxVnkurBPHtW+f1JA
 YOMrzJ+TAQHcCbm2q4v4eRoFDtNd2EDvU0if7u+ho2BheMWOW+7EFrfaAL4AtoDJbZK0xh8QcZc5
 2QHrApx6UV3C44B8uuB7EGQ5C/DSLX5zF18aYgzD0C1A0vSJxjlG2RIimndBEPDlB/sfoft+r9Sj
 3GnnVLWCu3W/e22MDvBCtXGI9rfK3Pd+6oRedzF74SjtEDlGpjwpGWfD4UsVYtAn6ZsW5q7Drzaa
 cP4u8719+xtwQcD592u0oHeQ5BoccBIk1Sag4dKiqCrF8eZZJYCNuSqyXpESycePwdYSSB5PQpJd
 2rehFCRCSNbMlH07POHksp30qysF6QeqwUlyiePkOc8RuNlg37zhUXep1pAmj2p7GuqeZDLlzx2l
 0gC6B7VaPVZ7wnJc6rtZVPMuQzT6aQ/2PKa0JbjImY9wc2qKblPnd8vlhRnwZrDh49WJ4+Q5zxG4
 2WDfvOFRd6nWyQ7XrrNSOoCEPinuyK/bFw==
X-Report-Abuse-To: spam@se1.web-dns1.com
Content-type: multipart/alternative;
	boundary="B_3697172607_654465629"

--B_3697172607_654465629
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

Hi,

=20

I observe something unusual in dunfell.=C2=A0 After the setting up environment =
for build, if I invoke =E2=80=98bash=E2=80=99 I see the following:

=20

Package bash-completion was not found in the pkg-config search path.

Perhaps you should add the directory containing `bash-completion.pc'

to the PKG_CONFIG_PATH environment variable

No package 'bash-completion' found

bash: /yum: No such file or directory

=20

Is this normal?=C2=A0 (I am using CentOS7 as build machine OS and have the extr=
a packages, buildtools installed, etc).

=20

I have determined that this is not prior to setting up the environment, but=
 will occur if using bash any time afterwards.

=20

Is Yocto=E2=80=99s setup environment perhaps being overaggressive with sanitizing=
 the paths, etc?

=20

=20

--

=20

Regards,

=20

Darcy

=20

Equipping worship teams and worshipers

http://xstreamworship.com

[M4]

=20


--B_3697172607_654465629
Content-type: text/html;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:schema=
s-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/office/20=
04/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta http-equiv=3DC=
ontent-Type content=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D=
"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-CA link=3D"#0563C1" vlink=3D"#954F72" style=3D'wo=
rd-wrap:break-word'><div class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p=
></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I observe so=
mething unusual in dunfell.=C2=A0 After the setting up environment for build, if=
 I invoke =E2=80=98bash=E2=80=99 I see the following:<o:p></o:p></p><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Package bash-completion was not found=
 in the pkg-config search path.<o:p></o:p></p><p class=3DMsoNormal>Perhaps you=
 should add the directory containing `bash-completion.pc'<o:p></o:p></p><p c=
lass=3DMsoNormal>to the PKG_CONFIG_PATH environment variable<o:p></o:p></p><p =
class=3DMsoNormal>No package 'bash-completion' found<o:p></o:p></p><p class=3DMs=
oNormal>bash: /yum: No such file or directory<o:p></o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Is this normal?=C2=A0 (I am using Cen=
tOS7 as build machine OS and have the extra packages, buildtools installed, =
etc).<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorm=
al>I have determined that this is not prior to setting up the environment, b=
ut will occur if using bash any time afterwards.<o:p></o:p></p><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Is Yocto=E2=80=99s setup environment=
 perhaps being overaggressive with sanitizing the paths, etc?<o:p></o:p></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:12.0pt;font-family:=
"Times New Roman",serif'>--<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:12.0pt;font-family:"Times New Roman",serif'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:1=
2.0pt;font-family:"Times New Roman",serif'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:12.0pt;font-family:"Times New Roman",serif'>Darcy<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:12.0p=
t;font-family:"Times New Roman",serif'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'font-size:12.0pt;font-family:"Times New Ro=
man",serif'>Equipping worship teams and worshipers<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:12.0pt;font-family:"Times N=
ew Roman",serif'><a href=3D"http://xstreamworship.com/"><span style=3D'color:#05=
63C1'>http://xstreamworship.com</span></a><o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-size:12.0pt;font-family:"Times New Roman=
",serif'>[M4]<o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
/div></body></html>

--B_3697172607_654465629--
