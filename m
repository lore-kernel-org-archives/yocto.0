Return-Path: <desai@uni-bremen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FE32E00B3E; Thu,  4 Oct 2018 01:13:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.102.50.17 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.uni-bremen.de (gabriel-vm-2.zfn.uni-bremen.de
	[134.102.50.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1EA9E00ADD
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 01:13:16 -0700 (PDT)
Received: from uni-bremen.de (autodiscover.zfn.uni-bremen.de [134.102.50.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
	bits)) (No client certificate requested)
	by smtp.uni-bremen.de (Postfix) with ESMTPSA id 8369726573;
	Thu,  4 Oct 2018 10:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uni-bremen.de; s=dkim;
	t=1538640795; bh=VS0wV+jVr78Trvif42WRkPbQqqNzxp3UZa/FN3tYWGo=;
	h=To:Cc:References:In-Reply-To:Date:From;
	b=1Mj4nEyYuim+dt+10481wmg8gR9M4g70cea7+OTu/05TDTsfvTPR2Gr54DA5VKReY
	ZFBm0i9W7NCWpzCCF5G3mc5AUVHXcGjpAfGV5oruOBUv/y0OdHpXjGWNUWQA3z4YrC
	V0VJezgwNqS3r4aeGvAhYYvo0wsi4L/NIsKxYBSE=
To: yocto@yoctoproject.org
References: <CAE18oz8o-AKA5OBtV63odQx=gfMPa3MD=EU52BeU8Z2Zb26Ttw@mail.gmail.com>
In-Reply-To: <CAE18oz8o-AKA5OBtV63odQx=gfMPa3MD=EU52BeU8Z2Zb26Ttw@mail.gmail.com>
Date: Thu, 4 Oct 2018 10:13:10 +0200
Message-ID: <000401d45bba$16c6d0c0$44547240$@uni-bremen.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGX7BWVd5uXKt0NDSeBDpDU3ZKYPqWHmf9A
User-Agent: Horde Application Framework 5
From: Shantanoo Desai <desai@uni-bremen.de>
Subject: Re: Installing Python app from source
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
X-List-Received-Date: Thu, 04 Oct 2018 08:13:18 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0005_01D45BCA.DA5211C0"
Content-Language: de

------=_NextPart_000_0005_01D45BCA.DA5211C0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

=20

What you need in the .bb is a runtime-dependency. RDEPENDS_${PN} +=3D =
=E2=80=9C ${PYTHON_PN}-flask ${PYTHON_PN}-jinja =
${PYTHON_PN}-markdown=E2=80=9D and so on. This will add these modules in =
the root-filesystem and will be available on the target.=20

=20

If you need some basic help with a python recipe, there is a git =
repository YoctoCookbook =
https://github.com/yoctocookbook/meta-custom/tree/master/recipes-python/p=
ython-helloworld to get you some idea.

=20

Please not I am in no ways a Yocto expert on recipe creations but for =
the past few weeks this is what I have been able to discover. Due to =
lack of examples on custom recipes in python this is the best I can help =
you with.

=20

=20

Best Regards,

=20

Shan

=20

=20

=20

Von: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> Im =
Auftrag von Brian Zambrano
Gesendet: Donnerstag, 4. Oktober 2018 00:52
An: yocto@yoctoproject.org
Betreff: [yocto] Installing Python app from source

=20

I'm trying to install my own Python application from source, and having =
a hard time finding resources on how to accomplish it. I'm new to this =
ecosystem and am probably missing something fundamental.

My recipe is structured like this...and my build is configure such that =
it does actually find it.

=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend

=E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb <http://firmware_1.0.bb>=20

My application code which is for now just a "hello world" flask =
application, is in saunders_backend. The setup.py file in there works as =
expected when I use it in on my host machine.

=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend/
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 server
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 requirements.txt
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 =
config.py
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 =
__init__.py
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 =
models.py
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 static/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 =
templates/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 views.py
=E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 setup.py

=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend/
=E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb <http://firmware_1.0.bb>=20


I've been hacking on the .bb files to get it to install this into the =
resulting image. I do have IMAGE_INSTALL_append =3D " firmware" in the =
top-level local.conf.

=20

My primary confusion is that I don't know what I should be using for the =
python application. do_install, do_install_append? What should SRC_UIR =
be? In effect is that I want the exact same behavior of "cd =
saunders_backend && pip install ." My setup.py file has install_requires =
with a list of all dependencies, which now is merely Flask.

=20

Pointers would be appreciated.

BZ


------=_NextPart_000_0005_01D45BCA.DA5211C0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Brian,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>What you need in the .bb is a =
runtime-dependency. RDEPENDS_${PN} +=3D =E2=80=9C ${PYTHON_PN}-flask =
${PYTHON_PN}-jinja ${PYTHON_PN}-markdown=E2=80=9D and so on. This will =
add these modules in the root-filesystem and will be available on the =
target. <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>If you need some basic help with a python =
recipe, there is a git repository YoctoCookbook <a =
href=3D"https://github.com/yoctocookbook/meta-custom/tree/master/recipes-=
python/python-helloworld">https://github.com/yoctocookbook/meta-custom/tr=
ee/master/recipes-python/python-helloworld</a> to get you some =
idea.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Please not I am in no ways a Yocto expert on =
recipe creations but for the past few weeks this is what I have been =
able to discover. Due to lack of examples on custom recipes in python =
this is the best I can help you with.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DDE =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Best Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DDE =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DDE =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Shan<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Von:</span></=
b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto-bounces@yoctoproject.org &lt;yocto-bounces@yoctoproject.org&gt; =
<b>Im Auft</b></span><b><span lang=3DDE =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>rag von =
</span></b><span lang=3DDE =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Brian =
Zambrano<br><b>Gesendet:</b> Donnerstag, 4. Oktober 2018 =
00:52<br><b>An:</b> yocto@yoctoproject.org<br><b>Betreff:</b> [yocto] =
Installing Python app from source<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><div><div><div><div=
><p class=3DMsoNormal>I'm trying to install my own Python application =
from source, and having a hard time finding resources on how to =
accomplish it. I'm new to this ecosystem and am probably missing =
something fundamental.<br><br>My recipe is structured like this...and my =
build is configure such that it does actually find it.<br><br><span =
style=3D'font-family:"Courier New"'>=E2=94=9C=E2=94=80=E2=94=80 =
firmware-1.0<br>=E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
saunders_backend<br>=E2=94=82 &nbsp; =E2=94=94=E2=94=80=E2=94=80 =
saunders_frontend</span><o:p></o:p></p><div><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New"'>=E2=94=94=E2=94=80=E2=94=80 <a =
href=3D"http://firmware_1.0.bb">firmware_1.0.bb</a></span><br><br>My =
application code which is for now just a &quot;hello world&quot; flask =
application, is in saunders_backend. The setup.py file in there works as =
expected when I use it in on my host machine.<br><br><span =
style=3D'font-family:"Courier New"'>=E2=94=9C=E2=94=80=E2=94=80 =
firmware-1.0<br>=E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
saunders_backend/<br>=E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 bin/<br>=E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=82 &nbsp; =E2=94=94=E2=94=80=E2=94=80 server<br>=E2=94=82 &nbsp; =
=E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in<br>=E2=94=82 =
&nbsp; =E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
requirements.txt<br>=E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/<br>=E2=94=82 &nbsp; =
=E2=94=82 &nbsp; =E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
config.py<br>=E2=94=82 &nbsp; =E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 __init__.py<br>=E2=94=82 &nbsp; =E2=94=82 =
&nbsp; =E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
models.py<br>=E2=94=82 &nbsp; =E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 static/<br>=E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 templates/<br>=E2=94=82 =
&nbsp; =E2=94=82 &nbsp; =E2=94=82 &nbsp; =E2=94=94=E2=94=80=E2=94=80 =
views.py<br>=E2=94=82 &nbsp; =E2=94=82 =
&nbsp;&nbsp;=E2=94=94=E2=94=80=E2=94=80 =
setup.py</span><o:p></o:p></p></div><div><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New"'>=E2=94=82 &nbsp; =
=E2=94=94=E2=94=80=E2=94=80 =
saunders_frontend/<br>=E2=94=94=E2=94=80=E2=94=80 <a =
href=3D"http://firmware_1.0.bb">firmware_1.0.bb</a></span><o:p></o:p></p>=
</div><div><p class=3DMsoNormal><span style=3D'font-family:"Courier =
New"'><br></span>I've been hacking on the .bb files to get it to install =
this into the resulting image. I do have&nbsp;<span =
style=3D'font-family:"Courier New"'>IMAGE_INSTALL_append =3D &quot; =
firmware&quot; </span>in the top-level =
local.conf.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>My primary confusion is that I don't know what I =
should be using for the python application. do_install, =
do_install_append? What should SRC_UIR be? In effect is that I want the =
exact same behavior of &quot;cd&nbsp;<span style=3D'font-family:"Courier =
New"'>saunders_backend &amp;&amp; pip install .&quot;&nbsp;</span>My =
setup.py file has <span style=3D'font-family:"Courier =
New"'>install_requires</span> with a list of all dependencies, which now =
is merely Flask.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Pointers would be =
appreciated.<o:p></o:p></p></div><div><p =
class=3DMsoNormal>BZ<o:p></o:p></p></div></div></div></div></div></div></=
div></div></div></body></html>

------=_NextPart_000_0005_01D45BCA.DA5211C0--
