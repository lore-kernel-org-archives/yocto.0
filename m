Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
	[143.166.148.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFABEE00282
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 10:20:18 -0800 (PST)
X-LoopCount0: from 10.175.216.250
X-IronPort-AV: E=Sophos;i="4.93,746,1378875600"; 
	d="scan'208,217";a="337358309"
From: <Michael_E_Brown@Dell.com>
To: <diego.sueiro@gmail.com>, <sbabic@denx.de>
Date: Thu, 21 Nov 2013 12:20:09 -0600
Thread-Topic: [yocto] Deploying Yocto build images
Thread-Index: Ac7mtjGmow19B2IdQjS4UufHwUqE4QALvctg
Message-ID: <DB6E482E89290547898851B8CC9D8110012FAE31A0@AUSX7MCPS302.AMER.DELL.COM>
References: <528DF846.9050306@denx.de>
	<CAMCfZKE1fv=ZGB=HMe-4BmG-XRKMb_kaOADESwe-6mD1wp_hDw@mail.gmail.com>
In-Reply-To: <CAMCfZKE1fv=ZGB=HMe-4BmG-XRKMb_kaOADESwe-6mD1wp_hDw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-version: 3.5.21.1
x-tituslabs-classifications-30: TLPropertyRoot=Dell;Classification=Minimum
	Restrictions;Sublabels=;
x-tituslabs-classificationhash-30: VgNFIFU9Hx+/nZJb9Kg7IjqULGMZMmwFa9Q/XCmUMbo3PAPLsD5mwgJwU5kWYBUvvnMUdBcbuEsVFW95EI+D9Vk5LwZVnDid+JYLQ6vSD73JqBZMOuoO+BAdLSclal2+E4flCvUkU0aH2qwotFi6SnjcXZxS8iG9z64fTH0s+JH9iOIre30iHSYckxL+748M4GEUaq6HyAa2K0/44LvDnm/gpRjavss4Dj/9N1fBfgoBJdFmRzeuE01bJQjWOtht
x-titusconfigver: 1.0AMER
acceptlanguage: en-US
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Deploying Yocto build images
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
X-List-Received-Date: Thu, 21 Nov 2013 18:20:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6E482E89290547898851B8CC9D8110012FAE31A0AUSX7MCPS302A_"

--_000_DB6E482E89290547898851B8CC9D8110012FAE31A0AUSX7MCPS302A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for posting this. It's very timely for a project I am in the initial=
 stages of designing. I have looked over the docs and some of the code, and=
 am interested in using this.

I would make a couple suggestions:

1)      As you mention, documentation is important. Unless this is very wel=
l documented, it's difficult for other people to take up and use effectivel=
y, or to advocate for its use in a group

2)      Progress indications: it's going to be fairly important to build in=
 some way to notify other process about the state of the update. A flexible=
 framework for sharing progress would be very much appreciated. There are a=
 couple scenarios I have, but the main one is a network notification where =
one device is being updated by another. The updated device should be able t=
o signal update progress to the updater device in a flexible fashion. I hav=
en't looked at the code hard enough to see how difficult this would be to a=
dd.
--
Michael

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Diego Sueiro
Sent: Thursday, November 21, 2013 6:35 AM
To: Stefano Babic
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Deploying Yocto build images

Stefano,

This is a really great tool. I'm always developing a new software update to=
ol for each new project, since there are different requirements.
As I can see you are dealing with different scenarios, and this is really a=
mazing.

I'm already cloning meta-swupdate to test it.
Looking at recipes I realized that swupdate is initialized in an sysVinit e=
nvironment.
Did you plan to use systemd too?
Maybe I can contribute to this.

Thanks for sharing.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

2013/11/21 Stefano Babic <sbabic@denx.de<mailto:sbabic@denx.de>>
Hi everybody,

in the last ELCE, David point out in his presentation that we should
improve how to deploy Yocto images on the target.

I did some work this year to provide a reliable way for some customers
of us to install Yocto's images in field, and I have published last week
the sources. Here the link of the announcement:

        http://comments.gmane.org/gmane.comp.embedded.eldk/2397

Mainly, it is a tool that can be stored in the rootfs or will be put in
a separate initrd image and whose goal is only to update the system. I
have tried to describe pros and cons of several different solutions
(updating via bootloader ? single copy against dual copy ?) - you can
find details in the doc directory in the swupdate repository.

Maybe someone of you can find this helpful, and I will be happy if I
could get some feedback.

Best regards,
Stefano Babic

--
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53<tel:%2B49-8142-66989-53> Fax: +49-8142-66989-80<te=
l:%2B49-8142-66989-80> Email: sbabic@denx.de<mailto:sbabic@denx.de>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_DB6E482E89290547898851B8CC9D8110012FAE31A0AUSX7MCPS302A_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1776247974;
	mso-list-type:hybrid;
	mso-list-template-ids:1087510256 -53607554 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:22.5pt;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:58.5pt;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:94.5pt;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:130.5pt;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:166.5pt;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:202.5pt;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:238.5pt;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:274.5pt;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:310.5pt;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Thanks fo=
r posting this. It&#8217;s very timely for a project I am in the initial st=
ages of designing. I have looked over the docs and some of the code, and am=
 interested in using this.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>I would make a cou=
ple suggestions:<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'=
margin-left:22.5pt;text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !suppo=
rtLists]><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
;color:#1F497D'><span style=3D'mso-list:Ignore'>1)<span style=3D'font:7.0pt=
 "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![=
endif]><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'>As you mention, documentation is important. Unless this is ve=
ry well documented, it&#8217;s difficult for other people to take up and us=
e effectively, or to advocate for its use in a group<o:p></o:p></span></p><=
p class=3DMsoListParagraph style=3D'margin-left:22.5pt;text-indent:-.25in;m=
so-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'><span style=3D'mso-list=
:Ignore'>2)<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; </span></span></span><![endif]><span style=3D'font-size:11.0pt;=
font-family:"Calibri","sans-serif";color:#1F497D'>Progress indications: it&=
#8217;s going to be fairly important to build in some way to notify other p=
rocess about the state of the update. A flexible framework for sharing prog=
ress would be very much appreciated. There are a couple scenarios I have, b=
ut the main one is a network notification where one device is being updated=
 by another. The updated device should be able to signal update progress to=
 the updater device in a flexible fashion. I haven&#8217;t looked at the co=
de hard enough to see how difficult this would be to add.<o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>--<o:p></o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>Michael<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><a name=3D"_____replyseparator"></a=
><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From=
:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-seri=
f"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 <b>On Behalf Of </b>Diego Sueiro<br><b>Sent:</b> Thursday, November 21, 20=
13 6:35 AM<br><b>To:</b> Stefano Babic<br><b>Cc:</b> yocto@yoctoproject.org=
<br><b>Subject:</b> Re: [yocto] Deploying Yocto build images<o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>=
Stefano,<o:p></o:p></p><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div=
><div><p class=3DMsoNormal>This is a really great tool. I'm always developi=
ng a new software update tool for each new project, since there are differe=
nt requirements.<o:p></o:p></p></div><div><p class=3DMsoNormal>As I can see=
 you are dealing with different scenarios, and this is really amazing.<o:p>=
</o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><=
p class=3DMsoNormal>I'm already cloning meta-swupdate to test it.<o:p></o:p=
></p></div><div><p class=3DMsoNormal>Looking at recipes I realized that swu=
pdate is initialized in an sysVinit environment.<o:p></o:p></p></div><div><=
p class=3DMsoNormal>Did you plan to use systemd too?<o:p></o:p></p></div><d=
iv><p class=3DMsoNormal>Maybe I can contribute to this.<o:p></o:p></p></div=
><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNo=
rmal>Thanks for sharing.<o:p></o:p></p></div><div><p class=3DMsoNormal><br =
clear=3Dall><o:p></o:p></p><div><div><div><p class=3DMsoNormal>Regards,<o:p=
></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p cl=
ass=3DMsoNormal>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock 'n roll*/=
<o:p></o:p></p></div></div><p class=3DMsoNormal style=3D'margin-bottom:12.0=
pt'><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>2013/11/21 Stefano Babic=
 &lt;<a href=3D"mailto:sbabic@denx.de" target=3D"_blank">sbabic@denx.de</a>=
&gt;<o:p></o:p></p><p class=3DMsoNormal>Hi everybody,<br><br>in the last EL=
CE, David point out in his presentation that we should<br>improve how to de=
ploy Yocto images on the target.<br><br>I did some work this year to provid=
e a reliable way for some customers<br>of us to install Yocto's images in f=
ield, and I have published last week<br>the sources. Here the link of the a=
nnouncement:<br><br>&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"http://comments.=
gmane.org/gmane.comp.embedded.eldk/2397" target=3D"_blank">http://comments.=
gmane.org/gmane.comp.embedded.eldk/2397</a><br><br>Mainly, it is a tool tha=
t can be stored in the rootfs or will be put in<br>a separate initrd image =
and whose goal is only to update the system. I<br>have tried to describe pr=
os and cons of several different solutions<br>(updating via bootloader ? si=
ngle copy against dual copy ?) - you can<br>find details in the doc directo=
ry in the swupdate repository.<br><br>Maybe someone of you can find this he=
lpful, and I will be happy if I<br>could get some feedback.<br><br>Best reg=
ards,<br>Stefano Babic<br><span style=3D'color:#888888'><br><span class=3Dh=
oenzb>--</span><br><span class=3Dhoenzb>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</span><br><span class=3Dhoenzb>DENX Software Engin=
eering GmbH, &nbsp; &nbsp; MD: Wolfgang Denk &amp; Detlev Zundel</span><br>=
<span class=3Dhoenzb>HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groeb=
enzell, Germany</span><br><span class=3Dhoenzb>Phone: <a href=3D"tel:%2B49-=
8142-66989-53">+49-8142-66989-53</a> Fax: <a href=3D"tel:%2B49-8142-66989-8=
0">+49-8142-66989-80</a> Email: <a href=3D"mailto:sbabic@denx.de">sbabic@de=
nx.de</a></span><br><span class=3Dhoenzb>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</span><br><span class=3Dhoenzb>___________________=
____________________________</span><br><span class=3Dhoenzb>yocto mailing l=
ist</span><br><span class=3Dhoenzb><a href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a></span><br><span class=3Dhoenzb><a href=3D"http=
s://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.=
yoctoproject.org/listinfo/yocto</a></span></span><o:p></o:p></p></div><p cl=
ass=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div></body></html>=

--_000_DB6E482E89290547898851B8CC9D8110012FAE31A0AUSX7MCPS302A_--
