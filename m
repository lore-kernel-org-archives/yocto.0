Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18D71E002F9
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 22:57:35 -0700 (PDT)
Received: from [216.82.241.100:39297] by server-5.bemta-8.messagelabs.com id
	FD/8B-05166-DC01F025; Sat, 17 Aug 2013 05:57:33 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-11.tower-220.messagelabs.com!1376719049!4293687!1
X-Originating-IP: [203.101.96.8]
X-StarScan-Received: 
X-StarScan-Version: 6.9.11; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29066 invoked from network); 17 Aug 2013 05:57:32 -0000
Received: from unknown (HELO BLRINMSHTCAS02.bglrodc.lntinfotech.com)
	(203.101.96.8)
	by server-11.tower-220.messagelabs.com with AES128-SHA encrypted SMTP;
	17 Aug 2013 05:57:32 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS02.bglrodc.lntinfotech.com ([172.28.0.83]) with mapi;
	Sat, 17 Aug 2013 11:26:28 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Sat, 17 Aug 2013 11:24:40 +0530
Thread-Topic: [yocto] Build packages-ssh,telnet,alsa and other package for arm
Thread-Index: Ac6YtJsbKJKPO/K/T1WOZI2IVbmIrACVsdWg
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5EA3BEEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<37204F11-4EBA-42E9-8BC2-858EECFC2785@gmail.com>
In-Reply-To: <37204F11-4EBA-42E9-8BC2-858EECFC2785@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build packages-ssh, telnet, alsa and other package for arm
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
X-List-Received-Date: Sat, 17 Aug 2013 05:57:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2BLRINMSMBX01b_"

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2BLRINMSMBX01b_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Raj,
            Thanks for the suggestion, I have built the image as "core-imag=
e-base" , now I got the ssh, sftp working with my image.
But some more packages I need like- gtk+, I have taken those packages using=
 the "hob" and build the image "bitbake core-image-base",
But when I check that image using QEMU the "libgtk" does not present. I am =
not able to test or run my gtk app in QEMU.

How do I get it in my image. If I build core-image-sato the libgtk present =
and I can test my app, but the image size is too big.
Is there anyway either reduce the image-sato size or include the gtk suppor=
t in core-image-base?


Thanks & Regards
Amit K

From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: Wednesday, August 14, 2013 11:37 AM
To: Amit Kumar
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Build packages-ssh,telnet,alsa and other package for a=
rm


On Aug 13, 2013, at 10:49 PM, Amit Kumar <Amit.Kumar@lntinfotech.com<mailto=
:Amit.Kumar@lntinfotech.com>> wrote:


Hi,

            Using the Yocto Project 1.4, I want to build the packages like =
ssh, telnet, alias and other library packages for arm. I am not getting an =
idea how I should have to add those packages in my build environment. I wan=
t to build them and test, using the QEMU, is that possible? I want to build=
 them for arm.


You can start by building a reference image e.g. core-image-basic and then =
add the packages as you want extra I would encourage to read through the
manual

https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.h=
tml

especially IMAGE_FEATURES and IMAGE_INSTALL and CORE_IMAGE_EXTRA_INSTALL va=
riables.





Thanks & Regards
Amit K

________________________________
The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and using or disseminating the information, and must notify the sende=
r and delete it from their system. L&T Infotech will not accept responsibil=
ity or liability for the accuracy or completeness of, or the presence of an=
y virus or disabling code in this e-mail"
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2BLRINMSMBX01b_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><base href=3D"x-msg://5038/"><!--[if !mso]><=
style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
@font-face
	{font-family:Verdana;
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
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Trebuchet MS","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
ont-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Hi R=
aj,<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0=
pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for the suggestion=
, I have built the image as &#8220;core-image-base&#8221; , now I got the s=
sh, sftp working with my image.<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";colo=
r:#1F497D'>But some more packages I need like- gtk+, I have taken those pac=
kages using the &#8220;hob&#8221; and build the image &#8220;bitbake core-i=
mage-base&#8221;, <o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Bu=
t when I check that image using QEMU the &#8220;libgtk&#8221; does not pres=
ent. I am not able to test or run my gtk app in QEMU.<o:p></o:p></span></p>=
<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet=
 MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-ser=
if";color:#1F497D'>How do I get it in my image. If I build core-image-sato =
the libgtk present and I can test my app, but the image size is too big. <o=
:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fo=
nt-family:"Trebuchet MS","sans-serif";color:#1F497D'>Is there anyway either=
 reduce the image-sato size or include the gtk support in core-image-base?<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;f=
ont-family:"Trebuchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Tr=
ebuchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","s=
ans-serif";color:#1F497D'>Thanks &amp; Regards<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","s=
ans-serif";color:#1F497D'> Amit K <o:p></o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";c=
olor:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:none;bo=
rder-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNorma=
l><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>Fro=
m:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-ser=
if"'> Khem Raj [mailto:raj.khem@gmail.com] <br><b>Sent:</b> Wednesday, Augu=
st 14, 2013 11:37 AM<br><b>To:</b> Amit Kumar<br><b>Cc:</b> yocto@yoctoproj=
ect.org<br><b>Subject:</b> Re: [yocto] Build packages-ssh,telnet,alsa and o=
ther package for arm<o:p></o:p></span></p></div></div><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p=
 class=3DMsoNormal>On Aug 13, 2013, at 10:49 PM, Amit Kumar &lt;<a href=3D"=
mailto:Amit.Kumar@lntinfotech.com">Amit.Kumar@lntinfotech.com</a>&gt; wrote=
:<o:p></o:p></p></div><p class=3DMsoNormal><br><br><o:p></o:p></p><div><div=
><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuche=
t MS","sans-serif"'>Hi,</span><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif"'><o:p></o:p></span></p></div><div><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>=
&nbsp;</span><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif"'><o:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'=
font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=3Dapple-conver=
ted-space>&nbsp;</span></span><span style=3D'font-size:11.0pt;font-family:"=
Trebuchet MS","sans-serif"'>Using the Yocto Project 1.4, I want to build th=
e packages like ssh, telnet, alias and other library packages for arm. I am=
 not getting an idea how I should have to add those packages in my build en=
vironment. I want to build them and test, using the QEMU, is that possible?=
 I want to build them for arm.</span><span style=3D'font-size:11.0pt;font-f=
amily:"Calibri","sans-serif"'><o:p></o:p></span></p></div></div><div><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal><o:p>&n=
bsp;</o:p></p></div><div><p class=3DMsoNormal>You can start by building a r=
eference image e.g. core-image-basic and then add the packages as you want =
extra I would encourage to read through the&nbsp;<o:p></o:p></p></div><div>=
<p class=3DMsoNormal>manual<o:p></o:p></p></div><div><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal><a href=3D"https://www.=
yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html">https:/=
/www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html</a>=
<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><=
div><p class=3DMsoNormal>especially IMAGE_FEATURES and IMAGE_INSTALL and&nb=
sp;<span style=3D'font-family:"Verdana","sans-serif";color:#004444;backgrou=
nd:white'>CORE_IMAGE_EXTRA_INSTALL variables.</span><o:p></o:p></p></div><p=
 class=3DMsoNormal><br><br><o:p></o:p></p><div><div><p class=3DMsoNormal><s=
pan style=3D'font-size:11.0pt;font-family:"Trebuchet MS","sans-serif"'>&nbs=
p;</span><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
'><o:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'font=
-size:11.0pt;font-family:"Trebuchet MS","sans-serif"'>&nbsp;</span><span st=
yle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'><o:p></o:p></sp=
an></p></div><div><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font=
-family:"Trebuchet MS","sans-serif"'>&nbsp;</span><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif"'><o:p></o:p></span></p></div><div=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Trebuche=
t MS","sans-serif"'>Thanks &amp; Regards</span><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif"'><o:p></o:p></span></p></div><div><p=
 class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Trebuchet M=
S","sans-serif"'>Amit K</span><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif"'><o:p></o:p></span></p></div><p class=3DMsoNormal><sp=
an style=3D'font-size:13.5pt;font-family:"Helvetica","sans-serif"'><o:p>&nb=
sp;</o:p></span></p><div class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span style=3D'font-size:13.5pt;font-family:"Helvetica","sans-se=
rif"'><hr size=3D2 width=3D"100%" align=3Dcenter></span></div><p class=3DMs=
oNormal><span style=3D'font-family:"Arial","sans-serif"'>The contents of th=
is e-mail and any attachment(s) may contain confidential or privileged info=
rmation for the intended recipient(s). Unintended recipients are prohibited=
 from taking action on the basis of information in this e-mail and using or=
 disseminating the information, and must notify the sender and delete it fr=
om their system. L&amp;T Infotech will not accept responsibility or liabili=
ty for the accuracy or completeness of, or the presence of any virus or dis=
abling code in this e-mail&quot;<br></span><span style=3D'font-size:13.5pt;=
font-family:"Helvetica","sans-serif"'>_____________________________________=
__________<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.or=
g"><span style=3D'color:purple'>yocto@yoctoproject.org</span></a><br><a hre=
f=3D"https://lists.yoctoproject.org/listinfo/yocto"><span style=3D'color:pu=
rple'>https://lists.yoctoproject.org/listinfo/yocto</span></a><o:p></o:p></=
span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body=
></html>=

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2BLRINMSMBX01b_--
