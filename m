Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86ACE013AE
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2013 21:43:49 -0700 (PDT)
Received: from [216.82.241.100:44033] by server-6.bemta-8.messagelabs.com id
	75/20-27210-388BCE15; Mon, 22 Jul 2013 04:43:47 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-14.tower-220.messagelabs.com!1374468223!3291149!1
X-Originating-IP: [203.101.96.8]
X-StarScan-Received: 
X-StarScan-Version: 6.9.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 4589 invoked from network); 22 Jul 2013 04:43:45 -0000
Received: from unknown (HELO BLRINMSHTCAS02.bglrodc.lntinfotech.com)
	(203.101.96.8)
	by server-14.tower-220.messagelabs.com with AES128-SHA encrypted SMTP;
	22 Jul 2013 04:43:45 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS02.bglrodc.lntinfotech.com ([172.28.0.83]) with mapi;
	Mon, 22 Jul 2013 10:12:42 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: "Lee_Ballard@Dell.com" <Lee_Ballard@Dell.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 22 Jul 2013 10:13:42 +0530
Thread-Topic: Regarding offline build
Thread-Index: Ac6CFkymgRXO6FWXTG2mk09tVJ4OrgAGflMgAJBUBpA=
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<6D31A433FC4A6747B1AD836EB116AA2C02BF4FF5E8@AUSX7MCPC110.AMER.DELL.COM>
In-Reply-To: <6D31A433FC4A6747B1AD836EB116AA2C02BF4FF5E8@AUSX7MCPC110.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Regarding offline build
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
X-List-Received-Date: Mon, 22 Jul 2013 04:43:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6BLRINMSMBX01b_"

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6BLRINMSMBX01b_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Mr. Lee,
            Thanks for replay.
I have still doubt to build offline. I have downloaded all the tar files, n=
ow what I should have to do? Do I need to modify all the *.bb files.
Do you have any example to build it offline.

I wants to build the MCSDK uses the Yocto Project. So for that I have downl=
oad the mcsdk tar ball, which gives me all tar balls.
Now I am not getting how to process to build Yocto project.

If you have any idea please let me know.

Thanks & regards
Amit K


From: Lee_Ballard@Dell.com [mailto:Lee_Ballard@Dell.com]
Sent: Tuesday, July 16, 2013 7:58 PM
To: Amit Kumar; yocto@yoctoproject.org
Subject: RE: Regarding offline build

We do offline builds.  You need to download all the tar balls for all the o=
pen source recipes you build, or you can download pre-build images and SDK.=
  Another way is to create a local mirror of all the tar balls you need.

Lee Ballard
Platform Software Principal Engineer
Dell | Enterprise Product Group


From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Amit Kumar
Sent: Tuesday, July 16, 2013 6:22 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Regarding offline build

Hi,
            I have quarry regarding the Yocto Project build offline.
Is that possible to build the Yocto Project with internet access?
I have download the poky-<latest>.tar.bz2, now I wants to build it independ=
ently without having internet connection.
Do I need to download any other packages also to build it offline?



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

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6BLRINMSMBX01b_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Trebuchet MS","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Trebuchet MS","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
ont-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Hi M=
r. Lee,<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for replay.<o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fon=
t-family:"Trebuchet MS","sans-serif";color:#1F497D'>I have still doubt to b=
uild offline. I have downloaded all the tar files, now what I should have t=
o do? Do I need to modify all the *.bb files.<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sa=
ns-serif";color:#1F497D'>Do you have any example to build it offline.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-f=
amily:"Trebuchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuch=
et MS","sans-serif";color:#1F497D'>I wants to build the MCSDK uses the Yoct=
o Project. So for that I have download the mcsdk tar ball, which gives me a=
ll tar balls.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font=
-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Now I a=
m not getting how to process to build Yocto project.<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet =
MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-seri=
f";color:#1F497D'>If you have any idea please let me know.<o:p></o:p></span=
></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Treb=
uchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sa=
ns-serif";color:#1F497D'>Thanks &amp; regards<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sa=
ns-serif";color:#1F497D'>Amit K<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";colo=
r:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'><o:=
p>&nbsp;</o:p></span></p><div><div style=3D'border:none;border-top:solid #B=
5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span style=
=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></b><sp=
an style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Lee_Ballar=
d@Dell.com [mailto:Lee_Ballard@Dell.com] <br><b>Sent:</b> Tuesday, July 16,=
 2013 7:58 PM<br><b>To:</b> Amit Kumar; yocto@yoctoproject.org<br><b>Subjec=
t:</b> RE: Regarding offline build<o:p></o:p></span></p></div></div><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span style=3D'colo=
r:#1F497D'>We do offline builds.&nbsp; You need to download all the tar bal=
ls for all the open source recipes you build, or you can download pre-build=
 images and SDK.&nbsp; Another way is to create a local mirror of all the t=
ar balls you need.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span s=
tyle=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#444=
444'>Lee Ballard<o:p></o:p></span></b></p><p class=3DMsoNormal><span style=
=3D'font-size:8.0pt;font-family:"Trebuchet MS","sans-serif";color:#444444'>=
Platform Software Principal Engineer <o:p></o:p></span></p><p class=3DMsoNo=
rmal><b><span style=3D'font-size:8.0pt;font-family:"Trebuchet MS","sans-ser=
if";color:#0085C3'>Dell</span></b><span style=3D'font-size:8.0pt;font-famil=
y:"Trebuchet MS","sans-serif";color:#444444'> | </span><span style=3D'font-=
size:10.0pt;color:#1F497D'>Enterprise Product Group</span><b><span style=3D=
'font-size:8.0pt;font-family:"Trebuchet MS","sans-serif";color:#444444'> <o=
:p></o:p></span></b></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F49=
7D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:none;border-top:s=
olid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span=
 style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span><=
/b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> <a h=
ref=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.or=
g</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounc=
es@yoctoproject.org</a>] <b>On Behalf Of </b>Amit Kumar<br><b>Sent:</b> Tue=
sday, July 16, 2013 6:22 AM<br><b>To:</b> <a href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a><br><b>Subject:</b> [yocto] Regarding of=
fline build<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-famil=
y:"Trebuchet MS","sans-serif"'>Hi,<o:p></o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I have q=
uarry regarding the Yocto Project build offline. <o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS"=
,"sans-serif"'>Is that possible to build the Yocto Project with internet ac=
cess?<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10=
.0pt;font-family:"Trebuchet MS","sans-serif"'>I have download the poky-&lt;=
latest&gt;.tar.bz2, now I wants to build it independently without having in=
ternet connection.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>Do I need to dow=
nload any other packages also to build it offline?<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS=
","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'><o:p>&nbsp;<=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-f=
amily:"Trebuchet MS","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-s=
erif"'>Thanks &amp; Regards<o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>Amit K<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt;f=
ont-family:"Times New Roman","serif"'><o:p>&nbsp;</o:p></span></p><div clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'fon=
t-size:12.0pt;font-family:"Times New Roman","serif"'><hr size=3D2 width=3D"=
100%" align=3Dcenter></span></div><p class=3DMsoNormal><span style=3D'font-=
size:12.0pt;font-family:"Arial","sans-serif";color:black'>The contents of t=
his e-mail and any attachment(s) may contain confidential or privileged inf=
ormation for the intended recipient(s). Unintended recipients are prohibite=
d from taking action on the basis of information in this e-mail and using o=
r disseminating the information, and must notify the sender and delete it f=
rom their system. L&amp;T Infotech will not accept responsibility or liabil=
ity for the accuracy or completeness of, or the presence of any virus or di=
sabling code in this e-mail&quot;</span><span style=3D'font-size:12.0pt;fon=
t-family:"Times New Roman","serif"'><o:p></o:p></span></p></div></body></ht=
ml>=

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6BLRINMSMBX01b_--
