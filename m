Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F690E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 13:47:35 -0700 (PDT)
Received: by dadz8 with SMTP id z8so13373960dad.35
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 13:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=E1Ruw3Lx5CMd7wQv0yTn6fRl4nljSI4aGiwTig9dOz0=;
	b=Zpq/U+A/o8C98INSOpofcbcEWXNW5QsGHiLblXfriNtRe3r16HJyeT/RHD+GoIfVRv
	3a64rBA9D5qUQHP8adq1YswKFNQIA09GBPB8YTO+w1aM5dGPi2yt5+lck7wYgKa2FfDl
	tT5pm137246BtjSLqLr5HwbQXYeC05pOxsDxibu+PaWpmMJztJQMejHTqzYkH5r9CQrj
	0ayyqT2XUIbE5kw5iyhapmNcq8nVIWc21b9NpDVTPhEyWeHWMTF9NYBGp/FDposk0uJP
	T4c6PitBATsZdKahbHvzorwd2M6bVoVclL9QNq5fVeoNXpitjbuErMpDV0z6UwUAno7A
	RTAQ==
MIME-Version: 1.0
Received: by 10.68.191.68 with SMTP id gw4mr13660996pbc.135.1337806054988;
	Wed, 23 May 2012 13:47:34 -0700 (PDT)
Received: by 10.68.197.4 with HTTP; Wed, 23 May 2012 13:47:34 -0700 (PDT)
In-Reply-To: <1337805097.32464.52.camel@elmorro>
References: <cover.1337801535.git.tom.zanussi@intel.com>
	<CADkTA4Mx2CPG1SzF63Wyx7mRL9y+fC2CUuBZ=-_GPUPXE4N-eA@mail.gmail.com>
	<1337805097.32464.52.camel@elmorro>
Date: Wed, 23 May 2012 17:47:34 -0300
Message-ID: <CADkTA4NVpuwx79cm8afisUSF8fB-t3ChYRdCOpbg=a6SazFeeQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
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
X-List-Received-Date: Wed, 23 May 2012 20:47:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, May 23, 2012 at 5:31 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Wed, 2012-05-23 at 17:26 -0300, Bruce Ashfield wrote:
>> On Wed, May 23, 2012 at 4:52 PM, =A0<tom.zanussi@intel.com> wrote:
>> > From: Tom Zanussi <tom.zanussi@intel.com>
>> >
>> > This patchset implements a new BSP for the 'Chief River' platform, whi=
ch
>> > consists of the Intel Ivy Bridge processor and Panther Point PCH. =A0I=
t
>> > assumes that the Ivy Bridge integrated graphics are being used.
>> >
>> > It also adds a few new recipes related to video acceleration which are
>> > modified versions of oe-core or yocto meta-demo recipes (ffmpeg,
>> > yasm-native, gstreamer-vaapi), along with tweaks needed to work with
>> > intel video acceleration components.
>> >
>> > There are also some new intel-specific video acceleration components
>> > (libva-1.0.15, intel-driver-1.0.15, va-intel) either needed for video
>> > acceleration on Intel platforms, or allowing for easier integration
>> > with the existing meta-intel BSPs. =A0These finally allow the chiefriv=
er,
>> > sugarbay, and crownbay BSPs to share a common set of video components,
>> > and have been tested with all three.
>> >
>> > Finally, there's a new recipe for the Intel Local Manageability Servic=
e
>> > (LMS), which allows Intel BSPs to access the Intel Active Management
>> > Technology (AMT) firmware via the Intel Management Engine Interface (M=
EI),
>> > which is used by the Chief River BSP.
>>
>> For some reason gmail dropped most of this series on me. Just so I'm sur=
e,
>> is there a board description as part of this series for the kernel
>> tree ? Or is that
>> still pending ?
>>
>
> Yeah, still forthcoming - I didn't post it because you're on vacation (I
> assume that's still correct). =A0I think Darren and I wanted to
> consolidate the kernel stuff anyway, so it'll come with that...

Perfect. Yes, I'm still on vacation .. but my gmail follows me around, so
I peeked in after a couple of days and wondered what it had done with
those missing email .. one less thing to hunt down out of the thousands
of email when I get back to my inbox.

It is most appreciated that a few less email splashed down while I
was out :)

Cheers,

Bruce

>
> I also may have some further tweaks as well, so for all those reasons,
> don't worry about it quite yet. ;-)
>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > The following changes since commit a62c485edffed30ea95658760948fd50925=
adfb0:
>> > =A0Darren Hart (1):
>> > =A0 =A0 =A0 =A0linux-yocto_3.0: Update KMACHINE and KBRANCH to play ni=
ce with new kerntools
>> >
>> > are available in the git repository at:
>> >
>> > =A0git://git.yoctoproject.org/meta-intel.git tzanussi/chiefriver.v1
>> > =A0http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=3Dtzanu=
ssi/chiefriver.v1
>> >
>> > Tom Zanussi (20):
>> > =A0meta-chiefriver: new layer for Chief River (Ivy Bridge/Panther Poin=
t)
>> > =A0 =A0systems
>> > =A0meta-intel: add gstreamer-vaapi_git recipe
>> > =A0meta-intel: new libva-1.0.15 recipe
>> > =A0meta-intel: new intel-driver-1.0.15 recipe
>> > =A0ffmpeg: new recipe
>> > =A0ffmpeg: add --enable-vaapi
>> > =A0ffmpeg: add --enable-gpl
>> > =A0yasm: new recipe
>> > =A0ffmpeg: add --enable-yasm
>> > =A0gst-ffmpeg: add bbappend for external ffmpeg
>> > =A0gst-va-intel: add conditional vaapi implementation
>> > =A0va-intel: new package
>> > =A0gst-va-intel: clarify DESCRIPTION
>> > =A0meta-intel: remove video acceleration from emgd XSERVER
>> > =A0meta-chiefriver: use gst-va-intel and va-intel
>> > =A0meta-sugarbay: use gst-va-intel and va-intel
>> > =A0meta-crownbay: use gst-va-intel and va-intel and gst-va-mixvideo
>> > =A0lms: new recipe
>> > =A0meta-chiefriver: use lms
>> > =A0meta-chiefriver: use the mei kernel feature
>> >
>> > =A0.../amt/lms/atnetworktool-printf-fix.patch =A0 =A0 =A0 =A0 | =A0 14=
 +++
>> > =A0common/recipes-bsp/amt/lms_7.1.20.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 42 ++++++++
>> > =A0common/recipes-multimedia/ffmpeg/ffmpeg.inc =A0 =A0 =A0 =A0| =A0108=
 ++++++++++++++++++++
>> > =A0common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb =A0| =A0 44 +++++=
+++
>> > =A0.../gstreamer/gst-ffmpeg_0.10.13.bbappend =A0 =A0 =A0 =A0 =A0| =A0 =
=A02 +
>> > =A0.../recipes-multimedia/gstreamer/gst-va-intel.bb =A0 | =A0 15 +++-
>> > =A0.../gstreamer/gstreamer-vaapi_git.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 26 +++++
>> > =A0.../libva/libva-intel-driver.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0 24 +++++
>> > =A0.../libva/libva-intel-driver_1.0.15.bb =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A08 ++
>> > =A0common/recipes-multimedia/libva/libva_1.0.15.bb =A0 =A0| =A0 =A08 +=
+
>> > =A0common/recipes-multimedia/libva/va-intel.bb =A0 =A0 =A0 =A0| =A0 20=
 ++++
>> > =A0common/recipes-support/yasm/yasm_1.1.0.bb =A0 =A0 =A0 =A0 =A0| =A0 =
17 +++
>> > =A0conf/machine/include/ia32-base.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
| =A0 =A04 -
>> > =A0meta-chiefriver/COPYING.MIT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0| =A0 17 +++
>> > =A0meta-chiefriver/README =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 | =A0107 +++++++++++++++++++
>> > =A0meta-chiefriver/README.sources =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0 17 +++
>> > =A0meta-chiefriver/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0| =A0 10 ++
>> > =A0meta-chiefriver/conf/machine/chiefriver.conf =A0 =A0 =A0 | =A0 19 +=
+++
>> > =A0.../formfactor/formfactor/chiefriver/machconfig =A0 =A0| =A0 =A03 +
>> > =A0.../recipes-bsp/formfactor/formfactor_0.0.bbappend | =A0 =A03 +
>> > =A0.../tasks/task-core-tools-profile.bbappend =A0 =A0 =A0 =A0 | =A0 =
=A02 +
>> > =A0.../xserver-xf86-config/chiefriver/xorg.conf =A0 =A0 =A0 | =A0 26 +=
++++
>> > =A0.../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A03 +
>> > =A0.../linux/linux-yocto-rt_3.2.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 =A08 ++
>> > =A0.../recipes-kernel/linux/linux-yocto_3.2.bbappend =A0| =A0 10 ++
>> > =A0meta-crownbay/conf/machine/crownbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 =
=A06 +-
>> > =A0meta-sugarbay/conf/machine/sugarbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 =
=A04 +
>> > =A027 files changed, 561 insertions(+), 6 deletions(-)
>> > =A0create mode 100644 common/recipes-bsp/amt/lms/atnetworktool-printf-=
fix.patch
>> > =A0create mode 100644 common/recipes-bsp/amt/lms_7.1.20.bb
>> > =A0create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc
>> > =A0create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.b=
b
>> > =A0create mode 100644 common/recipes-multimedia/gstreamer/gst-ffmpeg_0=
.10.13.bbappend
>> > =A0create mode 100644 common/recipes-multimedia/gstreamer/gstreamer-va=
api_git.bb
>> > =A0create mode 100644 common/recipes-multimedia/libva/libva-intel-driv=
er.inc
>> > =A0create mode 100644 common/recipes-multimedia/libva/libva-intel-driv=
er_1.0.15.bb
>> > =A0create mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
>> > =A0create mode 100644 common/recipes-multimedia/libva/va-intel.bb
>> > =A0create mode 100644 common/recipes-support/yasm/yasm_1.1.0.bb
>> > =A0create mode 100644 meta-chiefriver/COPYING.MIT
>> > =A0create mode 100644 meta-chiefriver/README
>> > =A0create mode 100644 meta-chiefriver/README.sources
>> > =A0create mode 100644 meta-chiefriver/conf/layer.conf
>> > =A0create mode 100644 meta-chiefriver/conf/machine/chiefriver.conf
>> > =A0create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfacto=
r/chiefriver/machconfig
>> > =A0create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfacto=
r_0.0.bbappend
>> > =A0create mode 100644 meta-chiefriver/recipes-core/tasks/task-core-too=
ls-profile.bbappend
>> > =A0create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xs=
erver-xf86-config/chiefriver/xorg.conf
>> > =A0create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xs=
erver-xf86-config_0.1.bbappend
>> > =A0create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto=
-rt_3.2.bbappend
>> > =A0create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto=
_3.2.bbappend
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

