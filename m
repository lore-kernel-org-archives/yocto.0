Return-Path: <sean.liming@annabooks.com>
Received: from mail16c40.carrierzone.com (mail72c40.carrierzone.com
	[209.235.156.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF283E007EB
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 08:02:38 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	s0KG2Xwl023491
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 20 Jan 2014 16:02:35 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Richard Schmitt'" <richard.schmitt@freescale.com>,
	<yocto@yoctoproject.org>
References: <dec753ffd6cd4dfeb4e6b0e3cb16599c@BL2PR03MB210.namprd03.prod.outlook.com>
In-Reply-To: <dec753ffd6cd4dfeb4e6b0e3cb16599c@BL2PR03MB210.namprd03.prod.outlook.com>
Date: Mon, 20 Jan 2014 08:02:33 -0800
Message-ID: <000001cf15f9$08cbfce0$1a63f6a0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHxzu5QMs0K+14HxPIppxv0Jd7zBZpIU67Q
X-Antivirus: avast! (VPS 140120-0, 01/20/2014), Outbound message
X-Antivirus-Status: Clean
X-CTCH-RefID: str=0001.0A020204.52DD489C.0128, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: Query Hob and KERNEL_FEATURES
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
X-List-Received-Date: Mon, 20 Jan 2014 16:02:39 -0000
X-Groupsio-MsgNum: 17844
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0001_01CF15B5.FAAB2DE0"
Content-Language: en-us

------=_NextPart_000_0001_01CF15B5.FAAB2DE0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0002_01CF15B5.FAAB2DE0"

------=_NextPart_001_0002_01CF15B5.FAAB2DE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hob doesn't support kernel features. It would be nice, but it doesn't.
Kernel modifications are added via kernel fragments. Here is an example:

 

http://www.annabooks.com/Articles/Articles_ELinux/YoctoProject-configuration
-fragment-wireless%20V1.1.pdf 

 

Regards,

 

Sean Liming

Owner

 <http://www.annabooks.com/> ablogo color - 500

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Richard Schmitt
Sent: Saturday, January 18, 2014 3:45 PM
To: yocto@yoctoproject.org
Subject: [yocto] Query Hob and KERNEL_FEATURES

 

 

I'm new to Hob.  I see there's a way to configure layers, but is there a way
to configure kernel features with Hob?  I'm figuring not.

 

RIch



---
This email is free from viruses and malware because avast! Antivirus protection is active.
http://www.avast.com

------=_NextPart_001_0002_01CF15B5.FAAB2DE0
Content-Type: text/html;
	charset="us-ascii"
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
=2E.shape {behavior:url(#default#VML);}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
=2E.MsoChpDefault
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
olor:#1F497D'>Hob doesn&#8217;t support kernel features. It would be nice, =
but it doesn&#8217;t. Kernel modifications are added via kernel fragments. =
Here is an example:<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'color:#1F497D'><a href=3D"http://www.annabooks.com/Articles/Article=
s_ELinux/YoctoProject-configuration-fragment-wireless%20V1.1.pdf">http://ww=
w.annabooks.com/Articles/Articles_ELinux/YoctoProject-configuration-fragmen=
t-wireless%20V1.1.pdf</a> <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNorm=
al><span style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'>Sean Liming<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'color:#1F497D'>Owner<o:p></o:p></span>=
</p><p class=3DMsoNormal><a href=3D"http://www.annabooks.com/"><span style=
=3D'text-decoration:none'><img border=3D0 width=3D160 height=3D34 id=3D"Pic=
ture_x0020_1" src=3D"cid:image001.jpg@01CF15B5.F9243FC0" alt=3D"ablogo colo=
r - 500"></span></a><span style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Tel: 714-970-7523 / Cell: 8=
58-774-3176<o:p></o:p></span></p></div><p class=3DMsoNormal><span style=3D'=
color:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border=
-left:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border=
:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3D=
MsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-ser=
if"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctopro=
ject.org] <b>On Behalf Of </b>Richard Schmitt<br><b>Sent:</b> Saturday, Jan=
uary 18, 2014 3:45 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</=
b> [yocto] Query Hob and KERNEL_FEATURES<o:p></o:p></span></p></div></div><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal>I&#8217;m new to Hob.&nbsp; I see there&#8217;=
s a way to configure layers, but is there a way to configure kernel feature=
s with Hob?&nbsp; I&#8217;m figuring not.<o:p></o:p></p><p class=3DMsoNorma=
l><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>RIch<o:p></o:p></p></div></div>=

<br /><br />
<hr style=3D'border:none; color:#909090; background-color:#B0B0B0; height: =
1px; width: 99%;' />
<table style=3D'border-collapse:collapse;border:none;'>
	<tr>
		<td style=3D'border:none;padding:0px 15px 0px 8px'>
			<a href=3D"http://www.avast.com/">
				<img border=3D0 src=3D"http://static.avast.com/emails/avast-mail-stamp.=
png" />
			</a>
		</td>
		<td>
			<p style=3D'color:#3d4d5a; font-family:"Calibri","Verdana","Arial","Helv=
etica"; font-size:12pt;'>
				This email is free from viruses and malware because <a href=3D"http://w=
ww.avast.com/">avast! Antivirus</a> protection is active.
			</p>
		</td>
	</tr>
</table>
<br />
</body></html>

------=_NextPart_001_0002_01CF15B5.FAAB2DE0--

------=_NextPart_000_0001_01CF15B5.FAAB2DE0
Content-Type: image/jpeg;
	name="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image001.jpg@01CF15B5.F9243FC0>

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
AKUpQBis0pQgFKUoA//Z

------=_NextPart_000_0001_01CF15B5.FAAB2DE0--
