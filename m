Return-Path: <colin.helliwell@LN-Systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90485E00DE5; Thu, 24 Sep 2015 08:41:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from lnsystems.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46CEAE00708
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 08:41:42 -0700 (PDT)
Received: from LNSYSCH2 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by lnsystems.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	t8OFcmq7012469
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:38:52 +0100
From: "Colin Helliwell" <colin.helliwell@LN-Systems.com>
To: <yocto@yoctoproject.org>
References: <01de01d0f6bf$714d6b70$53e84250$@LN-Systems.com>
	<CABcZANkG+5FgFz2i7UEFfoWQc2h6JSaYTz6KT5tXrqZgr23keA@mail.gmail.com>
In-Reply-To: <CABcZANkG+5FgFz2i7UEFfoWQc2h6JSaYTz6KT5tXrqZgr23keA@mail.gmail.com>
Date: Thu, 24 Sep 2015 16:41:36 +0100
Organization: LN Systems Limited
Message-ID: <026b01d0f6df$81e4cda0$85ae68e0$@LN-Systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQIoxgDbPdzAQnqrzD634HohN+Uv/QGr4apWnY7S+IA=
Subject: Re: am335x-boneblack.dtb 'misnamed'? (Fido/BeagleBoneBlack)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@LN-Systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Sep 2015 15:41:45 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_026C_01D0F6E7.E3AC42E0"
Content-Language: en-gb

------=_NextPart_000_026C_01D0F6E7.E3AC42E0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah, ok =E2=80=93 I see what you mean now. =
=E2=80=98core-image-base=E2=80=99 puts the dtb and kernel (with =
symlinks) into /boot in the rootfs tarball.

Thanks for the pointer =E2=80=93 that may get me moving onwards again =
now=E2=80=A6

=20

From: Christopher Larson [mailto:clarson@kergoth.com]=20
Sent: 24 September 2015 15:27
To: colin.helliwell@ln-systems.com; yocto@yoctoproject.org
Subject: Re: [yocto] am335x-boneblack.dtb 'misnamed'? =
(Fido/BeagleBoneBlack)

=20

It's installed into /boot on the rootfs with the zImage prefix, and =
update-alternatives creates a symlink to the correct path so uboot can =
find it. Not sure why this indirection exists, but it does work.

On Thu, Sep 24, 2015 at 4:52 AM Colin Helliwell =
<colin.helliwell@ln-systems.com> wrote:

This may just be =E2=80=98the way it is=E2=80=99, but the stock =
Fido/BeagleBoneBlack BSP [core-image-minimal] builds the =
am335x-boneblack dtb file, and creates in =
build/tmp/deploy/images/beaglebone a symlink named =
=E2=80=98zImage-am335x-boneblack.dtb=E2=80=99. However =E2=80=93 and =
this is borne out by README.hardware =E2=80=93 uboot is set up to look =
for =E2=80=98am335x-boneblack.dtb=E2=80=99.

I daresay I can do some sort of fixup, but I was curious why =
it=E2=80=99s like this?

=20

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


------=_NextPart_000_026C_01D0F6E7.E3AC42E0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Ah, ok =E2=80=93 I see what you mean now. =
=E2=80=98core-image-base=E2=80=99 puts the dtb and kernel (with =
symlinks) into /boot in the rootfs tarball.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Thanks for the pointer =E2=80=93 that may get me moving onwards again =
now=E2=80=A6<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Christopher Larson [mailto:clarson@kergoth.com] <br><b>Sent:</b> 24 =
September 2015 15:27<br><b>To:</b> colin.helliwell@ln-systems.com; =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] =
am335x-boneblack.dtb 'misnamed'? =
(Fido/BeagleBoneBlack)<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>It's =
installed into /boot on the rootfs with the zImage prefix, and =
update-alternatives creates a symlink to the correct path so uboot can =
find it. Not sure why this indirection exists, but it does =
work.<o:p></o:p></p><div><div><p class=3DMsoNormal>On Thu, Sep 24, 2015 =
at 4:52 AM Colin Helliwell &lt;<a =
href=3D"mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems=
.com</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>This may =
just be =E2=80=98the way it is=E2=80=99, but the stock =
Fido/BeagleBoneBlack BSP [core-image-minimal] builds the =
am335x-boneblack dtb file, and creates in =
build/tmp/deploy/images/beaglebone a symlink named =
=E2=80=98zImage-am335x-boneblack.dtb=E2=80=99. However =E2=80=93 and =
this is borne out by README.hardware =E2=80=93 uboot is set up to look =
for =E2=80=98am335x-boneblack.dtb=E2=80=99.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I daresay I =
can do some sort of fixup, but I was curious why it=E2=80=99s like =
this?<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div></div><p =
class=3DMsoNormal>--<br>_______________________________________________<b=
r>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" =
target=3D"_blank">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p><=
/o:p></p></blockquote></div></div></body></html>

------=_NextPart_000_026C_01D0F6E7.E3AC42E0--
