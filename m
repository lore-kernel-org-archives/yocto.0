Return-Path: <Lee_Ballard@Dell.com>
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
	[143.166.148.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70BF0E013E8
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 07:19:46 -0700 (PDT)
X-LoopCount0: from 10.170.28.39
X-IronPort-AV: E=Sophos;i="4.89,719,1367989200"; 
	d="scan'208,217";a="205365679"
From: <Lee_Ballard@Dell.com>
To: <Amit.Kumar@lntinfotech.com>, <yocto@yoctoproject.org>
Date: Mon, 22 Jul 2013 09:19:43 -0500
Thread-Topic: Regarding offline build
Thread-Index: Ac6CFkymgRXO6FWXTG2mk09tVJ4OrgAGflMgAJBUBpAAnQpzYA==
Message-ID: <6D31A433FC4A6747B1AD836EB116AA2C02BF6508BC@AUSX7MCPC110.AMER.DELL.COM>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<6D31A433FC4A6747B1AD836EB116AA2C02BF4FF5E8@AUSX7MCPC110.AMER.DELL.COM>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E53DAE6@BLRINMSMBX01.bglrodc.lntinfotech.com>
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
X-List-Received-Date: Mon, 22 Jul 2013 14:19:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6D31A433FC4A6747B1AD836EB116AA2C02BF6508BCAUSX7MCPC110A_"

--_000_6D31A433FC4A6747B1AD836EB116AA2C02BF6508BCAUSX7MCPC110A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here are the lines in our local.conf that make it work.  If you want you ca=
n use a local http mirror instead of file.

DL_DIR ?=3D "${TOPDIR}/tmp/downloads-keepout"
SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"

# we build on isolated network, so disable all network access
#don't really disable all network, as we need network to do sstate
BB_NO_NETWORK =3D "0"
INHERIT +=3D "own-mirrors"
SOURCE_MIRROR_URL ?=3D "file://${TOPDIR}/../sources/"
BB_GENERATE_MIRROR_TARBALLS =3D "1"
BB_FETCH_PREMIRRORONLY =3D "1"
CONNECTIVITY_CHECK_URIS=3D""
DISABLE_NETWORK_SANITY =3D "1"

From: Amit Kumar [mailto:Amit.Kumar@lntinfotech.com]
Sent: Sunday, July 21, 2013 11:44 PM
To: Ballard, Lee; yocto@yoctoproject.org
Subject: RE: Regarding offline build

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


From: Lee_Ballard@Dell.com<mailto:Lee_Ballard@Dell.com> [mailto:Lee_Ballard=
@Dell.com]
Sent: Tuesday, July 16, 2013 7:58 PM
To: Amit Kumar; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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

--_000_6D31A433FC4A6747B1AD836EB116AA2C02BF6508BCAUSX7MCPC110A_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Trebuchet MS","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Trebuchet MS","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
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
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Here are the lines in our local.conf that make it work.&nbsp;=
 If you want you can use a local http mirror instead of file.<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>DL_DIR ?=3D =
&quot;${TOPDIR}/tmp/downloads-keepout&quot;<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'>SSTATE_DIR ?=3D &quot;${TOPDIR}/=
sstate-cache&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D=
'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'color:#1F497D'># we build on isolated network, so disable all network =
access<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F49=
7D'>#don't really disable all network, as we need network to do sstate<o:p>=
</o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>BB_NO_N=
ETWORK =3D &quot;0&quot; <o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'color:#1F497D'>INHERIT +=3D &quot;own-mirrors&quot;<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>SOURCE_MIRROR_URL =
?=3D &quot;file://${TOPDIR}/../sources/&quot;<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'>BB_GENERATE_MIRROR_TARBALLS =3D =
&quot;1&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'colo=
r:#1F497D'>BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'color:#1F497D'>CONNECTIVITY_CHECK_URIS=3D=
&quot;&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color=
:#1F497D'>DISABLE_NETWORK_SANITY =3D &quot;1&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p=
><div><div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0p=
t 0in 0in 0in'><p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font=
-family:"Tahoma","sans-serif"'>From:</span></b><span style=3D'font-size:10.=
0pt;font-family:"Tahoma","sans-serif"'> Amit Kumar [mailto:Amit.Kumar@lntin=
fotech.com] <br><b>Sent:</b> Sunday, July 21, 2013 11:44 PM<br><b>To:</b> B=
allard, Lee; yocto@yoctoproject.org<br><b>Subject:</b> RE: Regarding offlin=
e build<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"T=
rebuchet MS","sans-serif";color:#1F497D'>Hi Mr. Lee,<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet =
MS","sans-serif";color:#1F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Thanks for replay.<o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-=
serif";color:#1F497D'>I have still doubt to build offline. I have downloade=
d all the tar files, now what I should have to do? Do I need to modify all =
the *.bb files.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'fo=
nt-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Do yo=
u have any example to build it offline.<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-ser=
if";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F4=
97D'>I wants to build the MCSDK uses the Yocto Project. So for that I have =
download the mcsdk tar ball, which gives me all tar balls.<o:p></o:p></span=
></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Treb=
uchet MS","sans-serif";color:#1F497D'>Now I am not getting how to process t=
o build Yocto project.<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size=
:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>If you have =
any idea please let me know.<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#=
1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'fon=
t-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Thanks=
 &amp; regards<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'fon=
t-size:10.0pt;font-family:"Trebuchet MS","sans-serif";color:#1F497D'>Amit K=
<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;=
font-family:"Trebuchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"T=
rebuchet MS","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><=
div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0=
in 0in'><p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family=
:"Tahoma","sans-serif"'>From:</span></b><span style=3D'font-size:10.0pt;fon=
t-family:"Tahoma","sans-serif"'> <a href=3D"mailto:Lee_Ballard@Dell.com">Le=
e_Ballard@Dell.com</a> [<a href=3D"mailto:Lee_Ballard@Dell.com">mailto:Lee_=
Ballard@Dell.com</a>] <br><b>Sent:</b> Tuesday, July 16, 2013 7:58 PM<br><b=
>To:</b> Amit Kumar; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctop=
roject.org</a><br><b>Subject:</b> RE: Regarding offline build<o:p></o:p></s=
pan></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMs=
oNormal><span style=3D'color:#1F497D'>We do offline builds.&nbsp; You need =
to download all the tar balls for all the open source recipes you build, or=
 you can download pre-build images and SDK.&nbsp; Another way is to create =
a local mirror of all the tar balls you need.<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Trebuchet =
MS","sans-serif";color:#444444'>Lee Ballard<o:p></o:p></span></b></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:8.0pt;font-family:"Trebuchet MS","s=
ans-serif";color:#444444'>Platform Software Principal Engineer <o:p></o:p><=
/span></p><p class=3DMsoNormal><b><span style=3D'font-size:8.0pt;font-famil=
y:"Trebuchet MS","sans-serif";color:#0085C3'>Dell</span></b><span style=3D'=
font-size:8.0pt;font-family:"Trebuchet MS","sans-serif";color:#444444'> | <=
/span><span style=3D'font-size:10.0pt;color:#1F497D'>Enterprise Product Gro=
up</span><b><span style=3D'font-size:8.0pt;font-family:"Trebuchet MS","sans=
-serif";color:#444444'> <o:p></o:p></span></b></p><p class=3DMsoNormal><spa=
n style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=
=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><=
p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma"=
,"sans-serif"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:=
"Tahoma","sans-serif"'> <a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopro=
ject.org">mailto:yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Am=
it Kumar<br><b>Sent:</b> Tuesday, July 16, 2013 6:22 AM<br><b>To:</b> <a hr=
ef=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>Subje=
ct:</b> [yocto] Regarding offline build<o:p></o:p></span></p></div></div><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span style=3D=
'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>Hi,<o:p></o:p></=
span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"=
Trebuchet MS","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; I have quarry regarding the Yocto Project build offline=
. <o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0p=
t;font-family:"Trebuchet MS","sans-serif"'>Is that possible to build the Yo=
cto Project with internet access?<o:p></o:p></span></p><p class=3DMsoNormal=
><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'>I=
 have download the poky-&lt;latest&gt;.tar.bz2, now I wants to build it ind=
ependently without having internet connection.<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS","s=
ans-serif"'>Do I need to download any other packages also to build it offli=
ne?<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0=
pt;font-family:"Trebuchet MS","sans-serif"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuchet MS=
","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:10.0pt;font-family:"Trebuchet MS","sans-serif"'><o:p>&nbsp;<=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-f=
amily:"Trebuchet MS","sans-serif"'>Thanks &amp; Regards<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Trebuch=
et MS","sans-serif"'>Amit K<o:p></o:p></span></p><p class=3DMsoNormal><span=
 style=3D'font-size:12.0pt;font-family:"Times New Roman","serif"'><o:p>&nbs=
p;</o:p></span></p><div class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span style=3D'font-size:12.0pt;font-family:"Times New Roman","se=
rif"'><hr size=3D2 width=3D"100%" align=3Dcenter></span></div><p class=3DMs=
oNormal><span style=3D'font-size:12.0pt;font-family:"Arial","sans-serif";co=
lor:black'>The contents of this e-mail and any attachment(s) may contain co=
nfidential or privileged information for the intended recipient(s). Uninten=
ded recipients are prohibited from taking action on the basis of informatio=
n in this e-mail and using or disseminating the information, and must notif=
y the sender and delete it from their system. L&amp;T Infotech will not acc=
ept responsibility or liability for the accuracy or completeness of, or the=
 presence of any virus or disabling code in this e-mail&quot;</span><span s=
tyle=3D'font-size:12.0pt;font-family:"Times New Roman","serif"'><o:p></o:p>=
</span></p></div></body></html>=

--_000_6D31A433FC4A6747B1AD836EB116AA2C02BF6508BCAUSX7MCPC110A_--
