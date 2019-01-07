Return-Path: <kevin@patroness.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0CA5E00C5F; Tue,  8 Jan 2019 22:05:55 -0800 (PST)
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
	*      [40.107.79.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 75845 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Jan 2019 22:05:54 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr790124.outbound.protection.outlook.com [40.107.79.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C772E00BED
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 22:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NETORG3784195.onmicrosoft.com; s=selector1-patroness-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=0Jwrz9WFxYUpjR6s9AsUowvyC5wM+4Vol4gN74v0ULk=;
	b=EdXd6saygeOpZ93J6MzNu6GwZx1sM88K4kjhIAy7P85drAR8JyI4IosrURyZLE3wHPc048l9Zi4G5JUqUBmMYXD7JTJ+Q2A/igmUhy2SmCRrxz/fyx8Whe5qJXCp1G4slRbp61HOq8QOHj+0Sk/tN99fWulSQO07ZH0/zN2mE88=
Received: from DM5PR19MB1401.namprd19.prod.outlook.com (10.175.225.15) by
	DM5PR19MB1562.namprd19.prod.outlook.com (10.175.225.140) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1495.9; Mon, 7 Jan 2019 23:30:26 +0000
Received: from DM5PR19MB1401.namprd19.prod.outlook.com
	([fe80::a00b:3bf3:ddd6:975c]) by
	DM5PR19MB1401.namprd19.prod.outlook.com
	([fe80::a00b:3bf3:ddd6:975c%3]) with mapi id 15.20.1495.011;
	Mon, 7 Jan 2019 23:30:26 +0000
From: Kevin Lannen <kevin@patroness.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: Issue during do_rootfs for custom kernel modules
Thread-Index: AdSm2fVO/hHnSK9WQgybx010DhIKBA==
Date: Mon, 7 Jan 2019 23:30:26 +0000
Message-ID: <DM5PR19MB14010AD054E9150F14C9BFF0B9890@DM5PR19MB1401.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=kevin@patroness.com; 
x-originating-ip: [73.95.180.237]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR19MB1562;
	6:tZEe3NCTe48J6QmHlxJopzvC911tsRHx2FkwQ5Pnru7+7u3ViWJ+P3Zw/v4PZsJWNdy6brsetUQ16lFhrHkt04Ls846ZfoFKKfA1XWR0yki+wsSfG1tqk9VHDJ4eaZNmMr9SGvIP2/HEwsW3fDAvqAWu2AbH/q3aqkeGg3lP4YvoVLNbOhyq0roDQg5zNvicc5UWN6h8z/bydVT50PZBE29kAe249Yd9vqxfT1qx4anyTQhsFlRiP25HdsQdbKqNHJKkbTHg6jKB1F6ewSeVuLntspOfqADbZqa/QfVF4ji0qNTzhomD+QYhnC7HFDKWtAw9j/Gu6e9W33bEs1x7GkeOHiOMg62/ecM8qcJTmtO7jbMimMEwzFwUVJLOGOEZT/m29flcG25j/p/8qLShre8CMY5BlLtfeFAxlum4N+0/dgKz8awc/NLLdbKIC7W0JcNN/vxCvJfeYdRsRp0KsQ==;
	5:9qTFRNoYOC1ju7CCD/r6zcv/HeMKvh0mGTkCP8Ujm8WerW15RCj0AkPo9F0EHXGUG8GEZ9VRzrhTgX6fK/teaeZMzs/0p6643vo7qt3HLwOOPHzAAIov8WYUy2jl2Ep65aSRctJhDBykQwXBTArmbVKX+HLiCTvXnjBJIsuEgWXhdJmgczjWv6h6LvcsDplrs+uJOERF2Pvl5hSmVQqMYg==;
	7:gHCzPD8lI5BiN6RK+yxqaNNndzs6H5DcnfcQ2p04bxJHkPke/1L5PUpXezzK4QzgIy7N+blJNFtYlCB1HMe7T6TcvJgOXxfMKCPg6ZbD4jdk7VI9HL7j3SjjMhGcBRdKBCf8mF1ogAYztKb/p+MjFQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 0dd6145c-724b-47c3-1b7d-08d674f81a79
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600109)(711020)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:DM5PR19MB1562; 
x-ms-traffictypediagnostic: DM5PR19MB1562:
x-microsoft-antispam-prvs: <DM5PR19MB1562F5D2167F85303E292372B9890@DM5PR19MB1562.namprd19.prod.outlook.com>
x-forefront-prvs: 0910AAF391
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(136003)(366004)(346002)(396003)(39830400003)(189003)(199004)(81166006)(81156014)(8676002)(316002)(486006)(6436002)(7736002)(102836004)(6116002)(2906002)(66066001)(3846002)(7696005)(74316002)(97736004)(6506007)(99936001)(26005)(71200400001)(186003)(71190400001)(236005)(5024004)(6306002)(4326008)(39060400002)(9686003)(14444005)(790700001)(14454004)(86362001)(33656002)(99286004)(25786009)(256004)(9326002)(8936002)(5660300001)(6916009)(508600001)(55016002)(54896002)(106356001)(476003)(105586002)(68736007)(53936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR19MB1562;
	H:DM5PR19MB1401.namprd19.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: patroness.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4xQXgaZo/Lytjhv91xLMIgCfkExlXWCCtu4/4xtfB02QMCKntKpqwz8+370FwQcq8u4vX/+8R6ZD9xUdLwkYVfIxr10Tobsfov83ms9CKiX8VysANsRy8f+laty0YDl3HwIcVoA8TRdue4Y8UHv9S9cND+0puWqDjdYNMap6m6OPyDbHTF8s+RC9onfYDCZhUwJ+17ryHkwiDH1cGmBY/YvjkZq8qo5aj+0eSt0Q1pcEO7M9aUmK9ETcYufDL+/3D9bquJQSUr63qdfDpT3yv07jhRdAIPJNSvbr6s9mMsRN0VSjnICvemIFB1wOEuba
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: patroness.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd6145c-724b-47c3-1b7d-08d674f81a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2019 23:30:26.1859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: da6e8dae-01c6-4e9e-851f-39485d79a13c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR19MB1562
Cc: "lhondorf@gmail.com" <lhondorf@gmail.com>
Subject: Issue during do_rootfs for custom kernel modules
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
X-List-Received-Date: Wed, 09 Jan 2019 06:05:55 -0000
X-Groupsio-MsgNum: 43682
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_"

--_005_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_
Content-Type: multipart/alternative;
	boundary="_000_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_"

--_000_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build a custom kernel module for a marvell wifi/BT module an=
d am running into a strange error during the rootfs step.

Problem: conflicting requests
- nothing provides kernel-module-bt8977-4.9.88-cl-som-imx8-6.9+g5e23f9d6114=
7 needed by kernel-module-marvell-bt8977-1.0-r0.cl_som_imx8
ERROR: patroness-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/build/compulab-rocko/build-wayla=
nd/tmp/work/cl_som_imx8-poky-linux/patroness-image/1.0-r0/temp/log.do_rootf=
s.25346
ERROR: Task (/home/build/compulab-rocko/sources/meta-patroness/recipes-core=
/images/patroness-image.bb:do_rootfs) failed with exit code '1'

I have checked the attached logfile and it does not seem to have anymore in=
formation about what would be causing this issue.

I cannot figure out why it cannot find the kernel-module-bt8977-4.9.88-cl-s=
om-imx8-6.9+g5e23f9d61147 package since it shows up in the package folder i=
n build-wayland/tmp/work/cl_som_imx8-poky-linux/kernel-module-marvell-bt897=
7/1.0-r0

I have also attached the bitbake recipe for this module but it does not see=
m to set the version for this anywhere.

Does anyone have an idea of what might be causing this or where I should co=
ntinue investigating this failure?

Thanks,


Kevin Lannen
Embedded Systems Engineer

Patroness, LLC
Protect Fiercely, Live Freely.
kevin@patroness.com<mailto:jered@patroness.com>



--_000_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_
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
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build a custom kernel module for a ma=
rvell wifi/BT module and am running into a strange error during the rootfs =
step.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Problem: conflicting reque=
sts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">- nothing provides kernel-=
module-bt8977-4.9.88-cl-som-imx8-6.9&#43;g5e23f9d61147 needed by kernel-mod=
ule-marvell-bt8977-1.0-r0.cl_som_imx8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: patroness-image-1.0=
-r0 do_rootfs: Function failed: do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Logfile of failure =
stored in: /home/build/compulab-rocko/build-wayland/tmp/work/cl_som_imx8-po=
ky-linux/patroness-image/1.0-r0/temp/log.do_rootfs.25346<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Task (/home/build/c=
ompulab-rocko/sources/meta-patroness/recipes-core/images/patroness-image.bb=
:do_rootfs) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have checked the attached logfile and it does not =
seem to have anymore information about what would be causing this issue.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I cannot figure out why it cannot find the <span sty=
le=3D"font-family:Consolas">
kernel-module-bt8977-4.9.88-cl-som-imx8-6.9&#43;g5e23f9d61147</span> packag=
e since it shows up in the package folder in
<span style=3D"font-family:Consolas">build-wayland/tmp/work/cl_som_imx8-pok=
y-linux/kernel-module-marvell-bt8977/1.0-r0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also attached the bitbake recipe for this mod=
ule but it does not seem to set the version for this anywhere.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone have an idea of what might be causing th=
is or where I should continue investigating this failure?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:black">Kevin La=
nnen</span></b><span style=3D"font-size:12.0pt;color:black"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
9.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:black">Embedded Sy=
stems Engineer<br>
<br>
Patroness, LLC</span><span style=3D"font-size:12.0pt;color:black"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><i><span style=3D"font=
-size:9.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:black">Prote=
ct Fiercely, Live Freely.</span></i></b><span style=3D"font-size:9.0pt;font=
-family:&quot;Helvetica&quot;,sans-serif;color:black"><br>
</span><span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,san=
s-serif;color:black"><a href=3D"mailto:jered@patroness.com" target=3D"_blan=
k"><span style=3D"font-size:9.0pt;font-family:&quot;Helvetica&quot;,sans-se=
rif;color:blue">kevin@patroness.com</span></a></span><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:black"><br>
<br>
</span><span style=3D"font-size:12.0pt;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_--

--_005_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_
Content-Type: application/octet-stream; name="run.do_rootfs.25346"
Content-Description: run.do_rootfs.25346
Content-Disposition: attachment; filename="run.do_rootfs.25346"; size=3524;
	creation-date="Mon, 07 Jan 2019 22:49:24 GMT";
	modification-date="Mon, 07 Jan 2019 22:42:00 GMT"
Content-Transfer-Encoding: base64

ZGVmIGRvX3Jvb3RmcyhkKToKICAgIGZyb20gb2Uucm9vdGZzIGltcG9ydCBjcmVhdGVfcm9vdGZz
CiAgICBmcm9tIG9lLm1hbmlmZXN0IGltcG9ydCBjcmVhdGVfbWFuaWZlc3QKICAgIGltcG9ydCBs
b2dnaW5nCgogICAgbG9nZ2VyID0gZC5nZXRWYXIoJ0JCX1RBU0tfTE9HR0VSJywgRmFsc2UpCiAg
ICBpZiBsb2dnZXI6CiAgICAgICAgbG9nY2F0Y2hlciA9IGJiLnV0aWxzLkxvZ0NhdGNoZXIoKQog
ICAgICAgIGxvZ2dlci5hZGRIYW5kbGVyKGxvZ2NhdGNoZXIpCiAgICBlbHNlOgogICAgICAgIGxv
Z2NhdGNoZXIgPSBOb25lCgogICAgIyBOT1RFOiBpZiB5b3UgYWRkLCByZW1vdmUgb3Igc2lnbmlm
aWNhbnRseSByZWZhY3RvciB0aGUgc3RhZ2VzIG9mIHRoaXMKICAgICMgcHJvY2VzcyB0aGVuIHlv
dSBzaG91bGQgcmVjYWxjdWxhdGUgdGhlIHdlaWdodGluZ3MgaGVyZS4gVGhpcyBpcyBxdWl0ZQog
ICAgIyBlYXN5IHRvIGRvIC0ganVzdCBjaGFuZ2UgdGhlIE11bHRpU3RhZ2VQcm9ncmVzc1JlcG9y
dGVyIGxpbmUgdGVtcG9yYXJpbHkKICAgICMgdG8gcGFzcyBkZWJ1Zz1UcnVlIGFzIHRoZSBsYXN0
IHBhcmFtZXRlciBhbmQgeW91J2xsIGdldCBhIHByaW50b3V0IG9mCiAgICAjIHRoZSB3ZWlnaHRp
bmdzIGFzIHdlbGwgYXMgYSBtYXAgdG8gdGhlIGxpbmVzIHdoZXJlIG5leHRfc3RhZ2UoKSB3YXMK
ICAgICMgY2FsbGVkLiBPZiBjb3Vyc2UgdGhpcyBpc24ndCBjcml0aWNhbCwgYnV0IGl0IGhlbHBz
IHRvIGtlZXAgdGhlIHByb2dyZXNzCiAgICAjIHJlcG9ydGluZyBhY2N1cmF0ZS4KICAgIHN0YWdl
X3dlaWdodHMgPSBbMSwgMjAzLCAzNTQsIDE4NiwgNjUsIDQyMjgsIDEsIDM1MywgNDksIDMzMCwg
MzgyLCAyMywgMV0KICAgIHByb2dyZXNzX3JlcG9ydGVyID0gYmIucHJvZ3Jlc3MuTXVsdGlTdGFn
ZVByb2dyZXNzUmVwb3J0ZXIoZCwgc3RhZ2Vfd2VpZ2h0cykKICAgIHByb2dyZXNzX3JlcG9ydGVy
Lm5leHRfc3RhZ2UoKQoKICAgICMgSGFuZGxlIHBhY2thZ2UgZXhjbHVzaW9ucwogICAgZXhjbF9w
a2dzID0gZC5nZXRWYXIoIlBBQ0tBR0VfRVhDTFVERSIpLnNwbGl0KCkKICAgIGluc3RfcGtncyA9
IGQuZ2V0VmFyKCJQQUNLQUdFX0lOU1RBTEwiKS5zcGxpdCgpCiAgICBpbnN0X2F0dGVtcHRfcGtn
cyA9IGQuZ2V0VmFyKCJQQUNLQUdFX0lOU1RBTExfQVRURU1QVE9OTFkiKS5zcGxpdCgpCgogICAg
ZC5zZXRWYXIoJ1BBQ0tBR0VfSU5TVEFMTF9PUklHJywgJyAnLmpvaW4oaW5zdF9wa2dzKSkKICAg
IGQuc2V0VmFyKCdQQUNLQUdFX0lOU1RBTExfQVRURU1QVE9OTFknLCAnICcuam9pbihpbnN0X2F0
dGVtcHRfcGtncykpCgogICAgZm9yIHBrZyBpbiBleGNsX3BrZ3M6CiAgICAgICAgaWYgcGtnIGlu
IGluc3RfcGtnczoKICAgICAgICAgICAgYmIud2FybigiUGFja2FnZSAlcywgc2V0IHRvIGJlIGV4
Y2x1ZGVkLCBpcyBpbiAlcyBQQUNLQUdFX0lOU1RBTEwgKCVzKS4gIEl0IHdpbGwgYmUgcmVtb3Zl
ZCBmcm9tIHRoZSBsaXN0LiIgJSAocGtnLCBkLmdldFZhcignUE4nKSwgaW5zdF9wa2dzKSkKICAg
ICAgICAgICAgaW5zdF9wa2dzLnJlbW92ZShwa2cpCgogICAgICAgIGlmIHBrZyBpbiBpbnN0X2F0
dGVtcHRfcGtnczoKICAgICAgICAgICAgYmIud2FybigiUGFja2FnZSAlcywgc2V0IHRvIGJlIGV4
Y2x1ZGVkLCBpcyBpbiAlcyBQQUNLQUdFX0lOU1RBTExfQVRURU1QVE9OTFkgKCVzKS4gIEl0IHdp
bGwgYmUgcmVtb3ZlZCBmcm9tIHRoZSBsaXN0LiIgJSAocGtnLCBkLmdldFZhcignUE4nKSwgaW5z
dF9wa2dzKSkKICAgICAgICAgICAgaW5zdF9hdHRlbXB0X3BrZ3MucmVtb3ZlKHBrZykKCiAgICBk
LnNldFZhcigiUEFDS0FHRV9JTlNUQUxMIiwgJyAnLmpvaW4oaW5zdF9wa2dzKSkKICAgIGQuc2V0
VmFyKCJQQUNLQUdFX0lOU1RBTExfQVRURU1QVE9OTFkiLCAnICcuam9pbihpbnN0X2F0dGVtcHRf
cGtncykpCgogICAgIyBFbnN1cmUgd2UgaGFuZGxlIHBhY2thZ2UgbmFtZSByZW1hcHBpbmcKICAg
ICMgV2UgaGF2ZSB0byBkZWxheSB0aGUgcnVudGltZV9tYXBwaW5nX3JlbmFtZSB1bnRpbCBqdXN0
IGJlZm9yZSByb290ZnMgcnVucwogICAgIyBvdGhlcndpc2UsIHRoZSBtdWx0aWxpYiByZW5hbWlu
ZyBjb3VsZCBzdGVwIGluIGFuZCBzcXVhc2ggYW55IGZpeHVwcyB0aGF0CiAgICAjIG1heSBoYXZl
IG9jY3VycmVkLgogICAgcG4gPSBkLmdldFZhcignUE4nKQogICAgcnVudGltZV9tYXBwaW5nX3Jl
bmFtZSgiUEFDS0FHRV9JTlNUQUxMIiwgcG4sIGQpCiAgICBydW50aW1lX21hcHBpbmdfcmVuYW1l
KCJQQUNLQUdFX0lOU1RBTExfQVRURU1QVE9OTFkiLCBwbiwgZCkKICAgIHJ1bnRpbWVfbWFwcGlu
Z19yZW5hbWUoIkJBRF9SRUNPTU1FTkRBVElPTlMiLCBwbiwgZCkKCiAgICAjIEdlbmVyYXRlIHRo
ZSBpbml0aWFsIG1hbmlmZXN0CiAgICBjcmVhdGVfbWFuaWZlc3QoZCkKCiAgICBwcm9ncmVzc19y
ZXBvcnRlci5uZXh0X3N0YWdlKCkKCiAgICAjIGdlbmVyYXRlIHJvb3RmcwogICAgZC5zZXRWYXJG
bGFnKCdSRVBST0RVQ0lCTEVfVElNRVNUQU1QX1JPT1RGUycsICdleHBvcnQnLCAnMScpCiAgICBj
cmVhdGVfcm9vdGZzKGQsIHByb2dyZXNzX3JlcG9ydGVyPXByb2dyZXNzX3JlcG9ydGVyLCBsb2dj
YXRjaGVyPWxvZ2NhdGNoZXIpCgogICAgcHJvZ3Jlc3NfcmVwb3J0ZXIuZmluaXNoKCkKCmRvX3Jv
b3RmcyhkKQoKZGVmIHJ1bnRpbWVfbWFwcGluZ19yZW5hbWUgKHZhcm5hbWUsIHBrZywgZCk6CiAg
ICAjYmIubm90ZSgiJXMgYmVmb3JlOiAlcyIgJSAodmFybmFtZSwgZC5nZXRWYXIodmFybmFtZSkp
KQoKICAgIG5ld19kZXBlbmRzID0ge30KICAgIGRlcHMgPSBiYi51dGlscy5leHBsb2RlX2RlcF92
ZXJzaW9uczIoZC5nZXRWYXIodmFybmFtZSkgb3IgIiIpCiAgICBmb3IgZGVwZW5kIGluIGRlcHM6
CiAgICAgICAgbmV3X2RlcGVuZCA9IGdldF9wYWNrYWdlX21hcHBpbmcoZGVwZW5kLCBwa2csIGQp
CiAgICAgICAgbmV3X2RlcGVuZHNbbmV3X2RlcGVuZF0gPSBkZXBzW2RlcGVuZF0KCiAgICBkLnNl
dFZhcih2YXJuYW1lLCBiYi51dGlscy5qb2luX2RlcHMobmV3X2RlcGVuZHMsIGNvbW1hc2VwPUZh
bHNlKSkKCiAgICAjYmIubm90ZSgiJXMgYWZ0ZXI6ICVzIiAlICh2YXJuYW1lLCBkLmdldFZhcih2
YXJuYW1lKSkpCgpkZWYgZ2V0X3BhY2thZ2VfbWFwcGluZyAocGtnLCBiYXNlcGtnLCBkKToKICAg
IGltcG9ydCBvZS5wYWNrYWdlZGF0YQoKICAgIGRhdGEgPSBvZS5wYWNrYWdlZGF0YS5yZWFkX3N1
YnBrZ2RhdGEocGtnLCBkKQogICAga2V5ID0gIlBLR18lcyIgJSBwa2cKCiAgICBpZiBrZXkgaW4g
ZGF0YToKICAgICAgICAjIEhhdmUgdG8gYXZvaWQgdW5kb2luZyB0aGUgd3JpdGVfZXh0cmFfcGtn
cyhnbG9iYWxfdmFyaWFudHMuLi4pCiAgICAgICAgaWYgYmIuZGF0YS5pbmhlcml0c19jbGFzcygn
YWxsYXJjaCcsIGQpIGFuZCBkYXRhW2tleV0gPT0gYmFzZXBrZzoKICAgICAgICAgICAgcmV0dXJu
IHBrZwogICAgICAgIHJldHVybiBkYXRhW2tleV0KCiAgICByZXR1cm4gcGtnCgo=

--_005_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_
Content-Type: application/octet-stream; name="kernel-module-marvell-bt8977.bb"
Content-Description: kernel-module-marvell-bt8977.bb
Content-Disposition: attachment; filename="kernel-module-marvell-bt8977.bb";
	size=1088; creation-date="Mon, 07 Jan 2019 22:50:59 GMT";
	modification-date="Mon, 07 Jan 2019 22:28:59 GMT"
Content-Transfer-Encoding: base64

TElDRU5TRSA9ICJHUEx2MiIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vZ3BsLTIuMC50eHQ7
bWQ1PWFiMDRhYzBmMjQ5YWYxMmJlZmNjYjk0NDQ3YzA4Yjc3IgoKaW5oZXJpdCBtb2R1bGUKClNS
Q19VUkkgPSAiZmlsZTovLy4uL1NELVdMQU4tU0QtQlQtODk3Ny1VMTYtTU1DLVcxNi42OC4xLnAx
ODAtMTYuMjYuMS5wMTgwLUM0WDE2NjEwX1YyLU1HUEwudGFyIFwKICAgICAgICAgIGZpbGU6Ly9h
ZGFwdF9NYWtlZmlsZV90b19vZS5wYXRjaCBcCiAgICAgICAgICBmaWxlOi8vLi4vZ3BsLTIuMC50
eHQgXAogICAgICAgICAgIgoKZG9fdW5wYWNrX2V4dHJhKCkgewogICAgY2QgJHtTfQogICAgZm9y
IGZpbGUgaW4gU0QtQlQtKi50Z3o7IGRvCiAgICAgICAgdGFyIC14ZiAkZmlsZQogICAgZG9uZQog
ICAgY3AgLXIgU0QtVUFQU1RBLUJULTg5NzctVTE2LU1NQy1XMTYuNjguMS5wMTgwLTE2LjI2LjEu
cDE4MC1DNFgxNjYxMF9WMi1NR1BML21idF9zcmMvKiAuCiAgICBjcCAuLi9ncGwtMi4wLnR4dCAk
e1N9LwogICAgY2QgLQp9CgpQUk9WSURFUyArPSAia2VybmVsLW1vZHVsZS1tYXJ2ZWxsLWJ0ODk3
NyIKCmFkZHRhc2sgdW5wYWNrX2V4dHJhIGFmdGVyIGRvX3VucGFjayBiZWZvcmUgZG9fcGF0Y2gK
CkZJTEVTXyR7UE59ICs9ICIvbGliL21vZHVsZXMvJHtLRVJORUxfVkVSU0lPTn0vZXh0cmEvYnQ4
OTc3LmtvIFwKIgojICAvbGliL21vZHVsZXMvJHtLRVJORUxfVkVSU0lPTn0vZXh0cmEvbG9hZCBc
CiMgIC9saWIvbW9kdWxlcy8ke0tFUk5FTF9WRVJTSU9OfS9leHRyYS9SRUFETUUgXAojICAvbGli
L21vZHVsZXMvJHtLRVJORUxfVkVSU0lPTn0vZXh0cmEvdW5sb2FkIFwKIyAgL2xpYi9tb2R1bGVz
LyR7S0VSTkVMX1ZFUlNJT059L2V4dHJhL2NvbmZpZy9idF9jYWxfZGF0YS5jb25mIFwKIyAgL2xp
Yi9tb2R1bGVzLyR7S0VSTkVMX1ZFUlNJT059L2V4dHJhL2NvbmZpZy9idF9pbml0X2NmZy5jb25m
IFwKIyAgICAgICAgICAgICAgICIKCgojS0VSTkVMX01PRFVMRV9BVVRPTE9BRCArPSAiIGJ0ODk3
NyAiCktFUk5FTF9NT0RVTEVfUFJPQkVDT05GICs9ICIgYnQ4OTc3ICIKClMgPSAiJHtXT1JLRElS
fSIKCgo=

--_005_DM5PR19MB14010AD054E9150F14C9BFF0B9890DM5PR19MB1401namp_--
