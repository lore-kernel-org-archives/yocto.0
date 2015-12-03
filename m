Return-Path: <pdemetrotion@winsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1ADBE00406; Thu,  3 Dec 2015 10:31:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1985 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Dec 2015 10:31:40 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0072.outbound.protection.outlook.com [157.56.111.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7DFEE00321
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 10:31:40 -0800 (PST)
Received: from SN1PR0101MB1485.prod.exchangelabs.com (10.163.128.147) by
	SN1PR0101MB1486.prod.exchangelabs.com (10.163.128.148) with Microsoft
	SMTP Server (TLS) id 15.1.331.20; Thu, 3 Dec 2015 17:58:33 +0000
Received: from SN1PR0101MB1485.prod.exchangelabs.com ([10.163.128.147]) by
	SN1PR0101MB1485.prod.exchangelabs.com ([10.163.128.147]) with mapi id
	15.01.0331.023; Thu, 3 Dec 2015 17:58:33 +0000
From: Paul DeMetrotion <pdemetrotion@winsystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: YOCTO: Device Tree Issue - Linux Kernel Does Not Boot
Thread-Index: AdEt9Dfrp6ISRl+JRzavQ15DUOyXhw==
Date: Thu, 3 Dec 2015 17:58:32 +0000
Message-ID: <SN1PR0101MB1485333D889CC360A2B37929BF0D0@SN1PR0101MB1485.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=pdemetrotion@winsystems.com; 
x-originating-ip: [50.84.106.250]
x-microsoft-exchange-diagnostics: 1; SN1PR0101MB1486;
	5:ia2yupn5EiqXP8mEfSgvL+QiBO1E5u8uNFh4iyjmbHzcNHkUrA5i7lae4kLCbReK1Ktrtj3Rn6X55vbFgN21/uUR0Am7dt0sgM7RuQ9ezFemZfjo9o2llKsHEpPsETpoTJwm+nGM9JQzAMh0GZ98nA==;
	24:Rjam102Hrck+WYcofFBqB0DPK6sWOvCVjw5sSDUAtpZk/uq6GM1vMo1hF9lh1r/2sTe7h026BOtyJcUqQ0bHIz7M130T1wFeVW6GAOiBl+c=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SN1PR0101MB1486;
x-microsoft-antispam-prvs: <SN1PR0101MB148672C263C5A9D53F05462BBF0D0@SN1PR0101MB1486.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(108003899814671);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(520078)(8121501046)(3002001)(10201501046);
	SRVR:SN1PR0101MB1486; BCL:0; PCL:0; RULEID:;
	SRVR:SN1PR0101MB1486; 
x-forefront-prvs: 077929D941
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(51874003)(199003)(189002)(102836003)(790700001)(87936001)(3846002)(6116002)(586003)(450100001)(92566002)(74316001)(54356999)(2501003)(1096002)(19580405001)(18717965001)(1220700001)(122556002)(5008740100001)(11100500001)(10400500002)(19580395003)(40100003)(19300405004)(5001960100002)(107886002)(81156007)(105586002)(110136002)(77096005)(2351001)(15975445007)(189998001)(106356001)(2900100001)(33656002)(50986999)(16236675004)(97736004)(19609705001)(101416001)(5002640100001)(19617315012)(66066001)(86362001)(229853001)(5003600100002)(5004730100002)(19625215002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR0101MB1486;
	H:SN1PR0101MB1485.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: winsystems.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: winsystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2015 17:58:32.7606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 499305db-9394-4200-97fb-d233902786c6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0101MB1486
Subject: YOCTO: Device Tree Issue - Linux Kernel Does Not Boot
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
X-List-Received-Date: Thu, 03 Dec 2015 18:31:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN1PR0101MB1485333D889CC360A2B37929BF0D0SN1PR0101MB1485_"

--_000_SN1PR0101MB1485333D889CC360A2B37929BF0D0SN1PR0101MB1485_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am brand new to Yocto and have an issue that I cannot resolve. I have sea=
rched through the existing documentation and archives without any luck.

We have a custom SBC based on the Freescale i.MX6Q processor that previousl=
y used LTIB to create a Linux BSP. I have been tasked with converting to Yo=
cto and have used the existing Freescale Sabre-SD as my model. I created a =
conf file for our device and located it in build-c398/sources/meta-fsl-arm-=
extra/conf/machine. Its contents are:

#@TYPE: Machine
#@NAME: i.MX6Q SBC35-C398
#@SOC: i.MX6Q
#@DESCRIPTION: Machine configuration for i.MX6Q SBC35-C398
#@MAINTAINER: Paul DeMetrotion <pdemetrotion@winsystems.com>
require conf/machine/include/imx-base.inc
require conf/machine/include/tune-cortexa9.inc
SOC_FAMILY =3D "mx6:mx6q"
KERNEL_DEVICETREE =3D "imx6q-c398.dtb"
UBOOT_CONFIG ??=3D "sd"
UBOOT_CONFIG[sd] =3D "mx6qc398_config,sdcard"
UBOOT_CONFIG[sata] =3D "mx6qc398_sata_config"
UBOOT_CONFIG[mfgtool] =3D "mx6qc398_config"
SERIAL_CONSOLE =3D "115200 ttymxc0"

I have successfully built and booted u-boot and am now attempting to boot a=
 core-image-base version of the Linux kernel. The system locks up after dis=
playing 'Starting kernel ...'. I have tracked the problem to the function e=
arly_init_dt_scan(dt). The address being passed in the dt variable does not=
 point to my device tree but instead points to a location that includes u-b=
oot parameters. When the code checks for the 0xD00DFEED signature, the code=
 fails and proceeds to the dump_machine_table infinite loop.

I created a device tree for our SBC and placed it in arch/arm/boot/dts. It =
appears to build properly and has the proper DTB signature in the first dwo=
rd. The image copied to the SD card includes the DTB file in the same parti=
tion as the uImage.

Any idea why my code does not point to my DTB data? Am I missing something =
in my recipe or configuration files?

I hope I have explained my problem adequately. Thanks in advance for any he=
lp.

Paul DeMetrotion
Software Guru
WinSystems, Inc.
(972) 571-8657
www.winsystems.com<http://www.winsystems.com/>


--_000_SN1PR0101MB1485333D889CC360A2B37929BF0D0SN1PR0101MB1485_
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am brand new to Yocto and have an issue that I can=
not resolve. I have searched through the existing documentation and archive=
s without any luck.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have a custom SBC based on the Freescale i.MX6Q p=
rocessor that previously used LTIB to create a Linux BSP. I have been taske=
d with converting to Yocto and have used the existing Freescale Sabre-SD as=
 my model. I created a conf file for
 our device and located it in build-c398/sources/meta-fsl-arm-extra/conf/ma=
chine. Its contents are:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#@TYPE: Machine<o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#@NAME: i.MX6Q SBC35-C398=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#@SOC: i.MX6Q<o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#@DESCRIPTION: Machine co=
nfiguration for i.MX6Q SBC35-C398<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#@MAINTAINER: Paul DeMetr=
otion &lt;pdemetrotion@winsystems.com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">require conf/machine/incl=
ude/imx-base.inc<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">require conf/machine/incl=
ude/tune-cortexa9.inc<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">SOC_FAMILY =3D &quot;mx6:=
mx6q&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">KERNEL_DEVICETREE =3D &qu=
ot;imx6q-c398.dtb&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">UBOOT_CONFIG ??=3D &quot;=
sd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">UBOOT_CONFIG[sd] =3D &quo=
t;mx6qc398_config,sdcard&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">UBOOT_CONFIG[sata] =3D &q=
uot;mx6qc398_sata_config&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">UBOOT_CONFIG[mfgtool] =3D=
 &quot;mx6qc398_config&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">SERIAL_CONSOLE =3D &quot;=
115200 ttymxc0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have successfully built and booted u-boot and am n=
ow attempting to boot a core-image-base version of the Linux kernel. The sy=
stem locks up after displaying &#8216;Starting kernel &#8230;&#8217;. I hav=
e tracked the problem to the function early_init_dt_scan(dt).
 The address being passed in the dt variable does not point to my device tr=
ee but instead points to a location that includes u-boot parameters. When t=
he code checks for the 0xD00DFEED signature, the code fails and proceeds to=
 the dump_machine_table infinite
 loop.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I created a device tree for our SBC and placed it in=
 arch/arm/boot/dts. It appears to build properly and has the proper DTB sig=
nature in the first dword. The image copied to the SD card includes the DTB=
 file in the same partition as the
 uImage.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any idea why my code does not point to my DTB data? =
Am I missing something in my recipe or configuration files?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I hope I have explained my problem adequately. Thank=
s in advance for any help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Paul DeMetrotion<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Software Guru<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">WinSystems, Inc. <o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">(972) 571-8657<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a href=3D"http://www.=
winsystems.com/"><span style=3D"color:blue">www.winsystems.com</span></a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN1PR0101MB1485333D889CC360A2B37929BF0D0SN1PR0101MB1485_--
