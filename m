Return-Path: <teemu.keskinarkaus@crosscontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE9BE00BC1; Mon,  7 Nov 2016 03:55:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.159.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx0a-001ea001.pphosted.com (mx0b-001ea001.pphosted.com
	[148.163.159.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E01E4E00A4D
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 03:55:34 -0800 (PST)
Received: from pps.filterd (m0088396.ppops.net [127.0.0.1])
	by mx0b-001ea001.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	uA7BphfR001714
	for <yocto@yoctoproject.org>; Mon, 7 Nov 2016 05:55:34 -0600
Received: from ammail.actuant.com ([207.250.73.121])
	by mx0b-001ea001.pphosted.com with ESMTP id 26hat8x3xb-5
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 05:55:33 -0600
Received: from AMDTCEX14.actuant.pri ([169.254.6.193]) by
	AMDTCEX13.actuant.pri ([169.254.5.198]) with mapi id 14.03.0301.000;
	Mon, 7 Nov 2016 05:48:48 -0600
From: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: UTF-89 support
Thread-Index: AdI47OQA8U9YBjORT3iuPgKVfOownQ==
Date: Mon, 7 Nov 2016 11:48:48 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-11-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1609300000
	definitions=main-1611070222
Subject: UTF-89 support
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
X-List-Received-Date: Mon, 07 Nov 2016 11:55:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD4241815CAMDTCEX14actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD4241815CAMDTCEX14actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I tried googling this and reading the manual, but I guess this is too trivi=
al or I'm doing something wrong.

I'm trying to get UTF-8 support to my image. UTF-8 locale more specific. If=
 I run locale -a command I get these locales listed:
C
POSIX
en_GB
en_US

I added this line to my local.conf:
GLIBC_GENERATE_LOCALES =3D "en_GB.UTF-8 en_US.UTF-8 en_GB en_US"

That didn't bring UTF-8 locales although by looking at the comment I would =
assume they should be already there?  I'm not entirely sure why the UTF-8 l=
ocales are still missing and how do I get them there?


Teemu Keskinarkaus
Software system engineer
Cell: +358 400 330047
Fax: +358 207 669199
www.crosscontrol.com<http://www.crosscontrol.com>
CrossControl
making machines smart, safe and productive


________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_83DB4EC8FADD45428E3CC4E3664761FD4241815CAMDTCEX14actuan_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried googling this and readi=
ng the manual, but I guess this is too trivial or I&#8217;m doing something=
 wrong.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to get UTF-8 s=
upport to my image. UTF-8 locale more specific. If I run locale &#8211;a co=
mmand I get these locales listed:<o:p></o:p></span></p>
<p class=3D"MsoNormal">C<o:p></o:p></p>
<p class=3D"MsoNormal">POSIX<o:p></o:p></p>
<p class=3D"MsoNormal">en_GB<o:p></o:p></p>
<p class=3D"MsoNormal">en_US<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I added this line to my local.c=
onf:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">GLIBC_GENERATE_LOCALES =3D &quo=
t;en_GB.UTF-8 en_US.UTF-8 en_GB en_US&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">That didn&#8217;t bring UTF-8 l=
ocales although by looking at the comment I would assume they should be alr=
eady there?&nbsp; I&#8217;m not entirely sure why the UTF-8 locales are sti=
ll missing and how do I get them there?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:9.0pt;mso-=
line-height-rule:exactly">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Century=
 Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Teemu Keskina=
rkaus<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Softwa=
re system engineer</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;=
font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-l=
anguage:FI"><br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Cell: =
&#43;358&nbsp;400&nbsp;330047</span><b><span lang=3D"EN-US" style=3D"font-s=
ize:6.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;mso=
-fareast-language:FI"><br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Fax: &=
#43;358&nbsp;207 669199</span><b><span lang=3D"EN-US" style=3D"font-size:6.=
0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;mso-farea=
st-language:FI"><br>
</span></b><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI"><a hre=
f=3D"http://www.crosscontrol.com"><span style=3D"color:blue">www.crosscontr=
ol.com</span></a><span style=3D"color:#0070C0">
</span></span><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-family=
:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-=
language:FI"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;fo=
nt-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black;mso=
-fareast-language:FI">CrossControl<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-f=
amily:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black;mso-far=
east-language:FI">making machines smart, safe and productive</span><span la=
ng=3D"EN-US" style=3D"mso-fareast-language:FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_83DB4EC8FADD45428E3CC4E3664761FD4241815CAMDTCEX14actuan_--
