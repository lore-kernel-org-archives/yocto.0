Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6136E00B71; Mon,  9 Jun 2014 08:42:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
X-Greylist: delayed 927 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jun 2014 08:42:17 PDT
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12A93E00B0B
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 08:42:17 -0700 (PDT)
Received: from pps.filterd (m0046670.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s59FQAV0003017
	for <yocto@yoctoproject.org>; Mon, 9 Jun 2014 17:26:48 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 1mc8hjgm2w-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 17:26:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1863A59
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 15:26:42 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas4.st.com [10.75.90.69])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A29EB59C81
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 15:26:41 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by Safex1hubcas4.st.com
	([10.75.90.69]) with mapi; Mon, 9 Jun 2014 17:26:41 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 9 Jun 2014 17:26:40 +0200
Thread-Topic: Conditional Configuration Fragments
Thread-Index: Ac+D83BbibJAVs7CRbyaUfCsVXT/0A==
Message-ID: <888B7DC5D4899F46A9721989283666969C1E50A1DC@SAFEX1MAIL5.st.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-06-09_03:2014-06-09, 2014-06-09,
	1970-01-01 signatures=0
Subject: Conditional Configuration Fragments
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
X-List-Received-Date: Mon, 09 Jun 2014 15:42:33 -0000
X-Groupsio-MsgNum: 20013
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_";
	type="multipart/alternative"

--_004_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_
Content-Type: multipart/alternative;
	boundary="_000_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_"

--_000_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I really don't know whether this is feasible or not, but I'm trying to buil=
d a yocto image (custom image) with conditional configuration fragments.
Today I have 2 image type: one for deployment purpose and another for debug=
 purpose. Debug images is only a superset of deployment image with addition=
al debug capabilities: nothing else.
However now I would like to add additional linux kernel features to this de=
bug image (ex: CONFIG_DEBUG_INFO=3Dy).

I want to add this feature into debug image, but NOT in deployment image.
I was thinking to create a .bbappend to my linux .bb file, but again I don'=
t see how to use .bbappend in a conditional way (based on image name for in=
stance)

Do you have any idea to perform such request ?

Many thanks in advance


[cid:image003.png@01CF8407.F99988A0]

Pierre-Yves MORDRET | TINA: 166 7286 | Tel: +33 244027286 | Mobile: +33 611=
091514
UPD | Middleware Integrator


--_000_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hello,<o:p></o:p=
></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I reall=
y don&#8217;t know whether this is feasible or not, but I&#8217;m trying to=
 build a yocto image (custom image) with conditional configuration fragment=
s.<o:p></o:p></p><p class=3DMsoNormal>Today I have 2 image type: one for de=
ployment purpose and another for debug purpose. Debug images is only a supe=
rset of deployment image with additional debug capabilities: nothing else.<=
o:p></o:p></p><p class=3DMsoNormal>However now I would like to add addition=
al linux kernel features to this debug image (ex: CONFIG_DEBUG_INFO=3Dy). <=
o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorma=
l>I want to add this feature into debug image, but NOT in deployment image.=
<o:p></o:p></p><p class=3DMsoNormal>I was thinking to create a .bbappend to=
 my linux .bb file, but again I don&#8217;t see how to use .bbappend in a c=
onditional way (based on image name for instance)<o:p></o:p></p><p class=3D=
MsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Do you have any idea to=
 perform such request ?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>Many thanks in advance<o:p></o:p></p><p class=3DM=
soNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><img width=3D202 height=3D54 id=3D"Picture_x0020_3" src=
=3D"cid:image003.png@01CF8407.F99988A0" alt=3D"Description: Description: De=
scription: Description: Description: Description: Description: Description:=
 Description: Description: Description: Description: logo_big5"><span lang=
=3DFR style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#002=
052;mso-fareast-language:EN-GB'><o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DFR style=3D'font-size:5.0pt;font-family:"Arial","sans-serif";c=
olor:#002052;mso-fareast-language:EN-GB'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DFR style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:#002052;mso-fareast-language:EN-GB'>Pierre-Yves MORDRE=
T </span><span lang=3DFR style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:#39A9DC;mso-fareast-language:EN-GB'>|</span><span lang=3DFR =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#002052;ms=
o-fareast-language:EN-GB'> TINA: 166 7286 </span><span lang=3DFR style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:#39A9DC;mso-fareast-=
language:EN-GB'>|</span><span lang=3DFR style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:#002052;mso-fareast-language:EN-GB'> Tel: +33=
 244027286 </span><span lang=3DFR style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:#39A9DC;mso-fareast-language:EN-GB'>| </span><span =
lang=3DFR style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
#002052;mso-fareast-language:EN-GB'>Mobile: +33 611091514</span><span lang=
=3DFR style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#39A=
9DC;mso-fareast-language:EN-GB'><o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-GB style=3D'font-size:9.0pt;font-family:"Arial","sans-serif=
";color:#002052;mso-fareast-language:EN-GB'>UPD </span><span lang=3DEN-GB s=
tyle=3D'font-size:9.0pt;font-family:"Arial","sans-serif";color:#39A9DC;mso-=
fareast-language:EN-GB'>| </span><span lang=3DEN-GB style=3D'font-size:9.0p=
t;font-family:"Arial","sans-serif";color:#002052;mso-fareast-language:EN-GB=
'>Middleware Integrator</span><span lang=3DEN-GB style=3D'font-size:9.0pt;f=
ont-family:"Arial","sans-serif";color:#39A9DC;mso-fareast-language:EN-GB'><=
o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body=
></html>=

--_000_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_--

--_004_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=9920;
	creation-date="Mon, 09 Jun 2014 15:26:40 GMT";
	modification-date="Mon, 09 Jun 2014 15:26:40 GMT"
Content-ID: <image003.png@01CF8407.F99988A0>
Content-Transfer-Encoding: base64

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
YII=

--_004_888B7DC5D4899F46A9721989283666969C1E50A1DCSAFEX1MAIL5st_--
