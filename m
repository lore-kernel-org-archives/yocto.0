Return-Path: <gilles.carry@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F7A6E00DA3; Tue, 22 Sep 2015 06:39:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1684 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Sep 2015 06:39:12 PDT
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5442E006EA
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 06:39:12 -0700 (PDT)
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
	by m0046037.ppops.net (8.14.5/8.14.5) with SMTP id t8MD7EIc009509
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 15:11:06 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by m0046037.ppops.net with ESMTP id 1x16dnqmdf-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 15:11:06 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 74F8041
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 13:10:50 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas6.st.com [10.75.90.73])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 09CBFA50C
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 13:11:05 +0000 (GMT)
Received: from Safex1mail1.st.com ([fe80::38a0:4c7c:3de6:5e4b]) by
	safex1hubcas6.st.com ([::1]) with mapi; Tue, 22 Sep 2015 15:11:04 +0200
From: Gilles CARRY <gilles.carry@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 22 Sep 2015 15:11:03 +0200
Thread-Topic: Easy tracking of dependencies
Thread-Index: AdD1OCID8gh5S6ViRwOf0YRXJeaxZg==
Message-ID: <9A1915A5EDF1BD429C7E67EC45EFD43501570B6336@SAFEX1MAIL1.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-09-22_04:2015-09-22, 2015-09-22,
	1970-01-01 signatures=0
Subject: Easy tracking of dependencies
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
X-List-Received-Date: Tue, 22 Sep 2015 13:39:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9A1915A5EDF1BD429C7E67EC45EFD43501570B6336SAFEX1MAIL1st_"

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501570B6336SAFEX1MAIL1st_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm facing many cases in which bitbake spuriously rebuilds too many (all?) =
components despite the shared state cache. I'm not detailing these cases as=
 I know it just a matter of variables and new tasks we added in our build p=
rocess.
My concern is about how I can track these dependencies when the spurious re=
builds occur. I have done this in the past and used commands or log files e=
xplaining what caused the rebuild of such or such component. Unfortunately,=
 I just can't remember what it was. (my fault)

Does Yocto provide a way to track these dependencies? (ie. This task was tr=
iggered because this variable changed)
Sorry if this question has already been asked but I'm failing to find the a=
nswer from the Yocto doc or from the web.

Thanks.
Gilles.

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501570B6336SAFEX1MAIL1st_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 15 (filtered medium)"><style><!--
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:#002052;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1906336584;
	mso-list-type:hybrid;
	mso-list-template-ids:-209178468 1160969768 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Arial",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal><span la=
ng=3DFR style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002=
052'>Hello,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DFR style=
=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fo=
nt-family:"Arial",sans-serif;color:#002052'>I&#8217;m facing many cases in =
which bitbake spuriously rebuilds too many (all?) components despite the sh=
ared state cache. I&#8217;m not detailing these cases as I know it just a m=
atter of variables and new tasks we added in our build process.<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:=
"Arial",sans-serif;color:#002052'>My concern is about how I can track these=
 dependencies when the spurious rebuilds occur. I have done this in the pas=
t and used commands or log files explaining what caused the rebuild of such=
 or such component. Unfortunately, I just can&#8217;t remember what it was.=
 (my fault)<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-s=
ize:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:=
"Arial",sans-serif;color:#002052'>Does Yocto provide a way to track these d=
ependencies? (ie. This task was triggered because this variable changed)<o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fon=
t-family:"Arial",sans-serif;color:#002052'>Sorry if this question has alrea=
dy been asked but I&#8217;m failing to find the answer from the Yocto doc o=
r from the web.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'fo=
nt-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-fam=
ily:"Arial",sans-serif;color:#002052'>Thanks.<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial",sans-serif=
;color:#002052'>Gilles.<o:p></o:p></span></p></div></body></html>=

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501570B6336SAFEX1MAIL1st_--
