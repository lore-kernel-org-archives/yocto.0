Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E616E01756
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 13:47:27 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id q10so164519eaj.15
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 13:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=3EzeBLqsLsXlp9QGQfAWslx4/L0MCvf+1vRQxHtF/gc=;
	b=Q4bqAxUrMQ+J/LKCOqiEgys9ba+94IKhI0ny7LVhEXLuhd/f8CFhcDxmOsFDaKTKMp
	GpLG8v/gEZrPo6aHYBtcPVXokK/rI8DAYQXydCiNI7/Ib6yaJAxYHCb8AwUZCSinw4E2
	OYzs6qC7TTCCGFo/lcAcxtt43o+FQDNDHBecoWZEll3hyI2aQA9HqLj9yTZiL024V5ZC
	16vns7gYkgN5NXkU8F921G/HEze/VKGE9k+NSE/iyhdcjmVv7VWaHTZ4q+DwGCdcwEpR
	GMFncbBvON+0JYXO8G9pHennmW64/c20Xxvhl5jJEKtyUU2bYLIk/YCmfnrWJz29Z0BY
	rCpA==
MIME-Version: 1.0
X-Received: by 10.14.108.9 with SMTP id p9mr1605341eeg.8.1383079646002; Tue,
	29 Oct 2013 13:47:26 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Tue, 29 Oct 2013 13:47:25 -0700 (PDT)
In-Reply-To: <51EEFD4B.1090009@gna.org>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<1503447.VStvRngV5W@helios> <20130723153440.GC21440@denix.org>
	<51EEFD4B.1090009@gna.org>
Date: Tue, 29 Oct 2013 16:47:25 -0400
Message-ID: <CAFZh4h8BLL3no2zh7zCf4prL_isP76pfrN2eYkYxt1yS6Mb=Vg@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 29 Oct 2013 20:47:28 -0000
Content-Type: multipart/alternative; boundary=001a11c28d34ff04c404e9e7524a

--001a11c28d34ff04c404e9e7524a
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 23, 2013 at 6:01 PM, Christian Gagneraud <chgans@gna.org> wrote:

>
> I got these ones as well (using poky, meta-oe, meta-ti and meta-qt5 all on
> Dylan), good to hear they are harmless.
>
> Thanks,
> Chris
>
>
>
Hi,

I hate to revive an old thread but I still see the same kind of thing with
Yocto 1.5.  I built my sdk with -c populate_sdk for i686 first and then
went back and changed SDKMACHINE to x86_x64.  When I ran -c populate_sdk
with the x86_64 setting I observed these messages:

hutch@neo:~/yocto_master_wcs_10_4_2013/poky/build$ bitbake core-image-wcs
-c populate_sdk
Parsing recipes: 100%
|##################################################################################################################################################|
Time: 00:00:24
Parsing of 1407 .bb files complete (0 cached, 1407 parsed). 1796 targets,
81 skipped, 7 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Debian-7.1"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:104166c804e9068d85ccdaa887a33df72c8aeb85"
meta-ti           = "master:9c36e6c7573c3e68c5816dd04f3dd43f485b0550"
meta-oe
meta-networking
meta-webserver    = "master:8aafddccb03f54923927e9d1c8c80223baf581de"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
WARNING: The recipe packagegroup-cross-canadian-beaglebone is trying to
install files into a shared area when those files already exist. Those
files and their manifest location are:

/home/hutch/yocto_master_wcs_10_4_2013/poky/build/tmp/deploy/ipk/all/packagegroup-cross-canadian-beaglebone_1.0-r0_all.ipk
   Matched in
manifest-i686_all-packagegroup-cross-canadian-beaglebone.deploy-ipk
Please verify which package should provide the above files.
WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
files into a shared area when those files already exist. Those files and
their manifest location are:

/home/hutch/yocto_master_wcs_10_4_2013/poky/build/tmp/deploy/ipk/all/nativesdk-packagegroup-sdk-host_1.0-r11_all.ipk
   Matched in manifest-i686-nativesdk-packagegroup-sdk-host.deploy-ipk
Please verify which package should provide the above files.
NOTE: Tasks Summary: Attempted 3172 tasks of which 2449 didn't need to be
rerun and all succeeded.

Summary: There were 3 WARNING messages shown.


Can I specify i686 and x86_64 at the same time (haven't tried that before,
I wonder if that would maybe prevent these messages)?  Anyway, I'm still
seeing these scary messages ... but hey, it is almost Halloween :)

Regards,

Brian

--001a11c28d34ff04c404e9e7524a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Jul 23, 2013 at 6:01 PM, Christian Gagneraud <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:chgans@gna.org" target=3D"_blank">chgans@gna.org</a>&gt;</spa=
n> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"im"><br></d=
iv>
I got these ones as well (using poky, meta-oe, meta-ti and meta-qt5 all on =
Dylan), good to hear they are harmless.<br>
<br>
Thanks,<br>
Chris<div><div class=3D"h5"><br>
</div></div><br></blockquote><div><br></div><div>Hi,<br><br>I hate to reviv=
e an old thread but I still see the same kind of thing with Yocto 1.5.=A0 I=
 built my sdk with -c populate_sdk for i686 first and then went back and ch=
anged SDKMACHINE to x86_x64.=A0 When I ran -c populate_sdk with the x86_64 =
setting I observed these messages:<br>
<br>hutch@neo:~/yocto_master_wcs_10_4_2013/poky/build$ bitbake core-image-w=
cs -c populate_sdk<br>Parsing recipes: 100% |##############################=
###########################################################################=
#########################################| Time: 00:00:24<br>
Parsing of 1407 .bb files complete (0 cached, 1407 parsed). 1796 targets, 8=
1 skipped, 7 masked, 0 errors.<br>NOTE: Resolving any missing task queue de=
pendencies<br>NOTE: multiple providers are available for jpeg (jpeg, libjpe=
g-turbo)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg<br><br>Bui=
ld Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.20.0&quot;=
<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIV=
ELSBSTRING=A0=A0 =3D &quot;Debian-7.1&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.5&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vf=
p neon&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta=
-yocto-bsp=A0=A0=A0 =3D &quot;master:104166c804e9068d85ccdaa887a33df72c8aeb=
85&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:9c36e6c7=
573c3e68c5816dd04f3dd43f485b0550&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-networking=A0=A0 <br>meta-we=
bserver=A0=A0=A0 =3D &quot;master:8aafddccb03f54923927e9d1c8c80223baf581de&=
quot;<br><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>=
NOTE: Executing RunQueue Tasks<br>
WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong location:=
 /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/armv7a-vfp-neon-po=
ky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0<br=
>
gcc-cross-canadian-arm: found library in wrong location: /opt/poky/1.5/sysr=
oots/x86_64-pokysdk-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi/gc=
c/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so<br>gcc-cross-canadian-arm: =
found library in wrong location: /opt/poky/1.5/sysroots/x86_64-pokysdk-linu=
x/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi=
/4.8.1/liblto_plugin.so.0<br>
WARNING: The recipe packagegroup-cross-canadian-beaglebone is trying to ins=
tall files into a shared area when those files already exist. Those files a=
nd their manifest location are:<br>=A0=A0 /home/hutch/yocto_master_wcs_10_4=
_2013/poky/build/tmp/deploy/ipk/all/packagegroup-cross-canadian-beaglebone_=
1.0-r0_all.ipk<br>
=A0=A0 Matched in manifest-i686_all-packagegroup-cross-canadian-beaglebone.=
deploy-ipk<br>Please verify which package should provide the above files.<b=
r>WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install =
files into a shared area when those files already exist. Those files and th=
eir manifest location are:<br>
=A0=A0 /home/hutch/yocto_master_wcs_10_4_2013/poky/build/tmp/deploy/ipk/all=
/nativesdk-packagegroup-sdk-host_1.0-r11_all.ipk<br>=A0=A0 Matched in manif=
est-i686-nativesdk-packagegroup-sdk-host.deploy-ipk<br>Please verify which =
package should provide the above files.<br>
NOTE: Tasks Summary: Attempted 3172 tasks of which 2449 didn&#39;t need to =
be rerun and all succeeded.<br><br>Summary: There were 3 WARNING messages s=
hown.<br><br><br></div><div>Can I specify i686 and x86_64 at the same time =
(haven&#39;t tried that before, I wonder if that would maybe prevent these =
messages)?=A0 Anyway, I&#39;m still seeing these scary messages ... but hey=
, it is almost Halloween :)<br>
<br>Regards,<br><br>Brian<br><br></div><div><br>=A0</div></div><br></div></=
div>

--001a11c28d34ff04c404e9e7524a--
