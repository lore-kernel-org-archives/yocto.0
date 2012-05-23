Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5681E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 13:26:10 -0700 (PDT)
Received: by dadz8 with SMTP id z8so13339265dad.35
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 13:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=fqFqiGUio9E6F1Djiqyzy8lxAJSDJ3+OtMBgqoP9LSI=;
	b=A9xPNJ3Ie41MZ1trmPSKdlElH70GUtqNGLGwsN92CqzUbIiDsp/8QL1TybVfeFkVPJ
	Q+k35jxVe6AQjCEbPzaGVf6uZraPq7cC8TKVdPBrW6FTUDzaMhOGD5b8vrJzjb7ZnzT0
	5kQXd6wa2Zt9hKmGMI0tHuUx9mQoyTu24sDUKALjQc8D9pi2jYDla/yu6CIl9p9zHEI2
	pRejzlkA5vKYqLSuWef9TS+Nrqa3+QgMh9/DAxz9w2NPm4EySvNmsbvvyj2CPXfjRK0f
	ZMTHz5jIEWeNS7kfwqgeO/9OZwfBEKWFZ2hIkhaAblPxIp0GFTUOR1LIG9hPPWSd/GV+
	oUMQ==
MIME-Version: 1.0
Received: by 10.68.197.166 with SMTP id iv6mr14302329pbc.40.1337804770031;
	Wed, 23 May 2012 13:26:10 -0700 (PDT)
Received: by 10.68.197.4 with HTTP; Wed, 23 May 2012 13:26:10 -0700 (PDT)
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Date: Wed, 23 May 2012 17:26:10 -0300
Message-ID: <CADkTA4Mx2CPG1SzF63Wyx7mRL9y+fC2CUuBZ=-_GPUPXE4N-eA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: tom.zanussi@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/20] meta-intel: new chiefriver BSP and supporting recipes
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
X-List-Received-Date: Wed, 23 May 2012 20:26:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, May 23, 2012 at 4:52 PM,  <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This patchset implements a new BSP for the 'Chief River' platform, which
> consists of the Intel Ivy Bridge processor and Panther Point PCH. =A0It
> assumes that the Ivy Bridge integrated graphics are being used.
>
> It also adds a few new recipes related to video acceleration which are
> modified versions of oe-core or yocto meta-demo recipes (ffmpeg,
> yasm-native, gstreamer-vaapi), along with tweaks needed to work with
> intel video acceleration components.
>
> There are also some new intel-specific video acceleration components
> (libva-1.0.15, intel-driver-1.0.15, va-intel) either needed for video
> acceleration on Intel platforms, or allowing for easier integration
> with the existing meta-intel BSPs. =A0These finally allow the chiefriver,
> sugarbay, and crownbay BSPs to share a common set of video components,
> and have been tested with all three.
>
> Finally, there's a new recipe for the Intel Local Manageability Service
> (LMS), which allows Intel BSPs to access the Intel Active Management
> Technology (AMT) firmware via the Intel Management Engine Interface (MEI)=
,
> which is used by the Chief River BSP.

For some reason gmail dropped most of this series on me. Just so I'm sure,
is there a board description as part of this series for the kernel
tree ? Or is that
still pending ?

Cheers,

Bruce

>
> The following changes since commit a62c485edffed30ea95658760948fd50925adf=
b0:
> =A0Darren Hart (1):
> =A0 =A0 =A0 =A0linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice =
with new kerntools
>
> are available in the git repository at:
>
> =A0git://git.yoctoproject.org/meta-intel.git tzanussi/chiefriver.v1
> =A0http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=3Dtzanussi=
/chiefriver.v1
>
> Tom Zanussi (20):
> =A0meta-chiefriver: new layer for Chief River (Ivy Bridge/Panther Point)
> =A0 =A0systems
> =A0meta-intel: add gstreamer-vaapi_git recipe
> =A0meta-intel: new libva-1.0.15 recipe
> =A0meta-intel: new intel-driver-1.0.15 recipe
> =A0ffmpeg: new recipe
> =A0ffmpeg: add --enable-vaapi
> =A0ffmpeg: add --enable-gpl
> =A0yasm: new recipe
> =A0ffmpeg: add --enable-yasm
> =A0gst-ffmpeg: add bbappend for external ffmpeg
> =A0gst-va-intel: add conditional vaapi implementation
> =A0va-intel: new package
> =A0gst-va-intel: clarify DESCRIPTION
> =A0meta-intel: remove video acceleration from emgd XSERVER
> =A0meta-chiefriver: use gst-va-intel and va-intel
> =A0meta-sugarbay: use gst-va-intel and va-intel
> =A0meta-crownbay: use gst-va-intel and va-intel and gst-va-mixvideo
> =A0lms: new recipe
> =A0meta-chiefriver: use lms
> =A0meta-chiefriver: use the mei kernel feature
>
> =A0.../amt/lms/atnetworktool-printf-fix.patch =A0 =A0 =A0 =A0 | =A0 14 ++=
+
> =A0common/recipes-bsp/amt/lms_7.1.20.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 42 ++++++++
> =A0common/recipes-multimedia/ffmpeg/ffmpeg.inc =A0 =A0 =A0 =A0| =A0108 ++=
++++++++++++++++++
> =A0common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb =A0| =A0 44 ++++++++
> =A0.../gstreamer/gst-ffmpeg_0.10.13.bbappend =A0 =A0 =A0 =A0 =A0| =A0 =A0=
2 +
> =A0.../recipes-multimedia/gstreamer/gst-va-intel.bb =A0 | =A0 15 +++-
> =A0.../gstreamer/gstreamer-vaapi_git.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 26 +++++
> =A0.../libva/libva-intel-driver.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 24 +++++
> =A0.../libva/libva-intel-driver_1.0.15.bb =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A08 ++
> =A0common/recipes-multimedia/libva/libva_1.0.15.bb =A0 =A0| =A0 =A08 ++
> =A0common/recipes-multimedia/libva/va-intel.bb =A0 =A0 =A0 =A0| =A0 20 ++=
++
> =A0common/recipes-support/yasm/yasm_1.1.0.bb =A0 =A0 =A0 =A0 =A0| =A0 17 =
+++
> =A0conf/machine/include/ia32-base.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A04 -
> =A0meta-chiefriver/COPYING.MIT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| =A0 17 +++
> =A0meta-chiefriver/README =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 | =A0107 +++++++++++++++++++
> =A0meta-chiefriver/README.sources =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0 17 +++
> =A0meta-chiefriver/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 10 ++
> =A0meta-chiefriver/conf/machine/chiefriver.conf =A0 =A0 =A0 | =A0 19 ++++
> =A0.../formfactor/formfactor/chiefriver/machconfig =A0 =A0| =A0 =A03 +
> =A0.../recipes-bsp/formfactor/formfactor_0.0.bbappend | =A0 =A03 +
> =A0.../tasks/task-core-tools-profile.bbappend =A0 =A0 =A0 =A0 | =A0 =A02 =
+
> =A0.../xserver-xf86-config/chiefriver/xorg.conf =A0 =A0 =A0 | =A0 26 ++++=
+
> =A0.../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A03 +
> =A0.../linux/linux-yocto-rt_3.2.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A08 ++
> =A0.../recipes-kernel/linux/linux-yocto_3.2.bbappend =A0| =A0 10 ++
> =A0meta-crownbay/conf/machine/crownbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
6 +-
> =A0meta-sugarbay/conf/machine/sugarbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
4 +
> =A027 files changed, 561 insertions(+), 6 deletions(-)
> =A0create mode 100644 common/recipes-bsp/amt/lms/atnetworktool-printf-fix=
.patch
> =A0create mode 100644 common/recipes-bsp/amt/lms_7.1.20.bb
> =A0create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc
> =A0create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
> =A0create mode 100644 common/recipes-multimedia/gstreamer/gst-ffmpeg_0.10=
.13.bbappend
> =A0create mode 100644 common/recipes-multimedia/gstreamer/gstreamer-vaapi=
_git.bb
> =A0create mode 100644 common/recipes-multimedia/libva/libva-intel-driver.=
inc
> =A0create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_=
1.0.15.bb
> =A0create mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
> =A0create mode 100644 common/recipes-multimedia/libva/va-intel.bb
> =A0create mode 100644 common/recipes-support/yasm/yasm_1.1.0.bb
> =A0create mode 100644 meta-chiefriver/COPYING.MIT
> =A0create mode 100644 meta-chiefriver/README
> =A0create mode 100644 meta-chiefriver/README.sources
> =A0create mode 100644 meta-chiefriver/conf/layer.conf
> =A0create mode 100644 meta-chiefriver/conf/machine/chiefriver.conf
> =A0create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfactor/c=
hiefriver/machconfig
> =A0create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfactor_0=
.0.bbappend
> =A0create mode 100644 meta-chiefriver/recipes-core/tasks/task-core-tools-=
profile.bbappend
> =A0create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xserv=
er-xf86-config/chiefriver/xorg.conf
> =A0create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xserv=
er-xf86-config_0.1.bbappend
> =A0create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto-rt=
_3.2.bbappend
> =A0create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto_3.=
2.bbappend
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

