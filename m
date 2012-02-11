Return-Path: <sean_liming@sjjmicro.com>
Received: from mail16c40.carrierzone.com (mail16c40.carrierzone.com
	[209.235.156.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8148AE0131E
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2012 13:13:43 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q1BLDftC012178
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2012 21:13:42 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: <yocto@yoctoproject.org>
Date: Sat, 11 Feb 2012 13:13:33 -0800
Message-ID: <000301cce902$03b60a50$0b221ef0$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AczpAKGnqG0sdxwpS66bFK0kNNRWDw==
X-Antivirus: avast! (VPS 120211-0, 02/11/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=EvEsscukRmgjQswahipJwS9n8HJRqjMP/c15HL5NnPc= c=1 sm=1
	a=aJh391NtreIA:10 a=z5g8Jwv4kxix1x/21EjHVg==:17 a=nCtTIssAyK_4xKfgBM8A:9
	a=YjHWkSyBRdmgRU-hCW8A:7 a=CjuIK1q_8ugA:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=xsI5Wc5UMfOiwIVHyaoA:9 a=n90n76Bhe_u_XT5ZfVoA:7
	a=gKO2Hq4RSVkA:10 a=hTZeC7Yk6K0A:10 a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A02020B.4F36DA07.000A,ss=1,re=0.000,fgs=0
Subject: Deploy to a hard drive
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
X-List-Received-Date: Sat, 11 Feb 2012 21:13:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0004_01CCE8BE.F5938DA0"
Content-Language: en-us

------=_NextPart_000_0004_01CCE8BE.F5938DA0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

Follow the Wiki instructions:

 

 

1) have a suitable partition on the disk - say partition #3

2) this partition will show up as sde3 on my host machine and sda3 on the
atom

3) mkfs.ext3 /dev/sde3

4) mount /dev/sde3 /mnt/target

5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3
/mnt/target-text3

6) cp -a /mnt/target-ext3/* /mnt/target

7) grub-install --recheck --root-directory=/mnt/target /dev/sde

 

 

When I do step 4, I get "mount: mount point /mnt/target does not exist"

 

What am I missing?

 

I am using Ubuntu 10.4 LTS 32-bit.

 

Regards,

 

Sean 

 


------=_NextPart_000_0004_01CCE8BE.F5938DA0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p =
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
step 4, I get &#8220;mount: mount point /mnt/target does not =
exist&#8221;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>What am I missing?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am using =
Ubuntu 10.4 LTS 32-bit.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Sean =
<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0004_01CCE8BE.F5938DA0--
