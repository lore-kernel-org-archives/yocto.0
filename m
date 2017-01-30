Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAF1AE00405; Mon, 30 Jan 2017 09:05:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.135 listed in dnsbl.sorbs.net]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87EEAE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 09:05:50 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue002
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MM3G0-1cZLKS3eAe-007mw2;
	Mon, 30 Jan 2017 18:05:49 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Daniel.'" <danielhilst@gmail.com>
References: <005301d27b0e$c532b900$4f982b00$@ln-systems.com>
	<CAF3SDA6e7s6kei9+oYSMsG01JnsrA-HrOWUBFOuEE-crLRSHMg@mail.gmail.com>
In-Reply-To: <CAF3SDA6e7s6kei9+oYSMsG01JnsrA-HrOWUBFOuEE-crLRSHMg@mail.gmail.com>
Date: Mon, 30 Jan 2017 17:05:48 -0000
Organization: LN Systems Limited
Message-ID: <009501d27b1b$1ab18260$50148720$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHjoxvKHeLW+VhGVM3rT7yIoJw26AIUJUPWoR5Nw4A=
X-Provags-ID: V03:K0:u0QpzwlSMiGxD3uTKRzy5h61dEnbbsY/x+M4j1/KqCt05kiNR9e
	1jtADApN2MbPnS2jjOCa+xEREjF0jzjaL5bYMHUOkE8C9QcQVt+XXFDVTTi2u5U8QWDHgiE
	Z2INm/FOuGkdP24Mt6UKkbOdW7w2tjZc/ZtOgPWccNwovDvnQcHaUqUYhcmaClmvsR+S6iY
	EGP2UIajL+KEKdvN6ACVg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:UuM+MjR6VYw=:XmIC2WXQkfAcezSt79PiHH
	Q+wUw32eXcZGsy20i8i46gEBe5oAwCZCXVE8D4zm70JH2SFO92uLfcWPJqol091/qm9Je6iR1
	oL8vRRvcEPNCuPEQMdamGxxSTE14yoMwtDdFjqrAbeqYSY/gyg0vM5Cim+C763P4JWd8ljTku
	i+8pZV6EOSgDIaVkiYlVCjFVJdVOybA8NRk/j7AMEiZbGa6PMRL7UTl8JhP6tBP8hRZBgHJfs
	UTYUJRslPX4wTAvcLaggW0MiNhLYiKbdLAP6UFehLoqg2pDgFFd0658wP9GKr0Yd/RsxpsdRF
	Fl+lBpPMfgcxaljbtleUJ+fCE+rPb5CR0KD32SyqQ7PNizjADfabdKDnn8II6OoVyPouJkluj
	Ufr4+9PmTL5s9RU+1p43fVLMx0UEd1WqM5YHOMUpv4y9X5VQoYnrrfS5tk6b0UkCWV3VAosGV
	0lT1jkUo1o4XuOMlm0/hL7VTGzXSUAN+DO0G9nyU8YeGjM6X+0yUFtzbYNrfsAuT4iISQeAA8
	DGr0xcSUt4ZQk7EQbyR0apTMhH07rcupZ18ngoPgwm0b7O2d6loAE8xqnImV8Yi+mxrK97Q49
	BA7gDAh0QfMOygXFR08fTnWZ1ySXrP/LbWwmqzW3qvowQREUc0k82CeO7ypqe1GkfLs0Op/ww
	Lfg4Eb0een07oiTP9D3PoZwRt19ZbQgJ+gwNe9YbxPUn5ictKg3S2EnA0UJEijzw2kDqK4W4J
	6BJxHE76mF+wji4S
Cc: yocto@yoctoproject.org
Subject: Re: Making header of out-of-tree module available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jan 2017 17:05:55 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0096_01D27B1B.1AB63D50"
Content-Language: en-gb

------=_NextPart_000_0096_01D27B1B.1AB63D50
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Daniel,

I=E2=80=99ve given that a try, but the header isn=E2=80=99t appearing =
(with =E2=80=98bitbake rfctrl=E2=80=99) anywhere but the =
module=E2=80=99s own workdir.

It=E2=80=99s recipe is

=20

SUMMARY =3D " RF driver"

LICENSE =3D "GPLv2"

LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D12f884d2ae1ff87c09e5b7ccc2c4ca7e"

=20

inherit module

=20

SRC_URI =3D "file://Makefile \

           file://rfctrl.c \

           file://rfctrl.h \

           file://COPYING \

          "

=20

FILES_${PN}-dev =3D "/usr/include/rfctrl/linux/rfctrl.h"

=20

S =3D "${WORKDIR}"

=20

=20

With a makefile:

=20

obj-m :=3D rfctrl.o

=20

SRC :=3D $(shell pwd)

=20

all:

                $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)

=20

modules_install:

                $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install

=20

clean:

                rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c

                rm -f Module.markers Module.symvers modules.order

                rm -rf .tmp_versions Modules.symvers

=20

=20

=20

From: Daniel. [mailto:danielhilst@gmail.com]=20
Sent: 30 January 2017 16:46
To: colin.helliwell@ln-systems.com
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Making header of out-of-tree module available

=20

You don't, you make your library depends on your driver, and not on =
kernel exported headers. In my case I add the header to the -dev package =
and make the library compilation depend on kernel module.

# kernel-module-foo.bb <http://kernel-module-foo.bb>=20

FILES_${PN}-dev =3D "/usr/include/foo/linux/foo.h"=20

# libfoo.bb <http://libfoo.bb>=20

DEPENDS =3D "kernel-module-foo"

Cheers

=20

2017-01-30 13:37 GMT-02:00 <colin.helliwell@ln-systems.com =
<mailto:colin.helliwell@ln-systems.com> >:

I have a recipe which builds my own (out-of-tree) driver module =
=E2=80=93 this packages/installs the module fine. (It=E2=80=99s recipe =
has =E2=80=9Cinherit module=E2=80=9D).=20

Now I=E2=80=99m writing a recipe to build a library which uses the =
driver. What=E2=80=99s needed to get the driver=E2=80=99s header file =
=E2=80=98exported=E2=80=99 so that it can be included by the =
library=E2=80=99s recipe?

Thanks

=20


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
https://lists.yoctoproject.org/listinfo/yocto




--=20

"Do or do not. There is no try"
  Yoda Master


------=_NextPart_000_0096_01D27B1B.1AB63D50
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
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
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
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Thanks Daniel,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I=E2=80=99ve given that a try, but the =
header isn=E2=80=99t appearing (with =E2=80=98bitbake rfctrl=E2=80=99) =
anywhere but the module=E2=80=99s own workdir.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>It=E2=80=99s recipe =
is<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>SUMMARY =3D &quot; RF =
driver&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>LICENSE =3D =
&quot;GPLv2&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>LIC_FILES_CHKSUM =3D =
&quot;file://COPYING;md5=3D12f884d2ae1ff87c09e5b7ccc2c4ca7e&quot;<o:p></o=
:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>inherit module<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>SRC_URI =3D &quot;file://Makefile =
\<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 file://rfctrl.c \<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 file://rfctrl.h \<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 file://COPYING \<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>FILES_${PN}-dev =3D =
&quot;/usr/include/rfctrl/linux/rfctrl.h&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>S =3D =
&quot;${WORKDIR}&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>With a makefile:<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>obj-m :=3D rfctrl.o<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>SRC :=3D $(shell =
pwd)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>all:<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $(MAKE) -C $(KERNEL_SRC) =
M=3D$(SRC)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>modules_install:<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $(MAKE) -C $(KERNEL_SRC) =
M=3D$(SRC) modules_install<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>clean:<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -f *.o *~ core .depend =
.*.cmd *.ko *.mod.c<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -f Module.markers =
Module.symvers modules.order<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf .tmp_versions =
Modules.symvers<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> Daniel. =
[mailto:danielhilst@gmail.com] <br><b>Sent:</b> 30 January 2017 =
16:46<br><b>To:</b> colin.helliwell@ln-systems.com<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] Making header of =
out-of-tree module available<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>You don't, you make your library depends =
on your driver, and not on kernel exported headers. In my case I add the =
header to the -dev package and make the library compilation depend on =
kernel module.<o:p></o:p></p></div><p class=3DMsoNormal># <a =
href=3D"http://kernel-module-foo.bb">kernel-module-foo.bb</a><o:p></o:p><=
/p><div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>FILES_${PN}-dev =3D =
&quot;/usr/include/foo/linux/foo.h&quot; <o:p></o:p></p></div><div><p =
class=3DMsoNormal># <a =
href=3D"http://libfoo.bb">libfoo.bb</a><o:p></o:p></p></div><div><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'>DEPENDS =3D =
&quot;kernel-module-foo&quot;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Cheers<o:p></o:p></p></div></div></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>2017-01-30 13:37 GMT-02:00 &lt;<a =
href=3D"mailto:colin.helliwell@ln-systems.com" =
target=3D"_blank">colin.helliwell@ln-systems.com</a>&gt;:<o:p></o:p></p><=
blockquote style=3D'border:none;border-left:solid #CCCCCC =
1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I have a =
recipe which builds my own (out-of-tree) driver module =E2=80=93 this =
packages/installs the module fine. (It=E2=80=99s recipe has =
=E2=80=9Cinherit module=E2=80=9D). <o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Now =
I=E2=80=99m writing a recipe to build a library which uses the driver. =
What=E2=80=99s needed to get the driver=E2=80=99s header file =
=E2=80=98exported=E2=80=99 so that it can be included by the =
library=E2=80=99s recipe?<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Thanks<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><br>--<br>________________________________=
_______________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p><=
/o:p></p></blockquote></div><p class=3DMsoNormal><br><br =
clear=3Dall><br>-- <o:p></o:p></p><div><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><i>&quot;Do or do not. There is =
no try&quot;</i><br><i>&nbsp; <b>Yoda =
Master</b></i><o:p></o:p></p></div></div></div></body></html>

------=_NextPart_000_0096_01D27B1B.1AB63D50--
