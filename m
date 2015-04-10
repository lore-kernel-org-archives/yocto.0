Return-Path: <Leo.Tao@flextronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20D4BE009A1; Fri, 10 Apr 2015 10:09:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 949 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Apr 2015 10:09:43 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0109.outbound.protection.outlook.com [157.56.110.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C6FE00961
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 10:09:43 -0700 (PDT)
Received: from CO2PR0801MB679.namprd08.prod.outlook.com (10.141.248.12) by
	CO2PR0801MB679.namprd08.prod.outlook.com (10.141.248.12) with Microsoft
	SMTP Server (TLS) id 15.1.136.25; Fri, 10 Apr 2015 16:53:53 +0000
Received: from CO2PR0801MB679.namprd08.prod.outlook.com ([10.141.248.12]) by
	CO2PR0801MB679.namprd08.prod.outlook.com ([10.141.248.12]) with mapi id
	15.01.0136.014; Fri, 10 Apr 2015 16:53:53 +0000
From: Leo Tao <Leo.Tao@flextronics.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Freescale T1040RDB Failed to mount UBIFS
Thread-Index: AdBzraKm14/Gl8jFT1ihJDnewx1eIw==
Date: Fri, 10 Apr 2015 16:53:52 +0000
Message-ID: <CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [158.116.144.29]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CO2PR0801MB679;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(87936001)(2656002)(16236675004)(19625215002)(54356999)(5890100001)(2501003)(77096005)(110136001)(229853001)(107886001)(2351001)(77156002)(15975445007)(102836002)(2900100001)(450100001)(62966003)(92566002)(76576001)(33656002)(66066001)(50986999)(74316001)(19300405004)(19580395003)(575784001)(86362001)(99286002)(122556002)(46102003)(21314002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR0801MB679;
	H:CO2PR0801MB679.namprd08.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <CO2PR0801MB679E94D90C5D61FE73B9BE7EEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:CO2PR0801MB679; BCL:0;
	PCL:0; RULEID:; SRVR:CO2PR0801MB679; 
x-forefront-prvs: 054231DC40
MIME-Version: 1.0
X-OriginatorOrg: flextronics.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2015 16:53:52.6943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f0e69e0-eb38-4eb2-b4ee-52919719d31e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR0801MB679
Subject: Freescale T1040RDB Failed to mount UBIFS
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
X-List-Received-Date: Fri, 10 Apr 2015 17:09:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0CO2PR0801MB679na_"

--_000_CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0CO2PR0801MB679na_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I built UBIFS rootfs for T1040RDB, apparently I got 2 rootfs images:
1. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi
2. fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs
So I updated  Nand Flash rootfs Partition with  image :fsl-image-core-t1040=
rdb-20150408204106.rootfs.ubifs

Uboot bootcmd : bootcmd=3Dsetenv bootargs noinitrd ip=3Doff mem=3D256M root=
wait=3D1 rw ubi.mtd=3D7,4096 rootfstype=3Dubifs root=3Dubi0:rootfs console=
=3D$consoledev,$baudrate $othbootargs;nand read.e $loadaddr $kernel_addr $k=
ernel_size;nand read.e $fdtaddr $fdt_addr $fdt_size;bootm $loadaddr - $fdta=
ddr

My question is

1.       which image should be flashed to Nand, xxx.ubi or xxx.ubifs?

2.       what does the error blow mean?

Built uboot and kernel to support ubifs and reset  T1040RDB, but I got erro=
r blow:

Key type dns_resolver registered
UBI: attaching mtd7 to ubi0
UBI error: validate_ec_hdr: bad VID header offset 512, expected 4096
UBI error: validate_ec_hdr: bad EC header
Erase counter header dump:
        magic          0x55424923
        version        1
        ec             0
        vid_hdr_offset 512
        data_offset    1024
        image_seq      2076921562
        hdr_crc        0x951adef
erase counter header hexdump:
CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt30-QorIQ-SDK-V1.7+g6619=
b8b #6
Call Trace:
[c9081cd0] [c0006f50] show_stack+0x40/0x150 (unreliable)
[c9081d10] [c06e9a20] dump_stack+0x78/0xa0
[c9081d20] [c03a56ac] validate_ec_hdr+0xac/0x120
[c9081d30] [c03a6104] ubi_io_read_ec_hdr+0x184/0x240
[c9081d60] [c03aaf00] ubi_attach+0x180/0x14d0
[c9081de0] [c039fdf8] ubi_attach_mtd_dev+0x688/0xc80
[c9081e30] [c08e9348] ubi_init+0x274/0x30c
[c9081e80] [c00021a8] do_one_initcall+0x158/0x1b0
[c9081ef0] [c08cb8d0] kernel_init_freeable+0x134/0x1d0
[c9081f20] [c0002808] kernel_init+0x18/0x170
[c9081f40] [c000fe0c] ret_from_kernel_thread+0x5c/0x64
UBI error: ubi_io_read_ec_hdr: validation failed for PEB 0
UBI error: ubi_attach_mtd_dev: failed to attach mtd7, error -22
UBI error: ubi_init: cannot attach mtd7
fsl_dpa_macless: FSL DPAA MACless Ethernet driver ()
fsl_dpa_generic: FSL DPAA Generic Ethernet driver ()
drivers/rtc/hctosys.c: unable to open rtc device (rtc0)
UBIFS error (pid 1): ubifs_mount: cannot open "ubi0:rootfs", error -19
VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error -19
Please append a correct "root=3D" boot option; here are the available parti=
tions:
1f00          131072 mtdblock0  (driver?)
1f01            1536 mtdblock1  (driver?)
1f02            1024 mtdblock2  (driver?)
1f03            1024 mtdblock3  (driver?)
1f04           24576 mtdblock4  (driver?)
1f05           10240 mtdblock5  (driver?)
1f06            1024 mtdblock6  (driver?)
1f07          409600 mtdblock7  (driver?)
1f08           98304 mtdblock8  (driver?)
1f09          524288 mtdblock9  (driver?)
1f0a           65536 mtdblock10  (driver?)
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0=
,0)
CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt30-QorIQ-SDK-V1.7+g66
The information contained in this message may be privileged and confidentia=
l. It is intended to be read only by the individual or entity to whom it is=
 addressed or by their designee. If the reader of this message is not the i=
ntended recipient, you are on notice that any distribution of this message,=
 in any form, is strictly prohibited. If you have received this message in =
error, please immediately notify the sender and delete or destroy any copy =
of this message!

--_000_CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0CO2PR0801MB679na_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
/* List Definitions */
@list l0
	{mso-list-id:539558177;
	mso-list-type:hybrid;
	mso-list-template-ids:1377213272 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I built UBIFS rootfs for T1040RDB, apparently I got =
2 rootfs images:<o:p></o:p></p>
<p class=3D"MsoNormal">1. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi=
<o:p></o:p></p>
<p class=3D"MsoNormal">2. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi=
fs<o:p></o:p></p>
<p class=3D"MsoNormal">So I updated &nbsp;Nand Flash rootfs Partition with =
&nbsp;image :fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Uboot bootcmd : bootcmd=3Dsetenv bootargs noinitrd i=
p=3Doff mem=3D256M rootwait=3D1 rw ubi.mtd=3D7,4096 rootfstype=3Dubifs root=
=3Dubi0:rootfs console=3D$consoledev,$baudrate $othbootargs;nand read.e $lo=
adaddr $kernel_addr $kernel_size;nand read.e $fdtaddr
 $fdt_addr $fdt_size;bootm $loadaddr - $fdtaddr<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My question is<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>which image should be flashed to Nand, xxx.ubi or x=
xx.ubifs?<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>what does the error blow mean?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Built uboot and kernel to support ubifs and reset&nb=
sp; T1040RDB, but I got error blow:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Key type dns_resolver registered<o:p></o:p></p>
<p class=3D"MsoNormal">UBI: attaching mtd7 to ubi0<o:p></o:p></p>
<p class=3D"MsoNormal">UBI error: validate_ec_hdr: bad VID header offset 51=
2, expected 4096<o:p></o:p></p>
<p class=3D"MsoNormal">UBI error: validate_ec_hdr: bad EC header<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Erase counter header dump:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; magic&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x55424923<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; version&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ec&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vid_hdr_o=
ffset 512<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data_offs=
et&nbsp;&nbsp;&nbsp; 1024<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; image_seq=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2076921562<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdr_crc&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x951adef<o:p></o:p></p>
<p class=3D"MsoNormal">erase counter header hexdump:<o:p></o:p></p>
<p class=3D"MsoNormal">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt=
30-QorIQ-SDK-V1.7&#43;g6619b8b #6<o:p></o:p></p>
<p class=3D"MsoNormal">Call Trace:<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081cd0] [c0006f50] show_stack&#43;0x40/0x150 (unr=
eliable)<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081d10] [c06e9a20] dump_stack&#43;0x78/0xa0<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[c9081d20] [c03a56ac] validate_ec_hdr&#43;0xac/0x120=
<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081d30] [c03a6104] ubi_io_read_ec_hdr&#43;0x184/0=
x240<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081d60] [c03aaf00] ubi_attach&#43;0x180/0x14d0<o:=
p></o:p></p>
<p class=3D"MsoNormal">[c9081de0] [c039fdf8] ubi_attach_mtd_dev&#43;0x688/0=
xc80<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081e30] [c08e9348] ubi_init&#43;0x274/0x30c<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[c9081e80] [c00021a8] do_one_initcall&#43;0x158/0x1b=
0<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081ef0] [c08cb8d0] kernel_init_freeable&#43;0x134=
/0x1d0<o:p></o:p></p>
<p class=3D"MsoNormal">[c9081f20] [c0002808] kernel_init&#43;0x18/0x170<o:p=
></o:p></p>
<p class=3D"MsoNormal">[c9081f40] [c000fe0c] ret_from_kernel_thread&#43;0x5=
c/0x64<o:p></o:p></p>
<p class=3D"MsoNormal">UBI error: ubi_io_read_ec_hdr: validation failed for=
 PEB 0<o:p></o:p></p>
<p class=3D"MsoNormal">UBI error: ubi_attach_mtd_dev: failed to attach mtd7=
, error -22<o:p></o:p></p>
<p class=3D"MsoNormal">UBI error: ubi_init: cannot attach mtd7<o:p></o:p></=
p>
<p class=3D"MsoNormal">fsl_dpa_macless: FSL DPAA MACless Ethernet driver ()=
<o:p></o:p></p>
<p class=3D"MsoNormal">fsl_dpa_generic: FSL DPAA Generic Ethernet driver ()=
<o:p></o:p></p>
<p class=3D"MsoNormal">drivers/rtc/hctosys.c: unable to open rtc device (rt=
c0)<o:p></o:p></p>
<p class=3D"MsoNormal">UBIFS error (pid 1): ubifs_mount: cannot open &quot;=
ubi0:rootfs&quot;, error -19<o:p></o:p></p>
<p class=3D"MsoNormal">VFS: Cannot open root device &quot;ubi0:rootfs&quot;=
 or unknown-block(0,0): error -19<o:p></o:p></p>
<p class=3D"MsoNormal">Please append a correct &quot;root=3D&quot; boot opt=
ion; here are the available partitions:<o:p></o:p></p>
<p class=3D"MsoNormal">1f00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 131072 mtdblock0&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1536 mtdblock1&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1024 mtdblock2&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f03&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1024 mtdblock3&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 24576 mtdblock4&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f05&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 10240 mtdblock5&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f06&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1024 mtdblock6&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f07&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 409600 mtdblock7&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 98304 mtdblock8&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 524288 mtdblock9&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">1f0a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 65536 mtdblock10&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal">Kernel panic - not syncing: VFS: Unable to mount roo=
t fs on unknown-block(0,0)<o:p></o:p></p>
<p class=3D"MsoNormal">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt=
30-QorIQ-SDK-V1.7&#43;g66<o:p></o:p></p>
</div>
The information contained in this message may be privileged and confidentia=
l. It is intended to be read only by the individual or entity to whom it is=
 addressed or by their designee. If the reader of this message is not the i=
ntended recipient, you are on notice
 that any distribution of this message, in any form, is strictly prohibited=
. If you have received this message in error, please immediately notify the=
 sender and delete or destroy any copy of this message!
</body>
</html>

--_000_CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0CO2PR0801MB679na_--
