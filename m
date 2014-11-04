Return-Path: <Josh_Pennell@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85C8DE008D0; Mon,  3 Nov 2014 16:49:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [143.166.148.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 03 Nov 2014 16:49:33 PST
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
	[143.166.148.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D5FE00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 16:49:33 -0800 (PST)
DomainKey-Signature: s=smtpout; d=dell.com; c=nofws; q=dns;
	h=X-LoopCount0:X-IronPort-AV:From:To:Date:Subject:
	Thread-Topic:Thread-Index:Message-ID:Accept-Language:
	Content-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:
	x-titus-version:x-tituslabs-classifications-30:
	x-tituslabs-classificationhash-30:x-titusconfig:
	acceptlanguage:Content-Type:MIME-Version;
	b=YTEROpuyDtBqTCHWYX4aLcy8rVfAXON0ZL9VKnYW6yJfoWADAncaS9dg
	OuPPMrmxRh792xICA8NcpgX63ZfFAH/SlR98JCU5iLbz89rRdCHXaCKr4
	PbVoqrC5CoZi9NLjOoazZXVLRMmXktyKx/4Yxu8K/KIwAl8T36HwN/c4S
	o=;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1415062174; x=1446598174;
	h=from:to:date:subject:message-id:mime-version:
	content-transfer-encoding;
	bh=J7sWkSl9Ej2FOwy4/LSpb+XL9/xThqbJ9QsbgrDCm3c=;
	b=t3y6T9UclPzn4i2HZkUmaaHD3VaQDqCqSi4in1jBNssL6BDzrL9tTKu9
	RVhOxOH4wqpVFP5FksC5LuCg1B3j77/ejRz8Rnvat6B3ac+LStZYPrYKI
	2KiJA3wSz7s24DqMW1VX8RX52Uo32CbOodNmNYDmYh99uRRMBy+Jv2ead Q=;
X-LoopCount0: from 10.175.216.249
X-IronPort-AV: E=Sophos;i="5.07,310,1413262800"; 
	d="scan'208,217";a="598027122"
From: <Josh_Pennell@Dell.com>
To: <yocto@yoctoproject.org>
Date: Mon, 3 Nov 2014 18:48:27 -0600
Thread-Topic: [yocto] [meta-selinux] all files unlabeled_t when using squashfs
Thread-Index: Ac/3x1QPJzq+kffESr6+cEm3UrtUyg==
Message-ID: <83DE8B501DA82042847858927365655402BC59B7C3@AUSX7MCPC102.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-version: 3.5.29.3
x-tituslabs-classifications-30: TLPropertyRoot=Dell;Classification=No
	Restrictions;Sublabels=;
x-tituslabs-classificationhash-30: k5/vssDqmf2mveDUEIruNyY+h3MGjeQjV+dbzGzwCnH2L/HrFXAkQWi39Hsw6dEWjHBml7KYjeqJFUY/dmHM7zi5qvFZd+FoV7z85AJdreY1RRol18pLa0lAoQWSsXyu4C06Ohc/BWfg0AFxRcyFsYB9g686r2Yj/xvdXMANhoqt0PB3IIgBjMKD7N0oswVlLhRql0ptYO4ExXBwoAHBw10PTZCEOABxJtVZht9XB/LbsBlNw7CwrZojM4eMdt962B/vu+YUssRRxH93maIjdA==
x-titusconfig: 1.4AMER
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [meta-selinux] all files unlabeled_t when using squashfs
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
X-List-Received-Date: Tue, 04 Nov 2014 00:49:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DE8B501DA82042847858927365655402BC59B7C3AUSX7MCPC102A_"

--_000_83DE8B501DA82042847858927365655402BC59B7C3AUSX7MCPC102A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm working on a project using the meta-selinux reference policy on an embe=
dded system.  The device uses a squashfs file system that is labeled during=
 build time.  During the build, policy file labels are applied using Pseudo=
 and setfiles with an alternate root path specified.  Also if I modify the =
build to use sudo setfiles I can confirm the file tags are correct.

Currently this is being done with Yocto 1.3 for prototyping on some older h=
ardware but moving forward Yocto 1.7 will be used.

Using a Fedora system it is possible to mount the squashfs file and confirm=
 the file labels are correct.  When the target system is flashed the file l=
abels for the squashfs files are incorrect, but ram disk files are correct.=
  Using ls -laZ, all squashfs files are system_u:object_r:unlabeled_t

The kernel .config values for squsahfs and selinux here here

CONFIG_SQUASHFS=3Dy
CONFIG_SQUASHFS_XATTR=3Dy
CONFIG_SQUASHFS_ZLIB=3Dy
CONFIG_SQUASHFS_LZO=3Dy
CONFIG_SQUASHFS_XZ=3Dy
# CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
CONFIG_SQUASHFS_EMBEDDED=3Dy
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3D10

CONFIG_SECURITY_SELINUX=3Dy
CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy
CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D1
CONFIG_SECURITY_SELINUX_DISABLE=3Dy
CONFIG_SECURITY_SELINUX_DEVELOP=3Dy
CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy
CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D1
CONFIG_SECURITY_SELINUX_POLICYDB_VERSION_MAX=3Dn
# CONFIG_SECURITY_SELINUX_POLICYDB_VERSION_MAX is not set

Has anyone else run into this problem?  Any suggestions on what may be wron=
g?

Regards,
josh


--_000_83DE8B501DA82042847858927365655402BC59B7C3AUSX7MCPC102A_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal style=3D=
'margin-bottom:0in;margin-bottom:.0001pt'>Hello,<o:p></o:p></p><p class=3DM=
soNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'=
>I&#8217;m working on a project using the meta-selinux reference policy on =
an embedded system.&nbsp; The device uses a squashfs file system that is la=
beled during build time.&nbsp; During the build, policy file labels are app=
lied using Pseudo and setfiles with an alternate root path specified.&nbsp;=
 Also if I modify the build to use sudo setfiles I can confirm the file tag=
s are correct.<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0i=
n;margin-bottom:.0001pt'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal style=3D=
'margin-bottom:0in;margin-bottom:.0001pt'>Currently this is being done with=
 Yocto 1.3 for prototyping on some older hardware but moving forward Yocto =
1.7 will be used. <o:p></o:p></p><p class=3DMsoNormal style=3D'margin-botto=
m:0in;margin-bottom:.0001pt'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal styl=
e=3D'margin-bottom:0in;margin-bottom:.0001pt'>Using a Fedora system it is p=
ossible to mount the squashfs file and confirm the file labels are correct.=
&nbsp; When the target system is flashed the file labels for the squashfs f=
iles are incorrect, but ram disk files are correct.&nbsp; Using ls &#8211;l=
aZ, all squashfs files are system_u:object_r:unlabeled_t<o:p></o:p></p><p c=
lass=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'><o:p>&nb=
sp;</o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:=
.0001pt'>The kernel .config values for squsahfs and selinux here here<o:p><=
/o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.000=
1pt'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;m=
argin-bottom:.0001pt'>CONFIG_SQUASHFS=3Dy<o:p></o:p></p><p class=3DMsoNorma=
l style=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SQUASHFS_XATTR=
=3Dy<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-b=
ottom:.0001pt'>CONFIG_SQUASHFS_ZLIB=3Dy<o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SQUASHFS_LZO=3Dy<o=
:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:=
.0001pt'>CONFIG_SQUASHFS_XZ=3Dy<o:p></o:p></p><p class=3DMsoNormal style=3D=
'margin-bottom:0in;margin-bottom:.0001pt'># CONFIG_SQUASHFS_4K_DEVBLK_SIZE =
is not set<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;ma=
rgin-bottom:.0001pt'>CONFIG_SQUASHFS_EMBEDDED=3Dy<o:p></o:p></p><p class=3D=
MsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SQUASHFS=
_FRAGMENT_CACHE_SIZE=3D10 <o:p></o:p></p><p class=3DMsoNormal style=3D'marg=
in-bottom:0in;margin-bottom:.0001pt'><o:p>&nbsp;</o:p></p><p class=3DMsoNor=
mal style=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SECURITY_SELIN=
UX=3Dy<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin=
-bottom:.0001pt'>CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy<o:p></o:p></p><p cla=
ss=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SEC=
URITY_SELINUX_BOOTPARAM_VALUE=3D1<o:p></o:p></p><p class=3DMsoNormal style=
=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SECURITY_SELINUX_DISABL=
E=3Dy<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-=
bottom:.0001pt'>CONFIG_SECURITY_SELINUX_DEVELOP=3Dy<o:p></o:p></p><p class=
=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'>CONFIG_SECUR=
ITY_SELINUX_AVC_STATS=3Dy<o:p></o:p></p><p class=3DMsoNormal style=3D'margi=
n-bottom:0in;margin-bottom:.0001pt'>CONFIG_SECURITY_SELINUX_CHECKREQPROT_VA=
LUE=3D1<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margi=
n-bottom:.0001pt'>CONFIG_SECURITY_SELINUX_POLICYDB_VERSION_MAX=3Dn<o:p></o:=
p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt=
'># CONFIG_SECURITY_SELINUX_POLICYDB_VERSION_MAX is not set<o:p></o:p></p><=
p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'><o:p>=
&nbsp;</o:p></p><p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bott=
om:.0001pt'>Has anyone else run into this problem?&nbsp; Any suggestions on=
 what may be wrong? <o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bot=
tom:0in;margin-bottom:.0001pt'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal st=
yle=3D'margin-bottom:0in;margin-bottom:.0001pt'>Regards,<o:p></o:p></p><p c=
lass=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt'>josh<o:p=
></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_83DE8B501DA82042847858927365655402BC59B7C3AUSX7MCPC102A_--
