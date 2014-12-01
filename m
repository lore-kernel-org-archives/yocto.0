Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF9ADE007BA; Mon,  1 Dec 2014 05:17:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34FC1E005B7
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 05:16:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id E73C2108FA
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 14:16:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAhxCe_-MRxJ for <yocto@yoctoproject.org>;
	Mon,  1 Dec 2014 14:16:44 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 14:16:44 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 02B6927169
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 14:16:43 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Mon, 1 Dec 2014 14:16:43 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Mon, 1 Dec 2014 14:16:43 +0100
Thread-Topic: how to start with custom interface/driver
Thread-Index: AdANaAex+H2ssu5XSxCTx4IaEZER0w==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A70@MSSRVS5.atlas.de>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: how to start with custom interface/driver
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
X-List-Received-Date: Mon, 01 Dec 2014 13:17:00 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A70MSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A70MSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm aware of the fact, that this is probably not the right point to ask, bu=
t maybe you still can give me some hints and/or point me to the right place=
 to ask.
What I would like to  do is to connect a certain interface-chip to the free=
scale imx6. I have a wandboard which doesn't use it, a new interface card c=
ould be made. The idea would be to use the flash interface as it provides d=
ata and address lines (so one could directly address the chip), a driver (x=
86) for that interface chip exists. So the task would be to have the driver=
 control the chip via this certain interface and then incorporate this in a=
 yocto-linux environment.
Any help and hint would be appreciated,
Thank you very much,
Regards,
Mat



--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A70MSSRVS5atlasd_
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
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
>Hi all,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I&#8217;m aw=
are of the fact, that this is probably not the right point to ask, but mayb=
e you still can give me some hints and/or point me to the right place to as=
k. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>What I wou=
ld like to &nbsp;do is to connect a certain interface-chip to the freescale=
 imx6. I have a wandboard which doesn&#8217;t use it, a new interface card =
could be made. The idea would be to use the flash interface as it provides =
data and address lines (so one could directly address the chip), a driver (=
x86) for that interface chip exists. So the task would be to have the drive=
r control the chip via this certain interface and then incorporate this in =
a yocto-linux environment. <o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US>Any help and hint would be appreciated,<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>Thank you very much,<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US>Regards,<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>Mat <o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A70MSSRVS5atlasd_--
