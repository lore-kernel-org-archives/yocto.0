Return-Path: <berlin@cdac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F20FE007C2; Tue, 22 Mar 2016 02:40:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [196.1.113.117 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailsender.cdac.in (mailsender.cdac.in [196.1.113.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04237E00838
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 02:40:15 -0700 (PDT)
Received: from ims.pune.cdac.in (ims.pune.cdac.in [10.208.1.15])
	by mailsender.cdac.in (8.14.2/8.14.2) with ESMTP id u2M9dxv5023528
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 15:09:59 +0530
Received: from mailgw.pune.cdac.in ([10.208.1.4])
	by ims.pune.cdac.in (8.14.4/8.14.4) with ESMTP id u2M9dc8g012826
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 15:09:39 +0530
X-AuthUser: berlin
Received: from BerlinPC (cig-wsn-1.tvm.cdac.in [10.176.10.235])
	(authenticated bits=0)
	by mailgw.pune.cdac.in (8.14.2/8.13.8) with ESMTP id u2M9dbkD021968
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 15:09:38 +0530
From: "Berlin Vince Joe V S" <berlin@cdac.in>
To: <yocto@yoctoproject.org>
References: 
In-Reply-To: 
Date: Tue, 22 Mar 2016 15:06:45 +0530
Message-ID: <000501d1841e$5a0bc0a0$0e2341e0$@in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdGEHeWz0L0m3SrhQGiA0Ej4YZRyggAABbVQ
X-CDAC-PUNE-MailScanner-ID: u2M9dc8g012826
X-CDAC-PUNE-MailScanner: Found to be clean, Found to be clean
X-CDAC-PUNE-MailScanner-MCPCheck-IMS: MCP-Clean, MCP-Checker (score=0,
	required 1)
X-CDAC-PUNE-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=-0.199, required 6, autolearn=disabled, ALL_TRUSTED -1.00,
	BAYES_50 0.80, HTML_MESSAGE 0.00, RP_MATCHES_RCVD -0.00,
	URIBL_BLOCKED 0.00), not spam, SpamAssassin (not cached,
	score=-1.984, required 6, autolearn=disabled, ALL_TRUSTED -1.80,
	BAYES_40 -0.18, HTML_MESSAGE 0.00)
X-CDAC-PUNE-MailScanner-Information: Please contact
	npsfhelp@cdac.in/mailadmin@cdac.in for more information
X-MailScanner-ID: u2M9dxv5023528
X-CDAC-PUNE-MailScanner-From: berlin@cdac.in
X-CDAC-MailScanner-Spam-Status: No
Subject: Re: Booting Issue in smarc-samx6i(IMX6)
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
X-List-Received-Date: Tue, 22 Mar 2016 09:40:20 -0000
X-Groupsio-MsgNum: 29122
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0006_01D1844C.73C3FCA0"
Content-Language: en-us

------=_NextPart_000_0006_01D1844C.73C3FCA0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0007_01D1844C.73C3FCA0"

------=_NextPart_001_0007_01D1844C.73C3FCA0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am adding supporting data that was displayed on putty while booting....

 

 

From: Berlin Vince Joe V S [mailto:berlin@cdac.in] 
Sent: Tuesday, March 22, 2016 3:04 PM
To: 'yocto@yoctoproject.org'
Subject: Booting Issue in smarc-samx6i(IMX6)

 

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


------=_NextPart_001_0007_01D1844C.73C3FCA0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;
	font-weight:bold;
	font-style:italic;
	text-decoration:none none;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
@list l0:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
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

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>I=
 am
adding supporting data that was displayed on putty while booting&#8230;&#82=
30;&#8230;&#8230;</span><span
style=3D'font-size:11.0pt;color:#1F497D'><o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;color:#1F497D'><o:p>&n=
bsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;color:#1F497D'><o:p>&n=
bsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif";
font-style:normal'>From:</span><span style=3D'font-size:10.0pt;font-family:=
"Tahoma","sans-serif";
font-weight:normal;font-style:normal'> Berlin Vince Joe V S
[mailto:berlin@cdac.in] <br>
</span><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
font-style:normal'>Sent:</span><span style=3D'font-size:10.0pt;font-family:=
"Tahoma","sans-serif";
font-weight:normal;font-style:normal'> Tuesday, March 22, 2016 3:04 PM<br>
</span><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
font-style:normal'>To:</span><span style=3D'font-size:10.0pt;font-family:"T=
ahoma","sans-serif";
font-weight:normal;font-style:normal'> 'yocto@yoctoproject.org'<br>
</span><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
font-style:normal'>Subject:</span><span style=3D'font-size:10.0pt;font-fami=
ly:
"Tahoma","sans-serif";font-weight:normal;font-style:normal'> Booting Issue =
in
smarc-samx6i(IMX6)<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>H=
aii,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'><=
o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-weight:normal;font-style:normal'>W=
e are
using yocto to boot our smarc board. We are facing following problem<o:p></=
o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'font-family:Sy=
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
mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are using
Kontron(smarc-samx6i).<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are adding patch for samx=
6i.<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are adding patch to
meta-fsl-arm-extra.<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'font-family:Sy=
mbol;
font-weight:normal;font-style:normal'><span style=3D'mso-list:Ignore'>&midd=
ot;<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span
style=3D'font-weight:normal;font-style:normal'>We are using zImage for dtb =
file
and uImage for bin file.<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:39.75pt;text-indent:-.25in;
mso-list:l0 level1 lfo2'><![if !supportLists]><span style=3D'font-family:Sy=
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

------=_NextPart_001_0007_01D1844C.73C3FCA0--

------=_NextPart_000_0006_01D1844C.73C3FCA0
Content-Type: application/pdf;
	name="putty_output.pdf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="putty_output.pdf"

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
el7nl3h6gl9TLG8VP+pGJfDWCcB7g/3LA55PS25V5eZxai1w/rXlEnCHdPN+jPJx7gBeZczzuMy1
cH0tUHuok1/3rIfW3XOOSt/8pWutnO+VO2fNp+SwkWV7Vnak9XG1/e28HqXXuuG3C/o9yns7j6d2
8HOMwRjGgLq3fWzEOtS0+1sz0pZPn8//Z91UnbdmQI1/5u+IvvkVzL5cUsp/T2MhvBRfvoPfvoO9
d/Cm2zhyG/fe7LtJ/jiY6zk8eHqQVN1ounH4Bg3ewJYbWIeuW69Hrjdf777+3HWNwXINm9CHOPnq
5amed0OX6n4fuliHLuHpkUu9l/ovUaYsNFzSGcsvYVp3kUoe64B3IDjQPdA7cG7g8sDggK73lb5X
yD+dCngspzyniOdo1dFNR2nzQWw56DlIInub95K+fdiyz7MvsI/u2Z3n2V0x1vPUrgmey7sGd3Gw
zcJd5uTypm/jTd/a+S3SvaV3S98W2vto36Pk8PrT60k8kuvp6vR7Oit8HkcovU4bonUaOsxtYHNW
ZueUNzeFPU3A1NgQ9DRU5HpSQyl1IjRWAEYL9XArfhfdSU9Tra46MtazCLbLkcEIsVR5qgJV/Dtq
LfMzQFBld2VvJZ1XnuuRK6Z6LBWeikDF2xXvVtyo0DRV4P3wv/xw+elyGi7PDZSHy8dmlI+RXXVS
KK3OGrLUEYzqcAjVBSzDDLuxybLJwgJNEXPYEvFPcN+R2hq/f/5PtMPV8/t1kcZ+vLU/u4b9hhc1
9Gu29qO6hsYlRzD+u6WPPvEEKnPP78+vWdLf7F46v78NiDAjeoGwuo9IqGxpPJ7g2DzY7wdyHfwi
/zpIWhFXEpF/JBv54zgeR/E49rM8TkIKivtZMkthZTCUXBFH7Ifl+jkXo+Lx9BX/B3M12A4KZW5k
c3RyZWFtCmVuZG9iagoKMjEgMCBvYmoKMjMzNzYKZW5kb2JqCgoyMiAwIG9iago8PC9UeXBlL0Zv
bnREZXNjcmlwdG9yL0ZvbnROYW1lL0JBQUFBQStMaWJlcmF0aW9uU2VyaWYKL0ZsYWdzIDQKL0Zv
bnRCQm94Wy0xNzYgLTMwMyAxMDA1IDk4MV0vSXRhbGljQW5nbGUgMAovQXNjZW50IDg5MQovRGVz
Y2VudCAtMjE2Ci9DYXBIZWlnaHQgOTgxCi9TdGVtViA4MAovRm9udEZpbGUyIDIwIDAgUgo+Pgpl
bmRvYmoKCjIzIDAgb2JqCjw8L0xlbmd0aCA1ODkvRmlsdGVyL0ZsYXRlRGVjb2RlPj4Kc3RyZWFt
CnicXZTNjtpAEITvfgofN4eV7Z4ZZldCSCwsEof8KGwewNgDsRSMZcyBt4+rq5NIOYDKcnXP1zXQ
xWa/3ffdVHwbr80hTfmp69sx3a73sUn5MZ27Pqskb7tmsif9bi71kBVz7eFxm9Jl35+uy2VWfJ/f
3abxkT+t2+sxfcqKr2Obxq4/508/Nof5+XAfhl/pkvopL7PVKm/Tae7zuR6+1JdUaNXzvp1fd9Pj
eS75Z/h4DCkXfa6I0lzbdBvqJo11f07ZsixX+XK3W2Wpb/9797JgyfHU/KzH2VrN1rJ029Wshfod
2qmWEtqrXgTooDq+QC+oPXRkrUC/0L+BfqXeQa+pK+g3aq3dUCvDltpBv7On+nfU61lXJTXYKvIL
+lTkj2/Q5F8soI3/Fdr4cVZFfqe1xq8e8rsIbfyYqyJ/VA/5Izgr8kf1GD8yrMgvyKoyfmQo5Bd4
xPIHp5Dfg1/I79FTyC/IUMgvYBDjR38hf9T+lj/4hfwe8wr5RTX5Bfxi+eu55Pe4OyG/17PI78Hs
LH/UOssftY78AXk68kfckSO/xz068gfM5cjv1U/+oD3JH3HXzvgxlyN/0J7kD8jNkd9rreWPTJzx
Izdn/PB78kfV5A/o78kvmN1b/jjLkz8iT09+r5r8AbN740e2nvwBDJ78AbN748dcnvxePeQP2tP4
1UP+AH5P/og+wfIHZyB/xL0E8q9xX8H+v+q33w8yD/b7wVnB8l/rorCNgJWBnfZnFeXNfRznNaSL
T/cPNk/Xp7+7cbgOqNLPb5ovNR8KZW5kc3RyZWFtCmVuZG9iagoKMjQgMCBvYmoKPDwvVHlwZS9G
b250L1N1YnR5cGUvVHJ1ZVR5cGUvQmFzZUZvbnQvQkFBQUFBK0xpYmVyYXRpb25TZXJpZgovRmly
c3RDaGFyIDAKL0xhc3RDaGFyIDg2Ci9XaWR0aHNbMzY1IDU2MyA1NjMgMjUwIDQ0MyA1MDAgMjc3
IDUwMCAyNzcgNTAwIDQ0MyA1MDAgNzc3IDQ0MyA1MDAgMjc3CjUwMCA1MDAgNDc5IDMzMyAyNzcg
NDc5IDUwMCA1MDAgNTAwIDUwMCA1MDAgMzg5IDMzMyA1MDAgMzMzIDUwMAoyNTAgNTAwIDcyMiA2
NjYgMjc3IDMzMyA1MDAgNTAwIDUwMCA4ODkgMzMzIDUwMCA1MDAgNjEwIDMzMyA3MjIKNTAwIDU2
MyA2MTAgNTAwIDcyMiA2NjYgNzIyIDU1NiA0NDMgNjEwIDU1NiA3MjIgNjY2IDUwMCA3MjIgNTU2
CjUwMCA3MjIgMjUwIDkyMCA3MjIgNzIyIDMzMyAzMzMgNzIyIDcyMiA2MTAgNzIyIDk0MyAyNzcg
NTAwIDUwMAo1NjMgNTQxIDc1OSAzMzMgNDA4IDE4MCAzODkgXQovRm9udERlc2NyaXB0b3IgMjIg
MCBSCi9Ub1VuaWNvZGUgMjMgMCBSCj4+CmVuZG9iagoKMjUgMCBvYmoKPDwvRjEgMjQgMCBSCj4+
CmVuZG9iagoKMjYgMCBvYmoKPDwvRm9udCAyNSAwIFIKL1Byb2NTZXRbL1BERi9UZXh0XQo+Pgpl
bmRvYmoKCjEgMCBvYmoKPDwvVHlwZS9QYWdlL1BhcmVudCAxOSAwIFIvUmVzb3VyY2VzIDI2IDAg
Ui9NZWRpYUJveFswIDAgNTk1IDg0Ml0vR3JvdXA8PC9TL1RyYW5zcGFyZW5jeS9DUy9EZXZpY2VS
R0IvSSB0cnVlPj4vQ29udGVudHMgMiAwIFI+PgplbmRvYmoKCjQgMCBvYmoKPDwvVHlwZS9QYWdl
L1BhcmVudCAxOSAwIFIvUmVzb3VyY2VzIDI2IDAgUi9NZWRpYUJveFswIDAgNTk1IDg0Ml0vR3Jv
dXA8PC9TL1RyYW5zcGFyZW5jeS9DUy9EZXZpY2VSR0IvSSB0cnVlPj4vQ29udGVudHMgNSAwIFI+
PgplbmRvYmoKCjcgMCBvYmoKPDwvVHlwZS9QYWdlL1BhcmVudCAxOSAwIFIvUmVzb3VyY2VzIDI2
IDAgUi9NZWRpYUJveFswIDAgNTk1IDg0Ml0vR3JvdXA8PC9TL1RyYW5zcGFyZW5jeS9DUy9EZXZp
Y2VSR0IvSSB0cnVlPj4vQ29udGVudHMgOCAwIFI+PgplbmRvYmoKCjEwIDAgb2JqCjw8L1R5cGUv
UGFnZS9QYXJlbnQgMTkgMCBSL1Jlc291cmNlcyAyNiAwIFIvTWVkaWFCb3hbMCAwIDU5NSA4NDJd
L0dyb3VwPDwvUy9UcmFuc3BhcmVuY3kvQ1MvRGV2aWNlUkdCL0kgdHJ1ZT4+L0NvbnRlbnRzIDEx
IDAgUj4+CmVuZG9iagoKMTMgMCBvYmoKPDwvVHlwZS9QYWdlL1BhcmVudCAxOSAwIFIvUmVzb3Vy
Y2VzIDI2IDAgUi9NZWRpYUJveFswIDAgNTk1IDg0Ml0vR3JvdXA8PC9TL1RyYW5zcGFyZW5jeS9D
Uy9EZXZpY2VSR0IvSSB0cnVlPj4vQ29udGVudHMgMTQgMCBSPj4KZW5kb2JqCgoxNiAwIG9iago8
PC9UeXBlL1BhZ2UvUGFyZW50IDE5IDAgUi9SZXNvdXJjZXMgMjYgMCBSL01lZGlhQm94WzAgMCA1
OTUgODQyXS9Hcm91cDw8L1MvVHJhbnNwYXJlbmN5L0NTL0RldmljZVJHQi9JIHRydWU+Pi9Db250
ZW50cyAxNyAwIFI+PgplbmRvYmoKCjE5IDAgb2JqCjw8L1R5cGUvUGFnZXMKL1Jlc291cmNlcyAy
NiAwIFIKL01lZGlhQm94WyAwIDAgNTk1IDg0MiBdCi9LaWRzWyAxIDAgUiA0IDAgUiA3IDAgUiAx
MCAwIFIgMTMgMCBSIDE2IDAgUiBdCi9Db3VudCA2Pj4KZW5kb2JqCgoyNyAwIG9iago8PC9UeXBl
L0NhdGFsb2cvUGFnZXMgMTkgMCBSCi9PcGVuQWN0aW9uWzEgMCBSIC9YWVogbnVsbCBudWxsIDBd
Ci9MYW5nKGVuLUlOKQo+PgplbmRvYmoKCjI4IDAgb2JqCjw8L0NyZWF0b3I8RkVGRjAwNTcwMDcy
MDA2OTAwNzQwMDY1MDA3Mj4KL1Byb2R1Y2VyPEZFRkYwMDRDMDA2OTAwNjIwMDcyMDA2NTAwNEYw
MDY2MDA2NjAwNjkwMDYzMDA2NTAwMjAwMDM0MDAyRTAwMzI+Ci9DcmVhdGlvbkRhdGUoRDoyMDE2
MDMyMjE1MDMxNyswNSczMCcpPj4KZW5kb2JqCgp4cmVmCjAgMjkKMDAwMDAwMDAwMCA2NTUzNSBm
IAowMDAwMDM3NzQxIDAwMDAwIG4gCjAwMDAwMDAwMTkgMDAwMDAgbiAKMDAwMDAwMjY2MSAwMDAw
MCBuIAowMDAwMDM3ODg1IDAwMDAwIG4gCjAwMDAwMDI2ODIgMDAwMDAgbiAKMDAwMDAwNTAxNyAw
MDAwMCBuIAowMDAwMDM4MDI5IDAwMDAwIG4gCjAwMDAwMDUwMzggMDAwMDAgbiAKMDAwMDAwNzI0
MCAwMDAwMCBuIAowMDAwMDM4MTczIDAwMDAwIG4gCjAwMDAwMDcyNjEgMDAwMDAgbiAKMDAwMDAw
OTY3NSAwMDAwMCBuIAowMDAwMDM4MzE5IDAwMDAwIG4gCjAwMDAwMDk2OTcgMDAwMDAgbiAKMDAw
MDAxMTkwMCAwMDAwMCBuIAowMDAwMDM4NDY1IDAwMDAwIG4gCjAwMDAwMTE5MjIgMDAwMDAgbiAK
MDAwMDAxMjc4MyAwMDAwMCBuIAowMDAwMDM4NjExIDAwMDAwIG4gCjAwMDAwMTI4MDQgMDAwMDAg
biAKMDAwMDAzNjI2NyAwMDAwMCBuIAowMDAwMDM2MjkwIDAwMDAwIG4gCjAwMDAwMzY0ODcgMDAw
MDAgbiAKMDAwMDAzNzE0NiAwMDAwMCBuIAowMDAwMDM3NjUzIDAwMDAwIG4gCjAwMDAwMzc2ODYg
MDAwMDAgbiAKMDAwMDAzODc0NCAwMDAwMCBuIAowMDAwMDM4ODQyIDAwMDAwIG4gCnRyYWlsZXIK
PDwvU2l6ZSAyOS9Sb290IDI3IDAgUgovSW5mbyAyOCAwIFIKL0lEIFsgPDU4QTY0NTk2QUU4QUMw
MzQwOTgxOTdBNEIyQ0JEODE2Pgo8NThBNjQ1OTZBRThBQzAzNDA5ODE5N0E0QjJDQkQ4MTY+IF0K
L0RvY0NoZWNrc3VtIC81QzVDMEI3Qjk0NEFFQUZFMUFDMjBFNTRCMTExQkExRgo+PgpzdGFydHhy
ZWYKMzkwMTcKJSVFT0YK

------=_NextPart_000_0006_01D1844C.73C3FCA0--
