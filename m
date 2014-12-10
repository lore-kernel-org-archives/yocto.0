Return-Path: <A.Verheij@EandSDesign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26C1BE0082B; Wed, 10 Dec 2014 08:27:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.208.4.197 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0407]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Dec 2014 08:27:49 PST
Received: from mout.perfora.net (mout.perfora.net [74.208.4.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E108E007C1
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 08:27:49 -0800 (PST)
Received: from ESD3 (c-76-25-69-55.hsd1.co.comcast.net [76.25.69.55])
	by mrelay.perfora.net (node=mreueus001) with ESMTP (Nemesis)
	id 0ML931-1Xz1183nxB-000TTZ; Wed, 10 Dec 2014 17:22:45 +0100
From: "Adriaan Verheij" <A.Verheij@EandSDesign.com>
To: <yocto@yoctoproject.org>
Date: Wed, 10 Dec 2014 09:22:45 -0700
Message-ID: <00a301d01495$88e0f070$9aa2d150$@EandSDesign.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdAUlDLoBGO2oY8wSpyWta+nQMk5DQ==
X-Antivirus: avast! (VPS 141210-0, 12/10/2014), Outbound message
X-Antivirus-Status: Clean
X-Provags-ID: V02:K0:lVEbmEC0lq4Uh65dG0EnSOJXY+3LoE10vjSn700QDJc
	Tfqk4w4DnlIlmHqzPRf4yUOpmpvWg7N3H26fn3c8IWDNneVvdW
	528BjdfRO9Idb7d/le3MYZoZ8oJq+n4pIKmhpXwpjj2sM8nJfQ
	0mUr2a5TE6Rv1WZp87uhvAsLzW+oRNciGHQvA1rInUEGrYl225
	mRv/Fyn6E9ErEPhHtVl6XLDnLQzrF2m4gUa/GCpZG0WTd1j3nK
	lpKicW3vBKDgZeZN9kjl5abrXxDl+EdEGrZdiYh4C0p4JDSrDV
	XEIY7CQ9x0ILgOj6QtL+xDwnL9X6GE4+J35s1ZWAZcTo4sM8KR
	o7hVgqRmbKuAglILq6s9sfYBUO8qUig/Y+l8r1NNj
X-UI-Out-Filterresults: notjunk:1;
X-Mailman-Approved-At: Thu, 11 Dec 2014 08:13:59 -0800
Subject: building OpenCV with Qt
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
X-List-Received-Date: Wed, 10 Dec 2014 16:27:59 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00A4_01D0145A.DC821870"
Content-Language: en-us

------=_NextPart_000_00A4_01D0145A.DC821870
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello All,

 

I am trying to build a Linux image for Gumstix (based on
gumstix-consol-image) with openCV using Qt.

The problem is that findQt4.cmake identifies
sysroots/x86_64-linux/usr/bin/qmake2 as the Qt4 source, which causes the
wrong .h files to be included, which causes the compiler to barf on some asm
instructions.

 

OpenCV defaults to using GTK+, so I altered the openCV_2.4.bb file to
include the line

..

PACKAGECONFIG[qt4-embedded] = "-DWITH_QT=4,-DWITH_QT=OFF,qt4-embedded,"

..

 

Has anyone been able to build OpenCV using Qt ?

 

Thanks!

 


------=_NextPart_000_00A4_01D0145A.DC821870
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello All,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am trying =
to build a Linux image for Gumstix (based on gumstix-consol-image) with =
openCV using Qt.<o:p></o:p></p><p class=3DMsoNormal>The problem is that =
<b>findQt4.cmake</b> identifies sysroots/x86_64-linux/usr/bin/qmake2 as =
the Qt4 source, which causes the wrong .h files to be included, which =
causes the compiler to barf on some asm instructions.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>OpenCV =
defaults to using GTK+, so I altered the openCV_2.4.bb file to include =
the line<o:p></o:p></p><p class=3DMsoNormal>..<o:p></o:p></p><p =
class=3DMsoNormal>PACKAGECONFIG[qt4-embedded] =3D =
&quot;-DWITH_QT=3D4,-DWITH_QT=3DOFF,qt4-embedded,&quot;<o:p></o:p></p><p =
class=3DMsoNormal>..<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Has anyone =
been able to build OpenCV using Qt ?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_00A4_01D0145A.DC821870--
