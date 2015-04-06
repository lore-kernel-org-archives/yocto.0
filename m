Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BC57E00858; Mon,  6 Apr 2015 07:53:23 -0700 (PDT)
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
	*      [209.85.214.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD68E007A0
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 07:53:20 -0700 (PDT)
Received: by obvd1 with SMTP id d1so43697332obv.0
	for <yocto@yoctoproject.org>; Mon, 06 Apr 2015 07:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pYO99ncxEFwyc8jssAmF+xeH9JbiK1dtpaCMNvN1/0g=;
	b=vamIS431qmVouHQ4SERJYVStsLVfmLxwu2jcHv3eexiR5BWrvOEO0cNUhVQwxzfR9Z
	/d3yuatdNJHaLRVJVzdFZe7uP8nCUmiYqmY6lZbTXzmKxDk9nU87blkAl3NK3rTbNEYB
	Vr4H1LgC9Ao13+cErNO6nnrVonZAkiEOYvp9uKe8PCJXU6lLcrOxNFb3GiZxsRr3DvXC
	6ao2Sk7SohAPXGwuC+IUggETsIfp4/PvsaLxPOt8mqKrvE2FjQrqwZgrkbrKSFAQjvLb
	m6lFa3jhghbTSMV4uTbsmOepwIQJNvZRWE5otkTw9krzN1HJDS7CmmzlsrW7a583Ze9m
	FjHQ==
MIME-Version: 1.0
X-Received: by 10.60.98.2 with SMTP id ee2mr19050702oeb.39.1428331996384; Mon,
	06 Apr 2015 07:53:16 -0700 (PDT)
Received: by 10.76.24.199 with HTTP; Mon, 6 Apr 2015 07:53:16 -0700 (PDT)
In-Reply-To: <E5FF0F26CCED3843A9B0899B389686BA4478BB@POCITMSEXMB05.LntUniverse.com>
References: <E5FF0F26CCED3843A9B0899B389686BA4478BB@POCITMSEXMB05.LntUniverse.com>
Date: Mon, 6 Apr 2015 08:53:16 -0600
Message-ID: <CAKP9-ShYkyRWr7PG8AxM9as02te1unC6G72tCZ62ZYuwktqN9w@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Shalini K P <Shalini.KP@lnttechservices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reg flashing Yocto SDcard image onto IMX6q sabre sd card
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
X-List-Received-Date: Mon, 06 Apr 2015 14:53:23 -0000
Content-Type: multipart/alternative; boundary=089e011619c444244105130f7536

--089e011619c444244105130f7536
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Shalini,

     Below is the basic steps for SD card boot on iMX6. Create two
partitions on the SD card ext2 for boot and ext4 for rootfs using following
commands.

*Create the partions:*

*sudo dd if=3D/dev/zero of=3D/dev/sdX bs=3D1M count=3D16*
*sudo mkfs.ext2 /dev/sdX1 -L boot*
*sudo mkfs.ext4 /dev/sdX2 -L rootfs*

*Mount the partions:*

*sudo mkdir -p /media/boot/*
*sudo mkdir -p /media/rootfs/*
*sudo mount /dev/sdX1 /media/boot/*
*sudo mount /dev/sdX2 /media/rootfs/*

*Copy the binaries to SD card:*

*sudo tar xfvp yocto-build/tmp/deploy/rootfs.tar -C /media/rootfs/*
*sudo cp -v yocto-build/tmp/deploy/kernel-image /media/boot*
*sudo cp -v yocto-build/tmp/deploy/kernel-dtb /media/boot*

*Edit the fstab file as shown below:*

*sudo nano /media/rootfs/etc/fstab*
*/dev/sdX2   /                   auto   errors=3Dremount-ro   0   1*
*/dev/sdX1   /boot/uboot  auto   defaults                   0   2*

Make sure your uboot environment variables are set properly for sd card
flash.


On Mon, Apr 6, 2015 at 6:23 AM, Shalini K P <Shalini.KP@lnttechservices.com=
>
wrote:

>  Hi,
>
>
>
>      I have prepared an Yocto SD card image
> "core-image-minimal-imx6q-sabresd.sdcard".  I trying to flash the image
> onto sdcard using the command
>
> *"sudo dd  if=3D core-image-minimal-imx6q-sabresd.sdcard of=3D/dev/sdb bs=
=3D1M"*
>
> *Sync*
>
> *Sync*
>
>
>
> I m getting the boot messages as below
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *U-Boot 2014.10+fslc+g5fd0b60 (Apr 03 2015 - 18:55:01) CPU:   Freescale
> i.MX6Q rev1.2 at 792 MHz Reset cause: POR Board: MX6-SabreSD I2C:   ready
> DRAM:  1 GiB MMC:   FSL_SDHC: 0, FSL_SDHC: 1, FSL_SDHC: 2 *** Warning - b=
ad
> CRC, using default environment No panel detected: default to Hannstar-XGA
> Display: Hannstar-XGA (1024x768) In:    serial Out:   serial Err:   seria=
l
> PMIC:  PFUZE100 ID=3D0x10 Net:   FEC [PRIME] Hit any key to stop autoboot=
:  1
> *
>
> I m stuck up badly.  It is not going further.  Does the sdcard image
> contain =FC-boot, kernel image and rootfs ? or should I flash u-boot
> separately ? I even tried flashing both u-boot and sdcaed image. But
> getting same messages.  Request help in this regard.  I'm using Dizzy
> branch  and SABRESD Evk board.
>
>
>
>
>
> Thanks & Regards
>
> Shalini K P
>
>
>
> *L&T Technology Services Ltd*
>
> www.LntTechservices.com <http://www.lnttechservices.com/>
>
> This Email may contain confidential or privileged information for the
> intended recipient (s). If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*Thanks & Regards,*
*Sandeep G R*

--089e011619c444244105130f7536
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)">Hi Shalini,</div><div class=
=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif;c=
olor:rgb(7,55,99)"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:&#39;trebuchet ms&#39;,sans-serif;color:rgb(7,55,99)">&nbsp; &nbsp; &nb=
sp;Below is the basic steps for SD card boot on iMX6. Create two partitions=
 on the SD card ext2 for boot and ext4 for rootfs using following commands.=
</div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#=
39;,sans-serif;color:rgb(7,55,99)"><br></div><div class=3D"gmail_default" s=
tyle><div class=3D"gmail_default" style><font color=3D"#073763" face=3D"tre=
buchet ms, sans-serif"><b>Create the partions:</b></font></div><div class=
=3D"gmail_default" style><font color=3D"#073763" face=3D"trebuchet ms, sans=
-serif"><br></font></div><div class=3D"gmail_default" style><font color=3D"=
#073763" face=3D"trebuchet ms, sans-serif"><i>sudo dd if=3D/dev/zero of=3D/=
dev/sdX bs=3D1M count=3D16</i></font></div><div class=3D"gmail_default" sty=
le><i><font color=3D"#073763" face=3D"trebuchet ms, sans-serif">sudo mkfs.e=
xt2&nbsp;</font><span style=3D"color:rgb(7,55,99);font-family:&#39;trebuche=
t ms&#39;,sans-serif">/dev/sdX</span><font color=3D"#073763" face=3D"trebuc=
het ms, sans-serif">1 -L boot</font></i></div><div class=3D"gmail_default" =
style><i><font color=3D"#073763" face=3D"trebuchet ms, sans-serif">sudo mkf=
s.ext4&nbsp;</font><span style=3D"color:rgb(7,55,99);font-family:&#39;trebu=
chet ms&#39;,sans-serif">/dev/sdX</span><font color=3D"#073763" face=3D"tre=
buchet ms, sans-serif">2 -L rootfs</font></i></div><div class=3D"gmail_defa=
ult" style><font color=3D"#073763" face=3D"trebuchet ms, sans-serif"><br></=
font></div><div class=3D"gmail_default" style><font color=3D"#073763" face=
=3D"trebuchet ms, sans-serif"><b>Mount the partions:</b></font></div><div c=
lass=3D"gmail_default" style><font color=3D"#073763" face=3D"trebuchet ms, =
sans-serif"><br></font></div><div class=3D"gmail_default" style><font color=
=3D"#073763" face=3D"trebuchet ms, sans-serif"><i>sudo mkdir -p /media/boot=
/</i></font></div><div class=3D"gmail_default" style><font color=3D"#073763=
" face=3D"trebuchet ms, sans-serif"><i>sudo mkdir -p /media/rootfs/</i></fo=
nt></div><div class=3D"gmail_default" style><i><font color=3D"#073763" face=
=3D"trebuchet ms, sans-serif">sudo mount&nbsp;</font><span style=3D"color:r=
gb(7,55,99);font-family:&#39;trebuchet ms&#39;,sans-serif">/dev/sdX</span><=
font color=3D"#073763" face=3D"trebuchet ms, sans-serif">1 /media/boot/</fo=
nt></i></div><div class=3D"gmail_default" style><i><font color=3D"#073763" =
face=3D"trebuchet ms, sans-serif">sudo mount&nbsp;</font><span style=3D"col=
or:rgb(7,55,99);font-family:&#39;trebuchet ms&#39;,sans-serif">/dev/sdX</sp=
an><font color=3D"#073763" face=3D"trebuchet ms, sans-serif">2 /media/rootf=
s/</font></i></div><div class=3D"gmail_default" style><font color=3D"#07376=
3" face=3D"trebuchet ms, sans-serif"><br></font></div><div class=3D"gmail_d=
efault" style><font color=3D"#073763" face=3D"trebuchet ms, sans-serif"><b>=
Copy the binaries to SD card:</b></font></div><div class=3D"gmail_default" =
style><font color=3D"#073763" face=3D"trebuchet ms, sans-serif"><br></font>=
</div><div class=3D"gmail_default" style><font color=3D"#073763" face=3D"tr=
ebuchet ms, sans-serif"><i>sudo tar xfvp yocto-build/tmp/deploy/rootfs.tar =
-C /media/rootfs/</i></font></div><div class=3D"gmail_default" style><i><fo=
nt color=3D"#073763" face=3D"trebuchet ms, sans-serif">sudo cp -v&nbsp;</fo=
nt><span style=3D"color:rgb(7,55,99);font-family:&#39;trebuchet ms&#39;,san=
s-serif">yocto-build</span><span style=3D"color:rgb(7,55,99);font-family:&#=
39;trebuchet ms&#39;,sans-serif">/tmp/deploy/kernel-image /media/boot</span=
></i></div><div class=3D"gmail_default" style><i><font color=3D"#073763" fa=
ce=3D"trebuchet ms, sans-serif">sudo cp -v&nbsp;</font><span style=3D"color=
:rgb(7,55,99);font-family:&#39;trebuchet ms&#39;,sans-serif">yocto-build</s=
pan><span style=3D"color:rgb(7,55,99);font-family:&#39;trebuchet ms&#39;,sa=
ns-serif">/tmp/deploy/kernel-dtb /media/boot</span></i></div><div class=3D"=
gmail_default" style><font color=3D"#073763" face=3D"trebuchet ms, sans-ser=
if"><br></font></div><div class=3D"gmail_default" style><font color=3D"#073=
763" face=3D"trebuchet ms, sans-serif"><b>Edit the fstab file as shown belo=
w:</b></font></div><div class=3D"gmail_default" style><font color=3D"#07376=
3" face=3D"trebuchet ms, sans-serif"><br></font></div><div class=3D"gmail_d=
efault" style><font color=3D"#073763" face=3D"trebuchet ms, sans-serif"><i>=
sudo nano /media/rootfs/etc/fstab</i></font></div><div class=3D"gmail_defau=
lt" style><i><span style=3D"color:rgb(7,55,99);font-family:&#39;trebuchet m=
s&#39;,sans-serif">/dev/sdX</span><font color=3D"#073763" face=3D"trebuchet=
 ms, sans-serif">2 &nbsp; / &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; auto &nbsp; errors=3Dremount-ro &nbsp; 0 &nbsp; 1</font></i=
></div><div class=3D"gmail_default" style><i><span style=3D"color:rgb(7,55,=
99);font-family:&#39;trebuchet ms&#39;,sans-serif">/dev/sdX</span><font col=
or=3D"#073763" face=3D"trebuchet ms, sans-serif">1 &nbsp; /boot/uboot &nbsp=
;auto &nbsp; defaults &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 0 &nbsp; 2</font></i></div><div style=3D"color:rgb(7,55,99);font-=
family:&#39;trebuchet ms&#39;,sans-serif"><br></div><div style=3D"color:rgb=
(7,55,99);font-family:&#39;trebuchet ms&#39;,sans-serif">Make sure your ubo=
ot environment variables are set properly for sd card flash.</div></div><di=
v class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-=
serif;color:rgb(7,55,99)"><br></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Mon, Apr 6, 2015 at 6:23 AM, Shalini K P <span =
dir=3D"ltr">&lt;<a href=3D"mailto:Shalini.KP@lnttechservices.com" target=3D=
"_blank">Shalini.KP@lnttechservices.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">





<div lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; I have prepared an Yocto SD=
 card image &ldquo;core-image-minimal-imx6q-sabresd.sdcard&rdquo;.&nbsp; I =
trying to flash the image onto sdcard using the command
<u></u><u></u></p>
<p class=3D"MsoNormal"><b>&ldquo;sudo dd &nbsp;if=3D core-image-minimal-imx=
6q-sabresd.sdcard of=3D/dev/sdb bs=3D1M&rdquo;<u></u><u></u></b></p>
<p class=3D"MsoNormal"><b>Sync<u></u><u></u></b></p>
<p class=3D"MsoNormal"><b>Sync<u></u><u></u></b></p>
<p class=3D"MsoNormal"><b><u></u>&nbsp;<u></u></b></p>
<p class=3D"MsoNormal">I m getting the boot messages as below<u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b>U-Boot 2014.10+fsl=
c+g5fd0b60 (Apr 03 2015 - 18:55:01)<br>
<br>
CPU:&nbsp;&nbsp; Freescale i.MX6Q rev1.2 at 792 MHz<br>
Reset cause: POR<br>
Board: MX6-SabreSD<br>
I2C:&nbsp;&nbsp; ready<br>
DRAM:&nbsp; 1 GiB<br>
MMC:&nbsp;&nbsp; FSL_SDHC: 0, FSL_SDHC: 1, FSL_SDHC: 2<br>
*** Warning - bad CRC, using default environment<br>
<br>
No panel detected: default to Hannstar-XGA<br>
Display: Hannstar-XGA (1024x768)<br>
In:&nbsp;&nbsp;&nbsp; serial<br>
Out:&nbsp;&nbsp; serial<br>
Err:&nbsp;&nbsp; serial<br>
PMIC:&nbsp; PFUZE100 ID=3D0x10<br>
Net:&nbsp;&nbsp; FEC [PRIME]<br>
Hit any key to stop autoboot:&nbsp; 1 <u></u><u></u></b></p>
<p class=3D"MsoNormal">I m stuck up badly.&nbsp; It is not going further.&n=
bsp; Does the sdcard image contain =FC-boot, kernel image and rootfs ? or s=
hould I flash u-boot separately ? I even tried flashing both u-boot and sdc=
aed image. But getting same messages.&nbsp; Request
 help in this regard.&nbsp; I&rsquo;m using Dizzy branch&nbsp; and SABRESD =
Evk board.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<u></u><u></u></p>
<p class=3D"MsoNormal">Shalini K P&nbsp; <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
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

--089e011619c444244105130f7536--
