Return-Path: <luffy_yue@skypine.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A20A6E007A7; Sun,  8 Jan 2017 19:45:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [220.181.97.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 318 seconds by postgrey-1.32 at yocto-www;
	Sun, 08 Jan 2017 19:45:24 PST
Received: from m97134.mail.qiye.163.com (m97134.mail.qiye.163.com
	[220.181.97.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 947CFE00655
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2017 19:45:24 -0800 (PST)
Received: from fa008a001143 (unknown [58.213.167.119])
	by smtp5 (Coremail) with SMTP id huCowABXq2XXBXNYsTQqCQ--.4S2;
	Mon, 09 Jan 2017 11:39:03 +0800 (CST)
From: "luffy_yue" <luffy_yue@skypine.com>
To: <yocto@yoctoproject.org>
Date: Mon, 9 Jan 2017 11:39:12 +0800
Message-ID: <000d01d26a29$f1bfadc0$d53f0940$@skypine.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdJqKc/Wnp/Sx7ZaQZGq5WsKTO2JkQ==
X-Antivirus: avast! (VPS 170108-1, 2017/01/08), Outbound message
X-Antivirus-Status: Clean
X-CM-TRANSID: huCowABXq2XXBXNYsTQqCQ--.4S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU5529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU4jjqDUUUU
X-Originating-IP: [58.213.167.119]
X-CM-SenderInfo: xoxiw5pb1xvqxvn11x1qhou0bp/1tbiShdayFdp-OwWHgAAsp
X-Mailman-Approved-At: Mon, 09 Jan 2017 07:33:33 -0800
Subject: yocto adt for windows eclipse is error
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
X-List-Received-Date: Mon, 09 Jan 2017 03:45:30 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000E_01D26A6C.FFE47460"
Content-Language: zh-cn

------=_NextPart_000_000E_01D26A6C.FFE47460
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, 

Configuring the eclipse(window7 luna) yocto plug-in is error,

Eclipse Report this error:

 

!ENTRY org.eclipse.jface 4 0 2017-01-05 10:39:37.646

!MESSAGE java.lang.NullPointerException

!STACK 0

java.lang.NullPointerException

         at org.yocto.sdk.ide.YoctoSDKChecker.checkYoctoSDK(Unknown Source)

         at org.yocto.sdk.ide.YoctoUISetting.validateInput(Unknown Source)

         at
org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage.performOk(Unknown
Source)

         at
org.eclipse.jface.preference.PreferenceDialog$12.run(PreferenceDialog.java:9
92)

         at org.eclipse.core.runtime.SafeRunner.run(SafeRunner.java:42)

         at org.eclipse.ui.internal.JFaceUtil$1.run(JFaceUtil.java:50)

         at org.eclipse.jface.util.SafeRunnable.run(SafeRunnable.java:178)

         at
org.eclipse.jface.preference.PreferenceDialog.okPressed(PreferenceDialog.jav
a:971)

 

Luffy

Nanjing R&D Center

Skypine Electronics (ShenZhen) Co. Ltd

Office Telephone: (+86)25-84671286-6034

Address: Zijin Entrepreneur R&D Centre,No.89 Victory road,Jiangning
Disctrict,Nanjing,China(211100)

 




------=_NextPart_000_000E_01D26A6C.FFE47460
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micro=
soft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vl=
ink=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSecti=
on1><p class=3DMsoNormal><span lang=3DEN-US>Hi, <o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US>Configuring the eclipse(window7 luna) yo=
cto plug-in is error,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>Eclipse Report this error:<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>!ENTRY org.eclipse.jface 4 0 2017-01-05 10:39:37.646<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>!MESSAGE java.lang.N=
ullPointerException<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>!STACK 0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>java.lang.NullPointerException<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at org.y=
octo.sdk.ide.YoctoSDKChecker.checkYoctoSDK(Unknown Source)<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; at org.yocto.sdk.ide.YoctoUISetting.validateInput(Unknow=
n Source)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at org.yocto.sdk.ide.preferenc=
es.YoctoSDKPreferencePage.performOk(Unknown Source)<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; at org.eclipse.jface.preference.PreferenceDialog$12.run(Prefere=
nceDialog.java:992)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at org.eclipse.core.=
runtime.SafeRunner.run(SafeRunner.java:42)<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; at org.eclipse.ui.internal.JFaceUtil$1.run(JFaceUtil.java:50)<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; at org.eclipse.jface.util.SafeRunnable.run(SafeRun=
nable.java:178)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at org.eclipse.jface.pre=
ference.PreferenceDialog.okPressed(PreferenceDialog.java:971)<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#0070C0'>Luffy<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#00=
70C0'>Nanjing R&amp;D Center<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US style=3D'color:#0070C0'>Skypine Electronics (ShenZhen) Co. L=
td<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'co=
lor:#0070C0'>Office Telephone: (+86)25-84671286-6034<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#0070C0'>Address: Zij=
in Entrepreneur R&amp;D Centre,No.89 Victory road,Jiangning Disctrict,Nanji=
ng,China(211100)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US><o:p>&nbsp;</o:p></span></p></div>
<br /><br />

------=_NextPart_000_000E_01D26A6C.FFE47460--
