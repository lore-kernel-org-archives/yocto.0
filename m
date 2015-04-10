Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3D97E009B4; Fri, 10 Apr 2015 11:45:18 -0700 (PDT)
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
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C0FE009E5
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 11:45:07 -0700 (PDT)
Received: by obbeb7 with SMTP id eb7so28082776obb.3
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 11:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e0J8UMHDUZc1D6gBbTXg7m2z11d1BTiODNqxmGFgRrU=;
	b=kyd5ZtW4/J+/mTygCtpZzJy7c49s4m+yQJQoSwfzFodDFL3Wz5+80MZoM/c+JrZ/8k
	JE6EWosxBXkCmiOEPXW08ZvnvhCVO2zv0p6WWh1l4Dy+ybKRH/Yt1j+FgRHjymybolhr
	XSAmYl+rmKNEwMJgbCaYF212ZW/p/Bk502HfJfPX2a4VHsn/k5gRslINdmvYuw6r9e1c
	QduYKWWubhDnpJnfOQzQkmDGaksk2MK5C+XiXaHb/Xezed5K/r8IXpeLprW+b5GG92bI
	SN06eVoRCudDXkvYJrtEAZ0RJW1CnSfQJKlegtyeSZjAoJpC/j4LXQsDjZJELXetjYVS
	VuJg==
MIME-Version: 1.0
X-Received: by 10.182.134.169 with SMTP id pl9mr3744106obb.32.1428691505980;
	Fri, 10 Apr 2015 11:45:05 -0700 (PDT)
Received: by 10.76.24.199 with HTTP; Fri, 10 Apr 2015 11:45:05 -0700 (PDT)
In-Reply-To: <CO2PR0801MB67958D90C7D80310645B6DEEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
References: <CO2PR0801MB679F57E11AA9AEB84165A8AEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
	<CAKP9-ShNa-Rw-7ibSq-TXk3Cqv79c=3xRMNR-+RZzWW_7OrMSg@mail.gmail.com>
	<CO2PR0801MB679111DB731916FD334AD70EEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
	<CAKP9-Siq-u_qh_EFchXmQVERi2kbgbpBX+tW2SV+20zB6+fQCw@mail.gmail.com>
	<CO2PR0801MB67958D90C7D80310645B6DEEEFA0@CO2PR0801MB679.namprd08.prod.outlook.com>
Date: Fri, 10 Apr 2015 12:45:05 -0600
Message-ID: <CAKP9-SgzafokH0MR5Kmjwqa5zB4fhbRvaSaqSapCJfPwweEFKg@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Apr 2015 18:45:18 -0000
Content-Type: multipart/alternative; boundary=001a11c299bcb52a3205136329bf

--001a11c299bcb52a3205136329bf
Content-Type: text/plain; charset=ISO-8859-1

Sorry we don't use the UBIFS.

On Fri, Apr 10, 2015 at 12:41 PM, Leo Tao <Leo.Tao@flextronics.com> wrote:

>  Hi  Sandeep,
>
> From the log file,  I can see you are booting from Nor Flash and rootfs is
> mount as Ext2.
>
> I had no problem to boot  this way.
>
> I am trying to boot form nand and mount rootfs  as UBIFS. That's the
> reason I raised this request.
>
> Can you forward my original request to  your expert who is familiar with
> using UBIFS?
>
>
>
> Thanks
>
> Leo
>
>
>
> *From:* Sandeep G.R [mailto:grsandeep85@gmail.com]
> *Sent:* Friday, April 10, 2015 2:34 PM
>
> *To:* Leo Tao
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Freescale T1040RDB Failed to mount UBIFS
>
>
>
> Attached the boot log for T4240RDB.
>
>
>
> On Fri, Apr 10, 2015 at 12:10 PM, Leo Tao <Leo.Tao@flextronics.com> wrote:
>
> Hi Sandeep,
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

--001a11c299bcb52a3205136329bf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:trebuche=
t ms,sans-serif;color:#073763">Sorry we don&#39;t use the UBIFS.</div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Apr 10, =
2015 at 12:41 PM, Leo Tao <span dir=3D"ltr">&lt;<a href=3D"mailto:Leo.Tao@f=
lextronics.com" target=3D"_blank">Leo.Tao@flextronics.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi&nbsp; Sandeep,<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">From the log file,&nbsp; =
I can see you are booting from Nor Flash and rootfs is mount as Ext2.<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I had no problem to boot&=
nbsp; this way.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I am trying to boot form =
nand and mount rootfs&nbsp; as UBIFS. That&rsquo;s the reason I raised this=
 request.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can you forward my origin=
al request to&nbsp; your expert who is familiar with using UBIFS?<u></u><u>=
</u></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sandeep =
G.R [mailto:<a href=3D"mailto:grsandeep85@gmail.com" target=3D"_blank">grsa=
ndeep85@gmail.com</a>]
<br>
<b>Sent:</b> Friday, April 10, 2015 2:34 PM</span></p><div><div class=3D"h5=
"><br>
<b>To:</b> Leo Tao<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Freescale T1040RDB Failed to mount UBIFS<u></u>=
<u></u></div></div><p></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">Attached the boot log for T4240RDB.<u=
></u><u></u></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<p class=3D"MsoNormal">On Fri, Apr 10, 2015 at 12:10 PM, Leo Tao &lt;<a hre=
f=3D"mailto:Leo.Tao@flextronics.com" target=3D"_blank">Leo.Tao@flextronics.=
com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Sandeep,</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">&nbsp;</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thank you for your quick =
response.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">It&rsquo;s true SDK1.7 do=
esn&rsquo;t mention&nbsp; using UBIFS with Nand Flash. But we decide to use=
 the Nand Flash
 on Board.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Can you send me your boot=
cmd&nbsp; and boot log running T4240RDB please?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">&nbsp;</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Leo</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">&nbsp;</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">&nbsp;</span><u></u><u></=
u></p>
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
<b>Subject:</b> Re: [yocto] Freescale T1040RDB Failed to mount UBIFS</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">Hi Leo,</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">&nbsp;</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">I walked through the QorIQ-SDK-1.7 ma=
nual section 3.4.16 for T1040RDB doesn&#39;t say anything on the NAND flash
 procedure. I can see the NOR Flash memory map and flash procedure.</span><=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">&nbsp;</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">I use T4240RDB with NOR flash works g=
reat.</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">&nbsp;</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">Please contact your local Freescale F=
AE for more support and post the question is Freescale forum you might get
 some help.</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Trebuchet MS&quot;,=
&quot;sans-serif&quot;;color:#073763">&nbsp;</span><u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On Fri, Apr 10, 2015 at 10:53 AM, Leo Tao &lt;<a hre=
f=3D"mailto:Leo.Tao@flextronics.com" target=3D"_blank">Leo.Tao@flextronics.=
com</a><u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
<p class=3D"MsoNormal">I built UBIFS rootfs for T1040RDB, apparently I got =
2 rootfs images:<u></u><u></u></p>
<div>
<div>
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
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">The information contained in this message may be pri=
vileged and confidential. It is intended to be read only by the individual =
or entity to whom it is addressed or by their designee.
 If the reader of this message is not the intended recipient, you are on no=
tice that any distribution of this message, in any form, is strictly prohib=
ited. If you have received this message in error, please immediately notify=
 the sender and delete or destroy
 any copy of this message! <u></u><u></u></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></u></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">&nbsp;<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">--
<u></u><u></u></p>
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
<u></u><u></u></p>
</div>
</div>
</div>
</div>
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
</div>
</div></div></div><div><div class=3D"h5">
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

--001a11c299bcb52a3205136329bf--
