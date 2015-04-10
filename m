Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD425E009A5; Fri, 10 Apr 2015 10:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (grsandeep85[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA66E00961
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 10:33:10 -0700 (PDT)
Received: by obbry2 with SMTP id ry2so25040854obb.1
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 10:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Hekik8qH90r5IXnmLHEVcGqlE2tgduS0u/MuLuCLhjE=;
	b=KfFFpMRleR9bHoTt/likN2X2uK+qZPdJB7vqgVNc0docghTIhCGM55dgVJDPziNDBQ
	vISiBNAAgf8FyfibvTq8D3VjOH9GE1dQXuVOhiz1mM/j7sfDP1MqpeCTHeAEWXbCrMha
	CDmXMpf5wcIIwC9koex3CX+hSlcUgyisb0ALSlfzc3fDMkCS8/eIEHkk321h76Z2CAiq
	uhxSljyayClf+A6VBe/EQXN09rpw7W0PbXPkdh0TNveW7lqcjp/q7U6xyDSAGHELp0vz
	PeDz5V0fBNA/oGJKj1YehwDXqJPzO8dnJx1Kf4NAV6V2CB7pdmHuVsFcibN6A4bXQ1zm
	iSkg==
MIME-Version: 1.0
X-Received: by 10.182.252.101 with SMTP id zr5mr3380431obc.46.1428687189474;
	Fri, 10 Apr 2015 10:33:09 -0700 (PDT)
Received: by 10.76.24.199 with HTTP; Fri, 10 Apr 2015 10:33:09 -0700 (PDT)
In-Reply-To: <CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
References: <CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
Date: Fri, 10 Apr 2015 11:33:09 -0600
Message-ID: <CAKP9-ShNa-Rw-7ibSq-TXk3Cqv79c=3xRMNR-+RZzWW_7OrMSg@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Leo Tao <Leo.Tao@flextronics.com>
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
X-List-Received-Date: Fri, 10 Apr 2015 17:33:12 -0000
Content-Type: multipart/alternative; boundary=001a1134bfb06c83ae0513622856

--001a1134bfb06c83ae0513622856
Content-Type: text/plain; charset=ISO-8859-1

Hi Leo,

I walked through the QorIQ-SDK-1.7 manual section 3.4.16 for T1040RDB
doesn't say anything on the NAND flash procedure. I can see the NOR Flash
memory map and flash procedure.

I use T4240RDB with NOR flash works great.

Please contact your local Freescale FAE for more support and post the
question is Freescale forum you might get some help.


On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao <Leo.Tao@flextronics.com> wrote:

>  Hi,
>
>
>
> I built UBIFS rootfs for T1040RDB, apparently I got 2 rootfs images:
>
> 1. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi
>
> 2. fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs
>
> So I updated  Nand Flash rootfs Partition with  image
> :fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs
>
>
>
> Uboot bootcmd : bootcmd=setenv bootargs noinitrd ip=off mem=256M
> rootwait=1 rw ubi.mtd=7,4096 rootfstype=ubifs root=ubi0:rootfs
> console=$consoledev,$baudrate $othbootargs;nand read.e $loadaddr
> $kernel_addr $kernel_size;nand read.e $fdtaddr $fdt_addr $fdt_size;bootm
> $loadaddr - $fdtaddr
>
>
>
> My question is
>
> 1.       which image should be flashed to Nand, xxx.ubi or xxx.ubifs?
>
> 2.       what does the error blow mean?
>
>
>
> Built uboot and kernel to support ubifs and reset  T1040RDB, but I got
> error blow:
>
>
>
> Key type dns_resolver registered
>
> UBI: attaching mtd7 to ubi0
>
> UBI error: validate_ec_hdr: bad VID header offset 512, expected 4096
>
> UBI error: validate_ec_hdr: bad EC header
>
> Erase counter header dump:
>
>         magic          0x55424923
>
>         version        1
>
>         ec             0
>
>         vid_hdr_offset 512
>
>         data_offset    1024
>
>         image_seq      2076921562
>
>         hdr_crc        0x951adef
>
> erase counter header hexdump:
>
> CPU: 2 PID: 1 Comm: swapper/0 Not tainted
> 3.12.19-rt30-QorIQ-SDK-V1.7+g6619b8b #6
>
> Call Trace:
>
> [c9081cd0] [c0006f50] show_stack+0x40/0x150 (unreliable)
>
> [c9081d10] [c06e9a20] dump_stack+0x78/0xa0
>
> [c9081d20] [c03a56ac] validate_ec_hdr+0xac/0x120
>
> [c9081d30] [c03a6104] ubi_io_read_ec_hdr+0x184/0x240
>
> [c9081d60] [c03aaf00] ubi_attach+0x180/0x14d0
>
> [c9081de0] [c039fdf8] ubi_attach_mtd_dev+0x688/0xc80
>
> [c9081e30] [c08e9348] ubi_init+0x274/0x30c
>
> [c9081e80] [c00021a8] do_one_initcall+0x158/0x1b0
>
> [c9081ef0] [c08cb8d0] kernel_init_freeable+0x134/0x1d0
>
> [c9081f20] [c0002808] kernel_init+0x18/0x170
>
> [c9081f40] [c000fe0c] ret_from_kernel_thread+0x5c/0x64
>
> UBI error: ubi_io_read_ec_hdr: validation failed for PEB 0
>
> UBI error: ubi_attach_mtd_dev: failed to attach mtd7, error -22
>
> UBI error: ubi_init: cannot attach mtd7
>
> fsl_dpa_macless: FSL DPAA MACless Ethernet driver ()
>
> fsl_dpa_generic: FSL DPAA Generic Ethernet driver ()
>
> drivers/rtc/hctosys.c: unable to open rtc device (rtc0)
>
> UBIFS error (pid 1): ubifs_mount: cannot open "ubi0:rootfs", error -19
>
> VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error -19
>
> Please append a correct "root=" boot option; here are the available
> partitions:
>
> 1f00          131072 mtdblock0  (driver?)
>
> 1f01            1536 mtdblock1  (driver?)
>
> 1f02            1024 mtdblock2  (driver?)
>
> 1f03            1024 mtdblock3  (driver?)
>
> 1f04           24576 mtdblock4  (driver?)
>
> 1f05           10240 mtdblock5  (driver?)
>
> 1f06            1024 mtdblock6  (driver?)
>
> 1f07          409600 mtdblock7  (driver?)
>
> 1f08           98304 mtdblock8  (driver?)
>
> 1f09          524288 mtdblock9  (driver?)
>
> 1f0a           65536 mtdblock10  (driver?)
>
> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(0,0)
>
> CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt30-QorIQ-SDK-V1.7+g66
>  The information contained in this message may be privileged and
> confidential. It is intended to be read only by the individual or entity to
> whom it is addressed or by their designee. If the reader of this message is
> not the intended recipient, you are on notice that any distribution of this
> message, in any form, is strictly prohibited. If you have received this
> message in error, please immediately notify the sender and delete or
> destroy any copy of this message!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Thanks & Regards,*
*Sandeep G R*

--001a1134bfb06c83ae0513622856
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:trebuche=
t ms,sans-serif;color:#073763">Hi Leo,</div><div class=3D"gmail_default" st=
yle=3D"font-family:trebuchet ms,sans-serif;color:#073763"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#0=
73763">I walked through the QorIQ-SDK-1.7 manual section 3.4.16 for T1040RD=
B doesn&#39;t say anything on the NAND flash procedure. I can see the NOR F=
lash memory map and flash procedure.</div><div class=3D"gmail_default" styl=
e=3D"font-family:trebuchet ms,sans-serif;color:#073763"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#073=
763">I use T4240RDB with NOR flash works great.</div><div class=3D"gmail_de=
fault" style=3D"font-family:trebuchet ms,sans-serif;color:#073763"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif=
;color:#073763">Please contact your local Freescale FAE for more support an=
d post the question is Freescale forum you might get some help.</div><div c=
lass=3D"gmail_default" style=3D"font-family:trebuchet ms,sans-serif;color:#=
073763"><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:Leo.Tao@flextronics.com" target=3D"_blank">Leo.Tao@flextronic=
s.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">I built UBIFS rootfs for T1040RDB, apparently I got =
2 rootfs images:<u></u><u></u></p>
<p class=3D"MsoNormal">1. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi=
<u></u><u></u></p>
<p class=3D"MsoNormal">2. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi=
fs<u></u><u></u></p>
<p class=3D"MsoNormal">So I updated =A0Nand Flash rootfs Partition with =A0=
image :fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Uboot bootcmd : bootcmd=3Dsetenv bootargs noinitrd i=
p=3Doff mem=3D256M rootwait=3D1 rw ubi.mtd=3D7,4096 rootfstype=3Dubifs root=
=3Dubi0:rootfs console=3D$consoledev,$baudrate $othbootargs;nand read.e $lo=
adaddr $kernel_addr $kernel_size;nand read.e $fdtaddr
 $fdt_addr $fdt_size;bootm $loadaddr - $fdtaddr<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">My question is<u></u><u></u></p>
<p><u></u><span>1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=A0=A0=A0=A0=A0=A0
</span></span><u></u>which image should be flashed to Nand, xxx.ubi or xxx.=
ubifs?<u></u><u></u></p>
<p><u></u><span>2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=A0=A0=A0=A0=A0=A0
</span></span><u></u>what does the error blow mean?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Built uboot and kernel to support ubifs and reset=A0=
 T1040RDB, but I got error blow:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Key type dns_resolver registered<u></u><u></u></p>
<p class=3D"MsoNormal">UBI: attaching mtd7 to ubi0<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: validate_ec_hdr: bad VID header offset 51=
2, expected 4096<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: validate_ec_hdr: bad EC header<u></u><u><=
/u></p>
<p class=3D"MsoNormal">Erase counter header dump:<u></u><u></u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 magic=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 0x55424923<u></u><u></u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 version=A0=A0=A0=A0=A0=A0=A0 1=
<u></u><u></u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 ec=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 0<u></u><u></u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 vid_hdr_offset 512<u></u><u></=
u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 data_offset=A0=A0=A0 1024<u></=
u><u></u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 image_seq=A0=A0=A0=A0=A0 <a hr=
ef=3D"tel:2076921562" value=3D"+12076921562" target=3D"_blank">2076921562</=
a><u></u><u></u></p>
<p class=3D"MsoNormal">=A0=A0=A0=A0=A0=A0=A0 hdr_crc=A0=A0=A0=A0=A0=A0=A0 0=
x951adef<u></u><u></u></p>
<p class=3D"MsoNormal">erase counter header hexdump:<u></u><u></u></p>
<p class=3D"MsoNormal">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt=
30-QorIQ-SDK-V1.7+g6619b8b #6<u></u><u></u></p>
<p class=3D"MsoNormal">Call Trace:<u></u><u></u></p>
<p class=3D"MsoNormal">[c9081cd0] [c0006f50] show_stack+0x40/0x150 (unrelia=
ble)<u></u><u></u></p>
<p class=3D"MsoNormal">[c9081d10] [c06e9a20] dump_stack+0x78/0xa0<u></u><u>=
</u></p>
<p class=3D"MsoNormal">[c9081d20] [c03a56ac] validate_ec_hdr+0xac/0x120<u><=
/u><u></u></p>
<p class=3D"MsoNormal">[c9081d30] [c03a6104] ubi_io_read_ec_hdr+0x184/0x240=
<u></u><u></u></p>
<p class=3D"MsoNormal">[c9081d60] [c03aaf00] ubi_attach+0x180/0x14d0<u></u>=
<u></u></p>
<p class=3D"MsoNormal">[c9081de0] [c039fdf8] ubi_attach_mtd_dev+0x688/0xc80=
<u></u><u></u></p>
<p class=3D"MsoNormal">[c9081e30] [c08e9348] ubi_init+0x274/0x30c<u></u><u>=
</u></p>
<p class=3D"MsoNormal">[c9081e80] [c00021a8] do_one_initcall+0x158/0x1b0<u>=
</u><u></u></p>
<p class=3D"MsoNormal">[c9081ef0] [c08cb8d0] kernel_init_freeable+0x134/0x1=
d0<u></u><u></u></p>
<p class=3D"MsoNormal">[c9081f20] [c0002808] kernel_init+0x18/0x170<u></u><=
u></u></p>
<p class=3D"MsoNormal">[c9081f40] [c000fe0c] ret_from_kernel_thread+0x5c/0x=
64<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: ubi_io_read_ec_hdr: validation failed for=
 PEB 0<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: ubi_attach_mtd_dev: failed to attach mtd7=
, error -22<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: ubi_init: cannot attach mtd7<u></u><u></u=
></p>
<p class=3D"MsoNormal">fsl_dpa_macless: FSL DPAA MACless Ethernet driver ()=
<u></u><u></u></p>
<p class=3D"MsoNormal">fsl_dpa_generic: FSL DPAA Generic Ethernet driver ()=
<u></u><u></u></p>
<p class=3D"MsoNormal">drivers/rtc/hctosys.c: unable to open rtc device (rt=
c0)<u></u><u></u></p>
<p class=3D"MsoNormal">UBIFS error (pid 1): ubifs_mount: cannot open &quot;=
ubi0:rootfs&quot;, error -19<u></u><u></u></p>
<p class=3D"MsoNormal">VFS: Cannot open root device &quot;ubi0:rootfs&quot;=
 or unknown-block(0,0): error -19<u></u><u></u></p>
<p class=3D"MsoNormal">Please append a correct &quot;root=3D&quot; boot opt=
ion; here are the available partitions:<u></u><u></u></p>
<p class=3D"MsoNormal">1f00=A0=A0=A0=A0=A0=A0=A0=A0=A0 131072 mtdblock0=A0 =
(driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f01=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1536 mtdblock1=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f02=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1024 mtdblock2=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f03=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1024 mtdblock3=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f04=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 24576 mtdblock4=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f05=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 10240 mtdblock5=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f06=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1024 mtdblock6=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f07=A0=A0=A0=A0=A0=A0=A0=A0=A0 409600 mtdblock7=A0 =
(driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f08=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 98304 mtdblock8=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f09=A0=A0=A0=A0=A0=A0=A0=A0=A0 524288 mtdblock9=A0 =
(driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f0a=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 65536 mtdblock10=
=A0 (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">Kernel panic - not syncing: VFS: Unable to mount roo=
t fs on unknown-block(0,0)<u></u><u></u></p>
<p class=3D"MsoNormal">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt=
30-QorIQ-SDK-V1.7+g66<u></u><u></u></p>
</div>
The information contained in this message may be privileged and confidentia=
l. It is intended to be read only by the individual or entity to whom it is=
 addressed or by their designee. If the reader of this message is not the i=
ntended recipient, you are on notice
 that any distribution of this message, in any form, is strictly prohibited=
. If you have received this message in error, please immediately notify the=
 sender and delete or destroy any copy of this message!
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"trebuchet ms, sans-se=
rif" color=3D"#073763"><b>Thanks &amp; Regards,</b></font><div><font face=
=3D"trebuchet ms, sans-serif" color=3D"#073763"><b>Sandeep G R</b></font><b=
r><br></div></div></div>
</div>

--001a1134bfb06c83ae0513622856--
