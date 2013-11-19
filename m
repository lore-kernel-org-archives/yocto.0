Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94859E004E5
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 17:07:20 -0800 (PST)
Received: by mail-qe0-f43.google.com with SMTP id 2so2418901qeb.30
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 17:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jlVmzh14Nob882niqw4Ckm2dLOup5T0HfUqPld2tyLM=;
	b=TDQtZF4m3pLL+s1iykRgERlUO7rV+3S0nwLPnFtxyahIq0oNvkDmyibOjqwwO26Lkz
	22o2b/ittO7T03VwrM1OBs3oVCyVj+3xu52UH+vP5fnTlqTnOSQ89fG2N8sXPnMiWjB8
	H1C/1ZdlmmUmJnFJb75Ma+5U3Xv2fCBn8V/WH+AOGTPVIdVuroBNyZFziwX4JsOiqHE5
	F56nplOehgTi8d1i1Ci1f+o4mRz7PiQpVzkSdnRv8URBkrw4AmSSjsAx7WEgjj/V1Wnk
	jM5K10Ic9CwvsiPbqzh2FDwyBn5n3JOwOpLK0vsSAApwatALnWB8FzSGsmU1ImPbXqAJ
	JQtg==
MIME-Version: 1.0
X-Received: by 10.49.108.165 with SMTP id hl5mr39081377qeb.24.1384823239987;
	Mon, 18 Nov 2013 17:07:19 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Mon, 18 Nov 2013 17:07:19 -0800 (PST)
In-Reply-To: <CANwz6ny6Hh4vd7JyR5j8P7H8j-5sZb16QycBP1c0r5TtzPEvfw@mail.gmail.com>
References: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
	<CANwz6nxKD6JRhr-bY6OaeZ8zFyR0SngcL4=70k0vwhS3Luvkvw@mail.gmail.com>
	<CANwz6ny6Hh4vd7JyR5j8P7H8j-5sZb16QycBP1c0r5TtzPEvfw@mail.gmail.com>
Date: Mon, 18 Nov 2013 18:07:19 -0700
Message-ID: <CANwz6nwrRkQ7en6vNsj7y8kzbn4PXFjnDfK6mUJAc1D=4=zX8w@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 19 Nov 2013 01:07:21 -0000
Content-Type: multipart/alternative; boundary=047d7bdc0d124bd83104eb7d4931

--047d7bdc0d124bd83104eb7d4931
Content-Type: text/plain; charset=ISO-8859-1

Hello
Still was getting error.  Thinking it might be my download area. Started
with a
clean down load area and new work area.
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.2"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
meta-oe
meta-multimedia   = "dylan:44754206632dd5b0725aeb43e99e4ff9e0245dca"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "dylan:cf9571203be0af5fc654952d3f00e0a7e0fb1174"
meta-yocto-bsp    = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"

ERROR: Function failed: Fetcher failure for URL: '
http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz'.
Unable to fetch URL from any source.

uhd-images_003.005.002-release.tar.gz_bad-checksum_2912c1c7cde099f2671f2f8f24879b82
Downloaded manually and in fact the md5sum is shown below

Can someone please pass to meta-oe since this site is currently blocked to
new u
sers.
md5sum uhd-images_003.005.002-release.tar.gz

2912c1c7cde099f2671f2f8f24879b82  uhd-images_003.005.002-release.tar.gz
Any and all help is appreciated.
Thanks


On Mon, Nov 18, 2013 at 4:10 PM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello,
> This is the first time that I have used the git bisect.  I hope this helps
> git bisect start
> git bisect good 64273e53f2789d2ea8393fc80909ac7086f168a7
> git bisect bad 4e399f08d596197859214fdb3b06403b87bf8789
> secting: 43 revisions left to test after this (roughly 6 steps)
> [7a3b4c55410b49a02945c72b554102a483095405] gst-plugins-base: add missing
> dependency on glib-2.0-native
>
> git bisect bad
> Bisecting: 21 revisions left to test after this (roughly 5 steps)
> [b4ba3269102424b614d91ca8be10501176042f62] external-sourcery: add missing
> providers
>
> git bisect bad
> Bisecting: 10 revisions left to test after this (roughly 3 steps)
> [4d47a1e6445b2a4839bae7c3ba8fa69f1b32f602] gst-plugins-good: add
> PACKAGECONFIG for jack
>
> git bisect bad
> Bisecting: 4 revisions left to test after this (roughly 2 steps)
> [dea3e6964949c2d7269570d2f19c74033e54200e] mesa: fix EGL compilation
> without X11 headers
>
> git bisect isecting: 2 revisions left to test after this (roughly 1 step)
> [d6d12689c0628f11a282c2b54ebcb8aa3ab8c673] populate_sdk_base: fix bashism
>
> git bisect bad
> Bisecting: 0 revisions left to test after this (roughly 0 steps)
> [eb5ec8899d41d2df7fb9d9918d2d93042a678d97] populate_sdk_base,
> adt_installer: abort install if path contains spaces
>
> git bisect bad
> eb5ec8899d41d2df7fb9d9918d2d93042a678d97 is the first bad commit
> commit eb5ec8899d41d2df7fb9d9918d2d93042a678d97
> Author: Laurentiu Palcu <laurentiu.palcu@intel.com>
> Date:   Tue Jun 25 14:59:05 2013 +0300
>
>     populate_sdk_base, adt_installer: abort install if path contains spaces
>
>     Spaces are not handled properly in some parts of oe-core and it's safer
>     to abort toolchain installation if path contains spaces. Even though
>     we fix space handling in the toolchain installation script, there are
>     various other parts in the toolchain (perl scripts, sysroot path
> passed to
>     toolchain binaries, shebang lines) that would need special handling.
> So,
>     for now, just bail out if path contains spaces.
>
>     The checking for spaces in the path is done after expanding relative
>     paths to absolute and tilde conversion.
>
>     [YOCTO #4488]
>     (From OE-Core master rev: 8c35ba2d3048ce69f74f72cb2676e4bc162cfb63)
>
>     (From OE-Core rev: 407e57879ea2f931bff32993b850c9d59d228303)
>
>     Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> :040000 040000 d48370d500ce89a9b3ba7194b5e5beda216a926d
> db6100743070999967f3882a9faabb342fe2a541 M      meta
> I hope this helps.
> As always all help is appreciated.
> Thanks
>
>
> On Mon, Nov 18, 2013 at 1:09 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
>
>> Hello,
>> Gary Thomas recommended that I do a refresh meta-oe.
>> I did git pull on poky & meta-oe.both of these are dylan branch
>> poky
>> commit 4e399f08d596197859214fdb3b06403b87bf8789
>> Author: Chen Qi <Qi.Chen@windriver.com>
>> Date:   Fri Aug 30 10:31:42 2013 +0800
>> meta-oe
>> commit 44754206632dd5b0725aeb43e99e4ff9e0245dca
>> Author: Javier Viguera <javier.viguera@digi.com>
>> Date:   Thu Sep 5 14:49:01 2013 +0000
>>
>> now with MACHINE=beagleboard bitbake core-image-sato I am getting the
>> following error.
>>  ERROR: Task 3660
>> (virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-core/dbus/
>> dbus-glib_0.100.2.bb, do_compile) failed with exit code '1'
>>
>> My last successful build was
>> poky
>> commit 64273e53f2789d2ea8393fc80909ac7086f168a7
>> Author: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
>> Date:   Mon Jul 8 10:17:51 2013 +0100
>> meta-oe
>> commit ed84e64d22400595b68da4e75b48ab7ecc342aa9
>> Author: Martin Jansa <Martin.Jansa@gmail.com>
>> Date:   Tue Jun 11 18:44:22 2013 +0200
>> When I try a build on my custom-image (added packages to
>> core-image-sato-sdk) I get the following errors.
>> ERROR: Task 5762
>> (virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-core/dbus/
>> dbus-glib_0.100.2.bb, do_compile) failed with exit code '1'
>> ERROR: Function failed: do_compile (see
>> /home/vidal/POKY/dylan_build/poky/build/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_compile.952
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/vidal/POKY/dylan_build/poky/build/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_compile.952
>>
>>
>>
>> Any and all help will be appreciated.
>> thanks
>>
>>
>> On Sun, Nov 17, 2013 at 5:17 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
>>
>>> Hello,
>>> MACHINE=zedboard bitbake core-image-sato builds okay.
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.19.1"
>>> BUILD_SYS         = "x86_64-linux"
>>> NATIVELSBSTRING   = "Fedora-18"
>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>> MACHINE           = "zedboard"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.4+snapshot-20131117"
>>> TUNE_FEATURES     = " armv7a vfp neon zynq"
>>> TARGET_FPU        = "vfp-neon"
>>> meta
>>> meta-yocto        = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
>>> meta-xilinx
>>> meta-kc705
>>> meta-zc702
>>> meta-zedboard     = "wkg:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
>>> meta-yocto-bsp    = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
>>>
>>> NOTE: Running noexec task 5589 of 5595 (ID: 3428,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
>>> gst-meta-base_0.10.bb, do_build)
>>> NOTE: Running noexec task 5590 of 5595 (ID: 3103,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
>>> gst-plugins-good_0.10.31.bb, do_build)
>>> NOTE: Running noexec task 5591 of 5595 (ID: 2804,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/owl-video-widget/
>>> libowl-av_git.bb, do_build)
>>> NOTE: Running noexec task 5592 of 5595 (ID: 1583,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/gaku/
>>> gaku_git.bb, do_build)
>>> NOTE: Running noexec task 5593 of 5595 (ID: 313,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/packagegroups/
>>> packagegroup-core-x11-sato.bb, do_build)
>>> NOTE: Running task 5594 of 5595 (ID: 7,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
>>> core-image-sato.bb, do_rootfs)
>>> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Started
>>> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded
>>> NOTE: Running noexec task 5595 of 5595 (ID: 12,
>>> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
>>> core-image-sato.bb, do_build)
>>> NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn't need to be
>>> rerun and all succeeded.
>>>
>>> busybox:
>>>   meta                 1.21.1
>>> was used.
>>>
>>> After adding these 2 lines to bblayers.conf
>>>   /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \
>>>   /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \
>>>
>>> bitbake-layers show-layers
>>> layer                 path                                      priority
>>>
>>> ==========================================================================
>>> meta                  /home/vidal/POKY/build111613_zedboard/poky/meta  5
>>> meta-yocto
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-yocto  5
>>> meta-oe
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe  6
>>> meta-multimedia
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia  6
>>> meta-xilinx
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx  8
>>> meta-kc705
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-kc705  8
>>> meta-zc702
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc702  8
>>> meta-zedboard
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zedboard  8
>>> meta-yocto-bsp
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-yocto-bsp  5
>>> [vidal@ws009 build]$ bitbake-layers show-recipes
>>> Parsing recipes..ERROR: No recipes available for:
>>>
>>> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1.20.2.bbappend
>>> What is the procedure to us busybox_1.20.2 with the new layers?
>>> Any and all help is appreciated.
>>> Thanks
>>>
>>>
>>>
>>>
>>
>

--047d7bdc0d124bd83104eb7d4931
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello<br>Still was getting error.=A0 Thinking it=
 might be my download area. Started with a<br>clean down load area and new =
work area.<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &=
quot;1.18.0&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4.2&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot; armv7a vfp neon zynq&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;vfp-neon&quot;<br>meta<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &qu=
ot;dylan:4e399f08d596197859214fdb3b06403b87bf8789&quot;<br>
meta-oe<br>meta-multimedia=A0=A0 =3D &quot;dylan:44754206632dd5b0725aeb43e9=
9e4ff9e0245dca&quot;<br>meta-xilinx<br>meta-kc705<br>meta-zc702<br>meta-zed=
board=A0=A0=A0=A0 =3D &quot;dylan:cf9571203be0af5fc654952d3f00e0a7e0fb1174&=
quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;dylan:4e399f08d596197859214fdb3b=
06403b87bf8789&quot;<br>
<br>ERROR: Function failed: Fetcher failure for URL: &#39;<a href=3D"http:/=
/files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-i=
mages_003.005.002-release.tar.gz">http://files.ettus.com/binaries/uhd_stabl=
e/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz</a=
>&#39;. Unable to fetch URL from any source.<br>
<br>uhd-images_003.005.002-release.tar.gz_bad-checksum_2912c1c7cde099f2671f=
2f8f24879b82<br>Downloaded manually and in fact the md5sum is shown below<b=
r><br>Can someone please pass to meta-oe since this site is currently block=
ed to new u<br>
sers.<br>md5sum uhd-images_003.005.002-release.tar.gz<br><br>2912c1c7cde099=
f2671f2f8f24879b82=A0 uhd-images_003.005.002-release.tar.gz<br></div>Any an=
d all help is appreciated.<br></div>Thanks<br></div><div class=3D"gmail_ext=
ra">
<br><br><div class=3D"gmail_quote">On Mon, Nov 18, 2013 at 4:10 PM, Edward =
Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com" tar=
get=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
<div dir=3D"ltr"><div><div><div><div>Hello,<br></div>This is the first time=
 that I have used the git bisect.=A0 I hope this helps<br>git bisect start<=
br>git bisect good 64273e53f2789d2ea8393fc80909ac7086f168a7<br>git bisect b=
ad 4e399f08d596197859214fdb3b06403b87bf8789<br>

secting: 43 revisions left to test after this (roughly 6 steps)<br>[7a3b4c5=
5410b49a02945c72b554102a483095405] gst-plugins-base: add missing dependency=
 on glib-2.0-native<br><br>git bisect bad<br>Bisecting: 21 revisions left t=
o test after this (roughly 5 steps)<br>

[b4ba3269102424b614d91ca8be10501176042f62] external-sourcery: add missing p=
roviders<br><br>git bisect bad<br>Bisecting: 10 revisions left to test afte=
r this (roughly 3 steps)<br>[4d47a1e6445b2a4839bae7c3ba8fa69f1b32f602] gst-=
plugins-good: add PACKAGECONFIG for jack<br>

<br>git bisect bad<br>Bisecting: 4 revisions left to test after this (rough=
ly 2 steps)<br>[dea3e6964949c2d7269570d2f19c74033e54200e] mesa: fix EGL com=
pilation without X11 headers<br><br>git bisect isecting: 2 revisions left t=
o test after this (roughly 1 step)<br>

[d6d12689c0628f11a282c2b54ebcb8aa3ab8c673] populate_sdk_base: fix bashism<b=
r><br>git bisect bad<br>Bisecting: 0 revisions left to test after this (rou=
ghly 0 steps)<br>[eb5ec8899d41d2df7fb9d9918d2d93042a678d97] populate_sdk_ba=
se, adt_installer: abort install if path contains spaces<br>

<br>git bisect bad<br>eb5ec8899d41d2df7fb9d9918d2d93042a678d97 is the first=
 bad commit<br>commit eb5ec8899d41d2df7fb9d9918d2d93042a678d97<br>Author: L=
aurentiu Palcu &lt;<a href=3D"mailto:laurentiu.palcu@intel.com" target=3D"_=
blank">laurentiu.palcu@intel.com</a>&gt;<br>

Date:=A0=A0 Tue Jun 25 14:59:05 2013 +0300<br><br>=A0=A0=A0 populate_sdk_ba=
se, adt_installer: abort install if path contains spaces<br><br>=A0=A0=A0 S=
paces are not handled properly in some parts of oe-core and it&#39;s safer<=
br>=A0=A0=A0 to abort toolchain installation if path contains spaces. Even =
though<br>

=A0=A0=A0 we fix space handling in the toolchain installation script, there=
 are<br>=A0=A0=A0 various other parts in the toolchain (perl scripts, sysro=
ot path passed to<br>=A0=A0=A0 toolchain binaries, shebang lines) that woul=
d need special handling. So,<br>

=A0=A0=A0 for now, just bail out if path contains spaces.<br><br>=A0=A0=A0 =
The checking for spaces in the path is done after expanding relative<br>=A0=
=A0=A0 paths to absolute and tilde conversion.<br><br>=A0=A0=A0 [YOCTO #448=
8]<br>=A0=A0=A0 (From OE-Core master rev: 8c35ba2d3048ce69f74f72cb2676e4bc1=
62cfb63)<br>

<br>=A0=A0=A0 (From OE-Core rev: 407e57879ea2f931bff32993b850c9d59d228303)<=
br><br>=A0=A0=A0 Signed-off-by: Laurentiu Palcu &lt;<a href=3D"mailto:laure=
ntiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@intel.com</a>&gt;<b=
r>=A0=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.pur=
die@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.o=
rg</a>&gt;<br>

<br>:040000 040000 d48370d500ce89a9b3ba7194b5e5beda216a926d db6100743070999=
967f3882a9faabb342fe2a541 M=A0=A0=A0=A0=A0 meta<br></div>I hope this helps.=
<br></div>As always all help is appreciated.<br></div>Thanks<br></div><div =
class=3D"HOEnZb">
<div class=3D"h5"><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Mon, Nov 18, 2013 at 1:09 PM, Edward =
Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com" tar=
get=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>Gary Thomas =
recommended that I do a refresh meta-oe.<br></div>I did git pull on poky &a=
mp; meta-oe.both of these are dylan branch<br></div><div>poky<br>commit 4e3=
99f08d596197859214fdb3b06403b87bf8789<br>


Author: Chen Qi &lt;<a href=3D"mailto:Qi.Chen@windriver.com" target=3D"_bla=
nk">Qi.Chen@windriver.com</a>&gt;<br>Date:=A0=A0 Fri Aug 30 10:31:42 2013 +=
0800<br></div><div>meta-oe<br>commit 44754206632dd5b0725aeb43e99e4ff9e0245d=
ca<br>

Author: Javier Viguera &lt;<a href=3D"mailto:javier.viguera@digi.com" targe=
t=3D"_blank">javier.viguera@digi.com</a>&gt;<br>
Date:=A0=A0 Thu Sep 5 14:49:01 2013 +0000<br><br></div>now with MACHINE=3Db=
eagleboard bitbake core-image-sato I am getting the following error.<br>=A0=
ERROR: Task 3660 (virtual:native:/home/vidal/POKY/dylan_build/poky/meta/rec=
ipes-core/dbus/<a href=3D"http://dbus-glib_0.100.2.bb" target=3D"_blank">db=
us-glib_0.100.2.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>


<br></div>My last successful build was <br>poky<br>commit 64273e53f2789d2ea=
8393fc80909ac7086f168a7<br>Author: Peter Kjellerstedt &lt;<a href=3D"mailto=
:peter.kjellerstedt@axis.com" target=3D"_blank">peter.kjellerstedt@axis.com=
</a>&gt;<br>

Date:=A0=A0 Mon Jul 8 10:17:51 2013 +0100<br>
</div>meta-oe<br>commit ed84e64d22400595b68da4e75b48ab7ecc342aa9<br>Author:=
 Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blan=
k">Martin.Jansa@gmail.com</a>&gt;<br>Date:=A0=A0 Tue Jun 11 18:44:22 2013 +=
0200<br>

When I try a build on my custom-image (added packages to core-image-sato-sd=
k) I get the following errors. <br>
ERROR: Task 5762 (virtual:native:/home/vidal/POKY/dylan_build/poky/meta/rec=
ipes-core/dbus/<a href=3D"http://dbus-glib_0.100.2.bb" target=3D"_blank">db=
us-glib_0.100.2.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>ER=
ROR: Function failed: do_compile (see /home/vidal/POKY/dylan_build/poky/bui=
ld/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_com=
pile.952 for further information)<br>


ERROR: Logfile of failure stored in: /home/vidal/POKY/dylan_build/poky/buil=
d/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_comp=
ile.952<br><br><br><br></div>Any and all help will be appreciated.<br>

thanks<br>
</div><div><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Sun, Nov 17, 2013 at 5:17 PM, Edward Vidal <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gm=
ail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello,<br>MACHINE=3Dze=
dboard bitbake core-image-sato builds okay. <br><br>Build Configuration:<br=
>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.19.1&quot;<br>


BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.4+snapshot-20131117&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D =
&quot; armv7a vfp neon zynq&quot;<br>



TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;wkg:3dee534f1e25109e0bdb681de0746c336f4b8840&quot;<br>meta-xilinx=A0=A0=
=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-zc702=A0=A0=A0=A0=
=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;wkg:46f4c79d6d55b556a90bb=
0fd89c2c09acf2aebff&quot;<br>



meta-yocto-bsp=A0=A0=A0 =3D &quot;wkg:3dee534f1e25109e0bdb681de0746c336f4b8=
840&quot;<br><br>NOTE: Running noexec task 5589 of 5595 (ID: 3428, /home/vi=
dal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/<a hre=
f=3D"http://gst-meta-base_0.10.bb" target=3D"_blank">gst-meta-base_0.10.bb<=
/a>, do_build)<br>



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
e rerun and all succeeded.<br><br>busybox:<br>=A0 meta=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 1.21.1<br></div>was used.<br><br><div>After add=
ing these 2 lines to bblayers.conf <br>



=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \<br>=A0 /ho=
me/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \<br><br>bi=
tbake-layers show-layers<br>layer=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 path=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priority<br>



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/b=
uild111613_zedboard/poky/meta=A0 5<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-yocto=A0 5<br>



meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111=
613_zedboard/poky/meta-oe/meta-oe=A0 6<br>meta-multimedia=A0=A0=A0=A0=A0=A0=
 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia=A0 6<br=
>meta-xilinx=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111613_zed=
board/poky/meta-xilinx=A0 8<br>



meta-kc705=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111613_ze=
dboard/poky/meta-xilinx/meta-kc705=A0 8<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc=
702=A0 8<br>meta-zedboard=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111=
613_zedboard/poky/meta-xilinx/meta-zedboard=A0 8<br>



meta-yocto-bsp=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111613_zedboard/p=
oky/meta-yocto-bsp=A0 5<br>[vidal@ws009 build]$ bitbake-layers show-recipes=
<br>Parsing recipes..ERROR: No recipes available for:<br>=A0 /home/vidal/PO=
KY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1=
.20.2.bbappend<br>



What is the procedure to us busybox_1.20.2 with the new layers?<br>Any and =
all help is appreciated.<br>Thanks<br><br>=A0<br><br></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7bdc0d124bd83104eb7d4931--
