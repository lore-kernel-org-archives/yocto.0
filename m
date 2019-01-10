Return-Path: <jliang@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF66E00CC4; Fri, 11 Jan 2019 10:40:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.81.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 105444 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Jan 2019 10:39:56 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810074.outbound.protection.outlook.com [40.107.81.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 741DDE009EB;
	Fri, 11 Jan 2019 10:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gcnAE9YFuwKp9SGM/MVU6aH7phV0+OMz4CPIJbV+J40=;
	b=LzYhGosBFkJuyfRxdO7VnVxWN0UFeqhcTkjNsQsdKAPmW1cnWEQvHiC3uQJSWYj++xNKimswN21odRcNjwXGtTtDBtsPVuowdqyWjYHqDHvuTZdHccbIWVJrGMS4uBDfqY2AhCFL5Us2pZyKxq89t7TkQAf3C6abKWK0eFUGmBc=
Received: from BYAPR02MB4888.namprd02.prod.outlook.com (52.135.234.202) by
	BYAPR02MB4518.namprd02.prod.outlook.com (52.135.239.153) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1495.7; Thu, 10 Jan 2019 05:44:19 +0000
Received: from BYAPR02MB4888.namprd02.prod.outlook.com
	([fe80::5cb1:317e:a3ca:1399]) by
	BYAPR02MB4888.namprd02.prod.outlook.com
	([fe80::5cb1:317e:a3ca:1399%5]) with mapi id 15.20.1516.015;
	Thu, 10 Jan 2019 05:44:18 +0000
From: Jiaying Liang <jliang@xilinx.com>
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>, "Pandey, Kamal"
	<Kamal.Pandey@ifm.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Thread-Topic: bitbake openamp-image-minimal fails to create image
Thread-Index: AdSmWDG603OeUfxeQYusuc4ZfFevdgACc8iwAA9BEDAABrMwsAB7Tuiw
Date: Thu, 10 Jan 2019 05:44:18 +0000
Message-ID: <BYAPR02MB48889FA66F57D5347889C661B0840@BYAPR02MB4888.namprd02.prod.outlook.com>
References: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
	<BYAPR02MB60055CFEFBCF3B367ABF4F05B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
	<6f9664b4422a45dea24977f17e529033@ifm.com>
	<BYAPR02MB600504E46CEFFFC61E3B38A3B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB600504E46CEFFFC61E3B38A3B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jliang@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR02MB4518;
	6:gL9/F5MVNAYcXDz2j5Zm9hNPq0H/Vmche4R3foCDegbSWPNU8HLZshXaRv16vlCgoFaRzK7+YdgnihQbfbgIfYlG5ZJua6K/N6YlkIqjPVE+Onvde4IZEaAgXKQGB/Rr2kizUWIGmrejUrJraO3+xoq8wsg6Xal5yJ95StEWxNW656WFXQYYTn/od2HLd7fVxzqSgRDLMvOsji2l3+svDQEEyhYyX2rJyfs54W5PEtH6Ie1Qt7779pI/pRrHrQhOluGFqPVl34iyGOd4L/uV/3B85KWtkdqfvxsypryKYexibf1xlpGf+i3+VWDrS+q+xhD2o+xucagLGY7YzRENXe39poL7/YA/6B+MOc3aBYm2kKr9J0iWfMLHXdrDEbzfERWDMfX3nfmwPGrAmkVKrrCtCHUrVuoHYqRNArIMMRQWBvPkU/csYJFvDKc93cMGPb92wAFWKnvI1fZblhimTQ==;
	5:ytDChYS7q/3Yu3hOD7ISw6Vn6K76FNUPxbJTOE1w2lYKBISP5nNq3GESh23GKk74rUx0WornGF4MfFKzBQ9pl6kUufftNzrk41TOZTargOxLqBypkOgxPGtGucFyajNVvtTApjGzldX43/K9jWKBjcslEkyVyc4eGVtzJkLpzi4K3Z/LQZ0kgC6t7r/M8ZPBWQK+qQvg4xeVQE12deUJbA==;
	7:gVW74JGO/k/ZymlwoahQ376cTKM8ff8yG8fPMyjBdhIA56XfhDvPkyV183hbJcAGryTChK3rYJBoXLfLSeK29rRSSvKvBW71sIIGi1PvEvXTHGWrwoZ5xY/wquJB5lGX4uYCcVCxZ+J/Y8bmNhBB3A==
x-ms-exchange-antispam-srfa-diagnostics: SOS;SOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10009020)(39860400002)(136003)(376002)(396003)(366004)(346002)(189003)(199004)(68736007)(106356001)(81166006)(8936002)(2501003)(486006)(6436002)(7696005)(105586002)(93886005)(33656002)(2906002)(316002)(7736002)(99286004)(567974002)(110136005)(478600001)(81156014)(229853002)(6506007)(53546011)(8676002)(71200400001)(476003)(71190400001)(11346002)(66066001)(3846002)(102836004)(6116002)(790700001)(236005)(6306002)(9686003)(54896002)(5660300001)(97736004)(186003)(55016002)(2201001)(26005)(6246003)(74316002)(256004)(25786009)(446003)(53936002)(14444005)(14454004)(76176011)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4518;
	H:BYAPR02MB4888.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-office365-filtering-correlation-id: 66cfa616-84bd-4d62-6093-08d676bea9af
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600109)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB4518; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4518:|BYAPR02MB4518:
x-microsoft-antispam-prvs: <BYAPR02MB45182303FE31896D0DA9C0F0B0840@BYAPR02MB4518.namprd02.prod.outlook.com>
x-forefront-prvs: 0913EA1D60
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Km88ghDYWOE7WmQ4pIIgSdgcAAP4uacYM1eWRxRTUmcAfYgrJhAtqhtP7BSPufzfMFYXWJAiFjRAuOiW/ua1Nz8L+t/fYuTmbUvvDVBjfqEqvE0lZ+T4idc4nOwSF2ARKf6tr+4bHQHhU1tgWW01J1Tb1SFPLmIsitYi/XK1wlFpqCYirZX5uLHQNpwzwTR5mUIPRxwQtewyStEJXZbxWUV2U9JSN3balGFewGx+1AZAz/apBIuhbTi1FeKxzRyNKfTcEVdCN6OD+OVES6KA4TzXLG/fZxE16YBK1SAOyqKB3r3M24SYWdH8wv+AGGK5
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 66cfa616-84bd-4d62-6093-08d676bea9af
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2019 05:44:18.0648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4518
X-Microsoft-Exchange-Diagnostics: 1; BYAPR02MB4518;
	23:OTNq7jjTl0W6F3M49l+hB5G+tuiNWFd56bjA59GwaBatwpb06Nv7vqzeqAClx6b6slvGXvBVLuINxS+gXgwsIfZSnvin87KhgqTuSaVa+Z8a7vxnnIisCeqvvfvl0kFv1Ipy1yXhAHu4Xs2vhZgsJw==
X-OriginatorOrg: xilinx.com
Subject: Re: bitbake openamp-image-minimal fails to create image
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
X-List-Received-Date: Fri, 11 Jan 2019 18:40:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR02MB48889FA66F57D5347889C661B0840BYAPR02MB4888namp_"

--_000_BYAPR02MB48889FA66F57D5347889C661B0840BYAPR02MB4888namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Manjukumar Harthikote Matha
Sent: Monday, January 07, 2019 10:51 AM
To: Pandey, Kamal <Kamal.Pandey@ifm.com>; yocto@yoctoproject.org; meta-xili=
nx@yoctoproject.org
Subject: Re: [yocto] bitbake openamp-image-minimal fails to create image

+meta-xilinx mailing list

From: Pandey, Kamal [mailto:Kamal.Pandey@ifm.com]
Sent: Monday, January 07, 2019 8:59 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; Manjukumar Harth=
ikote Matha <MANJUKUM@xilinx.com<mailto:MANJUKUM@xilinx.com>>
Subject: RE: bitbake openamp-image-minimal fails to create image

Hi,
I solved the problem by using meta-openamp(branch should be similar to xili=
nx version) layer in my yocto project and enabled "libmetal" and "open-amp"=
 packages in my image recipe. It compiled successfully.  I also add rpmsg-e=
cho-test,  rpmsg-mat-mul , and rpmsg-proxy-app packages in the image and it=
 successfully compiled. I am building Linux Application that uses RPMsg in =
user space.
Now the executable generated from echo-test or mat-mul are in my host linux=
 master (a53-core). I have also created an r5-application using XSDK.
What is the next step to have a communication between a53 and r5. How to us=
e the generated elf file for r5 processor.
Also I have enabled remoteproc, rpmsg, virtio  in kernel configuration.
But while using the command " $modprobe zynqmp_r5_remoteproc", I get the fo=
llowing error:

"modprobe: module zynqmp_r5_remoteproc not found in modules.dep"
[Wendy] It doesn't look like the zynqmp_r5_remoteproc driver is compiled or=
 maybe it is compiled but not add into the system.

Please check the following:

*       If your linux kernel has enabled in your kernel .config

*       If you have "kernel-modules" added to your image

o   E.g.:

o   CORE_IMAGE_EXTRA_INSTALL +=3D " \

o       kernel-modules \

o   "
Best Regards,
Wendy
How can I boot the r5 processor and where to store the elf file generated.
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com<mailto:MANJUKUM@xili=
nx.com>>
Sent: 07 January 2019 13:53
To: Pandey, Kamal <Kamal.Pandey@ifm.com<mailto:Kamal.Pandey@ifm.com>>; yoct=
o@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: bitbake openamp-image-minimal fails to create image

Hi Kamal,

Seems like the required kernel modules are missing causing the breakage.
Enable them using kernel menuconfig (bitbake virtual/kernel -c menuconfig) =
and then build the image

Thanks,
Manju

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Pandey, Kamal
Sent: Sunday, January 06, 2019 11:14 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] bitbake openamp-image-minimal fails to create image

Hello,
I used the meta-openamp layer for r5-a53 communication.
but when I simply ran $bitbake openamp-image-minimal, it gave me the follow=
ing error:

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Comman=
d '/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zy=
nqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/=
dnf -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_r=
ev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf=
 --setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tm=
p/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc=
/yum.repos.d --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/bu=
ild-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.=
0-r0/oe-rootfs-repo --installroot=3D/media/iepl/iepl1/work/yocto_build/buil=
d-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-=
r0/rootfs --setopt=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open=
-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/tem=
p --nogpgcheck install kernel-module-virtio-ring kernel-module-virtio-rpmsg=
-bus kernel-module-uio-pdrv-genirq kernel-module-virtio libopen-amp0 packag=
egroup-base-extended kernel-image-fitimage-4.14.79-yocto-standard run-posti=
nsts libmetal packagegroup-core-boot kernel-module-remoteproc' returned 1:
Added oe-repo repo from /media/iepl/iepl1/work/yocto_build/build-open-amp/t=
mp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/oe-rootfs=
-repo
Last metadata expiration check: 0:00:00 ago on Fri 04 Jan 2019 01:58:31 PM =
UTC.
No package kernel-module-virtio-ring available.
No package   available.
No package kernel-module-virtio available.
No package   available.
Error: Unable to find a match

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /media/iepl/iepl1/work/yocto_build/bui=
ld-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0=
-r0/temp/log.do_rootfs.7153
ERROR: Task (/home/iepl/work/yocto_build/poky/../meta-openamp/recipes-opena=
mp/images/openamp-image-minimal.bb:do_rootfs) failed with exit code '1'


Can someone provide me a solution to this problem.
Thanks

--_000_BYAPR02MB48889FA66F57D5347889C661B0840BYAPR02MB4888namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
	{mso-list-id:184441862;
	mso-list-type:hybrid;
	mso-list-template-ids:-1541343798 -1440726346 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:SimSun;
	mso-bidi-font-family:"Times New Roman";
	mso-ansi-font-weight:bold;
	mso-ansi-font-style:italic;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto-bounces@yoctoproject.org [mailto:=
yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Manjukumar Harthikote Matha<br>
<b>Sent:</b> Monday, January 07, 2019 10:51 AM<br>
<b>To:</b> Pandey, Kamal &lt;Kamal.Pandey@ifm.com&gt;; yocto@yoctoproject.o=
rg; meta-xilinx@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] bitbake openamp-image-minimal fails to create i=
mage<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#43;meta-xilinx maili=
ng list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Pandey, Kamal [<a href=3D"mailto:Kamal.=
Pandey@ifm.com">mailto:Kamal.Pandey@ifm.com</a>]
<br>
<b>Sent:</b> Monday, January 07, 2019 8:59 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a>; Manjukumar Harthikote Matha &lt;<a href=3D"mailto:MANJUKUM@xilinx.com=
">MANJUKUM@xilinx.com</a>&gt;<br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Hi, <o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">I solve=
d the problem by using meta-openamp(branch should be similar to xilinx vers=
ion) layer in my yocto project and enabled &#8220;libmetal&#8221; and &#822=
0;open-amp&#8221; packages in my image recipe. It compiled successfully.
 &nbsp;I also add rpmsg-echo-test, &nbsp;rpmsg-mat-mul , and rpmsg-proxy-ap=
p packages in the image and it successfully compiled. I am building Linux A=
pplication that uses RPMsg in user space.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Now the=
 executable generated from echo-test or mat-mul are in my host linux master=
 (a53-core). I have also created an r5-application using XSDK.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">What is=
 the next step to have a communication between a53 and r5. How to use the g=
enerated elf file for r5 processor.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Also I =
have enabled remoteproc, rpmsg, virtio&nbsp; in kernel configuration.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">But whi=
le using the command &#8220;
<i>$modprobe zynqmp_r5_remoteproc</i>&#8221;, I get the following error:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">&#8220;=
<i>modprobe: module zynqmp_r5_remoteproc not found in modules.dep</i>&#8221=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D">[=
Wendy] It doesn&#8217;t look like the zynqmp_r5_remoteproc driver is compil=
ed or maybe it is compiled but not add into the system.<o:p></o:p></span></=
i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D"><=
o:p>&nbsp;</o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D">P=
lease check the following:<o:p></o:p></span></i></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:Symb=
ol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"fo=
nt:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>If your linux kernel has enabled in your kernel .config<o:p></o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:Symb=
ol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"fo=
nt:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>If you have &#8220;kernel-modules&#8221; added to your image<o:p></o:p></s=
pan></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>E.g.:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>&nbsp;&nbsp;&nbsp;&nbsp;kernel-modules \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span lang=3D"EN-IN" style=3D"font-family:&quot;Courie=
r New&quot;;color:#1F497D"><span style=3D"mso-list:Ignore">o<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-IN" style=3D"color:#1F497D"=
>&#8220;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">Best Re=
gards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-IN" style=3D"color:#1F497D">W=
endy</span></i></b><span lang=3D"EN-IN" style=3D"color:#1F497D"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"color:#1F497D">How can=
 I boot the r5 processor and where to store the elf file generated.
<o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Manjukumar Harthikote Matha &lt;<a href=
=3D"mailto:MANJUKUM@xilinx.com">MANJUKUM@xilinx.com</a>&gt;
<br>
<b>Sent:</b> 07 January 2019 13:53<br>
<b>To:</b> Pandey, Kamal &lt;<a href=3D"mailto:Kamal.Pandey@ifm.com">Kamal.=
Pandey@ifm.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<b>Subject:</b> RE: bitbake openamp-image-minimal fails to create image<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Kamal,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Seems like the require=
d kernel modules are missing causing the breakage.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Enable them using kern=
el menuconfig (bitbake virtual/kernel &#8211;c menuconfig) and then build t=
he image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Manju<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Pandey, Kamal<br>
<b>Sent:</b> Sunday, January 06, 2019 11:14 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] bitbake openamp-image-minimal fails to create image=
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#24292E;background:white">I us=
ed the&nbsp;<strong><span style=3D"font-family:&quot;Segoe UI&quot;,sans-se=
rif">meta-openamp</span></strong>&nbsp;layer for&nbsp;<strong><span style=
=3D"font-family:&quot;Segoe UI&quot;,sans-serif">r5-a53
 communication</span></strong>.</span><span lang=3D"EN-IN" style=3D"font-si=
ze:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E"><br>
<span style=3D"background:white">but when I simply ran</span></span><code><=
span lang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;color:#24=
292E">&nbsp;$bitbake openamp-image-minimal</span></code><span lang=3D"EN-IN=
" style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;col=
or:#24292E;background:white">,
 it gave me the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#24292E;background:white"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Cou=
ld not invoke dnf. Command '/media/iepl/iepl1/work/yocto_build/build-open-a=
mp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recip=
e-sysroot-native/usr/bin/dnf
 -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_=
b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf --=
setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/w=
ork/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/yu=
m.repos.d
 --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/build-open-amp=
/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/oe-root=
fs-repo --installroot=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/t=
mp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs
 --setopt=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/=
work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/temp --nogpg=
check install kernel-module-virtio-ring kernel-module-virtio-rpmsg-bus kern=
el-module-uio-pdrv-genirq kernel-module-virtio
 libopen-amp0 packagegroup-base-extended kernel-image-fitimage-4.14.79-yoct=
o-standard run-postinsts libmetal packagegroup-core-boot kernel-module-remo=
teproc' returned 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">Added oe-repo repo from /media/iepl/iepl1/work/yoc=
to_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image=
-minimal/1.0-r0/oe-rootfs-repo<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">Last metadata expiration check: 0:00:00 ago on Fri=
 04 Jan 2019 01:58:31 PM UTC.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package kernel-module-virtio-ring available.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package
</span><span lang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;c=
olor:#1F497D;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span l=
ang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;b=
order:none windowtext 1.0pt;padding:0in">&nbsp;available.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package kernel-module-virtio available.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">No package
</span><span lang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;c=
olor:#1F497D;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span l=
ang=3D"EN-IN" style=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;b=
order:none windowtext 1.0pt;padding:0in">&nbsp;available.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">Error: Unable to find a match<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Fun=
ction failed: do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: Logfile of failure stored in: /media/iepl/i=
epl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/=
openamp-image-minimal/1.0-r0/temp/log.do_rootfs.7153<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in">ERROR: Task (/home/iepl/work/yocto_build/poky/../m=
eta-openamp/recipes-openamp/images/openamp-image-minimal.bb:do_rootfs)
 failed with exit code '1'</span><span lang=3D"EN-IN" style=3D"font-size:9.=
0pt;font-family:Consolas;color:#24292E"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin-top:0in"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;=
font-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E">Can someone prov=
ide me a solution to this problem.<br>
Thanks<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR02MB48889FA66F57D5347889C661B0840BYAPR02MB4888namp_--
