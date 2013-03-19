Return-Path: <aenbacka@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CFCDE0147A
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 02:32:42 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id d17so115049eek.38
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 02:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:x-mailer:thread-index:content-language;
	bh=Yh4be+FtvLOxngxTVlAIhhqcZweFJRRFjMIxZDwN27A=;
	b=zV5Bwy6sC9sOeFn8y3aP2EgP7LlAvh212//CZPMe1pDEMNhNBdLgs4NDvp7qOjL51A
	nYlj0gsywc60haSje99hnvyd7ngrZhoRMqzTTZL/xm6VyaOYsOd8k6VmlCpM2quLS+AI
	QxRysI4UyprVSXwZz2LanKdcuCEsDhYgRfHY9Im37Qfbt8ed9fh11aBA4HIjd8uuNHRb
	rQmV98z7T8xGBQXrqCWdBeDH6542GZhsN5dbeIAroXN0iIsGEMCLl5bgDa2sDc4li7t7
	xhExwOklbEL8oc1XwSLcZHEFYIJF6s4wupAzuACaeE9TtRJ5bqeBNAbiOqFvSAGMTYMo
	cKSw==
X-Received: by 10.14.211.65 with SMTP id v41mr58168294eeo.33.1363685561308;
	Tue, 19 Mar 2013 02:32:41 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id 44sm31901852eek.5.2013.03.19.02.32.40
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 02:32:40 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 19 Mar 2013 11:32:35 +0200
Message-ID: <005501ce2484$b1558d20$1400a760$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac4khGNUjVaeGg9jRJegusgWFd4VLA==
Subject: Hob custom image build error
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
X-List-Received-Date: Tue, 19 Mar 2013 09:32:43 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0056_01CE2495.74DEF960"
Content-Language: fi

------=_NextPart_000_0056_01CE2495.74DEF960
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

Whenever I build a custom image in Hob (using Create your own image), I get
the following error output once the image build stage is completed:

 

Traceback (most recent call last):

  File "/home/user/poky/bitbake/lib/bb/ui/crumbs/builder.py", line 1096, in
handler_build_succeeded_cb

    self.build_succeeded()

  File "/home/user/poky/bitbake/lib/bb/ui/crumbs/builder.py", line 1029, in
build_succeeded

    version = self.recipe_model.get_custom_image_version()

  File "/home/user/poky/bitbake/lib/bb/ui/crumbs/hoblistmodel.py", line 696,
in get_custom_image_version

    return self.custom_image_version

AttributeError: 'RecipeListModel' object has no attribute
'custom_image_version'

 

The UI is the stuck at 99% (do_build). However, the image build process has
otherwise succeeded (the image files exist in the images folder). However,
Hob needs to be force closed.

 

Best regards,

Andreas Enbacka


------=_NextPart_000_0056_01CE2495.74DEF960
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
class=3DMsoNormal><span lang=3DEN-US>Whenever I build a custom image in =
Hob (using Create your own image), I get the following error output once =
the image build stage is completed:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Traceback (most recent call =
last):<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp; File =
&quot;/home/user/poky/bitbake/lib/bb/ui/crumbs/builder.py&quot;, line =
1096, in handler_build_succeeded_cb<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
self.build_succeeded()<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp; File =
&quot;/home/user/poky/bitbake/lib/bb/ui/crumbs/builder.py&quot;, line =
1029, in build_succeeded<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; version =3D =
self.recipe_model.get_custom_image_version()<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp; File =
&quot;/home/user/poky/bitbake/lib/bb/ui/crumbs/hoblistmodel.py&quot;, =
line 696, in get_custom_image_version<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; return =
self.custom_image_version<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>AttributeError: 'RecipeListModel' =
object has no attribute 'custom_image_version'<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The UI is the stuck at 99% =
(do_build). However, the image build process has otherwise succeeded =
(the image files exist in the images folder). However, Hob needs to be =
force closed.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas =
Enbacka<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0056_01CE2495.74DEF960--
