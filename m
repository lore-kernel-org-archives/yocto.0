Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D480BE00A96; Wed,  5 Aug 2015 13:48:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, TVD_PH_BODY_ACCOUNTS_PRE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
	"accounts
	*      suspended", "account credited", "account verification"
Received: from bin-vsp-out-02.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D0F2E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 13:48:23 -0700 (PDT)
X-Halon-ID: 4cebe6dd-3bb3-11e5-bc3a-005056917f90
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed,  5 Aug 2015 22:48:18 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 05 Aug 2015 22:48:20 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <55C0E347.9030508@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<55C082ED.6030405@technux.se> <55C0E347.9030508@osg.samsung.com>
Message-ID: <929d9c24776929cd07c370278d4c2768@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org, Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 0/5] Add support for 4.1 kernel with vc4 DRM/KMS driver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Aug 2015 20:48:29 -0000
Content-Type: multipart/alternative;
	boundary="=_6528c79add4e1443dca2e3e1d678de28"

--=_6528c79add4e1443dca2e3e1d678de28
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-04 18:07 skrev Javier Martinez Canillas: 

> Hello Petter,
>

> Thanks a lot for your feedback.
> 
> On 08/04/2015 11:16 AM, Petter
Mabäcker wrote:
> 
>> On 07/30/2015 10:34 AM, Javier Martinez Canillas
wrote: 
>> 
>>> Hello Andrei, This series adds support for Eric Anholt's
v4.1 kernel, that has support for the vc4 DRM/KMS driver. Which is the
new open source graphics driver stack for the Raspberry Pi to be used
instead of the userland driver. We are using it in the Tizen port to
RPI2 [0] and are trying to push all the patches back to the tizen-distro
and meta-raspberrypi OE layers so I'm posting these patches to get your
feedback. The v4.1 kernel is under heavy development so is a
work-in-progress and should not be used in production. That's why a
default preference of -1 is set and the kernel only is enabled if the
"vc4-gfx" feature is added to the DISTRO_FEATURES variable. But even
when it's still a development kernel, having the recipe in the
meta-raspberrypi will allow people to test it. The patches are for:
Patch 1/5 makes optional to add the kgdboc kernel command line parameter
Patch 2/5 allows to set the mask_gpu_interrupt0 option in config.txt
Patch 3/5 changes the partition layout to add more space for boot files
Patch 4/5 adds a recipe for the 4.1 and some patches to make it stable
Patch 5/5 switchs the default providers according to the gfx stack used
One problem I found is that the latest RPI kernels changed the path for
the DT overlays after commit 739c586c8757 ("BCM270X_DT: Move the
overlays into a subdirectory, adding the README") [1] so the kernel
fails to build with the default KERNEL_DEVICETREE. I tried to change
get_dts() function logic to take this into account but found that it
would had been a more intrusive change and KERNEL_DEVICETREE will have
to be changed anyways once the recipes for the other kernels are updated
to the latest HEAD so for now I just define the following on local.conf
to make it build:
>> As long as we bump SRCREV for 3.18 kernel as well,
I see no problem. Since then the KERNEL_DEVICETREE default value can
look the same in all situations (both 3.18 and 4.x can handle the new
structure and we get no compatibility issues) and for older kernels
(3.12 and 3.14) it doesn't matter since they don't have native device
tree support and will turn device tree support off by default.
> 
> Yes,
that's what I meant when I said that the problem will be solved once
>
all the recipes for DT enabled kernels are updated to the latest
branch
> HEAD. But I didn't want to do that in this series since I
wanted the
> changes to be as less intrusive as possible.

Ok, sounds
reasonable. Alex found some problems when bumping 3.18 to latest but
when that is solved he can push the 3.18 bumping and prepare the
KERNEL_DEVICETREE variable with the new subdir for overlays. 

>>
KERNEL_DEVICETREE = " bcm2708-rpi-b.dtb bcm2708-rpi-b-plus.dtb
bcm2709-rpi-2-b.dtb overlays/hifiberry-amp-overlay.dtb
overlays/hifiberry-dac-overlay.dtb
overlays/hifiberry-dacplus-overlay.dtb
overlays/hifiberry-digi-overlay.dtb overlays/iqaudio-dac-overlay.dtb
overlays/iqaudio-dacplus-overlay.dtb overlays/lirc-rpi-overlay.dtb
overlays/pps-gpio-overlay.dtb overlays/w1-gpio-overlay.dtb
overlays/w1-gpio-pullup-overlay.dtb " [0]:
http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/ [1]
[1]: https://github.com/raspberrypi/linux/commit/739c586c8757 [2] Best
regards, --- Javier Martinez Canillas Open Source Group Samsung Research
America Derek Foreman (4): rpi-config: Allow to mask GPU irqs
sdcard_image-rpi.bbclass: Allocate more space for boot partition
linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
rpi-default-providers: Switch providers according to used gfx stack
Mauro Carvalho Chehab (1): linux-raspberrypi.inc: Make kgdboc kernel
param optional README | 38 +++++-- classes/sdcard_image-rpi.bbclass | 6
+- conf/machine/include/rpi-default-providers.inc | 8 +-
conf/machine/include/rpi-default-versions.inc | 2 +-
recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++
recipes-kernel/linux/linux-raspberrypi.inc | 5 +-
..._defconfig-Enable-config-options-for-vc4-.patch | 48 +++++++++
...-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch | 85 +++++++++++++++
.../0003-drm-vc4-Use-the-fbdev_cma-helpers.patch | 115
+++++++++++++++++++++ .../0004-drm-vc4-Allow-vblank-to-be-disabled.patch
| 26 +++++ .../0005-drm-vc4-Disable-KMS-operations.patch | 95
+++++++++++++++++ recipes-kernel/linux/linux-raspberrypi_4.1.bb | 16 +++
12 files changed, 433 insertions(+), 17 deletions(-) create mode 100644
recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch
create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb
> Nice
and interesting changes, but you really should sync this with Alex
Lennon as well since he currently are working with integrating 4.1 into
meta-raspberrypi. An other opinion is that you should start by trying to
integrate relevant kernel changes both from
'git://github.com/anholt/linux.git;protocol=git;branch=vc4-kms-v3d-rpi2'
and the integration patches into the currently used upstream
(https://github.com/raspberrypi/linux [3]) and I also think it's a good
idea to ensure that the new code is added within kernel config options
so it's easy to enable/disable the vc4 support. Then at least I think
this more easily can be integrated in meta-raspberrypi.

I didn't know
there was a work in progress to integrate the 4.1 tree.
Although that is
for the branch in https://github.com/raspberrypi/linux [3]that does not
have the Broa> n't expect that to be a trivial task. I certainly don't
know if have the bandwidth to do it. Also, it is under heavy development
so will be hard to track. Another option is to have two recipes for 4.1,
one for the raspberrypi tree with userland and another one with the tree
with the VC4 DRM/KMS driver. Or use the same recipe but with a different
SRC_URI for each case. I tried to isolate all the VC4 support so is
enabled and disable easily using a config option.
> 
> Ok, in that case
I think we don't have so much options. I vote for two recipes in that
case (at least to start with) something like
recipe-kernel/linux/linux-raspberrypi-vc4 or similar.
r 

Best
regards,

> 


Links:
------
[1]
http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/
[2]
https://github.com/raspberrypi/linux/commit/739c586c8757
[3]
https://github.com/raspberrypi/linux

--=_6528c79add4e1443dca2e3e1d678de28
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-04 18:07 skrev Javier Martinez Canillas:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>Hello Petter,

Thanks a lot for your feedback.

On 08/04/2015 11:16 AM, Petter Mab&auml;cker wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On 07/30/2015 10:34 AM, Javier Martin=
ez Canillas wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">Hello Andrei, This series adds suppor=
t for Eric Anholt's v4.1 kernel, that has support for the vc4 DRM/KMS drive=
r. Which is the new open source graphics driver stack for the Raspberry Pi =
to be used instead of the userland driver. We are using it in the Tizen por=
t to RPI2 [0] and are trying to push all the patches back to the tizen-dist=
ro and meta-raspberrypi OE layers so I'm posting these patches to get your =
feedback. The v4.1 kernel is under heavy development so is a work-in-progre=
ss and should not be used in production. That's why a default preference of=
 -1 is set and the kernel only is enabled if the "vc4-gfx" feature is added=
 to the DISTRO_FEATURES variable. But even when it's still a development ke=
rnel, having the recipe in the meta-raspberrypi will allow people to test i=
t. The patches are for: Patch 1/5 makes optional to add the kgdboc kernel c=
ommand line parameter Patch 2/5 allows to set the mask_gpu_interrupt0 optio=
n in config.txt Patch 3/5 changes the partition layout to add more space fo=
r boot files Patch 4/5 adds a recipe for the 4.1 and some patches to make i=
t stable Patch 5/5 switchs the default providers according to the gfx stack=
 used One problem I found is that the latest RPI kernels changed the path f=
or the DT overlays after commit 739c586c8757 ("BCM270X_DT: Move the overlay=
s into a subdirectory, adding the README") [1] so the kernel fails to build=
 with the default KERNEL_DEVICETREE. I tried to change get_dts() function l=
ogic to take this into account but found that it would had been a more intr=
usive change and KERNEL_DEVICETREE will have to be changed anyways once the=
 recipes for the other kernels are updated to the latest HEAD so for now I =
just define the following on local.conf to make it build:</blockquote>
As long as we bump SRCREV for 3.18 kernel as well, I see no problem. Since =
then the KERNEL_DEVICETREE default value can look the same in all situation=
s (both 3.18 and 4.x can handle the new structure and we get no compatibili=
ty issues) and for older kernels (3.12 and 3.14) it doesn't matter since th=
ey don't have native device tree support and will turn device tree support =
off by default.</blockquote>
<pre>Yes, that's what I meant when I said that the problem will be solved o=
nce
all the recipes for DT enabled kernels are updated to the latest branch
HEAD. But I didn't want to do that in this series since I wanted the
changes to be as less intrusive as possible.</pre>
</blockquote>
<p>Ok, sounds reasonable. Alex found some problems when bumping 3.18 to lat=
est but when that is solved he can push the 3.18 bumping and prepare the KE=
RNEL_DEVICETREE variable with the new subdir for overlays.</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">KERNEL_DEVICETREE =3D " \ bcm2708-rpi=
-b.dtb \ bcm2708-rpi-b-plus.dtb \ bcm2709-rpi-2-b.dtb \ \ overlays/hifiberr=
y-amp-overlay.dtb \ overlays/hifiberry-dac-overlay.dtb \ overlays/hifiberry=
-dacplus-overlay.dtb \ overlays/hifiberry-digi-overlay.dtb \ overlays/iqaud=
io-dac-overlay.dtb \ overlays/iqaudio-dacplus-overlay.dtb \ overlays/lirc-r=
pi-overlay.dtb \ overlays/pps-gpio-overlay.dtb \ overlays/w1-gpio-overlay=
=2Edtb \ overlays/w1-gpio-pullup-overlay.dtb \ " [0]: <a href=3D"http://blo=
gs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/">http://blogs.s-osg=
=2Eorg/tizen-rpi2-now-supporting-3d-acceleration/</a> [1]: <a href=3D"https=
://github.com/raspberrypi/linux/commit/739c586c8757">https://github.com/ras=
pberrypi/linux/commit/739c586c8757</a> Best regards, --- Javier Martinez Ca=
nillas Open Source Group Samsung Research America Derek Foreman (4): rpi-co=
nfig: Allow to mask GPU irqs sdcard_image-rpi.bbclass: Allocate more space =
for boot partition linux-raspberrypi: Add a 4.1 linux kernel with vc4 suppo=
rt rpi-default-providers: Switch providers according to used gfx stack Maur=
o Carvalho Chehab (1): linux-raspberrypi.inc: Make kgdboc kernel param opti=
onal README | 38 +++++-- classes/sdcard_image-rpi.bbclass | 6 +- conf/machi=
ne/include/rpi-default-providers.inc | 8 +- conf/machine/include/rpi-defaul=
t-versions.inc | 2 +- recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++ recipe=
s-kernel/linux/linux-raspberrypi.inc | 5 +- ..._defconfig-Enable-config-opt=
ions-for-vc4-.patch | 48 +++++++++ ...-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-b=
oard.patch | 85 +++++++++++++++ .../0003-drm-vc4-Use-the-fbdev_cma-helpers=
=2Epatch | 115 +++++++++++++++++++++ .../0004-drm-vc4-Allow-vblank-to-be-di=
sabled.patch | 26 +++++ .../0005-drm-vc4-Disable-KMS-operations.patch | 95 =
+++++++++++++++++ recipes-kernel/linux/linux-raspberrypi_4.1.bb | 16 +++ 12=
 files changed, 433 insertions(+), 17 deletions(-) create mode 100644 recip=
es-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-=
options-for-vc4-.patch create mode 100644 recipes-kernel/linux/linux-raspbe=
rrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch create mode 10064=
4 recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-hel=
pers.patch create mode 100644 recipes-kernel/linux/linux-raspberrypi/0004-d=
rm-vc4-Allow-vblank-to-be-disabled.patch create mode 100644 recipes-kernel/=
linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch create mo=
de 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb</blockquote>
Nice and interesting changes, but you really should sync this with Alex Len=
non as well since he currently are working with integrating 4.1 into meta-r=
aspberrypi. An other opinion is that you should start by trying to integrat=
e relevant kernel changes both from 'git://github.com/anholt/linux.git;prot=
ocol=3Dgit;branch=3Dvc4-kms-v3d-rpi2' and the integration patches into the =
currently used upstream (<a href=3D"https://github.com/raspberrypi/linux">h=
ttps://github.com/raspberrypi/linux</a>) and I also think it's a good idea =
to ensure that the new code is added within kernel config options so it's e=
asy to enable/disable the vc4 support. Then at least I think this more easi=
ly can be integrated in meta-raspberrypi.</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<pre>I didn't know there was a work in progress to integrate the 4.1 tree=
=2E
Although that is for the branch in <a href=3D"https://github.com/raspberryp=
i/linux">https://github.com/raspberrypi/linux</a>that does not have the Bro=
adcom VC4 DRM/KMS driver. I agree that ideally
Eric's changes should be integrated back to that tree but I don't expect
that to be a trivial task. I certainly don't know if have the bandwidth
to do it. Also, it is under heavy development so will be hard to track.

Another option is to have two recipes for 4.1, one for the raspberrypi
tree with userland and another one with the tree with the VC4 DRM/KMS
driver. Or use the same recipe but with a different SRC_URI for each case=
=2E

I tried to isolate all the VC4 support so is enabled and disable easily
using a config option.<br /><br /><br /></pre>
</blockquote>
<pre>Ok, in that case I think we don't have so much options. I vote for two=
 recipes in that case (at least to start with) something like recipe-kernel=
/linux/linux-raspberrypi-vc4 or similar.<br /><br /><br /></pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">BR, Petter</blockquote>
<pre>Best regards,</pre>
</body></html>

--=_6528c79add4e1443dca2e3e1d678de28--
