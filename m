Return-Path: <Leo.Tao@flextronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22936E00993; Fri, 10 Apr 2015 11:41:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1872 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Apr 2015 11:41:48 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0111.outbound.protection.outlook.com [207.46.100.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF51E009B4
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 11:41:48 -0700 (PDT)
Received: from CO2PR0801MB679.namprd08.prod.outlook.com (10.141.248.12) by
	CO2PR0801MB680.namprd08.prod.outlook.com (10.141.248.13) with Microsoft
	SMTP Server (TLS) id 15.1.136.25; Fri, 10 Apr 2015 18:41:46 +0000
Received: from CO2PR0801MB679.namprd08.prod.outlook.com ([10.141.248.12]) by
	CO2PR0801MB679.namprd08.prod.outlook.com ([10.141.248.12]) with mapi id
	15.01.0136.014; Fri, 10 Apr 2015 18:41:46 +0000
From: Leo Tao <Leo.Tao@flextronics.com>
To: Sandeep G.R <grsandeep85@gmail.com>
Thread-Topic: [yocto] Freescale T1040RDB Failed to mount UBIFS
Thread-Index: AdBzraKm14/Gl8jFT1ihJDnewx1eIwABsaOAAAEsz8AAAPBngAAAIygQ
Date: Fri, 10 Apr 2015 18:41:46 +0000
Message-ID: <CO2PR0801MB67958D90C7D80310645B6DEEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
References: <CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
	<CAKP9-ShNa-Rw-7ibSq-TXk3Cqv79c=3xRMNR-+RZzWW_7OrMSg@mail.gmail.com>
	<CO2PR0801MB679111DB731916FD334AD70EEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
	<CAKP9-Siq-u_qh_EFchXmQVERi2kbgbpBX+tW2SV+20zB6+fQCw@mail.gmail.com>
In-Reply-To: <CAKP9-Siq-u_qh_EFchXmQVERi2kbgbpBX+tW2SV+20zB6+fQCw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [158.116.144.29]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CO2PR0801MB680;
x-microsoft-antispam-prvs: <CO2PR0801MB6806BF146BDFCC74C005D3EEEFA0@CO2PR0801MB680.namprd08.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(377454003)(24454002)(110136001)(93886004)(19617315012)(86362001)(46102003)(16236675004)(19625215002)(33656002)(62966003)(50986999)(19580395003)(19580405001)(76176999)(66066001)(76576001)(1411001)(87936001)(2656002)(19300405004)(15975445007)(102836002)(575784001)(99286002)(74316001)(54356999)(77156002)(92566002)(77096005)(2950100001)(5890100001)(122556002)(2900100001)(21314002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR0801MB680;
	H:CO2PR0801MB679.namprd08.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:CO2PR0801MB680; BCL:0;
	PCL:0; RULEID:; SRVR:CO2PR0801MB680; 
x-forefront-prvs: 054231DC40
MIME-Version: 1.0
X-OriginatorOrg: flextronics.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2015 18:41:46.2149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f0e69e0-eb38-4eb2-b4ee-52919719d31e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR0801MB680
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Freescale T1040RDB Failed to mount UBIFS
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
X-List-Received-Date: Fri, 10 Apr 2015 18:41:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO2PR0801MB67958D90C7D80310645B6DEEEFA0CO2PR0801MB679na_"

--_000_CO2PR0801MB67958D90C7D80310645B6DEEEFA0CO2PR0801MB679na_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi  Sandeep,
From the log file,  I can see you are booting from Nor Flash and rootfs is =
mount as Ext2.
I had no problem to boot  this way.
I am trying to boot form nand and mount rootfs  as UBIFS. That's the reason=
 I raised this request.
Can you forward my original request to  your expert who is familiar with us=
ing UBIFS?

Thanks
Leo

From: Sandeep G.R [mailto:grsandeep85@gmail.com]
Sent: Friday, April 10, 2015 2:34 PM
To: Leo Tao
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Freescale T1040RDB Failed to mount UBIFS

Attached the boot log for T4240RDB.

On Fri, Apr 10, 2015 at 12:10 PM, Leo Tao <Leo.Tao@flextronics.com<mailto:L=
eo.Tao@flextronics.com>> wrote:
Hi Sandeep,

Thank you for your quick response.
It's true SDK1.7 doesn't mention  using UBIFS with Nand Flash. But we decid=
e to use the Nand Flash on Board.
Can you send me your bootcmd  and boot log running T4240RDB please?

Thanks
Leo


From: Sandeep G.R [mailto:grsandeep85@gmail.com<mailto:grsandeep85@gmail.co=
m>]
Sent: Friday, April 10, 2015 1:33 PM
To: Leo Tao
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Freescale T1040RDB Failed to mount UBIFS

Hi Leo,

I walked through the QorIQ-SDK-1.7 manual section 3.4.16 for T1040RDB doesn=
't say anything on the NAND flash procedure. I can see the NOR Flash memory=
 map and flash procedure.

I use T4240RDB with NOR flash works great.

Please contact your local Freescale FAE for more support and post the quest=
ion is Freescale forum you might get some help.


On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao <Leo.Tao@flextronics.com<mailto:L=
eo.Tao@flextronics.com>

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
        image_seq      2076921562<tel:2076921562>
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

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--
Thanks & Regards,
Sandeep G R
The information contained in this message may be privileged and confidentia=
l. It is intended to be read only by the individual or entity to whom it is=
 addressed or by their designee. If the reader of this message is not the i=
ntended recipient, you are on notice that any distribution of this message,=
 in any form, is strictly prohibited. If you have received this message in =
error, please immediately notify the sender and delete or destroy any copy =
of this message!



--
Thanks & Regards,
Sandeep G R
The information contained in this message may be privileged and confidentia=
l. It is intended to be read only by the individual or entity to whom it is=
 addressed or by their designee. If the reader of this message is not the i=
ntended recipient, you are on notice that any distribution of this message,=
 in any form, is strictly prohibited. If you have received this message in =
error, please immediately notify the sender and delete or destroy any copy =
of this message!

--_000_CO2PR0801MB67958D90C7D80310645B6DEEEFA0CO2PR0801MB679na_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi&nbsp; Sandeep,<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">From the log file,&nbsp; =
I can see you are booting from Nor Flash and rootfs is mount as Ext2.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I had no problem to boot&=
nbsp; this way.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am trying to boot form =
nand and mount rootfs&nbsp; as UBIFS. That&#8217;s the reason I raised this=
 request.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Can you forward my origin=
al request to&nbsp; your expert who is familiar with using UBIFS?<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Leo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sandeep =
G.R [mailto:grsandeep85@gmail.com]
<br>
<b>Sent:</b> Friday, April 10, 2015 2:34 PM<br>
<b>To:</b> Leo Tao<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Freescale T1040RDB Failed to mount UBIFS<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">Attached the boot log for T4240RDB.<o=
:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Fri, Apr 10, 2015 at 12:10 PM, Leo Tao &lt;<a hre=
f=3D"mailto:Leo.Tao@flextronics.com" target=3D"_blank">Leo.Tao@flextronics.=
com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi Sandeep,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Thank you for your quick response.</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">It&#8217;s true SDK1.7 doesn&#8217;t me=
ntion&nbsp; using UBIFS with Nand Flash. But we decide to use the Nand Flas=
h
 on Board.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Can you send me your bootcmd&nbsp; and =
boot log running T4240RDB please?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Thanks</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Leo</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sandeep G.R [mailto:<a=
 href=3D"mailto:grsandeep85@gmail.com" target=3D"_blank">grsandeep85@gmail.=
com</a>]
<br>
<b>Sent:</b> Friday, April 10, 2015 1:33 PM<br>
<b>To:</b> Leo Tao<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Freescale T1040RDB Failed to mount UBIFS</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">Hi Leo,</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">I walked through the QorIQ-SDK-1.7 manual section 3=
.4.16 for T1040RDB doesn't say anything on the NAND flash
 procedure. I can see the NOR Flash memory map and flash procedure.</span><=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">I use T4240RDB with NOR flash works great.</span><o=
:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">Please contact your local Freescale FAE for more su=
pport and post the question is Freescale forum you might get
 some help.</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-ser=
if&quot;;color:#073763">&nbsp;</span><o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao &lt;<a href=3D"mailto:Le=
o.Tao@flextronics.com" target=3D"_blank">Leo.Tao@flextronics.com</a><o:p></=
o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I built UBIFS rootfs for T1040RDB, apparently I got 2 rootfs image=
s:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">2. fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs<o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">So I updated &nbsp;Nand Flash rootfs Partition with &nbsp;image :f=
sl-image-core-t1040rdb-20150408204106.rootfs.ubifs<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Uboot bootcmd : bootcmd=3Dsetenv bootargs noinitrd ip=3Doff mem=3D=
256M rootwait=3D1 rw ubi.mtd=3D7,4096 rootfstype=3Dubifs root=3Dubi0:rootfs=
 console=3D$consoledev,$baudrate $othbootargs;nand read.e
 $loadaddr $kernel_addr $kernel_size;nand read.e $fdtaddr $fdt_addr $fdt_si=
ze;bootm $loadaddr - $fdtaddr<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">My question is<o:p></o:p></p>
<p>1.<span style=3D"font-size:7.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span>which image should be flashed to Nand, xxx.ubi or xxx.ubifs?<o:p></o:=
p></p>
<p>2.<span style=3D"font-size:7.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span>what does the error blow mean?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Built uboot and kernel to support ubifs and reset&nbsp; T1040RDB, =
but I got error blow:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Key type dns_resolver registered<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBI: attaching mtd7 to ubi0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBI error: validate_ec_hdr: bad VID header offset 512, expected 40=
96<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBI error: validate_ec_hdr: bad EC header<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Erase counter header dump:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; magic&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x55424923<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; version&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 1<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ec&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vid_hdr_offset 512<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data_offset&nbsp;&nbsp;=
&nbsp; 1024<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; image_seq&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;
<a href=3D"tel:2076921562" target=3D"_blank">2076921562</a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdr_crc&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 0x951adef<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">erase counter header hexdump:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt30-QorIQ-SDK-V=
1.7&#43;g6619b8b #6<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Call Trace:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081cd0] [c0006f50] show_stack&#43;0x40/0x150 (unreliable)<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081d10] [c06e9a20] dump_stack&#43;0x78/0xa0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081d20] [c03a56ac] validate_ec_hdr&#43;0xac/0x120<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081d30] [c03a6104] ubi_io_read_ec_hdr&#43;0x184/0x240<o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081d60] [c03aaf00] ubi_attach&#43;0x180/0x14d0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081de0] [c039fdf8] ubi_attach_mtd_dev&#43;0x688/0xc80<o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081e30] [c08e9348] ubi_init&#43;0x274/0x30c<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081e80] [c00021a8] do_one_initcall&#43;0x158/0x1b0<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081ef0] [c08cb8d0] kernel_init_freeable&#43;0x134/0x1d0<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081f20] [c0002808] kernel_init&#43;0x18/0x170<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[c9081f40] [c000fe0c] ret_from_kernel_thread&#43;0x5c/0x64<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBI error: ubi_io_read_ec_hdr: validation failed for PEB 0<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBI error: ubi_attach_mtd_dev: failed to attach mtd7, error -22<o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBI error: ubi_init: cannot attach mtd7<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">fsl_dpa_macless: FSL DPAA MACless Ethernet driver ()<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">fsl_dpa_generic: FSL DPAA Generic Ethernet driver ()<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">drivers/rtc/hctosys.c: unable to open rtc device (rtc0)<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">UBIFS error (pid 1): ubifs_mount: cannot open &quot;ubi0:rootfs&qu=
ot;, error -19<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">VFS: Cannot open root device &quot;ubi0:rootfs&quot; or unknown-bl=
ock(0,0): error -19<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Please append a correct &quot;root=3D&quot; boot option; here are =
the available partitions:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 131072 =
mtdblock0&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 1536 mtdblock1&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 1024 mtdblock2&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f03&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 1024 mtdblock3&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2=
4576 mtdblock4&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f05&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1=
0240 mtdblock5&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f06&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 1024 mtdblock6&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f07&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 409600 =
mtdblock7&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9=
8304 mtdblock8&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 524288 =
mtdblock9&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1f0a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6=
5536 mtdblock10&nbsp; (driver?)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Kernel panic - not syncing: VFS: Unable to mount root fs on unknow=
n-block(0,0)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt30-QorIQ-SDK-V=
1.7&#43;g66<o:p></o:p></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The information contained in this message may be privileged and co=
nfidential. It is intended to be read only by the individual or entity to w=
hom it is addressed or by their designee.
 If the reader of this message is not the intended recipient, you are on no=
tice that any distribution of this message, in any form, is strictly prohib=
ited. If you have received this message in error, please immediately notify=
 the sender and delete or destroy
 any copy of this message! <o:p></o:p></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">--
<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-=
serif&quot;;color:#073763">Thanks &amp; Regards,</span></b><o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><b><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&=
quot;;color:#073763">Sandeep G R</span></b><o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">The information contained in this message may be pri=
vileged and confidential. It is intended to be read only by the individual =
or entity to whom it is addressed or by their designee. If the reader of th=
is message is not the intended recipient,
 you are on notice that any distribution of this message, in any form, is s=
trictly prohibited. If you have received this message in error, please imme=
diately notify the sender and delete or destroy any copy of this message!
<o:p></o:p></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Trebuchet MS&quo=
t;,&quot;sans-serif&quot;;color:#073763">Thanks &amp; Regards,</span></b><o=
:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#073763">San=
deep G R</span></b><o:p></o:p></p>
</div>
</div>
</div>
</div>
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

--_000_CO2PR0801MB67958D90C7D80310645B6DEEEFA0CO2PR0801MB679na_--
