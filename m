Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8C6BBE01481
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 13:42:39 -0800 (PST)
Received: by mail-ea0-f173.google.com with SMTP id i1so395990eaa.18
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 13:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=Pp1GMPzVAWt8WoSW22royqJTzdA256Qi8maXkfa1nhE=;
	b=YGs2NnVt6m4boWJ24ckj5QY5A0i26l16tAEU9ZyKsJOrOxYePb8c4W9WJ5o5hxKt0z
	eNOls9jBUVRtKIv2agM0sTSOQIZRqB/5B5LoQaspunTIL4r0S2xOpI4M1xl1GWftLTnr
	TnbTXzO5t+VpyrTQeA1bZMsE3Q95Z9NX+W4og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=Pp1GMPzVAWt8WoSW22royqJTzdA256Qi8maXkfa1nhE=;
	b=UrMG9tTD+pnwivhnllVqHiAWCsEIy8jCwH34EoYvXSQG9IMAhbY0o2A9O8viAI+LjH
	J0l3vLmbdW37v5jIhr94ANAfEVFfM+309FCFy8eOn5KsTNmPisbolsKrrlEze0NOgw2q
	Vbx5eedrZIhKxiAieiJBajyz51MgHrCjFszT4xn+W/x0eXifQBon0/mJZl01eC/IVySX
	462Olo+qpwJIC/dK8RiQ6O8sXJu8lkbLG6aQasMRvzmeA2WgQ+dH0mkFAp66VN90HCxI
	ymL0/ZzJo5k/jqsnVxlj6ensOZ9U0YSJE4rC+k74IL9o6OTVNhm2RXQRukp84AjX8E4o
	4KQw==
MIME-Version: 1.0
X-Received: by 10.14.207.73 with SMTP id m49mr31966756eeo.24.1362174157567;
	Fri, 01 Mar 2013 13:42:37 -0800 (PST)
Received: by 10.223.43.200 with HTTP; Fri, 1 Mar 2013 13:42:37 -0800 (PST)
In-Reply-To: <CANwz6nzk6ZvQ-XRQLw5A2yFCx4-Y7UtgORcjeD3FHVe0jd48FA@mail.gmail.com>
References: <CANwz6nzk6ZvQ-XRQLw5A2yFCx4-Y7UtgORcjeD3FHVe0jd48FA@mail.gmail.com>
Date: Fri, 1 Mar 2013 13:42:37 -0800
Message-ID: <CA+gsK-qYVmgK+PrCf4Q954URQG9aL1FYq90YjjXFiyORHJgvtw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQkZJzWceGpzzSx00x7eHhUF2OsYefSLUtx4gDX9N96Y+8N+82k8sjHdN4H1S+G74FT69Rwt
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto beaglebone build no uImage on DOS partition.
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
X-List-Received-Date: Fri, 01 Mar 2013 21:42:40 -0000
Content-Type: multipart/alternative; boundary=047d7b343a7cc8f18a04d6e3e2b3

--047d7b343a7cc8f18a04d6e3e2b3
Content-Type: text/plain; charset=ISO-8859-1

Edward,

Yes, you do need of course a uImage which is the Linux kernel image with
the necessary wrapper for u-boot. If you do not have one after your build
finishes in <path-to-build-env>/tmp/deploy/images then building the Linux
kernel failed and you should look for error messages.

To build just the kernel you can run

MACHINE=beaglebone bitbake virtual/kernel -vDD

It seems that inside your build environment you are mixing builds for
BeagleBone and PandaBoard. You need to pay attention to that since the
BeagleBone uses a TI Sitara AM335x SoC and the PandaBoard a TI OMAP4430
SoC. They are both ARM but substantially different.

Rudi


On Fri, Mar 1, 2013 at 8:12 AM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello,
> Any and all help will be appreciated.
>
> yocto beaglebone build no uImage to DOS partition.
> My questions are do you need the a uImage on DOS partition and should you
> use core-image-sato-sdk with the beaglebone since it has no display on
> board, but you want the SDK?  My beaglebone booted okay but I did see that
> the xserver failed.  My pandaboard build is failing currently but I have
> had successful builds in the past in early Jan with same process outlined
> below.
>
> Downloaded both poky and meta-ti
>
> cd /home/vidal/POKY/build022813_panda
> git clone  git://git.yoctoproject.org/poky.git
> cd /home/vidal/POKY/build022813_panda/poky
> git log
> commit d7b248e715d99766bf8602ff9f038f8b0afa5e78
> Author: Constantin Musca <constantinx.musca@intel.com>
> Date:   Mon Feb 25 17:29:15 2013 +0200
>
> cd /home/vidal/POKY/build022813_panda/poky
> git clone git://git.yoctoproject.org/meta-ti
> git log
> commit 4d99e63181c6f58b5bb41eb830c7af75b097e10e
> Author: Franklin S. Cooper Jr <fcooper@ti.com>
> Date:   Mon Feb 18 22:45:16 2013 -0600
>
> Modifications to file
> /home/vidal/POKY/build022813/poky/build/conf/local.conf
> Added the following three lines at the beginning of the file.
> MACHINE ?= "beaglebone"
> MACHINE ?= "pandaboard"
> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"
> Mofified the following 3 lines as shown below.
> #BB_NUMBER_THREADS = "4" --> BB_NUMBER_THREADS = "8"
> #PARALLEL_MAKE = "-j 4" --> PARALLEL_MAKE = "-j 8"
> #DL_DIR ?= "${TOPDIR}/downloads" --> DL_DIR ?=
> "/home/vidal/POKY/linux_src_dnloads_panda/downloads"
>
> Modification done to
> /home/vidal/POKY/build022813/poky/build/conf/bblayers.conf
> Added the line
>   /home/vidal/POKY/build022813_panda/poky/meta-ti \
> After the line
>   /home/vidal/POKY/build022813_panda/poky/meta-yocto \
>
> Built on Fedora 18 x86_64 system.
>
> MACHINE=beaglebone bitbake core-image-sato-sdk -vDD
> NOTE: recipe core-image-sato-sdk-1.0-r0: task do_rootfs: Succeeded
> DEBUG: Marking task 12
> (/home/vidal/POKY/build022813_panda/poky/meta/recipes-sato/images/
> core-image-sato-sdk.bb, do_build) as buildable
> DEBUG: Stampfile
> /home/vidal/POKY/build022813_panda/poky/build/tmp/stamps/beaglebone-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0.do_build.43a176d7b0f28fabd0275a4afba65cd3
> not available
> NOTE: Running noexec task 6534 of 6534 (ID: 12,
> /home/vidal/POKY/build022813_panda/poky/meta/recipes-sato/images/
> core-image-sato-sdk.bb, do_build)
> NOTE: Tasks Summary: Attempted 6534 tasks of which 543 didn't need to be
> rerun and all succeeded.
>
> Build Configuration:
> BB_VERSION        = "1.17.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Unknown"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130228"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:d7b248e715d99766bf8602ff9f038f8b0afa5e78"
> meta-ti           = "master:4d99e63181c6f58b5bb41eb830c7af75b097e10e"
> meta-yocto-bsp    = "master:d7b248e715d99766bf8602ff9f038f8b0afa5e78"
>
> Transferred the following files to boot partition from
> /home/vidal/POKY/build022813_panda/poky/build/tmp/deploy/images/
> MLO-beaglebone-2011.09+git* --> MLO
> u-boot.img -> u-boot-beaglebone-2011.09+git-r30.img* --> u-boot.img
> Untarred the file
> /home/vidal/POKY/build022813_panda/poky/build/tmp/deploy/images/core-image-sato-sdk-beaglebone-20130228230414.rootfs.tar.bz2
> to /run/media/vidal/Angstrom
>
> If anyone wants any additional information feel free to ask at
> vidal.develone@gmail.com or develone@sbcglobal.net.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b343a7cc8f18a04d6e3e2b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Edward,<div><br></div><div style>Yes, you do need of cours=
e a uImage which is the Linux kernel image with the necessary wrapper for u=
-boot. If you do not have one after your build finishes in &lt;path-to-buil=
d-env&gt;/tmp/deploy/images then building the Linux kernel failed and you s=
hould look for error messages.</div>
<div style><br></div><div style>To build just the kernel you can run</div><=
div style><br></div><div style><span style=3D"font-family:arial,sans-serif;=
font-size:13px">MACHINE=3Dbeaglebone bitbake virtual/kernel -vDD</span><br>
</div><div><br></div><div style>It seems that inside your build environment=
 you are mixing builds for BeagleBone and PandaBoard. You need to pay atten=
tion to that since the BeagleBone uses a TI Sitara AM335x SoC and the Panda=
Board a TI OMAP4430 SoC. They are both ARM but substantially different.</di=
v>
<div style><br></div><div style>Rudi</div></div><div class=3D"gmail_extra">=
<br><br><div class=3D"gmail_quote">On Fri, Mar 1, 2013 at 8:12 AM, Edward V=
idal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com" targ=
et=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello,<br>Any and all help will be appreciat=
ed.<br><br>yocto beaglebone build no uImage to DOS partition.<br>My questio=
ns are do you need the a uImage on DOS partition and should you use core-im=
age-sato-sdk with the beaglebone since it has no display on board, but you =
want the SDK?=A0 My beaglebone booted okay but I did see that the xserver f=
ailed.=A0 My pandaboard build is failing currently but I have had successfu=
l builds in the past in early Jan with same process outlined below.=A0 <br>

<br>Downloaded both poky and meta-ti<br><br>cd /home/vidal/POKY/build022813=
_panda<br>git clone=A0 git://<a href=3D"http://git.yoctoproject.org/poky.gi=
t" target=3D"_blank">git.yoctoproject.org/poky.git</a><br>cd /home/vidal/PO=
KY/build022813_panda/poky<br>

git log<br>commit d7b248e715d99766bf8602ff9f038f8b0afa5e78<br>Author: Const=
antin Musca &lt;<a href=3D"mailto:constantinx.musca@intel.com" target=3D"_b=
lank">constantinx.musca@intel.com</a>&gt;<br>Date:=A0=A0 Mon Feb 25 17:29:1=
5 2013 +0200<br>
<br>
cd /home/vidal/POKY/build022813_panda/poky<br>git clone git://<a href=3D"ht=
tp://git.yoctoproject.org/meta-ti" target=3D"_blank">git.yoctoproject.org/m=
eta-ti</a><br>git log<br>commit 4d99e63181c6f58b5bb41eb830c7af75b097e10e<br=
>
Author: Franklin S. Cooper Jr &lt;<a href=3D"mailto:fcooper@ti.com" target=
=3D"_blank">fcooper@ti.com</a>&gt;<br>
Date:=A0=A0 Mon Feb 18 22:45:16 2013 -0600<br><br>Modifications to file=A0 =
/home/vidal/POKY/build022813/poky/build/conf/local.conf<br>Added the follow=
ing three lines at the beginning of the file. <br>MACHINE ?=3D &quot;beagle=
bone&quot;<br>

MACHINE ?=3D &quot;pandaboard&quot;<br>BBMASK ?=3D &quot;.*/meta-ti/recipes=
-(misc|bsp/formfactor|graphics/mesa)/&quot;<br>Mofified the following 3 lin=
es as shown below.<br>#BB_NUMBER_THREADS =3D &quot;4&quot; --&gt; BB_NUMBER=
_THREADS =3D &quot;8&quot;<br>

#PARALLEL_MAKE =3D &quot;-j 4&quot; --&gt; PARALLEL_MAKE =3D &quot;-j 8&quo=
t;<br>#DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot; --&gt; DL_DIR ?=3D &quot=
;/home/vidal/POKY/linux_src_dnloads_panda/downloads&quot;<br><br>Modificati=
on done to /home/vidal/POKY/build022813/poky/build/conf/bblayers.conf<br>

Added the line<br>=A0 /home/vidal/POKY/build022813_panda/poky/meta-ti \<br>=
After the line<br>=A0 /home/vidal/POKY/build022813_panda/poky/meta-yocto \<=
br><br>Built on Fedora 18 x86_64 system.<br><br>MACHINE=3Dbeaglebone bitbak=
e core-image-sato-sdk -vDD<br>

NOTE: recipe core-image-sato-sdk-1.0-r0: task do_rootfs: Succeeded<br>DEBUG=
: Marking task 12 (/home/vidal/POKY/build022813_panda/poky/meta/recipes-sat=
o/images/<a href=3D"http://core-image-sato-sdk.bb" target=3D"_blank">core-i=
mage-sato-sdk.bb</a>, do_build) as buildable<br>

DEBUG: Stampfile /home/vidal/POKY/build022813_panda/poky/build/tmp/stamps/b=
eaglebone-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0.do_build.43a176d7b0=
f28fabd0275a4afba65cd3 not available<br>NOTE: Running noexec task 6534 of 6=
534 (ID: 12, /home/vidal/POKY/build022813_panda/poky/meta/recipes-sato/imag=
es/<a href=3D"http://core-image-sato-sdk.bb" target=3D"_blank">core-image-s=
ato-sdk.bb</a>, do_build)<br>

NOTE: Tasks Summary: Attempted 6534 tasks of which 543 didn&#39;t need to b=
e rerun and all succeeded.<br><br>Build Configuration:<br>BB_VERSION=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;1.17.1&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;x86_64-linux&quot;<br>

NATIVELSBSTRING=A0=A0 =3D &quot;Unknown&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.3+sna=
pshot-20130228&quot;<br>

TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:d7b248=
e715d99766bf8602ff9f038f8b0afa5e78&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;master:4d99e63181c6f58b5bb41eb830c7af75b097e10e&quot;<br>

meta-yocto-bsp=A0=A0=A0 =3D &quot;master:d7b248e715d99766bf8602ff9f038f8b0a=
fa5e78&quot;<br><br>Transferred the following files to boot partition from =
<br>/home/vidal/POKY/build022813_panda/poky/build/tmp/deploy/images/<br>MLO=
-beaglebone-2011.09+git* --&gt; MLO<br>

u-boot.img -&gt; u-boot-beaglebone-2011.09+git-r30.img* --&gt; u-boot.img<b=
r>Untarred the file /home/vidal/POKY/build022813_panda/poky/build/tmp/deplo=
y/images/core-image-sato-sdk-beaglebone-20130228230414.rootfs.tar.bz2 to /r=
un/media/vidal/Angstrom<br>

<br>If anyone wants any additional information feel free to ask at <a href=
=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail=
.com</a> or <a href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">dev=
elone@sbcglobal.net</a>.<br>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--=A0<br=
><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font>=
<div><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solut=
ions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b343a7cc8f18a04d6e3e2b3--
