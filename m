Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26025E006ED; Tue, 22 Jul 2014 08:11:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.181 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1blp0181.outbound.protection.outlook.com [207.46.163.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5518CE00558
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 08:11:30 -0700 (PDT)
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0713.namprd03.prod.outlook.com (25.160.159.143) with
	Microsoft
	SMTP Server (TLS) id 15.0.985.8; Tue, 22 Jul 2014 15:11:26 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.00.0985.008; Tue, 22 Jul 2014 15:11:26 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SELinux doesn't work on t4240qds
Thread-Index: Ac+lvzKBtGo4KmiDRFuWSK4Azfu4jw==
Date: Tue, 22 Jul 2014 15:11:25 +0000
Message-ID: <dfd0afc8932f41e19daf0a1fe13578b3@CY1PR0301MB0715.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [123.151.195.50]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 02801ACE41
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(189002)(199002)(53754006)(81342001)(15975445006)(95666004)(85306003)(4396001)(80022001)(50986999)(19625215002)(18717965001)(76576001)(107886001)(85852003)(64706001)(99396002)(83322001)(107046002)(16236675004)(87936001)(74316001)(92566001)(20776003)(31966008)(19300405004)(66066001)(2656002)(21056001)(99286002)(19580405001)(2351001)(81542001)(33646002)(86362001)(76482001)(106356001)(74662001)(15202345003)(229853001)(110136001)(105586002)(19580395003)(46102001)(77096002)(83072002)(74502001)(101416001)(19609705001)(79102001)(77982001)(54356999)(108616002)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:CY1PR0301MB0713;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: SELinux doesn't work on t4240qds
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
X-List-Received-Date: Tue, 22 Jul 2014 15:11:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_dfd0afc8932f41e19daf0a1fe13578b3CY1PR0301MB0715namprd03_"

--_000_dfd0afc8932f41e19daf0a1fe13578b3CY1PR0301MB0715namprd03_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I use the meta-selinux layer to build a core-image-selinux rootfs image, an=
d build kernel with following options enabled.
CONFIG_AUDIT=3Dy
CONFIG_NETWORK_SECMARK=3Dy
CONFIG_EXT2_FS_SECURITY=3Dy
CONFIG_EXT3_FS_SECURITY=3Dy
CONFIG_EXT4_FS_SECURITY=3Dy
CONFIG_JFS_SECURITY=3Dy
CONFIG_REISERFS_FS_SECURITY=3Dy
CONFIG_JFFS2_FS_SECURITY=3Dy
CONFIG_SECURITY_NETWORK=3Dy
CONFIG_SECURITY_SELINUX=3Dy
CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy
CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D1
CONFIG_SECURITY_SELINUX_DISABLE=3Dy
CONFIG_SECURITY_SELINUX_DEVELOP=3Dy
CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy
CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D1

I use the generated images to boot up FSL PPC t4240qds board(tried both NFS=
 boot and RAM boot with ext2.gz.u-boot rootfs), the SELinux is not turned o=
n after kernel boot up.

following is some information in rootfs.
root@t4240qds:~# sestatus
SELinux status:                 disabled
root@t4240qds:~#
root@t4240qds:~# cat /etc/selinux/config
# This file controls the state of SELinux on the system.
# SELINUX=3D can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
SELINUX=3Denforcing
# SELINUXTYPE=3D can take one of these two values:
#     standard - Standard Security protection.
#     mls - Multi Level Security protection.
SELINUXTYPE=3Dmls

root@t4240qds:~# cat /proc/cmdline
root=3D/dev/ram rw console=3DttyS0,115200 selinux=3D1
root@t4240qds:~# setenforce 1
setenforce: SELinux is disabled
root@t4240qds:~# getenforce
Disabled
root@t4240qds:~#

Can somebody shed some light on the issue?


Best Regards,

Zhenhua

--_000_dfd0afc8932f41e19daf0a1fe13578b3CY1PR0301MB0715namprd03_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I use the meta-selinux layer to build a core-image-s=
elinux rootfs image, and build kernel with following options enabled.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">CONFIG_AUDIT=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_NETWORK_SECMARK=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_EXT2_FS_SECURITY=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_EXT3_FS_SECURITY=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_EXT4_FS_SECURITY=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_JFS_SECURITY=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_REISERFS_FS_SECURITY=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_JFFS2_FS_SECURITY=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_NETWORK=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D1<o:p></o:=
p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX_DISABLE=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX_DEVELOP=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D1<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I use the generated images to boot up FSL PPC t4240q=
ds board(tried both NFS boot and RAM boot with ext2.gz.u-boot rootfs), the =
SELinux is not turned on after kernel boot up.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">following is some information in rootfs. <o:p></o:p>=
</p>
<p class=3D"MsoNormal">root@t4240qds:~# sestatus <o:p></o:p></p>
<p class=3D"MsoNormal">SELinux status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; disabled<o:p></=
o:p></p>
<p class=3D"MsoNormal">root@t4240qds:~# <o:p></o:p></p>
<p class=3D"MsoNormal">root@t4240qds:~# cat /etc/selinux/config <o:p></o:p>=
</p>
<p class=3D"MsoNormal"># This file controls the state of SELinux on the sys=
tem.<o:p></o:p></p>
<p class=3D"MsoNormal"># SELINUX=3D can take one of these three values:<o:p=
></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp; enforcing - SELinux securi=
ty policy is enforced.<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp; permissive - SELinux print=
s warnings instead of enforcing.<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp; disabled - No SELinux poli=
cy is loaded.<o:p></o:p></p>
<p class=3D"MsoNormal">SELINUX=3Denforcing<o:p></o:p></p>
<p class=3D"MsoNormal"># SELINUXTYPE=3D can take one of these two values:<o=
:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp; standard - Standard Securi=
ty protection.<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp; mls - Multi Level Security=
 protection.<o:p></o:p></p>
<p class=3D"MsoNormal">SELINUXTYPE=3Dmls<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root@t4240qds:~# cat /proc/cmdline <o:p></o:p></p>
<p class=3D"MsoNormal">root=3D/dev/ram rw console=3DttyS0,115200 selinux=3D=
1<o:p></o:p></p>
<p class=3D"MsoNormal">root@t4240qds:~# setenforce 1<o:p></o:p></p>
<p class=3D"MsoNormal">setenforce: SELinux is disabled<o:p></o:p></p>
<p class=3D"MsoNormal">root@t4240qds:~# getenforce <o:p></o:p></p>
<p class=3D"MsoNormal">Disabled<o:p></o:p></p>
<p class=3D"MsoNormal">root@t4240qds:~#<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can somebody shed some light on the issue?<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua<o:p></o:p></p>
</div>
</body>
</html>

--_000_dfd0afc8932f41e19daf0a1fe13578b3CY1PR0301MB0715namprd03_--
