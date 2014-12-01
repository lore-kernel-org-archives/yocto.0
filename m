Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C386DE0091D; Mon,  1 Dec 2014 00:46:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B57E0084A
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 00:46:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 52AA1105FB
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 09:46:42 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b2fbLcfvYdWr for <yocto@yoctoproject.org>;
	Mon,  1 Dec 2014 09:46:31 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 09:46:31 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 891FB2716A
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 09:46:31 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Mon, 1 Dec 2014 09:46:31 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <yocto@yoctoproject.org>
Date: Mon, 1 Dec 2014 09:46:30 +0100
Thread-Topic: add a user via recipe
Thread-Index: AdANQc+SmvW9mJqCR0q3i2MSfYHREg==
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: add a user via recipe
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
X-List-Received-Date: Mon, 01 Dec 2014 08:46:53 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6BMSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6BMSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,

I'm still trying to add a user via recipe. The method with

inherit extrausers
EXTRA_USER_PARAMS =3D "useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V=
1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' fstuser;"

Does not work (no errors just no user in image), as well as this :

ROOTFS_POSTPROCESS_COMMAND +=3D "add_a_user;"

add_a_user(){
     useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIri=
XzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' fstuser;
}

Which results in an error during bitbake :
useradd: /etc/passwd.23966: Permission denied
useradd cannot lock /etc/passwd; try again later

any ideas to that ?
thanks,
regards
Mat

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6BMSSRVS5atlasd_
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
>Hi there,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I&#8217;m =
still trying to add a user via recipe. The method with <o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p cl=
ass=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-US style=3D'f=
ont-family:"Courier New"'>inherit extrausers<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier New"'>EXTRA_U=
SER_PARAMS =3D &quot;useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n=
25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' fstuser;&qu=
ot;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'f=
ont-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>Does not work (no errors just no user in image), as well=
 as this :<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-family:"Courier New"'>ROOTFS_POSTPR=
OCESS_COMMAND +=3D &quot;add_a_user;&quot;<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'font-family:"Courier New"'><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-fam=
ily:"Courier New"'>add_a_user(){<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&n=
bsp; useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIri=
XzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' fstuser;<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier Ne=
w"'>}<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Which results i=
n an error during bitbake :<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-family:"Courier New"'>useradd: /etc/passwd.2396=
6: Permission denied<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-family:"Courier New"'>useradd cannot lock /etc/passw=
d; try again later<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>any ideas to that ?<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>thanks,<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>regards<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US>Mat<o:p></o:p></span></p></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6BMSSRVS5atlasd_--
