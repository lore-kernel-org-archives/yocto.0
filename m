Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6880E005A9; Sun, 11 Jan 2015 23:20:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C40CCE003E3
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 23:20:06 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 21DC010126;
	Mon, 12 Jan 2015 08:20:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IuotSRTOavVG; Mon, 12 Jan 2015 08:19:51 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Mon, 12 Jan 2015 08:19:50 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id C0BC227169;
	Mon, 12 Jan 2015 08:19:50 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Mon, 12 Jan 2015 08:19:49 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <sgw@linux.intel.com>, <yocto@yoctoproject.org>
Date: Mon, 12 Jan 2015 08:19:49 +0100
Thread-Topic: [yocto] can't pull any sources anymore
Thread-Index: AdAsKBbWgy/cJPysRpWHNUYAvmcYAwCDPaOA
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02929D60BB@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
	<54AFFCF2.5020501@linux.intel.com>
In-Reply-To: <54AFFCF2.5020501@linux.intel.com>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Subject: Re: can't pull any sources anymore
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
X-List-Received-Date: Mon, 12 Jan 2015 07:20:13 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BBMSSRVS5atlasd_"

--_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BBMSSRVS5atlasd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Saul,



thanks for your reply, I'm running the "repo init" command as in many tutor=
ials, this is the line :

repo init -u https://github.com/Freescale/fsl-community-bsp-platform -b diz=
zy



after the init I find following in the manifest.xml :



<?xml version=3D"1.0" encoding=3D"UTF-8"?>

<manifest>

  <default sync-j=3D"4" revision=3D"master"/>

  <remote fetch=3D"git://git.yoctoproject.org" name=3D"yocto"/>

  <remote fetch=3D"git://github.com/Freescale" name=3D"freescale"/>

  <remote fetch=3D"git://git.openembedded.org" name=3D"oe"/>



  <project remote=3D"yocto" revision=3D"dizzy" name=3D"poky" path=3D"source=
s/poky"/>

  <project remote=3D"yocto" revision=3D"dizzy" name=3D"meta-fsl-arm" path=
=3D"sources/meta-fsl-arm"/>

  <project remote=3D"oe" revision=3D"dizzy" name=3D"meta-openembedded" path=
=3D"sources/meta-openembedded"/>



  <project remote=3D"freescale" revision=3D"dizzy" name=3D"fsl-community-bs=
p-base" path=3D"sources/base">

                <copyfile dest=3D"README" src=3D"README"/>

                <copyfile dest=3D"setup-environment" src=3D"setup-environme=
nt"/>

  </project>



  <project remote=3D"freescale" revision=3D"dizzy" name=3D"meta-fsl-arm-ext=
ra" path=3D"sources/meta-fsl-arm-extra"/>

  <project remote=3D"freescale" revision=3D"dizzy" name=3D"meta-fsl-demos" =
path=3D"sources/meta-fsl-demos"/>

  <project remote=3D"freescale" revision=3D"dizzy" name=3D"Documentation" p=
ath=3D"sources/Documentation"/>



</manifest>



So you can see it is git.yoctoproject.org as well as others.

When running repo sync which as I understand it actually pulls the sources =
I get :



Fetching project Documentation

Fetching project poky

Fetching project repo

Fetching project meta-fsl-arm-extra

fatal: Invalid gitfile format: /home/theuser/fsl-community-bsp_NEWTEST/.rep=
o/repo/.git/clone.bundle

fatal: The remote end hung up unexpectedly

Fetching projects:  12% (1/8)  Fetching project fsl-community-bsp-base

Fetching projects:  25% (2/8)  Fetching project meta-fsl-arm

Fetching projects:  37% (3/8)  Fetching project meta-openembedded

Fetching projects:  50% (4/8)  Fetching project meta-fsl-demos

error: Failed connect to git.openembedded.org:443; Connection refused while=
 accessing https://git.openembedded.org/meta-openembedded/info/refs

fatal: HTTP request failed

Fetching projects:  62% (5/8)  fatal: https://git.yoctoproject.org/poky/inf=
o/refs not found: did you run git update-server-info on the server?

fatal: https://git.yoctoproject.org/meta-fsl-arm/info/refs not found: did y=
ou run git update-server-info on the server?

error: Failed connect to git.openembedded.org:443; Connection refused while=
 accessing https://git.openembedded.org/meta-openembedded/info/refs

fatal: HTTP request failed

fatal: https://git.yoctoproject.org/meta-fsl-arm/info/refs not found: did y=
ou run git update-server-info on the server?

fatal: https://git.yoctoproject.org/poky/info/refs not found: did you run g=
it update-server-info on the server?

error: Cannot fetch meta-openembedded

error: Cannot fetch poky

error: Cannot fetch meta-fsl-arm



error: Exited sync due to fetch errors



and here I'm stuck ...



> -----Urspr=FCngliche Nachricht-----

> Von: Saul Wold [mailto:sgw@linux.intel.com]

> Gesendet: Freitag, 9. Januar 2015 17:08

> An: Heise, Matthias; yocto@yoctoproject.org

> Betreff: Re: [yocto] can't pull any sources anymore

>

> On 01/09/2015 06:10 AM, Matthias.Heise@atlas-elektronik.com<mailto:Matthi=
as.Heise@atlas-elektronik.com> wrote:

> > Hi,

> >

> > I'm not able to pull any sources for a little time now. As test I re-tr=
ied an

> already working setup by again following some tutorial and trying to setu=
p a

> fresh repo. The repo init works but the sync fails. I should mention that=
 due

> to network limitations I replace git:// urls with https:// . Is it possib=
le that this

> doesn't work anymore (I mean it is replaced but maybe the online repos

> don't support it anymore seamlessly)?

>

> Can you be more specific, are you talking about the git repos at

> git.yoctoproject.org or some other git source?

>

> You say a "repo init works", does that mean an initial clone or ?  What

> commands are you running?

>

> I think a little more information is needed here.

>

> Sau!

>

> > Thanks

> >

> > Mat

> >

> >

> >

> >

--_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BBMSSRVS5atlasd_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Nur Text Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.NurTextZchn
	{mso-style-name:"Nur Text Zchn";
	mso-style-priority:99;
	mso-style-link:"Nur Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 129.75pt 2.0cm 129.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoPlainText>Hello Saul,<o:p=
></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlain=
Text><span lang=3DEN-US>thanks for your reply, I'm running the &quot;repo i=
nit&quot; command as in many tutorials, this is the line :<o:p></o:p></span=
></p><p class=3DMsoPlainText>repo init -u https://github.com/Freescale/fsl-=
community-bsp-platform -b dizzy<o:p></o:p></p><p class=3DMsoPlainText><o:p>=
&nbsp;</o:p></p><p class=3DMsoPlainText><span lang=3DEN-US>after the init I=
 find following in the manifest.xml :<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainT=
ext><span style=3D'font-family:"Cambria","serif";color:#4F81BD'>&lt;?xml ve=
rsion=3D&quot;1.0&quot; encoding=3D&quot;UTF-8&quot;?&gt;<o:p></o:p></span>=
</p><p class=3DMsoPlainText><span style=3D'font-family:"Cambria","serif";co=
lor:#4F81BD'>&lt;manifest&gt;<o:p></o:p></span></p><p class=3DMsoPlainText>=
<span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>=
=A0 &lt;default sync-j=3D&quot;4&quot; revision=3D&quot;master&quot;/&gt;<o=
:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'fon=
t-family:"Cambria","serif";color:#4F81BD'>=A0 &lt;remote fetch=3D&quot;git:=
//git.yoctoproject.org&quot; name=3D&quot;yocto&quot;/&gt;<o:p></o:p></span=
></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambr=
ia","serif";color:#4F81BD'>=A0 &lt;remote fetch=3D&quot;git://github.com/Fr=
eescale&quot; name=3D&quot;freescale&quot;/&gt;<o:p></o:p></span></p><p cla=
ss=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif"=
;color:#4F81BD'>=A0 &lt;remote fetch=3D&quot;git://git.openembedded.org&quo=
t; name=3D&quot;oe&quot;/&gt;<o:p></o:p></span></p><p class=3DMsoPlainText>=
<span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'><o=
:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=
=3D'font-family:"Cambria","serif";color:#4F81BD'>=A0 &lt;project remote=3D&=
quot;yocto&quot; revision=3D&quot;dizzy&quot; name=3D&quot;poky&quot; path=
=3D&quot;sources/poky&quot;/&gt;<o:p></o:p></span></p><p class=3DMsoPlainTe=
xt><span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'=
>=A0 &lt;project remote=3D&quot;yocto&quot; revision=3D&quot;dizzy&quot; na=
me=3D&quot;meta-fsl-arm&quot; path=3D&quot;sources/meta-fsl-arm&quot;/&gt;<=
o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'fo=
nt-family:"Cambria","serif";color:#4F81BD'>=A0 &lt;project remote=3D&quot;o=
e&quot; revision=3D&quot;dizzy&quot; name=3D&quot;meta-openembedded&quot; p=
ath=3D&quot;sources/meta-openembedded&quot;/&gt;<o:p></o:p></span></p><p cl=
ass=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif=
";color:#4F81BD'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>=A0 &lt;=
project remote=3D&quot;freescale&quot; revision=3D&quot;dizzy&quot; name=3D=
&quot;fsl-community-bsp-base&quot; path=3D&quot;sources/base&quot;&gt;<o:p>=
</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-f=
amily:"Cambria","serif";color:#4F81BD'>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 &lt;copyfile dest=3D&quot;README&quot; src=3D&quot;README&quot;/&=
gt;<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=
=3D'font-family:"Cambria","serif";color:#4F81BD'>=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 &lt;copyfile dest=3D&quot;setup-environment&quot; src=
=3D&quot;setup-environment&quot;/&gt;<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F=
81BD'>=A0 &lt;/project&gt;<o:p></o:p></span></p><p class=3DMsoPlainText><sp=
an lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'=
font-family:"Cambria","serif";color:#4F81BD'>=A0 &lt;project remote=3D&quot=
;freescale&quot; revision=3D&quot;dizzy&quot; name=3D&quot;meta-fsl-arm-ext=
ra&quot; path=3D&quot;sources/meta-fsl-arm-extra&quot;/&gt;<o:p></o:p></spa=
n></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Camb=
ria","serif";color:#4F81BD'>=A0 &lt;project remote=3D&quot;freescale&quot; =
revision=3D&quot;dizzy&quot; name=3D&quot;meta-fsl-demos&quot; path=3D&quot=
;sources/meta-fsl-demos&quot;/&gt;<o:p></o:p></span></p><p class=3DMsoPlain=
Text><span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81B=
D'>=A0 &lt;project remote=3D&quot;freescale&quot; revision=3D&quot;dizzy&qu=
ot; name=3D&quot;Documentation&quot; path=3D&quot;sources/Documentation&quo=
t;/&gt;<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US sty=
le=3D'font-family:"Cambria","serif";color:#4F81BD'><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambri=
a","serif";color:#4F81BD'>&lt;/manifest&gt;</span><span lang=3DEN-US style=
=3D'font-family:"Cambria","serif"'><o:p></o:p></span></p><p class=3DMsoPlai=
nText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US>So you can see it is git.yoctoproject.org as well as o=
thers.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>When=
 running repo sync which as I understand it actually pulls the sources I ge=
t :<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'fo=
nt-family:"Cambria","serif";color:#4F81BD'>Fetching project Documentation<o=
:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'fon=
t-family:"Cambria","serif";color:#4F81BD'>Fetching project poky<o:p></o:p><=
/span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"=
Cambria","serif";color:#4F81BD'>Fetching project repo<o:p></o:p></span></p>=
<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","=
serif";color:#4F81BD'>Fetching project meta-fsl-arm-extra<o:p></o:p></span>=
</p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambri=
a","serif";color:#4F81BD'>fatal: Invalid gitfile format: /home/theuser/fsl-=
community-bsp_NEWTEST/.repo/repo/.git/clone.bundle<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","ser=
if";color:#4F81BD'>fatal: The remote end hung up unexpectedly<o:p></o:p></s=
pan></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Ca=
mbria","serif";color:#4F81BD'>Fetching projects:=A0 12% (1/8)=A0 Fetching p=
roject fsl-community-bsp-base<o:p></o:p></span></p><p class=3DMsoPlainText>=
<span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>Fe=
tching projects:=A0 25% (2/8)=A0 Fetching project meta-fsl-arm<o:p></o:p></=
span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"C=
ambria","serif";color:#4F81BD'>Fetching projects:=A0 37% (3/8)=A0 Fetching =
project meta-openembedded<o:p></o:p></span></p><p class=3DMsoPlainText><spa=
n lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>Fetchi=
ng projects:=A0 50% (4/8)=A0 Fetching project meta-fsl-demos<o:p></o:p></sp=
an></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cam=
bria","serif";color:#4F81BD'>error: Failed connect to git.openembedded.org:=
443; Connection refused while accessing https://git.openembedded.org/meta-o=
penembedded/info/refs<o:p></o:p></span></p><p class=3DMsoPlainText><span la=
ng=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>fatal: HTT=
P request failed<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3D=
EN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>Fetching projec=
ts:=A0 62% (5/8)=A0 fatal: https://git.yoctoproject.org/poky/info/refs not =
found: did you run git update-server-info on the server?<o:p></o:p></span><=
/p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria=
","serif";color:#4F81BD'>fatal: https://git.yoctoproject.org/meta-fsl-arm/i=
nfo/refs not found: did you run git update-server-info on the server?<o:p><=
/o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-fa=
mily:"Cambria","serif";color:#4F81BD'>error: Failed connect to git.openembe=
dded.org:443; Connection refused while accessing https://git.openembedded.o=
rg/meta-openembedded/info/refs<o:p></o:p></span></p><p class=3DMsoPlainText=
><span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>f=
atal: HTTP request failed<o:p></o:p></span></p><p class=3DMsoPlainText><spa=
n lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>fatal:=
 https://git.yoctoproject.org/meta-fsl-arm/info/refs not found: did you run=
 git update-server-info on the server?<o:p></o:p></span></p><p class=3DMsoP=
lainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif";color:#4=
F81BD'>fatal: https://git.yoctoproject.org/poky/info/refs not found: did yo=
u run git update-server-info on the server?<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif";c=
olor:#4F81BD'>error: Cannot fetch meta-openembedded<o:p></o:p></span></p><p=
 class=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","se=
rif";color:#4F81BD'>error: Cannot fetch poky<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif";c=
olor:#4F81BD'>error: Cannot fetch meta-fsl-arm<o:p></o:p></span></p><p clas=
s=3DMsoPlainText><span lang=3DEN-US style=3D'font-family:"Cambria","serif";=
color:#4F81BD'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span la=
ng=3DEN-US style=3D'font-family:"Cambria","serif";color:#4F81BD'>error: Exi=
ted sync due to fetch errors<o:p></o:p></span></p><p class=3DMsoPlainText><=
span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span=
 lang=3DEN-US>and here I&#8217;m stuck &#8230;<o:p></o:p></span></p><p clas=
s=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoPlainText>&gt; <span style=3D'mso-fareast-language:DE'>-----Urspr=FCngli=
che Nachricht-----</span></p><p class=3DMsoPlainText>&gt; <span style=3D'ms=
o-fareast-language:DE'>Von: Saul Wold [mailto:sgw@linux.intel.com]</span></=
p><p class=3DMsoPlainText>&gt; <span style=3D'mso-fareast-language:DE'>Gese=
ndet: Freitag, 9. Januar 2015 17:08</span></p><p class=3DMsoPlainText>&gt; =
<span style=3D'mso-fareast-language:DE'>An: Heise, Matthias; yocto@yoctopro=
ject.org</span></p><p class=3DMsoPlainText>&gt; <span style=3D'mso-fareast-=
language:DE'>Betreff: Re: [yocto] can't pull any sources anymore</span></p>=
<p class=3DMsoPlainText>&gt; </p><p class=3DMsoPlainText>&gt; On 01/09/2015=
 06:10 AM, <a href=3D"mailto:Matthias.Heise@atlas-elektronik.com"><span sty=
le=3D'color:windowtext;text-decoration:none'>Matthias.Heise@atlas-elektroni=
k.com</span></a> wrote:</p><p class=3DMsoPlainText>&gt; &gt; Hi,</p><p clas=
s=3DMsoPlainText>&gt; &gt;</p><p class=3DMsoPlainText>&gt; &gt; I'm not abl=
e to pull any sources for a little time now. As test I re-tried an</p><p cl=
ass=3DMsoPlainText>&gt; already working setup by again following some tutor=
ial and trying to setup a</p><p class=3DMsoPlainText>&gt; fresh repo. The r=
epo init works but the sync fails. I should mention that due</p><p class=3D=
MsoPlainText>&gt; to network limitations I replace git:// urls with https:/=
/ . Is it possible that this</p><p class=3DMsoPlainText>&gt; doesn't work a=
nymore (I mean it is replaced but maybe the online repos</p><p class=3DMsoP=
lainText>&gt; don't support it anymore seamlessly)?</p><p class=3DMsoPlainT=
ext>&gt; </p><p class=3DMsoPlainText>&gt; Can you be more specific, are you=
 talking about the git repos at</p><p class=3DMsoPlainText>&gt; git.yoctopr=
oject.org or some other git source?</p><p class=3DMsoPlainText>&gt; </p><p =
class=3DMsoPlainText>&gt; You say a &quot;repo init works&quot;, does that =
mean an initial clone or ?=A0 What</p><p class=3DMsoPlainText>&gt; commands=
 are you running?</p><p class=3DMsoPlainText>&gt; </p><p class=3DMsoPlainTe=
xt>&gt; I think a little more information is needed here.</p><p class=3DMso=
PlainText>&gt; </p><p class=3DMsoPlainText>&gt; Sau!</p><p class=3DMsoPlain=
Text>&gt; </p><p class=3DMsoPlainText>&gt; &gt; Thanks</p><p class=3DMsoPla=
inText>&gt; &gt;</p><p class=3DMsoPlainText>&gt; &gt; Mat</p><p class=3DMso=
PlainText>&gt; &gt;</p><p class=3DMsoPlainText>&gt; &gt;</p><p class=3DMsoP=
lainText>&gt; &gt;</p><p class=3DMsoPlainText>&gt; &gt;</p></div></body></h=
tml>=

--_000_4009F04F5925CD4C95FBD9BE756381FE02929D60BBMSSRVS5atlasd_--
