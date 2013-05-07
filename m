Return-Path: <rcagley@toyon.com>
Received: from mx.toyon.corp (206-190-77-154.static.twtelecom.net
	[206.190.77.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774E0E0144E
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 15:06:38 -0700 (PDT)
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 7 May 2013 15:05:41 -0700
Message-ID: <BA6FC03EA0815D428FB8A3C279ED49920740DE8F@mx.toyon.corp>
In-Reply-To: <CABx0rKFD26wSiabvtxBgYNVJw-uZNKddDbgDwpi3d6cb1EyCag@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] Building Custom Images- Need help
Thread-Index: Ac5LbR8r2Hsab/1WQbmSsN0WBpPaoAAAdDCQ
References: <CABx0rKFD26wSiabvtxBgYNVJw-uZNKddDbgDwpi3d6cb1EyCag@mail.gmail.com>
From: "Richard Cagley" <rcagley@toyon.com>
To: "Zaif upb" <zaifupb@gmail.com>,
	<yocto@yoctoproject.org>
Subject: Re: Building Custom Images- Need help
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
X-List-Received-Date: Tue, 07 May 2013 22:06:38 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CE4B6F.254DE6D6"

------_=_NextPart_001_01CE4B6F.254DE6D6
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Have you tried hob?

https://www.yoctoproject.org/documentation/hob-manual

=20

From: yocto-bounces@yoctoproject.org
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Zaif upb
Sent: Tuesday, May 07, 2013 2:52 PM
To: yocto@yoctoproject.org
Subject: [yocto] Building Custom Images- Need help

=20

Hi all,

I am newbie for Yocto project, please help me.

 I would like to know the process of making custom image for gumstix. I
have been through this
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#usingpok
y-extend-addpkg  manual but things are not clear yet.

I can successfully build gumstix-console-image. I need to integrate
Gstreamer and OpenCV libraries into that image. I do not know how to
proceed.=20

I edited gumstix-console-image.bb file according to  Streaming video
with Gumstix
<http://www.jumpnowtek.com/?option=3Dcom_content&view=3Darticle&id=3D81:g=
umsti
x-dsp-gstreamer&catid=3D35:gumstix&Itemid=3D67>  as mentioned here for
Gstreamer. It breaks badly.

Any Idea how can I integrate them in my Image?

Thank You for your Help.

Regards,

Zaifupb


------_=_NextPart_001_01CE4B6F.254DE6D6
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
(filtered medium)"><style><!--
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
span.EmailStyle17
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Have you tried hob?<o:p></o:p></span></p><p class=3DMsoNormal><a =
href=3D"https://www.yoctoproject.org/documentation/hob-manual">https://ww=
w.yoctoproject.org/documentation/hob-manual</a><o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Zaif upb<br><b>Sent:</b> Tuesday, May 07, 2013 2:52 =
PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> [yocto] =
Building Custom Images- Need help<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><div><div><div><div=
><div><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>Hi =
all,<o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>I am newbie for Yocto project, please =
help me.<br><br>&nbsp;I would like to know the process of making custom =
image for gumstix. I have been through this&nbsp; <a =
href=3D"http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#u=
singpoky-extend-addpkg">http://www.yoctoproject.org/docs/1.4/dev-manual/d=
ev-manual.html#usingpoky-extend-addpkg</a>&nbsp; manual but things are =
not clear yet.<o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>I can successfully build =
<i>gumstix-console-image. </i>I need to integrate Gstreamer and OpenCV =
libraries into that image. I do not know how to proceed. =
<o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>I edited <i>gumstix-console-image</i>.bb =
file according to&nbsp;&nbsp;<a =
href=3D"http://www.jumpnowtek.com/?option=3Dcom_content&amp;view=3Darticl=
e&amp;id=3D81:gumstix-dsp-gstreamer&amp;catid=3D35:gumstix&amp;Itemid=3D6=
7">Streaming video with Gumstix</a> as mentioned here for Gstreamer. It =
breaks badly.<o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Any Idea how can I integrate them in my =
Image?<o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Thank You for your =
Help.<o:p></o:p></p></div><p =
class=3DMsoNormal>Regards,<o:p></o:p></p></div><p =
class=3DMsoNormal>Zaifupb<o:p></o:p></p></div></div></div></body></html>

------_=_NextPart_001_01CE4B6F.254DE6D6--
