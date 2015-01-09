Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 976F6E0086E; Fri,  9 Jan 2015 06:11:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA80E004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 06:10:59 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 7939410123
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 15:10:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eI9Zu2M0Ht94 for <yocto@yoctoproject.org>;
	Fri,  9 Jan 2015 15:10:46 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 15:10:46 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 68E7127169
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 15:10:46 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Fri, 9 Jan 2015 15:10:46 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jan 2015 15:10:45 +0100
Thread-Topic: can't pull any sources anymore
Thread-Index: AdAsFWRSA1uyUdeYR9GVUj1RPI14Mg==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: can't pull any sources anymore
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
X-List-Received-Date: Fri, 09 Jan 2015 14:11:11 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BAMSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BAMSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm not able to pull any sources for a little time now. As test I re-tried =
an already working setup by again following some tutorial and trying to set=
up a fresh repo. The repo init works but the sync fails. I should mention t=
hat due to network limitations I replace git:// urls with https:// . Is it =
possible that this doesn't work anymore (I mean it is replaced but maybe th=
e online repos don't support it anymore seamlessly)?
Thanks

Mat


--_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BAMSSRVS5atlasd_
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
>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I&#8217;m not ab=
le to pull any sources for a little time now. As test I re-tried an already=
 working setup by again following some tutorial and trying to setup a fresh=
 repo. The repo init works but the sync fails. I should mention that due to=
 network limitations I replace git:// urls with https:// . Is it possible t=
hat this doesn&#8217;t work anymore (I mean it is replaced but maybe the on=
line repos don&#8217;t support it anymore seamlessly)?<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US>Thanks <o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><b><span lang=3DEN-GB style=3D'font-size:10.0pt;mso-fareast-langua=
ge:DE'>Mat</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Courier New";mso-fareast-language:DE'><o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></htm=
l>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BAMSSRVS5atlasd_--
