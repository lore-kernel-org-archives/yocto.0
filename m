Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE97E00767; Thu,  6 Aug 2015 11:13:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5900E00767
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 11:13:50 -0700 (PDT)
Received: by oip136 with SMTP id 136so41833872oip.1
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 11:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=keJn4LCUPdkL9SgZhQ2igt0zxOof1t1f7DUEhmpAzSw=;
	b=BgHxSXXL9QIJR5SDmLrZ4IwUisaaJ1uJXItqtlvvf6dV9OfPsp+ifvn0+37EIJA7E6
	0GZO7stuZ1dIY1x6Ln7p6ke0NnY6NVgAemz1/7HLelMhpiSF5C1cvPV0JhP03KMgLg/8
	w/JqiADQJ0+kfZjajKA55ygp49I044UzLNIKAr4sziVaEN2J/lKHxDjiFBst7nNH1Ctb
	8XlOb0b6R+URWgyXrM+U1q3buCz/6fjzAUeEzOBA2V6cko7QNLBFMQkM8bobJkCRJGVI
	9DtY3B51So+G5D87hLUtqH9uU/bv1L54Jr7l8kkjrvi8naD6EdHWsgGaanGAkB1cDkru
	lr7A==
X-Received: by 10.202.204.204 with SMTP id c195mr2828790oig.12.1438884829944; 
	Thu, 06 Aug 2015 11:13:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.243.69 with HTTP; Thu, 6 Aug 2015 11:13:10 -0700 (PDT)
In-Reply-To: <85A21938-F24C-4C7C-A6A0-1429F9860E0C@gmail.com>
References: <CALH0Xhn6OnMMcQoH=XZQVzv+nVDjTkw0Ggrfxb93x7TVGKHAeQ@mail.gmail.com>
	<85A21938-F24C-4C7C-A6A0-1429F9860E0C@gmail.com>
From: Dalton Fury <daltonfury42@gmail.com>
Date: Thu, 6 Aug 2015 23:43:10 +0530
Message-ID: <CALH0XhnM-KJm_1T3pai1cQUZq+yMR3kC_SJ7JDqLNe5EFwZQBw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to flash core-image-sato to a Nvidia Jetson TK1?
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
X-List-Received-Date: Thu, 06 Aug 2015 18:13:52 -0000
Content-Type: multipart/alternative; boundary=001a1134f398295f65051ca87be6

--001a1134f398295f65051ca87be6
Content-Type: text/plain; charset=UTF-8

I see, but why boot from SD card, which is slower when there is eMMC?

Anyways, I flashed it successfully. But now I have no clue as to how to
enable CUDA.

I want to do some image processing with OpenCV/CUDA. What I tried is to
compile opencv with USE_CUDA=ON flage set in cmake. Then I tested to see if
I an use the gpu with opencv. But can't, and get 0 when I
call  gpu::getCudaEnabledDeviceCount(). This clearly indiacates that cuda
is not installed. So how do I install CUDA?

On Thu, Aug 6, 2015 at 9:29 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Aug 3, 2015, at 11:15 AM, Dalton Fury <daltonfury42@gmail.com> wrote:
>
> Hi,
>
> I am a hobbyist, and liked yocto very much since I used in on an old
> Pandaboard ES. Now I got my hands on a Nvidia Jetson TK1, and want to get a
> yocto running on it. I intend to use it for heavy image processing and I
> prefer not to do it with the Ubuntu which comes with it loaded with GUI and
> Unity and all. So I build the image, but could not find any information on
> how to flash it to the eMMC on the board.
>
> Nvidia provides scripts for doing this. The process is as follows:
>
> 1) Download the driver package and extract it.
>
> 2) Download the sample rootfs and extract it to `rootfs` folder in where
> the driver package is extracted.
>
> 3) Run the apply_binaries.sh script. Upon inspecting the script, I found
> that it copies NVIDIA user space components, Nvidia firmware files, BSP
> test tools, gst test applications, create a lot of symbolic links within
> the rootfs extracted to the 'rootfs' folder. It also places the firmwares
> and kernel modules, and also copies some configuration files for the boot
> loader(U-Boot).
>
> 4) Run flash.sh.
>
> What I did is to copy the rootfs that was made with yocto, and entirely
> skip Step 3 assuming that all the necessary software is already made with
> yocto as a result of adding the BSP. This attempt of course, failed.
> Thought the kernel booted, it froze halfway. No error message. Just a flack
> screen with a while "_" on the top left corner.
>
> This is the bsp I used: https://github.com/kraj/meta-jetson-tk1
>
> This is the guide I used as reference:
> http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC
>
> If anyone has experience performing this(i bet you do), please help me
> out. Thanks.
>
>
> I have booted Angstrom XFCE-nm-image on it from SD card. Firstly you need
> to flash new kernel and also modify the boot loader arguments so it boots
> from SD card first.
> all instructions to update the boot loader cmdline and kernel are
> documented
>
> see
> https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-rootfs-on-a-nvidia-jetson-tk1/
>
> you might need
>
> sudo ./flash.sh -S 14580MiB jetson-tk1 mmcblk0p1
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

--001a1134f398295f65051ca87be6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see, but why boot from SD card, which is slower when the=
re is eMMC?=C2=A0<div><br></div><div>Anyways, I flashed it successfully. Bu=
t now I have no clue as to how to enable CUDA.</div><div><br></div><div>I w=
ant to do some image processing with OpenCV/CUDA. What I tried is to compil=
e opencv with USE_CUDA=3DON flage set in cmake. Then I tested to see if I a=
n use the gpu with opencv. But can&#39;t, and get 0 when I call=C2=A0=C2=A0=
gpu::getCudaEnabledDeviceCount(). This clearly indiacates that cuda is not =
installed. So how do I install CUDA?</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Thu, Aug 6, 2015 at 9:29 AM, Khem Raj <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">=
raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div style=3D"word-wrap:break-word"><br><div><div><div class=3D"h5"><blockq=
uote type=3D"cite"><div>On Aug 3, 2015, at 11:15 AM, Dalton Fury &lt;<a hre=
f=3D"mailto:daltonfury42@gmail.com" target=3D"_blank">daltonfury42@gmail.co=
m</a>&gt; wrote:</div><br><div><div dir=3D"ltr">Hi,<div><br></div><div>I am=
 a hobbyist, and liked yocto very much since I used in on an old Pandaboard=
 ES. Now I got my hands on a Nvidia Jetson TK1, and want to get a yocto run=
ning on it. I intend to use it for heavy image processing and I prefer not =
to do it with the Ubuntu which comes with it loaded with GUI and Unity and =
all. So I build the image, but could not find any information on how to fla=
sh it to the eMMC on the board.=C2=A0</div><div><br></div><div>Nvidia provi=
des scripts for doing this. The process is as follows:</div><div><br></div>=
<div>1) Download the driver package and extract it.</div><div><br></div><di=
v>2) Download the sample rootfs and extract it to `rootfs` folder in where =
the driver package is extracted.</div><div><br></div><div>3) Run the apply_=
binaries.sh script. Upon inspecting the script, I found that it copies NVID=
IA user space components, Nvidia firmware files, BSP test tools, gst test a=
pplications, create a lot of symbolic links within the rootfs extracted to =
the &#39;rootfs&#39; folder. It also places the=C2=A0firmwares and kernel m=
odules, and also copies some configuration files for the boot loader(U-Boot=
).</div><div><br></div><div>4) Run flash.sh.</div><div><br></div><div>What =
I did is to copy the rootfs that was made with yocto, and entirely skip Ste=
p 3 assuming that all the necessary software is already made with yocto as =
a result of adding the BSP. This attempt of course, failed. Thought the ker=
nel booted, it froze halfway. No error message. Just a flack screen with a =
while &quot;_&quot; on the top left corner.</div><div><br></div><div>This i=
s the bsp I used:=C2=A0<a href=3D"https://github.com/kraj/meta-jetson-tk1" =
target=3D"_blank">https://github.com/kraj/meta-jetson-tk1</a></div><div><br=
></div><div>This is the guide I used as reference:=C2=A0<a href=3D"http://e=
linux.org/Tegra/Downstream_SW/Gentoo_From_eMMC" target=3D"_blank">http://el=
inux.org/Tegra/Downstream_SW/Gentoo_From_eMMC</a></div><div><br></div><div>=
If anyone has experience performing this(i bet you do), please help me out.=
 Thanks.=C2=A0</div></div></div></blockquote><div><br></div></div></div><di=
v>I have booted Angstrom XFCE-nm-image on it from SD card. Firstly you need=
 to flash new kernel and also modify the boot loader arguments so it boots =
from SD card first.</div><div>all instructions to update the boot loader cm=
dline and kernel are documented</div><div><br></div><div>see=C2=A0<a href=
=3D"https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-rootfs-o=
n-a-nvidia-jetson-tk1/" target=3D"_blank">https://cyclicredundancy.wordpres=
s.com/2014/05/10/flashing-the-rootfs-on-a-nvidia-jetson-tk1/</a></div><div>=
<br></div><div>you might need=C2=A0</div><div><br></div><div>sudo ./flash.s=
h=C2=A0-S 14580MiB=C2=A0jetson-tk1 mmcblk0p1</div><span class=3D"HOEnZb"><f=
ont color=3D"#888888"><div><br></div><br><blockquote type=3D"cite"><div>
-- <br>_______________________________________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><=
/div></blockquote></font></span></div><br></div></blockquote></div><br></di=
v>

--001a1134f398295f65051ca87be6--
