Return-Path: <berlin@cdac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3792E00503; Tue, 22 Mar 2016 02:38:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [196.1.113.117 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1461]
X-Greylist: delayed 97 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Mar 2016 02:38:41 PDT
Received: from mailsender.cdac.in (mailsender.cdac.in [196.1.113.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 292F2E00443
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 02:38:40 -0700 (PDT)
Received: from ims.pune.cdac.in (ims.pune.cdac.in [10.208.1.15])
	by mailsender.cdac.in (8.14.2/8.14.2) with ESMTP id u2M9aivS020002
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 15:06:44 +0530
Received: from mailgw.pune.cdac.in ([10.208.1.4])
	by ims.pune.cdac.in (8.14.4/8.14.4) with ESMTP id u2M9aO92001545
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 15:06:24 +0530
X-AuthUser: berlin
Received: from BerlinPC (cig-wsn-1.tvm.cdac.in [10.176.10.235])
	(authenticated bits=0)
	by mailgw.pune.cdac.in (8.14.2/8.13.8) with ESMTP id u2M9aMMm019468
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 15:06:23 +0530
From: "Berlin Vince Joe V S" <berlin@cdac.in>
To: <yocto@yoctoproject.org>
Date: Tue, 22 Mar 2016 15:03:31 +0530
Message-ID: <000001d1841d$e6faa900$b4effb00$@in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdGEHeWz0L0m3SrhQGiA0Ej4YZRygg==
X-CDAC-PUNE-MailScanner-ID: u2M9aO92001545
X-CDAC-PUNE-MailScanner: Found to be clean, Found to be clean
X-CDAC-PUNE-MailScanner-MCPCheck-IMS: MCP-Clean, MCP-Checker (score=0,
	required 1)
X-CDAC-PUNE-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=-0.2, required 6, autolearn=disabled, ALL_TRUSTED -1.00,
	BAYES_50 0.80, HTML_MESSAGE 0.00, RP_MATCHES_RCVD -0.00), not spam,
	SpamAssassin (not cached, 
	score=-2.539, required 6, autolearn=disabled, ALL_TRUSTED -1.80,
	BAYES_20 -0.74, HTML_MESSAGE 0.00)
X-CDAC-PUNE-MailScanner-Information: Please contact
	npsfhelp@cdac.in/mailadmin@cdac.in for more information
X-MailScanner-ID: u2M9aivS020002
X-CDAC-PUNE-MailScanner-From: berlin@cdac.in
X-CDAC-MailScanner-Spam-Status: No
Subject: Booting Issue in smarc-samx6i(IMX6)
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
X-List-Received-Date: Tue, 22 Mar 2016 09:38:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01D1844C.00B2E500"
Content-Language: en-us

------=_NextPart_000_0001_01D1844C.00B2E500
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Haii,

 

We are using yocto to boot our smarc board. We are facing following problem

.       The booting stops at the middle and we get an error as "Wrong
Ramdisk image Format or corrupted image".

 

And I am adding supporting data that was displayed on putty while
booting....

 

Note:

.       We are using Kontron(smarc-samx6i).

.       We are adding patch for samx6i.

.       We are adding patch to meta-fsl-arm-extra.

.       We are using zImage for dtb file and uImage for bin file.

.       To convert zImage to uImage we use mkimage command.

 

Regards


-------------------------------------------------------------------------------------------------------------------------------
[ C-DAC is on Social-Media too. Kindly follow us at:
Facebook: https://www.facebook.com/CDACINDIA & Twitter: @cdacindia ]

This e-mail is for the sole use of the intended recipient(s) and may
contain confidential and privileged information. If you are not the
intended recipient, please contact the sender by reply e-mail and destroy
all copies and the original message. Any unauthorized review, use,
disclosure, dissemination, forwarding, printing or copying of this email
is strictly prohibited and appropriate legal action will be taken.
-------------------------------------------------------------------------------------------------------------------------------


------=_NextPart_000_0001_01D1844C.00B2E500
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:16.0pt;
	font-family:"Calibri","sans-serif";
	font-weight:bold;
	font-style:italic;}
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
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:16.0pt;
	font-family:"Calibri","sans-serif";
	font-weight:bold;
	font-style:italic;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;
	font-weight:bold;
	font-style:italic;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:1347947555;
	mso-list-type:hybrid;
	mso-list-template-ids:932640168 67698689 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.75pt;
	text-indent:-.25in;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>H=
aii,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'><=
o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>W=
e are
using yocto to boot our smarc board. We are facing following problem<o:p></=
o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>The booting stops at the mid=
dle
and we get an error as &#8220;Wrong Ramdisk image Format or corrupted image=
&#8221;.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'><=
o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>A=
nd I am
adding supporting data that was displayed on putty while booting&#8230;&#82=
30;&#8230;&#8230;<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'><=
o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>N=
ote:<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are using Kontron(smarc-s=
amx6i).<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are adding patch for samx=
6i.<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are adding patch to meta-=
fsl-arm-extra.<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are using zImage for dtb =
file
and uImage for bin file.<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo1'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>To convert zImage to uImage =
we use
mkimage command.<o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Regards<o:p></o:p></p>

</div>

<br />---------------------------------------------------------------------=
----------------------------------------------------------
<br />[ C-DAC is on Social-Media too. Kindly follow us at:=20
<br />Facebook: https://www.facebook.com/CDACINDIA & Twitter: @cdacindia ]
<br />
<br />This e-mail is for the sole use of the intended recipient(s) and may
<br />contain confidential and privileged information. If you are not the
<br />intended recipient, please contact the sender by reply e-mail and des=
troy
<br />all copies and the original message. Any unauthorized review, use,
<br />disclosure, dissemination, forwarding, printing or copying of this em=
ail
<br />is strictly prohibited and appropriate legal action will be taken.
<br />---------------------------------------------------------------------=
----------------------------------------------------------
</body>

</html>

------=_NextPart_000_0001_01D1844C.00B2E500--
