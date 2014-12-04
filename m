Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DB85E008E5; Thu,  4 Dec 2014 09:32:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A158BE008CA
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 09:32:06 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-13.us.mimecast.lan; Thu, 04 Dec 2014 12:30:56 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Thu, 4 Dec 2014 09:30:37 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "Matthias.Heise@atlas-elektronik.com"
	<Matthias.Heise@atlas-elektronik.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 4 Dec 2014 09:30:36 -0800
Thread-Topic: u-boot precompiled ?
Thread-Index: AdAPAvVJEAyRUeL6Sc+WKuHRrUDnbAApAe9QAA9MbYA=
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDB562272@MSXBEBVT12.planar.net>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A72@MSSRVS5.atlas.de>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A73@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A73@MSSRVS5.atlas.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: feOqVXRmSWO8B5IQ4zizRg-21
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
X-List-Received-Date: Thu, 04 Dec 2014 17:32:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B07ADD556F70043925DA2E9C5D4346D2FDB562272MSXBEBVT12pla_"

--_000_4B07ADD556F70043925DA2E9C5D4346D2FDB562272MSXBEBVT12pla_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

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



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Matthias.Heise@atlas-elektronik.com
Sent: Thursday, December 04, 2014 1:49 AM
To: yocto@yoctoproject.org
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



--_000_4B07ADD556F70043925DA2E9C5D4346D2FDB562272MSXBEBVT12pla_
Content-Type: text/html; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
=09{font-family:Tahoma;
=09panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0in;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
=09{mso-style-priority:99;
=09color:blue;
=09text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:purple;
=09text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
=09{mso-style-priority:99;
=09mso-style-link:"Balloon Text Char";
=09margin:0in;
=09margin-bottom:.0001pt;
=09font-size:8.0pt;
=09font-family:"Tahoma","sans-serif";}
span.EmailStyle17
=09{mso-style-type:personal;
=09font-family:"Calibri","sans-serif";
=09color:windowtext;}
span.EmailStyle18
=09{mso-style-type:personal;
=09font-family:"Calibri","sans-serif";
=09color:#1F497D;}
span.EmailStyle19
=09{mso-style-type:personal-reply;
=09font-family:"Calibri","sans-serif";
=09color:#1F497D;}
span.BalloonTextChar
=09{mso-style-name:"Balloon Text Char";
=09mso-style-priority:99;
=09mso-style-link:"Balloon Text";
=09font-family:"Tahoma","sans-serif";}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-size:10.0pt;}
@page WordSection1
=09{size:8.5in 11.0in;
=09margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Mat, <o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'color:#1F497D'>I&#8217;m fairly new to OpenEmbedded (4 months now a=
nd I still feel like a noobi but I&#8217;m trying to give back while the pa=
in is still fresh in my mind) <o:p></o:p></span></p><p class=3DMsoNormal><s=
pan style=3D'color:#1F497D'>For something like u-boot it kind of depends on=
 what your changing. If you need to change the u-boot code and the changes =
are small then typically you&#8217;d create a patch f for your changes and =
then make them part of a .bbappend in your layer for the recipe. There are =
examples on the net for how to create a .bbappend and reference the patch f=
ile. <o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1=
F497D'>Generally your .bbappend can be as simple as: <o:p></o:p></span></p>=
<p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal><span style=3D'color:#1F497D'>FILESEXTRAPATHS_prep=
end =3D &#8220;:${THISDIR}/files&#8221;<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'color:#1F497D'>SRC_URI +=3D &#8220;files://xyzzy.patc=
h&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F=
497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color=
:#1F497D'>Where your patches are in subdirectory of your recipe directory. =
<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o=
:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D=
'>Remember that generally recipes are about how to obtain the code, build i=
t and package it for distribution, you can do recipes that deal with a pre-=
built binary but that is generally not the case. <o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span style=3D'color:#1F497D'>Hope this helps,<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>Matt S=
. <o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F49=
7D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#=
1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:s=
olid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none;b=
order-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNorm=
al><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>Fr=
om:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-se=
rif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g] <b>On Behalf Of </b>Matthias.Heise@atlas-elektronik.com<br><b>Sent:</b> =
Thursday, December 04, 2014 1:49 AM<br><b>To:</b> yocto@yoctoproject.org<br=
><b>Subject:</b> Re: [yocto] u-boot precompiled ?<o:p></o:p></span></p></di=
v></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><spa=
n style=3D'color:#1F497D'>Even if this is a stupid question a little advise=
 would be nice &#8230; like &#8220;don&#8217;t ask so stupid questions, go =
read this and that&#8221; or something&#8230; no time ? Should I rather uns=
ubscribe from this list until I&#8217;m an expert?<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div style=3D'border:none;border-lef=
t:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:non=
e;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoN=
ormal><b><span lang=3DDE style=3D'font-size:10.0pt;font-family:"Tahoma","sa=
ns-serif"'>Von:</span></b><span lang=3DDE style=3D'font-size:10.0pt;font-fa=
mily:"Tahoma","sans-serif"'> Heise, Matthias <br><b>Gesendet:</b> Mittwoch,=
 3. Dezember 2014 15:15<br><b>An:</b> 'yocto@yoctoproject.org'<br><b>Betref=
f:</b> u-boot precompiled ?<o:p></o:p></span></p></div></div><p class=3DMso=
Normal><span lang=3DDE><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>Hi =
all,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>I&#8217;m still trying to find out basic things about getting a syst=
em up and running. This question is about U-Boot, is it right that for exam=
ple for my wandboard a pre-compiled *.imx is just downloaded ? <o:p></o:p><=
/p><p class=3DMsoNormal>So if I want to make settings to U-Boot I make them=
 directly in the source, compile it and re-direct in a recipe to take that =
new file as bootloader ? Or can I make the settings within a recipe and I j=
ust didn&#8217;t find the spot ?<o:p></o:p></p><p class=3DMsoNormal>Thanks =
for your time,<o:p></o:p></p><p class=3DMsoNormal>Regards <o:p></o:p></p><p=
 class=3DMsoNormal>Mat<o:p></o:p></p></div></div></div></body></html>


--_000_4B07ADD556F70043925DA2E9C5D4346D2FDB562272MSXBEBVT12pla_--
