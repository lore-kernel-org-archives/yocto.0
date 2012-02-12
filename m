Return-Path: <sean_liming@sjjmicro.com>
Received: from mail16c40.carrierzone.com (mail16c40.carrierzone.com
	[209.235.156.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE254E0044A
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2012 14:31:13 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q1CMVAtf019475
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2012 22:31:12 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: <yocto@yoctoproject.org>
References: <000301cce902$03b60a50$0b221ef0$@sjjmicro.com>	<7fe09045-0102-427d-aac4-4e0e86f693ac@email.android.com>
	<001101cce90a$60227f00$20677d00$@sjjmicro.com>
In-Reply-To: <001101cce90a$60227f00$20677d00$@sjjmicro.com>
Date: Sun, 12 Feb 2012 14:31:10 -0800
Message-ID: <001401cce9d6$0651d080$12f57180$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQIk+Jv3+3OWPXxebl5wU2R37DXCQwKFpRbUAg+x3wOVZQ/5MA==
X-Antivirus: avast! (VPS 120212-1, 02/12/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=EvEsscukRmgjQswahipJwS9n8HJRqjMP/c15HL5NnPc= c=1 sm=1
	a=LqHjNPIte60A:10 a=aJh391NtreIA:10 a=z5g8Jwv4kxix1x/21EjHVg==:17
	a=iGHA9ds3AAAA:8 a=pGLkceISAAAA:8 a=muS382yeAAAA:8
	a=ntDyQzTkts-563AJPv4A:9
	a=B4sG8kyMPNpe0BPRXQIA:7 a=QEXdDO2ut3YA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10 a=MSl-tDqOz04A:10 a=aONyWnEeb94A:10
	a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=y0q5G5CaBkMYhtmxRJgA:7
	a=gKO2Hq4RSVkA:10 a=hTZeC7Yk6K0A:10 a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A02020B.4F383DB0.009E,ss=1,re=0.000,fgs=0
Subject: Re: Deploy to a hard drive
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
X-List-Received-Date: Sun, 12 Feb 2012 22:31:14 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0015_01CCE992.F8310180"
Content-Language: en-us

------=_NextPart_000_0015_01CCE992.F8310180
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

=20

I figured out the last problem, and the system boots to the drive.

=20

Regards,

=20

Sean Liming

Owner

SJJ Embedded Micro Solutions, LLC.

Tel: 714-970-7523 / Cell: 858-774-3176

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sean Liming
Sent: Saturday, February 11, 2012 2:13 PM
To: 'Jim Abernathy'; yocto@yoctoproject.org
Subject: Re: [yocto] Deploy to a hard drive

=20

Created those directories. I just got past this error as it looks like / =
before mnt is not needed.

=20

Step 7 required that I use the =E2=80=93force switch.

=20

1.       There is no bzImage in the /boot folder =E2=80=93 was there an =
extra step

2.       Cannot add the grub.cfg since it appears locked.

=20

=20

Regards,

=20

Sean=20

=20

=20

From: Jim Abernathy [mailto:jfabernathy@gmail.com]=20
Sent: Saturday, February 11, 2012 1:23 PM
To: Sean Liming; yocto@yoctoproject.org
Subject: Re: [yocto] Deploy to a hard drive

=20

Need mkdir /mnt/target and mnt/target-ext before step 4

Sent from my Kindle Fire

  _____ =20

From: Sean Liming <sean_liming@sjjmicro.com>
Sent: Sat Feb 11 16:13:33 EST 2012
To: yocto@yoctoproject.org
Subject: [yocto] Deploy to a hard drive

=20

=20

Follow the Wiki instructions:

=20

=20

1) have a suitable partition on the disk - say partition #3

2) this partition will show up as sde3 on my host machine and sda3 on =
the atom

3) mkfs.ext3 /dev/sde3

4) mount /dev/sde3 /mnt/target

5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3 =
/mnt/target-text3

6) cp -a /mnt/target-ext3/* /mnt/target

7) grub-install --recheck --root-directory=3D/mnt/target /dev/sde

=20

=20

When I do step 4, I get =E2=80=9Cmount: mount point /mnt/target does not =
exist=E2=80=9D

=20

What am I missing?

=20

I am using Ubuntu 10.4 LTS 32-bit.

=20

Regards,

=20

Sean=20

=20

=20

=20

=20

=20


------=_NextPart_000_0015_01CCE992.F8310180
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered medium)"><!--[if =
!mso]><style>v\:* {behavior:url(#default#VML);}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1800689014;
	mso-list-type:hybrid;
	mso-list-template-ids:539017358 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
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
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I figured out the last =
problem, and the system boots to the drive.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Sean =
Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Owner<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>SJJ Embedded Micro =
Solutions, LLC.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Tel: 714-970-7523 / Cell: =
858-774-3176<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Sean Liming<br><b>Sent:</b> Saturday, February 11, =
2012 2:13 PM<br><b>To:</b> 'Jim Abernathy'; =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] Deploy to a hard =
drive<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Created those directories. I just got past this =
error as it looks like / before mnt is not =
needed.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Step 7 required that I =
use the =E2=80=93force switch.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>There is no =
bzImage in the /boot folder =E2=80=93 was there an extra =
step<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l0 level1 lfo2'><![if =
!supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Cannot add =
the grub.cfg since it appears locked.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Sean =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Jim Abernathy <a =
href=3D"mailto:[mailto:jfabernathy@gmail.com]">[mailto:jfabernathy@gmail.=
com]</a> <br><b>Sent:</b> Saturday, February 11, 2012 1:23 =
PM<br><b>To:</b> Sean Liming; <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> Re: [yocto] Deploy to a hard =
drive<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p>Need mkdir /mnt/target and =
mnt/target-ext before step 4<o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif"'>Sent =
from my Kindle Fire<o:p></o:p></span></p><div><div class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'><hr =
size=3D2 width=3D"100%" align=3Dcenter></span></div><p =
class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Sean Liming &lt;<a =
href=3D"mailto:sean_liming@sjjmicro.com">sean_liming@sjjmicro.com</a>&gt;=
<br><b>Sent:</b> Sat Feb 11 16:13:33 EST 2012<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> [yocto] Deploy to a hard drive<o:p></o:p></span></p></div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Follow the =
Wiki instructions:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>1) have a =
suitable partition on the disk - say partition #3<o:p></o:p></p><p =
class=3DMsoNormal>2) this partition will show up as sde3 on my host =
machine and sda3 on the atom<o:p></o:p></p><p class=3DMsoNormal>3) =
mkfs.ext3 /dev/sde3<o:p></o:p></p><p class=3DMsoNormal>4) mount =
/dev/sde3 /mnt/target<o:p></o:p></p><p class=3DMsoNormal>5) mount -o =
loop tmp/deploy/images/core-image-sato-sdk.ext3 =
/mnt/target-text3<o:p></o:p></p><p class=3DMsoNormal>6) cp -a =
/mnt/target-ext3/* /mnt/target<o:p></o:p></p><p class=3DMsoNormal>7) =
grub-install --recheck --root-directory=3D/mnt/target =
/dev/sde<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>When I do =
step 4, I get =E2=80=9Cmount: mount point /mnt/target does not =
exist=E2=80=9D<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>What am I =
missing?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I am using Ubuntu 10.4 LTS 32-bit.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Sean =
<o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0015_01CCE992.F8310180--
