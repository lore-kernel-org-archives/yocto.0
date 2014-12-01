Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 009F2E00924; Mon,  1 Dec 2014 04:41:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9B3E008D9
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 04:41:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 77BBC108FB;
	Mon,  1 Dec 2014 13:41:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F93d4afpPMcu; Mon,  1 Dec 2014 13:41:34 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Mon,  1 Dec 2014 13:41:34 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id E76E02716A;
	Mon,  1 Dec 2014 13:41:33 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Mon, 1 Dec 2014 13:41:33 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <Qi.Chen@windriver.com>, <yocto@yoctoproject.org>
Date: Mon, 1 Dec 2014 13:41:33 +0100
Thread-Topic: [yocto] add a user via recipe
Thread-Index: AdANS0zd6cO0VsrQRciYdXSCaJGlHwAGIP3Q
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6F@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de>
	<547C383E.6030600@windriver.com>
In-Reply-To: <547C383E.6030600@windriver.com>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: Re: add a user via recipe
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
X-List-Received-Date: Mon, 01 Dec 2014 12:41:55 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6FMSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6FMSSRVS5atlasd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok, the EXTRA_USERS_PARAMS method now also works, it was the typo with USER=
 and USERS and an encrypted password with '  ' around it which is needed, s=
trangely the encrypted string for one and the same password all of a sudden=
 was different, after re-generating it, it worked

Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 Im Auftrag von ChenQi
Gesendet: Montag, 1. Dezember 2014 10:43
An: yocto@yoctoproject.org
Betreff: Re: [yocto] add a user via recipe

On 12/01/2014 04:46 PM, Matthias.Heise@atlas-elektronik.com<mailto:Matthias=
.Heise@atlas-elektronik.com> wrote:
Hi there,

I'm still trying to add a user via recipe. The method with

inherit extrausers
EXTRA_USER_PARAMS =3D "useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V=
1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' fstuser;"


EXTRA_USERS_PARAMS instead of EXTRA_USER_PARAMS

Also, clear password is supported. E.g.
EXTRA_USERS_PARAMS =3D "useradd -P 'hello' tester;"


Does not work (no errors just no user in image), as well as this :

ROOTFS_POSTPROCESS_COMMAND +=3D "add_a_user;"

add_a_user(){
     useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIri=
XzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' fstuser;
}

Which results in an error during bitbake :
useradd: /etc/passwd.23966: Permission denied
useradd cannot lock /etc/passwd; try again later


You need to pass '--root xxx' option to it.

//Chen Qi


any ideas to that ?
thanks,
regards
Mat




--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6FMSSRVS5atlasd_
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
	color:black;
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
</o:shapelayout></xml><![endif]--></head><body bgcolor=3Dwhite lang=3DDE li=
nk=3Dblue vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'color:#1F497D'>Ok, the EXTRA_USERS_PARAMS method n=
ow also works, it was the typo with USER and USERS and an encrypted passwor=
d with &#8216; &nbsp;&#8216; around it which is needed, strangely the encry=
pted string for one and the same password all of a sudden was different, af=
ter re-generating it, it worked <o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;bo=
rder-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'bo=
rder:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p clas=
s=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans=
-serif";color:windowtext;mso-fareast-language:DE'>Von:</span></b><span styl=
e=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:windowtext;ms=
o-fareast-language:DE'> yocto-bounces@yoctoproject.org [mailto:yocto-bounce=
s@yoctoproject.org] <b>Im Auftrag von </b>ChenQi<br><b>Gesendet:</b> Montag=
, 1. Dezember 2014 10:43<br><b>An:</b> yocto@yoctoproject.org<br><b>Betreff=
:</b> Re: [yocto] add a user via recipe<o:p></o:p></span></p></div></div><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On 12/01/=
2014 04:46 PM, <a href=3D"mailto:Matthias.Heise@atlas-elektronik.com">Matth=
ias.Heise@atlas-elektronik.com</a> wrote:<o:p></o:p></p></div><blockquote s=
tyle=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p class=3DMsoNormal><span la=
ng=3DEN-US>Hi there,</span><o:p></o:p></p><p class=3DMsoNormal><span lang=
=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-U=
S>I&#8217;m still trying to add a user via recipe. The method with </span><=
o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o=
:p></p><p class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-U=
S style=3D'font-family:"Courier New","serif"'>inherit extrausers</span><o:p=
></o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Co=
urier New","serif"'>EXTRA_USER_PARAMS =3D &quot;useradd -p '\$6\$53uYm/0Fnl=
l\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLN=
yQa7dKBNURqEg1' fstuser;&quot;</span><o:p></o:p></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'font-family:"Courier New","serif"'>&nbsp;</span><=
o:p></o:p></p></blockquote><p class=3DMsoNormal><span style=3D'font-size:12=
.0pt;font-family:"Times New Roman","serif";mso-fareast-language:DE'><br>EXT=
RA_USERS_PARAMS instead of EXTRA_USER_PARAMS<br><br>Also, clear password is=
 supported. E.g.<br>EXTRA_USERS_PARAMS =3D &quot;useradd -P 'hello' tester;=
&quot;<br><br><br><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>Does not work (no errors just no user in image), as well as this :</sp=
an><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-fam=
ily:"Courier New","serif"'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal=
><span lang=3DEN-US style=3D'font-family:"Courier New","serif"'>ROOTFS_POST=
PROCESS_COMMAND +=3D &quot;add_a_user;&quot;</span><o:p></o:p></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier New","serif"'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-family:"Courier New","serif"'>add_a_user(){</span><o:p></o:p></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier New","=
serif"'>&nbsp;&nbsp;&nbsp;&nbsp; useradd -p '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd=
63Tw98TO3V1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1'=
 fstuser;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-family:"Courier New","serif"'>}</span><o:p></o:p></p><p class=3DM=
soNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNorma=
l><span lang=3DEN-US>Which results in an error during bitbake :</span><o:p>=
</o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Cou=
rier New","serif"'>useradd: /etc/passwd.23966: Permission denied</span><o:p=
></o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Co=
urier New","serif"'>useradd cannot lock /etc/passwd; try again later</span>=
<o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family=
:"Courier New","serif"'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><s=
pan style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";mso-far=
east-language:DE'><br>You need to pass '--root xxx' option to it.<br><br>//=
Chen Qi<br><br><br><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>any ideas to that ?</span><o:p></o:p></p><p class=3DMsoNormal><span l=
ang=3DEN-US>thanks,</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3D=
EN-US>regards</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US>=
Mat</span><o:p></o:p></p><p class=3DMsoNormal><span style=3D'font-size:12.0=
pt;font-family:"Times New Roman","serif";mso-fareast-language:DE'><br><br><=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt;f=
ont-family:"Times New Roman","serif";mso-fareast-language:DE'><o:p>&nbsp;</=
o:p></span></p></div></div></body></html>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02848F2A6FMSSRVS5atlasd_--
