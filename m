Return-Path: <aenbacka@gmail.com>
Received: from mail-da0-f54.google.com (mail-da0-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D809E014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:03:14 -0700 (PDT)
Received: by mail-da0-f54.google.com with SMTP id s35so304815dak.41
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=86iNiyyLVoPHixqTHEQ1XJYr+QVrH3w2hMBNT6JoSOA=;
	b=d/CpZb9B62KfiN/KuqvYmpWEXKuKWpGJD7fQ+Acte5ITeV1hGKerTBzHjrSFk0tk7n
	CpJT+uB+ritSerLG0jOyv1mc2YWOikTyFHFYnLFDb/vQPMUdcRagi4pfL/OA7OkikpV9
	7oViRI6Dvx9mVAkpj4ryKyzUjsPW3pN+8d2ABoU1dRHqIrERYqx3uP6ikH9Txj/LY4Wj
	SRlNoqHnEBgKOAq0P4MJkKdGBqZv9aeL6VRMasWYZltLD7kYIGxWprgDk9Qve0NuV7Qw
	ZakjlHlPrgbL5kOT8mRaZC9fg7LSaKqfDMZjOCdKJQNxcsHIhL9d7KpXGEaiKOojBPYE
	Fj/w==
X-Received: by 10.68.210.5 with SMTP id mq5mr39864549pbc.44.1366718594151;
	Tue, 23 Apr 2013 05:03:14 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id ag4sm12979533pbc.20.2013.04.23.05.03.10
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 23 Apr 2013 05:03:12 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 23 Apr 2013 15:03:03 +0300
Message-ID: <00da01ce401a$852365e0$8f6a31a0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac5AGcnB16pbsf8STjuqM/gjDRmOGA==
Subject: Splashscreen using psplash
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
X-List-Received-Date: Tue, 23 Apr 2013 12:03:14 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00DB_01CE4033.AA711310"
Content-Language: fi

------=_NextPart_000_00DB_01CE4033.AA711310
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I am creating a custom image based on core-image-sato, with a custom splash
screen (using psplash). I have been able to replace the default yocto
splashscreen in my image,  however, my question is whether it is possible to
hide the initial console output text displayed on the screen prior to
showing the splashscreen?  Currently most of the boot process is completed
at the stage when the splash screen is being displayed on screen. This is
because the image should be used as part of an embedded device, and the
end-user should not see any traces of the underlying linux distro. 

 

Any info would be greatly appreciated.

 

Best regards,

Andreas Enbacka

 


------=_NextPart_000_00DB_01CE4033.AA711310
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
class=3DMsoNormal><span lang=3DEN-US>Hello,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I am creating a custom image based =
on core-image-sato, with a custom splash screen (using psplash). I have =
been able to replace the default yocto splashscreen in my image, =
&nbsp;however, my question is whether it is possible to hide the initial =
console output text displayed on the screen prior to showing the =
splashscreen? &nbsp;Currently most of the boot process is completed at =
the stage when the splash screen is being displayed on screen. This is =
because the image should be used as part of an embedded device, and the =
end-user should not see any traces of the underlying linux distro. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Any info would be greatly =
appreciated.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas =
Enbacka<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_00DB_01CE4033.AA711310--
