Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22307E00C93; Tue,  8 Jan 2019 07:10:21 -0800 (PST)
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
	*      [40.107.71.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 16340 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Jan 2019 07:10:18 PST
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr710047.outbound.protection.outlook.com [40.107.71.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59536E00B81
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 07:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=LwVR62acOIH9p9Sz8KcZymBODpy8EPuIes4KRWvCKvc=;
	b=3P+5R1CeD/9T3GtzeK6m+6ncx/6bgDnqcOE5KSZz2AcZLkpHA+foB9bj+cAbK9ata7b+iReVRvyCJEz4n1cEfXpCufVJ02GlpSMmbczyitBI6xJn8uJy5yUksuybNqtp7x+WENN5h09e8DXZjzuXplOfvXlTRjBbOpRX4yLRwrs=
Received: from BYAPR02MB6005.namprd02.prod.outlook.com (20.179.89.140) by
	BYAPR02MB4983.namprd02.prod.outlook.com (20.176.253.204) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1495.9; Mon, 7 Jan 2019 08:22:47 +0000
Received: from BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::b921:e815:abd4:d3e8]) by
	BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::b921:e815:abd4:d3e8%5]) with mapi id 15.20.1495.011;
	Mon, 7 Jan 2019 08:22:47 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: bitbake openamp-image-minimal fails to create image
Thread-Index: AdSmWDG603OeUfxeQYusuc4ZfFevdgACc8iw
Date: Mon, 7 Jan 2019 08:22:47 +0000
Message-ID: <BYAPR02MB60055CFEFBCF3B367ABF4F05B9890@BYAPR02MB6005.namprd02.prod.outlook.com>
References: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
In-Reply-To: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR02MB4983;
	6:QrMZKJwNgZjJSoUrp5A07zQrkdGw5arl/eIoCUxGRjIjgzLIV4O3fwbIP2AugMIMV8lJiwooURS8zDra6ucJqyX9/PHn9TLlr67BE9rAdTFMAECKgf88AqGI3sKkLnBw7pKiP0LALA33VWwu8lH5LcaHhEOjoMLl5mdJlAykaLiwOAanz0Xu7Qn8QcRbrbfjv7cm++HXZvU/l0xc/LsNrXhmDNqcghq5JCDg3EmMnbkcS8uF7SLuBYKhzhOw9o1u7P5xHbiIlOY/DEsYtZSIsLzzqBtV8FIR5zthW3nkmPqvU/Elj4J0vOaOT6F5uIcDa1BBPLBcMwkucPcBnSPAqeRMWMXR7Jg4zFmOFGrFkqxZ3AZWlTY1pCygY8NSWumlxz/MA0lXdfuSkZkCrHymxE+GZGGvgkq18abk5/XyupA6RhL02P4ntyFvX5UiA4gw3fqnBJTKn0vvN4XDV4eLTg==;
	5:iuzOTB/Mszqvg3RoK4Wf1+uOh7gukaZW6PecNmzrAZFqHQR6Zai4QbIJ8n01DWiEnw9yZ237rfaHMEG4HLvChdTV8Esa1iCqSq7Fe+DfkdGkDCpuujWXLG8cMOGLc8R2fkRshyReJxcH+RsxqYBhwRBGxU4aZd4DSiztx0Y4pkvAhViMyvRkjUG9OqxRXjGZFukYH1p2pqcYCXcBDzSRVw==;
	7:zkbFyhcS8kXciCdVoynurKE1KUCjSiiZrEaArvgTo6JeUtTw/GH2hC23qurYWFyj4yVVMvm+bCARXSMdx1sd6ins2v1/pzbCfpQmS8Z2vJZVjvSxhydpUc/qahuwcaeyIB6kft37uIbzKEttoE5Oqw==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e1ffb4eb-7125-417d-2301-08d674794ea9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB4983; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4983:|BYAPR02MB4983:
x-microsoft-antispam-prvs: <BYAPR02MB498346721B29C01978D50269B9890@BYAPR02MB4983.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(3230021)(908002)(999002)(5005026)(6040522)(8220060)(2401047)(8121501046)(10201501046)(3002001)(93006095)(93001095)(3231475)(944501520)(52105112)(6055026)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:BYAPR02MB4983; BCL:0; PCL:0; RULEID:; SRVR:BYAPR02MB4983; 
x-forefront-prvs: 0910AAF391
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(366004)(199004)(189003)(86362001)(486006)(97736004)(105586002)(14444005)(14454004)(106356001)(3846002)(6116002)(790700001)(72206003)(478600001)(186003)(6346003)(26005)(53546011)(102836004)(6506007)(256004)(71190400001)(99286004)(7696005)(446003)(11346002)(6436002)(229853002)(110136005)(55016002)(9686003)(6306002)(54896002)(476003)(316002)(71200400001)(6246003)(2906002)(5660300001)(25786009)(76176011)(2501003)(74316002)(7736002)(8676002)(33656002)(81156014)(53936002)(81166006)(8936002)(9326002)(68736007)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4983;
	H:BYAPR02MB6005.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y0Hjxr0U4yQVX5CXTEVQ0SUmr8v6Yf5b3PGuamA0tMHkqRVyc2VwepiGWhfRukzWtv40uH4k0QW/n7eqX32ymqeBxJUJkRxAvvSF+bpzQ53rBioEPGjtPPR44uAT7P22Ll0rPeyUztpwAgM4vGYv/xyv9SDbGO6GVY3Ytkq1Jc0fzJ8CuNccpRxsAMdo7RkpIAcmgsugo2Y/5XDCWEfXgkUoUZ5KMYWpFzAAUVEMfZUDMk9mvK5ESKEYSineZTrCT+eRJWs3z2yGgHPskL1hXMUJcd/F+r50b2rl8i+ffR8tUZvOd+qYdLLVlvc7HIh7
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e1ffb4eb-7125-417d-2301-08d674794ea9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2019 08:22:47.7875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4983
X-Microsoft-Exchange-Diagnostics: 1; BYAPR02MB4983;
	23:EDwHu7C4CciBKD9F/kqAnTHgIunhPgwfH8JI2I15IsWmHOziwNyoaUFb1WB2cy4aOifXbAm+GDhCOl52+kBMQFNHZ8PADE+mo/Efe12Stzan7b7fv2vuAD7FRwwq8DUVZmindD3AAAwsSXEu6T2LaA==
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
X-List-Received-Date: Tue, 08 Jan 2019 15:10:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR02MB60055CFEFBCF3B367ABF4F05B9890BYAPR02MB6005namp_"

--_000_BYAPR02MB60055CFEFBCF3B367ABF4F05B9890BYAPR02MB6005namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Kamal,

Seems like the required kernel modules are missing causing the breakage.
Enable them using kernel menuconfig (bitbake virtual/kernel -c menuconfig) =
and then build the image

Thanks,
Manju

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Pandey, Kamal
Sent: Sunday, January 06, 2019 11:14 PM
To: yocto@yoctoproject.org
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
No package kernel-module-virtio-rpmsg-bus available.
No package kernel-module-virtio available.
No package kernel-module-remoteproc available.
Error: Unable to find a match

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /media/iepl/iepl1/work/yocto_build/bui=
ld-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0=
-r0/temp/log.do_rootfs.7153
ERROR: Task (/home/iepl/work/yocto_build/poky/../meta-openamp/recipes-opena=
mp/images/openamp-image-minimal.bb:do_rootfs) failed with exit code '1'


Can someone provide me a solution to this problem.
Thanks

--_000_BYAPR02MB60055CFEFBCF3B367ABF4F05B9890BYAPR02MB6005namp_
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
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
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
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto-bounces@yoctoproject.org [mailto:=
yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Pandey, Kamal<br>
<b>Sent:</b> Sunday, January 06, 2019 11:14 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
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
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">ERROR: openamp-image-mi=
nimal-1.0-r0 do_rootfs: Could not invoke
 dnf. Command '/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/p=
dm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recipe-sysroot-nat=
ive/usr/bin/dnf -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp=
/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/=
dnf/dnf.conf
 --setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tm=
p/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc=
/yum.repos.d --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/bu=
ild-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.=
0-r0/oe-rootfs-repo
 --installroot=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work=
/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs --setopt=
=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3=
_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/temp
 --nogpgcheck install kernel-module-virtio-ring kernel-module-virtio-rpmsg-=
bus kernel-module-uio-pdrv-genirq kernel-module-virtio libopen-amp0 package=
group-base-extended kernel-image-fitimage-4.14.79-yocto-standard run-postin=
sts libmetal packagegroup-core-boot
 kernel-module-remoteproc' returned 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">Added oe-repo repo from=
 /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zynq=
mp-pdm3-linux/openamp-image-minimal/1.0-r0/oe-rootfs-repo<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">Last metadata expiratio=
n check: 0:00:00 ago on Fri 04 Jan 2019
 01:58:31 PM UTC.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">No package kernel-modul=
e-virtio-ring available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">No package kernel-modul=
e-virtio-rpmsg-bus available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">No package kernel-modul=
e-virtio available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">No package kernel-modul=
e-remoteproc available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">Error: Unable to find a=
 match<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">ERROR: openamp-image-mi=
nimal-1.0-r0 do_rootfs: Function failed:
 do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">ERROR: Logfile of failu=
re stored in: /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pd=
m3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/temp/log.do_rootfs.=
7153<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span lang=3D"EN-IN" st=
yle=3D"font-size:9.0pt;font-family:Consolas;color:#24292E;border:none windo=
wtext 1.0pt;padding:0in;mso-fareast-language:EN-IN">ERROR: Task (/home/iepl=
/work/yocto_build/poky/../meta-openamp/recipes-openamp/images/openamp-image=
-minimal.bb:do_rootfs)
 failed with exit code '1'</span><span lang=3D"EN-IN" style=3D"font-size:9.=
0pt;font-family:Consolas;color:#24292E;mso-fareast-language:EN-IN"><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IN"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin-top:0in"><span lang=3D"EN-IN" style=3D"font-size:10.5pt;=
font-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E">Can someone prov=
ide me a solution to this problem.<br>
Thanks<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_BYAPR02MB60055CFEFBCF3B367ABF4F05B9890BYAPR02MB6005namp_--
