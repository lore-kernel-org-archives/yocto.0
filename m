Return-Path: <christophe.prigent@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 677364C800A6
	for <yocto@yoctoproject.org>; Tue, 22 Feb 2011 09:25:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 07:25:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; 
	d="jpg'145?scan'145,208,217,145";a="711763764"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 07:25:42 -0800
Received: from irsmsx501.ger.corp.intel.com (163.33.7.70) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 22 Feb 2011 15:25:12 +0000
Received: from irsmsx503.ger.corp.intel.com ([163.33.7.254]) by
	irsmsx501.ger.corp.intel.com ([163.33.7.70]) with mapi; Tue, 22 Feb 2011
	15:25:11 +0000
From: "Prigent, Christophe" <christophe.prigent@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 22 Feb 2011 15:25:09 +0000
Thread-Topic: Yocto alpha testing Feedback
Thread-Index: AcvSpLCr/2g7TwpfTjCzhtNsor5O2g==
Message-ID: <A782C372B9527D44AB20BF45FEEBB14F75A767BE9A@irsmsx503.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 22 Feb 2011 10:47:44 -0600
Subject: Yocto alpha testing Feedback
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Feb 2011 15:25:46 -0000
X-Groupsio-MsgNum: 1053
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_";
	type="multipart/alternative"

--_004_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_
Content-Type: multipart/alternative;
	boundary="_000_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_"

--_000_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

a.      Which architecture you chose in step 3.

I used poky-image-sato.



b.      How easily you were able to build an image and boot an image.

I did it quite easily.



- I installed the environment on an Ubuntu Desktop. I just copy/paste the c=
ommand given by the Yocto Quick Start in a Terminal:
     $ sudo apt-get install sed wget cvs subversion git-core coreutils \
     unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk \
     python-pysqlite2 diffstat help2man make gcc build-essential \
     g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
     mercurial autoconf automake



- I used the following command for the download steps:

git checkout bernard-5.0-alpha



- For information:

I updated /meta/classes/mirrors.bbclasses with MIRRORS +=3D "\

As my microprocessor is an Intel Core I7, I updated in conf/local.conf:

BB_NUMBERS_THREADS and PARALLEL_MAKE with 8



- I built without problem



- After less than 2 hours, I run the image:

[cid:image002.jpg@01CBD2AD.126E3A20]

a.      Whether it was easy to find the support you needed to perform the a=
bove steps.

Yocto Quick Start gives enough information to build an image and run it. I =
registered to IRC Yocto but I didn't used it.



b.      Which bugzilla reports you submitted (providing the bugzilla number=
 and description is sufficient).
No report submitted
---------------------------------------------------------------------
Intel Corporation SAS (French simplified joint stock company)
Registered headquarters: "Les Montalets"- 2, rue de Paris,=20
92196 Meudon Cedex, France
Registration Number:  302 456 199 R.C.S. NANTERRE
Capital: 4,572,000 Euros

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:8142535;
	mso-list-type:hybrid;
	mso-list-template-ids:-1979278768 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoListParagraph style=3D'=
margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !suppor=
tLists]><span style=3D'mso-list:Ignore'>a.<span style=3D'font:7.0pt "Times =
New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>Which ar=
chitecture you chose in step 3.<o:p></o:p></p><p class=3DMsoListParagraph s=
tyle=3D'margin-left:1.0in'>I used poky-image-sato.<o:p></o:p></p><p class=
=3DMsoListParagraph style=3D'margin-left:1.0in'><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoListParagraph style=3D'margin-left:1.0in;text-indent:-.25in;mso-lis=
t:l0 level2 lfo1'><![if !supportLists]><span style=3D'mso-list:Ignore'>b.<s=
pan style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span></span><![endif]>How easily you were able to build an image and boot =
an image.<o:p></o:p></p><p class=3DMsoListParagraph style=3D'margin-left:1.=
0in'>I did it quite easily.<o:p></o:p></p><p class=3DMsoListParagraph style=
=3D'margin-left:1.0in'><o:p>&nbsp;</o:p></p><p class=3DMsoListParagraph sty=
le=3D'margin-left:1.0in'>- I installed the environment on an Ubuntu Desktop=
. I just copy/paste the command given by the Yocto Quick Start in a Termina=
l:<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-left:1.0in'><span sty=
le=3D'font-size:10.0pt;font-family:"Courier New";color:#333333'>&nbsp;&nbsp=
;&nbsp;&nbsp; $ sudo apt-get install sed wget cvs subversion git-core coreu=
tils \<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-left:1.0in=
'><span style=3D'font-size:10.0pt;font-family:"Courier New";color:#333333'>=
&nbsp;&nbsp;&nbsp;&nbsp; unzip texi2html texinfo libsdl1.2-dev docbook-util=
s gawk \<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-left:1.0=
in'><span style=3D'font-size:10.0pt;font-family:"Courier New";color:#333333=
'>&nbsp;&nbsp;&nbsp;&nbsp; python-pysqlite2 diffstat help2man make gcc buil=
d-essential \<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin-lef=
t:1.0in'><span style=3D'font-size:10.0pt;font-family:"Courier New";color:#3=
33333'>&nbsp;&nbsp;&nbsp;&nbsp; g++ desktop-file-utils chrpath libgl1-mesa-=
dev libglu1-mesa-dev \<o:p></o:p></span></p><p class=3DMsoNormal style=3D'm=
argin-left:1.0in'><span style=3D'font-size:10.0pt;font-family:"Courier New"=
;color:#333333'>&nbsp;&nbsp;&nbsp;&nbsp; mercurial autoconf automake<o:p></=
o:p></span></p><p class=3DMsoListParagraph style=3D'margin-left:1.0in'><o:p=
>&nbsp;</o:p></p><p class=3DMsoListParagraph style=3D'margin-left:1.0in'>- =
I used the following command for the download steps:<o:p></o:p></p><p class=
=3DMsoPlainText style=3D'margin-left:1.0in;text-indent:.5in'><span style=3D=
'color:#595959'>git checkout bernard-5.0-alpha<o:p></o:p></span></p><p clas=
s=3DMsoListParagraph style=3D'margin-left:1.0in'><o:p>&nbsp;</o:p></p><p cl=
ass=3DMsoListParagraph style=3D'margin-left:1.0in'>- For information:<o:p><=
/o:p></p><p class=3DMsoListParagraph style=3D'margin-left:1.0in;text-indent=
:.5in'>I updated /meta/classes/mirrors.bbclasses with <span style=3D'color:=
#595959'>MIRRORS +=3D &quot;\</span><o:p></o:p></p><p class=3DMsoListParagr=
aph style=3D'margin-left:1.0in;text-indent:.5in'>As my microprocessor is an=
 Intel Core I7, I updated in conf/local.conf:<o:p></o:p></p><p class=3DMsoL=
istParagraph style=3D'margin-left:1.0in;text-indent:.5in'><span style=3D'co=
lor:#595959'>BB_NUMBERS_THREADS </span>and<span style=3D'color:#595959'> PA=
RALLEL_MAKE </span>with<span style=3D'color:#595959'> 8<o:p></o:p></span></=
p><p class=3DMsoListParagraph style=3D'margin-left:1.0in'><o:p>&nbsp;</o:p>=
</p><p class=3DMsoListParagraph style=3D'margin-left:1.0in'>- I built witho=
ut problem<o:p></o:p></p><p class=3DMsoListParagraph style=3D'margin-left:1=
.0in'><o:p>&nbsp;</o:p></p><p class=3DMsoListParagraph style=3D'margin-left=
:1.0in'>- After less than 2 hours, I run the image:<o:p></o:p></p><p class=
=3DMsoListParagraph style=3D'margin-left:1.0in'><img width=3D512 height=3D3=
84 id=3D"Picture_x0020_0" src=3D"cid:image002.jpg@01CBD2AD.126E3A20" alt=3D=
Screenshot-QEMU.png><o:p></o:p></p><p class=3DMsoListParagraph style=3D'mar=
gin-left:1.0in'> <o:p></o:p></p><p class=3DMsoListParagraph style=3D'margin=
-left:1.0in;text-indent:-.25in;mso-list:l0 level2 lfo1'><![if !supportLists=
]><span style=3D'mso-list:Ignore'>a.<span style=3D'font:7.0pt "Times New Ro=
man"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]>Whether it was=
 easy to find the support you needed to perform the above steps.<o:p></o:p>=
</p><p class=3DMsoListParagraph style=3D'margin-left:1.0in'>Yocto Quick Sta=
rt gives enough information to build an image and run it. I registered to I=
RC Yocto but I didn&#8217;t used it.<o:p></o:p></p><p class=3DMsoListParagr=
aph style=3D'margin-left:1.0in'><o:p>&nbsp;</o:p></p><p class=3DMsoListPara=
graph style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 lfo1=
'><![if !supportLists]><span style=3D'mso-list:Ignore'>b.<span style=3D'fon=
t:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![=
endif]>Which bugzilla reports you submitted (providing the bugzilla number =
and description is sufficient).<o:p></o:p></p><p class=3DMsoNormal style=3D=
'margin-left:1.0in'>No report submitted<o:p></o:p></p></div><font face=3D"m=
onospace">-----------------------------------------------------------------=
----<br>
Intel Corporation SAS (French simplified joint stock company)<br>
Registered headquarters: "Les Montalets"- 2, rue de Paris, <br>
92196 Meudon Cedex, France<br>
Registration Number:&nbsp; 302 456 199 R.C.S. NANTERRE<br>
Capital: 4,572,000 Euros<br>
<br>
This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</font></body></=
html>

--_000_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_--

--_004_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=18339;
	creation-date="Tue, 22 Feb 2011 15:25:10 GMT";
	modification-date="Tue, 22 Feb 2011 15:25:10 GMT"
Content-ID: <image002.jpg@01CBD2AD.126E3A20>
Content-Transfer-Encoding: base64

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
1Q656Gxk0smJnu6g9oIA9vmn2FQ2UlaZaDfQzudG6B2rV5rAGefq489S36Kha5+lprlHSytqBPIC
+PeMbkF446y06iePDlgdily0lXLa6KHU8TMqGOc8gOLGgnic8DgYC2qINNNbpabPRmSTkwSlzs6S
57nsPVjHAHgOxRoDcYdzTOdIx08r4w08NEfBweMkngMjiesLol80t1atI1YxnHHCDQGjuZNa1zpz
vMAFuRn6QYIOrmGZ5ALfhrWNDG/VaMDjngvqICIiAiIgIiICIiAuE8IeyFJcYKi+yVpgmp4MBrsa
HY5Bd2tdfrJS7Q2mW3VmoRyYIcw8WkcipUttnKNozGFT+DzbOh2bNTTXFrxBUEOEjG5LSO0LBt/t
ZS7UXCmbQscIKZpDXvGC8nu6guk2p8GdPT7PxeIKOapr4nAOOvzpG9ZxyWW1eCuhqdmYW3Bk1Jc3
+dI8OyWceWOXJad9M71W22NrbbCbGM2dDq/p3SXVcDRpaPNb18+tb26wSOl3tPTyyTGPQC1rXRu4
5DXg8h3qTa7dDaLZT2+nLjFTsDGlxySpazWtNpzK6IxGGkbRVUVVLPHHLqlnnLgJCGlpZ5vqy4Dj
zWOhpa508UdRHOyFsxkHnOaAN3wBy4n6/UT2LfooutRZ6atZHUsrDIdbQDqBALsHUQS48+HLAUSg
tlTTbp7YZo3tfAwgvONIjw/hnjx/0XRIg0dNBXR1lC58dQ7EMbZC4nSzDfO4g8TnmCOPUVlrKepl
u8LxFM9jZ43seHeYxoB1ZHblbdEHPQ0lxbQ1DJzUucXMJDGnziCdRGX5IPDOMdyyR0ta6eOSaCQR
OpmRysDzqzqfjjnOBkEjv7lvUQaCipKyDorN3NGIWRjUXnQ1obh7Tx5l3Ed2Fn2fbP0cSvbOI308
R+mcXF78HU4ceRGFuEQY975ud1L9UHGnjx6vWOtZERAREQEREBERAREQEREBERAREQEREBERAREQ
EREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBER
AREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQER
EBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAR
EQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREB
ERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQ
EREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBER
AREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQER
EBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAR
EQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREB
ERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQ
EREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBER
AREQEREBERAREQEREBERB//Z

--_004_A782C372B9527D44AB20BF45FEEBB14F75A767BE9Airsmsx503gerc_--
