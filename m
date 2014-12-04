Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23954E00521; Thu,  4 Dec 2014 01:49:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 540D4E002F9
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 01:49:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 667F51015A
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 10:49:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eSK1BQT4fYOc for <yocto@yoctoproject.org>;
	Thu,  4 Dec 2014 10:49:13 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 10:49:13 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 5444D2716A
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 10:49:13 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Thu, 4 Dec 2014 10:49:13 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Thu, 4 Dec 2014 10:49:12 +0100
Thread-Topic: u-boot precompiled ?
Thread-Index: AdAPAvVJEAyRUeL6Sc+WKuHRrUDnbAApAe9Q
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A73@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A72@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A72@MSSRVS5.atlas.de>
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
X-List-Received-Date: Thu, 04 Dec 2014 09:49:31 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A73MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A73MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A73MSSRVS5atlasd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage18
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
 style=3D'color:#1F497D'>Even if this is a stupid question a little advise =
would be nice &#8230; like &#8220;don&#8217;t ask so stupid questions, go r=
ead this and that&#8221; or something&#8230; no time ? Should I rather unsu=
bscribe from this list until I&#8217;m an expert?<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div style=
=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><di=
v><div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0c=
m 0cm 0cm'><p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-fam=
ily:"Tahoma","sans-serif";mso-fareast-language:DE'>Von:</span></b><span sty=
le=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-langua=
ge:DE'> Heise, Matthias <br><b>Gesendet:</b> Mittwoch, 3. Dezember 2014 15:=
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
Mat<o:p></o:p></span></p></div></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A73MSSRVS5atlasd_--
