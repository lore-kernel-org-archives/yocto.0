Return-Path: <daniel.ca@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0A7CE00846; Tue,  7 Oct 2014 06:54:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4732]
X-Greylist: delayed 2915 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Oct 2014 06:54:10 PDT
Received: from mxchn-out.nestgroup.net (mxchn-out.nestgroup.net
	[182.72.190.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC1DDE007C1
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 06:54:09 -0700 (PDT)
Received: from mail02.chn.nestgroup.net ([10.8.0.25])
	by mxchn-out.nestgroup.net (8.13.8/8.13.8) with ESMTP id s97D5VZj016347
	for <yocto@yoctoproject.org>; Tue, 7 Oct 2014 18:35:31 +0530
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
Date: Tue, 7 Oct 2014 18:35:30 +0530
Message-ID: <DFA4DD36883F5641AD609D011918C1B309CB8ABA@new-ex1.nestgroup.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: CAN Support
Thread-Index: Ac/iL18kH9KJPZmfRyOswiwK1OlMVg==
From: "Daniel C. A (NESTIT)" <daniel.ca@nestgroup.net>
To: <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 07 Oct 2014 08:05:49 -0700
Subject: CAN Support
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
X-List-Received-Date: Tue, 07 Oct 2014 13:54:15 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CFE22F.5F7039C5"

------_=_NextPart_001_01CFE22F.5F7039C5
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

                Presently im working on i.mx6 EVK for Automotive
application. I have used 'fsl-image-gui' which was Bitbaked using
Yocto-dora release. Since I'm worked on CAN interfaces, I got the
following queries.

1.       How to make CAN interfaces up on EVK?

2.       Is there anything that I have to consider when I Bitbake
fsl-image-gui?

3.       Has fsl-image-gui got support for basic drivers like
CAN,I2c,gpio driver., etc?

4.       My intention is to test CAN Tx/rx using CAN Analyzer and EVK,
what all are the steps for the same?Is there any document that I can
follow?

=20

Regards,

           Daniel C A

=20


------_=_NextPart_001_01CFE22F.5F7039C5
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 12 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:564798544;
	mso-list-type:hybrid;
	mso-list-template-ids:1832179528 1074331663 1074331673 1074331675 =
1074331663 1074331673 1074331675 1074331663 1074331673 1074331675;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-IN link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Presently im working on i.mx6 EVK =
for Automotive application. I have used &#8216;fsl-image-gui&#8217; =
which was Bitbaked using Yocto-dora release. Since I&#8217;m worked on =
CAN interfaces, I got the following queries.<o:p></o:p></p><p =
class=3DMsoListParagraph style=3D'text-indent:-18.0pt;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>1.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>How =
to make CAN interfaces up on EVK?<o:p></o:p></p><p =
class=3DMsoListParagraph style=3D'text-indent:-18.0pt;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>2.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>Is =
there anything that I have to consider when I Bitbake =
fsl-image-gui?<o:p></o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>3.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>Has =
fsl-image-gui got support for basic drivers like CAN,I2c,gpio driver., =
etc?<o:p></o:p></p><p class=3DMsoListParagraph =
style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span style=3D'mso-list:Ignore'>4.<span =
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>My =
intention is to test CAN Tx/rx using CAN Analyzer and EVK, what all are =
the steps for the same?Is there any document that I can =
follow?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Times New =
Roman","serif"'>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-family:"Times New =
Roman","serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Daniel C A<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------_=_NextPart_001_01CFE22F.5F7039C5--
