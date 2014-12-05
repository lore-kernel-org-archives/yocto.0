Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 091B9E008D9; Fri,  5 Dec 2014 04:49:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E772BE00832
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 04:49:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id F366C10159;
	Fri,  5 Dec 2014 13:49:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8rI7RqWZJTuW; Fri,  5 Dec 2014 13:48:51 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Fri,  5 Dec 2014 13:48:50 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 8EE4527169;
	Fri,  5 Dec 2014 13:48:50 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Fri, 5 Dec 2014 13:48:50 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <Matt.Schuckmann@planar.com>, <yocto@yoctoproject.org>
Date: Fri, 5 Dec 2014 13:48:49 +0100
Thread-Topic: u-boot precompiled ?
Thread-Index: AdAPAvVJEAyRUeL6Sc+WKuHRrUDnbAApAe9QAA9MbYAAKSjKkA==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A75@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A72@MSSRVS5.atlas.de>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A73@MSSRVS5.atlas.de>
	<4B07ADD556F70043925DA2E9C5D4346D2FDB562272@MSXBEBVT12.planar.net>
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDB562272@MSXBEBVT12.planar.net>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: Re: u-boot precompiled ?
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
X-List-Received-Date: Fri, 05 Dec 2014 12:49:11 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A75MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A75MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Matt,

thanks very much for your reply, I was able to create a simple patch changi=
ng an u-boot setting as test and "bbappended" it. I just didn't believe bef=
ore that the various u-boot settings are "hard-coded" but they obviously ar=
e in the "<board>.h", so patching it seems to be the only way for changing =
settings from within yocto, right?
Regards,
Mat

Von: Matt Schuckmann [mailto:Matt.Schuckmann@planar.com]
Gesendet: Donnerstag, 4. Dezember 2014 18:31
An: Heise, Matthias; yocto@yoctoproject.org
Betreff: RE: u-boot precompiled ?

Mat,

I'm fairly new to OpenEmbedded (4 months now and I still feel like a noobi =
but I'm trying to give back while the pain is still fresh in my mind)
For something like u-boot it kind of depends on what your changing. If you =
need to change the u-boot code and the changes are small then typically you=
'd create a patch f for your changes and then make them part of a .bbappend=
 in your layer for the recipe. There are examples on the net for how to cre=
ate a .bbappend and reference the patch file.

Generally your .bbappend can be as simple as:

FILESEXTRAPATHS_prepend =3D ":${THISDIR}/files"
SRC_URI +=3D "files://xyzzy.patch"

Where your patches are in subdirectory of your recipe directory.

Remember that generally recipes are about how to obtain the code, build it =
and package it for distribution, you can do recipes that deal with a pre-bu=
ilt binary but that is generally not the case.

Hope this helps,

Matt S.



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Matthias.Heise@atlas-=
elektronik.com<mailto:Matthias.Heise@atlas-elektronik.com>
Sent: Thursday, December 04, 2014 1:49 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] u-boot precompiled ?

Even if this is a stupid question a little advise would be nice ... like "d=
on't ask so stupid questions, go read this and that" or something... no tim=
e ? Should I rather unsubscribe from this list until I'm an expert?

Von: Heise, Matthias
Gesendet: Mittwoch, 3. Dezember 2014 15:15
An: 'yocto@yoctoproject.org'
Betreff: u-boot precompiled ?

Hi all,

I'm still trying to find out basic things about getting a system up and run=
ning. This question is about U-Boot, is it right that for example for my wa=
ndboard a pre-compiled *.imx is just downloaded ?
So if I want to make settings to U-Boot I make them directly in the source,=
 compile it and re-direct in a recipe to take that new file as bootloader ?=
 Or can I make the settings within a recipe and I just didn't find the spot=
 ?
Thanks for your time,
Regards
Mat

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A75MSSRVS5atlasd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
span.E-MailFormatvorlage19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
p.BalloonText, li.BalloonText, div.BalloonText
	{mso-style-name:"Balloon Text";
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.E-MailFormatvorlage24
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#1F497D'>Hello Matt,<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>thanks very=
 much for your reply, I was able to create a simple patch changing an u-boo=
t setting as test and &#8220;bbappended&#8221; it. I just didn&#8217;t beli=
eve before that the various u-boot settings are &#8220;hard-coded&#8221; bu=
t they obviously are in the &#8220;&lt;board&gt;.h&#8221;, so patching it s=
eems to be the only way for changing settings from within yocto, right?<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1=
F497D'>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'color:#1F497D'>Mat <o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;bord=
er-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'bord=
er:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=
=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-=
serif"'>Von:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma"=
,"sans-serif"'> Matt Schuckmann [mailto:Matt.Schuckmann@planar.com] <br><b>=
Gesendet:</b> Donnerstag, 4. Dezember 2014 18:31<br><b>An:</b> Heise, Matth=
ias; yocto@yoctoproject.org<br><b>Betreff:</b> RE: u-boot precompiled ?<o:p=
></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Mat, <o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#1F497D'>I&#8217;m fairly new to OpenEmbedded (4 months now and I=
 still feel like a noobi but I&#8217;m trying to give back while the pain i=
s still fresh in my mind) <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#1F497D'>For something like u-boot it kind of d=
epends on what your changing. If you need to change the u-boot code and the=
 changes are small then typically you&#8217;d create a patch f for your cha=
nges and then make them part of a .bbappend in your layer for the recipe. T=
here are examples on the net for how to create a .bbappend and reference th=
e patch file. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'color:#1F497D'>Generally your .bbappend can be a=
s simple as: <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'color:#1F497D'>FILESEXTRAPATHS_prepend =3D &#8220=
;:${THISDIR}/files&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#1F497D'>SRC_URI +=3D &#8220;files://xyzzy.patch=
&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#1F497D'>Where your patches are in subdirectory =
of your recipe directory. <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Remember that gener=
ally recipes are about how to obtain the code, build it and package it for =
distribution, you can do recipes that deal with a pre-built binary but that=
 is generally not the case. <o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Hope this helps,<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#=
1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#1F497D'>Matt S. <o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:solid =
blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border=
-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-se=
rif"'>From:</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Tahoma","sans-serif"'> <a href=3D"mailto:yocto-bounces@yoctoproject.or=
g">yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoct=
oproject.org">mailto:yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </=
b><a href=3D"mailto:Matthias.Heise@atlas-elektronik.com">Matthias.Heise@atl=
as-elektronik.com</a><br><b>Sent:</b> Thursday, December 04, 2014 1:49 AM<b=
r><b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br><b>Subject:</b> Re: [yocto] u-boot precompiled ?<o:p></o:p></span=
></p></div></div><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>E=
ven if this is a stupid question a little advise would be nice &#8230; like=
 &#8220;don&#8217;t ask so stupid questions, go read this and that&#8221; o=
r something&#8230; no time ? Should I rather unsubscribe from this list unt=
il I&#8217;m an expert?<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left=
:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none=
;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNo=
rmal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>=
Von:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-s=
erif"'> Heise, Matthias <br><b>Gesendet:</b> Mittwoch, 3. Dezember 2014 15:=
15<br><b>An:</b> 'yocto@yoctoproject.org'<br><b>Betreff:</b> u-boot precomp=
iled ?<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p><p class=3DMsoNormal><span lang=3DEN-US>Hi all,<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>I&#8217;m still trying to find out basic =
things about getting a system up and running. This question is about U-Boot=
, is it right that for example for my wandboard a pre-compiled *.imx is jus=
t downloaded ? <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>So if I want to make settings to U-Boot I make them directly in the sourc=
e, compile it and re-direct in a recipe to take that new file as bootloader=
 ? Or can I make the settings within a recipe and I just didn&#8217;t find =
the spot ?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Tha=
nks for your time,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>Regards <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=
Mat<o:p></o:p></span></p></div></div></div></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A75MSSRVS5atlasd_--
