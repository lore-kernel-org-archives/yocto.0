Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52556E009BB; Fri, 10 Apr 2015 11:33:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (grsandeep85[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28287E009A1
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 11:33:42 -0700 (PDT)
Received: by obbfy7 with SMTP id fy7so26881889obb.2
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 11:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=f+oytpro/hhnuAxrBajhTYOJ3TW78Fjxks43twM/MCw=;
	b=xxcr8xVWe/2+fTvXC5b9FENmykPhaqw5G730EKnMhEMEBev+HSXa4L8i5onVpKyOj4
	KD+qG/RtZu3+HXESWO3K3SKPI+nE4TWf0vmuxlvb4NxTZ/RNoNOBPOp+97tXJ8weO0ED
	0mOsR8a+a/04cACEeEvkkZC7JLpw1UrkNufXpMlHi6z57fRYYERNIKxcBaGKlCC8Siuk
	YIZgJQl38y358bIQQu5h9T+Vkoh2jQo66wfasR6Kvz67PuoQUFYJzeLGtp4OnxFUKZKv
	VlcwowsgJRsjJH/0Lncn1I7zWa/esVwCoM+wo3iYho/tg4QOvxCzQ6hr+ih8XYBYD9Pt
	0GYg==
MIME-Version: 1.0
X-Received: by 10.182.134.169 with SMTP id pl9mr3688622obb.32.1428690822071;
	Fri, 10 Apr 2015 11:33:42 -0700 (PDT)
Received: by 10.76.24.199 with HTTP; Fri, 10 Apr 2015 11:33:41 -0700 (PDT)
In-Reply-To: <CO2PR0801MB679111DB731916FD334AD70EEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
References: <CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
	<CAKP9-ShNa-Rw-7ibSq-TXk3Cqv79c=3xRMNR-+RZzWW_7OrMSg@mail.gmail.com>
	<CO2PR0801MB679111DB731916FD334AD70EEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
Date: Fri, 10 Apr 2015 12:33:41 -0600
Message-ID: <CAKP9-Siq-u_qh_EFchXmQVERi2kbgbpBX+tW2SV+20zB6+fQCw@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Apr 2015 18:33:52 -0000
X-Groupsio-MsgNum: 24416
Content-Type: multipart/mixed; boundary=001a11c299bcf1fdd005136300d2

--001a11c299bcf1fdd005136300d2
Content-Type: multipart/alternative; boundary=001a11c299bcf1fdc905136300d0

--001a11c299bcf1fdc905136300d0
Content-Type: text/plain; charset=ISO-8859-1

Attached the boot log for T4240RDB.

On Fri, Apr 10, 2015 at 12:10 PM, Leo Tao <Leo.Tao@flextronics.com> wrote:

>  Hi Sandeep,
>
>
>
> Thank you for your quick response.
>
> It's true SDK1.7 doesn't mention  using UBIFS with Nand Flash. But we
> decide to use the Nand Flash on Board.
>
> Can you send me your bootcmd  and boot log running T4240RDB please?
>
>
>
> Thanks
>
> Leo
>
>
>
>
>
> *From:* Sandeep G.R [mailto:grsandeep85@gmail.com]
> *Sent:* Friday, April 10, 2015 1:33 PM
> *To:* Leo Tao
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Freescale T1040RDB Failed to mount UBIFS
>
>
>
> Hi Leo,
>
>
>
> I walked through the QorIQ-SDK-1.7 manual section 3.4.16 for T1040RDB
> doesn't say anything on the NAND flash procedure. I can see the NOR Flash
> memory map and flash procedure.
>
>
>
> I use T4240RDB with NOR flash works great.
>
>
>
> Please contact your local Freescale FAE for more support and post the
> question is Freescale forum you might get some help.
>
>
>
>
>
> On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao <Leo.Tao@flextronics.com
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
>
> The information contained in this message may be privileged and
> confidential. It is intended to be read only by the individual or entity to
> whom it is addressed or by their designee. If the reader of this message is
> not the intended recipient, you are on notice that any distribution of this
> message, in any form, is strictly prohibited. If you have received this
> message in error, please immediately notify the sender and delete or
> destroy any copy of this message!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>
> --
>
> *Thanks & Regards,*
>
> *Sandeep G R*
>    The information contained in this message may be privileged and
> confidential. It is intended to be read only by the individual or entity to
> whom it is addressed or by their designee. If the reader of this message is
> not the intended recipient, you are on notice that any distribution of this
> message, in any form, is strictly prohibited. If you have received this
> message in error, please immediately notify the sender and delete or
> destroy any copy of this message!
>



-- 
*Thanks & Regards,*
*Sandeep G R*

--001a11c299bcf1fdc905136300d0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:trebuche=
t ms,sans-serif;color:#073763">Attached the boot log for T4240RDB.</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Apr 10=
, 2015 at 12:10 PM, Leo Tao <span dir=3D"ltr">&lt;<a href=3D"mailto:Leo.Tao=
@flextronics.com" target=3D"_blank">Leo.Tao@flextronics.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Sandeep,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>&nbsp;<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thank you for your quick =
response.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">It&rsquo;s true SDK1.7 do=
esn&rsquo;t mention&nbsp; using UBIFS with Nand Flash. But we decide to use=
 the Nand Flash on Board.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can you send me your boot=
cmd&nbsp; and boot log running T4240RDB please?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>&nbsp;<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Leo<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>&nbsp;<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>&nbsp;<u></u></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sandeep =
G.R [mailto:<a href=3D"mailto:grsandeep85@gmail.com" target=3D"_blank">grsa=
ndeep85@gmail.com</a>]
<br>
<b>Sent:</b> Friday, April 10, 2015 1:33 PM<br>
<b>To:</b> Leo Tao<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Freescale T1040RDB Failed to mount UBIFS<u></u>=
<u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">Hi Leo,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">I walked through the QorIQ-SDK-1.7 ma=
nual section 3.4.16 for T1040RDB doesn&#39;t say anything on the NAND flash=
 procedure. I can see the NOR Flash memory map and flash procedure.<u></u><=
u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">I use T4240RDB with NOR flash works g=
reat.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">Please contact your local Freescale F=
AE for more support and post the question is Freescale forum you might get =
some help.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763"><u></u>&nbsp;<u></u></span></p>
</div>
</div>
</span><div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div><span class=3D"">
<p class=3D"MsoNormal">On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao &lt;<a hre=
f=3D"mailto:Leo.Tao@flextronics.com" target=3D"_blank">Leo.Tao@flextronics.=
com</a><span style=3D"color:#1f497d"><u></u><u></u></span></p>
</span><div>
<div>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<p class=3D"MsoNormal">I built UBIFS rootfs for T1040RDB, apparently I got =
2 rootfs images:<u></u><u></u></p><div><div class=3D"h5">
<p class=3D"MsoNormal">1. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi=
<u></u><u></u></p>
<p class=3D"MsoNormal">2. fsl-image-core-t1040rdb-20150408204106.rootfs.ubi=
fs<u></u><u></u></p>
<p class=3D"MsoNormal">So I updated &nbsp;Nand Flash rootfs Partition with =
&nbsp;image :fsl-image-core-t1040rdb-20150408204106.rootfs.ubifs<u></u><u><=
/u></p>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<p class=3D"MsoNormal">Uboot bootcmd : bootcmd=3Dsetenv bootargs noinitrd i=
p=3Doff mem=3D256M rootwait=3D1 rw ubi.mtd=3D7,4096 rootfstype=3Dubifs root=
=3Dubi0:rootfs console=3D$consoledev,$baudrate $othbootargs;nand read.e
 $loadaddr $kernel_addr $kernel_size;nand read.e $fdtaddr $fdt_addr $fdt_si=
ze;bootm $loadaddr - $fdtaddr<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<p class=3D"MsoNormal">My question is<u></u><u></u></p>
<p>1.<span style=3D"font-size:7.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span>which image should be flashed to Nand, xxx.ubi or xxx.ubifs?<u></u><u=
></u></p>
<p>2.<span style=3D"font-size:7.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span>what does the error blow mean?<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<p class=3D"MsoNormal">Built uboot and kernel to support ubifs and reset&nb=
sp; T1040RDB, but I got error blow:<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<p class=3D"MsoNormal">Key type dns_resolver registered<u></u><u></u></p>
<p class=3D"MsoNormal">UBI: attaching mtd7 to ubi0<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: validate_ec_hdr: bad VID header offset 51=
2, expected 4096<u></u><u></u></p>
<p class=3D"MsoNormal">UBI error: validate_ec_hdr: bad EC header<u></u><u><=
/u></p>
<p class=3D"MsoNormal">Erase counter header dump:<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; magic&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x55424923<u></u><u></u>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; version&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ec&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<u></u><=
u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vid_hdr_o=
ffset 512<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data_offs=
et&nbsp;&nbsp;&nbsp; 1024<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; image_seq=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href=3D"tel:2076921562" target=3D"_blank">2076921562</a><u></u><u></u></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdr_crc&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x951adef<u></u><u></u></p>
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
<p class=3D"MsoNormal">1f00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 131072 mtdblock0&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1536 mtdblock1&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1024 mtdblock2&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f03&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1024 mtdblock3&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 24576 mtdblock4&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f05&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 10240 mtdblock5&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f06&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1024 mtdblock6&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f07&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 409600 mtdblock7&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 98304 mtdblock8&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 524288 mtdblock9&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">1f0a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 65536 mtdblock10&nbsp; (driver?)<u></u><u></u></p>
<p class=3D"MsoNormal">Kernel panic - not syncing: VFS: Unable to mount roo=
t fs on unknown-block(0,0)<u></u><u></u></p>
<p class=3D"MsoNormal">CPU: 2 PID: 1 Comm: swapper/0 Not tainted 3.12.19-rt=
30-QorIQ-SDK-V1.7+g66<u></u><u></u></p>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal">The information contained in this message may be pri=
vileged and confidential. It is intended to be read only by the individual =
or entity to whom it is addressed or by their designee. If the reader of th=
is message is not the intended recipient,
 you are on notice that any distribution of this message, in any form, is s=
trictly prohibited. If you have received this message in error, please imme=
diately notify the sender and delete or destroy any copy of this message!
<u></u><u></u></p>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></u></p>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<p class=3D"MsoNormal">-- <u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Trebuchet MS&quo=
t;,&quot;sans-serif&quot;;color:#073763">Thanks &amp; Regards,</span></b><u=
></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#073763">San=
deep G R</span></b><u></u><u></u></p>
</div>
</div>
</div>
</div></div></div>
</div><div><div class=3D"h5">
The information contained in this message may be privileged and confidentia=
l. It is intended to be read only by the individual or entity to whom it is=
 addressed or by their designee. If the reader of this message is not the i=
ntended recipient, you are on notice
 that any distribution of this message, in any form, is strictly prohibited=
. If you have received this message in error, please immediately notify the=
 sender and delete or destroy any copy of this message!
</div></div></div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"trebuchet ms, sans-seri=
f" color=3D"#073763"><b>Thanks &amp; Regards,</b></font><div><font face=3D"=
trebuchet ms, sans-serif" color=3D"#073763"><b>Sandeep G R</b></font><br><b=
r></div></div></div>
</div>

--001a11c299bcf1fdc905136300d0--

--001a11c299bcf1fdd005136300d2
Content-Type: text/plain; charset=UTF-8; name="T4240RDB-bootlog.txt"
Content-Disposition: attachment; filename="T4240RDB-bootlog.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i8bxmfji0

VS1Cb290IDIwMTQuMDFRb3JJUS1TREstVjEuNitnZmUxZDRmNSAoRmViIDI1IDIwMTUgLSAxMzo1
MDozMSkKCkNQVTA6ICBUNDI0MEUsIFZlcnNpb246IDIuMCwgKDB4ODI0ODAwMjApCkNvcmU6ICBl
NjUwMCwgVmVyc2lvbjogMi4wLCAoMHg4MDQwMDEyMCkKQ2xvY2sgQ29uZmlndXJhdGlvbjoKICAg
ICAgIENQVTA6MTY2Ni42NjcgTUh6LCBDUFUxOjE2NjYuNjY3IE1IeiwgQ1BVMjoxNjY2LjY2NyBN
SHosIENQVTM6MTY2Ni42NjcgTUh6LCAKICAgICAgIENQVTQ6MTY2Ni42NjcgTUh6LCBDUFU1OjE2
NjYuNjY3IE1IeiwgQ1BVNjoxNjY2LjY2NyBNSHosIENQVTc6MTY2Ni42NjcgTUh6LCAKICAgICAg
IENQVTg6MTY2Ni42NjcgTUh6LCBDUFU5OjE2NjYuNjY3IE1IeiwgQ1BVMTA6MTY2Ni42NjcgTUh6
LCBDUFUxMToxNjY2LjY2NyBNSHosIAogICAgICAgQ0NCOjczMy4zMzMgTUh6LAogICAgICAgRERS
OjkzMy4zMzMgTUh6ICgxODY2LjY2NyBNVC9zIGRhdGEgcmF0ZSkgKEFzeW5jaHJvbm91cyksIElG
QzoxODMuMzMzIE1IegogICAgICAgRk1BTjE6IDczMy4zMzMgTUh6CiAgICAgICBGTUFOMjogNzMz
LjMzMyBNSHoKICAgICAgIFFNQU46ICAzNjYuNjY3IE1IegogICAgICAgUE1FOiAgIDUzMy4zMzMg
TUh6CkwxOiAgICBELWNhY2hlIDMyIEtpQiBlbmFibGVkCiAgICAgICBJLWNhY2hlIDMyIEtpQiBl
bmFibGVkClJlc2V0IENvbmZpZ3VyYXRpb24gV29yZCAoUkNXKToKICAgICAgIDAwMDAwMDAwOiAx
NjA3MDAxOSAxODEwMTkxNiAwMDAwMDAwMCAwMDAwMDAwMAogICAgICAgMDAwMDAwMTA6IDZjNzAw
ODQ4IDAwNDQ4YzAwIDBjMDIwMDAwIGY1MDAwMDAwCiAgICAgICAwMDAwMDAyMDogMDAwMDAwMDAg
ZWUwMDAwZWUgMDAwMDAwMDAgMDAwMjg3ZmMKICAgICAgIDAwMDAwMDMwOiAwMDAwMDAwMCA1MDAw
MDAwMCAwMDAwMDAwMCAwMDAwMDAyOApCb2FyZDogVDQyNDBSREIsIFNFUkRFUyBSZWZlcmVuY2Ug
Q2xvY2tzOgogICAgICAgU0VSREVTMT0xMDBNSHogU0VSREVTMj0xNTYuMjVNSHoKICAgICAgIFNF
UkRFUzM9MTAwTUh6IFNFUkRFUzQ9MTAwTUh6CkkyQzogICByZWFkeQpTUEk6ICAgcmVhZHkKRFJB
TTogIEluaXRpYWxpemluZy4uLi51c2luZyBTUEQKRGV0ZWN0ZWQgVURJTU0gOUpTRjI1NjcyQVot
MkcxSzEgCkRldGVjdGVkIFVESU1NIDlKU0YyNTY3MkFaLTJHMUsxIApEZXRlY3RlZCBVRElNTSA5
SlNGMjU2NzJBWi0yRzFLMSAKNCBHaUIgbGVmdCB1bm1hcHBlZAogICAgRERSOiA2IEdpQiAoRERS
MywgNjQtYml0LCBDTD0xMywgRUNDIG9uKQogICAgICAgRERSIENvbnRyb2xsZXIgSW50ZXJsZWF2
aW5nIE1vZGU6IDMtd2F5IDRLQgpGbGFzaDogMTI4IE1pQgpMMjogICAgMiBNaUIgZW5hYmxlZApl
bmFibGUgbDIgZm9yIGNsdXN0ZXIgMSBmZWM2MDAwMAplbmFibGUgbDIgZm9yIGNsdXN0ZXIgMiBm
ZWNhMDAwMApDb3JlbmV0IFBsYXRmb3JtIENhY2hlOiAxLjUgTWlCIGVuYWJsZWQKVXNpbmcgU0VS
REVTMSBQcm90b2NvbDogMjcgKDB4MWIpClVzaW5nIFNFUkRFUzIgUHJvdG9jb2w6IDU2ICgweDM4
KQpVc2luZyBTRVJERVMzIFByb3RvY29sOiAxICgweDEpClVzaW5nIFNFUkRFUzQgUHJvdG9jb2w6
IDkgKDB4OSkKTkFORDogIDIwNDggTWlCCk1NQzogIEZTTF9TREhDOiAwClBDSWUxOiBSb290IENv
bXBsZXgsIG5vIGxpbmssIHJlZ3MgQCAweGZlMjQwMDAwClBDSWUxOiBCdXMgMDAgLSAwMApQQ0ll
MjogZGlzYWJsZWQKUENJZTM6IFJvb3QgQ29tcGxleCwgbm8gbGluaywgcmVncyBAIDB4ZmUyNjAw
MDAKUENJZTM6IEJ1cyAwMSAtIDAxClBDSWU0OiBSb290IENvbXBsZXgsIG5vIGxpbmssIHJlZ3Mg
QCAweGZlMjcwMDAwClBDSWU0OiBCdXMgMDIgLSAwMgpJbjogICAgc2VyaWFsCk91dDogICBzZXJp
YWwKRXJyOiAgIHNlcmlhbApOZXQ6ICAgRm1hbjE6IFVwbG9hZGluZyBtaWNyb2NvZGUgdmVyc2lv
biAxMDYuNC4xNApGYWlsZWQgdG8gY29ubmVjdApGYWlsZWQgdG8gY29ubmVjdApGYWlsZWQgdG8g
Y29ubmVjdApGYWlsZWQgdG8gY29ubmVjdApQSFkgcmVzZXQgdGltZWQgb3V0Ck5vdCBmb3VuZCBD
b3J0aW5hIFBIWSB1Y29kZSBhdCAweGVmZTAwMDAwCmNzNDM0MF9waHlfaW5pdCBlcnJvci4KUEhZ
IHJlc2V0IHRpbWVkIG91dApOb3QgZm91bmQgQ29ydGluYSBQSFkgdWNvZGUgYXQgMHhlZmUwMDAw
MApjczQzNDBfcGh5X2luaXQgZXJyb3IuCkZtYW4yOiBVcGxvYWRpbmcgbWljcm9jb2RlIHZlcnNp
b24gMTA2LjQuMTQKUEhZIHJlc2V0IHRpbWVkIG91dApOb3QgZm91bmQgQ29ydGluYSBQSFkgdWNv
ZGUgYXQgMHhlZmUwMDAwMApjczQzNDBfcGh5X2luaXQgZXJyb3IuClBIWSByZXNldCB0aW1lZCBv
dXQKTm90IGZvdW5kIENvcnRpbmEgUEhZIHVjb2RlIGF0IDB4ZWZlMDAwMDAKY3M0MzQwX3BoeV9p
bml0IGVycm9yLgpGTTFARFRTRUMxIFtQUklNRV0sIEZNMUBEVFNFQzIsIEZNMUBEVFNFQzMsIEZN
MUBEVFNFQzQsIEZNMUBUR0VDMSwgRk0xQFRHRUMyLCBGTTJARFRTRUMxLCBGTTJARFRTRUMyLCBG
TTJARFRTRUMzLCBGTTJARFRTRUM0LCBGTTJAVEdFQzEsIEZNMkBUR0VDMgpIaXQgYW55IGtleSB0
byBzdG9wIGF1dG9ib290OiAgMCAKPT4gCj0+IHByaQpiYXVkcmF0ZT0xMTUyMDAKYmRldj1zZGEz
CmJvb3RhcmdzPXJvb3Q9L2Rldi9yYW0gcncgY29uc29sZT10dHlTMCwxMTUyMDAKYm9vdGNtZD1i
b290bSBlODAyMDAwMCBlOTMwMDAwMCBlODgwMDAwMApib290ZGVsYXk9MTAKYm9vdGZpbGU9dUlt
YWdlCmNvbnNvbGVkZXY9dHR5UzAKZXRoMTBhZGRyPTAwOjEwOkYzOjQxOjM1OkRBCmV0aDExYWRk
cj0wMDoxMDpGMzo0MTozNTpEQgpldGgxYWRkcj0wMDoxMDpGMzo0MTozNTpENQpldGgyYWRkcj0w
MDoxMDpGMzo0MTozNTpENgpldGgzYWRkcj0wMDoxMDpGMzo0MTozNTpENwpldGg0YWRkcj0wMDox
MDpGMzo0MTozNTpEQwpldGg1YWRycj0wMDoxMDpGMzo0MTozNTpERApldGg2YWRkcj0wMDoxMDpG
Mzo0MTozNTpERQpldGg3YWRkcj0wMDoxMDpGMzo0MTozNTpERgpldGg4YWRkcj0wMDoxMDpGMzo0
MTozNTpEOApldGg5YWRkcj0wMDoxMDpGMzo0MTozNTpEOQpldGhhY3Q9Rk0xQERUU0VDMQpldGhh
ZGRyPTAwOjEwOkYzOjQxOjM1OkQ0CmV0aHByaW1lPUZNMUBEVFNFQzEKZmR0YWRkcj0weDAwYzAw
MDAwCmZkdGZpbGU9dDQyNDByZGIvdDQyNDByZGIuZHRiCmZpbGVhZGRyPTEwMDAwMDAKZmlsZXNp
emU9NDg2NzQ5CmZtYW5fdWNvZGU9ZWZmMDAwMDAKZ2F0ZXdheWlwPTE5Mi4xNjguNTAuMQpod2Nv
bmZpZz1mc2xfZGRyOmN0bHJfaW50bHY9M3dheV80S0IsYmFua19pbnRsdj1hdXRvO3VzYjE6ZHJf
bW9kZT1ob3N0LHBoeV90eXBlPXV0bWkKaXBhZGRyPTE5Mi4xNjguNTAuMjUKbG9hZGFkZHI9MTAw
MDAwMApuZXRkZXY9ZXRoMApuZnNib290PXNldGVudiBib290YXJncyByb290PS9kZXYvbmZzIHJ3
IG5mc3Jvb3Q9JHNlcnZlcmlwOiRyb290cGF0aCBpcD0kaXBhZGRyOiRzZXJ2ZXJpcDokZ2F0ZXdh
eWlwOiRuZXRtYXNrOiRob3N0bmFtZTokbmV0ZGV2Om9mZiBjb25zb2xlPSRjb25zb2xlZGV2LCRi
YXVkcmF0ZSAkb3RoYm9vdGFyZ3M7dGZ0cCAkbG9hZGFkZHIgJGJvb3RmaWxlO3RmdHAgCiRmZHRh
ZGRyICRmZHRmaWxlO2Jvb3RtICRsb2FkYWRkciAtICRmZHRhZGRyCnJhbWJvb3Q9c2V0ZW52IGJv
b3RhcmdzIHJvb3Q9L2Rldi9yYW0gcncgY29uc29sZT0kY29uc29sZWRldiwkYmF1ZHJhdGUgJG90
aGJvb3RhcmdzO3RmdHAgJHJhbWRpc2thZGRyICRyYW1kaXNrZmlsZTt0ZnRwICRsb2FkYWRkciAk
Ym9vdGZpbGU7dGZ0cCAkZmR0YWRkciAkZmR0ZmlsZTtib290bSAkbG9hZGFkZHIgJHJhbWRpc2th
ZGRyICRmZHRhZGRyCnJhbWRpc2thZGRyPTIwMDAwMDAKcmFtZGlza2ZpbGU9dDQyNDByZGIvcmFt
ZGlzay51Ym9vdApyb290cGF0aD0vb3B0L25mc3Jvb3QKc2FzYm9vdD1zZXRlbnYgYm9vdGFyZ3Mg
cm9vdD0vZGV2L3NkYTEgcm9vdGRlbGF5PTUgcncgY29uc29sZT0kY29uc29sZWRldiwkYmF1ZHJh
dGUgJG90aGJvb3RhcmdzO2Jvb3RtIGU4MDIwMDAwIC0gZTg4MDAwMDAKc2F0YWJvb3Q9c2V0ZW52
IGJvb3RhcmdzIHJvb3Q9L2Rldi9zZGExIHJvb3RkZWxheT01IHJ3IGNvbnNvbGU9JGNvbnNvbGVk
ZXYsJGJhdWRyYXRlICRvdGhib290YXJncztib290bSBlODAyMDAwMCAtIGU4ODAwMDAwCnNlcnZl
cmlwPTE5Mi4xNjguNTAuMTYKc3RkZXJyPXNlcmlhbApzdGRpbj1zZXJpYWwKc3Rkb3V0PXNlcmlh
bAp0ZnRwZmxhc2g9dGZ0cGJvb3QgJGxvYWRhZGRyICR1Ym9vdCAmJiBwcm90ZWN0IG9mZiAkdWJv
b3RhZGRyICskZmlsZXNpemUgJiYgZXJhc2UgJHVib290YWRkciArJGZpbGVzaXplICYmIGNwLmIg
JGxvYWRhZGRyICR1Ym9vdGFkZHIgJGZpbGVzaXplICYmIHByb3RlY3Qgb24gJHVib290YWRkciAr
JGZpbGVzaXplICYmIGNtcC5iICRsb2FkYWRkciAkdWJvb3RhCmRkciAkZmlsZXNpemUKdWJvb3Q9
InUtYm9vdC5iaW4iCnVib290YWRkcj0weGVmZjQwMDAwCgpFbnZpcm9ubWVudCBzaXplOiAxOTcy
LzgxODggYnl0ZXMKPT4gYm9vdApXQVJOSU5HOiBhZGp1c3RpbmcgYXZhaWxhYmxlIG1lbW9yeSB0
byAzMDAwMDAwMAojIyBCb290aW5nIGtlcm5lbCBmcm9tIExlZ2FjeSBJbWFnZSBhdCBlODAyMDAw
MCAuLi4KICAgSW1hZ2UgTmFtZTogICBMaW51eC0zLjEyLjE5LXJ0MzAtUW9ySVEtU0RLLVYxLgog
ICBJbWFnZSBUeXBlOiAgIFBvd2VyUEMgTGludXggS2VybmVsIEltYWdlIChnemlwIGNvbXByZXNz
ZWQpCiAgIERhdGEgU2l6ZTogICAgNTE5OTY2MiBCeXRlcyA9IDUgTWlCCiAgIExvYWQgQWRkcmVz
czogMDAwMDAwMDAKICAgRW50cnkgUG9pbnQ6ICAwMDAwMDAwMAogICBWZXJpZnlpbmcgQ2hlY2tz
dW0gLi4uIE9LCiMjIExvYWRpbmcgaW5pdCBSYW1kaXNrIGZyb20gTGVnYWN5IEltYWdlIGF0IGU5
MzAwMDAwIC4uLgogICBJbWFnZSBOYW1lOiAgIGZzbC1pbWFnZS1jb3JlLXQ0MjQwcmRiLTY0Yi0y
MDE1CiAgIEltYWdlIFR5cGU6ICAgUG93ZXJQQyBMaW51eCBSQU1EaXNrIEltYWdlIChnemlwIGNv
bXByZXNzZWQpCiAgIERhdGEgU2l6ZTogICAgMzEwODMwMzAgQnl0ZXMgPSAyOS42IE1pQgogICBM
b2FkIEFkZHJlc3M6IDAwMDAwMDAwCiAgIEVudHJ5IFBvaW50OiAgMDAwMDAwMDAKICAgVmVyaWZ5
aW5nIENoZWNrc3VtIC4uLiBPSwojIyBGbGF0dGVuZWQgRGV2aWNlIFRyZWUgYmxvYiBhdCBlODgw
MDAwMAogICBCb290aW5nIHVzaW5nIHRoZSBmZHQgYmxvYiBhdCAweGU4ODAwMDAwCiAgIFVuY29t
cHJlc3NpbmcgS2VybmVsIEltYWdlIC4uLiBPSwogICBMb2FkaW5nIFJhbWRpc2sgdG8gMmUyNWIw
MDAsIGVuZCAyZmZmZmExNiAuLi4gT0sKICAgTG9hZGluZyBEZXZpY2UgVHJlZSB0byAwM2ZkZTAw
MCwgZW5kIDAzZmZmYzQwIC4uLiBPSwpVc2luZyBDb3JlTmV0IEdlbmVyaWMgbWFjaGluZSBkZXNj
cmlwdGlvbgpNTVU6IFN1cHBvcnRlZCBwYWdlIHNpemVzCiAgICAgICAgIDQgS0IgYXMgZGlyZWN0
CiAgICAgIDEwMjQgS0IgYXMgZGlyZWN0CiAgICAgIDIwNDggS0IgYXMgZGlyZWN0ICYgaW5kaXJl
Y3QKICAgICAgNDA5NiBLQiBhcyBkaXJlY3QKICAgICAxNjM4NCBLQiBhcyBkaXJlY3QKICAgICA2
NTUzNiBLQiBhcyBkaXJlY3QKICAgIDI2MjE0NCBLQiBhcyBkaXJlY3QKICAgMTA0ODU3NiBLQiBh
cyBkaXJlY3QKTU1VOiBCb29rM0UgSFcgdGFibGV3YWxrIGVuYWJsZWQKRm91bmQgaW5pdHJkIGF0
IDB4YzAwMDAwMDAyZTI1YjAwMDoweGMwMDAwMDAwMmZmZmZhMTYKTm8gL3NvY0BmZmUwMDAwMDAv
cW1hbkAzMTgwMDAgcHJvcGVydHkgJ2ZzbCxxbWFuLWZxZCcsIHVzaW5nIG1lbWJsb2NrX2FsbG9j
KDAwMDAwMDAwMDA0MDAwMDApCk5vIC9zb2NAZmZlMDAwMDAwL3FtYW5AMzE4MDAwIHByb3BlcnR5
ICdmc2wscW1hbi1wZmRyJywgdXNpbmcgbWVtYmxvY2tfYWxsb2MoMDAwMDAwMDAwMjAwMDAwMCkK
UW1hbiB2ZXI6MGEwMSwwMywwMSwwMApObyAvc29jQGZmZTAwMDAwMC9ibWFuQDMxYTAwMCBwcm9w
ZXJ0eSAnZnNsLGJtYW4tZmJwcicsIHVzaW5nIG1lbWJsb2NrX2FsbG9jKDAwMDAwMDAwMDEwMDAw
MDApCkJtYW4gdmVyOjBhMDIsMDIsMDEKcG1lOiBObyAvc29jQGZmZTAwMDAwMC9wbWVAMzE2MDAw
IHByb3BlcnR5ICdmc2wscG1lLXBkc3InLCB1c2luZyBtZW1ibG9ja19hbGxvYygweDAwMDAwMDAw
MDEwMDAwMDApCnBtZTogTm8gL3NvY0BmZmUwMDAwMDAvcG1lQDMxNjAwMCBwcm9wZXJ0eSAnZnNs
LHBtZS1zcmUnLCB1c2luZyBtZW1ibG9ja19hbGxvYygweDAwMDAwMDAwMDBhMDAwMDApCk5vIFVT
RFBBQSBtZW1vcnksIG5vICd1c2RwYWFfbWVtJyBib290YXJnCmJvb3Rjb25zb2xlIFt1ZGJnMF0g
ZW5hYmxlZApDUFUgbWFwcyBpbml0aWFsaXplZCBmb3IgMiB0aHJlYWRzIHBlciBjb3JlClN0YXJ0
aW5nIExpbnV4IFBQQzY0ICMxIFNNUCBUdWUgRmViIDI0IDIwOjE5OjQ5IE1TVCAyMDE1Ci0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCnBwYzY0X3Bm
dF9zaXplICAgICAgICAgICAgICAgID0gMHgwCnBoeXNpY2FsTWVtb3J5U2l6ZSAgICAgICAgICAg
ID0gMHgxODAwMDAwMDAKcHBjNjRfY2FjaGVzLmRjYWNoZV9saW5lX3NpemUgPSAweDQwCnBwYzY0
X2NhY2hlcy5pY2FjaGVfbGluZV9zaXplID0gMHg0MAotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogPC0gc2V0dXBfc3lzdGVtKCkKTGludXggdmVy
c2lvbiAzLjEyLjE5LXJ0MzAtUW9ySVEtU0RLLVYxLjYrZ2MyOWZlMWEgKHNkYUBDbG91ZGxhYjEp
IChnY2MgdmVyc2lvbiA0LjguMSAoR0NDKSApICMxIFNNUCBUdWUgRmViIDI0IDIwOjE5OjQ5IE1T
VCAyMDE1CkNGMDAwMDEyCgpTZXR1cCBBcmNoCltib290XTAwMTIgU2V0dXAgQXJjaApDb3JlTmV0
IEdlbmVyaWMgYm9hcmQgZnJvbSBGcmVlc2NhbGUgU2VtaWNvbmR1Y3Rvcgpab25lIHJhbmdlczoK
ICBETUEgICAgICBbbWVtIDB4MDAwMDAwMDAtMHg3ZmZmZmZmZl0KICBOb3JtYWwgICBbbWVtIDB4
ODAwMDAwMDAtMHgxN2ZmZmZmZmZdCk1vdmFibGUgem9uZSBzdGFydCBmb3IgZWFjaCBub2RlCkVh
cmx5IG1lbW9yeSBub2RlIHJhbmdlcwogIG5vZGUgICAwOiBbbWVtIDB4MDAwMDAwMDAtMHgxN2Zm
ZmZmZmZdCk1NVTogQWxsb2NhdGVkIDIxMTIgYnl0ZXMgb2YgY29udGV4dCBtYXBzIGZvciAyNTUg
Y29udGV4dHMKQ0YwMDAwMTUKClNldHVwIERvbmUKW2Jvb3RdMDAxNSBTZXR1cCBEb25lClBFUkNQ
VTogRW1iZWRkZWQgMTEgcGFnZXMvY3B1IEBjMDAwMDAwMDA5NTAwMDAwIHMxNTE2OCByMCBkMjk4
ODggdTY1NTM2CkJ1aWx0IDEgem9uZWxpc3RzIGluIFpvbmUgb3JkZXIsIG1vYmlsaXR5IGdyb3Vw
aW5nIG9uLiAgVG90YWwgcGFnZXM6IDE1NTEzNjAKS2VybmVsIGNvbW1hbmQgbGluZTogcm9vdD0v
ZGV2L3JhbSBydyBjb25zb2xlPXR0eVMwLDExNTIwMApQSUQgaGFzaCB0YWJsZSBlbnRyaWVzOiA0
MDk2IChvcmRlcjogMywgMzI3NjggYnl0ZXMpCkRlbnRyeSBjYWNoZSBoYXNoIHRhYmxlIGVudHJp
ZXM6IDEwNDg1NzYgKG9yZGVyOiAxMSwgODM4ODYwOCBieXRlcykKSW5vZGUtY2FjaGUgaGFzaCB0
YWJsZSBlbnRyaWVzOiA1MjQyODggKG9yZGVyOiAxMCwgNDE5NDMwNCBieXRlcykKU29ydGluZyBf
X2V4X3RhYmxlLi4uCk1lbW9yeTogNTk5OTU5MksvNjI5MTQ1NksgYXZhaWxhYmxlICg4MTIwSyBr
ZXJuZWwgY29kZSwgMTE3MksgcndkYXRhLCAyOTEySyByb2RhdGEsIDMzMksgaW5pdCwgNzY2SyBi
c3MsIDI5MTg2NEsgcmVzZXJ2ZWQpCkhpZXJhcmNoaWNhbCBSQ1UgaW1wbGVtZW50YXRpb24uCiAg
ICAgICAgUkNVIGRlYnVnZnMtYmFzZWQgdHJhY2luZyBpcyBlbmFibGVkLgogICAgICAgIENPTkZJ
R19SQ1VfRkFOT1VUIHNldCB0byBub24tZGVmYXVsdCB2YWx1ZSBvZiAzMgpOUl9JUlFTOjUxMiBu
cl9pcnFzOjUxMiAxNgptcGljOiBTZXR0aW5nIHVwIE1QSUMgIiBPcGVuUElDICAiIHZlcnNpb24g
MS4yIGF0IGZmZTA0MDAwMCwgbWF4IDI0IENQVXMKbXBpYzogSVNVIHNpemU6IDUxMiwgc2hpZnQ6
IDksIG1hc2s6IDFmZgptcGljOiBJbml0aWFsaXppbmcgZm9yIDUxMiBzb3VyY2VzCmNsb2Nrc291
cmNlOiB0aW1lYmFzZSBtdWx0WzE1ZDE3NDYwXSBzaGlmdFsyNF0gcmVnaXN0ZXJlZApDb25zb2xl
OiBjb2xvdXIgZHVtbXkgZGV2aWNlIDgweDI1CnBpZF9tYXg6IGRlZmF1bHQ6IDMyNzY4IG1pbmlt
dW06IDMwMQpNb3VudC1jYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDI1NgptcGljOiByZXF1ZXN0
aW5nIElQSXMuLi4KZTY1MDAgZmFtaWx5IHBlcmZvcm1hbmNlIG1vbml0b3IgaGFyZHdhcmUgc3Vw
cG9ydCByZWdpc3RlcmVkCkJyb3VnaHQgdXAgMjQgQ1BVcwpkZXZ0bXBmczogaW5pdGlhbGl6ZWQK
eG9yOiBtZWFzdXJpbmcgc29mdHdhcmUgY2hlY2tzdW0gc3BlZWQKICAgOHJlZ3MgICAgIDogIDMz
NjEuMDAwIE1CL3NlYwogICA4cmVnc19wcmVmZXRjaDogIDI5NjEuMDAwIE1CL3NlYwogICAzMnJl
Z3MgICAgOiAgMjY3NS4wMDAgTUIvc2VjCiAgIDMycmVnc19wcmVmZXRjaDogIDI0OTIuMDAwIE1C
L3NlYwp4b3I6IHVzaW5nIGZ1bmN0aW9uOiA4cmVncyAoMzM2MS4wMDAgTUIvc2VjKQpORVQ6IFJl
Z2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE2CkZvdW5kIEZTTCBQQ0kgaG9zdCBicmlkZ2UgYXQg
MHgwMDAwMDAwZmZlMjQwMDAwLiBGaXJtd2FyZSBidXMgbnVtYmVyOiAwLT4wClBDSSBob3N0IGJy
aWRnZSAvcGNpZUBmZmUyNDAwMDAgIHJhbmdlczoKIE1FTSAweDAwMDAwMDBjMDAwMDAwMDAuLjB4
MDAwMDAwMGMxZmZmZmZmZiAtPiAweDAwMDAwMDAwZTAwMDAwMDAgCiAgSU8gMHgwMDAwMDAwZmY4
MDAwMDAwLi4weDAwMDAwMDBmZjgwMGZmZmYgLT4gMHgwMDAwMDAwMDAwMDAwMDAwCi9wY2llQGZm
ZTI0MDAwMDogUENJQ1NSQkFSIEAgMHhkZjAwMDAwNwovcGNpZUBmZmUyNDAwMDA6IFNldHVwIDY0
LWJpdCBQQ0kgRE1BIHdpbmRvdwovcGNpZUBmZmUyNDAwMDA6IERNQSB3aW5kb3cgc2l6ZSBpcyAw
eGRmMDAwMDA3CkVEQUMgUENJMDogR2l2aW5nIG91dCBkZXZpY2UgdG8gbW9kdWxlICdNUEM4NXh4
X2VkYWMnIGNvbnRyb2xsZXIgJ21wYzg1eHhfcGNpX2Vycic6IERFViAnZmZlMjQwMDAwLnBjaWUn
IChJTlRFUlJVUFQpCk1QQzg1eHhfZWRhYyBhY3F1aXJlZCBpcnEgMjAgZm9yIFBDSSBFcnIKTVBD
ODV4eF9lZGFjIFBDSSBlcnIgcmVnaXN0ZXJlZApGb3VuZCBGU0wgUENJIGhvc3QgYnJpZGdlIGF0
IDB4MDAwMDAwMGZmZTI2MDAwMC4gRmlybXdhcmUgYnVzIG51bWJlcjogMC0+MApQQ0kgaG9zdCBi
cmlkZ2UgL3BjaWVAZmZlMjYwMDAwICByYW5nZXM6CiBNRU0gMHgwMDAwMDAwYzQwMDAwMDAwLi4w
eDAwMDAwMDBjNWZmZmZmZmYgLT4gMHgwMDAwMDAwMGUwMDAwMDAwIAogIElPIDB4MDAwMDAwMGZm
ODAyMDAwMC4uMHgwMDAwMDAwZmY4MDJmZmZmIC0+IDB4MDAwMDAwMDAwMDAwMDAwMAovcGNpZUBm
ZmUyNjAwMDA6IFBDSUNTUkJBUiBAIDB4ZGYwMDAwMDcKL3BjaWVAZmZlMjYwMDAwOiBTZXR1cCA2
NC1iaXQgUENJIERNQSB3aW5kb3cKL3BjaWVAZmZlMjYwMDAwOiBETUEgd2luZG93IHNpemUgaXMg
MHhkZjAwMDAwNwpFREFDIFBDSTE6IEdpdmluZyBvdXQgZGV2aWNlIHRvIG1vZHVsZSAnTVBDODV4
eF9lZGFjJyBjb250cm9sbGVyICdtcGM4NXh4X3BjaV9lcnInOiBERVYgJ2ZmZTI2MDAwMC5wY2ll
JyAoSU5URVJSVVBUKQpNUEM4NXh4X2VkYWMgYWNxdWlyZWQgaXJxIDIyIGZvciBQQ0kgRXJyCk1Q
Qzg1eHhfZWRhYyBQQ0kgZXJyIHJlZ2lzdGVyZWQKRm91bmQgRlNMIFBDSSBob3N0IGJyaWRnZSBh
dCAweDAwMDAwMDBmZmUyNzAwMDAuIEZpcm13YXJlIGJ1cyBudW1iZXI6IDAtPjAKUENJIGhvc3Qg
YnJpZGdlIC9wY2llQGZmZTI3MDAwMCAgcmFuZ2VzOgogTUVNIDB4MDAwMDAwMGM2MDAwMDAwMC4u
MHgwMDAwMDAwYzdmZmZmZmZmIC0+IDB4MDAwMDAwMDBlMDAwMDAwMCAKICBJTyAweDAwMDAwMDBm
ZjgwMzAwMDAuLjB4MDAwMDAwMGZmODAzZmZmZiAtPiAweDAwMDAwMDAwMDAwMDAwMDAKL3BjaWVA
ZmZlMjcwMDAwOiBQQ0lDU1JCQVIgQCAweGRmMDAwMDA3Ci9wY2llQGZmZTI3MDAwMDogU2V0dXAg
NjQtYml0IFBDSSBETUEgd2luZG93Ci9wY2llQGZmZTI3MDAwMDogRE1BIHdpbmRvdyBzaXplIGlz
IDB4ZGYwMDAwMDcKRURBQyBQQ0kyOiBHaXZpbmcgb3V0IGRldmljZSB0byBtb2R1bGUgJ01QQzg1
eHhfZWRhYycgY29udHJvbGxlciAnbXBjODV4eF9wY2lfZXJyJzogREVWICdmZmUyNzAwMDAucGNp
ZScgKElOVEVSUlVQVCkKTVBDODV4eF9lZGFjIGFjcXVpcmVkIGlycSAyMyBmb3IgUENJIEVycgpN
UEM4NXh4X2VkYWMgUENJIGVyciByZWdpc3RlcmVkCnNvZnR3YXJlIElPIFRMQiBbbWVtIDB4MGEy
N2IwMDAtMHgwZTI3YjAwMF0gKDY0TUIpIG1hcHBlZCBhdCBbYzAwMDAwMDAwYTI3YjAwMC1jMDAw
MDAwMDBlMjdhZmZmXQpQQ0k6IFByb2JpbmcgUENJIGhhcmR3YXJlCmZzbC1wY2kgZmZlMjQwMDAw
LnBjaWU6IFBDSSBob3N0IGJyaWRnZSB0byBidXMgMDAwMDowMApwY2lfYnVzIDAwMDA6MDA6IHJv
b3QgYnVzIHJlc291cmNlIFtpbyAgMHgxMDAwMC0weDFmZmZmXSAoYnVzIGFkZHJlc3MgWzB4MDAw
MC0weGZmZmZdKQpwY2lfYnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFttZW0gMHhjMDAw
MDAwMDAtMHhjMWZmZmZmZmZdIChidXMgYWRkcmVzcyBbMHhlMDAwMDAwMC0weGZmZmZmZmZmXSkK
cGNpX2J1cyAwMDAwOjAwOiByb290IGJ1cyByZXNvdXJjZSBbYnVzIDAwXQpwY2kgMDAwMDowMDow
MC4wOiBpZ25vcmluZyBjbGFzcyAweDBiMjAwMCAoZG9lc24ndCBtYXRjaCBoZWFkZXIgdHlwZSAw
MSkKcGNpIDAwMDA6MDA6MDAuMDogYnJpZGdlIGNvbmZpZ3VyYXRpb24gaW52YWxpZCAoW2J1cyAw
MC0wMF0pLCByZWNvbmZpZ3VyaW5nCnBjaSAwMDAwOjAwOjAwLjA6IFBDSSBicmlkZ2UgdG8gW2J1
cyAwMS1mZl0KZnNsLXBjaSBmZmUyNjAwMDAucGNpZTogUENJIGhvc3QgYnJpZGdlIHRvIGJ1cyAw
MDAxOjAwCnBjaV9idXMgMDAwMTowMDogcm9vdCBidXMgcmVzb3VyY2UgW2lvICAweDIxMDAwLTB4
MzBmZmZdIChidXMgYWRkcmVzcyBbMHgwMDAwLTB4ZmZmZl0pCnBjaV9idXMgMDAwMTowMDogcm9v
dCBidXMgcmVzb3VyY2UgW21lbSAweGM0MDAwMDAwMC0weGM1ZmZmZmZmZl0gKGJ1cyBhZGRyZXNz
IFsweGUwMDAwMDAwLTB4ZmZmZmZmZmZdKQpwY2lfYnVzIDAwMDE6MDA6IHJvb3QgYnVzIHJlc291
cmNlIFtidXMgMDBdCnBjaSAwMDAxOjAwOjAwLjA6IGlnbm9yaW5nIGNsYXNzIDB4MGIyMDAwIChk
b2Vzbid0IG1hdGNoIGhlYWRlciB0eXBlIDAxKQpwY2kgMDAwMTowMDowMC4wOiBicmlkZ2UgY29u
ZmlndXJhdGlvbiBpbnZhbGlkIChbYnVzIDAwLTAwXSksIHJlY29uZmlndXJpbmcKcGNpIDAwMDE6
MDA6MDAuMDogUENJIGJyaWRnZSB0byBbYnVzIDAxLWZmXQpmc2wtcGNpIGZmZTI3MDAwMC5wY2ll
OiBQQ0kgaG9zdCBicmlkZ2UgdG8gYnVzIDAwMDI6MDAKcGNpX2J1cyAwMDAyOjAwOiByb290IGJ1
cyByZXNvdXJjZSBbaW8gIDB4MzIwMDAtMHg0MWZmZl0gKGJ1cyBhZGRyZXNzIFsweDAwMDAtMHhm
ZmZmXSkKcGNpX2J1cyAwMDAyOjAwOiByb290IGJ1cyByZXNvdXJjZSBbbWVtIDB4YzYwMDAwMDAw
LTB4YzdmZmZmZmZmXSAoYnVzIGFkZHJlc3MgWzB4ZTAwMDAwMDAtMHhmZmZmZmZmZl0pCnBjaV9i
dXMgMDAwMjowMDogcm9vdCBidXMgcmVzb3VyY2UgW2J1cyAwMF0KcGNpIDAwMDI6MDA6MDAuMDog
aWdub3JpbmcgY2xhc3MgMHgwYjIwMDAgKGRvZXNuJ3QgbWF0Y2ggaGVhZGVyIHR5cGUgMDEpCnBj
aSAwMDAyOjAwOjAwLjA6IGJyaWRnZSBjb25maWd1cmF0aW9uIGludmFsaWQgKFtidXMgMDAtMDBd
KSwgcmVjb25maWd1cmluZwpwY2kgMDAwMjowMDowMC4wOiBQQ0kgYnJpZGdlIHRvIFtidXMgMDEt
ZmZdCnBjaSAwMDAwOjAwOjAwLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0KcGNpIDAwMDA6MDA6
MDAuMDogICBicmlkZ2Ugd2luZG93IFtpbyAgMHgxMDAwMC0weDFmZmZmXQpwY2kgMDAwMDowMDow
MC4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweGMwMDAwMDAwMC0weGMxZmZmZmZmZl0KcGNpIDAw
MDE6MDA6MDAuMDogUENJIGJyaWRnZSB0byBbYnVzIDAxXQpwY2kgMDAwMTowMDowMC4wOiAgIGJy
aWRnZSB3aW5kb3cgW2lvICAweDIxMDAwLTB4MzBmZmZdCnBjaSAwMDAxOjAwOjAwLjA6ICAgYnJp
ZGdlIHdpbmRvdyBbbWVtIDB4YzQwMDAwMDAwLTB4YzVmZmZmZmZmXQpwY2kgMDAwMjowMDowMC4w
OiBQQ0kgYnJpZGdlIHRvIFtidXMgMDFdCnBjaSAwMDAyOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRv
dyBbaW8gIDB4MzIwMDAtMHg0MWZmZl0KcGNpIDAwMDI6MDA6MDAuMDogICBicmlkZ2Ugd2luZG93
IFttZW0gMHhjNjAwMDAwMDAtMHhjN2ZmZmZmZmZdCmZzbC1pZmMgZmZlMTI0MDAwLmxvY2FsYnVz
OiBGcmVlc2NhbGUgSW50ZWdyYXRlZCBGbGFzaCBDb250cm9sbGVyCmJpbzogY3JlYXRlIHNsYWIg
PGJpby0wPiBhdCAwCnJhaWQ2OiBhbHRpdmVjeDEgIDEwMjUgTUIvcwpyYWlkNjogYWx0aXZlY3gy
ICAxNzA5IE1CL3MKcmFpZDY6IGFsdGl2ZWN4NCAgMjgyNCBNQi9zCnJhaWQ2OiBhbHRpdmVjeDgg
IDI3MTIgTUIvcwpyYWlkNjogaW50NjR4MSAgICA0ODAgTUIvcwpyYWlkNjogaW50NjR4MiAgICA4
MzMgTUIvcwpyYWlkNjogaW50NjR4NCAgIDEyMjMgTUIvcwpyYWlkNjogaW50NjR4OCAgIDEwODYg
TUIvcwpyYWlkNjogdXNpbmcgYWxnb3JpdGhtIGFsdGl2ZWN4NCAoMjgyNCBNQi9zKQpyYWlkNjog
dXNpbmcgaW50eDEgcmVjb3ZlcnkgYWxnb3JpdGhtCnZnYWFyYjogbG9hZGVkClNDU0kgc3Vic3lz
dGVtIGluaXRpYWxpemVkCnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIg
dXNiZnMKdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBodWIKdXNiY29y
ZTogcmVnaXN0ZXJlZCBuZXcgZGV2aWNlIGRyaXZlciB1c2IKcHBzX2NvcmU6IExpbnV4UFBTIEFQ
SSB2ZXIuIDEgcmVnaXN0ZXJlZApwcHNfY29yZTogU29mdHdhcmUgdmVyLiA1LjMuNiAtIENvcHly
aWdodCAyMDA1LTIwMDcgUm9kb2xmbyBHaW9tZXR0aSA8Z2lvbWV0dGlAbGludXguaXQ+ClBUUCBj
bG9jayBzdXBwb3J0IHJlZ2lzdGVyZWQKRURBQyBNQzogVmVyOiAzLjAuMApCbWFuIGVyciBpbnRl
cnJ1cHQgaGFuZGxlciBwcmVzZW50CkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMApCbWFu
IHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDEKQm1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAy
CkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMwpCbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwg
Y3B1IDQKQm1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSA1CkJtYW4gcG9ydGFsIGluaXRpYWxp
c2VkLCBjcHUgNgpCbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDcKQm1hbiBwb3J0YWwgaW5p
dGlhbGlzZWQsIGNwdSA4CkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgOQpCbWFuIHBvcnRh
bCBpbml0aWFsaXNlZCwgY3B1IDEwCkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMTEKQm1h
biBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAxMgpCbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1
IDEzCkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMTQKQm1hbiBwb3J0YWwgaW5pdGlhbGlz
ZWQsIGNwdSAxNQpCbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDE2CkJtYW4gcG9ydGFsIGlu
aXRpYWxpc2VkLCBjcHUgMTcKQm1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAxOApCbWFuIHBv
cnRhbCBpbml0aWFsaXNlZCwgY3B1IDE5CkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMjAK
Qm1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAyMQpCbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwg
Y3B1IDIyCkJtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMjMKQm1hbiBwb3J0YWxzIGluaXRp
YWxpc2VkClFtYW4gZXJyIGludGVycnVwdCBoYW5kbGVyIHByZXNlbnQKUU1hbjogQWxsb2NhdGVk
IGxvb2t1cCB0YWJsZSBhdCA4MDAwMDAwMDAwMDAwMDAwLCBlbnRyeSBjb3VudCA2NTUzNwpRbWFu
IHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDAKUW1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAx
ClFtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMgpRbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwg
Y3B1IDMKUW1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSA0ClFtYW4gcG9ydGFsIGluaXRpYWxp
c2VkLCBjcHUgNQpRbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDYKUW1hbiBwb3J0YWwgaW5p
dGlhbGlzZWQsIGNwdSA3ClFtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgOApRbWFuIHBvcnRh
bCBpbml0aWFsaXNlZCwgY3B1IDkKUW1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAxMApRbWFu
IHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDExClFtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUg
MTIKUW1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAxMwpRbWFuIHBvcnRhbCBpbml0aWFsaXNl
ZCwgY3B1IDE0ClFtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBjcHUgMTUKUW1hbiBwb3J0YWwgaW5p
dGlhbGlzZWQsIGNwdSAxNgpRbWFuIHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDE3ClFtYW4gcG9y
dGFsIGluaXRpYWxpc2VkLCBjcHUgMTgKUW1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAxOQpR
bWFuIHBvcnRhbCBpbml0aWFsaXNlZCwgY3B1IDIwClFtYW4gcG9ydGFsIGluaXRpYWxpc2VkLCBj
cHUgMjEKUW1hbiBwb3J0YWwgaW5pdGlhbGlzZWQsIGNwdSAyMgpRbWFuIHBvcnRhbCBpbml0aWFs
aXNlZCwgY3B1IDIzClFtYW4gcG9ydGFscyBpbml0aWFsaXNlZApCbWFuOiBCUElEIGFsbG9jYXRv
ciBpbmNsdWRlcyByYW5nZSAzMjozMgpRbWFuOiBGUUlEIGFsbG9jYXRvciBpbmNsdWRlcyByYW5n
ZSAyNTY6NTEyClFtYW46IEZRSUQgYWxsb2NhdG9yIGluY2x1ZGVzIHJhbmdlIDMyNzY4OjMyNzY4
ClFtYW46IENHUklEIGFsbG9jYXRvciBpbmNsdWRlcyByYW5nZSAwOjI1NgpRbWFuOiBwb29sIGNo
YW5uZWwgYWxsb2NhdG9yIGluY2x1ZGVzIHJhbmdlIDEwMjU6MTUKU3dpdGNoZWQgdG8gY2xvY2tz
b3VyY2UgdGltZWJhc2UKTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAyClRDUCBlc3Rh
Ymxpc2hlZCBoYXNoIHRhYmxlIGVudHJpZXM6IDY1NTM2IChvcmRlcjogOCwgMTA0ODU3NiBieXRl
cykKVENQIGJpbmQgaGFzaCB0YWJsZSBlbnRyaWVzOiA2NTUzNiAob3JkZXI6IDgsIDEwNDg1NzYg
Ynl0ZXMpClRDUDogSGFzaCB0YWJsZXMgY29uZmlndXJlZCAoZXN0YWJsaXNoZWQgNjU1MzYgYmlu
ZCA2NTUzNikKVENQOiByZW5vIHJlZ2lzdGVyZWQKVURQIGhhc2ggdGFibGUgZW50cmllczogNDA5
NiAob3JkZXI6IDUsIDEzMTA3MiBieXRlcykKVURQLUxpdGUgaGFzaCB0YWJsZSBlbnRyaWVzOiA0
MDk2IChvcmRlcjogNSwgMTMxMDcyIGJ5dGVzKQpORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFt
aWx5IDEKUlBDOiBSZWdpc3RlcmVkIG5hbWVkIFVOSVggc29ja2V0IHRyYW5zcG9ydCBtb2R1bGUu
ClJQQzogUmVnaXN0ZXJlZCB1ZHAgdHJhbnNwb3J0IG1vZHVsZS4KUlBDOiBSZWdpc3RlcmVkIHRj
cCB0cmFuc3BvcnQgbW9kdWxlLgpSUEM6IFJlZ2lzdGVyZWQgdGNwIE5GU3Y0LjEgYmFja2NoYW5u
ZWwgdHJhbnNwb3J0IG1vZHVsZS4KVHJ5aW5nIHRvIHVucGFjayByb290ZnMgaW1hZ2UgYXMgaW5p
dHJhbWZzLi4uCnJvb3RmcyBpbWFnZSBpcyBub3QgaW5pdHJhbWZzIChubyBjcGlvIG1hZ2ljKTsg
bG9va3MgbGlrZSBhbiBpbml0cmQKRnJlZWluZyBpbml0cmQgbWVtb3J5OiAzMDM1MksgKGMwMDAw
MDAwMmUyNWIwMDAgLSBjMDAwMDAwMDJmZmZmMDAwKQphdWRpdDogaW5pdGlhbGl6aW5nIG5ldGxp
bmsgc29ja2V0IChkaXNhYmxlZCkKdHlwZT0yMDAwIGF1ZGl0KDEuMzU1OjEpOiBpbml0aWFsaXpl
ZApIdWdlVExCIHJlZ2lzdGVyZWQgMSBNQiBwYWdlIHNpemUsIHByZS1hbGxvY2F0ZWQgMCBwYWdl
cwpIdWdlVExCIHJlZ2lzdGVyZWQgNCBNQiBwYWdlIHNpemUsIHByZS1hbGxvY2F0ZWQgMCBwYWdl
cwpIdWdlVExCIHJlZ2lzdGVyZWQgMTYgTUIgcGFnZSBzaXplLCBwcmUtYWxsb2NhdGVkIDAgcGFn
ZXMKSHVnZVRMQiByZWdpc3RlcmVkIDY0IE1CIHBhZ2Ugc2l6ZSwgcHJlLWFsbG9jYXRlZCAwIHBh
Z2VzCkh1Z2VUTEIgcmVnaXN0ZXJlZCAyNTYgTUIgcGFnZSBzaXplLCBwcmUtYWxsb2NhdGVkIDAg
cGFnZXMKSHVnZVRMQiByZWdpc3RlcmVkIDEgR0IgcGFnZSBzaXplLCBwcmUtYWxsb2NhdGVkIDAg
cGFnZXMKTkZTOiBSZWdpc3RlcmluZyB0aGUgaWRfcmVzb2x2ZXIga2V5IHR5cGUKS2V5IHR5cGUg
aWRfcmVzb2x2ZXIgcmVnaXN0ZXJlZApLZXkgdHlwZSBpZF9sZWdhY3kgcmVnaXN0ZXJlZApOVEZT
IGRyaXZlciAyLjEuMzAgW0ZsYWdzOiBSL09dLgpqZmZzMjogdmVyc2lvbiAyLjIuIChOQU5EKSDv
v73CqSAyMDAxLTIwMDYgUmVkIEhhdCwgSW5jLgptc2dtbmkgaGFzIGJlZW4gc2V0IHRvIDExNzc3
CkJsb2NrIGxheWVyIFNDU0kgZ2VuZXJpYyAoYnNnKSBkcml2ZXIgdmVyc2lvbiAwLjQgbG9hZGVk
IChtYWpvciAyNTEpCmlvIHNjaGVkdWxlciBub29wIHJlZ2lzdGVyZWQKaW8gc2NoZWR1bGVyIGRl
YWRsaW5lIHJlZ2lzdGVyZWQKaW8gc2NoZWR1bGVyIGNmcSByZWdpc3RlcmVkIChkZWZhdWx0KQpT
ZXJpYWw6IDgyNTAvMTY1NTAgZHJpdmVyLCA0IHBvcnRzLCBJUlEgc2hhcmluZyBlbmFibGVkCnNl
cmlhbDgyNTAuMDogdHR5UzAgYXQgTU1JTyAweGZmZTExYzUwMCAoaXJxID0gMzYsIGJhc2VfYmF1
ZCA9IDIyOTE2NjY2KSBpcyBhIDE2NTUwQQpjb25zb2xlIFt0dHlTMF0gZW5hYmxlZCwgYm9vdGNv
bnNvbGUgZGlzYWJsZWQKY29uc29sZSBbdHR5UzBdIGVuYWJsZWQsIGJvb3Rjb25zb2xlIGRpc2Fi
bGVkCnNlcmlhbDgyNTAuMDogdHR5UzEgYXQgTU1JTyAweGZmZTExYzYwMCAoaXJxID0gMzYsIGJh
c2VfYmF1ZCA9IDIyOTE2NjY2KSBpcyBhIDE2NTUwQQpzZXJpYWw4MjUwLjA6IHR0eVMyIGF0IE1N
SU8gMHhmZmUxMWQ1MDAgKGlycSA9IDM3LCBiYXNlX2JhdWQgPSAyMjkxNjY2NikgaXMgYSAxNjU1
MEEKc2VyaWFsODI1MC4wOiB0dHlTMyBhdCBNTUlPIDB4ZmZlMTFkNjAwIChpcnEgPSAzNywgYmFz
ZV9iYXVkID0gMjI5MTY2NjYpIGlzIGEgMTY1NTBBCmVQQVBSIGh5cGVydmlzb3IgYnl0ZSBjaGFu
bmVsIGRyaXZlcgpicmQ6IG1vZHVsZSBsb2FkZWQKbG9vcDogbW9kdWxlIGxvYWRlZApyYmQ6IGxv
YWRlZCByYmQgKHJhZG9zIGJsb2NrIGRldmljZSkKTG9hZGluZyBpU0NTSSB0cmFuc3BvcnQgY2xh
c3MgdjIuMC04NzAuCmlzY3NpOiByZWdpc3RlcmVkIHRyYW5zcG9ydCAodGNwKQptcHQyc2FzIHZl
cnNpb24gMTYuMTAwLjAwLjAwIGxvYWRlZAptcHQzc2FzIHZlcnNpb24gMDIuMTAwLjAwLjAwIGxv
YWRlZApzdDogVmVyc2lvbiAyMDEwMTIxOSwgZml4ZWQgYnVmc2l6ZSAzMjc2OCwgcy9nIHNlZ3Mg
MjU2CmZzbC1zYXRhIGZmZTIyMDAwMC5zYXRhOiBTYXRhIEZTTCBQbGF0Zm9ybS9DU0IgRHJpdmVy
IGluaXQKc2NzaTAgOiBzYXRhX2ZzbAphdGExOiBTQVRBIG1heCBVRE1BLzEzMyBpcnEgNjgKZnNs
LXNhdGEgZmZlMjIxMDAwLnNhdGE6IFNhdGEgRlNMIFBsYXRmb3JtL0NTQiBEcml2ZXIgaW5pdApz
Y3NpMSA6IHNhdGFfZnNsCmF0YTI6IFNBVEEgbWF4IFVETUEvMTMzIGlycSA2OQpmZTgwMDAwMDAu
bm9yOiBGb3VuZCAxIHgxNiBkZXZpY2VzIGF0IDB4MCBpbiAxNi1iaXQgYmFuay4gTWFudWZhY3R1
cmVyIElEIDB4MDAwMDAxIENoaXAgSUQgMHgwMDI4MDEKQW1kL0Z1aml0c3UgRXh0ZW5kZWQgUXVl
cnkgVGFibGUgYXQgMHgwMDQwCiAgQW1kL0Z1aml0c3UgRXh0ZW5kZWQgUXVlcnkgdmVyc2lvbiAx
LjUuCm51bWJlciBvZiBDRkkgY2hpcHM6IDEKT05GSSBwYXJhbSBwYWdlIDAgdmFsaWQKT05GSSBm
bGFzaCBkZXRlY3RlZApOQU5EIGRldmljZTogTWFudWZhY3R1cmVyIElEOiAweDJjLCBDaGlwIElE
OiAweDQ4IChNaWNyb24gTVQyOUYxNkcwOEFCQUJBV1ApLCAyMDQ4TWlCLCBwYWdlIHNpemU6IDQw
OTYsIE9PQiBzaXplOiAyMjQKQmFkIGJsb2NrIHRhYmxlIGZvdW5kIGF0IHBhZ2UgNTI0MTYwLCB2
ZXJzaW9uIDB4MDEKQmFkIGJsb2NrIHRhYmxlIGZvdW5kIGF0IHBhZ2UgNTI0MDMyLCB2ZXJzaW9u
IDB4MDEKZnNsLGlmYy1uYW5kIGZmZjgwMDAwMC5uYW5kOiBJRkMgTkFORCBkZXZpY2UgYXQgMHhm
ZmY4MDAwMDAsIGJhbmsgMQpmc2xfZXNwaSBmZmUxMTAwMDAuc3BpOiBtYXN0ZXIgaXMgdW5xdWV1
ZWQsIHRoaXMgaXMgZGVwcmVjYXRlZAptMjVwODAgc3BpMzI3NjYuMDogdW5yZWNvZ25pemVkIEpF
REVDIGlkIGZmZmZmZgpmc2xfZXNwaSBmZmUxMTAwMDAuc3BpOiBhdCAweDgwMDAwODAwODAzZTgw
MDAgKGlycSA9IDUzKQpsaWJwaHk6IEZpeGVkIE1ESU8gQnVzOiBwcm9iZWQKdHVuOiBVbml2ZXJz
YWwgVFVOL1RBUCBkZXZpY2UgZHJpdmVyLCAxLjYKdHVuOiAoQykgMTk5OS0yMDA0IE1heCBLcmFz
bnlhbnNreSA8bWF4a0BxdWFsY29tbS5jb20+CmxpYnBoeTogRnJlZXNjYWxlIFhHTUFDIE1ESU8g
QnVzOiBwcm9iZWQKbGlicGh5OiBGcmVlc2NhbGUgWEdNQUMgTURJTyBCdXM6IHByb2JlZApsaWJw
aHk6IEZyZWVzY2FsZSBYR01BQyBNRElPIEJ1czogcHJvYmVkCmxpYnBoeTogRnJlZXNjYWxlIFhH
TUFDIE1ESU8gQnVzOiBwcm9iZWQKbGlicGh5OiBGcmVlc2NhbGUgWEdNQUMgTURJTyBCdXM6IHBy
b2JlZApsaWJwaHk6IEZyZWVzY2FsZSBYR01BQyBNRElPIEJ1czogcHJvYmVkCmxpYnBoeTogRnJl
ZXNjYWxlIFhHTUFDIE1ESU8gQnVzOiBwcm9iZWQKbGlicGh5OiBGcmVlc2NhbGUgWEdNQUMgTURJ
TyBCdXM6IHByb2JlZApsaWJwaHk6IEZyZWVzY2FsZSBYR01BQyBNRElPIEJ1czogcHJvYmVkCmxp
YnBoeTogRnJlZXNjYWxlIFhHTUFDIE1ESU8gQnVzOiBwcm9iZWQKbGlicGh5OiBGcmVlc2NhbGUg
WEdNQUMgTURJTyBCdXM6IHByb2JlZApsaWJwaHk6IEZyZWVzY2FsZSBYR01BQyBNRElPIEJ1czog
cHJvYmVkCmxpYnBoeTogRnJlZXNjYWxlIFhHTUFDIE1ESU8gQnVzOiBwcm9iZWQKbGlicGh5OiBG
cmVlc2NhbGUgWEdNQUMgTURJTyBCdXM6IHByb2JlZApsaWJwaHk6IEZyZWVzY2FsZSBYR01BQyBN
RElPIEJ1czogcHJvYmVkCmxpYnBoeTogRnJlZXNjYWxlIFhHTUFDIE1ESU8gQnVzOiBwcm9iZWQK
bGlicGh5OiBGcmVlc2NhbGUgWEdNQUMgTURJTyBCdXM6IHByb2JlZApsaWJwaHk6IEZyZWVzY2Fs
ZSBYR01BQyBNRElPIEJ1czogcHJvYmVkCmNwdTUvNTogPiBXQVJOSU5HIChGTSkgW0NQVTA1LCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZm1hbi9QZXJpcGhlcmFscy9GTS9mbS5jOjM1
MjMgRk1fSW5pdF06IApjcHU1LzU6IEhhY2s6IE5vIEZNIHJlc2V0IQpjcHU1LzU6IApjcHU1LzU6
ID4gV0FSTklORyAoRk0pIFtDUFUwNSwgZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2Zt
YW4vUGVyaXBoZXJhbHMvRk0vZm0uYzozNTIzIEZNX0luaXRdOiAKY3B1NS81OiBIYWNrOiBObyBG
TSByZXNldCEKY3B1NS81OiAKRnJlZXNjYWxlIEZNIG1vZHVsZSAoRmViIDI0IDIwMTU6MjA6MTk6
MTMpLCBGTUQgQVBJIHZlcnNpb24gMjEuMS4wCkZyZWVzY2FsZSBGTSBQb3J0cyBtb2R1bGUgKEZl
YiAyNCAyMDE1OjIwOjE5OjE0KQpkcGFhX2RlYnVnZnM6IEZTTCBEUEFBIEV0aGVybmV0IGRlYnVn
ZnMgZW50cmllcyAoKQpkcGFhX2dlbmVyaWNfZGVidWdmczogRlNMIERQQUEgRXRoZXJuZXQgZGVi
dWdmcyBlbnRyaWVzICgpCmZzbF9tYWM6IGZzbF9tYWM6IEZTTCBGTWFuIE1BQyBBUEkgYmFzZWQg
ZHJpdmVyICgpCmZzbF9tYWMgZmZlNGUwMDAwLmV0aGVybmV0OiBGTWFuIE1FTUFDCmZzbF9tYWMg
ZmZlNGUwMDAwLmV0aGVybmV0OiBGTWFuIE1BQyBhZGRyZXNzOiAwMDoxMDpmMzo0MTozNTpkNApm
c2xfbWFjIGZmZTRlMjAwMC5ldGhlcm5ldDogRk1hbiBNRU1BQwpmc2xfbWFjIGZmZTRlMjAwMC5l
dGhlcm5ldDogRk1hbiBNQUMgYWRkcmVzczogMDA6MTA6ZjM6NDE6MzU6ZDUKZnNsX21hYyBmZmU0
ZTQwMDAuZXRoZXJuZXQ6IEZNYW4gTUVNQUMKZnNsX21hYyBmZmU0ZTQwMDAuZXRoZXJuZXQ6IEZN
YW4gTUFDIGFkZHJlc3M6IDAwOjEwOmYzOjQxOjM1OmQ2CmZzbF9tYWMgZmZlNGU2MDAwLmV0aGVy
bmV0OiBGTWFuIE1FTUFDCmZzbF9tYWMgZmZlNGU2MDAwLmV0aGVybmV0OiBGTWFuIE1BQyBhZGRy
ZXNzOiAwMDoxMDpmMzo0MTozNTpkNwpmc2xfbWFjIGZmZTRmMDAwMC5ldGhlcm5ldDogb2ZfZ2V0
X21hY19hZGRyZXNzKC9zb2NAZmZlMDAwMDAwL2ZtYW5ANDAwMDAwL2V0aGVybmV0QGYwMDAwKSBm
YWlsZWQKZnNsX21hYzogcHJvYmUgb2YgZmZlNGYwMDAwLmV0aGVybmV0IGZhaWxlZCB3aXRoIGVy
cm9yIC0yMgpmc2xfbWFjIGZmZTRmMjAwMC5ldGhlcm5ldDogb2ZfZ2V0X21hY19hZGRyZXNzKC9z
b2NAZmZlMDAwMDAwL2ZtYW5ANDAwMDAwL2V0aGVybmV0QGYyMDAwKSBmYWlsZWQKZnNsX21hYzog
cHJvYmUgb2YgZmZlNGYyMDAwLmV0aGVybmV0IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpmc2xfbWFj
IGZmZTVlMDAwMC5ldGhlcm5ldDogb2ZfZ2V0X21hY19hZGRyZXNzKC9zb2NAZmZlMDAwMDAwL2Zt
YW5ANTAwMDAwL2V0aGVybmV0QGUwMDAwKSBmYWlsZWQKZnNsX21hYzogcHJvYmUgb2YgZmZlNWUw
MDAwLmV0aGVybmV0IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpmc2xfbWFjIGZmZTVlMjAwMC5ldGhl
cm5ldDogb2ZfZ2V0X21hY19hZGRyZXNzKC9zb2NAZmZlMDAwMDAwL2ZtYW5ANTAwMDAwL2V0aGVy
bmV0QGUyMDAwKSBmYWlsZWQKZnNsX21hYzogcHJvYmUgb2YgZmZlNWUyMDAwLmV0aGVybmV0IGZh
aWxlZCB3aXRoIGVycm9yIC0yMgpmc2xfbWFjIGZmZTVlNDAwMC5ldGhlcm5ldDogb2ZfZ2V0X21h
Y19hZGRyZXNzKC9zb2NAZmZlMDAwMDAwL2ZtYW5ANTAwMDAwL2V0aGVybmV0QGU0MDAwKSBmYWls
ZWQKZnNsX21hYzogcHJvYmUgb2YgZmZlNWU0MDAwLmV0aGVybmV0IGZhaWxlZCB3aXRoIGVycm9y
IC0yMgpmc2xfbWFjIGZmZTVlNjAwMC5ldGhlcm5ldDogb2ZfZ2V0X21hY19hZGRyZXNzKC9zb2NA
ZmZlMDAwMDAwL2ZtYW5ANTAwMDAwL2V0aGVybmV0QGU2MDAwKSBmYWlsZWQKZnNsX21hYzogcHJv
YmUgb2YgZmZlNWU2MDAwLmV0aGVybmV0IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpmc2xfbWFjIGZm
ZTVmMDAwMC5ldGhlcm5ldDogb2ZfZ2V0X21hY19hZGRyZXNzKC9zb2NAZmZlMDAwMDAwL2ZtYW5A
NTAwMDAwL2V0aGVybmV0QGYwMDAwKSBmYWlsZWQKZnNsX21hYzogcHJvYmUgb2YgZmZlNWYwMDAw
LmV0aGVybmV0IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpmc2xfbWFjIGZmZTVmMjAwMC5ldGhlcm5l
dDogb2ZfZ2V0X21hY19hZGRyZXNzKC9zb2NAZmZlMDAwMDAwL2ZtYW5ANTAwMDAwL2V0aGVybmV0
QGYyMDAwKSBmYWlsZWQKZnNsX21hYzogcHJvYmUgb2YgZmZlNWYyMDAwLmV0aGVybmV0IGZhaWxl
ZCB3aXRoIGVycm9yIC0yMgpmc2xfZHBhOiBGU0wgRFBBQSBFdGhlcm5ldCBkcml2ZXIgKCkKZnNs
X2RwYTogZnNsX2RwYTogUHJvYmVkIGludGVyZmFjZSBldGgwCmZzbF9kcGE6IGZzbF9kcGE6IFBy
b2JlZCBpbnRlcmZhY2UgZXRoMQpmc2xfZHBhOiBmc2xfZHBhOiBQcm9iZWQgaW50ZXJmYWNlIGV0
aDIKZnNsX2RwYTogZnNsX2RwYTogUHJvYmVkIGludGVyZmFjZSBldGgzCmZzbF9kcGEgZXRoZXJu
ZXQuMjQ6IGRldl9nZXRfZHJ2ZGF0YShmZmU0ZjAwMDAuZXRoZXJuZXQpIGZhaWxlZApmc2xfZHBh
OiBwcm9iZSBvZiBldGhlcm5ldC4yNCBmYWlsZWQgd2l0aCBlcnJvciAtMjIKZnNsX2RwYSBldGhl
cm5ldC4yNTogZGV2X2dldF9kcnZkYXRhKGZmZTRmMjAwMC5ldGhlcm5ldCkgZmFpbGVkCmZzbF9k
cGE6IHByb2JlIG9mIGV0aGVybmV0LjI1IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpmc2xfZHBhIGV0
aGVybmV0LjI2OiBkZXZfZ2V0X2RydmRhdGEoZmZlNWUwMDAwLmV0aGVybmV0KSBmYWlsZWQKZnNs
X2RwYTogcHJvYmUgb2YgZXRoZXJuZXQuMjYgZmFpbGVkIHdpdGggZXJyb3IgLTIyCmZzbF9kcGEg
ZXRoZXJuZXQuMjc6IGRldl9nZXRfZHJ2ZGF0YShmZmU1ZTIwMDAuZXRoZXJuZXQpIGZhaWxlZApm
c2xfZHBhOiBwcm9iZSBvZiBldGhlcm5ldC4yNyBmYWlsZWQgd2l0aCBlcnJvciAtMjIKZnNsX2Rw
YSBldGhlcm5ldC4yODogZGV2X2dldF9kcnZkYXRhKGZmZTVlNDAwMC5ldGhlcm5ldCkgZmFpbGVk
CmZzbF9kcGE6IHByb2JlIG9mIGV0aGVybmV0LjI4IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpmc2xf
ZHBhIGV0aGVybmV0LjI5OiBkZXZfZ2V0X2RydmRhdGEoZmZlNWU2MDAwLmV0aGVybmV0KSBmYWls
ZWQKZnNsX2RwYTogcHJvYmUgb2YgZXRoZXJuZXQuMjkgZmFpbGVkIHdpdGggZXJyb3IgLTIyCmZz
bF9kcGEgZXRoZXJuZXQuMzA6IGRldl9nZXRfZHJ2ZGF0YShmZmU1ZjAwMDAuZXRoZXJuZXQpIGZh
aWxlZApmc2xfZHBhOiBwcm9iZSBvZiBldGhlcm5ldC4zMCBmYWlsZWQgd2l0aCBlcnJvciAtMjIK
YXRhMjogTm8gRGV2aWNlIE9SIFBIWVJEWSBjaGFuZ2UsSHN0YXR1cyA9IDB4YTAwMDAwMDAKYXRh
MjogU0FUQSBsaW5rIGRvd24gKFNTdGF0dXMgMTAgU0NvbnRyb2wgMzAwKQphdGExOiBTaWduYXR1
cmUgVXBkYXRlIGRldGVjdGVkIEAgNTA0IG1zZWNzCmZzbF9kcGEgZXRoZXJuZXQuMzE6IGRldl9n
ZXRfZHJ2ZGF0YShmZmU1ZjIwMDAuZXRoZXJuZXQpIGZhaWxlZApmc2xfZHBhOiBwcm9iZSBvZiBl
dGhlcm5ldC4zMSBmYWlsZWQgd2l0aCBlcnJvciAtMjIKZnNsX2RwYV9zaGFyZWQ6IEZTTCBEUEFB
IFNoYXJlZCBFdGhlcm5ldCBkcml2ZXIgKCkKZnNsX2RwYV9wcm94eTogRlNMIERQQUEgUHJveHkg
aW5pdGlhbGl6YXRpb24gZHJpdmVyICgpCmZzbF9vaDogRlNMIEZNYW4gT2ZmbGluZSBQYXJzaW5n
IHBvcnQgZHJpdmVyICgpCmUxMDAwZTogSW50ZWwoUikgUFJPLzEwMDAgTmV0d29yayBEcml2ZXIg
LSAyLjMuMi1rCmUxMDAwZTogQ29weXJpZ2h0KGMpIDE5OTkgLSAyMDEzIEludGVsIENvcnBvcmF0
aW9uLgpmc2wtb2YtZG1hIGZmZTEwMDMwMC5kbWE6IGRtYSBjaGFubmVsIGRtYS11aW8wLTAgaW5p
dGlhbGl6ZWQKZnNsLW9mLWRtYSBmZmUxMDAzMDAuZG1hOiBkbWEgY2hhbm5lbCBkbWEtdWlvMC0x
IGluaXRpYWxpemVkCmZzbC1vZi1kbWEgZmZlMTAwMzAwLmRtYTogZG1hIGNoYW5uZWwgZG1hLXVp
bzAtMiBpbml0aWFsaXplZApmc2wtb2YtZG1hIGZmZTEwMDMwMC5kbWE6IGRtYSBjaGFubmVsIGRt
YS11aW8wLTMgaW5pdGlhbGl6ZWQKZnNsLW9mLWRtYSBmZmUxMDAzMDAuZG1hOiBkbWEgY2hhbm5l
bCBkbWEtdWlvMC00IGluaXRpYWxpemVkCmZzbC1vZi1kbWEgZmZlMTAwMzAwLmRtYTogZG1hIGNo
YW5uZWwgZG1hLXVpbzAtNSBpbml0aWFsaXplZApmc2wtb2YtZG1hIGZmZTEwMDMwMC5kbWE6IGRt
YSBjaGFubmVsIGRtYS11aW8wLTYgaW5pdGlhbGl6ZWQKZnNsLW9mLWRtYSBmZmUxMDAzMDAuZG1h
OiBkbWEgY2hhbm5lbCBkbWEtdWlvMC03IGluaXRpYWxpemVkCmZzbC1vZi1kbWEgZmZlMTAxMzAw
LmRtYTogZG1hIGNoYW5uZWwgZG1hLXVpbzEtMCBpbml0aWFsaXplZApmc2wtb2YtZG1hIGZmZTEw
MTMwMC5kbWE6IGRtYSBjaGFubmVsIGRtYS11aW8xLTEgaW5pdGlhbGl6ZWQKZnNsLW9mLWRtYSBm
ZmUxMDEzMDAuZG1hOiBkbWEgY2hhbm5lbCBkbWEtdWlvMS0yIGluaXRpYWxpemVkCmZzbC1vZi1k
bWEgZmZlMTAxMzAwLmRtYTogZG1hIGNoYW5uZWwgZG1hLXVpbzEtMyBpbml0aWFsaXplZApmc2wt
b2YtZG1hIGZmZTEwMTMwMC5kbWE6IGRtYSBjaGFubmVsIGRtYS11aW8xLTQgaW5pdGlhbGl6ZWQK
ZnNsLW9mLWRtYSBmZmUxMDEzMDAuZG1hOiBkbWEgY2hhbm5lbCBkbWEtdWlvMS01IGluaXRpYWxp
emVkCmZzbC1vZi1kbWEgZmZlMTAxMzAwLmRtYTogZG1hIGNoYW5uZWwgZG1hLXVpbzEtNiBpbml0
aWFsaXplZApmc2wtb2YtZG1hIGZmZTEwMTMwMC5kbWE6IGRtYSBjaGFubmVsIGRtYS11aW8xLTcg
aW5pdGlhbGl6ZWQKZnNsLW9mLWRtYSBmZmUxMDIzMDAuZG1hOiBkbWEgY2hhbm5lbCBkbWEtdWlv
Mi0wIGluaXRpYWxpemVkCmZzbC1vZi1kbWEgZmZlMTAyMzAwLmRtYTogZG1hIGNoYW5uZWwgZG1h
LXVpbzItMSBpbml0aWFsaXplZApmc2wtb2YtZG1hIGZmZTEwMjMwMC5kbWE6IGRtYSBjaGFubmVs
IGRtYS11aW8yLTIgaW5pdGlhbGl6ZWQKZnNsLW9mLWRtYSBmZmUxMDIzMDAuZG1hOiBkbWEgY2hh
bm5lbCBkbWEtdWlvMi0zIGluaXRpYWxpemVkCmZzbC1vZi1kbWEgZmZlMTAyMzAwLmRtYTogZG1h
IGNoYW5uZWwgZG1hLXVpbzItNCBpbml0aWFsaXplZApmc2wtb2YtZG1hIGZmZTEwMjMwMC5kbWE6
IGRtYSBjaGFubmVsIGRtYS11aW8yLTUgaW5pdGlhbGl6ZWQKZnNsLW9mLWRtYSBmZmUxMDIzMDAu
ZG1hOiBkbWEgY2hhbm5lbCBkbWEtdWlvMi02IGluaXRpYWxpemVkCmZzbC1vZi1kbWEgZmZlMTAy
MzAwLmRtYTogZG1hIGNoYW5uZWwgZG1hLXVpbzItNyBpbml0aWFsaXplZAphdGExOiBTQVRBIGxp
bmsgdXAgMy4wIEdicHMgKFNTdGF0dXMgMTIzIFNDb250cm9sIDMwMCkKYXRhMS4wMDogQVRBLTg6
IFdEQyBXRDUwMDBBWkxYLTAwSzRLQTAsIDgwLjAwQTgwLCBtYXggVURNQS8xMzMKYXRhMS4wMDog
OTc2NzczMTY4IHNlY3RvcnMsIG11bHRpIDA6IExCQTQ4IE5DUSAoZGVwdGggMTYvMzIpCmF0YTEu
MDA6IGNvbmZpZ3VyZWQgZm9yIFVETUEvMTMzCnNjc2kgMDowOjA6MDogRGlyZWN0LUFjY2VzcyAg
ICAgQVRBICAgICAgV0RDIFdENTAwMEFaTFgtMCA4MC4wIFBROiAwIEFOU0k6IDUKc2QgMDowOjA6
MDogW3NkYV0gOTc2NzczMTY4IDUxMi1ieXRlIGxvZ2ljYWwgYmxvY2tzOiAoNTAwIEdCLzQ2NSBH
aUIpCnNkIDA6MDowOjA6IFtzZGFdIDQwOTYtYnl0ZSBwaHlzaWNhbCBibG9ja3MKc2QgMDowOjA6
MDogW3NkYV0gV3JpdGUgUHJvdGVjdCBpcyBvZmYKc2QgMDowOjA6MDogW3NkYV0gV3JpdGUgY2Fj
aGU6IGVuYWJsZWQsIHJlYWQgY2FjaGU6IGVuYWJsZWQsIGRvZXNuJ3Qgc3VwcG9ydCBEUE8gb3Ig
RlVBCnNkIDA6MDowOjA6IEF0dGFjaGVkIHNjc2kgZ2VuZXJpYyBzZzAgdHlwZSAwCiBzZGE6IHNk
YTEKc2QgMDowOjA6MDogW3NkYV0gQXR0YWNoZWQgU0NTSSBkaXNrCmVoY2lfaGNkOiBVU0IgMi4w
ICdFbmhhbmNlZCcgSG9zdCBDb250cm9sbGVyIChFSENJKSBEcml2ZXIKZWhjaS1wY2k6IEVIQ0kg
UENJIHBsYXRmb3JtIGRyaXZlcgpmc2wtZWhjaSBmc2wtZWhjaS4wOiBGcmVlc2NhbGUgT24tQ2hp
cCBFSENJIEhvc3QgQ29udHJvbGxlcgpmc2wtZWhjaSBmc2wtZWhjaS4wOiBuZXcgVVNCIGJ1cyBy
ZWdpc3RlcmVkLCBhc3NpZ25lZCBidXMgbnVtYmVyIDEKZnNsLWVoY2kgZnNsLWVoY2kuMDogaXJx
IDQ0LCBpbyBtZW0gMHhmZmUyMTAwMDAKZnNsLWVoY2kgZnNsLWVoY2kuMDogVVNCIDIuMCBzdGFy
dGVkLCBFSENJIDEuMDAKaHViIDEtMDoxLjA6IFVTQiBodWIgZm91bmQKaHViIDEtMDoxLjA6IDEg
cG9ydCBkZXRlY3RlZApmc2wtZWhjaSBmc2wtZWhjaS4xOiBGcmVlc2NhbGUgT24tQ2hpcCBFSENJ
IEhvc3QgQ29udHJvbGxlcgpmc2wtZWhjaSBmc2wtZWhjaS4xOiBuZXcgVVNCIGJ1cyByZWdpc3Rl
cmVkLCBhc3NpZ25lZCBidXMgbnVtYmVyIDIKZnNsLWVoY2kgZnNsLWVoY2kuMTogaXJxIDQ1LCBp
byBtZW0gMHhmZmUyMTEwMDAKZnNsLWVoY2kgZnNsLWVoY2kuMTogVVNCIDIuMCBzdGFydGVkLCBF
SENJIDEuMDAKaHViIDItMDoxLjA6IFVTQiBodWIgZm91bmQKaHViIDItMDoxLjA6IDEgcG9ydCBk
ZXRlY3RlZAp1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIHVzYi1zdG9y
YWdlCmkyYyAvZGV2IGVudHJpZXMgZHJpdmVyCm1wYy1pMmMgZmZlMTE4MDAwLmkyYzogdGltZW91
dCAxMDAwMDAwIHVzCnJ0Yy1kczEzNzQgMC0wMDY4OiBydGMgY29yZTogcmVnaXN0ZXJlZCBkczEz
NzQgYXMgcnRjMAptcGMtaTJjIGZmZTExODEwMC5pMmM6IHRpbWVvdXQgMTAwMDAwMCB1cwptcGMt
aTJjIGZmZTExOTAwMC5pMmM6IHRpbWVvdXQgMTAwMDAwMCB1cwptcGMtaTJjIGZmZTExOTEwMC5p
MmM6IHRpbWVvdXQgMTAwMDAwMCB1cwpod21vbl92aWQ6IFVua25vd24gVlJNIHZlcnNpb24gb2Yg
eW91ciBDUFUKdzgzNzkzIDAtMDAyZjogUmVnaXN0ZXJlZCB3YXRjaGRvZyBjaGFyZGV2IG1ham9y
IDEwLCBtaW5vcjogMTMwCm1kOiByYWlkNiBwZXJzb25hbGl0eSByZWdpc3RlcmVkIGZvciBsZXZl
bCA2Cm1kOiByYWlkNSBwZXJzb25hbGl0eSByZWdpc3RlcmVkIGZvciBsZXZlbCA1Cm1kOiByYWlk
NCBwZXJzb25hbGl0eSByZWdpc3RlcmVkIGZvciBsZXZlbCA0CkZyZWVzY2FsZShSKSBNUEM4NXh4
IEVEQUMgZHJpdmVyLCAoQykgMjAwNiBNb250YXZpc3RhIFNvZnR3YXJlCkVEQUMgTUMwOiBHaXZp
bmcgb3V0IGRldmljZSB0byAnTVBDODV4eF9lZGFjJyAnbXBjODV4eF9tY19lcnInOiBERVYgbXBj
ODV4eF9tY19lcnIKTVBDODV4eF9lZGFjIGFjcXVpcmVkIGlycSA0OTAgZm9yIE1DCk1QQzg1eHhf
ZWRhYyBNQyBlcnIgcmVnaXN0ZXJlZApFREFDIE1DMTogR2l2aW5nIG91dCBkZXZpY2UgdG8gJ01Q
Qzg1eHhfZWRhYycgJ21wYzg1eHhfbWNfZXJyJzogREVWIG1wYzg1eHhfbWNfZXJyCk1QQzg1eHhf
ZWRhYyBhY3F1aXJlZCBpcnEgNDg5IGZvciBNQwpNUEM4NXh4X2VkYWMgTUMgZXJyIHJlZ2lzdGVy
ZWQKRURBQyBNQzI6IEdpdmluZyBvdXQgZGV2aWNlIHRvICdNUEM4NXh4X2VkYWMnICdtcGM4NXh4
X21jX2Vycic6IERFViBtcGM4NXh4X21jX2VycgpNUEM4NXh4X2VkYWMgYWNxdWlyZWQgaXJxIDQ4
OCBmb3IgTUMKTVBDODV4eF9lZGFjIE1DIGVyciByZWdpc3RlcmVkCnNkaGNpOiBTZWN1cmUgRGln
aXRhbCBIb3N0IENvbnRyb2xsZXIgSW50ZXJmYWNlIGRyaXZlcgpzZGhjaTogQ29weXJpZ2h0KGMp
IFBpZXJyZSBPc3NtYW4Kc2RoY2ktcGx0Zm06IFNESENJIHBsYXRmb3JtIGFuZCBPRiBkcml2ZXIg
aGVscGVyCm1tYzA6IFNESENJIGNvbnRyb2xsZXIgb24gZmZlMTE0MDAwLnNkaGMgW2ZmZTExNDAw
MC5zZGhjXSB1c2luZyBBRE1BCnBsYXRmb3JtIGNhYW1fcWkuMDogTGludXggQ0FBTSBRdWV1ZSBJ
L0YgZHJpdmVyIGluaXRpYWxpc2VkCmNhYW0gZmZlMzAwMDAwLmNyeXB0bzogSW5zdGFudGlhdGVk
IFJORzQgU0gwCm1tYzA6IG5ldyBoaWdoIHNwZWVkIFNESEMgY2FyZCBhdCBhZGRyZXNzIGIzNjgK
Y2FhbSBmZmUzMDAwMDAuY3J5cHRvOiBJbnN0YW50aWF0ZWQgUk5HNCBTSDEKY2FhbSBmZmUzMDAw
MDAuY3J5cHRvOiBkZXZpY2UgSUQgPSAweDBhMWMwMjAwMDAwMDAwMDAgKEVyYSA2KQpjYWFtIGZm
ZTMwMDAwMC5jcnlwdG86IGpvYiByaW5ncyA9IDQsIHFpID0gMQpjYWFtIGFsZ29yaXRobXMgcmVn
aXN0ZXJlZCBpbiAvcHJvYy9jcnlwdG8KY2FhbV9qciBmZmUzMDEwMDAuanI6IHJlZ2lzdGVyaW5n
IHJuZy1jYWFtCmNhYW0gZmZlMzAwMDAwLmNyeXB0bzogZnNsLHNlYy12NS4wIGFsZ29yaXRobXMg
cmVnaXN0ZXJlZCBpbiAvcHJvYy9jcnlwdG8KcGxhdGZvcm0gY2FhbV9xaS4wOiBmc2wsc2VjLXY1
LjAgYWxnb3JpdGhtcyByZWdpc3RlcmVkIGluIC9wcm9jL2NyeXB0bwp1c2Jjb3JlOiByZWdpc3Rl
cmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIHVzYmhpZAp1c2JoaWQ6IFVTQiBISUQgY29yZSBkcml2
ZXIKRnJlZXNjYWxlIFVTRFBBQSBwcm9jZXNzIGRyaXZlcgpmc2wtdXNkcGFhOiBubyByZWdpb24g
Zm91bmQKRnJlZXNjYWxlIFVTRFBBQSBwcm9jZXNzIElSUSBkcml2ZXIKZnNsLXBtZSBmZmUzMTYw
MDAucG1lOiB2ZXI6IDB4MDAxMDAyMDEKRnJlZXNjYWxlIHBtZTIgZGIgZHJpdmVyCm1tY2JsazA6
IG1tYzA6YjM2OCBTREMgICA3LjQ1IEdpQiAKRnJlZXNjYWxlIHBtZTIgc2NhbiBkcml2ZXIKIG1t
Y2JsazA6IHAxCmZzbC1wbWUyLXNjYW46IGRldmljZSBwbWVfc2NhbiByZWdpc3RlcmVkCmZzbC1v
Zi1ybWFuIGZmZTFlMDAwMC5ybWFuOiBPZi1kZXZpY2UgL3NvY0BmZmUwMDAwMDAvcm1hbkAxZTAw
MDAgaW5pdGlhbGl6ZWQKZnNsLW9mLXJtYW4gZmZlMWUwMDAwLnJtYW46IFJNYW4gaW5ib3VuZCBi
bG9jazAgaW5pdGlhbGl6ZWQuCmZzbC1vZi1ybWFuIGZmZTFlMDAwMC5ybWFuOiBSTWFuIGluYm91
bmQgYmxvY2sxIGluaXRpYWxpemVkLgpmc2wtb2Ytcm1hbiBmZmUxZTAwMDAucm1hbjogUk1hbiBp
bmJvdW5kIGJsb2NrMiBpbml0aWFsaXplZC4KZnNsLW9mLXJtYW4gZmZlMWUwMDAwLnJtYW46IFJN
YW4gaW5ib3VuZCBibG9jazMgaW5pdGlhbGl6ZWQuCmRjZV9zeXNfaW5pdCBkb25lIQpmc2wtZGNl
IGZmZTMxMjAwMC5kY2U6IERldmljZSAvc29jQGZmZTAwMDAwMC9kY2VAMzEyMDAwIGluaXRpYWxp
emVkIHZlcjogMHgwYWYwMDEwMQoKRnJlZXNjYWxlIGh5cGVydmlzb3IgbWFuYWdlbWVudCBkcml2
ZXIKZnNsLWh2OiBubyBoeXBlcnZpc29yIGZvdW5kCmlwaXA6IElQdjQgb3ZlciBJUHY0IHR1bm5l
bGluZyBkcml2ZXIKVENQOiBjdWJpYyByZWdpc3RlcmVkCkluaXRpYWxpemluZyBYRlJNIG5ldGxp
bmsgc29ja2V0Ck5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTAKc2l0OiBJUHY2IG92
ZXIgSVB2NCB0dW5uZWxpbmcgZHJpdmVyCk5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkg
MTcKTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAxNQo4MDIxcTogODAyLjFRIFZMQU4g
U3VwcG9ydCB2MS44CktleSB0eXBlIGRuc19yZXNvbHZlciByZWdpc3RlcmVkCktleSB0eXBlIGNl
cGggcmVnaXN0ZXJlZApsaWJjZXBoOiBsb2FkZWQgKG1vbi9vc2QgcHJvdG8gMTUvMjQpCm9wZW52
c3dpdGNoOiBPcGVuIHZTd2l0Y2ggc3dpdGNoaW5nIGRhdGFwYXRoCmZzbF9kcGFfbWFjbGVzczog
RlNMIERQQUEgTUFDbGVzcyBFdGhlcm5ldCBkcml2ZXIgKCkKZnNsX2RwYV9nZW5lcmljOiBGU0wg
RFBBQSBHZW5lcmljIEV0aGVybmV0IGRyaXZlciAoKQpydGMtZHMxMzc0IDAtMDA2ODogc2V0dGlu
ZyBzeXN0ZW0gY2xvY2sgdG8gMjAxNS0wNC0xMSAwMjo0NzozMiBVVEMgKDE0Mjg3MjA0NTIpCm1k
OiBXYWl0aW5nIGZvciBhbGwgZGV2aWNlcyB0byBiZSBhdmFpbGFibGUgYmVmb3JlIGF1dG9kZXRl
Y3QKbWQ6IElmIHlvdSBkb24ndCB1c2UgcmFpZCwgdXNlIHJhaWQ9bm9hdXRvZGV0ZWN0Cm1kOiBB
dXRvZGV0ZWN0aW5nIFJBSUQgYXJyYXlzLgptZDogU2Nhbm5lZCAwIGFuZCBhZGRlZCAwIGRldmlj
ZXMuCm1kOiBhdXRvcnVuIC4uLgptZDogLi4uIGF1dG9ydW4gRE9ORS4KUkFNRElTSzogZ3ppcCBp
bWFnZSBmb3VuZCBhdCBibG9jayAwClZGUzogTW91bnRlZCByb290IChleHQyIGZpbGVzeXN0ZW0p
IG9uIGRldmljZSAxOjAuCmRldnRtcGZzOiBtb3VudGVkCkZyZWVpbmcgdW51c2VkIGtlcm5lbCBt
ZW1vcnk6IDMzMksgKGMwMDAwMDAwMDBhY2QwMDAgLSBjMDAwMDAwMDAwYjIwMDAwKQpJTklUOiB2
ZXJzaW9uIDIuODggYm9vdGluZwpTdGFydGluZyB1ZGV2CnVkZXZkWzE2NTBdOiBzdGFydGluZyB2
ZXJzaW9uIDE4MgpTdGFydGluZyBCb290bG9nIGRhZW1vbjogYm9vdGxvZ2Q6IGNhbm5vdCBhbGxv
Y2F0ZSBwc2V1ZG8gdHR5OiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5CmJvb3Rsb2dkLgpQb3B1
bGF0aW5nIGRldiBjYWNoZQpuZXQuaXB2NC5jb25mLmRlZmF1bHQucnBfZmlsdGVyID0gMApuZXQu
aXB2NC5jb25mLmFsbC5ycF9maWx0ZXIgPSAwClJ1bm5pbmcgcG9zdGluc3QgL2V0Yy9ycG0tcG9z
dGluc3RzLzEwMC1zeXN2aW5pdC1pbml0dGFiLi4uClJ1bm5pbmcgcG9zdGluc3QgL2V0Yy9ycG0t
cG9zdGluc3RzLzEwMS11dGlsLWxpbnV4LXJlYWRwcm9maWxlLi4uClJ1bm5pbmcgcG9zdGluc3Qg
L2V0Yy9ycG0tcG9zdGluc3RzLzEwMi1kZWJpYW51dGlscy4uLgpSdW5uaW5nIHBvc3RpbnN0IC9l
dGMvcnBtLXBvc3RpbnN0cy8xMDMtaW5ldHV0aWxzLWluZXRkLi4uClJ1bm5pbmcgcG9zdGluc3Qg
L2V0Yy9ycG0tcG9zdGluc3RzLzEwNC1pbmV0dXRpbHMtdGVsbmV0ZC4uLgpSdW5uaW5nIHBvc3Rp
bnN0IC9ldGMvcnBtLXBvc3RpbnN0cy8xMDUtaW5ldHV0aWxzLXRmdHBkLi4uClJ1bm5pbmcgcG9z
dGluc3QgL2V0Yy9ycG0tcG9zdGluc3RzLzEwNi1pbmV0dXRpbHMtZnRwZC4uLgp1cGRhdGUtcmMu
ZDogL2V0Yy9pbml0LmQvcnVuLXBvc3RpbnN0cyBleGlzdHMgZHVyaW5nIHJjLmQgcHVyZ2UgKGNv
bnRpbnVpbmcpCklOSVQ6IEVudGVyaW5nIHJ1bmxldmVsOiA1CkNvbmZpZ3VyaW5nIG5ldHdvcmsg
aW50ZXJmYWNlcy4uLiBkb25lLgpTdGFydGluZyBzeXN0ZW0gbWVzc2FnZSBidXM6IGRidXMuClN0
YXJ0aW5nIERyb3BiZWFyIFNTSCBzZXJ2ZXI6IEdlbmVyYXRpbmcga2V5LCB0aGlzIG1heSB0YWtl
IGEgd2hpbGUuLi4KUHVibGljIGtleSBwb3J0aW9uIGlzOgpzc2gtcnNhIEFBQUFCM056YUMxeWMy
RUFBQUFEQVFBQkFBQUJBUUNBS0dNUlYzYXJrVnVXemtqZFcwb3dBaDd4ZFdybCtjV3JzWnEvQU9N
eDVLTzFZTkZJVWpPa0VicWJqYldMb3FaWUZOajBYb2h6RXFCeHQrbWlzNkQ1Nkd3elBsYWJkd1Rs
WFpkbTBiQlM3Rk44WXl5dEhqTFJkb2wwOW1EcGhvZ21SdUJCcWhMdVB2WlNZdGtiRENKeGJvallR
bW05b2tleG40L21tCmRWMkhnOEdPRFNUSWEzdGljbTRRbjhpdXBsMUFaTEhjeXo5dlBGZHlFUFZR
eG9ScVl0UzVQL1ltQnp0U1VZb2k1QlJiRVBURWFRZGZXa0prMVo0UkgrM244S1ZpL1ZkdEZ6NzRi
b2hpaTVseVBTMEl2ZmtnMWlVbW44S2hEdkU5U2tkam81cVlsTGtpYjFaRzdaemVJcXArUkt5SnBO
QUpvWmlpclpINXhlTk5aczkgcm9vdEB0NDI0MHJkYgpGaW5nZXJwcmludDogbWQ1IDlhOmNhOmFi
OmZlOmQzOmIyOmQzOmRjOmQ2OjM2OmI4OjQ2OjcxOjYzOmZiOmZjCmRyb3BiZWFyLgpTdGFydGlu
ZyBuZXR3b3JrIGJlbmNobWFyayBzZXJ2ZXI6IG5ldHNlcnZlci4KU3RhcnRpbmcgc3lzdGVtIGxv
ZyBkYWVtb24uLi4wClN0YXJ0aW5nIGtlcm5lbCBsb2cgZGFlbW9uLi4uMApTdGFydGluZyBpbnRl
cm5ldCBzdXBlcnNlcnZlcjogeGluZXRkLgpTdG9wcGluZyBCb290bG9nIGRhZW1vbjogYm9vdGxv
Z2QuCgpQb2t5IChZb2N0byBQcm9qZWN0IFJlZmVyZW5jZSBEaXN0cm8pIDEuNiB0NDI0MHJkYiAv
ZGV2L3R0eVMwCgp0NDI0MHJkYiBsb2dpbjogcm9vdApyb290QHQ0MjQwcmRiOn4jIApyb290QHQ0
MjQwcmRiOn4jIAo=

--001a11c299bcf1fdd005136300d2--
