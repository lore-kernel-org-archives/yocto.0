Return-Path: <sean.liming@annabooks.com>
Received: from mail22c40.carrierzone.com (mail91c40.carrierzone.com
	[209.235.156.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE45E01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 11:05:43 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail22c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r82I5aYe031367; Mon, 2 Sep 2013 18:05:40 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Katu Txakur'" <katutxakurra@gmail.com>, <yocto@yoctoproject.org>
References: <CAM1ZcoVgAgPYTrGzHVYcYt+qwhzqTHne9gjNhhWS75oD0HhFFg@mail.gmail.com>
In-Reply-To: <CAM1ZcoVgAgPYTrGzHVYcYt+qwhzqTHne9gjNhhWS75oD0HhFFg@mail.gmail.com>
Date: Mon, 2 Sep 2013 11:05:36 -0700
Message-ID: <000601cea807$0893e270$19bba750$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQDDmldSC4lseo3IDY0PJOgOATmbm5vI2FMg
X-CSC: 0
X-CHA: v=2.0 cv=RPEE6fe+ c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=jeXnFUrUOPUA:10 a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=Q2_vi_79zCsA:10
	a=iGHA9ds3AAAA:8 a=avi6P_WXljIcbeVqHrkA:9 a=CjuIK1q_8ugA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=AJsildwZx_6x18j99lgA:9 a=gKO2Hq4RSVkA:10
	a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
	a=wO-j71h7iElKskTc:21
	a=vrtpD_qjSwHea3sYWLsA:9 a=KQqxNPgzF0kA:10 a=ucH7BwLj_I8A:10
	a=WDYU2s7p4Hx7m9Zq:18 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020205.5224D375.0053, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz
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
X-List-Received-Date: Mon, 02 Sep 2013 18:05:51 -0000
X-Groupsio-MsgNum: 15792
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0007_01CEA7CC.5C388CE0"
Content-Language: en-us

------=_NextPart_000_0007_01CEA7CC.5C388CE0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0008_01CEA7CC.5C388CE0"

------=_NextPart_001_0008_01CEA7CC.5C388CE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

The BSP for  3rd Generation iCore is this one:
https://www.yoctoproject.org/download/intel-3rd-generation-core-platforms-co
re-i3-i5-i7-ivy-bridge . of course, you will need the core Yocto Project
release - https://www.yoctoproject.org/downloads 

 

Yes, you can install the distro on the machine. There is an installer script
that does the partitioning and formatting. 

 

Regards,

 

Sean Liming

Owner

 <http://www.annabooks.com/> ablogo color - 500

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Katu Txakur
Sent: Monday, September 02, 2013 10:29 AM
To: yocto@yoctoproject.org
Subject: [yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz

 

Hello,

 

What is the best stable BSP for a Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz?

I have a computer with 4 cpus and I would like to compile a Linux distro
with the Yocto project.

I've read about booting with a live usb but, how can I install the distro in
the machine? Can I automatize the hard drive partitions too?

 

Thanks a lot


------=_NextPart_001_0008_01CEA7CC.5C388CE0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><!--[if !mso]><style>v\:* =
{behavior:url(#default#VML);}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>The BSP for &nbsp;3<sup>rd</sup> Generation iCore is this one: <a =
href=3D"https://www.yoctoproject.org/download/intel-3rd-generation-core-p=
latforms-core-i3-i5-i7-ivy-bridge">https://www.yoctoproject.org/download/=
intel-3rd-generation-core-platforms-core-i3-i5-i7-ivy-bridge</a> . of =
course, you will need the core Yocto Project release - <a =
href=3D"https://www.yoctoproject.org/downloads">https://www.yoctoproject.=
org/downloads</a> <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Yes, you can install the distro on the machine. There is an installer =
script that does the partitioning and formatting. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Sean Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Owner<o:p></o:p></span></p><p class=3DMsoNormal><a =
href=3D"http://www.annabooks.com/"><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:blue;t=
ext-decoration:none'><img border=3D0 width=3D160 height=3D34 =
id=3D"Picture_x0020_1" src=3D"cid:image001.jpg@01CEA7CC.5997A340" =
alt=3D"ablogo color - 500"></span></a><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Tel: 714-970-7523 / Cell: 858-774-3176<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Katu Txakur<br><b>Sent:</b> Monday, September 02, =
2013 10:29 AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> =
[yocto] Intel(R) Core(TM) i7-3612QM CPU @ =
2.10GHz<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>What is the best stable BSP for a&nbsp;Intel(R) =
Core(TM) i7-3612QM CPU @ 2.10GHz?<o:p></o:p></p></div><div><p =
class=3DMsoNormal>I have a computer with 4 cpus&nbsp;and I would like to =
compile a Linux distro&nbsp;with the Yocto =
project.<o:p></o:p></p></div><div><p class=3DMsoNormal>I've read about =
booting with a live usb but, how can I install the distro in the =
machine? Can I automatize the hard drive partitions =
too?<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Thanks a =
lot<o:p></o:p></p></div></div></div></div></body></html>

------=_NextPart_001_0008_01CEA7CC.5C388CE0--

------=_NextPart_000_0007_01CEA7CC.5C388CE0
Content-Type: image/jpeg;
	name="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image001.jpg@01CEA7CC.5997A340>

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
AKUpQBis0pQgFKUoA//Z

------=_NextPart_000_0007_01CEA7CC.5C388CE0--
