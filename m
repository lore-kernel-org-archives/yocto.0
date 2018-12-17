Return-Path: <alankar.dhobale@renuelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86BE4E00C9D; Sun, 16 Dec 2018 20:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.196 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.perfora.net (mout.perfora.net [74.208.4.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B3CAE00C7D
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2018 20:19:07 -0800 (PST)
Received: from Alankard ([123.252.137.110]) by mrelay.perfora.net (mreueus001
	[74.208.5.2]) with ESMTPA (Nemesis) id 0MA7VH-1gjRbM0RFR-00BPV2;
	Mon, 17 Dec 2018 05:19:06 +0100
From: "Alankar Dhobale" <alankar.dhobale@renuelectronics.com>
To: "'Peter Balazovic'" <balazovic.peter@gmail.com>,
	"'Yocto list discussion'" <yocto@yoctoproject.org>
References: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
In-Reply-To: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
Date: Mon, 17 Dec 2018 09:49:39 +0530
Message-ID: <0c0701d495bf$bc59c940$350d5bc0$@renuelectronics.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQIMwfAAr1hEbCM5OvNnQj749EU4KqUR+ptQ
X-Provags-ID: V03:K1:RSQbZMzdB7+IyvJbCcnZqPh7shlorqJyl/NDm6zmR/YWJV/5yWN
	qTJzqhe+qM0uuSN/cvdfJHG5ik3Xf25hEJ5xlqM8yq07wBhlmBWCSx9GaqntIOjYw8xgzPX
	tyOy+86CGTDolzz1j8lmmx1/IqLFvNAxQtB33vGUWQBwHZlxEKxOfZ/QVW8Yo7bhwhWnGTw
	j2UfT8RszXVHuMk6xicCw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:prYZ3tdAFVw=:Hcb+kzj0iOEeYf/63lE1YE
	FrV3Flv2fRfITuS5af5pzOciaolAj4O0SQV/WWRy/cA60qIE6rarEiJcRG0nJcLIblB8/NT8R
	/X8FU3O/HIZ0P46hdw3XfUreO4fcF9xvXGquY9uwu9cYVVUrCuYXYUiQU1A6J7JGHdkNUMNK1
	GTEbbJk/9Ld0kzkCjxTTQpXbVOVyT4NgBE8FxV6SUKnTKgYpf7748h4e9O/mhhgUaCCzGmpp5
	3W7b1UqvCJrgZjB6idjf89oY5e9b5Evg8NBmlhG/hmn0C0gG+O9VCXb6j71mPqIH4aPPPl9UL
	UUaOqmvQvn03/k3hV5qI8ez+V2bHFMEQdaoGXpj+FQONHxxlCzQtLuZ3DpgJZznDK5Hs8ZHJ5
	gjaiAo410XcbmTGmAYMGuY6t/mjsR5xFJxuf68aBNpjaUNEGWvyQd+INKHByMTTBLXdIR4Nec
	IjVb+6And3flDS+QO7KziDSEaVojJBwmtxZNdwCzkwwArgPasm49pcpNE0Eyqj3pk7h+ObuIq
	0WYGlWAwZk4Wa+EI37HpUIKoXkMT4pgRgb3xZuWf6ORjuuQYWhjwRE3v13imvFUp1UCmOClMM
	UDgLv60C+k9fNi8JYQpLVgyo80QkS4zSGXi6X1770S6Akxie1n8VL1eGLiSxVzBbCTPmLtDlq
	n+U82470cx+qcsoCz3AJzg6BdffZON1e1lcq0JxDzRlB0eDierGJjOg9Eb6zbZEgFfkIl6s9f
	5s1YpyW6o4y7cCFP6vF4M/2NL0ZyL1cB75v5y8bBHkuJv17bWQZ08tPV8cvVRfXnQRsmXmaFw
	wMhxvBM
Subject: Re: core-image-* (minimal) networking
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
X-List-Received-Date: Mon, 17 Dec 2018 04:19:09 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0C08_01D495ED.D612EFA0"
Content-Language: en-us

------=_NextPart_000_0C08_01D495ED.D612EFA0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Which platform you are working? As you don=E2=80=99t even see the eth in =
ifconfig, it seems your PHY is not detected, please check your dtb if =
the required PHY details are added.

Also check your kernel boot log if the PHY is being detected=E2=80=A6

=20

I believe there is nothing to be added for networking in local.conf. you =
need to add interface in dtb=E2=80=A6

=20

Regards

Alankar

=20

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Peter Balazovic
Sent: 13/12/2018 8:28 PM
To: Yocto list discussion
Subject: [yocto] core-image-* (minimal) networking

=20

I've built bitbake core-image-minimal and it runs but unfortunately I =
have no connectivity (networking) available.=20

=20

> ifconfig

lo        Link encap:Local Loopback =20

          inet addr:127.0.0.1  Mask:255.0.0.0

          inet6 addr: ::1/128 Scope:Host

          UP LOOPBACK RUNNING  MTU:65536  Metric:1

          RX packets:2720 errors:0 dropped:0 overruns:0 frame:0

          TX packets:2720 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1=20

          RX bytes:206720 (201.8 KiB)  TX bytes:206720 (201.8 KiB)

=20

What's need to be included within local.conf to enable networking?


------=_NextPart_000_0C08_01D495ED.D612EFA0
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Which platform you are working? As you don=E2=80=99t even see the eth =
in ifconfig, it seems your PHY is not detected, please check your dtb if =
the required PHY details are added.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Also check your kernel boot log if the PHY is being =
detected=E2=80=A6<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>I believe there is nothing to be added for networking in local.conf. =
you need to add interface in dtb=E2=80=A6<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Regards<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Alankar<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri","sans-serif";color:black'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Peter Balazovic<br><b>Sent:</b> 13/12/2018 8:28 =
PM<br><b>To:</b> Yocto list discussion<br><b>Subject:</b> [yocto] =
core-image-* (minimal) networking<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><p =
class=3DMsoNormal>I've built&nbsp;bitbake core-image-minimal and it runs =
but unfortunately I have no connectivity (networking) =
available.&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>&gt; ifconfig<o:p></o:p></p></div><div><div><p =
class=3DMsoNormal>lo&nbsp; &nbsp; &nbsp; &nbsp; Link encap:Local =
Loopback&nbsp;&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet =
addr:127.0.0.1&nbsp; Mask:255.0.0.0<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet6 addr: ::1/128 =
Scope:Host<o:p></o:p></p></div><div><p class=3DMsoNormal>&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; UP LOOPBACK RUNNING&nbsp; MTU:65536&nbsp; =
Metric:1<o:p></o:p></p></div><div><p class=3DMsoNormal>&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; RX packets:2720 errors:0 dropped:0 overruns:0 =
frame:0<o:p></o:p></p></div><div><p class=3DMsoNormal>&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; TX packets:2720 errors:0 dropped:0 overruns:0 =
carrier:0<o:p></o:p></p></div><div><p class=3DMsoNormal>&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; collisions:0 =
txqueuelen:1&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal>&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; RX bytes:206720 (201.8 KiB)&nbsp; TX =
bytes:206720 (201.8 KiB)<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>What's need to be included within local.conf to enable =
networking?<o:p></o:p></p></div></div></div></div></div></body></html>

------=_NextPart_000_0C08_01D495ED.D612EFA0--
