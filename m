Return-Path: <aenbacka@gmail.com>
Received: from mail-fa0-f46.google.com (mail-fa0-f46.google.com
	[209.85.161.46]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E60E7E006C3
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 02:45:17 -0800 (PST)
Received: by mail-fa0-f46.google.com with SMTP id x10so609fax.5
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 02:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=DTv2lIzWtt6AEFgl0PJicnRFhQrGev/SXbRaLBv7NZI=;
	b=HiE4/EXFODoTMevzTHnzkg7fD88GhgkEhwRNT2468YUFLFVfuqcDwqBMpYzo4qXIJq
	ZoTF2Ex7nWuYWuqLudG9dp5i3cT/Ke8vWbx4/9ifx27YsflfsGzxwSAIh3TfOw4tvndQ
	qpMeVpi+0WVu+VupkgXlwbzhMprNM1qo5x5LJdeIEn5BmukEvdxANXE2bdfgrNJHI5Zt
	AFNVOAvnnSJYhkxEsZ5p3DhgRECuCy8xoG5N6hkXPXMWlFKPvRO0XEW9xSb/eMEaio5Q
	fqE7zdAimLvlAQCnW7HAlvk1q0pi5AUNrs9fqh6ixNLqS5PRXftf5/R+TmldEQcYVlf0
	BpuA==
X-Received: by 10.204.129.70 with SMTP id n6mr12828720bks.60.1362653115408;
	Thu, 07 Mar 2013 02:45:15 -0800 (PST)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id gm14sm373509bkc.7.2013.03.07.02.45.13
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 02:45:14 -0800 (PST)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Mar 2013 12:45:05 +0200
Message-ID: <001201ce1b20$d5074550$7f15cff0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac4bINMdX7eQ6eT4Sb2/Jur28SRiUQ==
Subject: Problem editing reference image(s) in Hob
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
X-List-Received-Date: Thu, 07 Mar 2013 10:45:18 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0013_01CE1B31.98948220"
Content-Language: fi

------=_NextPart_000_0013_01CE1B31.98948220
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

When trying to edit a reference image in the Hob interface (by e.g.,
selecting core-image-basic, and then Edit Image) I end up with the error
message 'Nothing PROVIDES libgstapp-0.10' each time when trying to build the
image). In the Edit Image phase I select the desired packages that I want to
include in the image, and then Build Packages. The package build phase
completes successfully, and I select the packages again in phas 2/2: Edit
Packages. Hob then moves into Building Image phase, but almost immediately
fails with the previously mentioned error message. I get the same error
message independent of which package(s) I select, and independent of
selected reference image. What could be the reason for this?

 

Best regards,

Andreas Enbacka


------=_NextPart_000_0013_01CE1B31.98948220
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFI =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DSV-FI>Hello,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DSV-FI><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>When trying to edit a reference =
image in the Hob interface (by e.g., selecting core-image-basic, and =
then Edit Image) I end up with the error message &#8216;Nothing PROVIDES =
libgstapp-0.10&#8217; each time when trying to build the image). In the =
Edit Image phase I select the desired packages that I want to include in =
the image, and then Build Packages. The package build phase completes =
successfully, and I select the packages again in phas 2/2: Edit =
Packages. Hob then moves into Building Image phase, but almost =
immediately fails with the previously mentioned error message. I get the =
same error message independent of which package(s) I select, and =
independent of selected reference image. What could be the reason for =
this?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas =
Enbacka<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0013_01CE1B31.98948220--
