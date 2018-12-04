Return-Path: <alankar.dhobale@renuelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DFCBE00BB5; Tue,  4 Dec 2018 05:24:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.197 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.perfora.net (mout.perfora.net [74.208.4.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B111E00B77
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 05:24:15 -0800 (PST)
Received: from Alankard ([123.252.137.110]) by mrelay.perfora.net (mreueus003
	[74.208.5.2]) with ESMTPA (Nemesis) id 0MezRn-1gsY5M1myP-00OVRw;
	Tue, 04 Dec 2018 14:24:14 +0100
From: "Alankar Dhobale" <alankar.dhobale@renuelectronics.com>
To: "'Max Krummenacher'" <max.oss.09@gmail.com>,
	<yocto@yoctoproject.org>
References: <005201d48ac3$933b7470$b9b25d50$@renuelectronics.com>
	<1543865886.3634.8.camel@gmail.com>
In-Reply-To: <1543865886.3634.8.camel@gmail.com>
Date: Tue, 4 Dec 2018 18:54:18 +0530
Message-ID: <025901d48bd4$aabe8fd0$003baf70$@renuelectronics.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQIEVbEFbyhrG9kTvyGbjyxcPN3eeQHNWNospQCQppA=
X-Provags-ID: V03:K1:xbQo94441dB5bPj7F8rzcPA/0HFspX/PvB1RhOPHuAGn6gqgX8m
	bg4KKEbZKuVwSaalLqzrjJQXiRdtVb4jRL6+GtrI3byQ50EOXD7t5xIVzNxfwYxFuBk2Zk2
	A7Tu6osEhlom+whBMZLykroNFXr54oxEQWx5RHCunPa+69zlnG1zcojRxMDHSb4jL4oInq3
	VY2S5mkbLV4DAiIwJ/XxA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZGC9JddjdGQ=:lE7ub3+pKYhCcADi+VNiwN
	+NaOwtadmKbrFleaRKejnWmjiiIiBvceynmnoQIoAtpj108C5h6wTi/5XbttaAYt/892Git4x
	XoD0oVU118ul8EiqfQEn0LlO9q10HOffsK/xAAvJQA+0B3ErZprB5kxrrmEv42HxumxVJbF26
	/F4Nj2JUG49Ys7XYRSibC5LrC7llPHMF7JbTwJpBFO0w6PSYadcvpLh/catJVVzqhkQvpZUvU
	vdxJk8wSdjJahs3pFHY7H2DM8fW0Fpvw5TYyQ9vBJXJKhHFabz2pwsuDE/OWU+MwY8CpxEpHO
	0NALczejysOw1QhFr4rDlnvrTxCEcHSYaKRYUasfNa55VeGwaL43bGmADE6FU7t1jYfAnjPgP
	u70Qh/XqaTVS9MUhqDeznu3yM6BkTTjAf/2tiybfHOxgLuKTy2mmb6E0ocINOg0YCuDfuw2cg
	UjWkX4jcMu6QpIkgtxU5K0SKsuM6Z7kLvhdmZpU+yU83Mef5h2CgD0v55NNzvUix2fxRQe4ql
	+97XK4D9YEmOxeSlekV69ZX1XIC2ThkVZf/376RqjipYcF6pNdqsUynnjFdMfjC76P/l7+S9q
	YKyudt2ZSyI3jEr74pjwTM00iVTxWkR6nQbxXXgb27KUchdTSa65sn0WL4Ta9roknXk69ADmm
	fODyYSqEcbZ3hTpWXhVlpgFzUM4a5pptYwXryaUnfzVYo0fv6F3X9XMyVD6oN6ovUwk0YQU9u
	GFqmeS0IQyFk6y16iHuH9OASiafzId7uwiQ1hDWSWb17guJy4nnDx/3yxfWhFCFBj07zkxshL
	9P8XJ9i
Subject: Re: [yocto-rocko] : fsl-community-bsp X11 build touch screen calibration issue on iMX6UL
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
X-List-Received-Date: Tue, 04 Dec 2018 13:24:18 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_025A_01D48C02.C477DD40"
Content-Language: en-us

------=_NextPart_000_025A_01D48C02.C477DD40
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Max,

=20

Yes you are right, I used the same bbappend and this resolved the issue, =
perfect solution=E2=80=A6

=20

I have been struggling with this since couple of days!=20

=20

Many thanks for your inputs and resolution.

=20

I have tested the build for imx6ulevk as well as to our own machine, =
both worked well. Calibration passes correctly and also writes it to =
/etc/pointercal.xinput file and works perfect

=20

Thanks once again=E2=80=A6

=20

Regards

Alankar

=20

=20

-----Original Message-----
From: Max Krummenacher [mailto:max.oss.09@gmail.com]=20
Sent: 04/12/2018 1:08 AM
To: Alankar Dhobale; yocto@yoctoproject.org
Subject: Re: [yocto] [yocto-rocko] : fsl-community-bsp X11 build touch =
screen calibration issue on iMX6UL

=20

Hi

=20

> Machine: imx6ulevek

>=20

> Image: core-image-x11

>=20

> The issue I have observed on the device is, Xorg is unable to=20

> calibrate the touchscreen, I don't know what has changed but it is=20

> unable to calibrate, below is the log I get on prompt

>=20

...

> ERROR: XorgPrint Calibrator does not support the supplied=20

> --output-type

>=20

> Error: unable to apply or save configuration valuesUsing calibration=20

> data stored in /etc/pointercal.xinput

>=20

=20

Does not installing xf86-input-libinput help? xinput-calibrator cannot =
cope with that input backend.

=20

I used the following bbappend to achieve this:

=20

 =
<http://git.toradex.com/cgit/meta-toradex-demos.git/commit/?h=3Drocko-nex=
t&id=3D664a1926af81e49396bfe2681> =
http://git.toradex.com/cgit/meta-toradex-demos.git/commit/?h=3Drocko-next=
&id=3D664a1926af81e49396bfe2681

18969ec2b8718cb

=20

Regards

Max


------=_NextPart_000_025A_01D48C02.C477DD40
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoPlainText>Hi =
Max,<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>Yes you are right, I used the same bbappend and =
this resolved the issue, perfect solution=E2=80=A6<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>I have =
been struggling with this since couple of days! <o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Many =
thanks for your inputs and resolution.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>I have =
tested the build for imx6ulevk as well as to our own machine, both =
worked well. Calibration passes correctly and also writes it to =
/etc/pointercal.xinput file and works perfect<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Thanks =
once again=E2=80=A6<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>Regards<o:p></o:p></p><p =
class=3DMsoPlainText>Alankar<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>-----Original Message-----<br>From: Max =
Krummenacher [mailto:max.oss.09@gmail.com] <br>Sent: 04/12/2018 1:08 =
AM<br>To: Alankar Dhobale; yocto@yoctoproject.org<br>Subject: Re: =
[yocto] [yocto-rocko] : fsl-community-bsp X11 build touch screen =
calibration issue on iMX6UL</p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>Hi<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>&gt; =
Machine: imx6ulevek<o:p></o:p></p><p class=3DMsoPlainText>&gt; =
<o:p></o:p></p><p class=3DMsoPlainText>&gt; Image: =
core-image-x11<o:p></o:p></p><p class=3DMsoPlainText>&gt; =
<o:p></o:p></p><p class=3DMsoPlainText>&gt; The issue I have observed on =
the device is, Xorg is unable to <o:p></o:p></p><p =
class=3DMsoPlainText>&gt; calibrate the touchscreen, I don't know what =
has changed but it is <o:p></o:p></p><p class=3DMsoPlainText>&gt; unable =
to calibrate, below is the log I get on prompt<o:p></o:p></p><p =
class=3DMsoPlainText>&gt; <o:p></o:p></p><p =
class=3DMsoPlainText>...<o:p></o:p></p><p class=3DMsoPlainText>&gt; =
ERROR: XorgPrint Calibrator does not support the supplied =
<o:p></o:p></p><p class=3DMsoPlainText>&gt; =
--output-type<o:p></o:p></p><p class=3DMsoPlainText>&gt; =
<o:p></o:p></p><p class=3DMsoPlainText>&gt; Error: unable to apply or =
save configuration valuesUsing calibration <o:p></o:p></p><p =
class=3DMsoPlainText>&gt; data stored in =
/etc/pointercal.xinput<o:p></o:p></p><p class=3DMsoPlainText>&gt; =
<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>Does not installing xf86-input-libinput help? =
xinput-calibrator cannot cope with that input backend.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>I used =
the following bbappend to achieve this:<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText><a =
href=3D"http://git.toradex.com/cgit/meta-toradex-demos.git/commit/?h=3Dro=
cko-next&amp;id=3D664a1926af81e49396bfe2681"><span =
style=3D'color:windowtext;text-decoration:none'>http://git.toradex.com/cg=
it/meta-toradex-demos.git/commit/?h=3Drocko-next&amp;id=3D664a1926af81e49=
396bfe2681</span></a><o:p></o:p></p><p =
class=3DMsoPlainText>18969ec2b8718cb<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>Regards<o:p></o:p></p><p =
class=3DMsoPlainText>Max<o:p></o:p></p></div></body></html>

------=_NextPart_000_025A_01D48C02.C477DD40--
