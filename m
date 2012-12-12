Return-Path: <akini@synapticon.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9AE4E01404
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:32:04 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so745515lah.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=ZubpQGWs9nhQzRMdbPpMtJIgvRd11Wqekk9hNuY0Ut8=;
	b=J7XEz5iMUzEuC6kWxHLcq4A9qiXp8rZAFvpCmdkhXD5jd/oTisK1qFJppY4Ta0xnw9
	rDZayvGeQweWYCPt/xEnvHAfqNHG3oqCCjUnw6nsJpY3lcIoJxJWTprtYcKbJNWtIxI7
	ToOX5PAoPxtf4WyIrp5OBH9DGNXXUCUjyJwN6yrb87RvZOt599VKTeW6vfWui/EQNjQg
	u6X2eauJCaZu8tyY9RuN3d88ylnME7sgIkTSf87N0oX+bEIvpzzWPWNBOGkBeqjewdVt
	GQyImD/De1ripThN2luj/vBXxb9V0qv9OeduzIjcIRCAnmf9EH42qz7c6F0+zLDfjNm8
	Eglg==
MIME-Version: 1.0
Received: by 10.152.132.3 with SMTP id oq3mr1432160lab.18.1355326323631; Wed,
	12 Dec 2012 07:32:03 -0800 (PST)
Received: by 10.112.60.36 with HTTP; Wed, 12 Dec 2012 07:32:03 -0800 (PST)
In-Reply-To: <92408E63-2CBD-4806-9B71-14BECF354896@gmail.com>
References: <CAKS01o=9sWAg3OhZAf-S+GRyWtv4QxktWKEmtZ7LaXK3vJQoCQ@mail.gmail.com>
	<92408E63-2CBD-4806-9B71-14BECF354896@gmail.com>
Date: Wed, 12 Dec 2012 16:32:03 +0100
Message-ID: <CAKS01okkz7ntkzUAxb1oLfNAt4RXYW7jgBAHqBpLksVSU=O7qg@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Gm-Message-State: ALoCoQlmZaXopbTWWSE+4/8pA4BFwpXgDlTUMHg/lw/CGabXkmW45z9Dm1cX226ZuD/oqKn6Wla8
Cc: yocto@yoctoproject.org
Subject: Re: building for ZYNQ ZC702 SoC
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Dec 2012 15:32:05 -0000
Content-Type: multipart/alternative; boundary=f46d0430855413278e04d0a980fc

--f46d0430855413278e04d0a980fc
Content-Type: text/plain; charset=ISO-8859-1

Hi Elvis,

I could not find where the arm gcc was included in this build.
I was checking the build process and took the gcc.4.4.6 while building the
core-image-minimal.

Hence i wanted to confirm if the arm-gcc can be integrated and steps to do
it.


On 12 December 2012 16:18, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> Hi Anup,
>                 Atleast two people on the yocto mailing list have
> successfully built the toolchain and rootfile system for the ZC702, Philip
> Balister and myself, using the latest yocto master.
>
> Here are a few steps:
>
> 01. Look up the Yocto Quick Start Guide to setup your Ubuntu 12.10 x86
> 64-bit host development environment.
>
> 02. Use Philip Balister's meta-zynq layer located here, and add it to your
> bblayer.conf file
>
> https://github.com/balister/meta-zynq
>
> $ gedit conf/bblayers.conf
>
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "5"
>
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
>
> BBLAYERS ?= " \
>   /tool/yocto/poky/meta \
>   /tool/yocto/poky/meta-yocto \
>   /tool/yocto/meta-openembedded/toolchain-layer \
>   /tool/yocto/meta-zynq \
>   "
>
> 03. Updated your yocto local.conf file as follows:
>
> #
> # Xilinx target board configuration.
> #
> # Set the target machine details
> MACHINE ?= "zynq-zc702"
> # Set Xilinx Platform Studio hardware project path
> XILINX_BSP_PATH ?= "/project/xilinx-zc702"
> # Set target board
> XILINX_BOARD ?= "zc702"
>
>
> 04. Download the souces
>
> $ cd /tool/yocto/poky
> $ source oe-init-build-env build
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchain
>     meta-toolchain-sdk
>     adt-installer
>     meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu
> qemux86'
>
> $ bitbake -c fetchall core-image-minimal
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "zynq-zc702"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20121025"
> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:33440ee70623394d06a4b214c2be10788cba6d08"
> toolchain-layer   = "master:55855cd569fbff7182974ca08b1de8435bf0f597"
> meta-zynq-balister =
> "master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
>
> 05. Build the toolchain
>
> $ cd /tool/yocto/poky
> $ source oe-init-build-env build
> $ bitbake meta-toolchain
>
>
> 06. Build the image
>
> $ bitbake core-image-minimal
>
> 07. Use Xilinx PlanAhead 14.3 software design too to create your hardware
> design.
>
> The only additional step you need to perform is to use the Xilinx
> PlanAhead software, to export you hardware to the Xilinx SDK, and use the
> SDK to generate and build the Zynq First Stage Bootloader (zynq_fsbl).
> After that, create a boot image by using the Xilinx tool menu option, and
> include the u-boot.elf, system.bit and zynq_fsbl.elf.
>
> Use the scripts in XAPP792 to download the kernel and bootable image to
> the target using XMD. Or rename the u-boot.bin file to BOOT.bin, copy the
> uImage generated from the yocto build, and it should all work.
>
> Best regards,
>
> Elvis Dowson
>
>
> On Dec 12, 2012, at 6:56 PM, Anup Kini <akini@synapticon.com> wrote:
>
> Hi all,
>
> I am new to Yocto.
> I am trying to build an environment with arm-gcc integrated since the ZYNQ
> board has ARM Cortex A9 ducal core on it.
> Let me know if any one has tried something similar or some pointers on how
> i can proceed.
>
>
>
> --
> *Anup Kini
> *Systems Engineer****
> *
> ------------------------------
> *
>
> *Synapticon** * |  Cyber-Physical System Solutions ****
> Direct:****
> +49 7335 / 186 999 17****
> Fax:****
> +49 7335 / 186 999 19****
>  ****
>  ****
>
> synapticon.com <http://www.synapticon.com/>  |  @synapticon_co<https://twitter.com/#!/synapticon_co>
> ****
>
> Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
> Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
> Registry Court Ulm HRB 725114  |  USt-ID DE271647127****
>
> This message and any files transmitted with it are confidential and
> intended
> solely for the use of the individual or entity to whom they are addressed.
> Please notify the sender immediately if you have received this e-mail by
> mistake and delete it from your system.
>
>  _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>


-- 

*Anup Kini
*Systems Engineer****
*
------------------------------
*

*Synapticon** * |  Cyber-Physical System Solutions ****

Direct:****

+49 7335 / 186 999 17****

Fax:****

+49 7335 / 186 999 19****

 ****

 ****

synapticon.com <http://www.synapticon.com/>  |
@synapticon_co<https://twitter.com/#!/synapticon_co>
****

Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
Registry Court Ulm HRB 725114  |  USt-ID DE271647127****

This message and any files transmitted with it are confidential and
intended
solely for the use of the individual or entity to whom they are addressed.
Please notify the sender immediately if you have received this e-mail by
mistake and delete it from your system.

--f46d0430855413278e04d0a980fc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Elvis,<div><br></div><div>I could not find where the arm gcc was include=
d in this build.</div><div>I was checking the build process and took the gc=
c.4.4.6 while building the core-image-minimal.</div><div><br></div><div>
Hence i wanted to confirm if the arm-gcc can be integrated and steps to do =
it.</div><div><br><br><div class=3D"gmail_quote">On 12 December 2012 16:18,=
 Elvis Dowson <span dir=3D"ltr">&lt;<a href=3D"mailto:elvis.dowson@gmail.co=
m" target=3D"_blank">elvis.dowson@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word">Hi Anup,=
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Atleast two people on the yocto mailin=
g list have successfully built the toolchain and rootfile system for the ZC=
702, Philip Balister and myself, using the latest yocto master.</div>
<div><br></div><div>Here are a few steps:</div><div><br></div><div>01. Look=
 up the Yocto Quick Start Guide to setup your Ubuntu 12.10 x86 64-bit host =
development environment.</div><div><br></div><div>02. Use Philip Balister&#=
39;s meta-zynq layer located here, and add it to your bblayer.conf file</di=
v>
<div><br></div><div><a href=3D"https://github.com/balister/meta-zynq" targe=
t=3D"_blank">https://github.com/balister/meta-zynq</a></div><div><br></div>=
<div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">$ gedit co=
nf/bblayers.conf</div>
<div style=3D"margin:0px;font-size:12px;font-family:&#39;Lucida Grande&#39;=
;min-height:15px"><br></div><div style=3D"margin:0px;font-size:10px;font-fa=
mily:Monaco"># LAYER_CONF_VERSION is increased each time build/conf/bblayer=
s.conf</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco"># changes incom=
patibly</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">LC=
ONF_VERSION =3D &quot;5&quot;</div><div style=3D"margin:0px;font-size:10px;=
font-family:Monaco;min-height:14px">
<br></div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">BBPAT=
H =3D &quot;${TOPDIR}&quot;</div><div style=3D"margin:0px;font-size:10px;fo=
nt-family:Monaco">BBFILES ?=3D &quot;&quot;</div><div style=3D"margin:0px;f=
ont-size:10px;font-family:Monaco;min-height:14px">
<br></div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">BBLAY=
ERS ?=3D &quot; \</div><div style=3D"margin:0px;font-size:10px;font-family:=
Monaco">=A0 /tool/yocto/poky/meta \</div><div style=3D"margin:0px;font-size=
:10px;font-family:Monaco">
=A0 /tool/yocto/poky/meta-yocto \</div><div style=3D"margin:0px;font-size:1=
0px;font-family:Monaco">=A0 /tool/yocto/meta-openembedded/toolchain-layer \=
</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">=A0 /tool=
/yocto/meta-zynq \</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco">=A0 &quot;</div=
></div><div><br></div><div>03. Updated your yocto local.conf file as follow=
s:</div><div><br></div><div><div style=3D"margin:0px;font-size:10px;font-fa=
mily:Monaco">
#</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco"># Xilinx=
 target board configuration.</div><div style=3D"margin:0px;font-size:10px;f=
ont-family:Monaco">#=A0</div><div style=3D"margin:0px;font-size:10px;font-f=
amily:Monaco">
# Set the target machine details</div><div style=3D"margin:0px;font-size:10=
px;font-family:Monaco">MACHINE ?=3D &quot;zynq-zc702&quot;</div><div style=
=3D"margin:0px;font-size:10px;font-family:Monaco"># Set Xilinx Platform Stu=
dio hardware project path</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco">XILINX_BSP_PATH=
 ?=3D &quot;/project/xilinx-zc702&quot;</div><div style=3D"margin:0px;font-=
size:10px;font-family:Monaco"># Set target board</div><div style=3D"margin:=
0px;font-size:10px;font-family:Monaco">
XILINX_BOARD ?=3D &quot;zc702&quot;</div></div><div style=3D"margin:0px;fon=
t-size:10px;font-family:Monaco"><br></div><div style=3D"margin:0px;font-siz=
e:10px;font-family:Monaco"><br></div><div>04. Download the souces</div><div=
><br>
</div><div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">$ cd=
 /tool/yocto/poky</div><div style=3D"margin:0px;font-size:10px;font-family:=
Monaco">$ source oe-init-build-env build</div><div style=3D"margin:0px;font=
-size:10px;font-family:Monaco;min-height:14px">
<br></div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">### S=
hell environment set up for builds. ###</div><div style=3D"margin:0px;font-=
size:10px;font-family:Monaco;min-height:14px"><br></div><div style=3D"margi=
n:0px;font-size:10px;font-family:Monaco">
You can now run &#39;bitbake &lt;target&gt;&#39;</div><div style=3D"margin:=
0px;font-size:10px;font-family:Monaco;min-height:14px"><br></div><div style=
=3D"margin:0px;font-size:10px;font-family:Monaco">Common targets are:</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco">=A0 =A0 core-im=
age-minimal</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco=
">=A0 =A0 core-image-sato</div><div style=3D"margin:0px;font-size:10px;font=
-family:Monaco">
=A0 =A0 meta-toolchain</div><div style=3D"margin:0px;font-size:10px;font-fa=
mily:Monaco">=A0 =A0 meta-toolchain-sdk</div><div style=3D"margin:0px;font-=
size:10px;font-family:Monaco">=A0 =A0 adt-installer</div><div style=3D"marg=
in:0px;font-size:10px;font-family:Monaco">
=A0 =A0 meta-ide-support</div><div style=3D"margin:0px;font-size:10px;font-=
family:Monaco;min-height:14px"><br></div><div style=3D"margin:0px;font-size=
:10px;font-family:Monaco">You can also run generated qemu images with a com=
mand like &#39;runqemu qemux86&#39;</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco;min-height:14px"=
><br></div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">$ bi=
tbake -c fetchall core-image-minimal</div><div style=3D"margin:0px;font-siz=
e:10px;font-family:Monaco;min-height:14px">
<br></div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">Build=
 Configuration:</div><div style=3D"margin:0px;font-size:10px;font-family:Mo=
naco">BB_VERSION=A0 =A0 =A0 =A0 =3D &quot;1.16.0&quot;</div><div style=3D"m=
argin:0px;font-size:10px;font-family:Monaco">
TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;</div><div style=3D"margin:0px;f=
ont-size:10px;font-family:Monaco">TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux=
-gnueabi&quot;</div><div style=3D"margin:0px;font-size:10px;font-family:Mon=
aco">MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;zynq-zc702&quot;</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco">DISTRO=A0 =A0 =
=A0 =A0 =A0 =A0 =3D &quot;poky&quot;</div><div style=3D"margin:0px;font-siz=
e:10px;font-family:Monaco">DISTRO_VERSION=A0 =A0 =3D &quot;1.3+snapshot-201=
21025&quot;</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco=
">
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon cortexa9&quot;</div><div st=
yle=3D"margin:0px;font-size:10px;font-family:Monaco">TARGET_FPU=A0 =A0 =A0 =
=A0 =3D &quot;vfp-neon&quot;</div><div style=3D"margin:0px;font-size:10px;f=
ont-family:Monaco">
meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div style=3D"margin:0px;font-size:10=
px;font-family:Monaco">meta-yocto=A0 =A0 =A0 =A0 =3D &quot;master:33440ee70=
623394d06a4b214c2be10788cba6d08&quot;</div><div style=3D"margin:0px;font-si=
ze:10px;font-family:Monaco">
toolchain-layer =A0 =3D &quot;master:55855cd569fbff7182974ca08b1de8435bf0f5=
97&quot;</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">m=
eta-zynq-balister =3D &quot;master-xilinx-zc702-gcc-4.7:d168cea411034d1f153=
0e4eacf6eb3ce4affd1c8&quot;</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco;min-height:14px"=
><br></div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">NOTE=
: Resolving any missing task queue dependencies</div><div style=3D"margin:0=
px;font-size:10px;font-family:Monaco">
NOTE: Preparing runqueue</div><div style=3D"margin:0px;font-size:10px;font-=
family:Monaco">NOTE: Executing SetScene Tasks</div><div style=3D"margin:0px=
;font-size:10px;font-family:Monaco">NOTE: Executing RunQueue Tasks</div></d=
iv>
<div><br></div><div>05. Build the toolchain</div><div><br></div><div><div s=
tyle=3D"margin:0px;font-size:10px;font-family:Monaco">$ cd /tool/yocto/poky=
</div><div style=3D"margin:0px;font-size:10px;font-family:Monaco">$ source =
oe-init-build-env build</div>
<div style=3D"margin:0px;font-size:10px;font-family:Monaco">$ bitbake meta-=
toolchain</div></div><div><br></div><div><br></div><div>06. Build the image=
</div><div><br></div><div><div style=3D"margin:0px;font-size:10px;font-fami=
ly:Monaco">
$ bitbake core-image-minimal</div></div><div><br></div><div>07. Use Xilinx =
PlanAhead 14.3 software design too to create your hardware design.</div><di=
v><br></div><div>The only additional step you need to perform is to use the=
 Xilinx PlanAhead software, to export you hardware to the Xilinx SDK, and u=
se the SDK to generate and build the Zynq First Stage Bootloader (zynq_fsbl=
). After that, create a boot image by using the Xilinx tool menu option, an=
d include the u-boot.elf, system.bit and zynq_fsbl.elf.</div>
<div><br></div><div>Use the scripts in XAPP792 to download the kernel and b=
ootable image to the target using XMD. Or rename the u-boot.bin file to BOO=
T.bin, copy the uImage generated from the yocto build, and it should all wo=
rk.</div>
<div><br></div><div>Best regards,</div><div><br></div><div>Elvis Dowson</di=
v><div><br></div><div><br><div><div><div class=3D"h5"><div>On Dec 12, 2012,=
 at 6:56 PM, Anup Kini &lt;<a href=3D"mailto:akini@synapticon.com" target=
=3D"_blank">akini@synapticon.com</a>&gt; wrote:</div>
<br></div></div><blockquote type=3D"cite"><div><div class=3D"h5">Hi all,<di=
v><br></div><div>I am new to Yocto.</div><div>I am trying to build an envir=
onment with arm-gcc integrated since the ZYNQ board has ARM Cortex A9 ducal=
 core on it.</div>
<div>Let me know if any one has tried something similar or some pointers on=
 how i can proceed.</div>
<div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div style=3D"c=
olor:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif;margin:0px">=
<b><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-seri=
f">Anup Kini<br>

</span></b><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,s=
ans-serif">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></div><div align=3D"center" style=3D"text-align:center;color:rgb(34,34,34)=
;font-size:13px;font-family:arial,sans-serif;margin:0px">

<b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:Arial,sans-seri=
f"><hr size=3D"2" width=3D"100%" align=3D"center"></span></b></div><p style=
=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif;margin:=
0px 0px 8pt">

<b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:Arial,sans-seri=
f">Synapticon</span></b><b><span lang=3D"EN-US" style=3D"font-size:12pt;fon=
t-family:&#39;Times New Roman&#39;,serif">=A0</span></b><span lang=3D"EN-US=
" style=3D"font-size:12pt;font-family:Arial,sans-serif">=A0|=A0=A0</span><s=
pan lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-serif">Cy=
ber-Physical System Solutions</span><span lang=3D"EN-US" style=3D"font-size=
:10pt;font-family:Verdana,sans-serif">=A0</span><span lang=3D"EN-US"><u></u=
><u></u></span></p>

<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"border-col=
lapse:collapse;text-align:start;color:rgb(34,34,34);font-size:13px;font-fam=
ily:arial,sans-serif"><tbody><tr><td width=3D"57" valign=3D"top" style=3D"m=
argin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm">
<div style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:10pt;font=
-family:Arial,sans-serif">Direct:</span><span lang=3D"EN-US"><u></u><u></u>=
</span></div></td><td width=3D"227" valign=3D"top" style=3D"margin:0px;widt=
h:6cm;padding:0cm 5.4pt 0cm 0cm">
<div style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:10pt;font=
-family:Arial,sans-serif"><a value=3D"+49733518699917" style=3D"color:rgb(1=
7,85,204)">+49 7335 / 186 999 17</a></span><span lang=3D"EN-US"><u></u><u><=
/u></span></div>

</td></tr><tr><td width=3D"57" valign=3D"top" style=3D"margin:0px;width:42.=
55pt;padding:0cm 5.4pt 0cm 0cm"><div style=3D"margin:0px"><span lang=3D"EN-=
US" style=3D"font-size:10pt;font-family:Arial,sans-serif">Fax:</span><span =
lang=3D"EN-US"><u></u><u></u></span></div>

</td><td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding=
:0cm 5.4pt 0cm 0cm"><div style=3D"margin:0px"><span lang=3D"EN-US" style=3D=
"font-size:10pt;font-family:Arial,sans-serif"><a value=3D"+49733518699919" =
style=3D"color:rgb(17,85,204)">+49 7335 / 186 999 19</a></span><u></u><u></=
u></div>

</td></tr><tr><td width=3D"57" valign=3D"top" style=3D"margin:0px;width:42.=
55pt;padding:0cm 5.4pt 0cm 0cm"><div style=3D"margin:0px"><span lang=3D"EN-=
US" style=3D"font-size:6pt;font-family:Arial,sans-serif">=A0</span><u></u><=
u></u></div>
</td>
<td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding:0cm =
5.4pt 0cm 0cm"><div style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font=
-size:6pt;font-family:Arial,sans-serif">=A0</span><u></u><u></u></div></td>=
</tr></tbody></table>
<p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif=
;margin:0px 0px 8pt"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif"><a href=3D"http://www.synapticon.com/" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">synapticon.com</a>=A0=A0| =A0<a href=3D"https://twitter.=
com/#!/synapticon_co" style=3D"color:rgb(17,85,204)" target=3D"_blank">@syn=
apticon_co</a></span><u></u><u></u></p>
<p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif=
;margin:0px 0px 8pt"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">Synapticon GmbH =A0|=A0 Hohlbachweg 2=A0 | =A0=
73344 Gruibingen, DE<br>

Secretary=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+49 =
7335 / 186 999 0</a>=A0 |=A0 General Manager: Nikolai Ensslen=A0<br>Registr=
y Court Ulm HRB 725114=A0 |=A0 USt-ID DE271647127</span><u></u><u></u></p><=
p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif;=
margin:0px 0px 8pt">

<span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-serif;co=
lor:rgb(127,127,127)">This message and any files transmitted with it are co=
nfidential and intended=A0</span><span lang=3D"EN-US" style=3D"font-size:8p=
t;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>

</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">solely for the use of the individual or entity=
 to whom they are addressed.=A0</span><span lang=3D"EN-US" style=3D"font-si=
ze:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>

</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">Please notify the sender immediately if you ha=
ve received this e-mail by=A0</span><span lang=3D"EN-US" style=3D"font-size=
:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>

</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">mistake and delete it from your system.=A0</sp=
an></p><br>
</div></div></div>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></div></blockquote></div><br><br clear=3D"all"=
><div><br></div>-- <br><p style=3D"margin:0px;color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255)"><b><s=
pan lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-serif">An=
up Kini<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,s=
ans-serif">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></p><div align=3D"center" style=3D"margin:0px;color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255);text-=
align:center">
<b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:Arial,sans-seri=
f"><hr size=3D"2" width=3D"100%" align=3D"center"></span></b></div><p style=
=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:13px;background-color:rgb(255,255,255)">
<b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:Arial,sans-seri=
f">Synapticon</span></b><b><span lang=3D"EN-US" style=3D"font-size:12pt;fon=
t-family:&#39;Times New Roman&#39;,serif">=A0</span></b><span lang=3D"EN-US=
" style=3D"font-size:12pt;font-family:Arial,sans-serif">=A0|=A0=A0</span><s=
pan lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-serif">Cy=
ber-Physical System Solutions</span><span lang=3D"EN-US" style=3D"font-size=
:10pt;font-family:Verdana,sans-serif">=A0</span><span lang=3D"EN-US"><u></u=
><u></u></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:13px;text-align:start;back=
ground-color:rgb(255,255,255);border-collapse:collapse"><tbody><tr><td widt=
h=3D"57" valign=3D"top" style=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt=
 0cm 0cm">
<p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-f=
amily:Arial,sans-serif">Direct:</span><span lang=3D"EN-US"><u></u><u></u></=
span></p></td><td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6c=
m;padding:0cm 5.4pt 0cm 0cm">
<p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-f=
amily:Arial,sans-serif"><a value=3D"+49733518699917" style=3D"color:rgb(17,=
85,204)">+49 7335 / 186 999 17</a></span><span lang=3D"EN-US"><u></u><u></u=
></span></p>
</td></tr><tr><td width=3D"57" valign=3D"top" style=3D"margin:0px;width:42.=
55pt;padding:0cm 5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US=
" style=3D"font-size:10pt;font-family:Arial,sans-serif">Fax:</span><span la=
ng=3D"EN-US"><u></u><u></u></span></p>
</td><td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding=
:0cm 5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"f=
ont-size:10pt;font-family:Arial,sans-serif"><a value=3D"+49733518699919" st=
yle=3D"color:rgb(17,85,204)">+49 7335 / 186 999 19</a></span><u></u><u></u>=
</p>
</td></tr><tr><td width=3D"57" valign=3D"top" style=3D"margin:0px;width:42.=
55pt;padding:0cm 5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US=
" style=3D"font-size:6pt;font-family:Arial,sans-serif">=A0</span><u></u><u>=
</u></p></td>
<td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding:0cm =
5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-s=
ize:6pt;font-family:Arial,sans-serif">=A0</span><u></u><u></u></p></td></tr=
></tbody></table>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.synapticon.co=
m/" style=3D"color:rgb(17,85,204)" target=3D"_blank">synapticon.com</a>=A0=
=A0| =A0<a href=3D"https://twitter.com/#!/synapticon_co" style=3D"color:rgb=
(17,85,204)" target=3D"_blank">@synapticon_co</a></span><u></u><u></u></p>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif;color:rgb(127,127,127)">Synapticon G=
mbH =A0|=A0 Hohlbachweg 2=A0 | =A073344 Gruibingen, DE<br>
Secretary=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+49 =
7335 / 186 999 0</a>=A0 |=A0 General Manager: Nikolai Ensslen=A0<br>Registr=
y Court Ulm HRB 725114=A0 |=A0 USt-ID DE271647127</span><u></u><u></u></p><=
p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255)">
<span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-serif;co=
lor:rgb(127,127,127)">This message and any files transmitted with it are co=
nfidential and intended=A0</span><span lang=3D"EN-US" style=3D"font-size:8p=
t;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">solely for the use of the individual or entity=
 to whom they are addressed.=A0</span><span lang=3D"EN-US" style=3D"font-si=
ze:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">Please notify the sender immediately if you ha=
ve received this e-mail by=A0</span><span lang=3D"EN-US" style=3D"font-size=
:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">mistake and delete it from your system.=A0</sp=
an></p><br>
</div>

--f46d0430855413278e04d0a980fc--
