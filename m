Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60260E00DA4; Thu, 25 Jan 2018 05:20:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ayoub.zaki[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F0ACE00B66
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 05:20:02 -0800 (PST)
Received: by mail-ua0-f177.google.com with SMTP id q8so4929260uae.4
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 05:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nSypeRSh1wlI1HLQbwZBmMVH2ekaT4YxhYGILCT7M6Q=;
	b=Oqe55YL4xWn7DOGvgjXgHZW+FyyS01qTgxcweivPhKh6bXT4VbinEr28biLV1L12ks
	OelgZJatBUo+WMQf8iyYrzh35mMfzOHJ0F++Q65GyTn5NMnMvxIdAspgJnOSHsJI2PVC
	r4B91Cg792Q0g8W5h1psRdGRVhAxvn1txDJaSTYq7ne3MF6/4R4SekGRCcExtJlzFQTQ
	tBbYTRowvi7WFHhQKrxDdPxZ3nzDV3Mbj5nVvecrh51rpuvtqvlZwBGhQsxuatWeOUtu
	RoNL+R4oXJAdswAHZNPcsT7ly7M8c5I3eY49Mj460WZaOhdiKDuR01nx0t4IkPJ/BYZP
	PXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nSypeRSh1wlI1HLQbwZBmMVH2ekaT4YxhYGILCT7M6Q=;
	b=genpmRMGkmI8KVhaSYN9LfQtxEWjFl7yiCwtRTIMETD5aZuEA+sS1wR8GSm86gEmzy
	BIlPe++xrD28FEgB77BVc9OZ37frooFTtXWwFhaj68U0p8A2Nxzsh5yMaClQg1CKDNpU
	3xnX83Ah/ApHEynMMmwYLf8yN7TV06yHSgcduNGxOlXeD4ZvCaVtPoz0Ne7wbhmzTc03
	A52QpdQRUfUUz7jSqVAZK+JaERaSDfn1z0YMNNWM9A2FQSNTg2OtHKVgXqfyt8PpVFs+
	pgJJO9pDR2m7U66bpH9WIQUCi4qtWsX+Zbn8rUhTdBMyIB458QhXtdYY5VtL5AL3iouS
	9K/A==
X-Gm-Message-State: AKwxytfTBsvALiZGW0Zj4Q8TNT3r8MXZUZOYwI4Ia6kHTl83QhJ0dEjT
	diZvlN+1o44nI4URzxsDFgdRX+Xg4tpoyvP/E28=
X-Google-Smtp-Source: AH8x2271ccG6cTHiP1+5/HGdTs2BmLR3RJg9tjlXkjbreOL8AcQHJpAos/WDoa8Hd5hvOrFDmlf2wdNpkqs9aRsz98E=
X-Received: by 10.176.21.173 with SMTP id i42mr7469899uae.108.1516886401361;
	Thu, 25 Jan 2018 05:20:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.4.129 with HTTP; Thu, 25 Jan 2018 05:20:01 -0800 (PST)
In-Reply-To: <MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
References: <MWHPR13MB1584C1139309858BD0E22C089EE20@MWHPR13MB1584.namprd13.prod.outlook.com>
	<MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 25 Jan 2018 14:20:01 +0100
Message-ID: <CA+-BmJbuHZqCqk+LZT1ZY-LkueMyThDvatwVBJjdBBCH0RNmPw@mail.gmail.com>
To: Peter Spierenburg <peter.spierenburg@nautel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I generate a dtb for my board support package?
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
X-List-Received-Date: Thu, 25 Jan 2018 13:20:05 -0000
Content-Type: multipart/alternative; boundary="001a114531fc1e2df1056399a37c"

--001a114531fc1e2df1056399a37c
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 25, 2018 at 2:16 PM, Peter Spierenburg <
peter.spierenburg@nautel.com> wrote:

> I am trying to write a board support package for the adzs-sc589-ezlite
> board from Analog Devices, because AD only supplies a buildroot package,
> and I would prefer to use yocto.
>
>
> AD's buildroot produces a uImage kernel with dtb that is served to the
> board using tftp. The root file system is served to the board by nfs.
>
>
> I've begun working on my own bsp for this board. I have successfully
> booted and interacted with the board using buildroot's kernel and dtb
> combined with yocto's root filesystem.
>
>
> I'd now like to replace the buildroot kernel and dtb file with ones
> generated by yocto.
>
>
> My bsp layer is called meta-adzs-sc589-ezlite.
>
>
> The meta-adzs-sc589-ezlite/conf/machine/adzs-sc589-ezlite.conf contains:
>
>
>
> #@TYPE: Machine
> #@NAME: adzs-sc589-ezlite
>
> #@DESCRIPTION: Machine configuration for adzs-sc589-ezlite systems
>
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?= "4.12%"
>
>
> require conf/machine/include/qemu.inc
> require conf/machine/include/tune-arm926ejs.inc
>
>
> KERNEL_IMAGETYPE = "uImage"
> KERNEL_EXTRA_ARGS += "LOADADDR=c2008000"
> KERNEL_DEVICETREE = "sc589-ezkit.dts"
>

should be here :

 KERNEL_DEVICETREE = "sc589-ezkit.dtb"


SERIAL_CONSOLE = "115200 ttyAMA0"
>
>
> and my meta-adzs-sc589-ezlite/recipes-kernel/linux/linux-
> yocto_4.12.bbappend
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> PR := "${PR}.1"
>
> COMPATIBLE_MACHINE_adzs-sc589-ezlite = "adzs-sc589-ezlite"
>
>
> KERNEL_FEATURES_append_adzs-sc589-ezlite += " cfg/smp.scc"
>
> SRC_URI += "file://adzs-sc589-ezlite.scc \
>             file://adzs-sc589-ezlite.cfg \
>             file://adzs-sc589-ezlite-standard.scc \
>             file://adzs-sc589-ezlite-user-config.cfg \
>             file://adzs-sc589-ezlite-user-features.scc \
>             file://adzs-sc589-ezlite-user-patches.scc \
>             file://sc589-ezkit.dts \
>             file://sc58x.dtsi \
>            "
>
> # replace these SRCREVs with the real commit ids once you've had
> # the appropriate changes committed to the upstream linux-yocto repo
> SRCREV_machine_pn-linux-yocto_adzs-sc589-ezlite ?= "${AUTOREV}"
> SRCREV_meta_pn-linux-yocto_adzs-sc589-ezlite ?= "${AUTOREV}"
> #LINUX_VERSION = "4.10"
> #Remove the following line once AUTOREV is locked to a certain SRCREV
> KERNEL_VERSION_SANITY_SKIP = "1"
>
>
> However, when I perform a build, I get:
>
>
> ERROR: linux-yocto-4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1
> do_compile: oe_runmake failed
> ERROR: linux-yocto-4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1
> do_compile: Function failed: do_compile (log file is located at
> /home/user/work/sad-yocto/poky/build/tmp/work/adzs_
> sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_
> 8506961765-r0.1/temp/log.do_compile.28883)
> ERROR: Logfile of failure stored in: /home/user/work/sad-yocto/
> poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-
> gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_
> 8506961765-r0.1/temp/log.do_compile.28883
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 HOSTCC=gcc  -isystem/home/user/work/sad-
> yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-
> gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/include
> -O2 -pipe -L/home/user/work/sad-yocto/poky/build/tmp/work/adzs_
> sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_
> 8506961765-r0.1/recipe-sysroot-native/usr/lib -L/home/user/work/sad-yocto/
> poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-
> gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib
> -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/
> work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.
> 12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/lib
> -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/
> work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.
> 12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib
> -Wl,-rpath,/home/user/work/sad-yocto/poky/build/tmp/work/
> adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+
> gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/lib
> -Wl,-rpath,/home/user/work/sad-yocto/poky/build/tmp/work/
> adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+
> gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib -Wl,-O1
> HOSTCPP=gcc  -E uImage CC=arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork
> -marm -fuse-ld=bfd -ffile-prefix-map=/home/user/
> work/sad-yocto/poky/build/tmp/work-shared/adzs-sc589-ezlite/kernel-source=/kernel-source/
> LD=arm-poky-linux-gnueabi-ld.bfd   LOADADDR=c2008000
> |   CHK     include/config/kernel.release
> |   Using /home/user/work/sad-yocto/poky/build/tmp/work-shared/
> adzs-sc589-ezlite/kernel-source as source for kernel
> |   GEN     ./Makefile
> |   CHK     include/generated/uapi/linux/version.h
> |   CHK     include/generated/utsrelease.h
> |   CHK     include/generated/timeconst.h
> |   CHK     include/generated/bounds.h
> |   CHK     include/generated/asm-offsets.h
> |   CALL    /home/user/work/sad-yocto/poky/build/tmp/work-shared/
> adzs-sc589-ezlite/kernel-source/scripts/checksyscalls.sh
> |   CHK     scripts/mod/devicetable-offsets.h
> |   CHK     include/generated/compile.h
> |   CHK     kernel/config_data.h
> |   Kernel: arch/arm/boot/Image is ready
> |   Kernel: arch/arm/boot/zImage is ready
> |   Kernel: arch/arm/boot/uImage is ready
> | NOTE: make -j 4 HOSTCC=gcc  -isystem/home/user/work/sad-
> yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-
> gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/include
> -O2 -pipe -L/home/user/work/sad-yocto/poky/build/tmp/work/adzs_
> sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_
> 8506961765-r0.1/recipe-sysroot-native/usr/lib -L/home/user/work/sad-yocto/
> poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-
> gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib
> -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/
> work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.
> 12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/lib
> -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/
> work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.
> 12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib
> -Wl,-rpath,/home/user/work/sad-yocto/poky/build/tmp/work/
> adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+
> gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/lib
> -Wl,-rpath,/home/user/work/sad-yocto/poky/build/tmp/work/
> adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+
> gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib -Wl,-O1
> HOSTCPP=gcc  -E sc589-ezkit.dts
> | make[2]: *** No rule to make target `sc589-ezkit.dts'.  Stop.
> | make[1]: *** [sub-make] Error 2
> | make: *** [__sub-make] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/user/work/sad-yocto/poky/build/tmp/work/adzs_
> sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_
> 8506961765-r0.1/temp/log.do_compile.28883)
> ERROR: Task (/home/user/work/sad-yocto/poky/meta/recipes-kernel/
> linux/linux-yocto_4.12.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2444 tasks of which 2443 didn't need to be
> rerun and 1 failed.
>
>
> What is the common practice for adding .dts/.dtsi files to a bsp in order
> to generate a .dtb file during the build?
>
>
> Peter.
>
>
> This communication, including any attached documentation, is intended only
> for the person or entity to which it is addressed, and may contain
> confidential, personal, and/or privileged information. Any unauthorized
> disclosure, copying, or taking action on the contents is strictly
> prohibited. If you have received this message in error, please contact us
> immediately so we may correct our records. Please then delete or destroy
> the original transmission and any subsequent reply. Thank you.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114531fc1e2df1056399a37c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Jan 25, 2018 at 2:16 PM, Peter Spierenburg <span dir=3D"ltr">&l=
t;<a href=3D"mailto:peter.spierenburg@nautel.com" target=3D"_blank">peter.s=
pierenburg@nautel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_7160333564820273553divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"font-family:Ca=
libri,Helvetica,sans-serif;font-size:12pt">I am trying to write a board sup=
port package for the=C2=A0</span><span style=3D"font-family:Calibri,Helveti=
ca,sans-serif;font-size:12pt">adzs-sc589-ezlite
 board from Analog Devices, because AD only supplies a buildroot package, a=
nd I would prefer to use yocto.</span><br>
</p>
<div style=3D"color:rgb(0,0,0)">
<div dir=3D"ltr">
<div id=3D"gmail-m_7160333564820273553x_divtagdefaultwrapper" dir=3D"ltr" s=
tyle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-=
serif">
<p style=3D"margin-top:0px;margin-bottom:0px"><span><br>
</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span>AD&#39;s buildroot prod=
uces a uImage kernel with dtb that is served to the board using tftp. The r=
oot file system is served to the board by nfs.</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><br>
</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span>I&#39;ve begun working =
on my own bsp for this board. I have successfully booted and interacted wit=
h the board using buildroot&#39;s kernel and dtb combined with yocto&#39;s =
root filesystem.</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"font-size:12pt=
"><br>
</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"font-size:12pt=
">I&#39;d now like to replace the buildroot kernel and dtb file with ones g=
enerated by yocto.</span><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><br>
</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px">My bsp layer is called meta-<=
span>adzs-sc589-ezlite.</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><br>
</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span>The=C2=A0<span>meta-adz=
s-sc589-ezlite/<wbr>conf/machine/adzs-sc589-<wbr>ezlite.conf contains:</spa=
n></span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><span></span></span></p=
>
<div><span style=3D"font-family:Consolas,Courier,monospace">#@TYPE: Machine=
</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#@NAME: adzs-sc=
589-ezlite</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#@DESCRIPTION: =
Machine configuration for adzs-sc589-ezlite systems</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">PREFERRED_PROVI=
DER_virtual/<wbr>kernel ?=3D &quot;linux-yocto&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">PREFERRED_VERSI=
ON_linux-yocto ?=3D &quot;4.12%&quot;</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">require conf/ma=
chine/include/qemu.inc</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">require conf/ma=
chine/include/tune-<wbr>arm926ejs.inc</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_IMAGETYP=
E =3D &quot;uImage&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_EXTRA_AR=
GS +=3D &quot;LOADADDR=3Dc2008000&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_DEVICETR=
EE =3D &quot;sc589-ezkit.dts&quot;</span></div></div></div></div></div></di=
v></blockquote><div><br></div><div>should be here :</div><div>=C2=A0</div><=
div>=C2=A0<span style=3D"color:rgb(0,0,0);font-family:Consolas,Courier,mono=
space;font-size:16px">KERNEL_DEVICETREE =3D &quot;sc589-ezkit.dtb&quot;</sp=
an></div><div><span style=3D"color:rgb(0,0,0);font-family:Consolas,Courier,=
monospace;font-size:16px"><br></span></div><div><span style=3D"color:rgb(0,=
0,0);font-family:Consolas,Courier,monospace;font-size:16px"><br></span></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div i=
d=3D"gmail-m_7160333564820273553divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr"><=
div style=3D"color:rgb(0,0,0)"><div dir=3D"ltr"><div id=3D"gmail-m_71603335=
64820273553x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;colo=
r:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif">
<div><span style=3D"font-family:Consolas,Courier,monospace">SERIAL_CONSOLE =
=3D &quot;115200 ttyAMA0&quot;</span></div>
<div><br>
</div>
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><span></span></span></p=
>
<div><br>
</div>
<div>and my=C2=A0<span>meta-adzs-sc589-ezlite/<wbr>recipes-kernel/linux/lin=
ux-<wbr>yocto_4.12.bbappend</span></div>
<div><span><br>
</span></div>
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span><span></span></span></p=
>
<div><span style=3D"font-family:Consolas,Courier,monospace">FILESEXTRAPATHS=
_prepend :=3D &quot;${THISDIR}/files:&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">PR :=3D &quot;$=
{PR}.1&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">COMPATIBLE_MACH=
INE_adzs-sc589-<wbr>ezlite =3D &quot;adzs-sc589-ezlite&quot;</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_FEATURES=
_append_adzs-<wbr>sc589-ezlite +=3D &quot; cfg/smp.scc&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">SRC_URI +=3D &q=
uot;file://adzs-sc589-ezlite.scc \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://adzs-sc589-ezlite.cfg \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://adzs-sc589-ezlite-<wbr>standard.scc \</s=
pan></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://adzs-sc589-ezlite-user-<wbr>config.cfg \=
</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://adzs-sc589-ezlite-user-<wbr>features.scc=
 \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://adzs-sc589-ezlite-user-<wbr>patches.scc =
\</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://sc589-ezkit.dts \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://sc58x.dtsi \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace"># replace these=
 SRCREVs with the real commit ids once you&#39;ve had</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace"># the appropria=
te changes committed to the upstream linux-yocto repo</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">SRCREV_machine_=
pn-linux-yocto_<wbr>adzs-sc589-ezlite ?=3D &quot;${AUTOREV}&quot;</span></d=
iv>
<div><span style=3D"font-family:Consolas,Courier,monospace">SRCREV_meta_pn-=
linux-yocto_<wbr>adzs-sc589-ezlite ?=3D &quot;${AUTOREV}&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#LINUX_VERSION =
=3D &quot;4.10&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#Remove the fol=
lowing line once AUTOREV is locked to a certain SRCREV</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_VERSION_=
SANITY_SKIP =3D &quot;1&quot;</span></div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px">However, when I perform a bui=
ld, I get:</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: linux-yo=
cto-4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>8506961765-r0.1 do_compile: oe_=
runmake failed</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: linux-yo=
cto-4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>8506961765-r0.1 do_compile: Fun=
ction failed: do_compile (log file is located at /home/user/work/sad-yocto/=
<wbr>poky/build/tmp/work/adzs_<wbr>sc589_ezlite-poky-linux-<wbr>gnueabi/lin=
ux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>8506961765-r0.1/temp/log.d=
o_<wbr>compile.28883)</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: Logfile =
of failure stored in: /home/user/work/sad-yocto/<wbr>poky/build/tmp/work/ad=
zs_<wbr>sc589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAU=
TOINC+0d0f74b803_<wbr>8506961765-r0.1/temp/log.do_<wbr>compile.28883</span>=
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">Log data follow=
s:</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| DEBUG: Execut=
ing shell function do_compile</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| NOTE: make -j=
 4 HOSTCC=3Dgcc=C2=A0 -isystem/home/user/work/sad-<wbr>yocto/poky/build/tmp=
/work/<wbr>adzs_sc589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<w=
br>gitAUTOINC+0d0f74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/us=
r/include
 -O2 -pipe -L/home/user/work/sad-yocto/<wbr>poky/build/tmp/work/adzs_<wbr>s=
c589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0=
f74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/usr/lib -L/home/use=
r/work/sad-yocto/<wbr>poky/build/tmp/work/adzs_<wbr>sc589_ezlite-poky-linux=
-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>850696176=
5-r0.1/recipe-<wbr>sysroot-native/lib
 -Wl,-rpath-link,/home/user/<wbr>work/sad-yocto/poky/build/tmp/<wbr>work/ad=
zs_sc589_ezlite-poky-<wbr>linux-gnueabi/linux-yocto/4.<wbr>12.18+gitAUTOINC=
+0d0f74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/usr/lib -Wl,-rp=
ath-link,/home/user/<wbr>work/sad-yocto/poky/build/tmp/<wbr>work/adzs_sc589=
_ezlite-poky-<wbr>linux-gnueabi/linux-yocto/4.<wbr>12.18+gitAUTOINC+0d0f74b=
803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/lib
 -Wl,-rpath,/home/user/work/<wbr>sad-yocto/poky/build/tmp/work/<wbr>adzs_sc=
589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f=
74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/usr/lib -Wl,-rpath,/=
home/user/work/<wbr>sad-yocto/poky/build/tmp/work/<wbr>adzs_sc589_ezlite-po=
ky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>8=
506961765-r0.1/recipe-<wbr>sysroot-native/lib
 -Wl,-O1 HOSTCPP=3Dgcc=C2=A0 -E uImage CC=3Darm-poky-linux-gnueabi-gcc=C2=
=A0 -mno-thumb-interwork -marm -fuse-ld=3Dbfd -ffile-prefix-map=3D/home/use=
r/<wbr>work/sad-yocto/poky/build/tmp/<wbr>work-shared/adzs-sc589-ezlite/<wb=
r>kernel-source=3D/kernel-source/=C2=A0 LD=3Darm-poky-linux-gnueabi-ld.<wbr=
>bfd=C2=A0
 =C2=A0LOADADDR=3Dc2008000</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/config/kernel.release</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0U=
sing /home/user/work/sad-yocto/<wbr>poky/build/tmp/work-shared/<wbr>adzs-sc=
589-ezlite/kernel-<wbr>source as source for kernel</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0G=
EN=C2=A0 =C2=A0 =C2=A0./Makefile</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/<wbr>version.h</span></d=
iv>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.<wbr>h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/generated/timeconst.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/generated/bounds.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/generated/asm-<wbr>offsets.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
ALL=C2=A0 =C2=A0 /home/user/work/sad-yocto/<wbr>poky/build/tmp/work-shared/=
<wbr>adzs-sc589-ezlite/kernel-<wbr>source/scripts/checksyscalls.<wbr>sh</sp=
an></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-<wbr>offsets.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0include/generated/compile.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0C=
HK=C2=A0 =C2=A0 =C2=A0kernel/config_data.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0K=
ernel: arch/arm/boot/Image is ready</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0K=
ernel: arch/arm/boot/zImage is ready</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|=C2=A0 =C2=A0K=
ernel: arch/arm/boot/uImage is ready</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| NOTE: make -j=
 4 HOSTCC=3Dgcc=C2=A0 -isystem/home/user/work/sad-<wbr>yocto/poky/build/tmp=
/work/<wbr>adzs_sc589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<w=
br>gitAUTOINC+0d0f74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/us=
r/include
 -O2 -pipe -L/home/user/work/sad-yocto/<wbr>poky/build/tmp/work/adzs_<wbr>s=
c589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0=
f74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/usr/lib -L/home/use=
r/work/sad-yocto/<wbr>poky/build/tmp/work/adzs_<wbr>sc589_ezlite-poky-linux=
-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>850696176=
5-r0.1/recipe-<wbr>sysroot-native/lib
 -Wl,-rpath-link,/home/user/<wbr>work/sad-yocto/poky/build/tmp/<wbr>work/ad=
zs_sc589_ezlite-poky-<wbr>linux-gnueabi/linux-yocto/4.<wbr>12.18+gitAUTOINC=
+0d0f74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/usr/lib -Wl,-rp=
ath-link,/home/user/<wbr>work/sad-yocto/poky/build/tmp/<wbr>work/adzs_sc589=
_ezlite-poky-<wbr>linux-gnueabi/linux-yocto/4.<wbr>12.18+gitAUTOINC+0d0f74b=
803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/lib
 -Wl,-rpath,/home/user/work/<wbr>sad-yocto/poky/build/tmp/work/<wbr>adzs_sc=
589_ezlite-poky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f=
74b803_<wbr>8506961765-r0.1/recipe-<wbr>sysroot-native/usr/lib -Wl,-rpath,/=
home/user/work/<wbr>sad-yocto/poky/build/tmp/work/<wbr>adzs_sc589_ezlite-po=
ky-linux-<wbr>gnueabi/linux-yocto/4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>8=
506961765-r0.1/recipe-<wbr>sysroot-native/lib
 -Wl,-O1 HOSTCPP=3Dgcc=C2=A0 -E sc589-ezkit.dts</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| make[2]: *** =
No rule to make target `sc589-ezkit.dts&#39;.=C2=A0 Stop.</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| make[1]: *** =
[sub-make] Error 2</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| make: *** [__=
sub-make] Error 2</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| ERROR: oe_run=
make failed</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| WARNING: exit=
 code 1 from a shell command.</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| ERROR: Functi=
on failed: do_compile (log file is located at /home/user/work/sad-yocto/<wb=
r>poky/build/tmp/work/adzs_<wbr>sc589_ezlite-poky-linux-<wbr>gnueabi/linux-=
yocto/4.12.18+<wbr>gitAUTOINC+0d0f74b803_<wbr>8506961765-r0.1/temp/log.do_<=
wbr>compile.28883)</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: Task (/h=
ome/user/work/sad-yocto/<wbr>poky/meta/recipes-kernel/<wbr>linux/linux-yoct=
o_4.12.bb:do_<wbr>compile) failed with exit code &#39;1&#39;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">NOTE: Tasks Sum=
mary: Attempted 2444 tasks of which 2443 didn&#39;t need to be rerun and 1 =
failed.</span></div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px">What is the common practice f=
or adding .dts/.dtsi files to a bsp in order to generate a .dtb file during=
 the build?</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Peter.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
</div>
</div>
</div>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a114531fc1e2df1056399a37c--
