Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53E0CE0077F; Fri, 28 Nov 2014 01:36:12 -0800 (PST)
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
X-Greylist: delayed 393 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Nov 2014 01:36:04 PST
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D999BE0034B
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 01:36:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 7689410909
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 10:29:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QNfDTdzvXx6k for <yocto@yoctoproject.org>;
	Fri, 28 Nov 2014 10:29:19 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 10:29:19 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 40F1B27169
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 10:29:19 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Fri, 28 Nov 2014 10:29:19 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Nov 2014 10:29:18 +0100
Thread-Topic: do_fetch linux hangs after defconfig/conf-fragment change
Thread-Index: AdAK7bP3x0vjkCV+QHqlJv50lIqbSw==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: do_fetch linux hangs after defconfig/conf-fragment change
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
X-List-Received-Date: Fri, 28 Nov 2014 09:36:12 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A67MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A67MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm quite new to yocto and currently am playing around with all kinds of ba=
sic functions and procedures of yocto to step by step learn and get to know=
 yocto and bitbake.
Currently I'm trying to store the kernel config settings in some way in my =
layer to have it modular. So I read about config fragments. Unfortunately I=
 can't test what I did as when running bitbake the do_fetch for the linux s=
ource is started and doesn't end. Even when enabling/disabling only one lin=
e in the defconfig file, which I tried as test, this happens. That isn't no=
rmal is it ? What can I do about this ?
Thank you,
Best regards,
Mat



--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A67MSSRVS5atlasd_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p>=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span la=
ng=3DEN-US>I&#8217;m quite new to yocto and currently am playing around wit=
h all kinds of basic functions and procedures of yocto to step by step lear=
n and get to know yocto and bitbake.<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US>Currently I&#8217;m trying to store the kernel confi=
g settings in some way in my layer to have it modular. So I read about conf=
ig fragments. Unfortunately I can&#8217;t test what I did as when running b=
itbake the do_fetch for the linux source is started and doesn&#8217;t end. =
Even when enabling/disabling only one line in the defconfig file, which I t=
ried as test, this happens. That isn&#8217;t normal is it ? What can I do a=
bout this ?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Th=
ank you,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Mat <=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></sp=
an></p></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A67MSSRVS5atlasd_--
