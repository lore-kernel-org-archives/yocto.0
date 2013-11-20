Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82E6AE00569
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 15:36:33 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id t60so4927497wes.17
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 15:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=czrrd9IIiIMCrYzv7nbTCFMULm7Uj7+3JegoI3+vzOA=;
	b=kkFplylStQRN1mk5PBLRsfpvqdCpMQHfkGLnWYB/Z05n9BvNUmi0iRh8SyNwRGUAab
	0yxcIS+i0kkArHxtrVCL/7V2soI8mBjRVYEsqWcFPPmSXKwjb5W2Fo1jRX15o4IFJNh8
	0TL4lbh6o9iEdvZ04149O+KE/e2ocDxhZnP7NrmvAF5fMnVRgDIhCv0ZQXBYGSXA5rkW
	8DCsAirbVoigWynTBOnO3iP2teJf1GSILx2TABbRG06Ocniv9IekYp3g9qwPKJN2ndE4
	uRGsEokJqZNXdBzD8hL8vfrpYipePCXYvSWBsEnlTHiXg+2//riTcN9NOMvStyHzS0yH
	P5PA==
MIME-Version: 1.0
X-Received: by 10.180.198.109 with SMTP id jb13mr3263326wic.55.1384990591461; 
	Wed, 20 Nov 2013 15:36:31 -0800 (PST)
Received: by 10.194.179.198 with HTTP; Wed, 20 Nov 2013 15:36:31 -0800 (PST)
In-Reply-To: <CANwz6nxNuT0bjn_tSb-wB=3d7pYatUWDEXXCEH1YWnQxF_OjWg@mail.gmail.com>
References: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
	<CANwz6nxNuT0bjn_tSb-wB=3d7pYatUWDEXXCEH1YWnQxF_OjWg@mail.gmail.com>
Date: Thu, 21 Nov 2013 00:36:31 +0100
Message-ID: <CA+chaQcx=GOAyukKj1L6=bnK84HnzydM1bzGL4jPURz=0Yt9dw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wrong version of busybox after adding new layers.
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
X-List-Received-Date: Wed, 20 Nov 2013 23:36:36 -0000
Content-Type: multipart/alternative; boundary=047d7b624e9a38af2204eba44085

--047d7b624e9a38af2204eba44085
Content-Type: text/plain; charset=UTF-8

uhd was moved to separate layer

http://cgit.openembedded.org/meta-openembedded/commit/?id=381c941594752465d08967f3567c7a63e4cc3170

send patch there.

If you want it fixed in dora, you need to find old tarball, compare content
to see that there wasn't something nasty added to it and then you can send
patch for dora release with the diff shown in commit message.


On Tue, Nov 19, 2013 at 5:34 AM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello,
> This fixed 1 error. Please pass to meta-oe group
> git diff
> diff --git a/meta-oe/recipes-connectivity/uhd/uhd-firmware_003.005.002.bbb/meta
> index 3afae27..7fc0574 100644
> --- a/meta-oe/recipes-connectivity/uhd/uhd-firmware_003.005.002.bb
> +++ b/meta-oe/recipes-connectivity/uhd/uhd-firmware_003.005.002.bb
> @@ -9,8 +9,8 @@ LIC_FILES_CHKSUM = "file://share/uhd/images/
> usrp_e100_fpga_v2.bi
>  inherit allarch
>
>  SRC_URI = "
> http://files.ettus.com/binaries/uhd_stable/releases/uhd_${PV}-releas
> -SRC_URI[md5sum] = "2dbb7e2fb0c774e5ea2372bac25102e5"
> -SRC_URI[sha256sum] =
> "217efa814fb031ad136bd3dcf89ca219dd6d7ee01aa7e65c56c56b773
> +SRC_URI[md5sum] = "2912c1c7cde099f2671f2f8f24879b82"
> +SRC_URI[sha256sum] =
> "6c3c70158e74754f29d9709a7668eff6238a5cd5bf31e35b31bbeaaee
>
>  S = "${WORKDIR}/uhd-images_${PV}-release
> I still have several ERRORS will continue in the morning trying to find
> fixes
> Any and all help will be appreciated
> Thanks
>
>
> On Sun, Nov 17, 2013 at 5:17 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
>
>> Hello,
>> MACHINE=zedboard bitbake core-image-sato builds okay.
>>
>> Build Configuration:
>> BB_VERSION        = "1.19.1"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "Fedora-18"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "zedboard"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.4+snapshot-20131117"
>> TUNE_FEATURES     = " armv7a vfp neon zynq"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto        = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
>> meta-xilinx
>> meta-kc705
>> meta-zc702
>> meta-zedboard     = "wkg:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
>> meta-yocto-bsp    = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
>>
>> NOTE: Running noexec task 5589 of 5595 (ID: 3428,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
>> gst-meta-base_0.10.bb, do_build)
>> NOTE: Running noexec task 5590 of 5595 (ID: 3103,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
>> gst-plugins-good_0.10.31.bb, do_build)
>> NOTE: Running noexec task 5591 of 5595 (ID: 2804,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/owl-video-widget/
>> libowl-av_git.bb, do_build)
>> NOTE: Running noexec task 5592 of 5595 (ID: 1583,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/gaku/
>> gaku_git.bb, do_build)
>> NOTE: Running noexec task 5593 of 5595 (ID: 313,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/packagegroups/
>> packagegroup-core-x11-sato.bb, do_build)
>> NOTE: Running task 5594 of 5595 (ID: 7,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
>> core-image-sato.bb, do_rootfs)
>> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Started
>> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded
>> NOTE: Running noexec task 5595 of 5595 (ID: 12,
>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
>> core-image-sato.bb, do_build)
>> NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn't need to be
>> rerun and all succeeded.
>>
>> busybox:
>>   meta                 1.21.1
>> was used.
>>
>> After adding these 2 lines to bblayers.conf
>>   /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \
>>   /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \
>>
>> bitbake-layers show-layers
>> layer                 path                                      priority
>> ==========================================================================
>> meta                  /home/vidal/POKY/build111613_zedboard/poky/meta  5
>> meta-yocto
>> /home/vidal/POKY/build111613_zedboard/poky/meta-yocto  5
>> meta-oe
>> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe  6
>> meta-multimedia
>> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia  6
>> meta-xilinx
>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx  8
>> meta-kc705
>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-kc705  8
>> meta-zc702
>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc702  8
>> meta-zedboard
>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zedboard  8
>> meta-yocto-bsp
>> /home/vidal/POKY/build111613_zedboard/poky/meta-yocto-bsp  5
>> [vidal@ws009 build]$ bitbake-layers show-recipes
>> Parsing recipes..ERROR: No recipes available for:
>>
>> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1.20.2.bbappend
>> What is the procedure to us busybox_1.20.2 with the new layers?
>> Any and all help is appreciated.
>> Thanks
>>
>>
>>
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b624e9a38af2204eba44085
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>uhd was moved to separate layer</div><div><br></div><=
a href=3D"http://cgit.openembedded.org/meta-openembedded/commit/?id=3D381c9=
41594752465d08967f3567c7a63e4cc3170">http://cgit.openembedded.org/meta-open=
embedded/commit/?id=3D381c941594752465d08967f3567c7a63e4cc3170</a><br>
<div><br></div><div>send patch there.</div><div><br></div><div>If you want =
it fixed in dora, you need to find old tarball, compare content to see that=
 there wasn&#39;t something nasty added to it and then you can send patch f=
or dora release with the diff shown in commit message.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue,=
 Nov 19, 2013 at 5:34 AM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hello,<=
br></div>This fixed 1 error. Please pass to meta-oe group<br>git diff<br>di=
ff --git a/meta-oe/recipes-connectivity/uhd/<a href=3D"http://uhd-firmware_=
003.005.002.bb" target=3D"_blank">uhd-firmware_003.005.002.bb</a> b/meta<br=
>

index 3afae27..7fc0574 100644<br>--- a/meta-oe/recipes-connectivity/uhd/<a =
href=3D"http://uhd-firmware_003.005.002.bb" target=3D"_blank">uhd-firmware_=
003.005.002.bb</a><br>+++ b/meta-oe/recipes-connectivity/uhd/<a href=3D"htt=
p://uhd-firmware_003.005.002.bb" target=3D"_blank">uhd-firmware_003.005.002=
.bb</a><br>

@@ -9,8 +9,8 @@ LIC_FILES_CHKSUM =3D &quot;file://share/uhd/images/<a href=
=3D"http://usrp_e100_fpga_v2.bi" target=3D"_blank">usrp_e100_fpga_v2.bi</a>=
<br>=C2=A0inherit allarch<br>=C2=A0<br>=C2=A0SRC_URI =3D &quot;<a href=3D"h=
ttp://files.ettus.com/binaries/uhd_stable/releases/uhd_$%7BPV%7D-releas" ta=
rget=3D"_blank">http://files.ettus.com/binaries/uhd_stable/releases/uhd_${P=
V}-releas</a><br>

-SRC_URI[md5sum] =3D &quot;2dbb7e2fb0c774e5ea2372bac25102e5&quot;<br>-SRC_U=
RI[sha256sum] =3D &quot;217efa814fb031ad136bd3dcf89ca219dd6d7ee01aa7e65c56c=
56b773<br>+SRC_URI[md5sum] =3D &quot;2912c1c7cde099f2671f2f8f24879b82&quot;=
<br>

+SRC_URI[sha256sum] =3D &quot;6c3c70158e74754f29d9709a7668eff6238a5cd5bf31e=
35b31bbeaaee<br>=C2=A0<br>=C2=A0S =3D &quot;${WORKDIR}/uhd-images_${PV}-rel=
ease<br></div>I still have several ERRORS will continue in the morning tryi=
ng to find fixes <br>

</div><div class=3D"im">Any and all help will be appreciated <br></div></di=
v>Thanks<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gma=
il_extra"><br><br><div class=3D"gmail_quote">On Sun, Nov 17, 2013 at 5:17 P=
M, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmai=
l.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello,<br>MACHINE=3Dze=
dboard bitbake core-image-sato builds okay. <br><br>Build Configuration:<br=
>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.19.1&quot=
;<br>

BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-=
linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Fedora-18&quot;<br>
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-lin=
ux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;zedboard&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=C2=A0=C2=A0=C2=A0 =3D &quot;1.4+snapshot-20131117&quot;<br>TUNE_FEATURE=
S=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot; armv7a vfp neon zynq&quot;<br>


TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quo=
t;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;wkg:3dee534f1e25109e0bdb681de0746c336f4b8840&quot;<br>meta-xilinx=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-kc705=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>meta-zc702=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 <br>meta-zedboard=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;wkg:46f4c79d6d55b556a9=
0bb0fd89c2c09acf2aebff&quot;<br>


meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;wkg:3dee534f1e25109e0bdb681de074=
6c336f4b8840&quot;<br><br>NOTE: Running noexec task 5589 of 5595 (ID: 3428,=
 /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstream=
er/<a href=3D"http://gst-meta-base_0.10.bb" target=3D"_blank">gst-meta-base=
_0.10.bb</a>, do_build)<br>


NOTE: Running noexec task 5590 of 5595 (ID: 3103, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-multimedia/gstreamer/<a href=3D"http://gst-p=
lugins-good_0.10.31.bb" target=3D"_blank">gst-plugins-good_0.10.31.bb</a>, =
do_build)<br>

NOTE: Running noexec task 5591 of 5595 (ID: 2804, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-sato/owl-video-widget/<a href=3D"http://libo=
wl-av_git.bb" target=3D"_blank">libowl-av_git.bb</a>, do_build)<br>
NOTE: Running noexec task 5592 of 5595 (ID: 1583, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-sato/gaku/<a href=3D"http://gaku_git.bb" tar=
get=3D"_blank">gaku_git.bb</a>, do_build)<br>NOTE: Running noexec task 5593=
 of 5595 (ID: 313, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-=
sato/packagegroups/<a href=3D"http://packagegroup-core-x11-sato.bb" target=
=3D"_blank">packagegroup-core-x11-sato.bb</a>, do_build)<br>


NOTE: Running task 5594 of 5595 (ID: 7, /home/vidal/POKY/build111613_zedboa=
rd/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb" targ=
et=3D"_blank">core-image-sato.bb</a>, do_rootfs)<br>NOTE: recipe core-image=
-sato-1.0-r0: task do_rootfs: Started<br>


NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded<br>NOTE: Run=
ning noexec task 5595 of 5595 (ID: 12, /home/vidal/POKY/build111613_zedboar=
d/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb" targe=
t=3D"_blank">core-image-sato.bb</a>, do_build)<br>


NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn&#39;t need to b=
e rerun and all succeeded.<br><br>busybox:<br>=C2=A0 meta=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 1.21.1<br></div>was used.<br><br><div>After adding these 2 lines to bbl=
ayers.conf <br>


=C2=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \<br>=C2=
=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \<br=
><br>bitbake-layers show-layers<br>layer=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 path=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 priority=
<br>


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/vidal/POKY/build111613_zedboard/pok=
y/meta=C2=A0 5<br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-yocto=
=C2=A0 5<br>


meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-=
oe=C2=A0 6<br>meta-multimedia=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/vid=
al/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia=C2=A0 6<br>meta-x=
ilinx=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/vid=
al/POKY/build111613_zedboard/poky/meta-xilinx=C2=A0 8<br>


meta-kc705=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-kc705=C2=A0=
 8<br>meta-zc702=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc702=
=C2=A0 8<br>meta-zedboard=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /=
home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zedboard=C2=A0 8=
<br>


meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/vidal/POKY/b=
uild111613_zedboard/poky/meta-yocto-bsp=C2=A0 5<br>[vidal@ws009 build]$ bit=
bake-layers show-recipes<br>Parsing recipes..ERROR: No recipes available fo=
r:<br>=C2=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe/rec=
ipes-core/busybox/busybox_1.20.2.bbappend<br>


What is the procedure to us busybox_1.20.2 with the new layers?<br>Any and =
all help is appreciated.<br>Thanks<br><br>=C2=A0<br><br></div></div>
</blockquote></div><br></div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b624e9a38af2204eba44085--
