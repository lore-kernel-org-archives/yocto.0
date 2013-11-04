Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E9E8E01351
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 07:09:32 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 4 Nov 2013 10:09:30 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Maxwell Bottiger <sleepylight@jive-turkey.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 4 Nov 2013 10:09:30 -0500
Thread-Topic: [yocto] 2.6.39 kernel and poky
Thread-Index: Ac7XFiZvM53D23cmTdaoH7SRgW85GwCWGqtQ
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B9040F9E@pluto.melinkcorp.local>
References: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
In-Reply-To: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: 2.6.39 kernel and poky
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
X-List-Received-Date: Mon, 04 Nov 2013 15:09:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_91586D499ADFD74FBCFB8425266A5DE40153B9040F9Eplutomelink_"

--_000_91586D499ADFD74FBCFB8425266A5DE40153B9040F9Eplutomelink_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Maxwell,

Atmel has a Yocto meta layer over at http://www.github.com/linux4sam/meta-a=
tmel.  Their layer was originally focused on the SAMA5 chipset, but has bee=
n since modified to include the SAM9x5 chipset.  I have a fork over at http=
://www.github.com/evensonbryan/meta-atmel that I've been using for my SAM9G=
25 board.  There is one kernel recipe that is using Atmel's 3.6.9 kernel an=
d another that uses Atmel's 3.9 kernel.  The 3.6.9 kernel in my testing is =
the most stable and has the highest level of peripheral support, but I've b=
een able to get both to run on the SAM9G25 evaluation board and our custom =
hardware.  Feel free to fork my layer or Atmel's layer and add support for =
the 2.6.39 kernel.  Atmel has been accepting pull requests on additional fe=
atures.

-Bryan Evenson

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Maxwell Bottiger
Sent: Friday, November 01, 2013 11:22 AM
To: yocto@yoctoproject.org
Subject: [yocto] 2.6.39 kernel and poky

I have a custom kernel and drivers I built for an Atmel AT91SAM9x5ek system=
 on a chip, and I'd like to use them with yocto to build a distribution.
The original documentation, support CD, etc are all based around an open em=
bedded build from 2011, which doesn't seem to work any longer.  Yocto looks=
 like a great alternative, but wants to build the 3.10 kernel, which I don'=
t think supports this SoC any longer.  So, is there a straight forward meth=
od of building a standard Poky root filesystem, but with a custom recipe fo=
r the 2.6.39 kernel instead of the stock one?
Thanks for your help.

--_000_91586D499ADFD74FBCFB8425266A5DE40153B9040F9Eplutomelink_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Maxwell,<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;f=
ont-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>Atmel has a Yocto meta layer over at <a href=
=3D"http://www.github.com/linux4sam/meta-atmel">http://www.github.com/linux=
4sam/meta-atmel</a>.&nbsp; Their layer was originally focused on the SAMA5 =
chipset, but has been since modified to include the SAM9x5 chipset.&nbsp; I=
 have a fork over at <a href=3D"http://www.github.com/evensonbryan/meta-atm=
el">http://www.github.com/evensonbryan/meta-atmel</a> that I&#8217;ve been =
using for my SAM9G25 board.&nbsp; There is one kernel recipe that is using =
Atmel&#8217;s 3.6.9 kernel and another that uses Atmel&#8217;s 3.9 kernel.&=
nbsp; The 3.6.9 kernel in my testing is the most stable and has the highest=
 level of peripheral support, but I&#8217;ve been able to get both to run o=
n the SAM9G25 evaluation board and our custom hardware.&nbsp; Feel free to =
fork my layer or Atmel&#8217;s layer and add support for the 2.6.39 kernel.=
&nbsp; Atmel has been accepting pull requests on additional features.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-f=
amily:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'>-Bryan Evenson<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-=
left:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:=
none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DM=
soNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-seri=
f"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","s=
ans-serif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproj=
ect.org] <b>On Behalf Of </b>Maxwell Bottiger<br><b>Sent:</b> Friday, Novem=
ber 01, 2013 11:22 AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</=
b> [yocto] 2.6.39 kernel and poky<o:p></o:p></span></p></div></div><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><p class=3DMsoNormal style=
=3D'margin-bottom:12.0pt'>I have a custom kernel and drivers I built for an=
 Atmel AT91SAM9x5ek system on a chip, and I'd like to use them with yocto t=
o build a distribution.<o:p></o:p></p></div><p class=3DMsoNormal style=3D'm=
argin-bottom:12.0pt'>The original documentation, support CD, etc are all ba=
sed around an open embedded build from 2011, which doesn't seem to work any=
 longer.&nbsp; Yocto looks like a great alternative, but wants to build the=
 3.10 kernel, which I don't think supports this SoC any longer.&nbsp; So, i=
s there a straight forward method of building a standard Poky root filesyst=
em, but with a custom recipe for the 2.6.39 kernel instead of the stock one=
?<o:p></o:p></p></div><p class=3DMsoNormal>Thanks for your help.<o:p></o:p>=
</p></div></div></div></body></html>=

--_000_91586D499ADFD74FBCFB8425266A5DE40153B9040F9Eplutomelink_--
